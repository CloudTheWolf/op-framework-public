if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

OP.Global.Locales.Languages["it-IT"] = {
	-- configuration settings for language
	largeNumberSeperator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeperator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "Sistema",
		warning = "Attenzione",
		invalid_input = "Input invalido.",
		missing_input = "Input mancante.",
		player_not_found = "Impossibile trovare il giocatore con server ID `${serverId}`.",
		something_went_wrong = "Qualcosa e andato storto. Perfavore riprova.",
		yes = "yes",
		no = "No"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Premi ~INPUT_ENTER~ per entrare nel bagagliaio.",
		put_boombox_in_trunk = "Premi ~INPUT_ENTER~ per mettere lo stereo nel bagagliaio.",
		put_player_in_trunk = "Premi ~INPUT_ENTER~ per mettere un giocatore nel bagagliaio.",
		put_player_in_seat = "[${VehicleEnterKey}] Colloca sul sedile",
		trunk_interaction_display = "[${VehicleEnterKey}] Climb Out [${InteractionKey}] Apri/Chiudi Bagagliaio",
		trunk_open_close_display = "[${InteractionKey}] Aperto/Chiuso Bagagliaio",
		boombox_already_in_trunk = "Ci sta già uno stereo nel bagagliaio.",
		the_trunk_is_occupied = "Il bagagliaio e occupato.",
		unable_to_toggle_carry = "Perfavore aspetta un po prima di Attivare/Disattivare il carry.",
		carry_disabled_animal = "Animali non possono essere trasportati.",

		cancel_piggyback = "Premi ~INPUT_FRONTEND_RRIGHT~ per cancellare cavalluccio.",
		piggyback_hop_on = "[E] salta sopra",
		stop_piggyback = "Premi ~INPUT_VEH_HEADLIGHT~ per smettere di cavalcare.",

		lockpicking_cuffs = "Scassinando Manette",
		lockpick_cuffs_too_fast = "Ti sei mosso troppo velocemente..",
		success_lockpick_cuffs = "Con successo lockpicked cuffs.",
		failed_lockpick_cuffs = "Non è riuscito a lockpick cuffs.",
		lockpick_lost = "Hai perso il lockpick.",

		not_cuffed = "Non sei ammanettato.",
		unable_to_lockpick = "Non puoi scassinare le manette.",

		lockpick_cuffs_logs_title = "Manette scassinate",
		lockpick_cuffs_logs_details = "${consoleName} ha scassinato con successo le loro manette usando un `${itemName}`.",

		you_are_not_being_carried = "Al momento non stai venendo trasportato.",
		successfully_uncarried = "Con forza ha interrotto il trasporto con successo.",
		failed_uncarried = "Impossibile forzare l'interruzione del trasporto.",
		uncarry_missing_permissions = "Tentativo di forzare l'arresto del trasporto senza l'autorizzazione adeguata.",

		uncarry_logs_title = "Forza uncarry",
		uncarry_logs_details = "${consoleName} ha forzato ${targetName} per smettere di trasportali.",

		failed_carry_npc = "Trasporto (carry) NPC non riuscito.",
		carry_npc_something_wrong = "Qualcosa è andato storto durante il tentativo di trasportare il ped.",

		e_to_struggle = "Premi E per stordirlo",
		cant_struggle_dead = "Non puoi liberarti quando sei morto.",
		struggle_to_quick = "Ti senti esausto dopo esseri sforzato, aspetta un po' e riprova.",
		struggle_logs_title = "Sei livero",
		struggle_logs_details = "${consoleName} lottato per liberarsi da ${targetName} nel mentre lo portava."
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "Ha tentato di attivare il proprio o qualcun altro '${featureName}', ma non avevano autorizzazioni adeguate per farlo.",
		feature_toggle_activated_logs_title = "${consoleName} attivato `${featureName}` per il giocatore ${targetConsoleName}.",
		feature_toggle_activated_logs_details_state = "${consoleName} attivato `${featureName}` ${newState} per il giocatore ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "Funzione a distanza a distanza per tutti",
		feature_toggle_activated_all_logs_details = "${consoleName} attivato `${featureName}` per tutti.",
		feature_toggle_activated_self_logs_title = "Funzione attivata",
		feature_toggle_activated_self_on_logs_details = "${consoleName} attivato `${featureName}` Per se stessi.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} attivato `${featureName}` fuori per se stessi.",
		feature_toggle_success = "Attivato `${featureName}` per ${consoleName}.",
		feature_toggle_success_all = "Attivato `${featureName}` per tutti.",
		feature_toggle_failed = "Impossibile alternare `${featureName}` per server ID ${serverId}.",
		feature_toggle_success_on = "Attivato `${featureName}` On per ${consoleName}.",
		feature_toggle_success_off = "Attivato `${featureName}` Off per ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "Noclip Attivato",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} attivato noclip on in posizione `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (In vehicle: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} attivato noclip off in posizione `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "Nessun nome del modello è passato.",
		model_name_invalid = "Nome del modello `${modelName}` è invalido.",
		failed_to_spawn_vehicle = "Impossibile eseguire il file `/spawn_vehicle` comando correttamente.",
		spawned_vehicle_for_player = "Generato con successo `${modelName}` per ${consoleName}.",
		spawned_vehicle_for_everyone = "Generato con successo `${modelName}` per tutti.",
		spawn_vehicle_for_player_not_staff = "Il giocatore ha tentato di generare un veicolo per qualcun altro, ma non avevano le autorizzazioni richieste per farlo.",
		spawn_vehicle_for_self_not_staff = "Il giocatore ha tentato di generare un veicolo per se stesso, ma non avevano le autorizzazioni richieste per farlo.",
		replace_vehicle_no_permissions = "Il giocatore ha tentato di sostituire il proprio veicolo ma non aveva le autorizzazioni necessarie per farlo.",
		create_vehicle_no_permissions = "Il giocatore ha tentato di creare un veicolo ma non disponeva delle autorizzazioni necessarie per farlo.",
		spawned_vehicle_for_self_title = "Veicolo generato",
		spawned_vehicle_for_self_details = "${consoleName} ha generato un veicolo con il nome del modello `${modelName}`.",
		spawned_vehicle_for_player_title = "Veicolo generato per il giocatore",
		spawned_vehicle_for_player_details = "${consoleName} ha generato un veicolo con il nome del modello `${modelName}` for player ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Veicolo generato per tutti",
		spawned_vehicle_for_everyone_details = "${consoleName} ha generato un veicolo con il nome del modello `${modelName}` for everyone.",

		vehicle_created = "Veicolo creato con successo.",
		failed_vehicle_creation = "Veicolo non creato.",

		invalid_amount = "Ammonto invalido.",

		added_cash_title = "Cash aggiunto",
		added_cash_details = "${consoleName} aggiunto $${amount} cash.",
		added_cash_to_player_title = "Cash aggiunto al giocatore",
		added_cash_to_player_details = "${consoleName} aggiunto $${amount} cash ${targetConsoleName}.",
		added_cash_to_everyone_title = "aggiunto cash a tutti",
		added_cash_to_everyone_details = "${consoleName} aggiunto $${amount} cash a tutti.",

		removed_cash_title = "Cash rimosso",
		removed_cash_details = "${consoleName} Rimosso $${amount} cash.",
		removed_cash_from_player_title = "Rimosso cash da tutti i player",
		removed_cash_from_player_details = "${consoleName} Rimosso $${amount} cash da ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Rimosso cash da tutti",
		removed_cash_from_everyone_details = "${consoleName} Rimosso $${amount} cash da tutti.",

		added_bank_title = "Banca aggiunta",
		added_bank_details = "${consoleName} Aggiunta $${amount} banca.",
		added_bank_to_player_title = "Aggiunta banca al player",
		added_bank_to_player_details = "${consoleName} aggiunta $${amount} banca a ${targetConsoleName}.",
		added_bank_to_everyone_title = "aggiunta banca a tutti",
		added_bank_to_everyone_details = "${consoleName} aggiunta $${amount} banca a tutti.",

		removed_bank_title = "Rimossa banca",
		removed_bank_details = "${consoleName} Rimossa $${amount} banca.",
		removed_bank_from_player_title = "Rimossa banca dal player",
		removed_bank_from_player_details = "${consoleName} Rimossa $${amount} banca da ${targetConsoleName}.",
		removed_bank_from_everyone_title = "Rimossa banca da tutti",
		removed_bank_from_everyone_details = "${consoleName} Rimossa $${amount} banca da tutti.",

		added_cash = "Aggiunto $${amount} cash.",
		added_cash_to_player = "Aggiunto $${amount} cash a ${targetConsoleName}.",
		added_cash_to_everyone = "Aggiunto $${amount} cash a tutti.",

		removed_cash = "Rimosso $${amount} cash.",
		removed_cash_from_player = "Rimosso $${amount} cash da ${targetConsoleName}.",
		removed_cash_from_everyone = "Rimosso $${amount} cash cash da tutti.",

		added_bank = "Aggiunta $${amount} banca.",
		added_bank_to_player = "Aggiunta $${amount} banca a ${targetConsoleName}.",
		added_bank_to_everyone = "Aggiunta $${amount} banca a tutti.",

		removed_bank = "Rimossa $${amount} banca.",
		removed_bank_from_player = "Rimossa $${amount} banca a ${targetConsoleName}.",
		removed_bank_from_everyone = "Rimossa $${amount} banca a tutti.",

		money_event_not_admin = "Ha provato a spawnare soldi `${moneyEvent}`.",

		spawned_item_title = "Item spawnato",
		spawned_item_details = "${consoleName} Spawnato ${amount}x `${itemName}` per se stessi.",
		spawned_item_for_player_title = "Spawnato item al giocatore",
		spawned_item_for_player_details = "${consoleName} spawnato ${amount}x `${itemName}` per ${targetConsoleName}.",
		spawned_item_for_everyone_title = "Spawnato per tutti",
		spawned_item_for_everyone_details = "${consoleName} spawnato ${amount}x `${itemName}` per tutti.",

		report_title = "REPORT-${reportId} ${reporterName}",
		report_logs_title = "REPORT",
		report_logs_details = "${consoleName} Rapporto creato ${reportId} Con il seguente messaggio: `${reportMessage}`",

		announcement_staff_title = "Staff Annuncio",
		announcement_server_title = "Server Annuncio",

		announcement_logs_title = "Server Wide Annuncio",
		announcement_logs_details = "${consoleName} ha trasmesso il seguente messaggio all'intero server: `${announcementMessage}`",
		announcement_not_admin = "Ha tentato di pubblicare un annuncio del personale.",

		announcement_maintenance = "Il server si insinerà ${minutes} minuti per la manutenzione.",
		announcement_update = "Il server si insinerà ${minutes} minuti per un aggiornamento.",
		announcement_restart = "Il server si insinerà ${minutes} minuti per un riavvio.",

		posted_announcement = "Messaggio di annuncio pubblicato.",
		posted_announcement_locale = "Messaggio di annuncio pubblicato dal locale.",
		failed_to_post_announcement = "Impossibile pubblicare il messaggio di annuncio in quanto non è stato aggiunto alcun messaggio.",
		failed_to_post_announcement_locale = "Impossibile pubblicare il messaggio di annuncio in quanto l'aggiunta della locale di annuncio non è supportato.",

		staff_title = "STAFF ${staffName}",
		staff_message_logs_title = "Messaggio staff",
		staff_message_logs_details = "${consoleName} ha inviato il seguente messaggio nella chat del personale: `${staffMessage}`",
		staff_message_illegal = "Il giocatore ha tentato di inviare un messaggio nella chat del personale, ma non era personale.",

		staff_pm_title = "STAFF PM ${transmissionTitle}",
		staff_pm_logs_title = "Staff PM",
		staff_pm_logs_details = "${senderConsoleName} ha inviato il seguente messaggio a ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Non sei loggato.",
		staff_pm_not_user_not_found = "Utente con server ID ${serverId}Non è stato trovato..",
		staff_pm_not_recipient_not_staff = "Il giocatore a cui stai tentando di inviare un messaggio non è un membro dello staff.",
		staff_pm_unable_to_message_self = "Non sei in grado di messaggio da solo.",
		staff_pm_warning = "Staff PM Avvertimento",
		staff_pm_first_time = "Vediamo che non hai mai usato la PMS del personale prima.Per rispondere a un PM del personale, usa the /staffpm command.",

		external_staff_message = "Messaggio del personale esterno",
		external_staff_message_from_player = "Messaggio del personale esterno da ${playerName}",
		external_staff_message_content = "${staffMessage} (Non puoi rispondere a questo messaggio.)",

		unable_to_staff_message_yourself = "Impossibile mandare un messaggio di personale a te stesso.",
		message_sent = "Messaggio inviato.",
		player_not_found = "Giocatore non trovato.",
		missing_valid_target_source_parameter = "Manca un parametro valido di 'sorgente target'.",
		missing_valid_message_parameter = "Manca un parametro 'messaggio' valido.",

		invalid_coordinates = "Coordinate X, Y, Z o W non valide presentate.",
		player_not_loaded_character = "Il giocatore non ha un personaggio caricato.",
		teleport_successful = "Giocatore teletrasportato con successo.",

		player_revived_success = "Giocatore rianimato con successo.",

		missing_valid_license_identifier_parameter = "Manca un valido 'licenseIdentifier' parametro.",

		illegal_entity_wipe = "Il giocatore ha tentato di asciugare le entità, ma non aveva autorizzazioni.",
		wiped_entities = "Entità asciugate",
		wipe_entities_logs_title = "Entità asciugate",
		wipe_entities_logs_details = "${consoleName} Emissione di un'entità pulizia con la seguente configurazione: Distanza = `${distance}`, ignoreLocalEntities = `${ignoreLocalEntities}`, modelName = `${modelName}`",

		wipe_awaiting_confirmation = "La pulizia è ora in attesa di conferma. Do `/wipe_confirm` or `/wipe_cancel` (expires in 60 seconds).\n\nThe chosen parameters are:\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		wipe_awaiting_big_title = "Wipe Avvertenza a distanza",
		wipe_awaiting_confirmation_big = "**Ehi, stai per pulire un'area molto ampia, assicurati che questo sia quello che intendevi fare!**\nDo `/wipe_confirm` or `/wipe_cancel` (expires in 60 seconds).\n\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		cancelled_wipe = "La pulizia è stata annullata.",

		there_is_people_nearby = "Ci sono giocatori nelle vicinanze che potrebbero vederti Noclip!",

		cant_while_spectating = "Non puoi farlo nel mentre stai spectando.",

		you_have_been_kicked = "Sei stato preso a calci da ${kicker} per motivo`${reason}`.",
		you_have_been_kicked_no_reason = "Sei stato preso a calci senza un motivo specificato da ${kicker}.",

		logs_player_kicked_title = "Giocatore Kicked",
		logs_player_kicked_details = "${consoleName} è stato preso a calci dal server da ${kicker} per motivo `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} è stato preso a calci dal server da ${kicker} Senza un motivo specificato.",

		you_have_been_banned = "Sei stato bandito da ${banner} per motivo `${reason}`.",
		you_have_been_banned_no_reason = "Sei stato bandito senza un motivo specificato da ${banner}.",

		banner_name_generic = "un membro del personale",

		ban_alert_title = "Bannato dal Sistema",
		ban_alert_description = "sei stato automaticamente bannato dal sistema per un motivo `${reason}`.",

		logs_player_banned_title = "Bannato globalmente dal sistema",
		logs_player_banned_system_title = "Giocatore bannato dal sistema",
		logs_player_banned_details = "${consoleName} è stato bannato dal server da ${banner} per `${reason}`.",
		logs_player_banned_no_reason_details = "Saresti stato bandito a livello globale dal sistema per una ragione `${reason}`.",

		player_kicked = "${consoleName} è stato kickato dal server.",
		player_banned = "${consoleName} è stato bannato dal server.",

		ban_double_kill = "Double Kill!",
		ban_triple_kill = "😧 Triple Kill!!!",
		ban_quadrouple_kill = "😨 QUADROUPLE KILL!!!!!!",
		ban_killing_spree = "🤯 KILLING SPREE (${count})!!!!!!",

		kick_player_not_staff = "Ha cercato di kickare un player senza un permesso adeguato.",
		ban_player_not_staff = "Ha cercato di bannare un player senza un permesso adeguato.",

		hide_staff_not_staff = "Ha tentato di nascondere il proprio stato di staff senza le autorizzazioni appropriate.",
		toggle_staff_not_staff = "Tentativo di attivare/disattivare la disponibilità del personale senza le autorizzazioni appropriate.",

		logs_hide_staff_title = "Staff nascosto",
		logs_hide_staff_hidden_details = "${consoleName} Ha reso il suo stato staff nascosto.",
		logs_hide_staff_shown_details = "${consoleName} Ha reso il suo stato staff visibile.",

		logs_toggle_staff_title = "Staff attivato/disattivato",
		logs_toggle_staff_off_details = "${consoleName} Ha disattivato la sua disponibilità da staffer.",
		logs_toggle_staff_on_details = "${consoleName} ha attivato la sua disponibilità da staffer.",

		staff_hidden = "Il tuo status da staffer è ora nascosta.",
		staff_shown = "Il tuo status da staffer è ora visibile.",
		staff_toggled_on = "La tua disponibilità da staffer è ora attivata.",
		staff_toggled_off = "La tua disponibilità da staffer è ora disattivata.",

		staff_feature_unavailable = "Questa funzione non è disponibile mentre la disponibilità da staffer è disattivata.",

		failed_toggle_tracker = "Impossibile attivare/disattivare il tracker del giocatore.",
		unable_track_player = "Impossibile monitorare il giocatore.",
		success_enable_tracker = "Monitoraggio giocatore abilitato con successo per `${playerName}`.",
		success_disable_tracker = "Tracker giocatore disabilitato con successo.",
		not_tracking_player = "Non stai monitorando un giocatore.",
		already_tracking_player = "Stai già monitorando un giocatore.",

		toggle_player_track_no_permissions = "Tentativo di attivare/disattivare il monitoraggio dei giocatori senza le autorizzazioni appropriate.",
		set_job_no_permissions = "Tentativo di impostare un lavoro senza le autorizzazioni appropriate.",
		toggle_reflection_no_permissions = "Si è tentato di attivare/disattivare specchio riflesso senza le autorizzazioni appropriate.",

		success_enable_reflection = "Specchio riflesso attivato.",
		success_disable_reflection = "Specchio riflesso disattivato.",
		failed_toggle_reflection = "Impossibile attivare/disattivare specchio riflesso.",

		reflection_logs_title = "Specchio riflesso attivato",
		reflection_logs_enabled_details = "${consoleName} ha attivato specchio riflesso.",
		reflection_logs_disabled_details = "${consoleName} ha disattivato specchio riflesso.",

		protective_mode_not_staff = "Tentativo di attivare o disattivare la modalità di protezione del server senza le autorizzazioni appropriate.",
		protective_mode_toggled_on = "La modalità di protezione del server è stata ora abilitata. È stata impostata la quantità di tempo di riproduzione richiesta per connettersi al server `${playtime}`.",
		protective_mode_toggled_off = "La modalità di protezione del server è ora disabilitata.",
		protective_mode_already_on = "La modalità di protezione del server è già stata abilitata con il tempo di riproduzione richiesto `${playtime}`.",
		protective_mode_already_off = "La modalità di protezione del server è già stato disattivato.",
		logs_protective_mode = "Modalità protezione server",
		logs_protective_mode_on = "${consoleName} attivato la modalità di protezione del server con il tempo di riproduzione richiesto: `${playtime}`.",
		logs_protective_mode_off = "${consoleName} disattivato la modalità di protezione del server.",

		spawn_item_not_staff = "Tentativo di generare un oggetto senza le autorizzazioni appropriate",
		no_item_name = "Nessun nome dell'elemento fornito.",
		invalid_item_name = "${itemName} Non è un nome valido per l'oggetto.",
		item_spawned = "Spawnato ${amount}x `${itemName}` per ${consoleName}.",
		item_spawned_for_everyone = "Spawnato ${amount}x `${itemName}` per tutti.",

		set_warning_message_not_staff = "Ha è tentato di impostare il messaggio di avviso del server senza le autorizzazioni appropriate.",
		warning_message_set_to = "Il messaggio di avviso è stato impostato a `${warningMessage}`.",
		warning_message_removed = "Il messaggio di avviso è stato rimosso.",
		warning_message_error = "Si è verificato un errore durante il tentativo di impostare il messaggio di avviso.",
		warning_message_identical = "Non è possibile impostare il messaggio di avviso su ciò che è già impostato.",
		warning_message_set_to_title = "Messaggio di avviso imposto",
		warning_message_set_to_details = "${consoleName} è stato imposto un messaggio d'avviso `${warningMessage}`.",
		warning_message_removed_title = "Messaggio d'avviso rimosso",
		warning_message_removed_details = "${consoleName} ha rimosso un messaggio d'avviso.",

		indestructibility_on = "Attivato 'Indestructibility'.",
		indestructibility_off = "Disattivato 'Indestructibility'.",
		speed_boost_on = "Attivato 'Speed Boost'.",
		speed_boost_off = "Disattivato 'Speed Boost'.",
		nitro_boost_on = "Attivato 'Nitro Boost'.",
		nitro_boost_off = "Disattivato 'Nitro Boost'.",
		no_nearby_vehicles_on = "Attivato 'No Nearby Vehicles'.",
		no_nearby_vehicles_off = "Disattivato 'No Nearby Vehicles'.",
		speed_up_progress_bar_on = "Attivato 'Speed Up Progress Bar'.",
		speed_up_progress_bar_off = "Disattivato 'Speed Up Progress Bar'.",
		invisibility_on = "Attivato 'Invisibility'.",
		invisibility_off = "Disattivato 'Invisibility'.",
		wallhack_on = "Attivato 'Wallhack'.",
		wallhack_off = "Disattivato 'Wallhack'ì.",
		aimbot_on = "Attivato 'Aimbot'ì.",
		aimbot_off = "Disattivato 'Aimbot'.",
		player_bones_on = "Attivato 'Player Bones'.",
		player_bones_off = "Disattivato'Player Bones'.",
		vehicle_smoke_on = "Attivato 'Vehicle Smoke'",
		vehicle_smoke_off = "Disattivato 'Vehicle Smoke'.",

		peeking_on = "Attivato peeking mode.",
		peeking_off = "Disattivato peeking mode.",

		watching_on = "Attivato watching mode.",
		watching_off = "Disattivato watching mode.",
		watching_label = "Watching: ${nearby}",

		evidence_view_on = "Attivatata la visione delle prove.",
		evidence_view_off = "Disattivata la visione delle prove.",
		evidence_view_title = "Attivata/Disattivata la visione delle prove",
		evidence_view_details_on = "${consoleName} Attivatata la visualizzazione avanzata delle prove.",
		evidence_view_details_off = "${consoleName} Disattivata la visualizzazione avanzata delle prove.",

		report_muted_no_reason = "Sei stato escluso dal comando di segnalazione senza un motivo specificato.",
		report_muted = "Sei stato escluso dal comando di segnalazione per `${reason}`.",

		already_sending_report = "Stai già mandando un report. Ti preghiamo di aspettare.",
		unable_to_send_identical_report = "Non puoi mandare 2 report uguali uno dopo l'altro.",

		already_sending_staff_message = "Stai già mandando un messaggio staff. Ti preghiamo di aspettare.",
		unable_to_send_identical_staff_message = "Non puoi inviare due messaggi staff identici uno dopo l'altro entro 30 secondi.",

		tp_coords_invalid_coordinates = "Cordinate invalide.",
		tp_coords_teleported_to_coordinates = "Teletrasportato alle cordinate X: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "Teletrasportato alla meta ${locationLabel}.",
		no_waypoint_set = "Hai impostato una meta.",

		teleported_to_coordinates_logs_title = "Teletrasportato alle cordinate",
		teleported_to_coordinates_logs_details = "${consoleName} Teletrasportato alle cordinate X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "Teletrasportato alla meta",
		teleported_to_waypoint_logs_details = "${consoleName} Teletrasportato alla meta ${locationLabel}.",

		teleport_to_coordinates_not_staff = "Il giocatore ha tentato di teletrasportarsi ad alcune coordinate ma non erano staffer.",
		teleport_to_waypoint_not_staff = "Il giocatore ha tentato di teletrasportarsi alla meta ma non erano staffer.",

		failed_isolate = "Isolamento player fallito.",
		invalid_server_id = "Server ID invalido.",
		isolate_success_on = "Isolmanto ${consoleName} adempito con successo.",
		isolate_success_off = "Isolamento stoppato a ${consoleName} con successo.",

		isolate_missing_permissions = "Il giocatore ha tentato di isolare un altro giocatore senza le autorizzazioni appropriate.",

		population_density_set_to = "L'override del moltiplicatore della densità di popolazione è stato impostato su ${multiplierLabel}%.",
		population_density_set_off = "L'override del moltiplicatore della densità di popolazione è stato disattivato.",
		population_density_is_not_on = "L'override del moltiplicatore della densità di popolazione è stato attivato.",
		population_density_already_set_to = "L'override del moltiplicatore della densità di popolazione è già impostato su ${multiplierLabel}%.",

		population_density_not_super_admin = "Il giocatore ha tentato di impostare la densità della popolazione senza le autorizzazioni appropriate.",

		enabled_features_list = "Feature attivata:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "Collisioni disattivate",
		disabled_recoil_feature = "Rinculo disattivato",
		evidence_view_feature = "Visione evidenza",
		hit_indicator_feature = "Indicatore colpi",
		indestructibility_feature = "Indistruttibilità",
		infinite_ammo_feature = "Munizioni infinite",
		invisibility_feature = "Invisibilità",
		muted_sirens_feature = "Sirene mutate",
		nitro_boost_feature = "Nitro Boost",
		no_nearby_vehicles_feature = "Nessun veicolo vicino",
		peeking_feature = "Peeking",
		roll_control_feature = "Controllo del rollio",
		speed_boost_feature = "Speed Boost",
		speed_up_progress_bar_feature = "Velocizza la barra di avanzamento",
		sticky_feet_feature = "Piedi",
		wallhack_feature = "Wallhack",
		watching_feature = "Guardando",
		fortnite_feature = "Fortnite",
		reflection_feature = "Specchio riflesso",
		stable_cam_feature = "Cam stabile",

		you_are_not_in_a_vehicle = "Non sei in un veicolo.",
		repaired_vehicle = "Veicolo riparato.",

		success_nos_refill = "Nos riempiti con successo.",
		failed_nos_refill = "Impossibile ricaricare i NOS.",

		refill_nitro_missing_permissions = "Il giocatore ha tentato di riempire il loro NOS ma non erano un super amministratore.",

		register_invalid_character_id = "ID carattere non valido.",
		register_invalid_slot = "Slot di inventario non valido.",
		register_weapon_success = "Registrato con successo l'arma in slot ${slotId} al carattere con character id ${cid}.",
		register_weapon_failed = "Impossibile registrare l'arma.",

		register_weapon_missing_permissions = "Il giocatore ha tentato di registrare un'arma senza autorizzazioni adeguate.",

		vehicle_smoke_invalid_class = "Il fumo del veicolo non può essere abilitato per questa classe di veicoli.",

		repair_vehicle_not_super_admin = "Il giocatore ha tentato di riparare un veicolo ma non erano un super amministratore.",

		repaired_vehicle_logs_title = "Veicolo riparato",
		repaired_vehicle_logs_details = "${consoleName} riparato il veicolo in cui si trovavano.",

		unable_to_enter_vehicle_while_dead = "Non puoi entrare in un veicolo mentre sei morto.",
		the_closest_vehicle_had_no_free_seats = "Il veicolo più vicino non ha posti liberi.",
		there_are_no_nearby_vehicles = "Non ci sono veicoli vicini.",
		vehicle_not_found_network = "ID network del veicolo non trovato.",
		entered_vehicle = "Ha cercato di entrare vicino ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Imposta le modifiche del veicolo",
		set_vehicle_modifications_logs_details = "${consoleName} Imposta le modifiche del veicolo per un veicolo con la piastra `${vehiclePlate}`. Le modifiche impostate erano: modType-${modType}, modIndex-${modIndex}, customTires-${customTires}.",

		set_vehicle_livery_logs_title = "Imposta livrea del veicolo",
		set_vehicle_livery_logs_details = "${consoleName} Imposta la livrea di un veicolo con la piastra `${vehiclePlate}` a `${liveryIndex}`.",

		set_livery_missing_permissions = "Il giocatore ha tentato di impostare la livrea di un veicolo ma non erano un super amministratore.",
		set_modifications_missing_permissions = "Il giocatore ha tentato di impostare una modifica di un veicolo ma non erano un super amministratore.",

		set_vehicle_modification = "Imposta la modifica del veicolo per il veicolo per il tipo di mod `${modType}` indicizzare `${modIndex}`. (Custom Tires: ${customTires})",
		mod_index_invalid_for_type = "MOD INDICE `${modIndex}` non è valido per il tipo di mod `${modType}`.",
		mod_type_invalid = "Tipo mod `${modType}` è invalido.",
		no_mod_type_set = "Nessun set di tipo mod.",

		set_vehicle_livery = "Livrea del veicolo impostato su `${liveryIndex}`.",
		no_livery_index_set = "Nessun indice di livrea impostato (Min: 1).",
		you_are_not_the_driver = "Non sei il conducente del veicolo.",
		vehicle_is_not_a_plane_or_heli = "Il veicolo non è un aereo o un elicottero.",
		livery_index_invalid = "Livrea invalida nell'indice (Max: ${maxLiveries}).",
		vehicle_has_no_liveries = "Il veicolo non ha nessuna livrea.",

		invalid_plate_number = "Numero di targa non valida.",
		set_fake_plate_number = "Imposta il numero della targa per il veicolo a `${plateNumber}`.",

		invalid_dirt_level = "Livello sporco non valido.",
		set_dirt_level = "Il livello dello sporco del veicolo era impostato su `${dirtLevel}`.",

		set_dirt_level_not_super_admin = "Il giocatore ha tentato di impostare il livello sporco di un veicolo ma non erano un super amministratore.",

		set_fake_plate_not_super_admin = "Il giocatore ha tentato di impostare il piatto falso di un veicolo ma non erano un super amministratore.",

		already_fake_disconnecting = "Stai già tentando di falsi disconnettere. Per favore, aspetta.",
		started_fake_disconnect = "Ha iniziato falso disconnessione.Ripeti il comando per fermarsi.",
		stopped_fake_disconnect = "Fermato falso disconnessione.",

		fake_disconnect_not_super_admin = "Il giocatore ha tentato di falsificare la disconnessione ma non erano un super amministratore.",

		disabled_idle_cam = "Disabilitato la camma inattiva.",
		enabled_idle_cam = "Riabilitato la camma inattiva.",

		created_vehicle_smoke_for_player_logs_title = "Fumo di veicolo creato",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} fumo di veicolo creato.",

		player_info_not_staff = "Ha tentato di ottenere le informazioni sul personaggio di un giocatore senza l'autorizzazione adeguata.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nHas ${playtime} played.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Parametro del nome dell'inventario mancante.",
		force_inventory_missing_perms = "Tentativo di forzare l'apertura di un inventario senza la dovuta autorizzazione.",

		auto_driving_engaged = "La guida automatica è stata attivata (Style: ${style}).",
		auto_driving_updated = "La velocità/posizione di guida automatica è stata aggiornata.",
		auto_driving_disengaged = "La guida automatica è stata disattivata.",
		not_auto_driving = "Non stai guidando.",
		invalid_auto_drive_speed = "Velocità di guida automatica non valida o mancante.",
		reset_auto_drive_speed = "Velocità di guida resettata al default.",
		set_auto_drive_speed = "Imposta la velocità di guida a ${speed} mph.",

		disable_collisions_on = "Le tue collisioni ora sono disabilitate.",
		disable_collisions_off = "Le tue collisioni ora sono Attivate.",
		failed_toggle_collisions = "Impossibile attivare le collisioni disabilitate.",

		disabled_recoil_on = "Recoil disabilitato.",
		disabled_recoil_off = "Recoil abilitato.",

		attachment_missing = "Parametro di allegata mancante.",
		no_weapon_equipped = "Nessuna arma equipaggiata.",
		attachment_invalid = "L'attaccamento non è valido o non disponibile per quest'arma.",
		attachment_failed_toggle = "Impossibile attivare l'attacco su quest'arma.",
		attachment_on = "Attivato con successo '${attachment}' attachment on.",
		attachment_off = "Attivato con successo '${attachment}' attachment off.",

		tint_invalid = "Tinta dell'arma non valida.",
		tint_range_invalid = "La gamma di tint dell'arma non valida (deve essere compresa tra 0 e ${max}).",
		tint_failed_set = "Impossibile impostare la tinta dell'arma.",
		tint_removed = "Tinta dell'arma rimossa con successo.",
		tint_set = "Imposta con successo l'arma tinta a `${tint}` (${tintIndex}).",
		no_weapon_tint = "Quest'arma non ha tinte.",

		weapon_attachment_missing_perms = "Ha tentato di attivare un attacco di armi senza adeguato autorizzazione.",
		weapon_tint_missing_perms = "Ha tentato di impostare una tinta dell'arma senza adeguato autorizzazione.",

		no_attachments = "Quest'arma non ha accessori.",
		available_attachments = "Accessori disponibili",
		current_attachments = "Accessori attacati",
		no_attachments = "Nessun accessorio",
		attachments_list = "Accessori:",
		tint_label = "Tinta: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Impossibile impostare il nome dell'articolo Override.",
		item_name_removed = "Override del nome dell'articolo rimosso correttamente.",
		item_name_set = "Imposta correttamente il nome dell'articolo override a '${itemName}'.",
		item_name_invalid_slot = "Slot di articolo non valido o mancante.",

		cleaned_ped = "Pulito con successo il PED di ${consoleName}.",
		cleaned_ped_self = "Pulito con successo il tuo PED.",
		clean_ped_failed = "Impossibile pulire il PED.",
		cleaned_ped_for_all = "Ha pulito con successo i PED di tutti.",
		clean_ped_no_permission = "Ha tentato di pulire il PED di un giocatore senza autorizzazioni richieste.",

		item_durability_set_success = "Impostare correttamente la durata ${amount}% Per gli articoli in slot ${slotId}.",
		item_durability_set_failed = "Impossibile impostare la durata.",
		item_durability_invalid_amount = "Importo della durata non valida (0 <> 100).",
		item_durability_set_no_permission = "Ha tentato di impostare una durata degli articoli senza autorizzazioni richieste.",

		item_metadata_set_no_permission = "Ha tentato di impostare i metadati degli articoli senza autorizzazioni richieste.",
		item_metadata_invalid_metadata = "Metadati degli articoli non validi.",
		item_metadata_set_success = "Imposta correttamente i metadati per gli articoli nello slot ${slotId}.",
		item_metadata_set_failed = "Impossibile impostare i metadati.",

		advanced_metagame_on = "Metagame avanzato a disattivazione on.",
		advanced_metagame_off = "Metagame avanzato a disattivazione off.",

		identity_set = "Imposta correttamente la tua identità su `${name}`.",
		identity_reset = "Ripristina correttamente la tua identità.",
		identity_set_failed = "Impossibile impostare la tua identità.",
		identity_hud = "Identitità: ${playerName}",

		set_identity_no_permission = "Il giocatore ha tentato di impostare il nome del proprio giocatore senza autorizzazioni adeguate.",

		invalid_range_parameter = "Parametro intervallo non valido.",
		wipe_first_owned_success = "Eliminate con successo tutte le entità ${amount} possedute per la prima volta dal giocatore con ID server `${serverId}`.",
		wipe_first_owned_success_range = "Eliminate con successo tutte le entità ${amount} possedute per la prima volta dal giocatore con ID server `${serverId}` in ${range}m.",
		wipe_first_owned_failed = "Impossibile eliminare le entità di proprietà del giocatore con ID server `${serverId}`.",

		invalid_radius_parameter = "Raggio non valido (tra 1 e 500).",
		scooped_up_players = "Raccolto ${amount} player(s).",
		scoop_invalid = "Non hai raccolto nessun giocatore.",
		unscooped_players = "Unscooped ${amount} of ${total} player(s).",
		unscoop_failed = "Non è riuscito a non sopracciglia.",

		unscoop_missing_permissions = "Il giocatore ha tentato di non sopraffatto senza autorizzazioni adeguate.",

		toggle_collisions_missing_permissions = "Il giocatore ha tentato di attivare le loro collisioni senza autorizzazioni adeguate.",
		wipe_first_owned_missing_permissions = "Il giocatore ha tentato di pulire le prime entità di proprietà senza autorizzazioni adeguate.",

		freeze_missing_permissions = "Il giocatore ha tentato di congelare o sbloccare un altro giocatore senza autorizzazioni adeguate.",

		freeze_success = "Con successo froze ${consoleName}.",
		failed_freeze = "Non è riuscito afreeze player.",
		unfreeze_success = "Con successo unfroze ${consoleName}.",
		failed_unfreeze = "Non è riuscito a unfreeze player.",

		freeze_logs_title = "Bloccare Player",
		freeze_logs_details = "${consoleName} Bloccare ${targetName}.",
		unfreeze_logs_title = "Sbloccare Player",
		unfreeze_logs_details = "${consoleName} Sbloccare ${targetName}.",

		slap_kill_reason = "Schiaffeggiata",
		slap_success = "Schiaffeggiato con successo${consoleName}.",
		slap_failed = "Non è riuscito a schiaffeggiare il giocatore.",
		slap_logs_title = "Giocatore schiaffeggiato",
		slap_logs_details = "${consoleName} schiaffeggiata ${targetName}.",
		slap_missing_permissions = "Il giocatore ha tentato di schiaffeggiare un altro giocatore senza autorizzazioni adeguate.",

		damaged_player = "Danneggiato con successo ${consoleName} per ${damage} danno.",
		damage_player_failed = "Non è riuscito a danneggiare il giocatore.",
		damage_player_logs_title = "Giocatore danneggiato",
		damage_player_logs_details = "${consoleName} danneggiata ${targetConsoleName} per ${damage} danno.",
		damage_player_missing_permissions = "Il giocatore ha tentato di danneggiare un altro giocatore senza autorizzazioni adeguate.",

		refill_nitro_logs_title = "Nitro riempita",
		refill_nitro_logs_details = "${consoleName} riempito il loro nitro.",

		isolated_logs_title = "Isolamento del giocatore",
		isolated_off_logs_details = "${consoleName} attivato ${targetName} isolamento on.",
		isolated_on_logs_details = "${consoleName} attivato ${targetName} isolamento on.",

		character_data_logs_title = "Dati del personaggio",
		character_data_logs_details = "${consoleName} controllata ${targetName}'s character data (CID: ${characterId}).",

		item_name_logs_title = "Nome Override",
		item_name_logs_details = "${consoleName} rinominato gli articoli in slot ${slot} a `${nameOverride}`.",

		toggle_attachment_logs_title = "Attivato Attachment",
		toggle_attachment_logs_details = "${consoleName} ha attivato il `${attachment}` Attaccamento.",

		tint_logs_title = "Imposta tinta",
		tint_logs_details = "${consoleName} Imposta l'indice di tinta sulla loro arma ${tintIndex}.",

		population_multiplier_logs_title = "Moltiplicatore di popolazione",
		population_multiplier_logs_details = "${consoleName} Imposta il moltiplicatore della popolazione ${populationMultiplier}.",

		fake_disconnect_logs_title = "Falso disconnessione",
		fake_disconnect_on_logs_details = "${consoleName} ha attivato la loro falsa disconnessione on.",
		fake_disconnect_off_logs_details = "${consoleName} ha attivato la loro falsa disconnessione off.",

		identity_logs_title = "Override dell'identità",
		identity_on_logs_details = "${consoleName} Imposta la loro identità a `${playerName}`.",
		identity_off_logs_details = "${consoleName} Ripristina la loro identità.",

		clean_ped_logs_title = "Ped pulito",
		clean_ped_logs_details = "${consoleName} pulito ${targetName]'s pped",

		collisions_logs_title = "Collisioni",
		collisions_off_logs_details = "${consoleName} hanno attivato le loro collisioni.",
		collisions_on_logs_details = "${consoleName} hanno disabilitato le loro collisioni.",

		invalid_job_search = "Ricerca lavori Invalido (Ci devono essre almeno 3 personaggi).",
		failed_job_search = "Ricerca lavori fallito.",
		job_search_no_results = "Lavori non trovati.",
		job_search_results = "Messo ${consoleName} lavoro a \"${jobName}, ${departmentName}, ${positionName}\" (Score: ${score}).",

		job_reset_success = "Lavoro settatto (successo) ${consoleName}.",
		failed_job_reset = "Lavoro non settato (fallimento)."
	},

	anti_cheat = {
		illegal_client_event = "Ha attivato un evento client illegale con nome '${eventName}'.",
		illegal_server_event = "Ha attivato un evento server illegale con nome '${eventName}'.",
		bad_entity_spawn = "Generato in un'entità con il nome del modello `${modelName}`.",
		bad_entity_title = "Entità difettosa generata",
		bad_entity_message = "${consoleName} entità generata con il nome del modello `${modelName}`.",
		detected_entity_title = "Entità rilevata generata",
		detected_entity_message = "${consoleName} entità generata con il nome del modello `${modelName}`.",
		added_model_to_list = "Modello aggiunto `${modelName}` (${modelHash}) all'elenco di rilevamento.",
		model_already_added_to_list = "Modello `${modelName}` (${modelHash}) è già aggiunto all'elenco di rilevamento.",
		removed_model_to_list = "Modello rimosso `${modelName}` (${modelHash}) dall'elenco di rilevamento.",
		model_not_in_list = "Modello `${modelName}` (${modelHash}) non viene aggiunto all'elenco di rilevamento.",
		set_model_detected_not_staff = "Il giocatore ha tentato di aggiungere un modello all'elenco di rilevamento, ma non disponeva delle autorizzazioni corrette per farlo.",
		set_model_undetected_not_staff = "Il giocatore ha tentato di rimuovere un modello dall'elenco di rilevamento, ma non disponeva delle autorizzazioni corrette per farlo.",
		add_detection_area_not_staff = "Il giocatore ha tentato di aggiungere un'area di rilevamento, ma non disponeva delle autorizzazioni corrette per farlo.",
		remove_detection_area_not_staff = "Il giocatore ha tentato di rimuovere un'area di rilevamento, ma non disponeva delle autorizzazioni corrette per farlo.",
		detection_area_close = "[${InteractionKey}] Rimuovere l'area di rilevamento (${areaId})",
		detection_area = "Area di rilevamento (${areaId})",

		ban_notification_title = "Anti-Cheat",
		ban_notification = "Bannato ${consoleName} per `${banReason}`.",

		bad_screen_word_ban = "Sappiamo degli esami a libro aperto, ma questo è ridicolo.",
		blacklisted_command_ban = "Ci dispiace, ma non hai i permessi per questo comando. Ti preghiamo di contattare uno staffer se creadi che questo sia un errore.",
		damage_modifier_ban = "La tua potenza non può essere superneinthausand.",
		distance_taze_ban = "La tua straordinaria performance da lontano non è stata apprezzata.",
		fast_movement_ban = "Il bro ha cercato di essere Flash.",
		freecam_ban = "Sembra tu abbia avuto un'esperienza fuori dal tuo corpo.",
		honeypot_ban = "Hai provato ad attivare la modalità creativa, ma non avevi i permessi neccessari per farlo.",
		hotwire_driving_ban = "Vroom Vroom, sono nella macchina tu tua madre.",
		illegal_freeze_ban = "Lo sai vero che il cibo caldo è più buono del cibo surgelato?",
		illegal_ped_change_ban = "E' pericoloso fare un'operazione chiurgica su se stessi.",
		illegal_spectating_ban = "Devi essere un agente FIB per guardare altri player o ussare /gamemode spettatore prima di spectare.",
		illegal_vehicle_modifier_ban = "Sfortunatamento non come Toretto noi non siamo in fast&furious, noi non siamo una famiglia.",
		invincibility_ban = "Non sei il cavalliere nero, potresti non essere invincibile.",
		ped_spawn_ban = "Hai provato la mitosi, ma non c'era abbastanza sole per la fotosintesi.",
		player_blips_ban = "Lo spazio aereo è pieno, l'UAV non è disponibile.",
		runtime_texture_ban = "Il mod menù che hai, potresti usarlo, oppure no.",
		spiked_resource_ban = "Provare a cambiare uno script senza permesso è come cambiare la fine di una storia solo perché non ti piace come finisce.",
		text_entry_ban = "L'ispezione degli elementi non è disponibile su questo browser.",
		thermal_night_vision_ban = "Il bro ha cercato di cheatare.",
		vehicle_modification_ban = "Non sei riuscito a trovare i liquidi per le lampadine della tua auto.",
		vehicle_spam_ban = "Counter terrorists win.",
		vehicle_spawn_ban = "Hai provato ad usare la redstone sul carrello ma non avevi le rotaie costruite.",
		weapon_spawn_ban = "Hai provato \"Strada del pay to win\" su FiveM, dove infatti hai pagato per essere bannato.",

		mp_f_freemode_01_label = "Freemode (Femmina)",
		mp_m_freemode_01_label = "Freemode (Maschio)",
		player_one_label = "Franklin",
		player_two_label = "Trevor",
		player_zero_label = "Michael",

		notification_distance_taze = "Anti-Cheat: ${displayName} taserato qualcuno ad una distanza di (${distance}m).",
		notification_bad_screen_word = "Anti-Cheat: Brutta parola sullo schermo",

		notification_freecam_detected = "Anti-Cheat: Freecam Detectata",
		notification_illegal_vehicle_modifier = "Anti-Cheat: Modificatore di veicoli",
		notification_illegal_vehicle_spawn = "Anti-Cheat: Veicolo spawnato",
		notification_fast_movement = "Anti-Cheat: Movimentazione veloce",
		notification_illegal_freeze = "Anti-Cheat: Congelamento illegale",
		notification_invincibility = "Anti-Cheat: invincibilità",
		notification_vehicle_modification = "Anti-Cheat: Modifica veicolo",
		notification_damage_modifier = "Anti-Cheat: Modificatore di danni",
		notification_illegal_weapon = "Anti-Cheat: Arma illegale",
		notification_spawned_object = "Anti-Cheat: Ogetto spawnato",
		notification_driving_hotwire = "Anti-Cheat: Guidando nel mentre sta scassinando il veicolo",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "Gesù",
		u_m_y_babyd_label = "Bodybuilder",
		u_m_y_imporage_label = "Supereroe",
		a_m_m_bevhills_02_label = "Ragazzo bianco",
		a_m_m_fatlatin_01_label = "Ciccione",
		a_m_m_hasjew_01_label = "Ebreo",
		a_m_m_beach_01_label = "Topless ped (nero, maschio)",
		a_m_m_beach_02_label = "Topless ped (bianco, maschio)",
		a_m_m_afriamer_01_label = "Ciccione nero",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "",
		csb_ramp_marine_label = "Ragazzo della marina",
		s_f_y_stripperlite_label = "Stripper ped",
		mp_f_stripperlite_label = "Stripper ped 2",
		mp_m_marston_01_label = "senza braccia e piedi",
		mp_m_niko_01_label = "Niko (GTA IV)",

		high_fov_warning = "Il tuo FOV è inusualmente alto",
		high_fov_description = "Questo è molto probabilmente causato da un modificatore FOV.",
		high_fov_debug = "Attualmente: ${fov}",

		illegal_oxy_run = "Il giocatore ha completatol'oxy più veloce di quanto umanamente possibile.",

		fast_movement_warning = "Sei stato segnato per esserti mosso troppo velocemente! Informa uno sviluppatore e digli cosa stavi facendo per farlo accadere poiché non dovresti ricevere questo messaggio di chat.",
		invincibility_warning = "Sei stato segnato per essere invincibile! Informa uno sviluppatore e digli cosa stavi facendo per farlo accadere poiché non dovresti ricevere questo messaggio di chat.",
		damage_modifier_warning = "Sei stato segnato per avere un modificatore di danno non valido! Informa uno sviluppatore e digli cosa stavi facendo per farlo accadere poiché non dovresti ricevere questo messaggio di chat.",
		freeze_warning = "Sei stato segnatoo per essere stato congelato nel mentre non era supposto che accadesse! Informa uno sviluppatore e digli cosa stavi facendo per farlo accadere poiché non dovresti ricevere questo messaggio di chat.",

		distance_taze_screenshot = "Anti-Cheat: Distanza Taze (${distance}m)",
		spectating_screenshot = "Anti-Cheat: Spectating",
		fast_movement_screenshot = "Anti-Cheat: Movimento veloce",
		illegal_freeze_screenshot = "Anti-Cheat:egal Congelamento illegale",
		illegal_vehicle_modifier_screenshot = "Anti-Cheat: Modificatore di veicoli (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "Anti-Cheat: Modificatore di danno invalido (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "Anti-Cheat: Arma spawnata (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "Anti-Cheat: Veicolo spawnato (${modelName})",
		vehicle_modification_screenshot = "Anti-Cheat: Veicolo modificato (${types})",
		thermal_night_vision_screenshot = "Anti-Cheat: Visione notturna/termica (${thermal}/${nightVision})",
		text_entry_screenshot = "Anti-Cheat: Messaggio d'entrata (${textEntry})",
		player_blips_screenshot = "Anti-Cheat: Blip sui player",
		modified_fov_screenshot = "Anti-Cheat: Modificatore FOV (${fov})",
		ped_change_screenshot = "Anti-Cheat: Cambio PED Illegale",
		invincibility_screenshot = "Anti-Cheat: Invincibilità",
		runtime_texture_screenshot = "Anti-Cheat: Runtime Texture (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "Anti-Cheat: Brutta parola sullo schermo (${words})",
		freecam_detected_screenshot = "Anti-Cheat: Freecam Detectata (${distance}m)",
		driving_hotwire_screenshot = "Anti-Cheat: Guidare mentre Hotwire"
	},

	authentication = {
		ip_not_found = "Non siamo riusciti a recuperare il tuo indirizzo IP.",
		authenticating_local_server = "Autenticazione con server locale...",
		authenticating_global_server = "Autenticazione con OP-FW server...",
		error_fetching_data = "Si è verificato un errore durante il recupero dei dati.",
		region_blocked = "Questo server ha bloccato la regione da cui ti stai connettendo.",
		server_config_not_loaded = "La configurazione del server non è stata caricata.",
		something_went_horribly_wrong = "Qualcosa è andato terribilmente storto. Per favore riprova.",
		local_firewall_enabled = "Il firewall locale è abilitato.",

		local_firewall_on = "Abilitato il firewall locale con il messaggio di blocco `${blockMessage}`.",
		local_firewall_re_enabled = "Riattivato il firewall locale con il messaggio di blocco `${blockMessage}`.",
		local_firewall_off = "Disabilitato il firewall locale.",
		local_firewall_blocked = "Local Firewall: Bloccato ${playerName} (${steamIdentifier})",

		developer = "developer",
		super_admin = "super admin",
		staff = "staff",
		reconnect = "reconnect",
		random = "random",
		beginner = "beginner",
		custom = "custom",
		christmas = "christmas",
		casino = "casino",

		job_low = "Job basso",
		job_medium = "Job Medio",
		job_high = "Job Alto",

		banned_globally = "Sei stato bandito a livello globale da tutti i server OP-FW.\n\nBan Hash: ${banHash}\nBan Reason: ${banReason}\n\nSe credi che questo sia un falso divieto, Unisciti alla Gilda Discord Op-FW per informazioni su come presentare ricorso ${frameworkDiscord}",
		banned_locally = "Sei stato bandito da ${communityName}.\n\nBan Hash: ${banHash}\nBanned By: ${creatorName}\nBan Reason: ${banReason}\nTimestamp: ${timestamp}\n\n${indefiniteOrExpires}\n\nUnisciti alla nostra Discord Guild per informazioni su come fare appello a ${communityDiscord}.",
		banned_locally_no_creator = "Sei stato bandito da ${communityName}.\n\nBan Hash: ${banHash}\nBan Reason: ${banReason}\nTimestamp: ${timestamp}\n\n${indefiniteOrExpires}\n\nUnisciti alla nostra Discord Guild per informazioni su come fare appello a ${communityDiscord}.",
		ban_indefinite = "Questo ban è indefinito.",
		ban_expires = "Questo Ban scadrà ${timeLeft}.",
		not_whitelisted = "Non sei stato whitelist su questo server.Per informazioni su come fare domanda, unisciti alla nostra Discord Guild.\n\n${communityDiscord}",
		api_error = "Si è verificato un errore durante il recupero dei dati. (error code ${errorCode})",
		pepega_moderate = "Sei stato bandito a livello globale da tutti i server OP-FW senza motivi specifici.",
		pepega_ultimate = "sei stato escluso da questo server.", -- NOTE: this text will be 'pepegad' so it will randomize the casing of all letters.
		ban_code_not_found = "Sei stato bandito a livello globale da tutti i server OP-FW.Non siamo stati in grado di trovare alcun dato per il tuo codice di divieto.",
		fraud_chargeback = "Fraud / Chargeback",
		threatening_ddos = "Minacciando di attaccare la nostra infrastruttura.",
		unknown = "Sconosciuta",
		api_offline = "Il nostro servizio di back-end non è attualmente disponibile e quindi non è in grado di recuperare i tuoi dati.Per favore riprova presto.",
		protective_mode_on = "La modalità di protezione del server è attualmente abilitata su questo server, il che significa che solo i giocatori con una certa quantità di gioco possono connettersi al server.Questo è solo momentaneo e il server dovrebbe riprendere alla normalità presto.\n\nUnisciti alla nostra discordia per ulteriori informazioni su questo evento a ${communityDiscord}.",
		server_restarting = "Il server sta attualmente riavviando.Riprova tra qualche minuto.",
		connection_cancelled = "Questa connessione è stata annullata poiché un'altra è già attiva.",
		no_reason_provided = "Nessun motivo fornito.",
		discord_whitelist_id_not_found = "Non siamo stati in grado di trovare il tuo ID discord.Assicurati di avere una discordia aperta in background e che hai permesso a Fivem di recuperare i dati dal tuo client Discord.\n\n${communityDiscord}"
	},

	chat = {
		default = "Predefinito",

		chat_group_information = "Sei stato aggiunto in un gruppo chat. Premi **TAB** per passare da un gruppo di chat disponibile all'altro.\n\nMessages sent without '/' come prefisso verrà trasmesso agli altri membri di questo gruppo."
	},

	commands = {
		command_unavailable = "Questo comando non è disponibile!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "Questo è un comando sostitutivo di `${command}`.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "carry",
		carry_command_help = "Attiva/disattiva carry.",
		carry_command_substitutes = "",

		uncarry_command = "uncarry",
		uncarry_command_help = "Forza il giocatore che ti sta trasportando a smettere di trasportarti.",
		uncarry_command_substitutes = "",

		piggyback_command = "piggyback",
		piggyback_command_help = "Piggyback un altro giocatore.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "pick_cuffs",
		pick_cuffs_command_help = "Lockpick dalle manette.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "struggle",
		struggle_command_help = "Cerca di sfuggire a qualcuno che ti trasporta.",
		struggle_command_substitutes = "",

		handsup_command = "handsup",
		handsup_command_help = "alza le mani (o abbassale).",
		handsup_command_substitutes = "hands, surrender, hu",

		-- animations/chairs
		sit_command = "sit",
		sit_command_help = "Prova a sederti su una sedia vicina.",
		sit_command_parameter_variation = "variazioni",
		sit_command_parameter_variation_help = "Che animazione sit suonare (1 - 6)",
		sit_command_substitutes = "chair",

		-- animations/emotes
		ragdoll_command = "ragdoll",
		ragdoll_command_help = "Attiva/disattiva ragdoll.",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "report",
		report_command_help = "Invia un messaggio a tutti i membri dello staff attivi.",
		report_command_parameter_message = "messaggio",
		report_command_parameter_message_help = "Il messaggio che vorresti inviare.",
		report_command_substitutes = "",

		announce_command = "announce",
		announce_command_help = "Trasmetti un annuncio a tutti i giocatori.",
		announce_command_parameter_message = "messaggio",
		announce_command_parameter_message_help = "Il messaggio che vorresti trasmettere.",
		announce_command_substitutes = "",

		staff_pm_command = "staff_pm",
		staff_pm_command_help = "Invia un messaggio a un membro dello staff oa un giocatore come membro dello staff.",
		staff_pm_command_parameter_server_id = "server id",
		staff_pm_command_parameter_server_id_help = "L'ID del server del giocatore a cui stai tentando di inviare un messaggio.",
		staff_pm_command_parameter_message = "messaggio",
		staff_pm_command_parameter_message_help = "Il messaggio che vorresti inviare.",
		staff_pm_command_substitutes = "staffpm",

		staff_command = "staff",
		staff_command_help = "Trasmetti un messaggio a tutti i membri dello staff attivi.",
		staff_command_parameter_message = "messaggio",
		staff_command_parameter_message_help = "Il messaggio che vorresti inviare.",
		staff_command_substitutes = "",

		wipe_command = "wipe",
		wipe_command_help = "Cancella le entità indesiderate dalla mappa.",
		wipe_command_parameter_distance = "distanza",
		wipe_command_parameter_distance_help = "Se vuoi solo entità entro un certo intervallo, inserire una distanza qui.Lascialo a `false` o` 0` per l'intera mappa.",
		wipe_command_parameter_ignore_local_entities = "Ignora le entità locali",
		wipe_command_parameter_ignore_local_entities_help = "Ignorare entità non reti?Se stai pulendo da un imbroglione, si consiglia di metterlo su `vero` o` 1`.",
		wipe_command_parameter_model_name = "Nome modello",
		wipe_command_parameter_model_name_help = "Se vuoi eliminare solo le entità di un determinato nome del modello, inserisci qui un nome del modello.Altrimenti lasciare vuoto, a `false` o` 0`.Puoi anche impostarlo su `veicoli 'o` peds`.",
		wipe_command_substitutes = "",

		noclip_command = "noclip",
		noclip_command_help = "Attiva/disattiva noclip.",
		noclip_command_parameter_server_id = "server id",
		noclip_command_parameter_server_id_help = "Se vuoi attivare il noclip per qualcun altro, inserisci qui il loro ID server.",
		noclip_command_substitutes = "",

		safe_noclip_command = "safe_noclip",
		safe_noclip_command_help = "Attiva/disattiva noclip but only if there is nobody nearby that could see you do so (staff members with staff toggled excluded).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "delete_vehicle",
		delete_vehicle_command_help = "Elimina un veicolo vicino.",
		delete_vehicle_command_parameter_ignore_heading = "si",
		delete_vehicle_command_parameter_ignore_heading_help = "Vorresti ignorare l'intestazione del tuo giocatore? Lasciare questo vuoto fungerà da a `no`.",
		delete_vehicle_command_substitutes = "dv",

		delete_vehicle_interactively_command = "delete_vehicle_interactively",
		delete_vehicle_interactively_command_help = "Attiva/disattiva la cancellazione interattiva del veicolo.",
		delete_vehicle_interactively_command_substitutes = "dvi",

		kick_command = "kick",
		kick_command_help = "Caccia un giocatore dal server.",
		kick_command_parameter_server_id = "server id",
		kick_command_parameter_server_id_help = "L'ID del server del giocatore che stai tentando di espellere.",
		kick_command_parameter_reason = "ragione",
		kick_command_parameter_reason_help = "Il motivo del calcio del giocatore. Questo può essere lasciato vuoto.",
		kick_command_substitutes = "",

		ban_command = "ban",
		ban_command_help = "Ban a player from the server.",
		ban_command_parameter_server_id = "server id",
		ban_command_parameter_server_id_help = "L'ID del server del giocatore che stai tentando di bannare.",
		ban_command_parameter_expire = "Scade",
		ban_command_parameter_expire_help = "La durata della squalifica del giocatore. Questo può essere lasciato vuoto, a `0` o `false` per un divieto a tempo indeterminato. Puoi usare w/d/h per la lunghezza. (es: `3d2h` -> 3 giorni, 2 ore)",
		ban_command_parameter_reason = "ragione",
		ban_command_parameter_reason_help = "Il motivo della squalifica del giocatore. Questo può essere lasciato vuoto.",
		ban_command_substitutes = "",

		staff_hidden_command = "staff_hidden",
		staff_hidden_command_help = "Attiva/disattiva se altri giocatori possono vedere o meno lo stato del tuo staff.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "staff_toggle",
		staff_toggle_command_help = "Attiva/disattiva la tua disponibilità del personale Disattivarlo impedirà la visualizzazione di rapporti, PM del personale e messaggi del personale.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "protective_mode",
		protective_mode_command_help = "Attiva/disattiva modalità di protezione del server. Ciò cancellerà le nuove connessioni dai giocatori al di sotto della quantità specificata di tempo di gioco richiesto. Questo controllo è escluso dai membri dello staff e dai sostenitori del server.",
		protective_mode_command_parameter_enabled = "attivato",
		protective_mode_command_parameter_enabled_help = "Il controllo deve essere abilitato? Gli input validi sono: `true`, `false`, `1` e `0`.",
		protective_mode_command_parameter_playtime = "Tempo di gioco",
		protective_mode_command_parameter_playtime_help = "La quantità di tempo di riproduzione richiesta (secondi) per accettare una nuova connessione.",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "spawn_vehicle",
		spawn_vehicle_command_help = "Genera un veicolo.",
		spawn_vehicle_command_parameter_model_name = "Nome modello",
		spawn_vehicle_command_parameter_model_name_help = "Il nome del modello del veicolo che vuoi generare.",
		spawn_vehicle_command_parameter_server_id = "server id",
		spawn_vehicle_command_parameter_server_id_help = "L'ID del server del giocatore per cui vorresti generare questo veicolo. Puoi lasciarlo vuoto o su '0' per selezionare te stesso.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "create_vehicle",
		create_vehicle_command_help = "Genera un veicolo nella tua posizione attuale senza che ti penetri.",
		create_vehicle_command_parameter_model_name = "nome modello",
		create_vehicle_command_parameter_model_name_help = "Il nome del modello del veicolo che vuoi spawnare.",
		create_vehicle_command_parameter_ground = "Terra",
		create_vehicle_command_parameter_ground_help = "Il veicolo dovrebbe essere spawnato per terra?",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "replace_vehicle",
		replace_vehicle_command_help = "Sostituisci il tuo veicolo attuale con uno diverso.",
		replace_vehicle_command_parameter_model_name = "Nome modello",
		replace_vehicle_command_parameter_model_name_help = "Il nome del modello del veicolo che vuoi generare.",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "aimbot",
		aimbot_command_help = "Attiva/disattiva 'aimbot'.",
		aimbot_command_parameter_server_id = "server id",
		aimbot_command_parameter_server_id_help = "Se desideri attivare 'aimbot' per qualcun altro, inserisci qui il suo ID server.",
		aimbot_command_parameter_targets = "targets",
		aimbot_command_parameter_targets_help = "ID del server di destinazione (funziona solo quando si commuta per te stesso). (filtrerà i bersagli in modo che siano solo giocatori con questi ID server)",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "player_bones_debug",
		player_bones_debug_command_help = "Attiva/disattiva il debugger delle ossa del giocatore.",
		player_bones_debug_command_parameter_server_id = "server id",
		player_bones_debug_command_parameter_server_id_help = "Se vuoi attivare il debugger delle ossa del giocatore per qualcun altro, inserisci qui il suo ID server.",
		player_bones_debug_command_substitutes = "player_bones",

		wallhack_command = "wallhack",
		wallhack_command_help = "Attiva/disattiva 'wallhack'.",
		wallhack_command_parameter_server_id = "server id",
		wallhack_command_parameter_server_id_help = "Se vuoi attivare il 'wallhack' per qualcun altro, inserisci qui il suo ID server.",
		wallhack_command_substitutes = "",

		speed_boost_command = "speed_boost",
		speed_boost_command_help = "Attiva/disattiva 'speed boost'.",
		speed_boost_command_parameter_server_id = "server id",
		speed_boost_command_parameter_server_id_help = "Se desideri attivare o disattivare l''aumento di velocità' per qualcun altro, inserisci qui il suo ID server.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_boost",
		nitro_boost_command_help = "Attiva/disattiva 'nitro boost'.",
		nitro_boost_command_parameter_server_id = "server id",
		nitro_boost_command_parameter_server_id_help = "Se vuoi attivare il 'nitro boost' per qualcun altro, inserisci qui il suo ID server.",
		nitro_boost_command_substitutes = "nitro",

		indestructibility_command = "indestructibility",
		indestructibility_command_help = "Attiva/disattiva 'indestructibility'.",
		indestructibility_command_parameter_server_id = "server id",
		indestructibility_command_parameter_server_id_help = "Se vuoi attivare l''indistruttibilità' per qualcun altro, inserisci qui il suo ID server.",
		indestructibility_command_substitutes = "ind, god, god_mode, godmode",

		no_nearby_vehicles_command = "no_nearby_vehicles",
		no_nearby_vehicles_command_help = "Attiva/disattiva 'no nearby vehicles'.",
		no_nearby_vehicles_command_parameter_server_id = "server id",
		no_nearby_vehicles_command_parameter_server_id_help = "Se desideri attivare o disattivare 'nessun veicolo nelle vicinanze' per qualcun altro, inserisci qui il suo ID server.",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "disable_collisions",
		disable_collisions_command_help = "Disabilita le collisioni con veicoli e pedoni in un raggio di 10 metri.",
		disable_collisions_command_substitutes = "collisions",

		ghost_command = "ghost",
		ghost_command_help = "Questo comando lo abiliterà /peek, /invisibility and /disable_collisions.",
		ghost_command_substitutes = "",

		job_command = "job",
		job_command_help = "Aggiorna il lavoro di qualcuno in base a una ricerca.",
		job_command_parameter_server_id = "server id",
		job_command_parameter_server_id_help = "L'id del server del giocatore o 0 per selezionarti.",
		job_command_parameter_search = "Ricerca",
		job_command_parameter_search_help = "Il job/department/position nome o parte di esso da ricercare o `none` per rimuovere il job.",
		job_command_substitutes = "",

		reset_job_command = "resetjob",
		reset_job_command_help = "Resetta il job di qualcuno a Unemplyed.",
		reset_job_command_parameter_server_id = "server id",
		reset_job_command_parameter_server_id_help = "L'id del server del giocatore o 0 per selezionarti.",
		reset_job_command_substitutes = "",

		watching_command = "watching",
		watching_command_help = "Mostra tutti i giocatori che sono spettatori nelle vicinanze.",
		watching_command_substitutes = "",

		disable_recoil_command = "disable_recoil",
		disable_recoil_command_help = "Disattiva tutto il rinculo delle armi.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "infinite_ammo",
		infinite_ammo_command_help = "Attiva/disattiva munizioni infinite.",
		infinite_ammo_command_substitutes = "",

		track_player_command = "track_player",
		track_player_command_help = "Attiva/disattiva un tracker per un determinato giocatore.",
		track_player_command_parameter_server_id = "server id",
		track_player_command_parameter_server_id_help = "L'ID del giocatore che desideri monitorare. Lascia vuoto per disabilitare.",
		track_player_command_substitutes = "",

		reflect_damage_command = "reflect_damage",
		reflect_damage_command_help = "Attiva/disattiva specchio riflesso. (Non credo ci sia bisogna di una traduzione)",
		reflect_damage_command_substitutes = "reflect",

		stick_command = "stick",
		stick_command_help = "Ti fa restare attaccato al tetto di un veicolo (carsurf).",
		stick_command_substitutes = "",

		unstick_command = "unstick",
		unstick_command_help = "Ti fa staccare dal tetto di un veicolo.",
		unstick_command_substitutes = "",

		clean_ped_command = "clean_ped",
		clean_ped_command_help = "Pulisce il sangue di un personaggio, gli impatti dei proiettili, lo sporco, ecc.",
		clean_ped_command_parameter_server_id = "server id",
		clean_ped_command_parameter_server_id_help = "L'ID del server del giocatore di cui vuoi pulire il ped. Se lasciato vuoto, sarai automaticamente selezionato.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "Attiva/disattiva 'fumo del veicolo'.",
		toggle_vehicle_smoke_command_parameter_server_id = "server id",
		toggle_vehicle_smoke_command_parameter_server_id_help = "Se vuoi attivare il 'fumo del veicolo' per qualcun altro, inserisci qui il suo ID server.",
		toggle_vehicle_smoke_command_parameter_color_r = "colore r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Il valore rosso del colore del fumo (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "colore g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Il valore verde del colore del fumo (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "colore b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Il valore blu del colore del fumo (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "vehicle_smoke, smoke",

		speed_up_progress_bar_command = "speed_up_progress_bar",
		speed_up_progress_bar_command_help = "Attiva/disattiva 'accelerare progress bar'.",
		speed_up_progress_bar_command_parameter_server_id = "server id",
		speed_up_progress_bar_command_parameter_server_id_help = "Se desideri attivare la 'barra di avanzamento della velocità' per qualcun altro, inserisci qui il suo ID server.",
		speed_up_progress_bar_command_substitutes = "speed_up",

		invisibility_command = "invisibility",
		invisibility_command_help = "Attiva/disattiva 'invisibility'.",
		invisibility_command_parameter_server_id = "server id",
		invisibility_command_parameter_server_id_help = "Se vuoi attivare l''invisibilità' per qualcun altro, inserisci qui il suo ID server.",
		invisibility_command_substitutes = "inv, invis, invisible",

		add_cash_command = "add_cash",
		add_cash_command_help = "Aggiungi denaro al personaggio di qualcuno.",
		add_cash_command_parameter_amount = "ammonto",
		add_cash_command_parameter_amount_help = "La quantità di denaro che vorresti dare al giocatore.",
		add_cash_command_parameter_server_id = "server id",
		add_cash_command_parameter_server_id_help = "L'ID del server del giocatore. Se lasciato vuoto, te stesso viene selezionato automaticamente.",
		add_cash_command_substitutes = "",

		remove_cash_command = "remove_cash",
		remove_cash_command_help = "Rimuovi denaro dal personaggio di qualcuno.",
		remove_cash_command_parameter_amount = "ammonto",
		remove_cash_command_parameter_amount_help = "La quantità di denaro che vorresti rimuovere dal giocatore.",
		remove_cash_command_parameter_server_id = "server id",
		remove_cash_command_parameter_server_id_help = "L'ID del server del giocatore. Se lasciato vuoto, te stesso viene selezionato automaticamente.",
		remove_cash_command_substitutes = "",

		add_bank_command = "add_bank",
		add_bank_command_help = "Aggiungi saldo in banca al personaggio di qualcuno.",
		add_bank_command_parameter_amount = "ammonto",
		add_bank_command_parameter_amount_help = "L'importo del saldo bancario che vorresti dare al giocatore.",
		add_bank_command_parameter_server_id = "server id",
		add_bank_command_parameter_server_id_help = "L'ID del server del giocatore. Se lasciato vuoto, te stesso viene selezionato automaticamente.",
		add_bank_command_substitutes = "",

		remove_bank_command = "remove_bank",
		remove_bank_command_help = "Rimuovi il saldo bancario dal personaggio di qualcuno.",
		remove_bank_command_parameter_amount = "ammonto",
		remove_bank_command_parameter_amount_help = "L'importo del saldo bancario che vorresti rimuovere dal giocatore.",
		remove_bank_command_parameter_server_id = "server id",
		remove_bank_command_parameter_server_id_help = "L'ID del server del giocatore. Se lasciato vuoto, te stesso viene selezionato automaticamente.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "Utilizzato per generare oggetti.",
		spawn_item_command_parameter_item_name = "Nomi item",
		spawn_item_command_parameter_item_name_help = "Il nome dell'elemento che vuoi generare. Questo deve essere il *nome dell'elemento*, e quindi le sue etichette non funzioneranno.",
		spawn_item_command_parameter_amount = "ammonti",
		spawn_item_command_parameter_amount_help = "La quantità dell'oggetto che vorresti generare. Se lasciato vuoto, ne viene selezionato uno.",
		spawn_item_command_parameter_server_id = "server id",
		spawn_item_command_parameter_server_id_help = "L'ID del server del giocatore per il quale vorresti generare l'oggetto. Se lasciato vuoto, viene selezionato te stesso.",
		spawn_item_command_parameter_battle_royale_only = "Solo battle royal",
		spawn_item_command_parameter_battle_royale_only_help = "Rendi questo oggetto un oggetto solo Battle Royale.",
		spawn_item_command_substitutes = "si",

		warning_message_command = "warning_message",
		warning_message_command_help = "Aggiungi un messaggio del server globale per tutti i giocatori.",
		warning_message_command_parameter_message = "messaggi",
		warning_message_command_parameter_message_help = "Il messaggio che vorresti mostrare ai giocatori. È possibile lasciare vuoto questo parametro per rimuovere il messaggio di avviso.",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_coords",
		tp_coords_command_help = "Teletrasportati ad alcune coordinate.",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "Le cordinate X sulle quali vuoi teletrasportarti.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "Le cordinate Y sulle quali vuoi teletrasportarti.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "Le cordinate Z sulle quali vuoi teletrasportarti. Questo parametro è facoltativo e se lasciato vuoto verranno cercate automaticamente le coordinate del terreno.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Teletrasportati al waypoint impostato.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "isolate_player",
		isolate_player_command_help = "Isola un giocatore, rifiutando qualsiasi cosa cerchi di fare.",
		isolate_player_command_parameter_server_id = "server id",
		isolate_player_command_parameter_server_id_help = "Il giocatore bersaglio.",
		isolate_player_command_substitutes = "isolate",

		show_all_evidence_command = "show_all_evidence",
		show_all_evidence_command_help = "Mostra tutte le prove del bossolo dei proiettili nelle vicinanze.",
		show_all_evidence_command_substitutes = "all_evidence, show_evidence, evidence",

		population_density_command = "population_density",
		population_density_command_help = "Sostituisci il moltiplicatore della densità di popolazione globale.",
		population_density_command_parameter_multiplier = "moltiplicatore",
		population_density_command_parameter_multiplier_help = "Il moltiplicatore della densità di popolazione che si desidera impostare. Lasciare questo vuoto lo disattiverà. I valori validi sono compresi tra 0,0 e 1,0.",
		population_density_command_substitutes = "population, density, pop",

		repair_vehicle_command = "repair_vehicle",
		repair_vehicle_command_help = "Ripara il veicolo in cui ti trovi.",
		repair_vehicle_command_substitutes = "fix",

		enter_vehicle_command = "enter_vehicle",
		enter_vehicle_command_help = "Forza il tuo giocatore a entrare nel veicolo a cui sei più vicino.",
		enter_vehicle_command_parameter_network_id = "network id",
		enter_vehicle_command_parameter_network_id_help = "Network ID del veicolo che vuoi entrare. (Optional)",
		enter_vehicle_command_substitutes = "ev",

		set_modification_command = "set_modification",
		set_modification_command_help = "Imposta le modifiche del veicolo sul veicolo in cui ti trovi.",
		set_modification_command_parameter_mod_type = "Tipo di mod",
		set_modification_command_parameter_mod_type_help = "L'ID del tipo di mod che desideri impostare.",
		set_modification_command_parameter_mod_index = "Indice mod",
		set_modification_command_parameter_mod_index_help = "L'ID della mod che desideri impostare.",
		set_modification_command_parameter_custom_tires = "Ruote modificate",
		set_modification_command_parameter_custom_tires_help = "Ruote modificate?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "set_livery",
		set_livery_command_help = "Imposta la livrea del veicolo in cui ti trovi.",
		set_livery_command_parameter_livery_index = "Indice livree",
		set_livery_command_parameter_livery_index_help = "L'indice della livrea che vuoi impostare.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "set_fake_plate",
		set_fake_plate_command_help = "Imposta il numero di targa falso sul veicolo in cui ti trovi.",
		set_fake_plate_command_parameter_plate_number = "Numero targa",
		set_fake_plate_command_parameter_plate_number_help = "Il numero di targa che si desidera impostare.",
		set_fake_plate_command_substitutes = "plate",

		set_dirt_level_command = "set_dirt_level",
		set_dirt_level_command_help = "Pulisce il veicolo in cui ti trovi.",
		set_dirt_level_command_parameter_dirt_level = "Livello sporco",
		set_dirt_level_command_parameter_dirt_level_help = "Il livello di sporco che vuoi impostare (tra 0 e 15)",
		set_dirt_level_command_substitutes = "sd",

		player_info_command = "player_info",
		player_info_command_help = "Restituisce alcune informazioni su un determinato giocatore.",
		player_info_command_parameter_server_id = "server id",
		player_info_command_parameter_server_id_help = "L'ID del server del giocatore di cui vorresti ottenere informazioni. Se lasciato vuoto, viene selezionato te stesso.",
		player_info_command_substitutes = "player, pi",

		inventory_command = "inventory",
		inventory_command_help = "Apri un inventario specifico.",
		inventory_command_parameter_inventory_name = "Nome inventario",
		inventory_command_parameter_inventory_name_help = "Il nome dell'inventario che desideri aprire.",
		inventory_command_substitutes = "",

		character_inventory_command = "character_inventory",
		character_inventory_command_help = "ti mostra l'inventario di un altro giocatore.",
		character_inventory_command_parameter_server_id = "server id",
		character_inventory_command_parameter_server_id_help = "L'ID del server di quel giocatore.",
		character_inventory_command_substitutes = "pockets",

		fake_disconnect_command = "fake_disconnect",
		fake_disconnect_command_help = "Attiva una serie di eventi per far sembrare che tu sia disconnesso dal server. Ciò abiliterà anche il tuo noclip se non è già attivo.",
		fake_disconnect_command_substitutes = "fake_leave, dc",

		set_identity_command = "set_identity",
		set_identity_command_help = "Sostituisce il nome del tuo giocatore.",
		set_identity_command_parameter_player_name = "nome giocatore",
		set_identity_command_parameter_player_name_help = "Il nome che vuoi impostare o vuoto per reimpostare.",
		set_identity_command_substitutes = "identity",

		disable_idle_cam_command = "disable_idle_cam",
		disable_idle_cam_command_help = "Disattiva l'attivazione della fotocamera inattiva.",
		disable_idle_cam_command_substitutes = "disable_idle, idle",

		auto_drive_command = "auto_drive",
		auto_drive_command_help = "Ti guida automaticamente al waypoint impostato o guida in modo casuale se non ne è impostato nessuno.",
		auto_drive_command_parameter_style = "stile",
		auto_drive_command_parameter_style_help = "Stile di guida (normal, rushed, reckless, reverse).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "drive_speed",
		drive_speed_command_help = "Impostare la velocità per il comando di guida automatica.",
		drive_speed_command_parameter_speed = "Velocità",
		drive_speed_command_parameter_speed_help = "La velocità che vuoi impostare (in mph).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "toggle_weapon_attachment",
		toggle_weapon_attachment_command_help = "Attiva/disattiva un accessorio per l'arma che stai attualmente impugnando.",
		toggle_weapon_attachment_command_parameter_attachment = "attachment",
		toggle_weapon_attachment_command_parameter_attachment_help = "L'allegato che vuoi attivare.",
		toggle_weapon_attachment_command_substitutes = "weapon_attachment, attachment",

		set_weapon_tint_command = "set_weapon_tint",
		set_weapon_tint_command_help = "Imposta o rimuove la tinta dell'arma che stai impugnando.",
		set_weapon_tint_command_parameter_tint = "tinta",
		set_weapon_tint_command_parameter_tint_help = "La tinta che vuoi impostare (lascia vuoto per rimuovere).",
		set_weapon_tint_command_substitutes = "weapon_tint, tint",

		set_item_name_override_command = "set_item_name_override_command",
		set_item_name_override_command_help = "Imposta o rimuove la sostituzione del nome dell'elemento dell'elemento specificato.",
		set_item_name_override_command_parameter_slot = "slot",
		set_item_name_override_command_parameter_slot_help = "Il numero di slot dell'elemento di cui si desidera sostituire il nome.",
		set_item_name_override_command_parameter_item_name = "nome oggetto",
		set_item_name_override_command_parameter_item_name_help = "La sostituzione del nome dell'elemento che desideri impostare (lascia vuoto per rimuovere).",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "set_durability",
		set_durability_command_help = "Imposta la durabilità di tutti gli oggetti in un determinato slot.",
		set_durability_command_parameter_slot = "slot",
		set_durability_command_parameter_slot_help = "In quale slot impostare la durabilità degli oggetti.",
		set_durability_command_parameter_amount = "ammonto",
		set_durability_command_parameter_amount_help = "La durata da impostare (il valore predefinito è 100).",
		set_durability_command_substitutes = "durability",

		set_metadata_command = "set_metadata",
		set_metadata_command_help = "Imposta tutti i metadati degli elementi in un determinato slot.",
		set_metadata_command_parameter_slot = "slot",
		set_metadata_command_parameter_slot_help = "In quale slot impostare la durabilità degli oggetti.",
		set_metadata_command_parameter_metadata = "metadata",
		set_metadata_command_parameter_metadata_help = "Il json dei metadati da impostare.",
		set_metadata_command_substitutes = "metadata",

		refill_nitro_command = "refill_nitro",
		refill_nitro_command_help = "Ricarica il serbatoio nitro della tua auto.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "register_weapon",
		register_weapon_command_help = "Registra un'arma in un determinato slot per un determinato ID personaggio.",
		register_weapon_command_parameter_slot = "slot",
		register_weapon_command_parameter_slot_help = "Lo slot in cui si trova l'arma.",
		register_weapon_command_parameter_character_id = "character id",
		register_weapon_command_parameter_character_id_help = "L'ID del personaggio a cui vuoi registrare l'arma.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "advanced_metagame",
		advanced_metagame_command_help = "Comando Superadmin per aiutarti a portare il tuo metagaming al livello successivo.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "list_weapon_attachments",
		list_weapon_attachments_command_help = "Imposta o rimuove la tinta dell'arma che stai impugnando.",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "wipe_first_owned",
		wipe_first_owned_command_help = "Cancella tutte le entità prima possedute da un determinato giocatore.",
		wipe_first_owned_command_parameter_server_id = "server id",
		wipe_first_owned_command_parameter_server_id_help = "L'ID del server dei giocatori.",
		wipe_first_owned_command_parameter_range = "range",
		wipe_first_owned_command_parameter_range_help = "L'intervallo in cui vuoi eliminare le entità o vuoto per eliminare tutto.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "freeze",
		freeze_command_help = "Blocca un giocatore.",
		freeze_command_parameter_server_id = "server id",
		freeze_command_parameter_server_id_help = "L'ID del server del giocatore che vuoi bloccare.",
		freeze_command_substitutes = "",

		unfreeze_command = "unfreeze",
		unfreeze_command_help = "Sblocca un giocatore.",
		unfreeze_command_parameter_server_id = "server id",
		unfreeze_command_parameter_server_id_help = "L'ID del server del giocatore che vuoi sbloccare.",
		unfreeze_command_substitutes = "",

		slap_command = "slap",
		slap_command_help = "Schiaffeggia un giocatore (uccidendolo).",
		slap_command_parameter_server_id = "server id",
		slap_command_parameter_server_id_help = "L'ID del server del giocatore che vuoi schiaffeggiare.",
		slap_command_substitutes = "",

		damage_player_command = "damage_player",
		damage_player_command_help = "Danneggia la salute di un giocatore.",
		damage_player_command_parameter_server_id = "server id",
		damage_player_command_parameter_server_id_help = "L'ID del server del giocatore che vuoi danneggiare.",
		damage_player_command_parameter_health = "damage",
		damage_player_command_parameter_health_help = "La quantità di danno che vuoi fare.",
		damage_player_command_substitutes = "damage",

		scoop_command = "scoop",
		scoop_command_help = "Raccoglie tutti i giocatori in un certo raggio. (Da utilizzare con /unscoop)",
		scoop_command_parameter_radius = "raggio",
		scoop_command_parameter_radius_help = "In quale raggio vuoi raccogliere i giocatori (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "unscoop",
		unscoop_command_help = "Teletrasporta tutti i giocatori che hai raccolto in precedenza nella tua posizione attuale.",
		unscoop_command_parameter_revive = "revive",
		unscoop_command_parameter_revive_help = "Rianima i giocatori raccolti se vengono abbattuti.",
		unscoop_command_substitutes = "",

		peek_command = "peek",
		peek_command_help = "Peek mostrerà tutti i giocatori invisibili intorno a te (incluso te stesso).",
		peek_command_substitutes = "",

		hit_indicator_command = "hit_indicator",
		hit_indicator_command_help = "Attiva/disattiva l'indicatore di hit se utilizzi il mirino personalizzato.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "trigger_ems_call",
		trigger_ems_call_command_help = "Invia una chiamata EMS locale dalla tua posizione.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_detect_add",
		model_detect_add_command_help = "Aggiungere temporaneamente un modello all'elenco di rilevamento. L'elenco viene reimpostato al riavvio del server.",
		model_detect_add_command_parameter_model = "modello",
		model_detect_add_command_parameter_model_help = "Il modello che desideri rilevare. Può essere sia un nome di modello che un hash di modello.",
		model_detect_add_command_substitutes = "detect",

		model_detect_remove_command = "model_detect_remove",
		model_detect_remove_command_help = "Rimuovere un modello dall'elenco di rilevamento.",
		model_detect_remove_command_parameter_model = "modello",
		model_detect_remove_command_parameter_model_help = "Il modello che vuoi rimuovere. Possono essere entrambi il nome del modello o un modello hash.",
		model_detect_remove_command_substitutes = "undetect",

		detection_area_add_command = "detection_area_add",
		detection_area_add_command_help = "Crea un'area in cui tutte le entità generate all'interno di quell'area ti verranno inviate con alcune informazioni. Le informazioni sono disponibili nell'interfaccia utente Panoramica.",
		detection_area_add_command_parameter_radius = "raggio",
		detection_area_add_command_parameter_radius_help = "Il raggio del cerchio in cui verranno rilevate le entità. Il valore minimo è '10' e il massimo è '5000'. Lasciandolo vuoto, l'impostazione predefinita sarà '100'.",
		detection_area_add_command_substitutes = "area_add",

		detection_area_remove_command = "detection_area_remove",
		detection_area_remove_command_help = "Rimuovere un'area di rilevamento.",
		detection_area_remove_command_parameter_area_id = "Area ID detector",
		detection_area_remove_command_parameter_area_id_help = "L'ID dell'area di rilevamento che si desidera rimuovere.",
		detection_area_remove_command_substitutes = "area_remove",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "Eseguire il debug dei rettangoli di esclusione del testo sullo schermo.",
		screen_text_debug_command_substitutes = "screen_text",

		-- base/commands
		help_command = "help",
		help_command_help = "Mostra tutti i comandi disponibili.",
		help_command_substitutes = "",

		substitutes_command = "substitutes",
		substitutes_command_help = "Mostra tutti i sostituti disponibili.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "richer_presence",
		richer_presence_command_help = "Attiva/disattiva la 'presenza più ricca' che aggiunge più informazioni alla presenza ricca, come il carattere carico.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "emojis_list",
		emojis_list_command_help = "Elenca tutte le emoji disponibili.",
		emojis_list_command_substitutes = "emojis",

		emojis_refresh_command = "emojis_refresh",
		emojis_refresh_command_help = "Aggiorna gli emoji disponibili. Questo recupererà l'elenco più recente dalla gilda discord.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "get_pings",
		get_pings_command_help = "Ottieni un ping medio a vari host in tutto il mondo per trovare la posizione host più adatta per i giocatori attuali di questo server.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profile_debug",
		profile_debug_command_help = "Attiva o disattiva il debugger del profilo.",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "playtime",
		playtime_command_help = "Controlla il tempo di gioco totale sul server e il tempo di gioco di questa sessione.",
		playtime_command_parameter_server_id = "server id",
		playtime_command_parameter_server_id_help = "L'ID del server del giocatore per il quale vuoi ottenere il tempo di riproduzione. Puoi lasciare questo campo vuoto o su `0` per selezionare te stesso.",
		playtime_command_substitutes = "",

		leaderboard_command = "leaderboard",
		leaderboard_command_help = "Controlla la classifica del tempo di gioco.",
		leaderboard_command_substitutes = "",

		package_command = "package",
		package_command_help = "Controlla e aggiorna il tuo pacchetto.",
		package_command_substitutes = "/refresh_package",

		player_packages_command = "player_packages",
		player_packages_command_help = "Ottieni tutti i tuoi inutilizzati 'pacchetti di giocatori'.",
		player_packages_command_substitutes = "",

		unload_character_command = "unload_character",
		unload_character_command_help = "Scarica il personaggio di un giocatore.",
		unload_character_command_parameter_server_id = "server id",
		unload_character_command_parameter_server_id_help = "L'ID del server del giocatore per cui vuoi scaricare il personaggio. Puoi lasciare questo campo vuoto o su `0` per selezionare te stesso.",
		unload_character_command_parameter_message = "messaggio",
		unload_character_command_parameter_message_help = "Se desideri visualizzare un messaggio che il giocatore può vedere nel menu di accesso, digitalo qui.",
		unload_character_command_substitutes = "unload",

		-- game/admin_menu
		admin_command = "admin",
		admin_command_help = "Apre il menu di amministrazione.",
		admin_command_substitutes = "",

		tp_player_command = "tp_player",
		tp_player_command_help = "Ti teletrasporta da un giocatore.",
		tp_player_command_parameter_server_id = "server id",
		tp_player_command_parameter_server_id_help = "L'ID del server del giocatore in cui ti teletrasporti.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_here",
		tp_here_command_help = "Ti teletrasporta un giocatore.",
		tp_here_command_parameter_server_id = "server id",
		tp_here_command_parameter_server_id_help = "L'ID del server del giocatore che desideri teletrasportare.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_to",
		tp_to_command_help = "Teletrasporta un giocatore ad un altro giocatore.",
		tp_to_command_parameter_source_id = "source id",
		tp_to_command_parameter_source_id_help = "Il giocatore che vuoi teletrasportare.",
		tp_to_command_parameter_destination_id = "Destinazione ID",
		tp_to_command_parameter_destination_id_help = "Il giocatore dal quale ti vuoi trasportare.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "create_airdrop",
		create_airdrop_command_help = "Crea un approvigionamento.",
		create_airdrop_command_parameter_airdrop_type = "tipo di approvigionamento",
		create_airdrop_command_parameter_airdrop_type_help = "Il tipo di airdrop che vorresti creare. (armi, farmaci, medicinali, forniture, accessori, oggetti di valore, cibo)",
		create_airdrop_command_parameter_item_amount = "Ammonto oggetti",
		create_airdrop_command_parameter_item_amount_help = "La quantità di elementi che l'airdrop dovrebbe contenere.",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "call_airstrike",
		call_airstrike_command_help = "Chiama un attacco aereo nella tua posizione attuale.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "airsupport",
		airsupport_command_help = "Chiama un supporto aereo.",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "show_alert",
		show_alert_command_help = "Mostra un'allerta per un determinato giocatore (o per tutti).",
		show_alert_command_parameter_server_id = "server id",
		show_alert_command_parameter_server_id_help = "L'ID del giocatore al quale vuoi mostrare l'allerta.",
		show_alert_command_parameter_content = "contenuto",
		show_alert_command_parameter_content_help = "Contenuto dell'allerta.",
		show_alert_command_substitutes = "alert",

		-- game/archives
		create_archive_command = "create_archive",
		create_archive_command_help = "Crea un nuovo caso nell'archivio in cui ti trovi attualmente più vicino.",
		create_archive_command_parameter_case_number = "Numero del caso",
		create_archive_command_parameter_case_number_help = "Il numero del caso (Intero compreso tra 1 e 99.999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "destroy_archive",
		destroy_archive_command_help = "Distrugge e il caso esistente nell'archivio in cui ti trovi attualmente più vicino.",
		destroy_archive_command_parameter_case_number = "Numero del caso",
		destroy_archive_command_parameter_case_number_help = "Il numero del caso. (Puoi distruggere solo casse vuote)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "respawn",
		respawn_command_help = "Ucciditi. (per arena)",
		respawn_command_substitutes = "/suicide",

		-- game/audio
		audio_debug_command = "audio_debug",
		audio_debug_command_help = "Attiva/disattiva il debug audio.",
		audio_debug_command_substitutes = "",

		play_audio_command = "play_audio",
		play_audio_command_help = "Riproduci un audio per un giocatore o per tutti i giocatori.",
		play_audio_command_parameter_url = "url",
		play_audio_command_parameter_url_help = "Il download URL dell'audio.",
		play_audio_command_parameter_volume = "volume",
		play_audio_command_parameter_volume_help = "ll livello del volume a cui deve essere riprodotto l'audio. I valori validi vanno da '0' a '1'. Questo valore sarà predefinito su `0.1`.",
		play_audio_command_parameter_server_id = "server id",
		play_audio_command_parameter_server_id_help = "L'ID del giocatore per cui vuoi riprodurre questo audio. Puoi fare `-1` per tutti i giocatori.",
		play_audio_command_substitutes = "",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "Attiva/disattiva la funzione Battle Royale.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "battle_royale_start",
		battle_royale_start_command_help = "Inizia una partita di Battle Royale.",
		battle_royale_start_command_parameter_no_vehicles = "no vehicles",
		battle_royale_start_command_parameter_no_vehicles_help = "Crea una partita senza veicoli.",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "battle_royale_invite",
		battle_royale_invite_command_help = "Invita un giocatore nella tua lobby di Battle Royale.",
		battle_royale_invite_command_parameter_server_id = "server id",
		battle_royale_invite_command_parameter_server_id_help = "L'ID del server del giocatore che desideri invitare.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Unisciti alla lobby di Battle Royale di un giocatore.",
		battle_royale_join_command_parameter_server_id = "server id",
		battle_royale_join_command_parameter_server_id_help = "L'ID del server del giocatore a cui vorresti unirti.",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "Esci dalla lobby di Battle Royale in cui ti trovi.",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "Unisciti all'istanza di Battle Royale di un giocatore.",
		battle_royale_join_instance_command_parameter_server_id = "server id",
		battle_royale_join_instance_command_parameter_server_id_help = "L'ID del server del giocatore di cui vuoi unirti all'istanza.",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "Lascia l'istanza a cui ti sei unito.",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "bed",
		bed_command_help = "Tentativo di sdraiarsi nel letto più vicino.",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "toggle_bombs",
		toggle_bombs_command_help = "Attiva/disattiva le bombe sul tuo attuale aereo.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "Attiva/disattiva la bomba di accensione per il veicolo in cui ti trovi attualmente (il veicolo esploderà all'accensione del motore).",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "Spazza i boombox.",
		wipe_boomboxes_command_parameter_radius = "radius",
		wipe_boomboxes_command_parameter_radius_help = "Il raggio di pulizia. Lasciarlo vuoto selezionerà automaticamente `100`. I valori validi sono superiori a `0`, così come `0` e `-1` che selezioneranno tutti gli inventari.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "draw_boomboxes",
		draw_boomboxes_command_help = "Disegna i boombox.",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "spawn_contract",
		spawn_contract_command_help = "Spawna un boosting contract.",
		spawn_contract_command_parameter_server_id = "server id",
		spawn_contract_command_parameter_server_id_help = "Se non metti nessun ID, spawnerà il contratto a te stesso.",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "cache_assets",
		cache_assets_command_help = "Richiedi e scarica forzatamente la maggior parte delle risorse in streaming (veicoli, oggetti e abbigliamento). Questo non è consigliato a meno che tu non abbia una connessione lenta e le risorse non vengano scaricate abbastanza velocemente su richiesta per essere senza interruzioni. Ciò potrebbe anche causare arresti anomali del client mentre è in azione.",
		cache_assets_command_parameter_slow_download = "download lento",
		cache_assets_command_parameter_slow_download_help = "Vuoi memorizzare nella cache le risorse lentamente? In questo modo ci vorrà molto più tempo, ma ridurrà anche la possibilità di schiantarsi.",
		cache_assets_command_substitutes = "download_cache, preload_cache, load_cache",

		-- game/camera
		stable_cam_command = "stable_cam",
		stable_cam_command_help = "Attiva/disattiva la cam stabile.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "cargo_start",
		cargo_start_command_help = "Fa cominciare una rapina cargo mondiale.",
		cargo_start_command_substitutes = "start_cargo",

		cargo_end_command = "cargo_end",
		cargo_end_command_help = "Finisce una rapina cargo mondiale.",
		cargo_end_command_substitutes = "end_cargo",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "Attiva o disattiva il debug del carico.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "Attiva o disattiva il debug di Cargo Peds.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "Imposta gli schermi del casinò.",
		set_casino_screens_command_parameter_screen_label = "screen label",
		set_casino_screens_command_parameter_screen_label_help = "L'etichetta dello schermo che si desidera impostare. Le etichette dello schermo disponibili sono `diamonds`, `skulls`, `snowflakes` and `winner`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "toggle_cayo_perico",
		toggle_cayo_perico_command_help = "Attiva/disattiva l'isola di Cayo Perico.",
		toggle_cayo_perico_command_substitutes = "toggle_island, island",

		-- game/cayo_perico_world
		cayo_perico_command = "cayo_perico",
		cayo_perico_command_help = "Attiva/disattiva l'aiuto per entrare e uscire dal 'mondo' di Cayo Perico.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "cinema_blacklist_add",
		cinema_blacklist_add_command_help = "Aggiungi un video alla lista nera del cinema locale.",
		cinema_blacklist_add_command_parameter_video_key = "video key",
		cinema_blacklist_add_command_parameter_video_key_help = "La chiave video per il video che desideri inserire nella blacklist. Example: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "Esegui il debug degli schermi cinematografici.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "Concentrati sullo schermo cinematografico più vicino per una migliore esperienza visiva.",
		cinema_focus_command_substitutes = "focus_cinema",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "Attiva/disattiva barre nere cinematografiche.",
		cinematic_command_parameter_bar_height = "altezza della barra",
		cinematic_command_parameter_bar_height_help = "L'altezza delle sbarre. Deve essere compreso tra 0 e 50 (percentuale). Il valore predefinito è 10. Lasciandolo vuoto verrà impostato sull'ultimo valore utilizzato.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "clothing",
		clothing_command_help = "Apre il menu abbigliamento per te o per un altro giocatore.",
		clothing_command_parameter_server_id = "server id",
		clothing_command_parameter_server_id_help = "L'ID server del giocatore per il quale vorresti aprire il menu abbigliamento.",
		clothing_command_substitutes = "",

		barber_command = "barber",
		barber_command_help = "Apre il menu del barbiere per te o per un altro giocatore.",
		barber_command_parameter_server_id = "server id",
		barber_command_parameter_server_id_help = "L'ID del server del giocatore per il quale vorresti aprire il menu del barbiere.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "save_outfit",
		save_outfit_command_help = "Salva i tuoi vestiti attuali come vestito.",
		save_outfit_command_parameter_name = "nome",
		save_outfit_command_parameter_name_help = "Il nome dell'abito.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "delete_outfit",
		delete_outfit_command_help = "Elimina il vestito specificato.",
		delete_outfit_command_parameter_name = "nome",
		delete_outfit_command_parameter_name_help = "Il nome dell'abito.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "share_outfit",
		share_outfit_command_help = "Condividi un outfit con un altro player (se c'è un negozio vicino).",
		share_outfit_command_parameter_server_id = "server id",
		share_outfit_command_parameter_server_id_help = "Il player con il quale vuoi condividere questo outfit.",
		share_outfit_command_parameter_hairstyle = "Taglio capelli",
		share_outfit_command_parameter_hairstyle_help = "Se vuoi includere il taglio di capelli ed il colore (`0` oppure `false` se no).",
		share_outfit_command_parameter_makeup = "makeup",
		share_outfit_command_parameter_makeup_help = "Se vuoi includere il makeup (`0` oppure `false` se no).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "steal_outfit",
		steal_outfit_command_help = "Ruba l'outfit di un altro giocatore.",
		steal_outfit_command_parameter_server_id = "server id",
		steal_outfit_command_parameter_server_id_help = "L'ID del giocatore è invalido.",
		steal_outfit_command_parameter_hairstyle = "Stile dei capelli",
		steal_outfit_command_parameter_hairstyle_help = "Se vuoi copiare l'acconciatura dei giocatori.",
		steal_outfit_command_parameter_makeup = "makeup",
		steal_outfit_command_parameter_makeup_help = "Se vuoi copiare i makeup dei giocatori.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "steal_shoes",
		steal_shoes_command_help = "Ruba le scarpe del giocatore abbattuto più vicino.",
		steal_shoes_command_substitutes = "",

		outfit_command = "outfit",
		outfit_command_help = "Cambia in un outfit diverso quando vicino a un punto di abbigliamento.",
		outfit_command_parameter_outfit = "outfit",
		outfit_command_parameter_outfit_help = "Il nome dell'outfit.",
		outfit_command_parameter_force = "forza",
		outfit_command_parameter_force_help = "Ignora il controllo dei vestiti e non riprodurre l'animazione.",
		outfit_command_substitutes = "",

		outfits_command = "outfits",
		outfits_command_help = "Elenca tutti i tuoi abiti salvati.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "reconnect_command_socket",
		reconnect_command_socket_command_help = "Tenta di riconnettersi alla presa di comando.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "crafting_debug",
		crafting_debug_command_help = "Debug tutte le posizioni di realizzazione.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "crash",
		crash_command_help = "Scatenare un incidente artificiale.",
		crash_command_parameter_server_id = "server id",
		crash_command_parameter_server_id_help = "L'ID server del giocatore che desideri attivare un crash.Lasciando questo vuoto ti selezionerà automaticamente.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "customize_crosshair",
		customize_crosshair_command_help = "Apri il menu di personalizzazione del mirino.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "copy_crosshair",
		copy_crosshair_command_help = "Copia le impostazioni correnti del mirino negli appunti.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "Importa una configurazione del mirino o disabilita il mirino personalizzato.",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "Il file config o empty per disabilitare il mirino personalizzato.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "Attiva/disattiva Il debug incentrato.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "Resetta le tue attività giornaliere.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "unit_id",
		unit_id_command_help = "Imposta l'ID unitario.",
		unit_id_command_parameter_unit_id = "Unità id",
		unit_id_command_parameter_unit_id_help = "Il tuo unità ID.Questo deve essere un numero intero tra 1 e 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "debug",
		debug_command_help = "Attiva/disattiva l'entità-debugger.Ciò mostrerà alcune informazioni generali sulle entità vicine.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_debug",
		npc_debug_command_help = "Esegue il debug di tutti gli NPC non animali intorno a te.",
		npc_debug_command_substitutes = "npcs",

		network_debug_command = "network_debug",
		network_debug_command_help = "Attiva/disattiva L'entità-network-debugger.Ciò mostrerà alcune informazioni sulla rete sulle entità vicine.",
		network_debug_command_substitutes = "net_debug, ndebug",

		attach_command = "attach",
		attach_command_help = "Attiva/disattiva Lo strumento di attacco oggetto.Questo ti aiuterà a posizionare un oggetto allegato sul tuo PED.",
		attach_command_parameter_model_name = "model name",
		attach_command_parameter_model_name_help = "Il nome del modello che desideri allegare.",
		attach_command_parameter_bone_id = "Ossa ID",
		attach_command_parameter_bone_id_help = "L'ID osseo che si desidera utilizzare durante l'attacco dell'oggetto.Questo può essere lasciato vuoto per l'ID osseo predefinito.",
		attach_command_substitutes = "",

		position_command = "position",
		position_command_help = "Salva la posizione corrente in un file di testo.",
		position_command_parameter_label = "Etichetta",
		position_command_parameter_label_help = "Un'etichetta opzionale da conservare con la posizione.",
		position_command_substitutes = "pos, coords",

		save_commands_list_command = "save_commands_list",
		save_commands_list_command_help = "Salva un elenco di tutti i comandi OP-FW disponibili.",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "save_vehicle_data",
		save_vehicle_data_command_help = "Salva un sacco di dati sui veicoli.",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "draw_radius",
		draw_radius_command_help = "Disegna un raggio.",
		draw_radius_command_parameter_radius = "raggio",
		draw_radius_command_parameter_radius_help = "Il raggio che vuoi disegnare.",
		draw_radius_command_substitutes = "",

		inject_code_command = "inject_code",
		inject_code_command_help = "Iniettare codice sul client di qualcuno.",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "Un URL a un file di testo grezzo che contiene il codice che dovrebbe essere iniettato.",
		inject_code_command_parameter_server_id = "server id",
		inject_code_command_parameter_server_id_help = "Il server ID del client del player a cui vuoi inserirlo. Lasciandolo incompleto questo si ritorcerà su di te.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "One-Time-Message. Se messo vero, puoi usare _sendResponse() per ottenere una risposta dal client del player.",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "Iniettare codice sui client dei giocatori in un certo raggio.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "Un URL a un file di testo grezzo che contiene il codice che dovrebbe essere iniettato.",
		inject_code_radius_command_parameter_radius = "raggio",
		inject_code_radius_command_parameter_radius_help = "Il raggio in cui vuoi che i giocatori siano dentro per iniettare il codice.",
		inject_code_radius_command_substitutes = "inject_radius",

		run_code_command = "run_code",
		run_code_command_help = "Esegue un piccolo frammento di codice.",
		run_code_command_parameter_code = "code",
		run_code_command_parameter_code_help = "Lo snippet di codice che desideri eseguire.",
		run_code_command_substitutes = "crun",

		print_code_command = "print_code",
		print_code_command_help = "Esegue un piccolo frammento di codice e stampare il risultato.",
		print_code_command_parameter_code = "code",
		print_code_command_parameter_code_help = "Lo snippet di codice che desideri eseguire.",
		print_code_command_substitutes = "print",

		vehicle_bones_command = "vehicle_bones",
		vehicle_bones_command_help = "Disegna tutte le ossa del veicolo esistenti sul veicolo più vicino.",
		vehicle_bones_command_parameter_bone_name = "bone name",
		vehicle_bones_command_parameter_bone_name_help = "Basta mostrare una singola posizione delle ossa.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "vehicle_info",
		vehicle_info_command_help = "Stampa informazioni relative al veicolo in cui ti trovi per aiutare a debug Issues.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "delete_entity",
		delete_entity_command_help = "Elimina un'entità con un determinato ID di rete.",
		delete_entity_command_parameter_network_id = "network id",
		delete_entity_command_parameter_network_id_help = "L'ID di rete dell'entità che desideri eliminare.",
		delete_entity_command_substitutes = "de",

		move_entity_command = "move_entity",
		move_entity_command_help = "Sposta un'entità con un determinato ID di rete nella posizione corrente.",
		move_entity_command_parameter_network_id = "network id",
		move_entity_command_parameter_network_id_help = "L'ID di rete dell'entità che vuoi spostare.",
		move_entity_command_parameter_ground = "Terra",
		move_entity_command_parameter_ground_help = "Se l'entità deve essere posizionata correttamente a terra (solo veicoli).",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "fake_lag",
		fake_lag_command_help = "Crea un falso lag.",
		fake_lag_command_parameter_counter = "Contatore",
		fake_lag_command_parameter_counter_help = "Il contatore utilizzato per creare il ritardo.Maggiore è questo valore, più lento sarà.Per disabilitare, lasciare questo vuoto o digitare `0`.",
		fake_lag_command_substitutes = "lag",

		view_weapon_command = "view_weapon",
		view_weapon_command_help = "Genera un oggetto con il nome del modello dato e lo posiziona perfettamente per gli screenshot.",
		view_weapon_command_parameter_weapon_name = "Nome dell'arma",
		view_weapon_command_parameter_weapon_name_help = "Il nome dell'arma che vuoi visualizzare.",
		view_weapon_command_parameter_component_names = "Nomi dei componenti",
		view_weapon_command_parameter_component_names_help = "Un elenco di componenti (virgola separata) che si desidera collegare all'arma.",
		view_weapon_command_substitutes = "view",

		view_model_command = "view_model",
		view_model_command_help = "Genera un oggetto con il nome del modello dato e lo posiziona perfettamente per gli screenshot.",
		view_model_command_parameter_model_name = "model name",
		view_model_command_parameter_model_name_help = "Il nome del modello che desideri visualizzare.",
		view_model_command_substitutes = "",

		play_animation_command = "play_animation",
		play_animation_command_help = "Riproduce l'animazione specificata.",
		play_animation_command_parameter_animation_dict = "animazione dict",
		play_animation_command_parameter_animation_dict_help = "Il dizionario di animazione dell'animazione che vuoi suonare.",
		play_animation_command_parameter_animation_name = "nome animazione",
		play_animation_command_parameter_animation_name_help = "Il nome dell'animazione dell'animazione che vuoi suonare.",
		play_animation_command_parameter_flags = "Flags",
		play_animation_command_parameter_flags_help = "Le flag di animazione per l'animazione che vuoi suonare.",
		play_animation_command_substitutes = "animation",

		draw_coords_command = "draw_coords",
		draw_coords_command_help = "Disegna coordinate nel mondo.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "Le X-Cordinate.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Le Y-Cordinate.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Le Z-Cordinate.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "draw_coords_destroy",
		draw_coords_destroy_command_help = "Distruggi tutte le coordinate nel mondo.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "debug_damage",
		damage_debug_command_help = "Il danno di debug ha ricevuto ogni frame nella console F8.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debug",
		ipl_debug_command_help = "Disegna tutti gli IPL nel mondo.",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "enable_ipl",
		enable_ipl_command_help = "Abilita un certo IPL.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "L'IPL che vuoi abilitare.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "disable_ipl",
		disable_ipl_command_help = "Disabilita un certo IPL.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "L'IPL che vuoi disabilitare.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "enable_ipl_globally",
		enable_ipl_globally_command_help = "Abilita un certo IPL per tutti i giocatori sul server.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "L'IPL che vuoi abilitare.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "enabled_ipls",
		enabled_ipls_command_help = "Elenca tutti ipls abilitati a livello globale.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "disable_ipl_globally",
		disable_ipl_globally_command_help = "Disabilita un certo IPL per tutti i giocatori sul server.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "L'IPL che vuoi disabilitare.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfie",
		selfie_command_help = "Attiva/disattiva la telecamera selfie.",
		selfie_command_substitutes = "",

		search_world_command = "search_world",
		search_world_command_help = "Cerca al mondo alcuni modelli.",
		search_world_command_parameter_model_name = "nome del modello",
		search_world_command_parameter_model_name_help = "Il nome del modello che desideri cercare.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "save_valid_ped_component_variations",
		save_valid_ped_component_variations_command_help = "Salva tutte le variazioni del componente PED valide per il modello di giocatore attuale.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "toggle_vehicle_test",
		toggle_vehicle_test_command_help = "Attiva/disattiva il test del veicolo.(Traccia la velocità massima, ecc.)",
		toggle_vehicle_test_command_substitutes = "test_vehicle, vehicle_test",

		create_vehicle_model_lists_command = "create_vehicle_model_lists",
		create_vehicle_model_lists_command_help = "Crea elenchi di modelli di veicoli, classificati per nativo (used), native (unused) and addon.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "draw_vehicle_nodes",
		draw_vehicle_nodes_command_help = "Attiva/disattiva disegno di nodi di veicoli vicini.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "distance",
		distance_command_help = "Calcola la distanza fra 2 punti.",
		distance_command_parameter_groundify = "terra",
		distance_command_parameter_groundify_help = "Metti a terra il punto.",
		distance_command_substitutes = "dist",

		get_command = "get",
		get_command_help = "Stampa il risultato dei nativi getter che corrispondono alla tua ricerca.",
		get_command_parameter_search = "Cerca",
		get_command_parameter_search_help = "Il nome o parte del nome del nativo.",
		get_command_substitutes = "native",

		ped_bone_command = "ped_bone",
		ped_bone_command_help = "Esegue il debug di un certo osso del ped.",
		ped_bone_command_parameter_bone_name = "nome dell'osso",
		ped_bone_command_parameter_bone_name_help = "L'osso sul quale vuoi eseguire il debug.",
		ped_bone_command_substitutes = "",

		edit_marker_command = "edit_marker",
		edit_marker_command_help = "Modifica una posizione di marcatori o posiziona un nuovo marcatore.",
		edit_marker_command_parameter_marker_name = "nome del marcatore",
		edit_marker_command_parameter_marker_name_help = "Il marcatore che desideri modificare (lascia vuoto per posizionare un nuovo indicatore).",
		edit_marker_command_substitutes = "",

		rectangle_command = "rectangle",
		rectangle_command_help = "Crea un rettangolo in uno spazio 3D.",
		rectangle_command_substitutes = "rect",

		-- game/debug_menu
		debug_menu_command = "debug_menu",
		debug_menu_command_help = "Attiva/disattive il menù debug.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "take_dna_sample",
		take_dna_sample_command_help = "Prende un campione di DNA del giocatore più vicino.",
		take_dna_sample_command_substitutes = "dna_sample, dna",

		-- game/doors
		door_offset_command = "door_offset",
		door_offset_command_help = "Attiva/disattiva lo strumento di offset della porta.",
		door_offset_command_parameter_model_name = "nome del modello",
		door_offset_command_parameter_model_name_help = "Il modello per cui desideri creare un offset.",
		door_offset_command_substitutes = "",

		doors_scan_command = "doors_scan",
		doors_scan_command_help = "Scansiona le porte vicine e salvale in un file di testo.",
		doors_scan_command_parameter_clear_file = "cancella il file",
		doors_scan_command_parameter_clear_file_help = "Desideri cancellare il contenuto del file prima di scriverlo?",
		doors_scan_command_parameter_save_distance = "salva la distanza",
		doors_scan_command_parameter_save_distance_help = "Desideri salvare la distanza dalle voci?",
		doors_scan_command_substitutes = "doors",

		door_debug_command = "debug_doors",
		door_debug_command_help = "Informazioni di debug sulle porte vicine.",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "Riattiva l'ascensore più vicino.",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "Disattiva l'ascensore più vicino.",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "Riattiva tutti gli ascensori più vicini.",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "fingerprint",
		fingerprint_command_help = "Prendi le impronte digitali della persona più vicina.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "engine_failure_chance",
		engine_failure_chance_command_help = "Sovrava la possibilità predefinita per i guasti degli aeromobili.",
		engine_failure_chance_command_parameter_chance = "Possibilità",
		engine_failure_chance_command_parameter_chance_help = "La possibilità che si verifichi un errore del motore o si svuota da ripristinare.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "fake_id",
		fake_id_command_help = "Spawn in una carta cittadino falso.",
		fake_id_command_parameter_female = "femmina",
		fake_id_command_parameter_female_help = "Impostato su true se vuoi una carta cittadino femminile invece di un maschio.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "flag_swap",
		flag_swap_command_help = "Attiva/disattiva l'evento 'flag swap' in tutto il server.",
		flag_swap_command_parameter_flags = "flags",
		flag_swap_command_parameter_flags_help = "Il numero di bandiere che dovrebbero esistere nel mondo durante l'evento. (default: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "flag_swap_show_flags",
		flag_swap_show_flags_command_help = "Attiva/disattiva la visualizzazione di tutte le bandiere vicine.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "flag_swap_leaderboard",
		flag_swap_leaderboard_command_help = "Attiva/disattiva la classifica dell'evento 'flag'swap.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "create_forcefield",
		create_forcefield_command_help = "Crea un campo di forza sulla tua posizione .",
		create_forcefield_command_parameter_radius = "rggio",
		create_forcefield_command_parameter_radius_help = "Il raggio del campo di forza.",
		create_forcefield_command_parameter_deny_players = "Nega i giocatori",
		create_forcefield_command_parameter_deny_players_help = "Il campo di forza dovrebbe negare l'ingresso ai giocatori?",
		create_forcefield_command_substitutes = "forcefield",

		destroy_forcefield_command = "destroy_forcefield",
		destroy_forcefield_command_help = "Distruggi un campo di forza specifico.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "L'ID del campo di forza che desideri distruggere.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Attiva o disattiva la funzione di costruzione di Fortnite.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Attiva o disattiva il debugger dell'edificio fortnite.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "Distruggi le costruzioni di Fortnite.",
		fortnite_wipe_command_parameter_radius = "raggio",
		fortnite_wipe_command_parameter_radius_help = "Il raggio per il quale vuoi cancellare. Lasciarlo vuoto o impostarlo su 0 cancellerà tutto.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "Attiva/disattiva il freecam.",
		freecam_command_parameter_track = "track",
		freecam_command_parameter_track_help = "Chiedi a FreeCam di seguire il tuo personaggio.",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "Registra un punto della fotocamera.",
		cam_point_command_parameter_time = "tempo",
		cam_point_command_parameter_time_help = "Il tempo di transizione dall'ultimo punto in MS (min: 100, max: 30.000).",
		cam_point_command_parameter_index = "indici",
		cam_point_command_parameter_index_help = "L'indice del punto che vuoi andare.",
		cam_point_command_parameter_override = "override",
		cam_point_command_parameter_override_help = "Sostituire il punto in quell'indice.",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "Cancella tutti i punti della fotocamera definiti.",
		cam_clear_command_substitutes = "",

		cam_play_command = "cam_play",
		cam_play_command_help = "Riproduci tutti i punti della fotocamera impostata.",
		cam_play_command_parameter_ease = "sollevare",
		cam_play_command_parameter_ease_help = "Facilità tra i punti della fotocamera.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "frisk",
		frisk_command_help = "Perquisisci la persona più vicina per le armi.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "tree_debug",
		tree_debug_command_help = "Debug di tutti gli alberi nel mondo.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "gun_trader_debug",
		gun_trader_debug_command_help = "Disegna un testo sulla posizione attuale del commerciante di armi.",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gas_debug",
		gas_debug_command_help = "Attiva/disattiva Il debug del gas.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_target",
		gps_target_command_help = "Imposta un obiettivo per il tuo GPS.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "X Cordinate sul target.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Y Cordinate sul target.",
		gps_target_command_substitutes = "target",

		-- game/graphics
		toggle_noir_command = "toggle_noir",
		toggle_noir_command_help = "Attiva/disattiva Lo schermo noir e gli effetti audio.",
		toggle_noir_command_parameter_timecycle_id = "id cicli temporali",
		toggle_noir_command_parameter_timecycle_id_help = "L'ID del timiclo.Ce ne sono solo due.",
		toggle_noir_command_substitutes = "noir",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_vehicle_gravity",
		toggle_vehicle_gravity_command_help = "Attiva/disattiva La gravità per un determinato veicolo dei giocatori.",
		toggle_vehicle_gravity_command_parameter_server_id = "server id",
		toggle_vehicle_gravity_command_parameter_server_id_help = "L'ID server del giocatore per cui è possibile attivare la gravità.",
		toggle_vehicle_gravity_command_substitutes = "vehicle_gravity, gravity",

		-- game/gravity_gun
		gravity_gun_command = "gravity_gun",
		gravity_gun_command_help = "Spawna un'arma gravitazionale per te.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "Attiva/disattiva Il debug di Halloween.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "halloween_start_escape_room",
		halloween_start_escape_room_command_help = "Avviare con forza la stanza di fuga.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "revive",
		revive_command_help = "Rivivi qualcuno dai morti.",
		revive_command_parameter_server_id = "server id",
		revive_command_parameter_server_id_help = "L'ID server del giocatore che vuoi rilanciare.Puoi lasciare questo vuoto o a `0` per selezionare te stesso.Puoi anche fare `-1` per far rivivere tutti.",
		revive_command_parameter_remove_injuries = "Rimuovi lesioni",
		revive_command_parameter_remove_injuries_help = "Imposta questo su qualsiasi valore tranne `0` o` false` per rimuovere anche tutte le lesioni.",
		revive_command_substitutes = "",

		range_revive_command = "range_revive",
		range_revive_command_help = "Rivivi tutti i giocatori in una certa gamma.",
		range_revive_command_parameter_distance = "Distanza",
		range_revive_command_parameter_distance_help = "Gamma che vuoi rilanciare i giocatori in (tra 1 e 200).",
		range_revive_command_substitutes = "revive_range",

		recent_deaths_command = "recent_deaths",
		recent_deaths_command_help = "Ottieni le morti più recenti.",
		recent_deaths_command_parameter_amount = "ammonto",
		recent_deaths_command_parameter_amount_help = "La quantità di morti che vorresti ricevere.I valori validi sono tra `1` e` 100`.Lasciando questo come vuoto selezionerà automaticamente `20`.",
		recent_deaths_command_substitutes = "check_deaths",

		player_death_command = "player_death",
		player_death_command_help = "Ottieni la recente morte di un giocatore.",
		player_death_command_parameter_server_id = "server id",
		player_death_command_parameter_server_id_help = "L'ID server del giocatore.Lasciare questo come vuoto selezionerà automaticamente il tuo ID.",
		player_death_command_substitutes = "check_death",

		death_timer_command = "death_timer",
		death_timer_command_help = "Sovravidia il tempo per il timer di respawn di morte.",
		death_timer_command_parameter_time = "tempo",
		death_timer_command_parameter_time_help = "La quantità di tempo in secondi in cui si desidera impostare il timer. Per rimuovere la sostituzione, lasciare questo vuoto.",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "hitmarkers",
		hitmarkers_command_help = "metti/togli hitmarker sounds.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "watermark",
		watermark_command_help = "Attiva/disattiva La filigrana centrale.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "metrics_toggle",
		metrics_toggle_command_help = "Attiva/disattiva il display delle metriche centrali.",
		metrics_toggle_command_substitutes = "metrics, metrics_display",

		toggle_small_metrics_command = "toggle_small_metrics",
		toggle_small_metrics_command_help = "Attiva/disattiva Il display di piccole metriche (se /mertrics è anche attivato).",
		toggle_small_metrics_command_substitutes = "small_metrics",

		toggle_phone_gps_command = "toggle_phone_gps",
		toggle_phone_gps_command_help = "Attiva/disattiva la minimap che si mostra quando si apri il telefono a piedi.",
		toggle_phone_gps_command_substitutes = "phone_gps",

		toggle_advanced_hud_command = "toggle_advanced_hud",
		toggle_advanced_hud_command_help = "Attiva/disattiva Il veicolo avanzato HUD.(RPM, ingranaggi, ecc.)",
		toggle_advanced_hud_command_substitutes = "advanced_hud",

		toggle_hud_gauges_command = "toggle_hud_gauges",
		toggle_hud_gauges_command_help = "Attiva/disattiva i calibri HUD.(Velocità e giri / min)",
		toggle_hud_gauges_command_substitutes = "gauges",

		set_gauge_needle_command = "set_gauge_needle",
		set_gauge_needle_command_help = "Imposta lo stile dell'indicatore HUD. (Speed and RPM)",
		set_gauge_needle_command_parameter_needle = "needle",
		set_gauge_needle_command_parameter_needle_help = "Lo stile del puntatore (arrow/line).",
		set_gauge_needle_command_substitutes = "gauge_needle",

		-- game/hunting
		animal_debug_command = "animal_debug",
		animal_debug_command_help = "Attiva/disattiva Debug per animali.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "inspect",
		inspect_command_help = "Ispeziona il giocatore più vicino per gli infortuni.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "instance_create",
		instance_create_command_help = "Crea un'istanza.",
		instance_create_command_substitutes = "i_create",

		instance_destroy_command = "instance_destroy",
		instance_destroy_command_help = "Distruggere un'istanza.",
		instance_destroy_command_parameter_instance_id = "instance id",
		instance_destroy_command_parameter_instance_id_help = "L'ID dell'istanza che desideri distruggere.",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "Aggiungi un giocatore a un'istanza.",
		instance_add_player_command_parameter_instance_id = "instance id",
		instance_add_player_command_parameter_instance_id_help = "L'ID dell'istanza che desideri aggiungere un giocatore a.",
		instance_add_player_command_parameter_server_id = "server id",
		instance_add_player_command_parameter_server_id_help = "L'ID server del giocatore che si desidera aggiungere all'istanza.Questo parametro è facoltativo e si selezionerà automaticamente se lasciato vuoto.",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Rimuovi un giocatore da un'istanza.",
		instance_remove_player_command_parameter_instance_id = "instance id",
		instance_remove_player_command_parameter_instance_id_help = "L'ID dell'istanza che desideri rimuovere un giocatore da.",
		instance_remove_player_command_parameter_server_id = "server id",
		instance_remove_player_command_parameter_server_id_help = "L'ID server del giocatore che si desidera rimuovere dall'istanza.Questo parametro è facoltativo e si selezionerà automaticamente se lasciato vuoto.",
		instance_remove_player_command_substitutes = "i_remove",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "Ottieni tutti i giocatori all'interno di un'istanza.",
		instance_get_players_command_parameter_instance_id = "instance id",
		instance_get_players_command_parameter_instance_id_help = "L'ID dell'istanza che desideri ottenere i giocatori.",
		instance_get_players_command_substitutes = "i_players",

		quick_instance_command = "quick_instance",
		quick_instance_command_help = "Crea un'istanza e aggiungi te e un elenco di giocatori ad esso.",
		quick_instance_command_parameter_server_ids = "server ids",
		quick_instance_command_parameter_server_ids_help = "Elenco separato da virgola di ID server che si desidera aggiungere all'istanza.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interior_debug",
		interior_debug_command_help = "Attiva/disattiva Il testo di debug di interni.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "draw_interiors",
		draw_interiors_command_help = "Attiva/disattiva disegno di interni.",
		draw_interiors_command_substitutes = "interiors",

		draw_interior_portals_command = "draw_interior_portals",
		draw_interior_portals_command_help = "Attiva/disattiva disegno di portali interni.",
		draw_interior_portals_command_substitutes = "interior_portals, portals",

		random_interior_command = "random_interior",
		random_interior_command_help = "Teletrasporto in un interno casuale.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "trunk",
		trunk_command_help = "Tentativo di accedere a un inventario del tronco vicino.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "wipe_ground_inventories",
		wipe_ground_inventories_command_help = "Pulisci gli inventari del terreno.",
		wipe_ground_inventories_command_parameter_radius = "radius",
		wipe_ground_inventories_command_parameter_radius_help = "Il raggio di pulizia.Lasciando questo come vuoto selezionerà automaticamente `100`.I valori validi sono al di sopra di `0`, così come` 0` e `-1` che selezionerà tutti gli inventari.",
		wipe_ground_inventories_command_substitutes = "wipeinvs, wipe_inventories, wipe_ground",

		refresh_inventory_command = "refresh_inventory",
		refresh_inventory_command_help = "Aggiorna con forza un certo inventario.",
		refresh_inventory_command_parameter_inventory_name = "inventory name",
		refresh_inventory_command_parameter_inventory_name_help = "L'inventario che vuoi aggiornare.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "toggle_big_inventory",
		toggle_big_inventory_command_help = "Aumenta temporaneamente gli slot dell'inventario dei tuoi personaggi a 250.",
		toggle_big_inventory_command_substitutes = "Big_inventory",

		item_lookup_command = "item_lookup",
		item_lookup_command_help = "Cerca un elemento in base al suo ID.",
		item_lookup_command_parameter_item_id = "ID dell'oggetto",
		item_lookup_command_parameter_item_id_help = "L'ID dell'elemento che desideri cercare.",
		item_lookup_command_substitutes = "item",

		-- game/items
		clear_map_command = "clear_map",
		clear_map_command_help = "Cancella la posizione memorizzata di una mappa.",
		clear_map_command_parameter_slot = "slot",
		clear_map_command_parameter_slot_help = "Lo slot di inventario nella mappa è in.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "jackpot",
		jackpot_command_help = "Attiva o disattiva l'interfaccia utente del jackpot.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "Prendi una commissione da tutti gli inventari del jackpot.",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "locate_entity",
		locate_entity_command_help = "Individua una certa entità sulla mappa.",
		locate_entity_command_parameter_filter = "filtro",
		locate_entity_command_parameter_filter_help = "Quale filtro dovrebbe corrispondere l'entità (ID: 12345, piastra: 90fmk072, ecc.)",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "Attiva/disattiva Il bottino debug.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "lottery",
		lottery_command_help = "Ottieni lo stato attuale della lotteria.",
		lottery_command_substitutes = "",

		claim_lottery_command = "claim_lottery",
		claim_lottery_command_help = "Rivendicare le tue vincite alla lotteria.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "roll_lottery",
		roll_lottery_command_help = "Rotola manualmente la lotteria.",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "refresh_magazines",
		refresh_magazines_command_help = "Aggiorna le riviste se ci sono stati cambiamenti nel database.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "Attiva/disattiva L'MDT.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "Verifica se il veicolo vicino ha un aggiornamento del motore 5.",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Attiva o disattiva il debug del mining.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "language",
		language_command_help = "Imposta la tua lingua preferita.Questo cambiamento salverà per le sessioni future.Il cambiamento è immediato.",
		language_command_parameter_language = "Linguaggio del codice",
		language_command_parameter_language_help = "Il codice della lingua che desideri abilitare. Per vedere la tua lingua corrente e tutte le altre lingue disponibili, digita /languages. Per la lingua predefinita, lascia vuoto questo argomento.",
		language_command_substitutes = "lang",

		languages_command = "languages",
		languages_command_help = "Controlla la tua lingua attuale e tutte le altre lingue disponibili.",
		languages_command_substitutes = "langs",

		ping_command = "ping",
		ping_command_help = "Ottieni il tuo ping attuale sul server.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Trasmettere un messaggio fuori dal personaggio all'intero server.",
		ooc_command_parameter_message = "ooc message",
		ooc_command_parameter_message_help = "Il messaggio che desideri inviare.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "Trasmettere un messaggio fuori dal personaggio ai giocatori vicini.",
		ooc_local_command_parameter_message = "ooc message",
		ooc_local_command_parameter_message_help = "Il messaggio che desideri inviare.",
		ooc_local_command_substitutes = "looc, oocl, ooclocal",

		ooc_on_command = "ooc_on",
		ooc_on_command_help = "Abilita la chat OOC se disabilitato.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_off",
		ooc_off_command_help = "Disabilita la chat OOC se abilitato.",
		ooc_off_command_substitutes = "",

		copy_license_command = "copy_license",
		copy_license_command_help ="Copia il tuo identificatore di licenza rockstar negli appunti. (Utilizzato dallo staff per identificarti)",
		copy_license_command_substitutes = "",

		clear_chat_command = "clear_chat",
		clear_chat_command_help = "Cancella la chat.",
		clear_chat_command_substitutes = "cls, clear",

		clear_chat_all_command = "clear_chat_all",
		clear_chat_all_command_help = "Cancella la chat per tutti.",
		clear_chat_all_command_substitutes = "Clsall, clearall",

		mute_command = "mute",
		mute_command_help = "Muta un giocatore dalla chat OOC e dal comando report.",
		mute_command_parameter_server_id = "server id",
		mute_command_parameter_server_id_help = "L'ID server del giocatore che vuoi disattivare.",
		mute_command_parameter_expire = "Scade",
		mute_command_parameter_expire_help = "La lunghezza del muto del giocatore.Questo può essere lasciato vuoto, a `0` o` false` per un muto indefinito.È possibile utilizzare W/D/H per la lunghezza.(Ex: `3d2h` -> 3 giorni, 2 ore)",
		mute_command_parameter_reason = "ragione",
		mute_command_parameter_reason_help = "Il motivo dietro il muto del giocatore.",
		mute_command_substitutes = "",

		unmute_command = "unmute",
		unmute_command_help = "Smute un giocatore dall'OOC e dal comando del report.",
		unmute_command_parameter_server_id = "server id",
		unmute_command_parameter_server_id_help = "L'ID server del giocatore che vuoi riattivare.",
		unmute_command_substitutes = "",

		use_measurement_command = "use_measurement",
		use_measurement_command_help = "Sostituire il sistema di misurazione preferito del locale.",
		use_measurement_command_parameter_measurement = "misura",
		use_measurement_command_parameter_measurement_help = "Il sistema di misurazione che desideri utilizzare.I valori validi sono `Imperial` e` metric`.È possibile lasciare questo parametro come vuoto o come un valore non valido per l'utilizzo di impostazione predefinita.",
		use_measurement_command_substitutes = "measurement, meas",

		no_copyright_command = "no_copyright",
		no_copyright_command_help = "Questo comando disabiliterà tutti i suoni potenzialmente protetti da copyright provenienti dal framework quando abilitato.",
		no_copyright_command_substitutes = "",

		picture_command = "picture",
		picture_command_help = "Crea un'immagine tramite un URL custom.",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "L'immagine URL.",
		picture_command_parameter_description = "Descrizione",
		picture_command_parameter_description_help = "Descrizione dell'immagine.",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Ottieni l'attuale TPS del server.",
		tps_command_substitutes = "",

		uptime_command = "uptime",
		uptime_command_help = "Controlla il tempo di attività del server.",
		uptime_command_substitutes = "",

		auto_run_command = "auto_run",
		auto_run_command_help = "Imposta un tasto per l'auto-run.",
		auto_run_command_parameter_control_id = "Tasto",
		auto_run_command_parameter_control_id_help = "Il tasto su cui mettere l'auto-run.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "walk_forwards",
		walk_forwards_command_help = "Fa avanzare automaticamente te o un altro giocatore (nel mentre si cerca di evitare gli ostacoli).",
		walk_forwards_command_parameter_server_id = "server id",
		walk_forwards_command_parameter_server_id_help = "L'id del player che vuoi far camminare.",
		walk_forwards_command_parameter_sprint = "sprint",
		walk_forwards_command_parameter_sprint_help = "Se il giocatore deve scattare o meno mentre cammina in avanti. (Default: false)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "cash",
		cash_command_help = "Visualizza il tuo saldo in contanti.",
		cash_command_substitutes = "",

		bank_command = "bank",
		bank_command_help = "Visualizza il tuo saldo bancario.",
		bank_command_substitutes = "",

		give_cash_command = "givecash",
		give_cash_command_help = "Dai soldi a un certo player con una ammonto preciso.",
		give_cash_command_parameter_server_id = "server id",
		give_cash_command_parameter_server_id_help = "L'ID del player a cui vuoi dare la somma di denaro.",
		give_cash_command_parameter_amount = "ammonto",
		give_cash_command_parameter_amount_help = "La somma di denaro che vuoi dare al player.",
		give_cash_command_substitutes = "",

		bill_player_command = "bill_player",
		bill_player_command_help = "Acconta ad un giocatore una somma di denaro che dovrà pagare.",
		bill_player_command_parameter_server_id = "server id",
		bill_player_command_parameter_server_id_help = "L'ID del player al quale vuoi mandare l'acconto.",
		bill_player_command_parameter_amount = "Ammonto",
		bill_player_command_parameter_amount_help = "Somma di denaro al quale vuoi accontare al player.",
		bill_player_command_substitutes = "bill",

		-- game/notepads
		notepad_command = "notepad",
		notepad_command_help = "Attiva/disattiva il blocco note.",
		notepad_command_substitutes = "",

		notepad_debug_command = "notepad_debug",
		notepad_debug_command_help = "Mostra tutti gli ID note di blocco note vicini.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "notepad_info",
		notepad_info_command_help = "Fornisce informazioni su un determinato blocco note.",
		notepad_info_command_parameter_notepad_id = "ID del notepad",
		notepad_info_command_parameter_notepad_id_help = "L'ID del blocco note di cui desideri ottenere informazioni.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "wipe_notepads",
		wipe_notepads_command_help = "Si asciugano tutti i blocchi note in un certo raggio.",
		wipe_notepads_command_parameter_radius = "raggio",
		wipe_notepads_command_parameter_radius_help = "Il raggio in cui si desidera cancellare i blocchi note in (max = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "sign_notepad",
		sign_notepad_command_help = "Firma un blocco note.(Mette il tuo nome in fondo e previene ulteriori modifiche)",
		sign_notepad_command_parameter_slot = "slot",
		sign_notepad_command_parameter_slot_help = "Lo slot di inventario il blocco note è in.",
		sign_notepad_command_substitutes = "/sign",

		-- game/notices
		add_notice_command = "add_notice",
		add_notice_command_help = "Aggiunge un messaggio galleggiante nella tua posizione corrente.",
		add_notice_command_parameter_message = "messaggio",
		add_notice_command_parameter_message_help = "Il messaggio che desideri aggiungere.",
		add_notice_command_substitutes = "",

		remove_notice_command = "remove_notice",
		remove_notice_command_help = "Rimosso un determinato messaggio aggiunto tramite /add_notice.",
		remove_notice_command_parameter_message_id = "Messaggio ID",
		remove_notice_command_parameter_message_id_help = "L'ID del messaggio che si desidera rimuovere.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "frozen_objects_scan",
		frozen_objects_scan_command_help = "Scansiona gli oggetti congelati di un modello di hash e scrivilo su un file sul server.",
		frozen_objects_scan_command_parameter_model_name = "Nome del modello",
		frozen_objects_scan_command_parameter_model_name_help = "Il nome del modello dell'oggetto per cui desideri scansionare.",
		frozen_objects_scan_command_substitutes = "frozen_objects",

		-- game/orbitcam
		orbitcam_command = "orbitcam",
		orbitcam_command_help = "Attiva/disattiva l'orbita.",
		orbitcam_command_substitutes = "orbit",

		-- game/overview
		overview_command = "overview",
		overview_command_help = "Attiva/disattiva L'interfaccia utente di panoramica.L'interfaccia utente di panoramica è un menu di interazione OOC, un centro informazioni e un visualizzatore di dati.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oxy_tutorial",
		oxy_tutorial_command_help = "Riproduci il tutorial oxy la prossima volta che inizi una corsa.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "panel",
		panel_command_help = "Mostra un mini pannello di amministrazione che ti consente di vedere le note di un giocatore e aggiungerne di nuove.",
		panel_command_parameter_server_id = "server id",
		panel_command_parameter_server_id_help = "Server-ID del giocatore di cui vuoi vedere il pannello (deve essere online o disconnesso di recente).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "me",
		me_command_help = "Narrare quello che sta facendo il tuo personaggio.",
		me_command_parameter_message = "messaggio",
		me_command_parameter_message_help = "Il messaggio che vorresti inviare per narrare le tue azioni.",
		me_command_substitutes = "",

		do_command = "do",
		do_command_help = "Visualizza meglio una scena del gioco di ruolo.",
		do_command_parameter_message = "mssaggio",
		do_command_parameter_message_help = "Il messaggio che desideri inviare per aiutare a visualizzare una scena di gioco di ruolo.",
		do_command_substitutes = "",

		description_command = "description",
		description_command_help = "Allega un messaggio al tuo PED per descriverne le funzionalità.",
		description_command_parameter_message = "Messaggio",
		description_command_parameter_message_help = "Il messaggio che desideri allegare al tuo PED.",
		description_command_substitutes = "",

		attempt_command = "attempt",
		attempt_command_help = "Tenta qualcosa con una probabilità di successo del 50%.",
		attempt_command_parameter_message = "messaggio",
		attempt_command_parameter_message_help = "Un messaggio di ciò che stai tentando.",
		attempt_command_substitutes = "",

		dice_command = "dice",
		dice_command_help = "Lanciare un dado standard.",
		dice_command_substitutes = "",

		roll_command = "roll",
		roll_command_help = "Un dadi più avanzati e complicati con impostazioni personalizzate.",
		roll_command_parameter_rolls = "rolls",
		roll_command_parameter_rolls_help = "La quantità di tiri che vorresti fare.Sei limitato a 20.",
		roll_command_parameter_max = "max",
		roll_command_parameter_max_help = "Il valore più alto che puoi ottenere su un tiro.Il valore più alto qui è 100.000.",
		roll_command_substitutes = "",

		card_command = "card",
		card_command_help = "Disegna una carta casuale.",
		card_command_substitutes = "",

		ped_messages_command = "ped_messages",
		ped_messages_command_help = "Attiva/disattiva se i messaggi PED devono essere visualizzati nella chat.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "Ped_spawn",
		ped_spawn_command_help = "Spawna un ped.",
		ped_spawn_command_parameter_model = "modello",
		ped_spawn_command_parameter_model_help = "Il modello del PED vuoi generare.",
		ped_spawn_command_parameter_weapon = "arma",
		ped_spawn_command_parameter_weapon_help = "Quale arma dovrebbe avere il PED (optional, \"false\" to skip).",
		ped_spawn_command_parameter_fearless = "Senza paura",
		ped_spawn_command_parameter_fearless_help = "Se il PED deve avere paura delle pistole/ecc. (default: no).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "ped_task",
		ped_task_command_help = "Assegna i tuoi PED generati un'attività.",
		ped_task_command_parameter_task = "compito",
		ped_task_command_parameter_task_help = "L'attività che i PED generati dovrebbero eseguire.",
		ped_task_command_parameter_target = "target",
		ped_task_command_parameter_target_help = "Il server ID i PED dovrebbero target (optional).",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "Fa giocare i tuoi PED alzati di una certa emota.",
		ped_emote_command_parameter_emote = "emote",
		ped_emote_command_parameter_emote_help = "L'emota i peds spawned dovrebbero giocare.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "ped_remove",
		ped_remove_command_help = "Si sbarazza di tutti i tuoi pedoni alzati.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "list_ped_emotes",
		list_ped_emotes_command_help = "Elenca tutte le emote di pedop disponibili.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "list_ped_tasks",
		list_ped_tasks_command_help = "Elenca tutte le attività di pedoponde disponibili.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "ped_steal",
		ped_steal_command_help = "Rubi il ped a qualcuno.",
		ped_steal_command_parameter_server_id = "server id",
		ped_steal_command_parameter_server_id_help = "L'ID del player.",
		ped_steal_command_substitutes = "steal_ped",

		-- game/ped_takeover
		takeover_ped_command = "takeover_ped",
		takeover_ped_command_help = "Ti fa controllare un certo ped.",
		takeover_ped_command_parameter_network_id = "network id",
		takeover_ped_command_parameter_network_id_help = "Il network ID è del ped di cui vuoi prendere controllo.",
		takeover_ped_command_substitutes = "takeover",

		-- game/ped_tasks
		ped_debug_command = "ped_debug",
		ped_debug_command_help = "Fa il debug di un ped.",
		ped_debug_command_parameter_network_id = "network id",
		ped_debug_command_parameter_network_id_help = "Il network id del ped.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "custom_phone_number",
		custom_phone_number_command_help = "Cambia il tuo numero di telefono.",
		custom_phone_number_command_parameter_phone_number = "Numero di telefono",
		custom_phone_number_command_parameter_phone_number_help = "Il numero di telefono in cui vorresti cambiare.Assicurati che segue il formato di XXX-XXXX.",
		custom_phone_number_command_substitutes = "custom_number",

		phone_number_available_command = "phone_number_available",
		phone_number_available_command_help = "Controlla se è disponibile un numero di telefono.",
		phone_number_available_command_parameter_phone_number = "Numero di telefono",
		phone_number_available_command_parameter_phone_number_help = "Il numero di telefono che desideri verificare se è disponibile.Assicurati che segue il formato di XXX-XXXX.",
		phone_number_available_command_substitutes = "number_available",

		-- game/player_control
		drive_for_command = "drive_for",
		drive_for_command_help = "Prendi il controllo del veicolo di un giocatore e guida per lui.",
		drive_for_command_parameter_server_id = "server id",
		drive_for_command_parameter_server_id_help = "L'ID del server del giocatore per il quale vorresti subentrare.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "set_player_scale",
		set_player_scale_command_help = "Imposta la scala di un giocatore.",
		set_player_scale_command_parameter_scale = "scala",
		set_player_scale_command_parameter_scale_help = "La scala che vorresti impostarli.",
		set_player_scale_command_parameter_server_id = "server id",
		set_player_scale_command_parameter_server_id_help = "L'ID server che desideri impostare la scala per.Lasciando questo vuoto ti selezionerà automaticamente.",
		set_player_scale_command_substitutes = "player_scale, set_player_size, player_size",

		-- game/player_stats
		player_stats_command = "player_stats",
		player_stats_command_help = "Attiva o disattiva la funzione delle statistiche del giocatore.",
		player_stats_command_parameter_render_range = "Distanza di rendering",
		player_stats_command_parameter_render_range_help = "Cambia l'intervallo di rendering per i giocatori. Il valore predefinito è 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "pole_dancing_offset",
		pole_dancing_offset_command_help = "Attiva o disattiva lo strumento di debug per gli offset di pole dance.",
		pole_dancing_offset_command_parameter_model_name = "Nome modello",
		pole_dancing_offset_command_parameter_model_name_help = "Il nome del modello che desideri modificare.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "properties_debug",
		properties_debug_command_help = "Attiva/disattiva le proprietà debug.",
		properties_debug_command_substitutes = "properties",

		-- game/props
		props_manage_command = "props_manage",
		props_manage_command_help = "Gestisci oggetti di scena vicini.",
		props_manage_command_substitutes = "manage_props, mp",

		spawn_prop_command = "spawn_prop",
		spawn_prop_command_help = "Spawna un prop.",
		spawn_prop_command_parameter_model_hash = "modello",
		spawn_prop_command_parameter_model_hash_help = "Il modello di prop che desideri generare.",
		spawn_prop_command_parameter_network = "network",
		spawn_prop_command_parameter_network_help = "Vorresti collegare l'elica?Si consiglia di abilitarlo solo per oggetti di scena che dovrebbero essere in grado di muoversi.",
		spawn_prop_command_parameter_no_pickup = "nessun ritiro",
		spawn_prop_command_parameter_no_pickup_help = "Questo oggetto di scena dovrebbe essere raccolto solo da super amministratori?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "spawn_exact_prop",
		spawn_exact_prop_command_help = "Spawna un prop alla tua esatta posizione.",
		spawn_exact_prop_command_parameter_model_name = "model name",
		spawn_exact_prop_command_parameter_model_name_help = "Il modello del prop che vuoi spawnare.",
		spawn_exact_prop_command_parameter_ground = "Per terra",
		spawn_exact_prop_command_parameter_ground_help = "Se il prop è spawnato a terra o no.",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "Debug tutti gli oggetti di scena intorno a te.",
		props_debug_command_substitutes = "",

		delete_prop_command = "delete_prop",
		delete_prop_command_help = "Elimina un sostegno dato un determinato ID dell'elica.",
		delete_prop_command_parameter_prop_id = "prop id",
		delete_prop_command_parameter_prop_id_help = "L'ID dell'elica che stai cercando di eliminare.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "wipe_props",
		wipe_props_command_help = "Asciuga gli oggetti di scena intorno a te.",
		wipe_props_command_parameter_radius = "raggio",
		wipe_props_command_parameter_radius_help = "Il raggio per la pulizia (1-100).",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "radio",
		radio_command_help = "Attiva/disattiva L'interfaccia utente radio.",
		radio_command_substitutes = "",

		radio_debug_command = "radio_debug",
		radio_debug_command_help = "Attiva/disattiva Il debug radiofonico.",
		radio_debug_command_substitutes = "",

		frequency_command = "frequency",
		frequency_command_help = "Imposta su quale frequenza è la radio.",
		frequency_command_parameter_frequency = "frequenza",
		frequency_command_parameter_frequency_help = "La frequenza a cui vorresti andare.",
		frequency_command_substitutes = "freq",

		force_frequency_command = "force_frequency",
		force_frequency_command_help = "Unisciti a una radiofrequenza senza bisogno di una radio o hai bisogno di essere in servizio.",
		force_frequency_command_parameter_frequency = "frequenza",
		force_frequency_command_parameter_frequency_help = "La frequenza a cui vorresti andare.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "random_frequency",
		random_frequency_command_help = "Imposta la radio su una frequenza casuale.",
		random_frequency_command_substitutes = "random_freq, rfreq",

		radio_sounds_command = "radio_sounds",
		radio_sounds_command_help = "Regola il volume degli effetti sonori della radio.",
		radio_sounds_command_parameter_volume = "Livello del volume",
		radio_sounds_command_parameter_volume_help = "Il livello di volume dei suoni radio.Il valore deve essere compreso tra 0 e 1. L'impostazione predefinita è 0,1.Lasciare questo vuoto restituirà il livello di volume corrente.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volume",
		radio_volume_command_help = "Regola il volume della radio.",
		radio_volume_command_parameter_volume = "Livello del volume",
		radio_volume_command_parameter_volume_help = "Il livello di volume della radio.Il valore deve essere compreso tra 0 e 1. L'impostazione predefinita è 0,5.Lasciare questo vuoto restituirà il livello di volume corrente.",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "Attiva/disattiva lo stato del player (Sposato, fidanzato, single) debug.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "Attiva un reskin per un giocatore.",
		reskin_command_parameter_server_id = "server id",
		reskin_command_parameter_server_id_help = "L'ID del server del giocatore per il quale desideri attivare un reskin. Lascia questo spazio vuoto per selezionarti automaticamente.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "redeem_reskin",
		redeem_reskin_command_help = "Riscatta una reskin acquistato.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "riot_mode",
		toggle_riot_mode_command_help = "Attiva/disattiva modalità antisommossa per tutti i giocatori.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "add_riot_player",
		add_riot_player_command_help = "Aggiungi un giocatore alla 'lista delle rivolte' che avrà un attacco Ambient PEDS che i giocatori.",
		add_riot_player_command_parameter_server_id = "server id",
		add_riot_player_command_parameter_server_id_help = "L'ID server del giocatore che desideri aggiungere.Lascia questo vuoto per selezionarti automaticamente.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "Rimuovere un giocatore dal 'Elenco antisommossa'.",
		remove_riot_player_command_parameter_server_id = "server id",
		remove_riot_player_command_parameter_server_id_help = "L'ID server del giocatore che desideri rimuovere.Lascia questo vuoto per selezionarti automaticamente.",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "metagame",
		metagame_command_help = "Attiva o disattiva l'estrazione costante degli ID server del giocatore.",
		metagame_command_substitutes = "meta, m",

		-- game/security_cameras
		security_cameras_command = "security_cameras",
		security_cameras_command_help = "attiva/disattivaTheSecurityCameras.",
		security_cameras_command_substitutes = "sec, sec_cam, Seccam, sec_cams, seccams, security_cams, securitycams, security_camera, securitycamera, securitycameras", -- substitutes!!!

		security_cameras_scan_command = "security_cameras_scan",
		security_cameras_scan_command_help = "Ottieni tutti gli oggetti della telecamera di sicurezza noti e memorizzali in un file di testo.",
		security_cameras_scan_command_substitutes = "scan, scan_cams, scancams",

		security_cameras_health_command = "security_cameras_health",
		security_cameras_health_command_help = "Attiva/disattiva Lo strumento di debug per la salute delle telecamere di sicurezza.",
		security_cameras_health_command_substitutes = "cam_health",

		-- game/shield
		shield_command = "shield",
		shield_command_help = "Attiva/disattiva Lo scudo balistico.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "create_shockwave",
		create_shockwave_command_help = "Crea un'onda d'urto nella tua posizione attuale.",
		create_shockwave_command_parameter_force = "force",
		create_shockwave_command_parameter_force_help = "La forza dell'onda d'urto (1 - 1000).",
		create_shockwave_command_parameter_radius = "radius",
		create_shockwave_command_parameter_radius_help = "Il raggio dell'onda d'urto (1 - 100).",
		create_shockwave_command_substitutes = "shockwave",

		push_player_command = "push_player",
		push_player_command_help = "Spingi il giocatore o il veicolo che stanno di fronte a te.",
		push_player_command_parameter_server_id = "server id",
		push_player_command_parameter_server_id_help = "L'ID del player.",
		push_player_command_substitutes = "push",

		-- game/shrooms
		draw_shroom_areas_command = "draw_shroom_areas",
		draw_shroom_areas_command_help = "Disegna tutte le aree shroom e aggiungi altro.",
		draw_shroom_areas_command_substitutes = "shroom_areas",

		-- game/spying
		search_for_devices_command = "search_for_devices",
		search_for_devices_command_help = "Cerca dispositivi vicini.",
		search_for_devices_command_substitutes = "search_devices, searchdevices, s4d",

		-- game/spectating
		spectate_command = "spectate",
		spectate_command_help = "Spettare un certo giocatore.",
		spectate_command_parameter_server_id = "server id",
		spectate_command_parameter_server_id_help = "L'ID server del giocatore che desideri sviluppare.",
		spectate_command_substitutes = "spec",

		-- game/status
		status_reset_command = "status_reset",
		status_reset_command_help = "Ripristina i livelli di stato.",
		status_reset_command_parameter_server_id = "server id",
		status_reset_command_parameter_server_id_help = "L'ID server del giocatore per cui si desidera ripristinare lo stato.Se lasciato a vuoto, verrà automaticamente selezionato.",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "Disabilitato (o abilita) determinati stati come fame, sete e stress.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "Imposta il livello di armatura di qualcuno.",
		set_body_armor_command_parameter_server_id = "server id",
		set_body_armor_command_parameter_server_id_help = "L'ID server del giocatore in cui si desidera impostare il livello di armatura per il corpo.Puoi lasciare questo vuoto o a `0` per selezionare te stesso.Puoi anche fare `-1` per impostare il livello di armatura di tutti.",
		set_body_armor_command_parameter_body_armor_level = "body armor level",
		set_body_armor_command_parameter_body_armor_level_help = "Il livello dell'armatura del corpo che desideri impostare.Questo valore può essere ovunque da `0` a` 100`.Lasciare questo come vuoto o come un valore non valido sarà default a `100`.",
		set_body_armor_command_substitutes = "body_armor, armor",

		-- game/streamer_mode
		toggle_streamer_mode_command = "toggle_streamer_mode",
		toggle_streamer_mode_command_help = "Attiva/disattiva la modalità streamer.Ciò impedirà ai giocatori di fare le emote '18+'quando sei nelle vicinanze e simili.",
		toggle_streamer_mode_command_substitutes = "streamer_mode, streamer",

		-- game/sync
		time_hour_command = "time_hour",
		time_hour_command_help = "Imposta l'ora di clock corrente.",
		time_hour_command_parameter_hour = "ora",
		time_hour_command_parameter_hour_help = "L'ora in cui desideri impostare l'orologio.Il valore deve essere compreso tra 0 e 23.",
		time_hour_command_parameter_transition = "transizione",
		time_hour_command_parameter_transition_help = "Se il tempo deve essere modificato con una transizione fluida (sì/no, il valore predefinito è no).",
		time_hour_command_substitutes = "hour",

		time_minute_command = "time_minute",
		time_minute_command_help = "Imposta il minuto di clock corrente.",
		time_minute_command_parameter_minute = "minuto",
		time_minute_command_parameter_minute_help = "Nel momento in cui desideri impostare l'orologio.Il valore deve essere compreso tra 0 e 59.",
		time_minute_command_substitutes = "minute",

		local_time_command = "local_time",
		local_time_command_help = "Imposta il tempo, ma solo per te.",
		local_time_command_parameter_time = "ora",
		local_time_command_parameter_time_help = "L'ora in cui desideri impostare l'orologio locale.Il valore deve essere compreso tra 0:00 e 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "local_weather",
		local_weather_command_help = "Imposta il tempo metereologico, ma solo per te.",
		local_weather_command_parameter_weather = "weather",
		local_weather_command_parameter_weather_help = "Il tempo su cui si desidera impostare il meteo locale. Accetta gli stessi valori di /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "brighter_nights",
		brighter_nights_command_help = "Imposta il tempo alle 12:00 e il tempo per liberare, ma solo per te.",
		brighter_nights_command_substitutes = "",

		weather_command = "weather",
		weather_command_help = "Cambiare il tempo.",
		weather_command_parameter_weather = "nome meteorologico",
		weather_command_parameter_weather_help = "Il nome del tempo in cui vorresti impostarlo.I nomi meteorologici validi sono EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS and HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "advance_weather",
		advance_weather_command_help = "Naturalmente avanza al tempo successivo.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "freeze_time",
		freeze_time_command_help = "Attiva/disattiva se il tempo è congelato o meno.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "freeze_weather",
		freeze_weather_command_help = "Attiva/disattiva se il tempo è congelato o meno.",
		freeze_weather_command_substitutes = "",

		blackout_command = "blackout",
		blackout_command_help = "Attiva/disattiva se un blackout è attivo o no.",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "tablet",
		tablet_command_help = "Apre l'interfaccia utente del tablet (se hai un tablet).",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "set_vehicle_preset",
		set_vehicle_preset_command_help = "Aggiorna completamente il veicolo in cui ti trovi attualmente e applica i colori con il preset specificato.",
		set_vehicle_preset_command_parameter_preset = "preset",
		set_vehicle_preset_command_parameter_preset_help = "Il colore preimpostato che desideri applicare (rosso, blu, verde, giallo, arancione, bianco, nero).",
		set_vehicle_preset_command_substitutes = "vehicle_preset",

		detach_all_doors_command = "Detach_all_doors",
		detach_all_doors_command_help = "Stacca tutte le porte del veicolo in cui ti trovi attualmente.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "pop_all_tires",
		pop_all_tires_command_help = "Pops tutti i pneumatici del veicolo in cui ti trovi attualmente.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "upgrade_vehicle_fully",
		upgrade_vehicle_fully_command_help = "Aggiornamenti Il veicolo in cui sei attualmente completamente.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "random_vehicle_colors",
		random_vehicle_colors_command_help = "Randomizza i colori del veicolo in cui ti trovi attualmente.",
		random_vehicle_colors_command_parameter_lights = "luci",
		random_vehicle_colors_command_parameter_lights_help = "Se anche le luci devono essere randomizzate (xenon e neon).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "starve",
		starve_command_help = "Imposta il cibo e la sete su 0.",
		starve_command_substitutes = "",

		car_command = "car",
		car_command_help = "Genera una macchina casuale.",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "set_time_scale",
		set_time_scale_command_help = "Imposta la scala temporale del server.",
		set_time_scale_command_parameter_time_scale = "Scala temporale",
		set_time_scale_command_parameter_time_scale_help = "La scala temporale che desideri impostare.Il valore deve essere compreso tra 0 e 1.",
		set_time_scale_command_substitutes = "time_scale, slow_motion",

		-- game/titanic
		create_titanic_command = "create_titanic",
		create_titanic_command_help = "Crea un titanic che affonda.",
		create_titanic_command_parameter_sink_time = "affondare il tempo",
		create_titanic_command_parameter_sink_time_help = "La quantità di minuti che dovrebbe impiegare prima che la barca sia sott'acqua.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "top_down",
		top_down_command_help = "Attiva/disattiva La vista dall'alto verso il basso.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "tracker",
		tracker_command_help = "Attiva/disattiva Visibilità del tuo tracker.",
		tracker_command_substitutes = "",

		trackers_split_command = "trackers_split",
		trackers_split_command_help = "Attiva/disattiva tra i tracker memorizzati all'interno di una categoria sulla mappa e averli divisi.",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "trains_debug",
		trains_debug_command_help = "Attiva/disattiva Trains Debug.",
		trains_debug_command_substitutes = "",

		spawn_train_command = "spawn_train",
		spawn_train_command_help = "Spawn un treno.",
		spawn_train_command_parameter_track_id = "track id",
		spawn_train_command_parameter_track_id_help = "La pista su cui desideri generare il treno.(Da 1 a 12)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "spawn_map_piece",
		spawn_map_piece_command_help = "Spawn un pezzo di mappa del tesoro.",
		spawn_map_piece_command_parameter_map_tier = "livello della mappa",
		spawn_map_piece_command_parameter_map_tier_help = "Il livello della mappa che desideri generare un pezzo.",
		spawn_map_piece_command_parameter_piece_number = "numero del pezzo",
		spawn_map_piece_command_parameter_piece_number_help = "Il numero del pezzo che desideri generare.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "Modifica a livello globale lo scaler dell'oceano.",
		set_ocean_scaler_command_parameter_intensity = "intensità",
		set_ocean_scaler_command_parameter_intensity_help = "L'intensità che vorresti impostarlo.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		-- game/vdm
		vdm_command = "vdm",
		vdm_command_help = "Fa in modo che l'npc specificato tenti di vdm la destinazione.",
		vdm_command_parameter_target = "target",
		vdm_command_parameter_target_help = "L'ID del server del giocatore di destinazione.",
		vdm_command_parameter_network_id = "network id",
		vdm_command_parameter_network_id_help = "L'ID della rete locale (o il suo veicolo).",
		vdm_command_substitutes = "",

		vdm_clear_command = "vdm_clear",
		vdm_clear_command_help = "Cancella tutti i tuoi obiettivi vdm.",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "voice_debug",
		voice_debug_command_help = "Attiva/disattiva Il debug della voce.",
		voice_debug_command_parameter_server_id = "server id",
		voice_debug_command_parameter_server_id_help = "Se vuoi attivare il 'debug vocale' per qualcun altro, inserisci qui il loro ID server.",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "muted_areas_debug",
		muted_areas_debug_command_help = "Disegna tutte le aree vocali disattivate.",
		muted_areas_debug_command_substitutes = "Muted_areas",

		listen_command = "listen",
		listen_command_help = "Attiva/disattiva Modalità di ascolto per un determinato utente.(Puoi sentire quello che dicono)",
		listen_command_parameter_server_id = "server id",
		listen_command_parameter_server_id_help = "L'utente che desideri ascoltare.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "toggle_voice_mute",
		toggle_voice_mute_command_help = "Mute e non muggire qualcuno dalla chat vocale.",
		toggle_voice_mute_command_parameter_server_id = "server id",
		toggle_voice_mute_command_parameter_server_id_help = "L'utente che desideri disattivare/disgustare.",
		toggle_voice_mute_command_substitutes = "voice_mute",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "Apre il menu della procedura guidata.",
		wizard_command_parameter_server_id = "server id",
		wizard_command_parameter_server_id_help = "Seleziona un determinato giocatore nel menu (opzionale).",
		wizard_command_substitutes = "",

		ragdoll_player_command = "ragdoll_player",
		ragdoll_player_command_help = "Fa un giocatore ragdoll.",
		ragdoll_player_command_parameter_server_id = "server id",
		ragdoll_player_command_parameter_server_id_help = "ID server del giocatore che desideri ragdoll.",
		ragdoll_player_command_parameter_force = "forza",
		ragdoll_player_command_parameter_force_help = "Applicare una forza casuale al giocatore dopo averli fatti ragdoll.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "ragdoll_radius",
		ragdoll_radius_command_help = "Costringe ogni giocatore in un dato raggio a Ragdoll in modo casuale.",
		ragdoll_radius_command_parameter_radius = "raggio",
		ragdoll_radius_command_parameter_radius_help = "Il raggio in cui i giocatori lo faranno ragdoll.",
		ragdoll_radius_command_parameter_force = "forza",
		ragdoll_radius_command_parameter_force_help = "Applicare una forza casuale al giocatore dopo averli fatti ragdoll.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "punch_radius",
		punch_radius_command_help = "Costringe ogni giocatore in un dato raggio a pugni in modo casuale.",
		punch_radius_command_parameter_radius = "raggio",
		punch_radius_command_parameter_radius_help = "Il raggio in cui i giocatori colpiranno in modo casuale.",
		punch_radius_command_substitutes = "",

		flashbang_command = "flashbang",
		flashbang_command_help = "Flashbangs un certo giocatore.",
		flashbang_command_parameter_server_id = "server id",
		flashbang_command_parameter_server_id_help = "ID server del lettore target.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "flashbang_radius",
		flashbang_radius_command_help = "Flashbangs ogni giocatore in un dato raggio.",
		flashbang_radius_command_parameter_radius = "raggio",
		flashbang_radius_command_parameter_radius_help = "Il raggio in cui i giocatori saranno flashbange.",
		flashbang_radius_command_parameter_include_self = "includi self",
		flashbang_radius_command_parameter_include_self_help = "Se vuoi flashbangare anche te stesso.",
		flashbang_radius_command_substitutes = "",

		punch_command = "punch",
		punch_command_help = "Costringe un certo giocatore a colpire in modo casuale.",
		punch_command_parameter_server_id = "server id",
		punch_command_parameter_server_id_help = "ID server del lettore target.",
		punch_command_substitutes = "",

		explode_command = "explode_player",
		explode_command_help = "Esplode un certo giocatore.",
		explode_command_parameter_server_id = "server id",
		explode_command_parameter_server_id_help = "ID server del lettore target.",
		explode_command_substitutes = "",

		ignite_player_command = "ignite_player",
		ignite_player_command_help = "Accende un giocatore in fiamme per un breve momento.",
		ignite_player_command_parameter_server_id = "server id",
		ignite_player_command_parameter_server_id_help = "ID server del lettore target.",
		ignite_player_command_substitutes = "/ignite, /burn",

		run_command_as_command = "run_command_as",
		run_command_as_command_help = "Fa eseguire un altro giocatore un comando.",
		run_command_as_command_parameter_server_id = "server id",
		run_command_as_command_parameter_server_id_help = "ID server del lettore target.",
		run_command_as_command_parameter_command = "command",
		run_command_as_command_parameter_command_help = "Il comando che vuoi far funzionare il giocatore.",
		run_command_as_command_substitutes = "/runas, /sudo",

		ped_reverse_command = "ped_reverse",
		ped_reverse_command_help = "Rende il PED più vicino in un veicolo inverso.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "ped_forwards",
		ped_forwards_command_help = "Fa in avanti il PED più vicino in un veicolo.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "local_entities_debug",
		local_entities_debug_command_help = "Attiva/disattiva Il debug per le entità locali.",
		local_entities_debug_command_substitutes = "lentities",

		no_ped_population_areas_debug_command = "no_ped_population_asreas_debug",
		no_ped_population_areas_debug_command_help = "Attiva o disattiva il debugger delle aree di popolazione senza pedoni.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "create_explosion",
		create_explosion_command_help = "Crea un'esplosione.",
		create_explosion_command_parameter_explosion_type = "tipo di esplosione",
		create_explosion_command_parameter_explosion_type_help = "Il tipo di esplosione.",
		create_explosion_command_parameter_damage_scale = "scala del danno",
		create_explosion_command_parameter_damage_scale_help = "La scala del danno.",
		create_explosion_command_parameter_camera_shake = "vibrazioni della videocamera",
		create_explosion_command_parameter_camera_shake_help = "La fotocamera si scuote.",
		create_explosion_command_substitutes = "exp, explode, explosion",

		-- global/functions
		confirm_yes_command = "yes",
		confirm_yes_command_help = "Conferma l'azione corrente.",
		confirm_yes_command_substitutes = "/confirm",

		confirm_no_command = "no",
		confirm_no_command_help = "Annulla l'azione corrente.",
		confirm_no_command_substitutes = "/cancel, /abort",

		-- global/states
		entity_states_command = "entity_states",
		entity_states_command_help = "Stampa tutti gli stati di una certa entità.",
		entity_states_command_parameter_network_id = "network id",
		entity_states_command_parameter_network_id_help = "Il Network id Dell'entità.",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "corner",
		corner_command_help = "Vendi droghe a una persona vicina. Il farmaco che vendi si basa sulla posizione in cui ti trovi.",
		corner_command_substitutes = "",

		corner_debug_command = "corner_debug",
		corner_debug_command_help = "Mostra tutte le aree di vendita.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "clear_uis",
		clear_uis_command_help = "Cancella tutte le focus sull'interfaccia utente.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "interface_focuses",
		interface_focuses_command_help = "Controlla quali interfacce sono impostate come focalizzate.",
		interface_focuses_command_substitutes = "/interface_focus, /focus, /focuses",

		--jobs/duty
		toggle_duty_status_command = "toggle_duty_status",
		toggle_duty_status_command_help = "Attiva/disattiva Il tuo stato in servizio.",
		toggle_duty_status_command_parameter_server_id = "server id",
		toggle_duty_status_command_parameter_server_id_help = "L'ID server di destinazione o vuoto se si desidera attivare il proprio stato.",
		toggle_duty_status_command_substitutes = "/duty_status, /duty",

		toggle_training_command = "toggle_training",
		toggle_training_command_help = "Attiva/disattiva il tuo stato di allenamento.",
		toggle_training_command_substitutes = "training",

		toggle_operator_status_command = "toggle_operator_status",
		toggle_operator_status_command_help = "Attiva/disattiva lo stato dell'operatore di emergenza.Con questo abilitato, riceverai la possibilità di accettare 911 chiamate.",
		toggle_operator_status_command_substitutes = "operator, toggle_operator, operator_status",

		-- jobs/police
		aim_assist_command = "aim_assist",
		aim_assist_command_help = "Attiva/disattiva L'obiettivo PD assist.(In memoria di Nathan Spencer.)",
		aim_assist_command_substitutes = "",

		undercover_command = "undercover",
		undercover_command_help = "Attiva/disattiva Che tu sia o meno sotto copertura.Questo nasconderà varie cose che di solito esporrebbero il tuo stato di polizia.",
		undercover_command_substitutes = "",

		active_robberies_command = "active_robberies",
		active_robberies_command_help = "Elenca tutti i negozi attualmente attivi (aperti), banche e gioielleria.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_impound",
		pd_impound_command_help = "Questo comanda sequestro un veicolo per giocatori per un certo periodo di tempo.",
		pd_impound_command_parameter_minutes = "minuti",
		pd_impound_command_parameter_minutes_help = "Per quanto tempo il veicolo dovrebbe essere sequestrato (tra 1 minuto e 12 ore).",
		pd_impound_command_substitutes = "",

		dispatch_command = "dispatch",
		dispatch_command_help = "Invia un messaggio nella spedizione PD.",
		dispatch_command_parameter_message = "messaggio",
		dispatch_command_parameter_message_help = "Il messaggio che desideri inviare.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "police_drive_mode",
		police_drive_mode_command_help = "Attiva o disattiva la modalità di guida del tuo veicolo.",
		police_drive_mode_command_parameter_mode = "modalità",
		police_drive_mode_command_parameter_mode_help = "La modalità che vuoi mettere. \"D\" per guida normale e \"S\" per sport (sport è predefinito).",
		police_drive_mode_command_substitutes = "drive_mode",

		-- jobs/state
		license_give_command = "license_give",
		license_give_command_help = "Dare una licenza.",
		license_give_command_parameter_character_id = "Id personaggio",
		license_give_command_parameter_character_id_help = "L'ID del personaggio che vuoi dare la licenza to.",
		license_give_command_parameter_license = "licenza",
		license_give_command_parameter_license_help = "La licenza che desideri dare.Le licenze disponibili sono `heli`, `fw`, `cfi`, `hw`, `hwh`, `perf`, `utility`, `commercial`, `management`, `military`, `special`, `hunting` and `fishing`.",
		license_give_command_substitutes = "give_license, add_license",

		license_remove_command = "license_remove",
		license_remove_command_help = "Rimuovere una licenza.",
		license_remove_command_parameter_character_id = "ID Personaggio",
		license_remove_command_parameter_character_id_help = "L'ID del personaggio da cui si desidera rimuovere la licenza.",
		license_remove_command_parameter_license = "licenza",
		license_remove_command_parameter_license_help = "La licenza che desideri rimuovere.Le licenze disponibili sono `heli`, `fw`, `cfi`, `hw`, `hwh`, `perf`, `management`, `military`, `special`, `hunting` and `fishing`.",
		license_remove_command_substitutes = "remove_license",

		license_list_command = "license_list",
		license_list_command_help = "Elenca tutte le licenze disponibili.",
		license_list_command_substitutes = "list_licenses",

		licenses_check_command = "licenses_check",
		licenses_check_command_help = "Cdiavolo le licenze di qualcuno.",
		licenses_check_command_parameter_character_id = "character id",
		licenses_check_command_parameter_character_id_help = "L'ID del personaggio per cui desideri controllare le licenze.",
		licenses_check_command_substitutes = "license_check, check_licenses, check_license",

		licenses_command = "licenses",
		licenses_command_help = "Ottieni le tue licenze.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "toggle_mechanic_messages",
		toggle_mechanic_messages_command_help = "Attiva o disattiva la ricezione dei messaggi del meccanico.",
		toggle_mechanic_messages_command_substitutes = "mechanic_messages",

		-- vehicles/boats
		toggle_anchor_command = "toggle_anchor",
		toggle_anchor_command_help = "Attiva/disattiva l'ancora di una barca vicina.",
		toggle_anchor_command_substitutes = "anchor",

		-- vehicles/damage
		vehicle_damage_debug_command = "vehicle_damage_debug",
		vehicle_damage_debug_command_help = "Esegue il debug dei valori di danno attuali dei veicoli.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "Imposta il livello del carburante del veicolo in cui ti trovi.",
		set_fuel_command_parameter_fuel_level = "Livello del carburante",
		set_fuel_command_parameter_fuel_level_help = "Il livello del carburante che desideri impostarlo.Lasciando questo vuoto selezionerà automaticamente `100`.",
		set_fuel_command_substitutes = "fuel",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "Attiva/disattiva Il debug del garage.",
		toggle_garage_debug_command_substitutes = "Garage_debug",

		-- vehicles/keys
		give_key_command = "give_key",
		give_key_command_help = "Dai una chiave di veicolo a una persona vicina.",
		give_key_command_parameter_server_id = "server id",
		give_key_command_parameter_server_id_help = "L'ID server del giocatore a cui desideri dare la chiave.Questo può essere lasciato vuoto (o a 0) per darlo alla persona più vicina.",
		give_key_command_substitutes = "givekey",

		hotwire_vehicle_command = "hotwire_vehicle",
		hotwire_vehicle_command_help = "Immediatamente hotwire il veicolo in cui ti trovi.",
		hotwire_vehicle_command_parameter_server_id = "server id",
		hotwire_vehicle_command_parameter_server_id_help = "Fa scassinare il veicolo all'altro player che è dentro.",
		hotwire_vehicle_command_substitutes = "hotwire",

		pickup_keys_command = "pickup_keys",
		pickup_keys_command_help = "Ti fa raccogliere le chiavi del veicolo più vicino.",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "wheel_offset",
		wheel_offset_command_help = "Modifica l'offset delle ruote di un veicolo.",
		wheel_offset_command_parameter_wheels = "front/back",
		wheel_offset_command_parameter_wheels_help = "Quali ruote vorresti modificare?",
		wheel_offset_command_parameter_value = "valore",
		wheel_offset_command_parameter_value_help = "L'importo che desideri che fosse modificato.Questo può essere ovunque da -0,8 a 0,8, 0 essendo inadempiente.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "wheel_rotation",
		wheel_rotation_command_help = "Modifica la rotazione delle ruote di un veicolo.",
		wheel_rotation_command_parameter_wheels = "front/back",
		wheel_rotation_command_parameter_wheels_help = "Quali ruote vorresti modificare?",
		wheel_rotation_command_parameter_value = "valore",
		wheel_rotation_command_parameter_value_help = "L'importo che desideri che fosse modificato.Questo può essere ovunque da -0,5 a 0,5, 0 essendo inadempiente.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "fake_plate",
		fake_plate_command_help = "Attiva/disattiva la piastra finta del veicolo attuale.",
		fake_plate_command_substitutes = "",

		plate_available_command = "plate_available",
		plate_available_command_help = "Controllare se un numero di targa è disponibile per il `/custom_plate` comando.",
		plate_available_command_parameter_plate_number = "targa",
		plate_available_command_parameter_plate_number_help = "Il numero di targa che desideri controllare.I numeri delle targhe possono essere lunghi fino a 8 caratteri e possono essere costituiti solo da lettere e numeri di capitale.",
		plate_available_command_substitutes = "",

		custom_plate_command = "custom_plate",
		custom_plate_command_help = "Imposta una piastra personalizzata per uno dei tuoi veicoli.",
		custom_plate_command_parameter_vehicle_id = "vehicle id",
		custom_plate_command_parameter_vehicle_id_help = "L'ID del veicolo che vorresti avere la piastra personalizzata.(Puoi trovare questo ID nel tuo garage)",
		custom_plate_command_parameter_plate_number = "targa",
		custom_plate_command_parameter_plate_number_help = "Il numero di targa che desideri impostare.I numeri delle targhe possono essere lunghi fino a 8 caratteri e possono essere costituiti solo da lettere e numeri di capitale.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "Attiva/disattiva la modalità IFR (mostra l'assistenza all'atterraggio per le piste vicine).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "mute_sirens",
		mute_sirens_command_help = "Disabilità il suono di tutti i clacson e le sirene.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "flip",
		flip_command_help = "Rotolare su un veicolo capovolto.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "toggle_roll_control",
		toggle_roll_control_command_help = "Attiva o disattiva il rollio e il controllo dell'aria.",
		toggle_roll_control_command_substitutes = "roll_control",

		enable_ls_customs_command = "enable_ls_customs",
		enable_ls_customs_command_help = "Attiva o disattiva il menu LS Customs.",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "toggle_gear_animation",
		toggle_gear_animation_command_help = "Attiva/disattiva l'audio e l'animazione del cambio di una macchina.",
		toggle_gear_animation_command_substitutes = "/gear_animation, /gear_sounds",

		turtle_vehicle_command = "turtle_vehicle",
		turtle_vehicle_command_help = "Ribalta il tuo veicolo sul suo tetto.",
		turtle_vehicle_command_substitutes = "turtle",

		door_command = "door",
		door_command_help = "Attiva/disattiva La porta di un veicolo.",
		door_command_parameter_door_id = "porta id (1-6)",
		door_command_parameter_door_id_help = "Quale porta del veicolo vorresti aprire?Questo parametro viene sovrascritto se sei un passeggero.Sei anche in grado di utilizzare questo comando al di fuori di un veicolo.",
		door_command_substitutes = "",

		window_command = "window",
		window_command_help = "Attiva/disattiva Il finestrino di un veicolo.",
		window_command_parameter_window_id = "finestra id (1-4)",
		window_command_parameter_window_id_help = "Quale finestra del veicolo vorresti aprire?Questo parametro viene sovrascritto se sei un passeggero.",
		window_command_substitutes = "",

		shuffle_command = "shuffle",
		shuffle_command_help = "Spostati su un altro sedile del veicolo.",
		shuffle_command_substitutes = "/shuff",

		seat_command = "seat",
		seat_command_help = "Passa a un altro sedile del veicolo.",
		seat_command_parameter_seat_id = "Sedile id (1-6)",
		seat_command_parameter_seat_id_help = "In quale posto vorresti provare a trasferirti?",
		seat_command_substitutes = "",

		engine_command = "engine",
		engine_command_help = "Attiva/disattiva motore di un veicolo.",
		engine_command_substitutes = "",

		mileage_command = "mileage",
		mileage_command_help = "Controlla il chilometraggio di un veicolo.",
		mileage_command_substitutes = "",

		drag_out_command = "drag_out",
		drag_out_command_help = "Trascina il giocatore morto più vicino fuori dal veicolo in cui si trova.",
		drag_out_command_substitutes = "",

		toggle_disabled_brakes_command = "toggle_disabled_brakes",
		toggle_disabled_brakes_command_help = "Disabilita o abilita i freni del veicolo più vicino.",
		toggle_disabled_brakes_command_substitutes = "disable_brakes",

		manual_toggle_command = "manual_toggle",
		manual_toggle_command_help = "Attiva/disattiva Che tu voglia controllare manualmente gli ingranaggi dei veicoli.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "speed_limiter",
		speed_limiter_command_parameter_speed = "Velocità",
		speed_limiter_command_parameter_speed_help = "Quale velocità vorresti utilizzare il limitatore di velocità?Puoi lasciare questo vuoto per ripristinarlo, il che lo restituirà a un comportamento normale.",
		speed_limiter_command_help = "Sostituire il comportamento normale del limitatore di velocità per preimpostare il limite di velocità.",
		speed_limiter_command_substitutes = "sl, cc, cruise_control",

		add_vehicle_command = "add_vehicle",
		add_vehicle_command_help = "Aggiungi un veicolo al garage di qualcuno.",
		add_vehicle_command_parameter_model = "modello",
		add_vehicle_command_parameter_model_help = "Il nome del modello o l'hash modello del veicolo che desideri aggiungere.",
		add_vehicle_command_parameter_server_id = "server id",
		add_vehicle_command_parameter_server_id_help = "L'ID server del giocatore a cui desideri dare un veicolo.Lasciando questo vuoto ti selezionerà automaticamente.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "toggle_vehicle_weapons",
		toggle_vehicle_weapons_command_help = "Attiva/disattiva È possibile utilizzare se le armi su un veicolo.",
		toggle_vehicle_weapons_command_parameter_server_id = "server id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "L'ID server del giocatore che desideri attivare le armi del veicolo.Lasciare questo vuoto si selezionerà automaticamente te stesso.",
		toggle_vehicle_weapons_command_substitutes = "vehicle_weapons",

		wheelie_command = "wheelie",
		wheelie_command_help = "Attiva o disattiva la modalità impennata. (Premi shift nel mentre sei nell'auto)",
		wheelie_command_parameter_power_level = "Livello di potenza",
		wheelie_command_parameter_power_level_help = "Quanta potenza applicare (predefinito è 2.5, abbassalo se l'impennata è troppo forte, aumentalo se è troppo debole).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_number",
		vin_number_command_help = "Restituisci il veicolo con il numero di telaio che ti è stato dato.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_lookup",
		vin_lookup_command_help = "Cerca il numero di telaio di un veicolo.",
		vin_lookup_command_parameter_vin_number = "Numero telaio",
		vin_lookup_command_parameter_vin_number_help = "Il numero di telaio che vuoi controllare.",
		vin_lookup_command_substitutes = "lookup_vin, lv",

		-- weapons/ammo
		fill_ammo_command = "fill_ammo",
		fill_ammo_command_help = "Riempie tutte le munizioni delle tue armi.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "crosshair",
		crosshair_command_help = "Attiva/disattiva Il mirino.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "aim_down_sight",
		aim_down_sight_command_help = "Mira automaticamente a una vista quando fai clic con il pulsante destro del mouse anche se sei in terza persona.",
		aim_down_sight_command_substitutes = "/ads",

		-- weapons/weapons
		check_ammo_command = "check_ammo",
		check_ammo_command_help = "Controlla quanta munizioni hai in totale per l'arma che stai attualmente tenendo.",
		check_ammo_command_substitutes = "ammo",

		toggle_airsoft_mode_command_command = "toggle_airsoft_mode",
		toggle_airsoft_mode_command_command_help = "Attiva o disattiva la modalità softair (a livello di server), che rende tutte le pistole a un danno incredibilmente basso.",
		toggle_airsoft_mode_command_command_substitutes = "airsoft_mode, airsoft",

		toggle_folded_stock_command_command = "toggle_folded_stock",
		toggle_folded_stock_command_command_help = "Attiva/disattiva il calcio ripiegato dell'arma che stai impugnando.",
		toggle_folded_stock_command_command_substitutes = "folded_stock, stock"
	},

	connections = {
		your_account_is_connecting = "Il tuo account si sta connettendo da una nuova sessione."
	},

	controls = {
		menu_control_up = "Menù su",
		menu_control_down = "Menù giù",
		menu_control_left = "Menù sinistra",
		menu_control_right = "Menù destra",

		menu_control_up_alternative = "Alternativa menu su",
		menu_control_down_alternative = "Alternativa menu giù",
		menu_control_left_alternative = "Alternativa menu sinistra",
		menu_control_right_alternative = "Alternativa menu destra"
	},

	core = {
		version = "Versione"
	},

	discord = {
		one_player = "1 player",
		multiple_players = "${playerAmount} players",
		join_with_fivem = "Unisciti a Fivem",
		discord_guild = "Community discord",
		richer_presence_on = "Richer presence e ora on.",
		richer_presence_off = "Richer presence e ora off."
	},

	emojis = {
		emoji_list = "${emojis}",
		refresh_emojis_no_permissions = "Il giocatore ha tentato di aggiornare gli emoji senza le autorizzazioni appropriate.",
		api_reported_no_updates = "L'API Discord non ha riportato aggiornamenti nell'elenco delle emoji.",
		emojis_added = "Aggiunto ${added} emoji(s).",
		emojis_removed = "Rimossi ${removed} emoji(s).",
		emojis_updated = "Aggiunnto ${added} emoji(s) e rimosso ${removed} emoji(s)."
	},

	errors = {
		script_location = "Locazione script",
		additional_information = "Informazione addizionale",
		error_report = "Report errore",
		send_report = "Manda Report",
		abort_report = "Annulla Report",
		input_placeholder = "Facci sapere cosa stavi facendo quando è stato attivato questo errore...",
		oh_no = "Oh no,",
		an_error_has_occurred = "c'è stato un errore!",
		error_occured_information = "Ciò indica che qualcosa non funziona correttamente o come previsto. Ti chiediamo gentilmente di aiutarci a risolvere questo problema fornendo alcuni dettagli aggiuntivi su cosa stavi facendo quando è stato attivato questo errore."
	},

	ping = {
		get_pings_missing_permissions = "Il giocatore ha tentato di ottenere ping ma non disponeva delle autorizzazioni necessarie per farlo.",
		getting_pings = "Ottenere ping da tutti i giocatori. Questo potrebbe richiedere alcuni secondi.",
		host_data = "${position}. ${location} - ${averagePing} Ping medio (based on ${totalPings} clients), 10% Low: ${averagePingLow}, 10% High: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Il debugger del profilo è stato abilitato. Controllare la console F8 per l'output.",
		profile_debug_disabled = "Il debugger del profilo è stato disabilitato."
	},

	queue = {
		joining_the_queue = "Unirsi alla coda...",
		timed_out_before_joining = "Hai scaduto prima di poter iniziare a unirsi al server.",
		server_reload_while_in_loading = "Il core del server viene riavviato e poiché non sei stato caricato correttamente, sei stato calciato automaticamente.",
		server_reload_while_in_queue = "Il core del server viene riavviato.Si prega di riconnettersi alla coda.",
		took_too_long_to_connect = "Hai impiegato troppo tempo per connetterti!",
		queue_position_with_priority = "🐌 Sei ${queueEntryId}/${queueLength} in coda con ${priorityName} priorità. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 Sei ${queueEntryId}/${queueLength} in coda. 🕐${queueTime}\nStanco di fare la fila?Supportaci per la priorità della coda!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nSei annoiato?Dai un'occhiata a questi streamer!\n${streamers}",
		server_is_starting = "In attesa dell'inizio del server...",
		cancelled_before_server_start = "La connessione è stata interrotta prima che il server avesse avviato.",
		kicked_from_queue = "Sei stato preso a calci dalla coda per motivo `${reason}`.",
		kicked_from_queue_no_reason = "Sei stato preso a calci dalla coda per nessun motivo specificato.",
		missing_slots_parameter = "Parametro `slot 'mancante.",
		invalid_slots_parameter = "Parametro `slot 'non valido",
		slots_parameter_out_of_range = "Il parametro `slot 'deve essere tra` 0` e `1025`.",
		slots_already_set_to = "Gli slot del server sono già impostati su `${slots}`.",
		slots_set_to = "Gli slot del server sono stati ora impostati `${slots}`.",

		invalid_license_identifier_parameter = "Mancante o non valido 'licenseIdentifier' parametro.",
		invalid_target_position_parameter = "Mancante o non valido 'targetPosition' parametro.",
		player_not_found_in_queue = "Il giocatore non è stato trovato nella coda.",
		player_queue_moved_success = "La posizione del giocatore nella coda è stata aggiornata.",
		player_queue_skipped_success = "Il giocatore ha saltato la coda con successo.",
		queue_is_not_ready = "La coda non è pronta, quindi non può essere saltata.",

		welcome_to = "Benvenuto a"
	},

	restart = {
		restart_30_minutes = "Il server si riavvierà in 30 minutes!",
		restart_15_minutes = "Il server si riavvierà in 15 minutes!",
		restart_10_minutes = "Il server si riavvierà in 10 minutes!",
		restart_5_minutes = "Il server si riavvierà in 5 minutes!",
		restart_3_minutes = "Il server si riavvierà in 3 minutes!",
		restart_2_minutes = "Il server si riavvierà in 2 minutes!",
		restart_1_minute = "Il server si riavvierà in 1 minute!",
		server_restarting = "Il server sta riavviando.Puoi ricongiungerti in pochi minuti.",
		executed_restart_command = "Eseguito il comando di riavvio.",
		already_executed_restart_command = "Il comando di riavvio è già stato eseguito."
	},

	routes = {
		route_not_found = "Route ${route} non trovato.",
		route_restricted = "Route ${route} è limitato.",
		internal_server_error = "Errore interno del server."
	},

	users = {
		playtime = "Tempo di gioco",
		player_playtime = "${playerName} (Position ${position})\nTotal Playtime: ${totalPlaytime}\nSession Playtime: ${sessionPlaytime}",
		leaderboard = "Leaderboard",
		your_position = "La tua posizione",
		logs_user_reject_connection_title = "Connessione rifiutata",
		logs_user_reject_connection_details = "Connessione rifiutata da ${consoleName} per (`${reason}`).",
		logs_user_connected_title = "User connesso",
		logs_user_connected_details = "${consoleName} Connesso al server.",
		logs_user_joined_title = "User Connesso",
		logs_user_joined_details = "${consoleName} si è connesso al server.",
		logs_user_dropped_title = "User disconnesso",
		logs_user_dropped_details = "${consoleName} si è disconnesso dopo aver giocato per ${playtime} causa: `${reason}`.",
		logs_character_loaded_title = "Personaggio caricato",
		logs_character_loaded_details = "${consoleName} Ha caricato il personaggio ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Personaggio non caricato",
		logs_character_unloaded_details = "${consoleName} non si è caricato il personaggio ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} non si è caricato il personaggio ${fullName} (${characterId}) causa `${reason}`.",
		logs_character_created_title = "Personaggio creato",
		logs_character_created_details = "${consoleName} ha creato il personaggio ${fullName} (${characterId}).",
		logs_character_deleted_title = "Personaggio cancellato",
		logs_character_deleted_details = "${consoleName} Ha cancellato il personaggio ${fullName} (${characterId}).",
		server_core_is_restarting = "Server restartato",
		you_timed_out = "Sei stato sospeso!",
		kicked_for_no_specified_reason = "Sei stato kickato per nessun motivo specificato.",
		kicked_player = "PLayer Kickato.",
		kicked_player_and_removed_reconnect_priority = "Player kickato e connessione_prioritaria rimossa.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Player kickato e rimossione della connessione_prioritaria fallita.",
		removed_player_from_queue = "Player rimosso dall'attesa.",
		player_not_found = "Player non trovato.",
		missing_license_identifier = "License_identifier non trovato`.",
		package = "Pacchetto",
		package_updated = "Il tuo pacchetto è stato aggiornato `${packageName}`.",
		package_updated_remaining_time = "Il tuo pacchetto è stato aggiornato `${packageName}`. Scadrà in ${remainingTime}.",
		package_expired = "Il tuo pacchetto è scaduto.",
		package_same = "Il tuo pacchetto è `${packageName}`.",
		package_same_remaining_time = "Il tuo pacchetto è `${packageName}`. Scadrà in ${remainingTime}.",
		no_package = "Non hai un pacchetto.",
		fetching_package_error = "Si è verificato un errore durante il tentativo di recuperare i dati del pacchetto.",
		check_playtime_not_staff = "Il giocatore ha tentato di controllare il tempo di gioco di qualcun altro, ma non aveva le autorizzazioni corrette per farlo.",
		reason_unknown = "Motivo sconosciuto.",

		unloaded_character = "Carattere scarico.",
		user_does_not_have_sent_character_loaded = "L'utente non ha il carattere inviato caricato.",
		user_has_no_character_loaded = "L'utente non ha alcun carattere caricato.",
		user_not_found = "L'utente inviato non è stato trovato sul server.",
		invalid_character_id = "Parametro ID carattere non valido inviato.",
		invalid_license_identifier = "Parametro Identificatore del vapore non valido inviato.",

		unload_character_not_staff = "Il giocatore ha tentato di scaricare il personaggio di un giocatore ma non erano personale.",

		unloaded_character_for_player_logs_title = "Carattere scaricato per il giocatore",
		unloaded_character_for_player_logs_details = "${consoleName} scaricata ${targetConsoleName}'s character (`${characterFullName}` - ${characterId}) con il motivo `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} unloaded ${targetConsoleName}'s character (`${characterFullName}` - ${characterId}) without any specified reason.",
		unloaded_character_self_logs_title = "Scaricata Character",
		unloaded_character_self_logs_details = "${consoleName} scaricato il proprio personaggio (`${characterFullName}` - ${characterId}) with the reason `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} scaricato il proprio personaggio (`${characterFullName}` - ${characterId}) without any specified reason.",

		unloaded_character_for_user = "Scaricata character ${characterFullName} (${characterId}) for ${consoleName}.",
		user_with_server_id_has_no_character_loaded = "L'utente con ID server `${serverId}` non ha un carattere caricato.",
		user_with_server_id_not_found = "L'utente con ID server `${serverId}` non è stato possibile trovare sul server.",

		custom_plate = "Targa personalizzata",
		custom_character_id = "ID personalizzato del personaggio",
		custom_phone_number = "Numero di telefono personalizzato",
		reskin = "Reskin",

		no_player_packages = "Non hai pacchetti giocatori.",
		player_packages = "Pacchetti del giocatore:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "Appreciated Tier",
		respected_tier = "Respected Tier",
		heroic_tier = "Heroic Tier",
		legendary_tier = "Legendary Tier",
		godlike_tier = "Godlike Tier"
	},

	-- game/*
	admin_menu = {
		menu_title = "Admin Menu",
		spectate_player = "Specta giocatore",
		teleport_player = "Teletrasportati dal player",
		teleport_player_here = "Teletrasporta il player da te",
		failed_teleport_to_player = "Teleport dal player fallito.",
		failed_teleport_player_here = "Teleport del player da te fallito.",
		invalid_target_server_id = "ID non disponibile.",
		invalid_destination_server_id = "ID Invalido.",
		invalid_source_server_id = "Sorgente ID non valida.",
		failed_teleport_player_to_player = "Impossibile teletrasportare un giocatore all'altro.",
		teleported_player_to_player = "Giocatore teletrasportato ad un altro giocatore.",

		teleport_player_missing_permissions = "Il giocatore ha tentato di teletrasportare un giocatore, ma non aveva le autorizzazioni corrette per farlo."
	},

	afk = {
		you_are_afk = "Sei Afk. Il tuo personaggio verrà kickato presto.",
		move_mouse = "Muovi il tuo mouse per non essere AFK.",
		you_have_been_unloaded_for_being_afk = "Sei stato AFK per troppo tempo, considera di andare alla selezione del tuo pg la prossima volta."
	},

	airdrops = {
		create_airdrop_missing_permissions = "Il giocatore ha tentato di creare un AirDrop ma non avevano le autorizzazioni richieste per farlo.",
		created_airdrop = "Ha creato un airdrop di tipo `${airdropType}` con un totale di ${itemAmount} item(s)."
	},

	airports = {
		airport = "Aereoporto",
		press_to_access_spawner = "Premi ~INPUT_CONTEXT~ per accedere allo spawner del veicolo.",
		no_spawner_licenses = "Non hai alcuna licenza per questo riproduttore di veicoli.",
		vehicle_lists = "Elenchi di veicoli",
		parked_vehicle = "Veicolo parcheggiato.",
		press_to_park_vehicle = "Premi ~INPUT_CONTEXT~ per parcheggiare il veicolo.",
		no_vehicle_to_park = "Non ci sono veicoli da parcheggiare.",
		park_vehicle = "Parcheggiare il veicolo",
		park_vehicle_outside = "Parcheggiare il veicolo all'esterno",
		close_menu = "Chiudi Menu",
		spawned_vehicle = "Veicolo generato.",
		spawner_on_timeout = "Il generatore di veicoli è in timeout. Per favore riprova.",
		spawn_area_not_clear = "L'area di spawn non è chiara.",
		return_button = "Ritorna",
		deposit = "$${amount} Deposito",
		no_deposit = "Nessun deposito",
		deposit_not_enough_money = "Non hai abbastanza soldi per pagare il deposito."
	},

	airstrike = {
		create_airstrike_missing_permissions = "Il giocatore ha tentato di creare un attacco aereo ma non disponeva delle autorizzazioni necessarie per farlo.",

		airstrike_success = "Attacco aereo creato con raggio `${radius}`.",
		airstrike_failed = "Impossibile creare un attacco aereo."
	},

	airsupport = {
		create_airsupport_missing_permissions = "Il giocatore ha tentato di chiamare il supporto aereo ma non aveva le autorizzazioni necessarie per farlo.",

		distance = "Distanza: ${distance}${unit}",
		time_to_impact = "ETI: ${timeToImpact}",

		out_of_range = "~r~OOR",

		km = "km",
		mi = "mi",

		airsupport_failed = "Impossibile chiamare il supporto aereo."
	},

	alcohol = {
		now_sober = "Ora sei di nuovo sobrio.",
		drunk_state_1 = "Sei leggermente ubriaco.",
		drunk_state_2 = "Sei ubriaco.",
		drunk_state_3 = "Sei molto ubriaco.",
		drunk_state_4 = "Sei pericolosamente ubriaco."
	},

	alerts = {
		close = "Chiudi",

		alert_title = "Alert",

		invalid_server_id = "ID server non valido.",
		missing_content = "Contenuto mancante.",

		show_alert_success = "Avviso mostrato con successo al giocatore.",
		show_alert_everyone_success = "Avviso mostrato con successo a tutti.",
		show_alert_failed = "Impossibile mostrare l'avviso al giocatore.",

		show_alert_missing_permissions = "Il giocatore ha tentato di mostrare un avviso a un altro giocatore, ma non disponeva delle autorizzazioni necessarie per farlo."
	},

	arcade = {
		use_arcade_machine = "Premi ~INPUT_CONTEXT~ Per utilizzare la macchina arcade.Il costo è $${cost}.",
		finished_arcade_logs_title = "Arcade finito",
		finished_arcade_logs_details = "${consoleName} Finito una partita arcade con un punteggio di `${score}`."
	},

	archives = {
		press_to_access_archives = "Premi ~INPUT_CONTEXT~ per accedere agli archivi.",
		archives_title = "Archivi",
		no_archives = "Non ci sono archivi qui.",
		close_menu = "Chiudi menu",
		archive_label = "Caso N°. ${case}",

		failed_get_archives = "Non è riuscito a ottenere archivi.",
		failed_not_on_duty = "Non sei in servizio.",

		archive_created = "Archivio creato correttamente con il caso no. ${case}.",
		invalid_case_number = "Numero caso non valido (numero intero tra 1 e 99999).",
		not_near_archive = "Non sei vicino a un archivio.",
		failed_create_archive = "Impossibile creare archivio.",
		archive_already_exists = "Il numero del caso esiste già in questo archivio.",
		archive_destroyed = "Archivio distrutto con successo con il caso no. ${case}.",
		archive_maximum_case_count = "Non è possibile creare nuovi casi.",
		failed_destroy_archive = "Non è riuscito a distruggere l'archivio.",
		destroy_not_empty = "Puoi solo distruggere gli archivi vuoti.",

		create_archive_logs_title = "Archivio creato",
		create_archive_logs_details = "${consoleName} ha creato un caso in `${archiveName}` Archivio con il numero del caso `${caseNumber}`.",
		destroy_archive_logs_title = "Archive Distrutto",
		destroy_archive_logs_details = "${consoleName} distrutto un caso nel `${archiveName}` Archivio con il numero del caso `${caseNumber}`."
	},

	arena = {
		player_died = "${name} è morto.",
		player_killed = "${name} è stato ucciso da ${killerName} per ${deathCause} da una distanza di ${distance}m.", -- NOTE: this is not even M I think
		hud_info = "Importo del giocatore: ${playerAmount}\n\nDeaths: ${deaths}\nKills: ${kills}",
		press_to_access_menu = "Premi ~INPUT_INTERACTION_MENU~ per accedere al menù arena.",
		this_command_is_only_for_arena = "Questo comando è solo per l'arena.",
		stand_still_to_respawn = "Resta fermo per 5 secondi per rigenerarti.",
		respawn_cancelled = "Il rigenero è stato annullato perché ti sei mosso.",
		arena_suicide_reason = "Suicidato",
		arena = "Arena",
		ordered_airdrop = "Airdrop ordinato",

		store = "Negozio",
		team = "Team",
		leaderboard = "Classifica",
		search = "Cerca",
		add_to_cart = "Aggiungi al carrello",
		unlocks_at_level = "Sblocca al livello ${level}",
		show_vehicles = "Mostra veicoli",
		hide_vehicles = "Nascondi veicoli",
		balance = "Bilancio: $${balance}",
		shopping_cart = "${items} Oggetti ($${cost})",
		buy_now = "Compra ora",
		call_airdrop = "Chiama un Airdrop",
		empty = "Vuoto",
		clear_cart = "Pulisci carrello",
		can_not_afford = "Non pui permettertelo",
		brokie_lol = "Brokie lol",
		confirmation_exit_arena = "Sei sicuro di voler uscire dall'arena?",
		confirmation_buy_now = "Sei sicuro di voler comprare ${label} per $${cost}?",
		yes = "Yes",
		no = "No",
		empty_slot = "Slot vuoto",
		team_name = "Nome Team",
		level = "Livello",
		arena = "Arena",
		battle_royale = "Battle Royale",
		arena_gun_game = "Arena Gun Game",
		lottery = "Lotteria",
		daily_tasks = "Incarichi giornalieri",
		categories = "Categorie",
		refresh = "Aggiorna",
		refreshing = "Aggiornando...",
		not_available = "N/A",

		kill = "Uccisione",
		headshot = "Headshot",
		killstreak = "Killstreak",
		assist = "Assist",

		level = "Livello",
		position = "Posizione",
		name = "Nome",
		kills = "Uccisioni",
		deaths = "Morti",
		kd = "K/D",
		hits = "Colpi",
		hits_headshots = "HS",
		headshot_ratio = "HS Ratio",
		damage_dealt = "Danno inflitto",
		damage_taken = "Danno subito",
		matches_played = "Partite",
		wins = "Vittorie",
		win_ratio = "Ratio vincite",
		xp = "XP",
		money_won = "Soldi vinti",
		average_percentage = "Percentuale media",
		streak = "Striscia"
	},

	atms = {
		withdraw = "Preleva",
		deposit = "Deposita",
		balance = "Conto",
		transfer = "Transferisci",
		back = "Indietro",

		amount = "Importo",
		target = "Target",

		failed_deposit = "Impossibile depositare denaro",
		failed_withdraw = "Impossibile prelevare denaro",
		failed_transfer = "Impossibile trasferire denaro",

		processing = "In processo...",
		counting_bills = "Contando le fatture...",

		something_went_wrong = "Qualcosa è andato storto.",
		error_not_online = "Il tuo obiettivo non è disponibile.",
		error_not_enough_money = "Non hai abbastanza soldi.",
		deposit_amount_big = "I depositi ATM sono limitati a $ 4.000.",
		withdraw_amount_big = "I prelievi ATM sono limitati a $ 6.000.",

		retrieving_card = "Ritirando carta",
		atm_damaged = "Questo ATM è daneggiato",

		press_to_use = "Premi ~g~${InteractionKey} ~w~per usare l'ATM",
		press_to_interact_bank = "Premi ~g~${InteractionKey} ~w~per interagire con la banca",

		deposit_log_bank_title = "Deposito banca",
		deposit_log_atm_title = "Deposita ATM",
		deposit_log = "${consoleName} Depositato $${amount}.",

		withdraw_log_bank_title = "Prelieva banca",
		withdraw_log_atm_title = "Prelieva ATM",
		withdraw_log = "${consoleName} Prelevato $${amount}.",

		transfer_log_title = "Trasferisci dalla banca",
		transfer_log = "${consoleName} (#${characterId}) trasferito $${amount} a ${targetConsoleName} (#${targetCharacterId})."
	},

	attachments = {
		cancel_attachments = "Annulla",
		finish_attachments = "Applicare",

		modifying_attachments = "Modifica ${amount} Attachments",

		failed_apply = "Impossibile applicare attachments.",
		no_item = "L'arma non è più nel tuo inventario.",
		no_attachment = "Non hai il richiesto attachment.",
		no_paint = "Non hai alcuna vernice.",
		success = "Applicato con successo attachments.",

		not_available = "Non hai questo attachment nel tuo inventario.",

		attachment_label_suppressor = "Silenziatore",
		attachment_label_flashlight = "Torcia",
		attachment_label_extended_clip = "Caricatore esteso",
		attachment_label_extended_pistol_clip = "Caricatore esteso per pistola",
		attachment_label_extended_smg_clip = "Caricatore esteso per SMG",
		attachment_label_extended_shotgun_clip = "Caricatore esteso per Shotgun",
		attachment_label_luxury = "Finitura di lusso",
		attachment_label_incendiary = "Munizioni Incendiarie",
		attachment_label_tracer = "Proiettili traccianti",
		attachment_label_hollow_point = "Proiettili a punta cava",
		attachment_label_scope = "Mirino",
		attachment_label_grip = "Presa",
		attachment_label_drum = "Caricatore Tamburo",
		attachment_label_heavy_barrel = "Canna pesante",
		attachment_label_armor_piercing = "Munizioi Armor perforanti",
		attachment_label_explosive = "Munizioni esplosive",
		attachment_label_sight = "Mirino Holographic",
		attachment_label_pistol_sight = "Mirino Pistola",
		attachment_label_fmj = "Proiettili di Full Metal Jacket",
		attachment_label_scope_nv = "Mirino Visore notturno",
		attachment_label_scope_thermal = "Thermal Mirino",

		attachment_label_luxury1 = "The Pimp",
		attachment_label_luxury2 = "The Ballas",
		attachment_label_luxury3 = "The Hustler",
		attachment_label_luxury4 = "The Rock",
		attachment_label_luxury5 = "The Hater",
		attachment_label_luxury6 = "The Lover",
		attachment_label_luxury7 = "The Player",
		attachment_label_luxury8 = "The King",
		attachment_label_luxury9 = "The Vagos",

		attachment_label_luxury_knife_1 = "Variante VIP",
		attachment_label_luxury_knife_2 = "Variante BodyGuard",

		attachment_label_stock_folded = "Stock piegato",
		attachment_label_stock_unfolded = "Magazzino aperto",

		attachment_label_skin_patriotic = "Skin patriottica",
		attachment_label_skin_brushstroke = "Skin penellata",
		attachment_label_skin_skull = "Skin teschio",
		attachment_label_skin_leopard = "Skin leopardo",
		attachment_label_skin_zebra = "Skin zebra",
		attachment_label_skin_geometric = "Skin geometrica",

		label_no_skin = "No Skin",

		no_tint = "No Tinta",

		tint_normal_0 = "Nero",
		tint_normal_1 = "Verde",
		tint_normal_2 = "Oro",
		tint_normal_3 = "Rosa",
		tint_normal_4 = "Armata",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "Arancione",
		tint_normal_7 = "Platino",

		tint_mk2_0 = "Nero classico",
		tint_mk2_1 = "Grigio classico",
		tint_mk2_2 = "Due-Toni classico",
		tint_mk2_3 = "Bianco classico",
		tint_mk2_4 = "Beige classico",
		tint_mk2_5 = "Verde classico",
		tint_mk2_6 = "Blue classico",
		tint_mk2_7 = "Terra classico",
		tint_mk2_8 = "Marrone e nero classico",
		tint_mk2_9 = "Rosso contrasto",
		tint_mk2_10 = "Blue contrasto",
		tint_mk2_11 = "Giallo contrasto",
		tint_mk2_12 = "Arancione contrasto",
		tint_mk2_13 = "Rosa intenso",
		tint_mk2_14 = "Viola e giallo intenso",
		tint_mk2_15 = "Arancione intenso",
		tint_mk2_16 = "Verde e viola intenso",
		tint_mk2_17 = "Caratteristica rosso intenso",
		tint_mk2_18 = "Caratteristica verde intenso",
		tint_mk2_19 = "Caratteristica celeste intenso",
		tint_mk2_20 = "Caratteristica giallo intenso",
		tint_mk2_21 = "Rosso e bianco intenso",
		tint_mk2_22 = "Blu e bianco intenso",
		tint_mk2_23 = "Oro metallico",
		tint_mk2_24 = "Platino mettalico",
		tint_mk2_25 = "Lilla e grigio metallico",
		tint_mk2_26 = "Lime e viola metallico",
		tint_mk2_27 = "Rosso metallico",
		tint_mk2_28 = "Verde metallico",
		tint_mk2_29 = "Blue metallico",
		tint_mk2_30 = "Bianco e aqua metallico",
		tint_mk2_31 = "Rosso e giallo metallico",

		tint_ray_0 = "Space Ranger",
		tint_ray_1 = "Viola",
		tint_ray_2 = "Verde",
		tint_ray_3 = "Arancione",
		tint_ray_4 = "Rosa",
		tint_ray_5 = "Oro",
		tint_ray_6 = "Platino",

		last_concat = "e",

		attachments_logs_title = "Attachments e Tints",
		attachments_logs_details = "${consoleName} modificato il loro `${weaponName}`: ${modifications}.",

		removed_attachments = "Distaccata ${removed}",
		added_attachments = "Aggiunto ${added}",
		tint_changed = "Cambiata tinta da `${fromTint}` a `${toTint}`"
	},

	audio = {
		audio_id = "Audio ${audioId}",
		illegal_sound_effect = "Tentativo di dire ad altri client di riprodurre un audio esterno.",
		url_invalid = "L'URL fornito non è valido. Deve essere caricato su una connessione sicura. (https://)",
		url_missing = "Aggiungi l'URL all'audio che stai tentando di riprodurre.",
		play_audio_no_permissions = "Il giocatore ha tentato di riprodurre un audio ma non disponeva delle autorizzazioni necessarie per farlo.",
		played_audio_for_self = "Audio riprodotto per te stesso.",
		played_audio_for_player = "Audio riprodotto per ${consoleName}.",
		played_audio_for_everyone = "Audio riprodotto per tutti.",
		played_audio_effect_for_everyone_title = "Effetto audio riprodotto per tutti",
		played_audio_effect_for_everyone_details = "${consoleName} ha riprodotto un effetto audio per tutti. L'effetto audio aveva l'URL `${url}` ed era impostato per suonare a livello di volume `${volume}`.",
		played_audio_effect_for_player_title = "Effetto audio riprodotto per il lettore",
		played_audio_effect_for_player_details = "${consoleName} riprodotto un effetto audio per ${targetConsoleName}. L'effetto audio aveva l'URL `${url}` ed era impostato per suonare a livello di volume `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "Premi ~INPUT_CONTEXT~ per prendere la palla."
	},

	banana_peels = {
		slipped_logs_title = "Scivolato sulla buccia di banana",
		slipped_logs_details = "${consoleName} scivolato su una buccia di banana mentre ${slipForce}.",

		slip_0 = "camminando",
		slip_1 = "correndo",
		slip_2 = "Scattando"
	},

	bandaids = {
		label = "${type} Cerotto",

		baby_yoda = "Baby-Yoda",
		batman = "Batman",
		care_bear = "Orsetti del cuore",
		hello_kitty = "Hello-Kitty",
		hotwheels = "Hot-Wheels",
		mc_queen = "Lightning-McQueen",
		minions = "Minions",
		pony = "My-Little-Pony",
		power_puff = "Power-Puff",
		spiderman = "Spiderman",
		star_wars = "Star-Wars",

		received_bandaid_logs_title = "Cerotto ricevuto",
		received_bandaid_logs_details = "${consoleName} ricevuto 1x ${bandaid} dopo un trasporto aereo."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Non è riuscito a attivare la battaglia Royale.",
		toggled_battle_royale_on = "Attivato Battle Royale on.",
		toggled_battle_royale_off = "Attivato Battle Royale off.",
		battle_royale_info = "Sei in fila per Battle Royale!\nattualmente ci sono ${battleRoyaleQueueLength} giocatori in coda.",
		toggle_battle_royale_missing_permissions = "Il giocatore ha tentato di attivare Battle Royale ma non avevano le autorizzazioni richieste per farlo.",
		start_battle_royale_missing_permissions = "Il giocatore ha tentato di iniziare una battaglia Royale ma non avevano le autorizzazioni richieste per farlo.",
		unable_to_start_battle_royale_not_active = "Impossibile avviare Battle Royale in quanto Battle Royale non è abilitato.",
		not_enough_players_in_queue = "Incapace di iniziare Battle Royale in quanto non ci sono abbastanza giocatori in coda.",
		zone_idling = "La zona è ora al minimo.",
		zone_advancing = "La zona ora sta avanzando.",
		player_died = "${name} è morto: ${remainingPlayers} residua.",
		player_killed = "${name} è stato ucciso da ${killerName} per motivo ${deathCause} da una distanza di ${distance}m: ${remainingPlayers} residua.", -- NOTE: this is not even M I think
		player_won = "${name} ha vinto!",
		your_team = "La tua squadra:",
		received_lobby_invite = "Hai ricevuto un invito alla lobby da ${serverId}. Fare `/br_join ${serverId}` per unirsi!",
		unable_to_invite_yourself = "Non sei in grado di invitarti.",
		unable_to_join_yourself = "Non sei in grado di unirti a te stesso.",
		player_already_invited = "Player con ID `${serverId}` è già stato invitato.",
		sent_player_invite = "Inviato invito al giocatore con ID `${serverId}`",
		joined_lobby = "Ti sei unito alla hall.",
		player_not_invited = "Non sei stato invitato a questa lobby.",
		you_are_not_in_a_lobby = "Non sei in una lobby.",
		left_lobby = "Hai lasciato la hall.",
		created_match = "Ha creato una partita con ${playerAmount} players.",
		created_match_no_vehicles = "Ha creato una partita senza veicoli con ${playerAmount} players.",
		zone_complete = "La zona è completa.",
		battle_royale_match_info = "Zona corrente: ${zoneId}/${zoneAmount}\nRemaining Time: ${remainingTime}s\nCurrently: ${currentlyLabel}\nRemaining Players: ${remainingPlayers}\nKills: ${kills}",
		idling = "Al minimo",
		advancing = "Avanzare",
		battle_royale = "Battle Royale",
		press_to_deploy_parachute = "Premi ~INPUT_PARACHUTE_DEPLOY~ per aprire il paracadute.",
		join_battle_royale_instance_missing_permissions = "Il giocatore ha tentato di unirsi a un'istanza di Battle Royale ma non aveva le autorizzazioni richieste per farlo.",
		no_match_found = "${consoleName} non è in alcuna partita.",
		joined_instance = "Si unì all'istanza di ${consoleName}.",
		leave_battle_royale_instance_missing_permissions = "Il giocatore ha tentato di lasciare un'istanza di Battle Royale ma non aveva le autorizzazioni richieste per farlo.",
		left_instance = "Istanza a sinistra.",
		failed_to_leave_instance = "Impossibile lasciare l'istanza perché non eri in uno.",
		already_in_match = "Impossibile partecipare all'istanza perché sei già in una partita.",
		lobby_is_full = "La hall che hai tentato di unirti è piena.",
		zone_center = "Zona Centrale",
		team_marker = "Team Marker",
		trophy_information_top = "${name} è il migliore!",
		trophy_information_bottom = "C'era un totale di ${playerAmount} giocatori nella partita e tu hai ucciso ${kills} di loro.",
		not_able_to_join_while_in_match = "Non puoi entrare in una lobby durante una partita."
	},

	bazaar = {
		access_bazaar = "Premi ~INPUT_CONTEXT~ per accedere a questo negozio.",

		bazaar_blip = "Mercato",

		no_items = "Non hai niente da vendere qui.",
		price_about = "Circa $${price}",

		sold_logs_title = "Vendita al Bazaar",
		sold_logs_details = "${consoleName} venduto ${amount}x `${itemName}` per $${price}.",

		sold_items = "Hai venduto ${amount}x ${label} per $${money}.",
		failed_sell_items = "Impossibile vendere gli articoli.",

		junk_collector = "Collezionista di spazzatura",
		tool_collector = "Collezionista di strumenti",
		waste_collector = "Raccoglitore di rifiuti",
		ammo_collector = "Raccoglitore di munizioni",

		close_menu = "Chiudi Menù"
	},

	beds = {
		no_nearby_available_bed_found = "Nessun letto vicino trovato.",
		press_to_leave_bed = "Premi ~INPUT_CONTEXT~ per lasciare il letto."
	},

	blackjack = {
		play_blackjack = "Premi ~INPUT_CONTEXT~ per giocare a blackjack.",
		play_blackjack_high_limit = "Premi ~INPUT_CONTEXT~ per giocare a blackjack ad alto limite."
	},

	blindfold = {
		blindfolding_player = "Mettere il sacchetto di carta sul giocatore",
		blindfolding_self = "Mettere il sacchetto di carta",
		hold_to_take_blindfold_off = "Tieni premuto ~INPUT_VEH_HEADLIGHT~ per togliere il sacchetto di carta.",
		hold_to_take_blindfold_off_holding = "Continua a tenere fuori il sacchetto di carta."
	},

	blips = {
		comedy_club = "Club della commedia",
		bean_machine = "Bean Machine",
		arcade_bar = "Arcade Bar",
		japanese_restaurant = "Ristorante giapponese",
		luxury_autos = "Luxury Autos",
		rockford_records = "Rockford Records",
		dispensary = "Farmacia",
		haunted_high_school = "Scuola superiore abbandonata",
		sushi_restaurant = "Ristorante di sushi",

		bank = "Banca",
		hospital = "Ospedale",
		bolingbroke = "Penitenziario di Bolingbroke",
		police_department = "Dipartimento di Polizia",
		motel = "Motel",
		tattoo_parlor = "Salone di tatuaggi",
		repair_shop = "Negozio di riparazioni",
		material_vendor = "Venditore di materiali",
		pdm = "Premium Deluxe Motorsport",
		ls_customs = "Los Santos Customs",
		jewelry_store = "Gioielleria Vangelico",
		pd_air_hq = "Police Air HQ",
		pd_sea_hq = "Police Sea HQ",
		ems_air_hq = "EMS Air HQ",
		ems_boat_hq = "EMS Boat HQ",
		ems_garage = "EMS Garage"
	},

	blockage = {
		restricted_area = "Questa è un'area limitata. Per favore si allontani!"
	},

	bombs = {
		not_in_plane = "Non sei su un aereo.",
		not_in_plane_anymore = "Non sei più su un aereo.",
		interaction_menu = "~INPUT_CONTEXT~ Fai cadere ${name} bomba, ~INPUT_VEH_HEADLIGHT~ cambia tipo.",
		too_low = "Sei troppo basso per far cadere le bombe.",

		you_are_not_in_a_vehicle = "Attualmente non stai guidando un veicolo.",
		ignition_bomb_on = "Ha attivato la bomba di accensione.",
		ignition_bomb_off = "Ha disattivato la bomba di accensione.",
		failed_ignition_bomb = "Impossibile attivare la bomba di accensione.",

		recharging_countermeasures = "Ricarica contromisure ${percentage}%",

		ignition_bomb_triggered_logs_title = "Bomba ad accensione",
		ignition_bomb_triggered_logs_details = "${consoleName} Accendi il motore in un veicolo che aveva una bomba attaccata alla sua accensione.",

		toggle_ignition_bomb_missing_permissions = "Il giocatore ha tentato di attivare una bomba di accensione ma non avevano le autorizzazioni richieste."
	},

	boomboxes = {
		boombox = "Boombox",
		play = "Play",
		pause = "Pause",
		skip_song = "Salta canzone",
		volume = "Volume",
		music = "Musica",

		store_boombox = "Conserva il Boombox nel tuo inventario",
		put_boombox_down = "Metti il Boombox per terra",
		use_boombox = "Usa il Boombox",
		hold_to_pick_boombox_up = "Tieni premuto per sollevare il Boombox",
		illegal_boombox_item_id = "Tentativo di utilizzare un oggetto boombox con un oggetto ID illegale.",
		logs_attempted_to_add_song_title = "Ha cercato di aggiungere una canzone",
		logs_attempted_to_add_song_details = "${consoleName} ha tentato di aggiungere un brano con l'URL del video `${url}` al boombox con l'ID `${boomboxId}`.",
		wipe_boomboxes_not_staff = "Il giocatore ha tentato di cancellare i boombox, ma non disponeva delle autorizzazioni corrette per farlo.",
		logs_wiped_all_boomboxes_title = "Tutti i boombox sono stati spazzati via",
		logs_wiped_all_boomboxes_details = "${consoleName} Tutti i boombox spazzati via.",
		logs_wiped_nearby_boomboxes_title = "Spazzati i boombox vicini",
		logs_wiped_nearby_boomboxes_details = "${consoleName} spazzato via tutti i boombox in un raggio di `${radius}`.",
		radius_invalid = "Un raggio di `${radius}` non è un valore valido.",
		wiped_all_boomboxes = "Spazzato via ${boomboxesWiped} boomboxes.",
		wiped_nearby_boomboxes = "Spazzato via ${boomboxesWiped} boomboxes con un raggio di `${radius}`.",
		failed_to_wipe_boomboxes = "Impossibile spazzare via i boombox.",
		no_boomboxes = "Non ci sono Boombox da spazzare via.",
		no_boomboxes_within_radius = "Non c'erano boombox da spazzare via nel raggio di `${radius}`."
	},

	boosting = {
		boosting_contracts = "Boosting Contracts",
		join_queue = "Unisciti alla coda",
		leave_queue = "Lascia la coda",

		transfer_crypt = "Trasferisci CRYPT",
		transfer_crypt_info = "Inserisci l'importo e l'ID del server del giocatore a cui desideri trasferire.",

		amount = "Ammonto",
		server_id = "Server ID",

		transfer = "Trasferisci",
		cancel = "Cancella",

		start_contract = "Comincia contratto",
		start_contract_info = "Sei sicuro di voler iniziare questo contratto?",

		yes = "Si",
		no = "No",

		transfer_contract = "Trasfericsci contratto",
		transfer_contract_info = "Inserisci l'ID del server della persona a cui desideri trasferire il contatto.",

		decline_contract = "Declina contratto",
		decline_contract_info = "Sei sicuro di voler declinare questo contratto?",

		cancel_contract = "Cancella Contratto",
		cancel_contract_info = "Sei sicuro di voler annullare questo contratto?",

		no_contracts = "Non hai contratti disponibili. Unisciti alla coda per prenderne un po'.",

		model = "Modello",
		plate = "Targa",
		buy_in = "Consenso",
		expires_in = "Scade in",

		start_contract_type = "Cosa vuoi fare??",
		start_contract_type_info = "Ti piacerebbe rubarla e consegnarla oppure far sì che diventi tua? Rubarla e farla diventare tua costa un supplemento di ${cost} CRYPT.",

		drop_off = "Ritiro",
		vin_scratch = "Veicolo tuo",

		start_contract = "Comincia Contratto",
		transfer_contract = "Trasferisci Contratto",
		decline_contract = "Declina Contratto",
		mark_pickup = "Contrassegna il ritiro",
		cancel_contract = "Cancella il Contratto",

		new_contract = "Hai un nuovo boosting contract. (Class: ${className})",
		started_contract = "Contratto cominciato.",
		failed_contract = "Contratto fallito.",
		completed_contract = "Contratto completato. Hai ricevuto ${payout} CRYPT.",
		completed_contract_vin_scratch = "Contratto completato. Il veicolo può trovato in garage.",
		marked_pickup = "Ritiro contrassegnato.",

		vehicle_tracker_is_being_hacked = "Il tracker del veicolo è stato Hackerato. Rimangono ${hacksRemaining} hack(s).",
		use_chip_to_hack_vehicle_tracker = "Usa un chip per hackerare il tracker. Rimangono ${hacksRemaining} hack(s).",
		vehicle_hacking_is_timed_out = "Devi aspettare un pochettino prima di hackerare ancora. Rimangono ${hacksRemaining} hack(s).",
		drop_the_vehicle_off = "Riconsegnare il veicolo nel punto contrassegnato.",
		drop_off = "Ritiro",
		exit_the_vehicle = "Esci dal veicolo e lascia l'area per completare la missione.",

		vehicle_is_being_tampered = "Un veicolo vicino ${locationLabel} sta venendo manomesso. Il modello è ${modelLabel} (class ${className}) e la targa è ${plate}.",
		vehicle_tamper = "Manomissione di un veicolo (${plate})",
		vehicle_tracker_alert = "Avviso di localizzazione del veicolo (${plate})",

		exit_the_vehicle_to_scratch = "Esci dal veicolo per far si che diventi tuo.",

		scratch = "Graffia il numero seriale.",
		press_to_scratch = "Premi ~g~E ~w~per graffiare il numero seriale dell'auto.",

		scratching_vehicle = "Graffiando il numero del veicolo",

		deleted_boosted_vehicle_logs_title = "Veicolo potenziato eliminato",
		deleted_boosted_vehicle_logs_details = "${consoleName} veicolo potenziato con ID ${vehicleId} è stato eliminato.",

		spawned_contract = "Generato con successo un contratto.",
		spawned_contract_for = "Generato con successo un contratto per ${displayName}.",

		spawn_contract_no_permissions = "Il giocatore ha tentato di generare un contratto di potenziamento senza le autorizzazioni appropriate.",

		already_max_vin_scratched_vehicles = "Hai già la quantità massima di veicoli graffiati VIN nel tuo garage.",
		contract_has_expired = "Questo contratto è scaduto.",
		you_already_have_a_contract_started = "Hai già un contratto avviato."
	},

	brochure = {
		welcome_to = "Benvenuto a",
		san_andreas = "San Andreas",

		getting_started = "Iniziare",
		getting_started_1 = "Sei appena arrivato all'aeroporto e probabilmente ti stai chiedendo dove andare da qui?Tutti i nuovi cittadini ricevono un'auto di avviamento gratuita.Potrebbe non essere il migliore, ma è tuo da mantenere.Puoi trovarlo nel parcheggio.",
		getting_started_2 = "Se non ti piace guidare puoi anche camminare, convincere un amico a venirti a prendere o chiamare un taxi usando il tuo telefono.Puoi accedere al tuo telefono flettendo il tuo \"P\" muscolo.",
		getting_started_3 = "La maggior parte dei veicoli ha tronchi che puoi mettere non solo oggetti ma anche altre persone. Puoi /carry qualcuno, poi cammina fino a un bagagliaio, aprilo (/door) e mettali dentro. Allo stesso modo in cui puoi anche farli tornare indietro.Se hai capovolto il tuo veicolo puoi /flip Di nuovo sulle sue ruote.",

		where_now = "Dove ora?",
		where_now_1 = "Ora che hai acquisito il tuo primo veicolo, puoi iniziare a esplorare la città.Dal momento che devi rimanere nutrito e idratato, un negozio di alimentari è un buon punto di partenza.Dentro puoi acquistare cibo e bevande.Così come bende, che ti aiuteranno a riprenderti dalle lesioni.",
		where_now_2 = "Una volta che hai fatto scorta di forniture, dovresti andare al tribunale e ritirare una carta dei cittadini.Questo fungerà da ID, patente di guida e patente di armi.",

		getting_a_job = "Ottenere un lavoro",
		getting_a_job_1 = "Come fai i soldi?Puoi iniziare cercando un lavoro.Puoi trovare elenchi di lavoro presso Life Invader.Puoi trovare la sua icona di valigetta rossa sulla mappa.Qui puoi trovare una selezione di lavori a cui puoi richiedere.",
		getting_a_job_2 = "Il lavoro di Trucker richiede di consegnare merci in varie località.Devi prima acquistare un camion dal quartier generale di Trucker per $2,000.",
		getting_a_job_3 = "Quando si iscrive il lavoro di consegna è possibile ritirare una consegna piena di pacchetti al quartier generale di consegna.Devi quindi consegnare i pacchetti in varie località della città.Puoi aprire il retro del furgone consegna camminando su di esso e aprendo il /door.",
		getting_a_job_4 = "Puoi anche diventare un collezionista di rifiuti.Al quartier generale del collettore di rifiuti puoi raccogliere un camion della spazzatura e iniziare a raccogliere la spazzatura.",
		getting_a_job_5 = "Una volta che ti sei iscritto a uno dei lavori, sarai in grado di vedere una varietà di marcatori sulla tua mappa.Un waypoint ti mostra dove andare per iniziare.",

		your_appearance = "Il tuo aspetto",
		your_appearance_1 = "Abbigliamento come pantaloni, scarpe, camicie e altro possono essere cambiati in qualsiasi negozio di abbigliamento, gratuitamente.La tua acconciatura, i peli del viso e il trucco possono essere cambiati in un negozio di barbiere.Puoi trovare sia i negozi di abbigliamento che i negozi di barbiere sulla mappa.",
		your_appearance_2 = "Una volta che sei volato per la prima volta non sarai più in grado di cambiare il tuo aspetto generale come il colore della pelle, le caratteristiche del viso, ecc..Se hai incasinato il tuo aspetto o hai finito troppo rapidamente puoi /segnalare e chiedere un reskin.",

		medical_care = "Medical Care",
		medical_care_1 = "Se ti fai male puoi andare in ospedale per il check-in e farti curare. Puoi trovare l'ospedale sulla mappa. Puoi anche usare bende o kit di pronto soccorso per curarti.",
		medical_care_2 = "Se riappari senza essere portato in ospedale o esci dal gioco mentre sei a terra, potresti perdere alcuni dei tuoi oggetti. Il riavvio del server conta come l'uscita dal gioco.",

		safety_hint = "Hint: Puoi togliere la tua arma dalla sicura premendo ALT e il pulsante centrale del mouse. Rimani al sicuro!",

		closing_sentence = "C'è molto altro da fare in città! Chiedi in giro e fatti degli amici ;)"
	},

	cache = {
		download_progress = "Progresso del Download:\n- Veicoli: ${vehiclesDone}/${vehiclesTotal}\n- Oggetti: ${objectsDone}/${objectsTotal}\n- Peds: ${pedsDone}/${pedsTotal}\n- Vestiti: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Il download lento è stato abilitato.",
		slow_download_disabled = "Il download lento è stato disabilitato."
	},

	capri_sun = {
		capri_sun_name = "Capri Sun (${flavor})"
	},

	cargo = {
		start_cargo_no_permissions = "Il player ha cercato di avviare la rapina cargo senza permessi admin dovuti.",
		end_cargo_no_permissions = "Il player ha cercato di disattivare la rapina cargo senza permessi admin dovuti.",
		cargo_already_active = "Il cargo è già in funzione.",
		started_cargo = "Il cargo è già cominciato.",
		cargo_not_active = "Il cargo non è attivo.",
		ended_cargo = "Il cargo è appena finito.",
		cargo_crate = "Cassa di carico",
		use_chip_to_hack_crate = "Usa ~g~Chip ~w~per hackerare la cassa.",
		crate_is_being_hacked = "La cassa è stata hackerata.",
		crate_will_unlock_in = "La cassa è stata sbloccata ~g~${time}~w~.",
		press_k_to_access = "Premi ~g~K ~w~ Per accedere."
	},

	casino = {
		set_casino_screen_id_not_staff = "Il giocatore ha tentato di impostare l'ID schermo del casinò, ma non aveva le autorizzazioni corrette per farlo.",
		successfully_set_screen_label = "Imposta correttamente le schermate sullo schermo con l'etichetta `${screenLabel}`.",
		successfully_queued_screen_label = "Fine con successo lo schermo con l'etichetta `${screenLabel}`.",
		failed_to_set_screen_label = "Impossibile impostare le schermate sullo schermo con l'etichetta `${screenLabel}`.",
		invalid_screen_label = "L'etichetta dello schermo `${screenLabel}` è invalido.",
		missing_screen_label = "Manca il `Etichetta dello schermo` parametro.",
		set_screen_label_already_set_to = "L'etichetta dello schermo è già impostata su `${screenLabel}`.",
		only_available_in_the_casino = "Puoi farlo solo mentre all'interno del casinò.",
		casino_blip = "Casino"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Ti stai avvicinando ai confini della mappa",
		out_of_bounds = "Sei fuori dai confini"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Continua a dirigerti ${direction} Per andare verso Cayo Perico.\n(${distanceToTeleport}m left)",
		keep_heading_in_direction_out = "Continua a dirigerti ${direction} Per andare verso Los Santos.\n(${distanceToTeleport}m left)",

		south = "Sud",
		south_east = "Sud-Est",
		east = "Est",
		north_east = "Nord-Est",
		north = "Nord",
		north_west = "Nord-Ovest",
		west = "Ovest",

		not_the_driver = "Devi essere il conducente del veicolo per volare a Cayo Perico.",
		not_a_cayo_vehicle = "Devi essere su una barca, un aereo o un elicottero per arrivare a Cayo Perico.",
		entering_cayo_perico_logs_title = "Entrando in Cayo perico",
		entering_cayo_perico_logs_details = "${consoleName} Sta entrando in Cayo Perico.",
		exiting_cayo_perico_logs_title = "Uscendo Cayo Perico",
		exiting_cayo_perico_logs_details = "${consoleName} Sta uscendo da Cayo perico.",
		entering_cayo_perico_with_passengers_logs_title = "Entrare in Cayo perico con i passeggeri",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} sta entrando in Cayo perico con ${passengersAmount} passeggeri.",
		exiting_cayo_perico_with_passengers_logs_title = "Uscendo Cayo Perico con i passeggeri",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} sta uscendo da Cayo perico con ${passengersAmount} passeggeri."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Reclamato calendario dell'avvento.",
		claimed_money = "${consoleName} claimato $${amount}.",
		claimed_item = "${consoleName} claimato `${itemLabel}`.",
		claimed_vehicle = "${consoleName} ha rivendicato un veicolo specializzato di Natale.",
		claimed_queue_priority = "${consoleName} ha richiesto una settimana di priorità della coda di Natale.",

		claimed_advent_calendar_bonus_title = "Bonus del calendario dell'avvento rivendicato",
		claimed_advent_calendar_bonus_details = "${consoleName} ha rivendicato il bonus del calendario dell'Avvento, che è un veicolo con il nome del modello `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Impossibile trovare l'identificatore del cinema.",

		screen_model_size = "Taglia: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Offset: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Rotazione: ${rotation}",
		screen_model_volume = "Volume: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Modello: ${modelName}",

		locked = "Bloccato",

		add_video_to_queue_title = "Aggiungi video in coda",
		add_video_to_queue_details = "${consoleName} Aggiunto un video alla coda in un cinema con la chiave video di `${videoType}:${videoId}`.",

		blacklisted_video = "Video nella lista nera con chiave `${videoKey}`.",
		failed_to_blacklist_video = "Impossibile al video nella lista nera con la chiave `${videoKey}`.",
		video_is_already_blacklisted = "Il video con la chiave `${videoKey}` è già nella lista nera.",

		blacklist_video_missing_permissions = "Il giocatore ha tentato di inserire nella blacklist un video ma non disponeva delle autorizzazioni richieste.",

		watching_movie = "Guardando ${title}",

		cinema = "Cinema",
		doppler_cinema = "Doppler Cinema",
		sandy_cinema = "Sanndy Cinema",
		tv = "TV",
		monitor = "Monitor",
		laptop = "Computer portatile",
		projector = "Proiettore",

		zoom = "Sposta la fotocamera in avanti e indietro",
		slow = "Lento",
		toggle_lights = "Attiva/disattiva luci",
		exit = "Uscita",

		-- NOTE: UI locales
		title = "Titolo",
		length = "Durata",
		date = "Data",
		author = "Autore",
		queue = "In coda",
		search_through_library = "Cerca nella libreria...",
		add_to_library = "Aggiungi video alla libreria (URL)..."
	},

	cinematic = {
		cinematic = "Cinematografica",
		black_bars_set_to = "Le barre nere cinematografiche sono state ora impostate ${blackBarsHeight}%."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Arma",
		disarm_claymore = "[${InteractionKey}] Disarma",

		disarming = "Disarmando",
		arming = "Armando"
	},

	clothing = {
		outfit_failed = "Impossibile applicare l'outfit.",
		missing_outfit = "Completo mancante.",
		missing_outfit_name = "Nome vestito mancante.",
		no_nearby_clothing_spot = "Nessun punto di abbigliamento nelle vicinanze.",
		trunk_closed = "Il bagagliaio è chiuso.",
		trunk_too_far = "Sei troppo lontano dal tronco.",
		moved_too_far_trunk = "Ti sei allontanato troppo dal bagagliaio.",
		invalid_job = "Non hai il lavoro richiesto per utilizzare questo punto di abbigliamento.",
		outfit_list = "Outfits",
		no_saved_outfits = "Non hai abiti salvati.",
		saved_outfit = "Outfit salvato `${name}` con successo.",
		replaced_outfit = "Outfit rimpiazzato `${name}` con successo.",
		failed_save_outfit_exists = "Salvataggio fallito, outfit `${name}` già esistente.",
		failed_save_outfit = "Salvataggio outfit fallito.",
		deleted_outfit = "Outfit cancellato `${name}` con successo.",
		failed_delete_outfit_doesnt_exists = "Cancellazione fallita, outfit `${name}` non esistente.",
		failed_delete_outfit = "Cancellazione outfit fallito.",

		invalid_server_id = "Server ID invalido o mancante.",
		player_model_missmatch = "Non puoi condividere questo outfit con questo player.",
		player_too_far = "Il giocatore è troppo lontano.",
		shared_outfit_too_far = "${displayName} Ha condiviso un outfit con te ma non sei vicino ad un negozio di vestiti/guardaroba.",
		outfit_shared = "Outfit condiviso con successo.",
		outfit_not_shared = "Outfit condiviso non riuscito.",
		shared_outfit = "${displayName} ha condiviso un outfit con te. Scrivi `sì` per accettare o `no` per declinare. (Scadrà in 30 secondi)",
		applied_shared_outfit = "Outfit condiviso appliccato con successo.",
		declined_shared_outfit = "Outfit condiviso rifiutato.",

		no_nearby_dead_player = "Nessun giocatore morto nelle vicinanze.",
		failed_to_steal_shoes = "Impossibile rubare le scarpe.",

		loading_model = "Caricando il modello del PED...",
		loading_spawn = "Spawnando il ped del player...",
		loading_set_data = "Impostando dati ped...",
		loading_tattoos = "Impostando tatuaggi...",
		loading_finalize = "Finalizzando..."
	},

	clothing_bag = {
		packed_outfit = "Vestito impachettato con successo nella borsa.",
		packed_outfit_failed = "Impossibile mettere il vestito nella borsa.",

		item_description_filled = "Ha l'outfit \"<i>${outfit}</i>\" impachettato.",
		item_description_empty = "Ha <b>no</b> l'outfit impachettato.",

		bag_empty = "Questo borsone è vuoto.",
		wrong_ped_model = "Sembrerebbe che questo outfit non ti stia.",
		cant_use_in_vehicle = "Non puoi usare il borsone con i vestiti nel veicolo.",
		cant_use_while_moving = "Non puoi usare il borsone per i vestiti nel mentre ti muovi.",

		opening_bag = "Aprendo il borsone"
	},

	clothing_menu = {
		component = "Componenti",
		texture = "Texture",
		palette = "Palette",

		clothing = "Vestiario",
		accessories = "Accessori",
		face = "Faccia",
		outfits = "Abiti",

		reset_zoom = "Reset zoom",
		zoom_level = "Zoom",

		variation = "Variante",
		color = "Colore",
		secondary_color = "Colore secondario",
		opacity = "Opacità",

		press_to_access = "Premi ~INPUT_CONTEXT~ per accedere al negozio dei vestiti.",
		press_no_freemode = "Questo Ped (modello) non può accedere al negozio di vestiti.",
		press_no_freemode_barber = "Questo Ped (modello) non può accedere al negozio di vestiti",
		press_to_access_barber = "Premi ~INPUT_CONTEXT~ per accedere dal barbiere.",
		press_to_change_outfit = "Premi ~INPUT_CONTEXT~ per cambiare il tuo outfit.",

		clothingstore = "Negozio di vestiti",
		barbershop = "Barbiere",

		changing_area = "Camerini per cambiarsi",

		switch_outfit = "Cambiati con questo outfit.",
		replace_outfit = "Rimpiazza questo outfit.",
		new_outfit = "Salva outfit",
		no_saved_outfits = "Nessun outfit salvato.",

		save_outfit_title = "Salva nuovo Outfit",
		save_outfit_label = "Nome Outfit:",
		save_outfit_button = "Salva",

		replace_outfit_title = "Rimpiazza Outfit",
		replace_outfit_description = "Sei sicuro di voler sostituire l'outfit denominato ${outfit}?",
		replace_outfit_button = "Rimpiazza",

		delete_outfit_title = "Elimina Outfit",
		delete_outfit_description = "Sei sicuro di voler eliminare l'outfit denominato ${outfit}?",
		delete_outfit_button = "Elimina",

		packing_outfit_title = "Impachettando l'outfit",
		packing_outfit_description = "Seleziona lo slot in cui si trova la borsa dei vestiti, nel cui vuoi mettere il vestito \"${outfit}\" dentro.",

		cancel_button = "Cancella",

		remove_button = "Rimuovi ${label}",
		menu_description = "Premi \"V\" per attivare o disattivare la fotocamera. Puoi trascinare i cursori con il mouse o utilizzare i tasti freccia. Puoi premere \"A\" e \"D\" per aggiustare la tua posizione.",

		failed_toggle_clothing_menu = "Impossibile attivare o disattivare il menu dell'abbigliamento.",
		clothing_menu_success = "Menu di abbigliamento aperto per ${consoleName}.",
		barber_menu_success = "Impossibile attivare o disattivare il menu del barbiere.",
		failed_toggle_barber_menu = "Menu del barbiere aperto per ${consoleName}.",
		invalid_server_id = "Server ID invalido.",

		clothing_menu_missing_permissions = "Il giocatore ha tentato di aprire il menu dell'abbigliamento per un altro giocatore ma non disponeva delle autorizzazioni richieste.",

		hats_and_helmets = "Cappelli/Elmetti",
		glasses = "Occhiali",
		earrings = "Orecchini",
		left_wrist = "Polso sinistro",
		right_wrist = "Polso destro",

		pants = "Pantaloni",
		shoes = "Scarpe",
		undershirt = "Maglietta",
		necklaces_and_ties = "Collane e cravatte",
		decals = "Decalcomanie",
		shirts = "Soprabito",
		arms = "Braccia",
		masks = "Maschere",
		armor = "Armatura/giubbotti",
		parachute_and_bag = "Paracaduti e borse",

		hair = "Capelli",

		blemishes = "Macchie/imperfezioni",
		facial_hair = "Barba",
		eyebrows = "Sopracciglia",
		ageing = "Invecchiamento",
		makeup = "Makeup",
		blush = "Blush/rossore",
		complexion = "Carnagione",
		sun_damage = "Danno solare",
		lipstick = "Rossetto/Lucida labbra",
		moles_and_freckles = "Talpe e lentiggini",
		chest_hair = "Peli del petto",
		body_blemishes = "Imperfezioni del corpo",
		add_body_blemish = "Aggiungi un'imperfezione del corpo"
	},

	command_socket = {
		connected = "Connesso alla presa di comando.",
		disconnected = "Disconnesso dalla presa di comando.",
		failed_reconnect = "Impossibile riconnettersi per comandare la presa."
	},

	crafting = {
		menu_title = "Craftando",
		close_menu = "Chiudi menù",

		smelt_glass = "Fondi bottiglie rotte",
		press_to_smelt_glass = "[${SeatEjectKey}] Fondi bottiglie rotte",
		smelting_glass = "Fondendo ${usedItems}",
		smelted_glass = "Fonduto ${usedItems} in vetro.",
		failed_smelt_glass = "Non si è riusciti a fondere il vetro.",

		craft_steel = "Crafta acciaio",
		press_to_craft_steel = "[${SeatEjectKey}] Crafta acciaio",
		crafting_steel = "Modellando ${usedItems}",
		crafted_steel = "Craftato ${usedItems} in acciaio.",
		failed_craft_steel = "Non si è riusciti a craftare l'acciaio.",

		scrapping_item = "Rottamazione ${usedItems}",
		scrapped_item = "Rottami metallici estratti da ${usedItems}.",

		scrap_knife = "Rottama coltello",
		press_to_scrap_knife = "[${SeatEjectKey}] Rottama coltello",
		failed_scrap_knife = "Impossibile rottamare i coltelli.",

		scrap_item = "Rottama oggetto",
		press_to_scrap_item = "[${SeatEjectKey}] Rottama l'oggetto",
		failed_scrap_item = "Impossibile rottamare gli oggetti.",

		cut_item = "Taglia patate",
		press_to_cut_item = "[${SeatEjectKey}] Taglia",
		cutting_item = "Tagliando 3 patat3",
		cut_item_done = "Patate tagliate.",
		failed_cut_item = "Non si è riusciti a tagliare le patate.",

		fry_item = "Friggi le patate",
		press_to_fry_item = "[${SeatEjectKey}] Friggi patate",
		frying_item = "Friggendo patate",
		fried_item = "Patate fritte.",
		failed_fry_item = "Non si è riusciti a friggere le patate.",

		grill_item = "Griglia l'hamburger crudo",
		press_to_grill_item = "[${SeatEjectKey}] Griglia l'hamburger crudo",
		grilling_item = "Grigliando l'hamburger",
		grilled_item = "Hamburger grigliato.",
		failed_grill_item = "Non si è riusciti a grigliare l'hamburger.",

		hamburger_recipe = "Hamburger",
		cheeseburger_recipe = "Cheeseburger",

		assemble_burger = "Assembla l'Hamburger",
		press_to_assemble_burger = "[${SeatEjectKey}] Assembla l'Hamburger",
		assembling_burger = "Assemblando l'Hamburger",
		assembled_burger = "Hamburger assemblato",
		failed_assemble_burger = "Non è riuscito ad assemblare l'Hamburger.",

		assembling_cheeseburger = "Assemblando il Cheeseburger",
		assembled_cheeseburger = "Cheeseburger assemblato",
		failed_assemble_cheeseburger = "Non si è riusciti ad assemblare il Cheeseburger.",

		mix_avocado_smoothie = "Mix Avocado Smoothie",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Mix Avocado Smoothie",
		mixing_avocado_smoothie = "Mixando lo Smoothie di Avocado",
		mixed_avocado_smoothie = "Smoothie di Avocado Mixato",
		failed_mix_avocado_smoothie = "Impossibile mixare lo smoothie di avocado.",

		fill_nitro_tank = "Riempi il serbatoio nitro",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Riempi il serbatoio nitro",
		filling_nitro_tank = "Riempiendo il serbatoio nitro",
		filled_nitro_tank = "Serbatoio nitro riempito",
		failed_fill_nitro_tank = "Impossibile riempire il serbatoio nitro.",

		craft_sheet_metal = "Crafta una Lamiera",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Crafta una Lamiera",
		crafting_sheet_metal = "Craftando una Lamiera",
		crafted_sheet_metal = "Lamiera craftata.",
		failed_craft_sheet_metal = "Impossibile creare lamiera.",

		craft_empty_tank = "Assembla un serbatoio vuoto",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Assembla un serbatoio vuoto",
		crafting_empty_tank = "Assemblando un serbatoio vuoto",
		crafted_empty_tank = "Serbatoio vuoto assemblato.",
		failed_craft_empty_tank = "Impossibile assemblare il serbatoio vuoto.",

		craft_valve = "Assembla Valvola",
		press_to_craft_valve = "[${SeatEjectKey}] Assembla Valvola",
		crafting_valve = "Assemblando Valvola",
		crafted_valve = "Valvola assemblata.",
		failed_craft_valve = "Non si è riusciti ad assemblare la valvola.",

		craft_nitro_tank = "Assembla il serbatoio nitro",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Assembla il serbatoio nitro",
		crafting_nitro_tank = "Assemblando il serbatoio nitro",
		crafted_nitro_tank = "Serbatoio di nitro assemblato.",
		failed_craft_nitro_tank = "Non si è riusciti ad assemblare il serbatoio nitro.",

		salvage_meth_table = "Tabella Meth di recupero",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Tabella Meth di recupero",
		salvaging_meth_table = "Recuperando la tabella di Meth",
		salvaged_meth_table = "Tabella Meth di recuperata.",
		failed_salvage_meth_table = "Non si è riusciti a salvare la tabella meth.",

		refill_vape = "Ricarica svapo",
		press_to_refill_vape = "[${SeatEjectKey}] Ricarica svapo",
		refilling_vape = "Ricaricando la svapo",
		refilled_vape = "Svapo ricaricata.",
		failed_refill_vape = "Non si è riusciti a riempire la svapo.",

		deconstructing_item = "Decostruire ${usedItems}",
		deconstructed_item = "Decostruito ${usedItems}.",

		deconstruct_pistol = "Smonta pistola",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Smonta Pistol",
		failed_deconstruct_pistol = "Non si è riusciti a smontare la pistola.",

		deconstruct_smg = "Smonta SMG",
		press_to_deconstruct_smg = "[${SeatEjectKey}] Smonta SMG",
		failed_deconstruct_smg = "Non si è riusciti a smontare l'SMG.",

		deconstruct_shotgun = "Smonta Shotgun",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Smonta Shotgun",
		failed_deconstruct_shotgun = "Non si è riusciti a smontare il Shotgun.",

		deconstruct_rifle = "Smonta Fucile D'assalto",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Smonta Fucile D'assalto",
		failed_deconstruct_rifle = "Non si è riusciti a Smontare il Fucile D'assalto.",

		extract_copper = "Estrai Rame",
		press_extract_copper = "[${SeatEjectKey}] Estrai Rame",
		extracting_copper = "Estraendo rame",
		extracted_copper = "Rame estratto.",
		failed_extract_copper = "Non si è riusciti a estrarre il rame.",

		processing_item = "Processando ${usedItems}",
		processed_item = "Processato ${usedItems}.",

		process_copper = "Processo di pepite di rame",
		press_process_copper = "[${SeatEjectKey}] Processo di pepite di rame",
		failed_process_copper = "Non si è riusciti a processare le pepite di rame.",

		process_rubber = "Processo gomma",
		press_process_rubber = "[${SeatEjectKey}] Processo gomma",
		failed_process_rubber = "Non si è riusciti a processare la gomma.",

		process_aluminium = "Processo aluminio",
		press_process_aluminium = "[${SeatEjectKey}] Processo aluminio",
		failed_process_aluminium = "Non si è riusciti a processare l'alluminio.",

		process_steel = "Processa acciaio",
		press_process_steel = "[${SeatEjectKey}] Processa acciaio",
		failed_process_steel = "Non si è riusciti a processare l'acciaio.",

		craft_lens = "Crafta lenti",
		press_craft_lens = "[${SeatEjectKey}] Crafta Lenti",
		crafting_lens = "Craftando Lens",
		crafted_lens = "Lenti craftate.",
		failed_craft_lens = "Non si è riusciti a craftare le lenti.",

		craft_sight = "Crafta il mirino Olografico",
		press_craft_sight = "[${SeatEjectKey}] Crafta il mirino Olografico",
		crafting_sight = "Craftando il mirino Olografico",
		crafted_sight = "Mirino Olografico craftato.",
		failed_craft_sight = "Non si è riusciti a craftare un mirino Olografico.",

		craft_pistol_sight = "Crafta mirino per pistola",
		press_craft_pistol_sight = "[${SeatEjectKey}] Crafta mirino per pistola",
		crafting_pistol_sight = "Craftando mirino per pistola",
		crafted_pistol_sight = "Mirino per pistola craftato.",
		failed_craft_pistol_sight = "Non si è riusciti a craftare il mirino della pistola.",

		craft_scope = "Crafta mirino (red hot)",
		press_craft_scope = "[${SeatEjectKey}] Crafta mirino (red hot)",
		crafting_scope = "Craftando mirino (red hot)",
		crafted_scope = "Mirino (red hot) craftato.",
		failed_craft_scope = "Non si è riusciti a craftare il mirino (red hot).",

		craft_grip = "Crafta presa arma (dell'arma)",
		press_craft_grip = "[${SeatEjectKey}] Crafta presa arma (dell'arma)",
		crafting_grip = "Craftando presa (dell'arma)",
		crafted_grip = "Presa (dell'arma) craftata.",
		failed_craft_grip = "Non si è riusciti a craftare la presa (dell'arma).",

		craft_extended_clip = "Crafta caricatore aumentato",
		press_craft_extended_clip = "[${SeatEjectKey}] Crafta caricatore aumentato",
		crafting_extended_clip = "Craftando caricatore aumentato",
		crafted_extended_clip = "Caricatore aumentato craftato.",
		failed_craft_extended_clip = "Non si è riusciti a craftare il caricatore aumentato.",

		craft_extended_smg_clip = "Crafta caricatore aumento SMG",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Crafta caricatore aumento SMG",
		crafting_extended_smg_clip = "Craftando caricatore aumento SMG",
		crafted_extended_smg_clip = "Caricatore aumento SMG craftato.",
		failed_craft_extended_smg_clip = "Non si è riusciti a craftare il caricatore aumento SMG.",

		craft_extended_shotgun_clip = "Crafta caricatore aumento Shotgun",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Crafta caricatore aumento Shotgun",
		crafting_extended_shotgun_clip = "Craftando caricatore aumento Shotgun",
		crafted_extended_shotgun_clip = "Caricatore aumento Shotgun craftato.",
		failed_craft_extended_shotgun_clip = "Non si è riusciti a craftare il caricatore aumento Shotgun.",

		craft_extended_pistol_clip = "Crafta caricatore aumento pistola",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Crafta caricatore aumento pistola",
		crafting_extended_pistol_clip = "Craftando caricatore aumento pistola",
		crafted_extended_pistol_clip = "Caricatore aumento pistola craftato.",
		failed_craft_extended_pistol_clip = "Non si è riusciti a craftare il caricatore aumento pistola.",

		craft_drum = "Crafta caricatore a tamburo",
		press_craft_drum = "[${SeatEjectKey}] Crafta caricatore a tamburo",
		crafting_drum = "Craftando caricatore a tamburo",
		crafted_drum = "Caricatore a tamburo craftato.",
		failed_craft_drum = "Non si è riusciti a craftare il caricatore a tamburo.",

		craft_suppressor = "Crafta silenziatore",
		press_craft_suppressor = "[${SeatEjectKey}] Crafta silenziatore",
		crafting_suppressor = "Craftando il silenziatore",
		crafted_suppressor = "Silenziatore craftato.",
		failed_craft_suppressor = "Non si è riusciti a craftare il silenziatore.",

		craft_flashlight = "Crafta torcia",
		press_craft_flashlight = "[${SeatEjectKey}] Crafta torcia",
		crafting_flashlight = "Craftando torcia",
		crafted_flashlight = "Torcia craftata.",
		failed_craft_flashlight = "Non si è riusciti a craftare la torcia.",

		mix_paint = "Mescola la vernice",
		press_mix_paint = "[${SeatEjectKey}] Mescola la vernice",
		mixing_paint = "Mescolando la vernice",
		mixed_paint = "Vernice mescolata.",
		failed_mix_paint = "Non si è riusciti a mescolare la vernice.",

		modify_knuckle = "Modifica il tirapugni di ottone",
		press_modify_knuckle = "[${SeatEjectKey}] Modifica il tirapugni di ottone",
		modifying_knuckle = "Modificando il tirapugni di ottone",
		modified_knuckle = "Tirapugni di ottone modificato.",
		failed_modify_knuckle = "Non si è riusciti a modificare il tirapugni di ottone.",

		craft_jammer = "Crafta Jammer",
		press_craft_jammer = "[${SeatEjectKey}] Crafta Jammer",
		crafting_jammer = "Craftando Jammer",
		crafted_jammer = "Jammer craftato.",
		failed_craft_jammer = "Non si è riusciti a craftare il jammer.",

		craft_advanced_repair_kit = "Crafta il kit di riparazione avanzato",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Crafta il kit di riparazione avanzato",
		crafting_advanced_repair_kit = "Craftando il kit di riparazione avanzato",
		crafted_advanced_repair_kit = "Kit di riparazione avanzato craftatp.",
		failed_craft_advanced_repair_kit = "Non si è riusciti a craftare il kit di riparazione avanzata.",

		pulverize_aluminium = "Polverizza alluminio",
		press_pulverize_aluminium = "[${SeatEjectKey}] Polverizza alluminio",
		pulverizing_aluminium = "Polverizzando alluminio",
		pulverized_aluminium = "Alluminio polverizzato.",
		failed_pulverize_aluminium = "Polverizzazione dell'alluminio non riuscita.",

		pulverize_steel = "Polverizza acciaio",
		press_pulverize_steel = "[${SeatEjectKey}] Polverizza acciaio",
		pulverizing_steel = "Polverizzando acciaio",
		pulverized_steel = "Acciaio polverizzato.",
		failed_pulverize_steel = "Polverizzazione dell'acciaio non riuscito.",

		mix_thermite = "Mescola la termite",
		press_mix_thermite = "[${SeatEjectKey}] Mescola la termite",
		mixing_thermite = "Mescolando la termite",
		mixed_thermite = "Termite mescolata.",
		failed_mix_thermite = "Non si è riusciti a mescolare la termite.",

		deconstruct_phone = "Smonta tlefono",
		press_deconstruct_phone = "[${SeatEjectKey}] Smonta tlefono",
		failed_deconstruct_phone = "Impossibile Smontare il tlefono.",

		deconstruct_radio = "Smonta radio",
		press_deconstruct_radio = "[${SeatEjectKey}] Smonta radio",
		failed_deconstruct_radio = "Impossibile Smontare la radio.",

		deconstruct_raspberry = "Smonta Raspberry",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Smonta Raspberry",
		failed_deconstruct_raspberry = "Non si è riusciti a Smontare il Raspberry.",

		deconstruct_chip = "Smonta Chip",
		press_deconstruct_chip = "[${SeatEjectKey}] Smonta Chip",
		failed_deconstruct_chip = "Impossibile smonstare il chip.",

		craft_device_scanner = "Crafta lo Scanner dispositivo",
		press_craft_device_scanner = "[${SeatEjectKey}] Crafta lo Scanner dispositivo",
		crafting_device_scanner = "Craftando lo Scanner dispositivo",
		crafted_device_scanner = "Scanner dispositivo craftato.",
		failed_craft_device_scanner = "Non si è riusciti a craftare lo scanner.",

		craft_decryption_key = "Crafta chiave per la decriptazione",
		press_craft_decryption_key = "[${SeatEjectKey}] Crafta chiave per la decriptazione",
		crafting_decryption_key = "Craftando la chiave per la decriptazione",
		crafted_decryption_key = "Chiave decriptante craftata.",
		failed_craft_decryption_key = "Non si è riusciti a craftare la chiave di decrittografica.",

		craft_tire_wall = "Crafta muro di pneumatici",
		press_craft_tire_wall = "[${SeatEjectKey}] Crafta muro di pneumatici",
		crafting_tire_wall = "Craftando il muro di pneumatici",
		crafted_tire_wall = "Muro di pneumatici craftato.",
		failed_craft_tire_wall = "Impossibile creare muro di pneumatici.",

		fix_tire_wall = "Aggiusta muro di pneumatici",
		press_fix_tire_wall = "[${SeatEjectKey}] Aggiusta muro di pneumatici",
		fixing_tire_wall = "Aggiustando muro di pneumatici",
		fixed_tire_wall = "Muro di pneumatici aggiustato.",
		failed_fix_tire_wall = "Impossibile correggere la parete di pneumatici.",

		saw_shotgun = "Fucile a canne mozze",
		press_saw_shotgun = "[${SeatEjectKey}] Fucile a canne mozze",
		sawing_shotgun = "Creando il fucile a canne mozze",
		sawed_shotgun = "Fucile a canne mozze creato.",
		failed_saw_shotgun = "Non si è riusciti a creare il Fucile a canne mozze.",

		bake_brownies = "Inforna Brownies",
		press_bake_brownies = "[${SeatEjectKey}] Inforna Brownies",
		baking_brownies = "Infornando Brownies",
		baked_brownies = "Brownies infornati.",
		failed_bake_brownies = "Non si è riusciti a infornare i brownies.",

		mix_brushstroke_paint = "Mescola Vernice pennellata",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Mescola Vernice pennellata",
		mixing_brushstroke_paint = "Mescolando la vernice pennellata",
		mixed_brushstroke_paint = "Vernice pennellata mescolata.",
		failed_mix_brushstroke_paint = "Non si è riusciti a mescolare la vernice pennellata.",

		mix_skull_paint = "Mescola Vernice cranio",
		press_mix_skull_paint = "[${SeatEjectKey}] Mescola Vernice cranio",
		mixing_skull_paint = "Mescolando Vernice cranio",
		mixed_skull_paint = "Vernice cranio mescolata.",
		failed_mix_skull_paint = "Non si è riusciti a mescolare la vernice cranio.",

		mix_leopard_paint = "Mescola vernice leopardata",
		press_mix_leopard_paint = "[${SeatEjectKey}] Mescola vernice leopardata",
		mixing_leopard_paint = "Mescolando vernice leopardata",
		mixed_leopard_paint = "Vernice leopardata mescolata.",
		failed_mix_leopard_paint = "Non si è riusciti a mescolare la vernice leopardata.",

		mix_zebra_paint = "Mescola vernice zebrata",
		press_mix_zebra_paint = "[${SeatEjectKey}] Mescola vernice zebrata",
		mixing_zebra_paint = "Mescolando vernice zebrata",
		mixed_zebra_paint = "Vernice zebrata mescolata.",
		failed_mix_zebra_paint = "Non si è riusciti a mescolare la vernice zebrata.",

		mix_geometric_paint = "Mescola vernice geometrica",
		press_mix_geometric_paint = "[${SeatEjectKey}] Mescola vernice geometrica",
		mixing_geometric_paint = "Mescolando vernice geometrica",
		mixed_geometric_paint = "Vernice geometrica mescolata.",
		failed_mix_geometric_paint = "Non si è riuscitit a mescolare la vernice geometrica.",

		mix_patriotic_paint = "Mescola vernice patriottica",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Mescola vernice patriottica",
		mixing_patriotic_paint = "Mescolando vernice patriottica",
		mixed_patriotic_paint = "Vernice patriottica mescolata.",
		failed_mix_patriotic_paint = "Non si è riusciti a mescolare la vernice patriottica.",

		craft_radio_decrypter = "Craft Radio Decryptor",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Craft Radio Decryptor",
		crafting_radio_decrypter = "Crafting Radio Decryptor",
		crafted_radio_decrypter = "Crafted radio decryptor.",
		failed_craft_radio_decrypter = "Failed to craft radio decryptor.",

		craft_grenade_shell = "Crafta il guscio della granata",
		press_craft_grenade_shell = "[${SeatEjectKey}] Crafta il guscio della granata",
		crafting_grenade_shell = "Craftando il guscio della granata",
		crafted_grenade_shell = "Guscio della granata craftata.",
		failed_craft_grenade_shell = "Ops, magari non sei riuscito a mettere bene gli elementi, fallimento nel craftare il guscio della granata.",

		craft_grenade_pin = "Crafta la sicura della granata",
		press_craft_grenade_pin = "[${SeatEjectKey}] Crafta la sicura della granata",
		crafting_grenade_pin = "Craftando la sicura della granata",
		crafted_grenade_pin = "Sicura della granata craftata.",
		failed_craft_grenade_pin = "Qualcosa è andato storto craftando la sicura della granata.",

		craft_gas_grenade = "Crafta la granata a gas.",
		press_craft_gas_grenade = "[${SeatEjectKey}] Crafta la granata a gas",
		crafting_gas_grenade = "Craftando la granata a gas",
		crafted_gas_grenade = "Granata a gas craftata.",
		failed_craft_gas_grenade = "Qualcosa è andato storto nel craftare la granata a gas.",

		break_apart_ring = "Rompi anello",
		press_break_apart_ring = "[${SeatEjectKey}] Rompi anello",
		breaking_ring = "Rompendo l'anello",
		broke_ring = "Anello rotto.",
		failed_break_ring = "Anello ancora integro.",

		no_required_items = "Non hai tutti gli strumenti richiesti.",

		debug_multi = "-Creazioni multiple-",

		used_crafting_station_title = "Stazione di crafting",
		used_crafting_station_details = "${consoleName} ha usato una stazione di crafting per creare ${amount}x ${itemName}."
	},

	crashes = {
		crash_failed = "Impossibile attivare l'arresto anomalo per ${consoleName}.",
		crash_success = "Attivato con successo l'arresto anomalo per ${consoleName}.",
		server_id_invalid = "ID invalido."
	},

	creation = {
		turn_right = "Gira a destra",
		turn_left = "Gira a sinistra"
	},

	creation_menu = {
		character_creation = "Creazione personaggio",
		new_character = "NUOVO PERSONAGGIO",

		select_a_model = "Seleziona modello.",

		heritage = "Eredità",
		heritage_description = "Seleziona i tuoi genitori.",
		mom = "Mamma",
		mom_description = "Seleziona la tua mamma.",
		dad = "Papà",
		dad_description = "Seleziona il tuo papà.",
		resemblance = "Somiglianza",
		resemblance_description = "Seleziona se i tuoi lineamenti sono maggiormente influenzati da tua madre o tuo padre.",
		skin_tone = "Tono della pelle",
		skin_tone_description = "Seleziona se il tono della tua pelle è maggiormente influenzato da tua madre o tuo padre.",
		divorced = "Divorziati",
		divorced_description = "Seleziona se i tuoi genitori sono divorziati.",

		["in"] = "dentro",
		out = "fuori",
		up = "su",
		down = "giù",
		brow = "di fronte",
		brow_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		squint = "Strabismo",
		wide = "Largo",
		eyes = "Occhi",
		eyes_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		narrow = "Stretto",
		wide = "Largo",
		nose = "Naso",
		nose_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		short = "Corto",
		long = "Lungo",
		crooked = "Storto",
		curved = "Curvato",
		nose_profile = "Profilo del naso",
		nose_profile_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		broken_left = "Rotto a sinistra",
		broken_right = "Rotto a destra",
		tip_up = "Punta in sù",
		tip_down = "Punta in giù",
		nose_tip = "Punta del naso",
		nose_tip_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		cheekbones = "Zigomi",
		cheekbones_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		gaunt = "Magro",
		puffed = "Paffuto",
		cheeks = "Guance",
		cheeks_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		thin = "Magro",
		fat = "Grasso",
		lips = "Labbra",
		lips_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		round = "Rotorndo",
		square = "Quadrato",
		jaw = "Mascella",
		jaw_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		chin_profile = "Profilo del mento",
		chin_profile_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		pointed = "A punta",
		rounded = "Arrotondato",
		bum = "Sporgente",
		chin_shape = "Forma del mento",
		chin_shape_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		thick = "Spesso",
		neck_thickness = "Spessore del collo",
		neck_thickness_description = "Apporta modifiche alle tue caratteristiche fisiche.",

		features = "Charatteristiche",
		appearance = "Aspetto",
		save_and_continue = "Salva e continua",
		components = "Componenti",
		props = "Oggetti",
		ambient_females = "Ambiente femminile",
		ambient_male = "Ambiente maschile",
		animals = "Animali",
		cutscene = "Missioni",
		gang_female = "Gang femminile",
		gang_male = "Gang maschile",
		multiplayer = "Multiplayer",
		scenario_female = "Scenario Femminile",
		scenario_male = "Scenario Maschile",
		story = "Storia",
		story_scenario_female = "Storia scenario Femminile",
		story_scenario_male = "Storia Scenario Maschile",
		models = "Modelli",

		features_description = "Seleziona per alterare i tuoi lineamenti facciali.",

		unknown_hair = "Capelli sconosciuti (${hairId})",
		unknown_eyebrow = "Sopraciglia sconosciuti (${eyebrowId})",
		unknown_facial_hair = "Barba sconosciuta (${facialHairId})",
		unknown_skin_blemish = "Imperfezione della pelle sconosciuta (${skinBlemishId})",
		unknown_skin_aging = "Invecchiamento cutaneo sconosciuto (${skinAgingId})",
		unknown_skin_complexion = "Carnagione della pelle sconosciuta (${skinComplexionId})",
		unknown_moles_and_freckles = "Talpe e lentiggini sconosciute (${molesAndFrecklesId})",
		unknown_skin_damage = "Danni cutanei sconosciuti (${skinDamageId})",
		unknown_eye_makeup = "Trucco occhi sconosciuto (${eyeMakeupId})",
		unknown_blusher = "Fard sconosciuto (${blusherId})",
		unknown_lipstick = "Rossetto sconosciuto (${lipstickId})",
		unknown_chest_hair = "Peli del petto sconosciuti (${chestHairId})",

		color = "Colore",
		opacity = "Opacità",

		hair = "Capelli",
		hair_description = "Apporta modifiche al tuo aspetto.",

		eyebrows = "Sopraciglia",
		eyebrows_description = "Apporta modifiche al tuo aspetto.",

		facial_hair = "Barba",
		facial_hair_description = "Apporta modifiche al tuo aspetto.",

		skin_blemishes = "Imperfezione della pelle",
		skin_blemishes_description = "Apporta modifiche al tuo aspetto.",

		skin_aging = "Invechiamento cutaneoe",
		skin_aging_description = "Apporta modifiche al tuo aspetto.",

		skin_complexion = "Carnagione",
		skin_complexion_description = "Apporta modifiche al tuo aspetto.",

		moles_and_freckles = "Talpe e lentigini",
		moles_and_freckles_description = "Apporta modifiche al tuo aspetto.",

		skin_damage = "Danno cutaneo",
		skin_damage_description = "Apporta modifiche al tuo aspetto.",

		eye_color = "Colore dell'occhio",
		eye_color_description = "Apporta modifiche al tuo aspetto.",

		eye_makeup = "Trucco occhi",
		eye_makeup_description = "Apporta modifiche al tuo aspetto.",

		blusher = "Fard",
		blusher_description = "Apporta modifiche al tuo aspetto.",

		lipstick = "Rossetto",
		lipstick_description = "Apporta modifiche al tuo aspetto.",

		chesthair = "Peli del petto",
		chesthair_description = "Apporta modifiche al tuo aspetto.",

		ready_to_start_playing = "Pronto ad iniziare a giocare?",
		no = "No",
		go_back = "Vai indietro.",
		yes = "Sì",
		you_will_not_be_able_to_return = "Non sarai in grado di ritornare indietro.",

		freemode = "Freemode",
		freemode_description = "Selezionare se si desidera utilizzare un modello freemode. I modelli Freemode sono altamente personalizzabili.",

		sex = "Sesso",
		sex_description = "Seleziona il sesso del tuo personaggio.",
		male = "Maschio",
		female = "Femmina",

		props_description = "Seleziona i tuoi oggetti di scena preferiti.",

		hat = "Cappello",
		glass = "Occhiale",
		ear = "Orecchino",
		watch = "Orologio",
		bracelet = "Braccialetto",

		appearance_description = "Seleziona per cambiare il tuo aspetto.",
		components_description = "Seleziona i tuoi componenti preferiti.",

		none = "Nessuno",

		texture = "Texture ${textureId}",
		drawable = "Disegnabile ${drawableId}",

		clean_shaven = "Rasatura pulita",

		face = "Faccia",
		mask = "Maschera",
		hair = "Capelli",
		torso = "Torso",
		leg = "Gamba",
		parachute_and_bag = "Paracadute / bag",
		shoes = "Scarpe",
		accessory = "Accessori",
		undershirt = "Maglietta",
		kevlar = "Kevlar",
		badge = "Distintivo",
		torso_two = "Torso 2"
	},

	crosshair = {
		copied_config = "Configurazione copiata negli appunti.",
		imported_config = "Configuarazione importata.",
		disabled_crosshair = "Mirino personalizzato disattivato.",

		invalid_url_title = "Imagine URL Invalida",
		invalid_url_description = "L'URL dell'immagine inserito non è valido. Deve essere un collegamento diretto all'immagine, non un collegamento a un sito web che contiene l'immagine. Deve iniziare con uno dei seguenti URL:",
		cancel_button = "Okay",

		center = "Centro",
		main = "Principale",
		outer = "Esterno",
		kill = "Uccisione rapida",

		enabled = "Abilitato",
		size = "Taglia",
		image = "Imagine",
		length = "Lunghezza",
		offset = "Scostamento",
		secondary_offset = "Scostamento secondario",
		rotation = "Rotazione",
		color = "Colore",
		duration = "Durata (ms)"
	},

	clip_saver = {
		start_recording = "Inizia a registrare",
		clip_save = "Salva clip",
		clip_discard = "Scarta Clip"
	},

	compass = {
		north = "N",
		north_east = "NE",
		east = "E",
		south_east = "SE",
		south = "S",
		south_West = "SW",
		west = "W",
		north_west = "NW"
	},

	courthouse = {
		press_to_use_gavel = "Premi ~INPUT_CONTEXT~ per usare il martelletto."
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] Attività giornaliere",
		daily_activities = "Attività giornaliere",
		resets_in = "Si resetta in ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Completa le altre attività per sbloccare...",
		remain = "${remain} Rimanente",
		remain_money = "$${remain} Rimanente",
		claimed = "Preso",
		claim = "Prendi",
		streak_reward = "Quando avrai raggiunto una streak di 7 o superiore, riceverai un'altro giro giornaliera alla ruota della fortuna gratuitamente.",

		reset_daily_activities_no_permissions = "Il giocatore ha tentato di reimpostare le proprie attività quotidiane senza le autorizzazioni appropriate.",
		reset_daily_activities = "Reimposta le attività giornaliere.",

		parachute_from_location = "Paracadutati da ${location}.",
		gamble_at_blackjack = "Gioca ${amount} volte al tavolo del blackjack.",
		bring_in_items = "Porta i seguenti oggetti.",
		kills_in_arena = "Fai ${amount} kill in arena.",
		headshot_kills_in_arena = "Fai ${amount} headshot kill in arena.",
		punch_locals = "Prendi a pugni ${amount}concittadini.",
		move_from_place_to_place = "Vai da ${from} a ${to} in ${time} secondi.",
		put_bets_in_jackpot = "Scommetti $${amount} al Jackpot.",
		win_bets_in_jackpot = "Vinci item che valgono $${amount} al Jackpot.",
		chop_vehicles = "Tagli ${amount} veicoli.",
		purchase_ammo = "Compra ${amount} munizioni.",
		collect_items_from_diving = "Colleziona ${amount}x ${itemLabel} dalla guida.",
		take_zombie_pills = "Prendi ${amount} Zombie Pills.",
		dig_up_a_treasure = "Scava un tesoro usando una mappa del tesoro.",
		refine_gems = "Perfeziona ${amount} gemme.",
		visit_location = "Visita ${location}.",
		visit_the_location = "Visita la ${location}."
	},

	dashcam = {
		video = "Video",
		time = "Tempo",
		date = "Data",

		unit_id = "Unità ID",
		unit_name = "Nome unità",
		unit_speed = "Unità veloce",

		state_seal_one = "Questo veicolo appartiene a",
		state_seal_two = "State of San Andreas",
		state_seal_three = "Qualsiasi uso non autorizzato è soggetto a pesanti sanzioni ai sensi dell'art 13 S.A. Pen. Codice 502(a).",

		kmh = "km/h",
		mph = "mp/h",

		set_unit_id_to = "Il tuo ID unità è stato ora impostato su ${unitId}.",
		reset_unit_id = "Il tuo ID unità è stato reimpostato.",
		failed_to_set_unit_id = "Impossibile impostare l'ID unità.",
		unit_id_already_set_to = "Il tuo ID unità è già impostato su ${unitId}.",
		unit_id_already_reset = "Il tuo ID unità è già stato reimpostato.",
		invalid_unit_id = "Unit-ID deve essere un numero intero compreso tra 1 e 999.",

		unit_id_vehicles_updated = "I tuoi veicoli di emergenza sono stati aggiornati per riflettere il tuo nuovo ID unità `${unitId}`."
	},

	debug = {
		ped = "Ped",
		vehicle = "Veicolo",
		object = "Oggetto",
		network_id = "Network Id",
		owned_by_us = "Di proprietà Nostra",
		owned_by = "Di propriètà di",
		one_state_set = "1° stato",
		many_states_set = "${count} Stato messo",
		no_states = "Nessun stato",
		entity_health = "Salute ${health}/${maxHealth}",
		owned_by_server = "Server",
		first_owned_short = "Primo proprietario: ${firstOwned}",
		network_id_side = "Network ID: ${networkId}",
		no_target = "Nessun target",
		invalid_radius_parameter = "Parametro `radius` non valido.",
		inject_code_not_developer = "Il giocatore ha tentato di iniettare il codice ma non erano uno sviluppatore.",
		inject_code_invalid_player = "Non ci sono giocatori con ID server `${serverId}`.",
		inject_code_success_for_everyone = "Codice iniettato con successo per tutti.",
		inject_code_success_for_player = "Codice iniettato correttamente per ${consoleName}.",
		inject_code_success = "Codice iniettato correttamente.",
		inject_code_target_user_not_found = "Utente target non trovato.",
		inject_code_invalid_text = "Testo non valido.",
		inject_code_invalid_input = "Inserimento non valido.",
		inject_code_no_permissions = "Nessuna autorizzazione.",
		inject_code_user_not_found = "Utente non trovato.",
		inject_code_invalid_url = "URL non valido.",
		inject_code_invalid_radius = "Raggio non valido.",
		game_pools = "Classifica di gioco:",
		ped_config_flags = "Flag di configurazione Ped:",
		ped_is = "Ped è:",
		vehicle_is = "Veicolo è:",
		native_calls = "Chiamate native: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "Velocità giocatore: ${playerSpeed}",
		player_ped = "Ped giocatore: ${playerPedId}",
		heading = "Andando verso: ${heading}",
		coords = "Coords: ${coords}",
		rotation = "Rotazione: ${rotation}",
		velocity = "Velocità: ${velocity}",
		ground_material = "Materiale per terra: ${material}",
		g_force = "G-Force: ${force}",
		debug_print_f8 = "Le informazioni di debug sono state stampate nella tua console F8.",
		no_vehicle_bone = "No \"${boneName}\" osso",

		distance = "Distanza: ${distance}m",
		distance_first = "Prima posizione memorizzata.",

		get_search_invalid = "Ricerca invalida (at least 2 characters).",

		disabled_ped_bone_debug = "Debug ped bone disabilitato.",

		mph = "mph",
		vehicle_speed = "SVelocità: ${speed}",
		vehicle_average = "Media: ${speed}",
		vehicle_top_speed = "Top-Speed: ${speed}",
		vehicle_acceleration = "Da 0 a 60: ${time}",
		vehicle_acceleration_120 = "Da 0 a 120: ${time}",
		vehicle_acceleration_150 = "Da 0 a 150: ${time}",
		vehicle_acceleration_force = "Launch Force: ${force}",

		invalid_network_id = "ID di rete non valido.",
		delete_entity_success = "Entità eliminata con successo con ID di rete ${networkId}.",
		delete_entity_failed = "Impossibile eliminare l'entità.",
		delete_entity_no_permissions = "Il giocatore ha tentato di eliminare un'entità senza l'autorizzazione adeguata.",

		move_entity_success = "Entità spostata correttamente con ID di rete ${networkId}.",
		move_entity_failed = "Impossibile spostare l'entità.",
		move_entity_no_permissions = "Il giocatore ha tentato di spostare un'entità senza il permesso appropriato.",

		fake_lag_updated = "Il falso contatore di ritardo è stato aggiornato a `${counter}`.",
		fake_lag_already_set_to = "Il falso contatore di ritardo è già impostato su `${counter}`.",
		fake_lag_enabled = "Il falso ritardo è stato abilitato con il contatore `${counter}`.",
		fake_lag_invalid_counter_value = "Il valore `${counter}` è un contatore non valido per il falso ritardo.",
		fake_lag_disabled = "Il falso ritardo è stato disabilitato.",
		fake_lag_not_enabled = "il falso ritardo non è stato abilitato.",

		weapon_name_missing = "Parametro del nome dell'arma mancante.",
		weapon_name_invalid = "`${weaponName}` non è un nome valido per un'arma.",
		model_name_missing = "Parametro nome modello mancante.",
		model_name_invalid = "`${modelName}` non è un nome valido per un'arma.",
		model_view_enabled = "Vista modello abilitata.",
		model_view_disabled = "Vista modello disabilitata.",
		invalid_component = "Componente invalida `${componentName}`.",

		animation_currently_playing = "Attualmente è in riproduzione un'animazione.",
		invalid_or_missing_animation_dict = "Dizionario di animazione non valido o mancante `${animationDict}`.",
		missing_animation_name = "Nome dell'animazione non valido o mancante `${animationName}`.",
		invalid_animation_flags = "Flag di animazione non validi.",
		animation_played = "Riproducendo `${animationDict}` `${animationName}` (flags: ${flags}).",
		no_flags = "N/A",

		invalid_coordinates = "Cordinate invalide.",
		added_coordinates_draw = "Cordinate aggiunte `x: ${x}, y: ${y}, z: ${z}` per disegnare la lista ID `${drawId}`.",
		no_coordinate_draws_to_destroy = "Non c'erano cordinate disegnate da distruggere.",
		destroyed_coordinate_draws = "Distrutte `${drawingCoordinatesAmount}` cordinate disegnate.",

		debug_damage_enabled = "Debug dei danni Attivato.",
		debug_damage_disabled = "Debug dei danni disabilitato.",

		enabled_network_debug = "Debug della rete di entità abilitato.",
		disabled_network_debug = "Debug della rete di entità Disabilitato.",
		failed_network_debug = "Impossibile abilitare il debug della rete dell'entità.",

		network_owner_subscription_no_permissions = "Ha cercato di sottoscrivere un'owner entity network senza permessi.",

		missing_ipl = "Parametro IPL mancante.",
		enabled_ipl = "Parametro IPL attivato con successo `${ipl}`.",
		disabled_ipl = "Parametro IPL disabilitato con successo `${ipl}`.",

		enabled_ipl_globally = "IPL attivato con successo ${ipl}` globally.",
		failed_enabled_ipl_globally = "Attivazione IPL mondiale non riuscito.",
		disabled_ipl_globally = "IPL disabilitato con successo `${ipl}` globally.",
		failed_disabled_ipl_globally = "Disabilitazione IPL mondiale non riuscito.",

		enabled_ipls_list = "IPL abilitato: ${list}.",
		no_ipls_enabled = "Nessun IPL abilitato.",

		missing_code = "Parametro (codice) mancate.",
		run_code_success = "Frammento di codice eseguito correttamente.",
		run_code_error = "La stringa di codice ha generato un errore.",

		searching_world = "Cercando nel mondo:\n${modelNames}",
		copied_clipboard = "Cordinate copiate negli appunti (clipboard).",

		saved_vehicle_model_lists_to_file = "Gli elenchi dei modelli di veicoli sono stati salvati in un file sul server.",

		network_debug_logs_title = "Attivato/Disattivato network debug",
		network_debug_logs_details_on = "${consoleName} ha Attivato il loro network debug.",
		network_debug_logs_details_off = "${consoleName} ha Disattivato il loro network debug."
	},

	debug_menu = {
		menu_title = "Debug Menu",

		timecycles = "Cicli temporali",
		weather = "Tempo",
		reset = "Reset",
		refresh_interior = "Refresh Interior"
	},

	dna_evidence = {
		taking_sample = "Prelevare il campione di DNA",
		already_taking_sample = "Stai già prendendo un campione di DNA di un giocatore.",
		sample_no_player = "Nessun giocatore nelle vicinanze di cui puoi prendere un campione di DNA.",
		sample_no_bags = "Non hai borse di prova.",
		dna_evidence_bag = "Prova del DNA",

		evidence_failed = "Non ha preso prove del DNA.",

		evidence_text = "Tipo di prova: prova del DNA\nDNA raccolto da ${fullName} #${characterId}\n\nInformazioni aggiuntive:\n • Timestamp del pickup: ${time}"
	},

	doors = {
		locked = "Bloccato",
		unlocked = "Sbloccato",
		locked_press_to_unlock = "[${InteractionKey}] Bloccato",
		unlocked_press_to_lock = "[${InteractionKey}] Sbloccato",
		locking = "Bloccaggio",
		unlocking = "Sblocco",
		jewelry_store_closed = "Il gioielleria è attualmente chiuso.Per favore ritorna più tardi.",
		bank_closed = "La banca è attualmente chiusa.Per favore ritorna più tardi.",
		store_closed = "Il negozio è attualmente chiuso.Per favore ritorna più tardi.",
		failed_to_sync_doors = "Impossibile sincronizzare le porte.Qualcosa molto probabilmente corrotto.Per favore riprova.",
		saved_doors_to_file = "Salvato `${amount}` porte a un file sul server.",
		no_nearby_doors = "Non ci sono porte vicine da salvare.",
		lockpicking_door = "Scassinando la serratura della porta",

		debug_doors_on = "Il debug della porta è girato on.",
		debug_doors_off = "Il debug della porta è girato off.",
		doors_no_job = "N/A"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Usa l'elevatore",
		elevator_title = "Ascensore",
		close_menu = "Chiudi menu",
		already_on_floor = "Sei già su questo piano.",

		no_elevator_nearby = "Non c'è nessun ascensore vicino.",
		elevator_enabled = "Ascensore abilitato con successo #${elevatorId}.",
		elevator_disabled = "Ascensore disabilitato con successo #${elevatorId}.",
		elevator_toggle_failed = "Impossibile attivare l'ascensore.",
		elevator_enabled_all = "Abilitazione riuscita di tutti gli ascensori.",

		out_of_service = "Fuori servizio",
		out_of_service_help = "Questo ascensore è momentaneamente fuori servizio.",

		current = "Attuale",
		up = "Sù",
		down = "Giù",

		floor_tunnel_entrance = "Ingresso del tunnel",
		floor_underground_tunnel = "Tunnel sotterraneo",

		floor_lounge = "Sala",

		floor_garage = "Garage",
		floor_lobby = "Lobby",
		floor_roof = "Tetto",
		floor_helipad = "EliPorto",

		floor_shop = "Negozio",

		floor_casino = "Casinò",
		floor_security = "Sicurezza",
		floor_loading_bay = "Piattaforma di carico",
		floor_vault = "Caveau",

		floor_second_floor = "Secondo piano",
		floor_icu = "ICU",
		floor_ground = "Primo piano",
		floor_surgery = "Chirurgia",

		floor_entrance = "Entrata",
		floor_server_room = "Stanza Server",

		floor_50 = "Piano 50",
		floor_49 = "Piano 49",
		floor_47 = "Piano 47",
		floor_basement = "Sotteraneo",

		floor_exclusive_dealership = "Concessionario esclusivo",
		floor_mayors_office = "Ufficio del Sindaco",
		floor_mechanic_shop = "Negozio del meccanico",

		floor_fourth_floor = "4th Piano",
		floor_third_floor = "3rd Piano",

		floor_obelisk = "Obelisco",
		floor_hangout = "Punto di ritrovo",
		floor_penthouse = "Attico",
		floor_theatre_office = "Ufficio del teatro",
		floor_psychiatrists_office = "Ufficio dello psichiatra",
		floor_nightclub_garage = "Garage del Nightclub",
		floor_submarine = "Sottomarino",

		floor_lower_penthouse = "Attico Inferiore",
		floor_middle_penthouse = "Attico Medio",
		floor_upper_penthouse = "Attico Superiore",

		floor_showroom = "Showroom",
		floor_office = "Ufficio",
		floor_doj_office = "Ufficio del Departimento Di Giustizia",

		floor_penthouse_top = "Attico (Piano più alto)",
		floor_penthouse_entrance = "Attico (Entrata)",

		floor_containment = "Stanza di contenimento",

		doj_office = "Ufficio del Departimento Di Giustizia"
	},

	emails = {
		title = "OP E-Mail",
		email_domain = "san-andreas.gov",

		app_title = "E-Mail",

		error_loading_emails = "Qualcosa è andato storto mentre cercava di caricare le tue e -mail.",

		new_email_notification = "~o~Nuova E-Mail",

		email_label = "E-Mail",
		password_label = "Parola d'ordine",
		set_password = "Impostare la password",
		inbox = "inbox",
		outbox = "Inviata",
		new_email = "Nuova email",

		loading = "Caricando...",
		failed_load_email = "Impossibile caricare il contenuto e -mail.",

		from_label = "Da",
		to_label = "Per",

		send_email = "Inviare",

		no_emails = "Nessuna E-mail.",
		to_email = "A ${email}",

		error_no_subject = "Oggetto e -mail mancante.",
		error_invalid_target = "Email target non valida.",
		error_subject_too_long = "Oggetto e -mail troppo a lungo.",
		error_body_too_long = "Email Body troppo a lungo.",
		error_body_missing = "Body email mancante.",
		error_failed_send = "Impossibile inviare posta.",
		error_password_empty = "La password non può essere vuota.",
		error_password_update_failed = "Impossibile aggiornare la password."
	},

	emote_items = {
		give_item = "[${InteractionKey}] Dai ${itemName}",
		received_item = "${firstName} Ti ha dato ${itemName}.",
		give_item_success = "Dato con successo ${itemName} al giocatore.",
		give_item_failed = "Impossibile dare ${itemName} al giocatore."
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] Acquistare ${label} per $${price}",

		confirm_purchase = "Conferma l'acquisto",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "Fa nulla, non lo voglio",
		accept_purchase = "Sì, voglio comprarlo",
		accept_purchase_info = "Sei sicuro di voler comprare questo veicolo? Questa azione non può essere cancellata.",

		purchased_vehicle = "Comprato a ${label} per $${price}.",
		insufficient_funds = "Fondi insufficienti.",
		area_not_clear = "L'area per lo spawn non è libera.",
		invalid_package = "Impegno del sostenitore errato.",
		something_went_wrong = "Qualcosa è andato storto.",

		failed_vehicle_spawn = "Non si è riusciti a creare il veicolo. Il veicolo sarà comunque nel tuo server.",

		next_rotation_in = "Prossima rotazione in: ${time}",

		exclusive_dealership_blip = "Exclusive Deluxe Motorsport",

		log_title = "Compravendita EDM",
		log_description = "Comprato `${label}` per $${price}."
	},

	failures = {
		engine_failure_chance = "Impostare la possibilità di guasto del motore a `${chance}`.",
		failure_chance_invalid = "La possibilità di guasto del motore deve essere tra 1 and 1500.",
		engine_failure_reset = "Ripristina la possibilità di guasto del motore per l'impostazione predefinita."
	},

	fake_ids = {
		press_to_purchase = "Premi ~INPUT_CONTEXT~ per comprare Fake-ID.",

		store_title = "Negozio di documenti falsi",

		female_id = "Falso documento d'identità femminile",
		male_id = "Falso documento d'identità Maschile",
		close_menu = "Chiudi menu",

		logs_purchased_title = "Acquistato Fake-ID",
		logs_purchased_details = "${consoleName} acquistato a ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "Qualcosa è andato storto.",
		failed_not_on_duty = "Devi essere in servizio per acquistare un Fake-ID.",
		failed_not_enough_money = "Non hai abbastanza soldi per acquistare un Fake-ID.",
		purchase_success = "Acquistato con successo a Fake-ID per $3,000."
	},

	fingerprint = {
		taking_fingerprint = "Prendendo l'impronta digitale",
		already_fingerprinting = "Stai già prendendo un'impronta digitale di un giocatore.",
		sample_no_player = "Nessun giocatore nelle vicinanze che puoi impronta digitale.",
		sample_no_bags = "Non hai borse di prova.",
		fingerprint_evidence = "impronta digitale",

		evidence_failed = "Non è riuscito a prendere l'impronta digitale.",

		evidence_text = "Tipo di prova: impronta digitale\nImpronta digitale di ${fullName} #${characterId}\n\nInformazioni aggiuntive:\n • Timestamp del pickup: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Lancia i fuochi d'artificio"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "Ha cercato di attivare/disattivate l'evento 'Flag Swaps' senza i giusti permessi.",

		toggled_flag_swap_on = "Ha attivato Flag Swap.",
		toggled_flag_swap_off = "Ha disattivato Flag Swap.",

		showing_flags = "Mostando le bandiere.",
		not_showing_flags = "Non stai più mostrando le bendiere.",

		flag_swap_leaderboard = "Flag Swap Leaderboard",
		ongoing = "In corso",
		not_ongoing = "Non in corso",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} bandiere",
		players_with_most_flags_will_show_here = "I giocatori con il maggior numero di bandiere verranno mostrati qui."
	},

	forcefields = {
		invalid_radius = "Raggio invalido (has to be between 1 and 200).",
		failed_create = "Impossibile creare il campo di forza.",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "ID Campo di forza invalido.",
		failed_destroy = "Non si è riusciti a distruggere il campo di forza.",

		create_forcefield_no_permissions = "Il Player ha cercato di creare un campo di forza senza i permessi richiesti.",
		destroy_forcefield_no_permissions = "Il Player ha cercato di distruggere un campo di forza senza i permessi richiesti."
	},

	fortnite = {
		add_building_no_permissions = "Il giocatore ha tentato di aggiungere un edificio Fortnite ma non disponeva delle autorizzazioni necessarie per farlo.",
		wipe_buildings_no_permissions = "Il giocatore ha tentato di aggiungere la cancellazione degli edifici Fortnite ma non disponeva delle autorizzazioni necessarie per farlo.",

		no_buildings_in_radius = "Non ci sono edifici nel raggio di ${radius}.",
		no_buildings = "Non ci sono edifici.",
		wiped_buildings_in_radius = "Spazzato via ${removedBuildings} tutte le costruzioni nel raggio di ${radius}.",
		wiped_buildings = "Spazzato via ${removedBuildings} costruzioni."
	},

	freecam = {
		enabled_freecam = "Abilitata freecam.",
		disabled_freecam = "Disabilitata freecam",
		freecam_failed = "Impossibile abilitare il freecam.Hai noclip o abilitato simile?",

		freecam_logs_title = "AttivatoFreecam",
		freecam_on_logs_details = "${consoleName} ha attivato il loro freecam on.",
		freecam_off_logs_details = "${consoleName} ha attivato il loro freecam off.",

		track_player_logs_title = "Tracciando",
		track_player_logs_details = "${consoleName} Imposta il loro obiettivo di tracciamento ${targetName} using the orbitcam.",

		freecam_no_permission = "Ha tentato di attivare il loro freecam senza autorizzazioni richieste.",
		track_player_no_permission = "Ha tentato di tracciare un giocatore usando il freecam senza autorizzazioni richieste.",

		freecam_inactive = "Attualmente non sei in freecam.",
		added_point = "Aggiunto punto della fotocamera all'indice ${index} (Transition: ${transition}ms).",
		disable_freecam = "Disabilita freecam per riprodurre i punti.",
		not_enough_points = "Hai bisogno di almeno 2 punti per giocare.",
		already_replaying = "Stai già riproducendo i punti della fotocamera.",
		cleared_points = "Cancellato tutti i punti della fotocamera.",
		replaced_point = "Sostituito il punto della fotocamera all'indice ${index} (Transition: ${transition}ms).",
		moved_to_point = "Spostato Freecam al punto della fotocamera ${index} (Transition: ${transition}ms).",
		invalid_point_index = "Indice del punto della fotocamera non valido."
	},

	frisk = {
		frisk_no_player = "Nessun giocatore nelle vicinanze che puoi perquisire.",
		already_frisking = "Stai già perquisendo un giocatore.",
		frisk_failed = "Impossibile perquisire il giocatore.",
		frisking = "perquisendo un Giocatore",

		frisk_category_0 = "Sembra non avere armi.",
		frisk_category_1 = "Sembra possibilmente avere un'arma.",
		frisk_category_2 = "Sembra avere un'arma.",
		frisk_category_3 = "Sembra avere sicuramente un'arma di grandi dimensioni.",
		frisk_category_4 = "Sicuramente ha una grande arma."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] Raccogli ${fruit}",
		picking_fruit = "Raccogliendo ${fruit}",

		shake_tree = "Premi ~INPUT_CONTEXT~ per scuotere l'albero.",
		shaking_tree = "Scuotendo l'albero",

		tree_klonk = "Qualcosa è caduto dall'albero e ti ha colpito la testa."
	},

	gas_masks = {
		gas_grenade = "Gas Grenade",
		in_gas_circle = "In un cerchio di gas!",
		not_in_gas_circle = "Non in un cerchio di gas.",
		gas_time_left = "Hai ${gasTime} Secondi a sinistra della maschera a gas.",
		hold_to_take_gas_mask_off = "Tieni premuto ~INPUT_VEH_HEADLIGHT~ per togliere la maschera a gas.",
		hold_to_take_gas_mask_off_holding = "Continua a tenerlo per togliere la maschera a gas."
	},

	gps = {
		altitude = "Altitudine",
		latitude = "Latitudine",
		longitude = "Longitudine",
		speed = "Velocità",

		distance = "Distanza",
		heading = "Verso",

		reset_target = "Resetta il GPS target.",
		set_gps_target = "Metti il GPS target su ${x}, ${y}.",
		gps_blip = "GPS Target",
		no_gps_item = "Non hai un GPS.",

		collar_no_target = "Questo collare non ha un telefono connesso.",
		collar_timeout = "Hai appena inviato un ping, aspetta un po' prima di inviarne un altro.",
		collar_sent = "Ping ${firstName} ${lastName} (${phoneNumber}).",

		mph = "mph",
		kph = "kph",
		ft = "ft",
		m = "m",
		km = "km",
		mi = "mi",
		deg = "deg"
	},

	gravity = {
		gravity_success_on = "A disattivazione della gravità per ${consoleName}.",
		gravity_success_off = "A disattivare la gravità per per ${consoleName}.",
		gravity_client_failed = "Impossibile attivare la gravità per ${consoleName}.",
		gravity_failed = "Qualcosa è andato storto mentre cercava di attivare la gravità.",
		invalid_server_id = "ID server non valido.",
		yourself = "te stesso"
	},

	gravity_gun = {
			name_override = "Arma gravitazionale",

			failed_item_spawn = "Non si è riusciti a spawnare l'arma gravitazionale."
		},

	grills = {
		campfire = "Falò",
		use_campfire = "[${InteractionKey}] Usa falò",
		grill = "Griglia",
		use_grill = "[${InteractionKey}] Usa griglia"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Inserisci coin",
		using_gumball_machine = "Inserimento coin",
		not_enough_money = "Non hai abbastanza soldi per comprare una gomma da masticare.",
		something_went_wrong = "Qualcosa è andato storto durante il tentativo di acquistare una gomma da masticare.",

		flavor = "Gomma da masticare (${flavor})"
	},

	gun_running = {
		insert_key = "inserendo chiave: ${key}",
		wrong_key = "Hai usato la chiave sbagliata.",
		decrypting = "Decriptando",
		guns_disabled = "Gun running è attualmente disabilitato.",
		high_level_cooldown = "Fallimento nel stabilire il link nei server dell'FBI, riprova fra un po'.",
		failed_start_run = "Inizio del gun run fallito.",
		hack_timeout = "Connessione al server fallito, unlucky bro, riprova.",

		drop_blip = "Container di armi",

		drill_container = "Premi ~INPUT_CONTEXT~ per usare il trapano per aprire il container.",

		drilling_container = "Perfornado il Container",
		failed_drill = "Impossibile perforare il Container.",
		drill_success = "Perforato con successo, aperto il Container e trovato 1x ${item}.",

		started_run_logs_title = "Corri e spara",
		started_run_logs_details = "${consoleName} ha iniziato l'hacking della corsa alle armi.",
		finished_run_logs_title = "Lancio della corsa delle armi",
		finished_run_logs_details = "${consoleName} forato il Container delle armi e ricevuto 1x ${item}."
	},

	gun_trader = {
		press_e_to_talk = "Premi ~INPUT_CONTEXT~ Per parlare con Jim.",
		trader_closed = "Lo shop di Jim è temporaneamente chiuso.",

		trader_locked = "Jim ha bisogno di alcune cose da te prima che apri il negozio.",
		unlock_trader = "Provedi l'item a Jim.",

		purchase = "Compra",
		out_of_stock = "Oggetto finito",

		failed_trader_closed = "Compravendita fallita, Jim's shop chiuso.",
		failed_no_stock = "Compravendita fallita, L'oggetto è finito.",
		failed_no_money = "Compravendita fallita, Non hai abbastanza contanti (cash).",
		failed_something_went_wrong = "Compravendita fallita, qualcosa è andato storto.",
		failed_trader_not_locked = "Sblocaggio fallito, Jim's shop è già sbloccato .",
		failed_no_item = "Sblocaggio fallito, Jim non ha bisogno di questo item.",
		failed_no_enough_items = "Sblocaggio fallito, non hai abbastanza pezzi dell'item.",

		bought_gun_logs_title = "Jim's negozio di armi",
		bought_gun_logs_details = "${consoleName} Comprato 1x ${itemName} per $${price} Da Jim.",

		trader_active = "Trader (aperto)",
		trader_inactive = "Trader (chiuso)",

		slogan_1 = "Riccorda la prima regola in uno scontro a fuoco...Avere un'arma da fuoco!",
		slogan_2 = "Le armi hanno solo 2 nemici: Sporcizia e politici",
		slogan_3 = "Quando sei dubbioso...Fallo velocemente!",
		slogan_4 = "Con un'arma in mano è meglio di un poliziotto con un telefono in mano.",

		copyright = "Copyright © 2009-2016 Jim's Gun Shop NC. All Rights Reserved."
	},

	hacking = {
		local_disk = "Local Disk (C:)",
		network = "Network",
		external_device = "Device esterno (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "Il mio computer",
		power_off = "Arresta il sistema",

		password_cracked = "Password Craccata!",
		brute_force_failed = "Forza bruta fallista, attento alla pula bro!",

		writing_data = "Sovrascrivendo data al buffer...",
		executing_code = "Codice malizioso in esecuzione...",
		memory_leak_detected = "Memory Leak detectato, Spegnimento..."
	},

	halloween = {
		is_in_school = "È a scuola: ${isInSchool}",
		yes = "Si",
		no = "No",
		press_to_hide_in_locker = "Premi ~INPUT_CONTEXT~ per nascondersi nell'armadietto.",
		locker_is_occupied = "L'armadietto è occupato.",
		press_to_exit_locker = "Premi ~INPUT_CONTEXT~ Per uscire dall'armadietto.",
		failed_to_start_escape_room = "Non è riuscito a iniziare la stanza di fuga.",
		started_escape_room = "Ha iniziato la sala di fuga con ${playerAmount} giocatrici.",
		start_escape_room_missing_permissions = "Il giocatore ha tentato di iniziare una stanza di fuga ma non avevano le autorizzazioni richieste per farlo.",
		escape_instructions = "Una volta completati, le porte si sbloccheranno e potrai lasciare l'edificio.",
		answer_the_phone = "Rispondi al telefono.",

		-- NOTE: temp
		none = "None"
	},

	health = {
		successfully_revived_player = "Rianimato con successo ${consoleName}.",
		successfully_revived_player_removed_injuries = "Rianimato con successo ${consoleName} e tutte le ferite sono state guarite.",
		successfully_revived_everyone = "Rianimazione eseguita con successo.",
		successfully_revived_everyone_removed_injuries = "Rianimazione eseguita con successo e tutte le ferite sono state guarite.",
		failed_to_revive = "Esecuzione di `/revive` fallito.",
		revive_player_not_staff = "Player ha cercato di rianimare qualcuno senza succeso perché non detiene i permessi richiesti.",
		revive_self_not_staff = "Player ha cercato di rianimare se stesso senza succeso perché non detiene i permessi richiesti.",
		revived_self_removed_injuries_title = "Rianimato se stessi e ferite guarite",
		revived_self_removed_injuries_details = "${consoleName} Rianimato se stessi e ferite guarite.",
		revived_self_title = "Rianimato se stessi",
		revived_self_details = "${consoleName} Rianimato se stesso.",
		revived_everyone_removed_injuries_title = "Rianimato chiunque e guarito le ferite",
		revived_everyone_removed_injuries_details = "${consoleName} Rianimato chiunque e guarito le ferite.",
		revived_everyone_title = "Tutti rianimati",
		revived_everyone_details = "${consoleName} Ha rianimato tutti.",
		revived_player_removed_injuries_title = "Rianimato tutto e ha guarito tutte le ferite",
		revived_player_removed_injuries_details = "${consoleName} Ha rianimato ${targetConsoleName} e ha guarito le ferite.",
		revived_player_title = "Rianimato player",
		revived_player_details = "${consoleName} rianimato ${targetConsoleName}.",
		get_recent_deaths_not_staff = "Player ha cercato di vedere chi è morto di recente, ma non aveva i permessi richiesti.",
		get_player_last_death_not_staff = "Player ha cercato di vedere chi è morto per ultimo, ma non aveva i permessi richiesti.",
		recent_deaths = "Morti recenti",
		no_recent_deaths = "Non ci sono morti recenti.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} morto ${timer} secondi fa.",
		target_user_not_found = "Target user non trovato.",
		no_server_id_sent = "Nessun server ID inviato.",
		no_permissions = "No permessi.",
		user_not_found = "User non trovato.",
		player_death = "Player morto",
		player_death_recent = "${consoleName} Ultima morte ${timer} secondi fa.",
		no_recent_death = "${consoleName} non è morto recentemente.",
		death_alcohol_poisoning = "Sei svenuto per intossicazione da alcohol.",
		character_has_hardcore_died = "${fullName} è morto. Potresti selezionare un altro personaggio.",

		death_timer_override_already_set_to = "L'override del timer di morte è già impostato su `${time}`.",
		set_death_timer_override = "L'override del timer di morte è già impostato su `${time}`",
		time_parameter_is_invalid = "Il parametro del 'tempo'è invalido.",
		death_timer_override_removed = "L'override del tempo di morte è stato rimosso.",
		no_death_timer_override_set = "Non c'è nessun timer dell'override di morte al momento.",

		invalid_distance = "Revive range invalido (Has to be between 1 and 50).",
		no_players_in_range = "Non ci sono player morti in ${distance}m di radio.",
		successfully_revived_range = "rianimato con successo ${amount} player(s) in ${distance}m di radio.",
		failed_revive_range = "Rianimazioni player fallito.",
		range_revive_not_staff = "PLayer ha cercato di rianimare altri player in un determinato range, ma non disponeva dei permessi richiesti."
	},

	hitmarkers = {
		hitmarkers_enabled = "Hitmarkers attivato.",
		hitmarkers_disabled = "Hitmarkers disattivato."
	},

	hud = {
		mph = "mp/h",
		kmh = "km/h",
		knots = "nodi",
		ft = "ft",
		m = "m",
		belt = "Cintura",
		limiter = "Limitatore",
		fuel = "benzina",
		nitro = "nitro",
		battery = "batteria",
		fps = "FPS",
		ping = "PING",
		autopilot = "autopilota",
		ground_asl = "AGL/ASL (${unit})",
		heading = "Verso",
		gear = "Cambio",
		rpm = "rpm",
		degrees = "°C",
		degrees_f = "°F",
		steps_walked_deaths = "${stepsWalked} passi ~t~/~w~ ${deaths} bassi",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "Ossigeno rimasto: ${timer}",

		muted = "Mutato",

		fps_unit = "fps",
		ping_unit = "ms",

		smart_warnings = "Attenzione: ${warnings}!",
		dehydrated = "disidratato",
		starving = "affamata",
		injured = "ferita",
		seriously_injured = "gravemente ferito",
		incapacitated = "inabile",
		stressed = "stressata",

		and_seperator = "e",

		toggle_phone_gps_off = "Ha attivato il telefono GPS off.",
		toggle_phone_gps_on = "Ha attivato il telefono GPS on.",

		advanced_hud_on = "Ha attivato l'HUD avanzato on.",
		advanced_hud_off = "Ha attivato l'HUD avanzato off.",

		hud_gauges_on = "Attivato i calibri HUD on.",
		hud_gauges_off = "Attivato i calibri HUD off."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Tenere sulla pelle",
		skinning_animal = "Animal morto che skinning",
		meat_too_damaged = "La carne di questo animale è troppo danneggiata.",
		animal_is_being_skinned = "L'animale viene pluviale."
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Carta d'identità",
		first_name = "Nome",
		last_name = "Cognome",
		gender = "Sesso",
		gender_male = "Maschio",
		gender_female = "Femmina",
		date_of_birth = "Data di nascita",
		citizen_id = "ID Cittadino",

		citizenship = "Cittadinanza",
		citizenship_value = "Stati Uniti D'America",
		surname = "Cognome",
		issued_on = "Rilasciato il",
		expires_on = "Scade il",

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

		citizen_card_details = "${firstName} ${lastName} | Data di nascita: ${dateOfBirth} | Sesso: ${gender} | ID Cittadino: ${characterId}",
		just_showed_citizen_card = "Hai appena mostrato la tua carta d'identità. Per favore aspetta un po'.",

		hunting_license = "Licenza di caccia",
		hunting_license_details = "Licenza di caccia | ${firstName} ${lastName} | ID Cittadino: ${characterId}",
		fishing_license = "Licenza di pesca",
		fishing_license_details = "Licenza di pesca | ${firstName} ${lastName} | ID Cittadino: ${characterId}",
		pilot_license = "Licenza di pilota",
		pilot_license_details = "Licenza di pilota | ${firstName} ${lastName} | ID Cittadino: ${characterId}",
		weapon_license = "Porto d'armi",
		weapon_license_details = "Porto d'armi | ${firstName} ${lastName} | ID Cittadino: ${characterId}",
		just_showed_license = "Hai appena mostrato una licenza. Per favore aspetta un po.",

		just_showed_badge = "Hai appena mostrato un distintivo. Per favore aspetta un po'.",
		sasp_badge = "Distintivo SASP",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Posizione: ${positionName}",
		bcso_badge = "Distintivo BCSO",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Posizione: ${positionName}",
		sahp_badge = "Distintivo SAHP",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Posizione: ${positionName}",
		iaa_badge = "Distintivo IAA",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Posizione: ${positionName}",
		fib_badge = "Distintivo FIB",
		fib_badge_details = "FIB | ${firstName} ${lastName} | Posizione: ${positionName}",
		swat_badge = "Distintivo SWAT",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | Posizione: ${positionName}",
		management_badge = "Distintivo di gestione",
		management_badge_details = "Gestione | ${firstName} ${lastName} | Posizione: ${positionName}",
		ems_badge = "EMS ID",
		ems_badge_details = "EMS | ${firstName} ${lastName} | Posizione: ${positionName}",
		doctor_badge = "Doctor ID",
		doctor_badge_details = "Doctor | ${firstName} ${lastName} | Posizione: ${positionName}",
		bcfd_badge = "Distintivo BCFD",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Posizione: ${positionName}",
		state_security_badge = "State Security ID",
		state_security_badge_details = "State Security Department | ${firstName} ${lastName}",
		doj_badge = "DOJ ID",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Posizione: ${positionName}",

		badge_type_sasp = "Polizia di stato di San Andread",
		badge_type_bcso = "Ufficio dello Sceriffato di Blaine County",
		badge_type_sahp = "San Andreas Highway Patrol",
		badge_type_iaa = "Agenzia degli affari interni",
		badge_type_fib = "Federal Investigation Bureau",
		badge_type_swat = "Special Weapons And Tactics",
		badge_type_management = "Gestione SASP",
		badge_type_ems = "Servizi di Emergenza Mediche",
		badge_type_doctor = "Residenza medica",
		badge_type_bcfd = "Vigili del fuoco della contea di Blaine",
		badge_type_state_security = "Dipartimento per la sicurezza dello Statot",
		badge_type_doj = "Dipartimento di giustizia",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "Gestione",
		badge_type_short_ems = "EMS",
		badge_type_short_doctor = "Doctor",
		badge_type_short_bcfd = "BCFD",
		badge_type_short_state_security = "SSD"
	},

	import_export = {
		press_to_access = "Premi ~INPUT_CONTEXT~ per accedere all'Import/Export menù.",

		pound = "lb",
		pounds = "lbs",
		minutes = "minuti",

		total = "Totale",
		header = "Cayo Perico - Import / Export",
		header_small = "Spedisci da e per Cayo Perico in modo facile e veloce.",

		loading = "Caricamento...",

		order_arrived = "Arrivato",
		claim = "Ricevi",

		claim_cayo = "Prendi su Cayo Perico",
		claim_lsia = "Prendi su LSIA",

		big_goods = "Big Goods",
		go_postal = "Go Postal",
		caipira = "Caipira Airlines",

		no_items = "Nessun articolo da spedire.",

		confirm_dialog = "Sei sicuro di voler spedire ${total}lbs per $${price}? Questa spedizione non può essere cancellata.",
		confirm = "Sì",

		no_active_order = "Non hai una spedizione attiva.",
		order_not_completed = "La tua spedizione non è ancora arrivata.",

		order_claimed = "Hai ricevuto la tua spedizione.",

		not_enough_items = "Non hai abbastanza articoli da spedire.",
		not_enough_money = "Non hai abbastanza soldi per creare la spedizione.",
		already_has_order = "Hai già una spedizione attiva.",
		something_went_wrong = "Qualcosa è andato storto.",

		order_success = "La tua spedizione è in viaggio! Arriverà tra ${minutes} minuti.",

		created_shipment_title = "Spedizione creata",
		created_shipment_details = "${consoleName} ha creato una spedizione per ${weight}lbs per $${price} con ${company}.",

		claimed_shipment_title = "Spedizione ricevuta",
		claimed_shipment_details = "${consoleName} ha ricevuto la spedizione di ${weight}lbs con ${company}.",

		blip_label = "Import / Export"
	},

	injuries = {
		inspect_no_player = "Nessun giocatore nelle vicinanze che puoi ispezionare.",
		already_inspecting = "Stai già ispezionando un giocatore.",
		inspect_failed = "Impossibile ispezionare il giocatore.",
		inspecting = "Ispezionando il giocatore",
		no_injuries = "Nessun infortunio o sanguinamento",
		patient_bleeding = "Il paziente sta sanguinando.",
		injury = "${label} Lesione"
	},

	instances = {
		instance_created_added = "Crea un'istanza con ID `${instanceId}` (Added players: ${serverIds}).",
		instance_created = "Crea un'istanza con ID `${instanceId}`.",
		instance_creation_failed = "Impossibile creare un'istanza.",
		instance_destroyed = "Distruggi l'istanza con ID `${instanceId}`.",
		instance_destruction_failed = "Non ha distrutto l'istanza.",
		instance_id_parameter_invalid = "Il parametro ID istanza non è valido.",
		added_player_to_instance = "Aggiunto ${consoleName} in istanza con ID `${instanceId}.`",
		failed_to_add_player_to_instance = "Impossibile aggiungere il giocatore all'istanza.",
		server_id_parameter_invalid = "Il parametro ID server non è valido.",
		removed_player_from_instance = "Rimossa ${consoleName} dall'istanza con ID `${instanceId}`.",
		failed_to_remove_player_from_instance = "Impossibile rimuovere il giocatore dall'istanza.",
		instance_players = "Giocatori di istanza su istanza con ID `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "Non sono riusciti a ottenere i giocatori dall'istanza.",
		no_players = "Nessun giocatore.",

		instance_hud = "ID istanza: ${instanceId}",

		create_instance_not_developer = "Il giocatore ha tentato di creare un'istanza ma non erano uno sviluppatore.",
		destroy_instance_not_developer = "Il giocatore ha tentato di distruggere un'istanza ma non erano uno sviluppatore.",
		add_player_to_instance_not_developer = "Il giocatore ha tentato di aggiungere un giocatore a un'istanza ma non erano uno sviluppatore.",
		remove_player_from_instance_not_developer = "Il giocatore ha tentato di rimuovere un giocatore da un'istanza ma non erano uno sviluppatore.",
		get_players_from_instance_not_developer = "Il giocatore ha tentato di ottenere i giocatori da un'istanza ma non erano uno sviluppatore."
	},

	interiors = {
		in_interior = "Nell'Interno: ${interiorId} (${portals} portals).",
		in_room_id = "Nella stanza: ${roomId} (${roomName}).",
		total_interiors = "Interior totali: ${totalInteriors} (${totalInteriorPortals} total portals).",
		total_unloaded_interiors = "Interior non caricati totali: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} total portals).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Spostati qui per accedere al bagagliaio",

		used = "Usato",
		added = "Aggiunto",

		pounds = "lb",

		store = "Negozio",
		gas_station = "Stazione di servizio",
		gas_station_backdoor = "Gas Station porta sul retro",
		cleaning_station = "Servizio di pulizie",
		grocery_store = "Negozio di alimentari",
		penthouse_fridge = "Frigo",
		mug_shots = "Foto segnaletiche",
		prison_store = "Negozio della prigione",
		fruit_vendor = "Fruttivendolo",
		supermarket = "Supermercato",
		island_store = "Negozio dell'isola",
		travel_agency = "Agenzia di viaggi",
		island_bar = "Bar dell'isola",
		burger_bar = "Burger Bar",
		tool_store = "Negozio di attrezzi",
		gun_store = "Ammu-Nation",
		discount_store = "Discount",
		gun_store_with_shooting_range = "Ammu-Nation con poligono di tiro",
		green_wonderland = "Green Wonderland",
		irish_pub = "Irish Pub",
		bar = "Bar",
		midnight = "Midnight Tunershop",
		cinema = "Cinema",
		strip_club = "Strip Club",
		police_store = "Negozio della polizia",
		fib_store = "Negozio del FIB",
		police_badge_store = "Badge desk della polizia",
		flower_store = "Emporio Stacey's Flower",
		gift_store = "Del Perro Gifts",
		ems_store = "EMS Store",
		drug_store = "Gabinetto della droga",
		ems_badge_store = "Banco distintivi EMS",
		doj_badge_store = "Banco distintivi DOJ",
		state_security_store = "Negozio di sicurezza dello stato",
		pharmacy = "Farmacia",
		chop_shop = "Negozio Chop",
		courthouse = "tribunale",
		burger_shot = "Burger Shot",
		burger_shot_fridge = "Frigo del Burger Shot",
		erp_shop = "Negozio ERP Shop",
		pet_shop = "Negozio di animali",
		bean_machine = "Bean Machine",
		hunting_store = "Negozio di caccia",
		fishing_store = "Negozio di pesca",
		los_santos_golf_club = "Los Santos Golf Club",
		arcade_bar = "Arcade Bar",
		japanese_restaurant = "Istorante Giapponese",
		["945_studios"] = "945 Studios",
		grain_mill = "Mulino per cereali",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		government_prefix = "Gov",
		wonderland_prefix = "WL",
		br_prefix = "BR",
		inventory_overweight = "Il tuo inventario è in sovrappeso!",
		vehicle_locked = "Il veicolo è bloccato.",
		press_to_access_store = "Premi ~INPUT_REPLAY_SHOWHOTKEY~ per accedere al Store.",
		press_to_access_locker = "Premi ~INPUT_REPLAY_SHOWHOTKEY~ per accedere all'armadietto personale.",
		press_to_access_shared_storage = "Premi ~INPUT_REPLAY_SHOWHOTKEY~ per accedere al Store condiviso.",

		inspect_weapon = "Il numero di serie di questo ${itemName} sembra essere `${itemId}`.",
		inspect_weapon_broken = "Il numero di serie di questo ${itemName} sembra essere `${itemId}`, sembra anche essere completamente rotto.",

		searching_dumpster = "Ricerca nel cassonetto",

		nameable_title = "Nome elemento nominabile:",

		locker_restricted = "Questo oggetto sembra non entrare nel tuo armadietto.",

		press_to_access_shredder = "[${InteractionKey}] Accedi al Distruttore.",

		invalid_item_id = "Item ID invalido.",
		item_not_found = "Impossibile trovare l'elemento con ID `${itemId}`.",
		item_lookup = "${label} (${itemId}) currently in ${inventoryName}:${inventorySlot}.",

		big_inventory_disabled = "Ripristina gli slot dell'inventario dei personaggi ai valori predefiniti.",
		big_inventory_enabled = "Aumentati temporaneamente gli slot dell'inventario dei tuoi personaggi.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ Accedi ${label}",

		burgershot_counter = "Cassa del Burgershot",

		inventory_name_missing = "Parametro del nome dell'inventario mancante.",

		shredder_title = "Distruttore",
		shredder_description = "Avviso: Qualsiasi elemento spostato qui verrà eliminato all'istante e non potrà essere recuperato.",

		npc_vehicle_inventory = "Inventario veicolo NPC",

		store_help = "Per acquistare qualcosa, trascina un articolo dall'inventario secondario nel tuo.",
		store_tax = "Tassa del negozio",
		store_tax_percentage = "${tax}%",

		missing_job = "Non hai il lavoro adeguato per usare questo inventario.",

		item_is_broken = "Questo oggetto è rotto.",
		battle_royale_item = "Questo oggetto può essere usato solo su Fortnite Battle Royale.",
		battle_royale_item_disallowed = "Questo oggetto non è usabile nel Battle Royale.",

		broken_food = "Questo oggetto è andato a male.",
		broken_drugs = "Questo oggetto è scaduto.",
		vape_empty = "Questa sigaretta eletronica è vuota.",

		craft_combine = "Crafta <i>${output}</i>",
		combining = "Craftando",

		carve_jack_o_lantern = "intaglia <i>Jack-o-lantern</i>",
		crush_cocoa_beans = "Rompi <i>Cocoa Beans</i>",
		mix_hot_chocolate = "Mescola <i>Hot Chocolate</i>",
		crush_raw_ruby = "Rompi <i>Raw Ruby</i>",
		crush_raw_sapphire = "Rompi <i>Raw Sapphire</i>",

		search = "Cerca",
		amount = "Quantità",
		use = "Usa",
		close = "Vicino",

		done = "FINITO",
		burnt = "BRUCIATO",
		danger = "PERICOLO",
		fuel = "Pieno: ${fuel}",

		item_does_stack = "Questo elemento si accumula.",
		item_does_not_stack = "Questo elemento non si accumula.",
		individual_weight = "Peso individuale",
		stack_amount = "Stack Amount",

		logs_secondary_inventory_title = "Secondo inventario aperto",
		logs_secondary_inventory_details = "${consoleName} aperto un secondo inventario con nome `${inventoryName}`.",
		logs_ground_inventory_created_title = "Inventario creato per terra",
		logs_ground_inventory_created_details = "${consoleName} creato un inventario a terra con nome `${inventoryName}`.",

		logs_item_moved_title = "Oggetto spostato",
		logs_item_moved_details = "${consoleName} Spostato ${moveAmount}x ${itemLabel} a ${endInventory}:${endSlot} dall'inventario ${startInventory}:${startSlot}.",

		logs_item_purchased_title = "Articolo/i comprato/i",
		logs_item_purchased_no_tax_details = "${consoleName} comprato ${purchaseAmount}x `${itemLabel}` per $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} comprato ${purchaseAmount}x `${itemLabel}` perr $${purchaseCost} with an additional $${taxCost} due to a ${salesTaxPercentage}% sales tax.",

		radius_invalid = "Nel raggio di `${radius}` non è un valore valido.",
		wiped_all_ground_inventories = "Spazzato ${inventoriesWiped} oggetti per terra.",
		wiped_nearby_ground_inventories = "Spazzato ${inventoriesWiped} oggetti per terra in un raggio di `${radius}`.",
		failed_to_wipe_ground_inventories = "Spazzata degli oggetti per terra fallito.",
		no_ground_inventories = "Non c'erano oggetti da spazzare.",
		no_ground_inventories_within_radius = "Non c'erano oggetti per terra da spazzare nel raggio di `${radius}`.",

		wipe_inventories_not_staff = "Il giocatore ha tentato di cancellare gli inventari, ma non disponeva delle autorizzazioni corrette per farlo.",

		logs_wiped_all_ground_inventories_title = "Cancellati tutti gli inventari di terra",
		logs_wiped_all_ground_inventories_details = "${consoleName} Cancellati tutti gli inventari di terra.",

		logs_wiped_nearby_ground_inventories_title = "Cancellati Tutti gli inventari a terra",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} Cancellati tutti gli inventari a terra.",

		logs_combined_title = "Oggetti combinati",
		logs_combined_details = "${consoleName} ha combinato ${inputs} per creare 1x ${output}.",

		press_use_campfire = "[${InteractionKey}] Usa il fuoco",
		use_campfire = "Usa il fuoco",

		dumpster_sandwich = "Spazzatura Sandwich",
		dumpster_beer = "Spazzatura Beer",
		dumpster_milk = "Latte di piccione scaduto",
		dumpster_meat = "Carne polverosa (un po' ammuffita)",
		dumpster_fries = "Patate vecchie",
		dumpster_brownies = "Brownies esiccati",
		dumpster_pizza_slice = "Pezzo di pizza ammuffito",
		dumpster_banana = "Banana pelosa (Molto moscio)",

		-- items & item descriptions
		body_armor = "Armatura",
		body_armor_description = "Piatti e preparati per la guerra, o solo qualsiasi altro giorno per le strade di LS.",
		first_aid_kit = "Primo aiuto di pronto soccorso",
		first_aid_kit_description = "Il \"do-it-yourself\" doctor-kit.",
		bandages = "Bende",
		bandages_description = "Per tutti gli outhies e i booboos.",
		oxygen_tank = "Serbatorio di ossigeno",
		oxygen_tank_description = "Un pacchetto di espansione polmonare.",
		ifak = "IFAK",
		ifak_description = "\"PD Power Pack che protegge le W quando applicato.Prenderne più di 1 comporterà i sentimenti di applaudito da EZ insieme a distribuire trofei di partecipazione per i crime quando abbattuti.\"<br><br>-Joe, 2020",

		citizen_card = "Carta d'identità",
		citizen_card_description = "Funge da identificazione, patente di fuoco e patente di guida.",
		phone = "Telefono",
		phone_description = "mai:tm:",
		radio = "Radio",
		radio_description = "Risorsa utile per tutti i metagameri là fuori!",
		smart_watch = "Smart Watch",
		smart_watch_description = "Odio dover pagare in contanti ovunque?Usa il tuo orologio intelligente!Viene fornito anche con una bussola incorporata, orologio, GPS e step-tracker!Basta non andare a correre alle 2 del mattino.",
		tablet = "Tablet",
		tablet_description = "Telefono molto grande.",

		gps = "GPS",
		gps_description = "Soddisfa tutti i bisogni dei tuoi gadget.",

		gps_collar = "Collare GPS",
		gps_collar_description = "Un collare GPS per i tuoi animali.",

		boosting_tablet = "Boosting Tablet",
		boosting_tablet_description = "Utilizzato per ottenere _totally_ contratti legali.",

		hunting_license = "Licenza di caccia",
		hunting_license_description = "Una licenza di caccia per la caccia.",
		fishing_license = "Licenza di cacci",
		fishing_license_description = "Una patente di pesca per la pesca.",
		pilot_license = "Licenza da pilota",
		pilot_license_description = "Una licenza di pilota per pilotare aerei e cose del genere.",
		weapon_license = "Porto d'armi",
		weapon_license_description = "Una licenza d'armi per il possesso e il trasporto di armi di classe superiore.",

		sasp_badge = "Distintivo SASP",
		sasp_badge_description = "Un distintivo per gli ufficiali del dipartimento di polizia di San Andreas.",
		sahp_badge = "Distintivo SAHP",
		sahp_badge_description = "Un distintivo per gli ufficiali della San Andreas Highway Patrol.",
		bcso_badge = "Distintivo BCSO",
		bcso_badge_description = "Un distintivo per i deputati dell'ufficio dello sceriffo della contea di Blaine.",
		iaa_badge = "Distintivo IAA",
		iaa_badge_description = "Un distintivo per gli agenti dell'agenzia degli affari interni.",
		fib_badge = "Distintivo FIB",
		fib_badge_description = "Un distintivo per gli agenti del Federal Investigation Bureau.",
		swat_badge = "Distintivo SWAT",
		swat_badge_description = "Un distintivo per gli ufficiali del dipartimento di armi e tattiche speciali.",
		management_badge = "Distintivo di gestione",
		management_badge_description = "Un distintivo per gli agenti della divisione di gestione SASP.",
		ems_badge = "EMS ID",
		ems_badge_description = "Un ID per i paramedici EMS.",
		doctor_badge = "Doctor ID",
		doctor_badge_description = "Un ID per i medici.",
		bcfd_badge = "Distintivo BCFD",
		bcfd_badge_description = "Un distintivo per i vigili del fuoco dei vigili del fuoco della contea di Blaine.",
		state_security_badge = "State Security ID",
		state_security_badge_description = "Un ID per gli agenti della Sicurezza di Stato.",
		doj_badge = "Distintivo DOJ",
		doj_badge_description = "Un distintivo per i dipendenti del Dipartimento di Giustizia.",

		radio_chop_shop = "Chop Shop Radio",
		radio_chop_shop_description = "Utilizzato per ricevere Intel su veicoli 'caldi' dalle persone inesistenti che gestiscono il Chop Shop.",

		binoculars = "Binocolo",
		binoculars_description = "Un gadget indispensabile per ogni brivido in agguato a Los Santos!",
		photo_camera = "Fotocamera",
		photo_camera_description = "Nikon & Igna ha sviluppato l'ultima fotocamera professionale sul mercato. Con il suo obiettivo avanzato (70-300 mm f/4.5-5.6E), puoi catturare anche i dettagli più fini, anche le piccole cose sul terreno.",

		remote_camera = "Fotocamera Remota",
		remote_camera_description = "Una telecamera che può essere posizionata ovunque e può essere vista a distanza.",
		remote_monitor = "Monitor Remoto",
		remote_monitor_description = "Un monitor portatile che può essere utilizzato per visualizzare telecamere remote.",

		handcuffs = "Manette",
		handcuffs_description = "Per quella esperienza ERP completa.",
		bolt_cutter = "Taglia Bulloni",
		bolt_cutter_description = "L'ERP non è stato divertente come previsto...",
		drill = "Trapano",
		drill_description = "Scommetto che molte persone qui avrebbero utilizzato per questo ... considerando come sembrano avere alcune viti sciolte.",
		umbrella = "Ombrello",
		umbrella_description = "Incanala i tuoi poppin interni.",
		watch = "Orologio",
		watch_description = "Non c'è tempo per cautela.",
		compass = "Compasso",
		compass_description = "43.3068 N 0.7668 W",
		map = "Mappa",
		map_description = "Ti mostra dove stai andando e dove sei stato.O forse eri laggiù?",
		glass_breaker = "Rompivetri di emergenza",
		glass_breaker_description = "Utilizzato per rompere i finestrini dell'auto in caso di emergenza.",

		picture = "Immagine",
		picture_description = "Raccogli tutti i ricordi di te e dei tuoi amici.",

		brochure = "Brochure",
		brochure_description = "Un'utile brocure per iniziare in città.",

		basic_repair_kit = "Kit di riparazione di base",
		basic_repair_kit_description = "Fa funzionare le cose, ma a malapena.",
		advanced_repair_kit = "Kit di riparazione avanzato",
		advanced_repair_kit_description = "Utilizzato per riparare le anime spezzate.",
		basic_lockpick = "Grimaldello base",
		basic_lockpick_description = "Utilizzato per scegliere le serrature",
		advanced_lockpick = "Grimaldello avanzato",
		advanced_lockpick_description = "Nascondi i tuoi figli, nascondi la moglie",
		cleaning_kit = "Kit di pulizia",
		cleaning_kit_description = "Perfetto per pulire il tuo veicolo o le macchie di sangue che hai lasciato asciugare nella parte posteriore del tronco.",

		microphone_bug = "Cimice",
		microphone_bug_description = "Usato per insinuarsi nelle conversazioni.",
		vehicle_tracker = "Localizzatore di veicoli",
		vehicle_tracker_description = "Questo tracker è esattamente ciò di cui Michael ha bisogno, che da oltre sette anni ha sospettato che sua moglie, Amanda, lo ha tradito con l'allenatore di tennis che le ha procurato.",
		device_scanner = "Scanner dispositivi",
		device_scanner_description = "Utilizzato per cercare dispositivi nascosti nelle vicinanze.",
		radio_decryptor = "Radio Decryptor",
		radio_decryptor_description = "Decodifica le frequenze radio se connesso a una radio.",

		paper_bag = "Busta di carta",
		paper_bag_description = "Perfetto per conservare la spesa o forse la testa di qualcuno, morta o viva.",
		burger_shot_delivery = "Burger shot Pasto",
		burger_shot_delivery_description = "Una meravigliosa collezione di tutte le meraviglie sciatte che servono.",
		bean_machine_delivery = "Bean Machine Delivery",
		bean_machine_delivery_description = "Una borsa piena di prelibatezze da un piccolo coffeeshop dei quartieri alti.",

		ear_defenders = "Cuffie difensive per orecchie",
		ear_defenders_description = "Utilizzato per proteggere le orecchie dai rumori forti.",

		clothing_bag = "Borsa d'abbigliamento",
		clothing_bag_description = "Non preoccuparti mai più delle emergenze della moda! La borsa per abiti ti consente di riporre il tuo abbigliamento preferito e di equipaggiarlo all'istante ovunque tu vada. Questa borsa ha tutta la magia di una fata madrina, meno il bibbidi-bobbidi-boo.",

		raw_morganite = "Raw Morganite",
		raw_morganite_description = "Morganite nella sua forma naturale, fresco dalla miniera.",
		raw_ruby = "Raw Ruby",
		raw_ruby_description = "Ruby nella sua forma naturale, fresco dalla miniera.",
		raw_sapphire = "Raw Sapphire",
		raw_sapphire_description = "Sapphire nella sua forma naturale, fresco dalla miniera.",
		raw_emerald = "Raw Emerald",
		raw_emerald_description = "Emerald è nella sua forma naturale, fresco dalla miniera.",

		ruby_dust = "Ruby Dust",
		ruby_dust_description = "Polvere di un ruby.",
		sapphire_dust = "Sapphire Dust",
		sapphire_dust_description = "Polvere di un Sapphire.",

		morganite = "Morganite",
		morganite_description = "Morganite tagliato e lucido.",
		ruby = "Ruby",
		ruby_description = "Ruby tagliato e lucido.",
		sapphire = "Sapphire",
		sapphire_description = "Zaffiro tagliato e lucido.",
		emerald = "Emerald",
		emerald_description = "Smeraldo tagliato e lucido.",

		ring = "Annello",
		ring_description = "Solo un anello vuoto.",

		morganite_ring = "Anello di morganite",
		morganite_ring_description = "Un bel anello con un grande morganite nel mezzo.Perfetto per matrimoni, migliori amici o estranei completi.",
		ruby_ring = "Anello di rubino",
		ruby_ring_description = "Un bel anello con un grosso rubino nel mezzo.Perfetto per matrimoni, migliori amici o estranei completi.",
		sapphire_ring = "Anello di zaffiro",
		sapphire_ring_description = "Un bel anello con un grande zaffiro nel mezzo.Perfetto per matrimoni, migliori amici o estranei completi.",
		emerald_ring = "Anello di smeraldo",
		emerald_ring_description = "Un bel anello con un grande smeraldo nel mezzo.Perfetto per matrimoni, migliori amici o estranei completi.",
		diamond_ring = "Anello di diamante",
		diamond_ring_description = "Un bel anello con un grande diamante nel mezzo.Perfetto per matrimoni, migliori amici o estranei completi.",

		gemstone_scanner = "Scanner di pietre preziose",
		gemstone_scanner_description = "Utile per scansione di pietre preziose.",

		extended_clip = "Caricatore aumentato",
		extended_clip_description = "Meno ricarica.",
		grip = "Presa",
		grip_description = "Grip quella canna UWU.",
		sight = "Mirino Olografico",
		sight_description = "Come correggere il cattivo obiettivo.",
		scope = "Mirino Red Dot",
		scope_description = "Quindi puoi ottenere il bonus di distanza.",
		suppressor = "Silenziatore",
		suppressor_description = "Bang Bang più come Pew Pew.",
		flashlight = "Torcia",
		flashlight_description = "Vedi in The Dark Type Beat.",
		extended_pistol_clip = "Caricatore aumentato (Pistola)",
		extended_pistol_clip_description = "Meno ricarica.",
		extended_smg_clip = "Caricatore aumentato (SMG)",
		extended_smg_clip_description = "Meno ricarica.",
		extended_shotgun_clip = "Caricatore aumentato (Shotgun)",
		extended_shotgun_clip_description = "Meno ricarica.",
		drum = "Caricatore a tambuto",
		drum_description = "Non ricaricare mai più.",
		pistol_sight = "Mirino per pistola",
		pistol_sight_description = "Come correggere il cattivo obiettivo.",

		aluminium_plate = "Piastra in alluminio",
		aluminium_plate_description = "ATTENZIONE: non protegge dai proiettili ... crackhead.",
		aluminium_rod = "Asta di alluminio",
		aluminium_rod_description = "Cerca di non battere i tuoi amici sopra la testa con questo.",
		copper_nugget = "Pepita di rame",
		copper_nugget_description = "Lil Nug di quella dolce roba marrone dorata dolce.",
		copper_wire = "Filo di rame",
		copper_wire_description = "Cablaggio versatile che può essere utilizzato per quasi tutto elettronico.",
		lens = "Lenti",
		lens_description = "Usato in occhiali e microscopi, fottuto secchione.",
		polymer_resin = "Resina di Polimere",
		polymer_resin_description = "Non è il tipo fumoso, ma ancora pulito.",
		screws = "Viti",
		screws_description = "Cosa faranno Cha? Avvitare?",
		spring = "Spring",
		spring_description = "Non so il perché, ma alla gente piace pulire questi?",

		grenade_shell = "Guscio di granata",
		grenade_shell_description = "Un guscio di granata.",
		grenade_pin = "Perno granata",
		grenade_pin_description = "La sicura della granata.",

		paint = "Vernice",
		paint_description = "Utile per recinzioni e case, basta non iniziare a sbuffarlo.",
		paint_brush = "Pennello",
		paint_brush_description = "Utile per la pittura.",

		skin_patriotic = "Skin patriottica",
		skin_patriotic_description = "Per tutti voi supidi americani là fuori.",
		skin_brushstroke = "Skin penellata",
		skin_brushstroke_description = "Per tutti voi amanti di arte.",
		skin_skull = "Skin teschio",
		skin_skull_description = "Per tutti voi bambini strani.",
		skin_leopard = "Skin leopardata",
		skin_leopard_description = "Per tutti gli amanti di Niki Minaj.",
		skin_zebra = "Skin zebrata",
		skin_zebra_description = "Per tutti gli amanti degli animali.",
		skin_geometric = "Skin geometrica",
		skin_geometric_description = "Per tutti quelli che lavorano al BurgerShot.",

		refillable_bottle = "Bottiglia vuota",
		refillable_bottle_description = "Salva le tartarughe su Dio davvero per davvero.",

		capri_sun = "Capri Sun",
		capri_sun_description = "Deliziosa sorpresa della tua infanzia.",

		gumball = "Gomma da masticare",
		gumball_description = "Una gomma da masticare, cos'altro vuoi che dica?",

		water = "Acqua",
		water_description = "Pericolo!Il monossido di diidrogeno è incolore e inodore.L'inalazione accidentale di DHMO può essere fatale.L'esposizione prolungata alla sua forma solida provoca gravi danni ai tessuti.I sintomi dell'ingestione di DHMO possono includere sudorazione e minzione eccessive e possibilmente una sensazione gonfia, nausea, vomito e squilibrio dell'elettrolitico del corpo.",
		hamburger = "Hamburger",
		hamburger_description = "Il gusto dell'America!",
		belgian_fries = "Patatine belghe",
		belgian_fries_description = "Per un gusto migliorato, dm @Crux#4153 scrivetegli \"fritas\".",
		coke = "Coca",
		coke_description = "Escobar?",
		wonder_waffle = "Wonder Waffle",
		wonder_waffle_description = "Vegano, senza lattosio, senza latticini, senza uova, senza glutine, biologico, senza antibiotici, senza soia, senza fruttosio, senza noci, senza GMA, senza zucchero, senza grassi e a basso contenuto di carboidrati ed inesistente",
		cheeseburger = "Cheeseburger",
		cheeseburger_description = "dannatamente grasso, unto, gommoso, doppio deluxe, doppio fradicio, doppio unto, dannatamente decente, grande, unto, freddo e unto, solito doppio, grosso grasso, succosissimo, king size, deluxe, dannatamente bello, doppio, unto, semplice vecchio , triplo, gommoso, succoso, peccaminoso, mediocre, molliccio, grasso, grande grosso, gratuito, obeso, se serve consultazione per una dieta sana, riferirsi all Mount Hospital",
		donut = "Ciambella",
		donut_description = "Perché c'è un buco nel mezzo ed è riempito di crema Owo",
		green_apple = "Mela verde",
		green_apple_description = "È come una Red Bull ma non c'erano oggetti nel gioco che corrispondevano a una Red Bull Can.",
		sandwich = "Sandwich",
		sandwich_description = "Te l'ho chiesto prima di andare in cucina.",
		taco = "Taco",
		taco_description = "La specialità di Escobar.",
		smores = "S'mores",
		smores_description = "yes",
		tic_tac = "Tic Tac",
		tic_tac_description = "TIC-TAC. BOOOOOOOOOM, ah no aspettate è ancora mattina!",
		pizza_slice = "Fetta di pizza",
		pizza_slice_description = "MAMMA MIA MARCELLOO! WHAT AR YU DUING.",
		hot_dog = "Hot Dog",
		hot_dog_description = "Attento al prank con gli smarties.",
		nachos = "Nachos",
		nachos_description = "Nachos abbastanza buono per Incarnación!!",
		vanilla_ice_cream = "Vanilla Ice Cream",
		vanilla_ice_cream_description = "Per le puttane di base senza sapore nella vita.",
		chocolate_ice_cream = "Chocolate Ice Cream",
		chocolate_ice_cream_description = "Sapore rispettabile, non troppo raro, giusto un po' strano, sa di merda.",
		vanilla_milkshake = "Vanilla Milkshake",
		vanilla_milkshake_description = "Un classico di ristorazione, ottimo con un hamburger e patatine se sei obeso ovviamente!",
		chocolate_milkshake = "Chocolate Milkshake",
		chocolate_milkshake_description = "Un frullato dall'aspetto meraviglioso, spero solo che la CIA non stia cercando di te prima di prendere un sorso...",

		dog_food = "Cibo per cani",
		dog_food_description = "Il cibo per cani è cibo specificamente formulato e destinato al consumo da parte di cani e altri canini correlati.",
		cat_food = "Cibo per gatti",
		cat_food_description = "Il cibo per gatti è cibo per il consumo da parte dei gatti.I gatti hanno requisiti specifici per i loro nutrienti dietetici.",
		dog_treats = "Dolci per cani",
		dog_treats_description = "Prelibatezze per il tuo amico in calore.",
		cat_treats = "Dolci per gatti",
		cat_treats_description = "Deliziosi prelibatezze per la tua pussy locale.",

		burger_buns = "Pane Burger",
		burger_buns_description = "Fai scorrere un po 'di carne tra questi cattivi ragazzi.",
		cheese = "Formaggio",
		cheese_description = "Immagina di essere intollerante al lattosio, pussy.",
		lettuce = "Insalata",
		lettuce_description = "Quella roba verde che non vendono per le strade.",
		patty = "Hamburger",
		patty_description = "Un giorno un piccolo uomo troverà la formula segreta per questa carne, fino ad allora, continua a lanciare Fry Cook.",
		potato = "Patata",
		potato_description = "L'unica cosa dalla Russia che non è una sposa AK o Vodka.",
		raw_fries = "Patatine crude",
		raw_fries_description = "Fondamentalmente solo una patata, ma qualcuno non ha fatto abbastanza sforzo per farlo qualcosa.",
		raw_patty = "Hamburger crudi",
		raw_patty_description = "90% Vera carne, l'altro 10% è andato in tasse.",

		apple = "Mela",
		apple_description = "Tieni a bada i medici malvagi!",
		banana = "Banana",
		banana_description = "O ti piace, o non ti piace",
		cherry = "Ciliegia",
		cherry_description = "In cima, ma non al vesuvio.",
		kiwi = "Kiwi",
		kiwi_description = "Il frutto non l'animale.(Da non confondere con A-32)",
		mango = "Mango",
		mango_description = "Sai chi è Crux? No, mango io...",
		orange = "Orancia",
		orange_description = "Sei contento di non aver detto banana.",
		peach = "Pesca",
		peach_description = "Non un culo.",
		pineapple = "Ananas",
		pineapple_description = "Va bene nel culo ma non nella pizza.",
		pomegranate = "Melograno",
		pomegranate_description = "AL AHKB... Ah no, è un frutto, ops.",
		strawberry = "Fragola",
		strawberry_description = "Di solito si trova nei campi ... per sempre.",
		watermelon = "Anguria",
		watermelon_description = "Si chiama anguria non melone, e non vogliamo elastici.",

		banana_peel = "Buccia di banana",
		banana_peel_description = "Almeno non ti ha colpito un guscio rosso?.",

		beer = "Birra",
		beer_description = "Acqua arrabbiata.",
		vodka = "Vodka",
		vodka_description = "Русский стиль, cука ебать.",
		tequila = "Tequila",
		tequila_description = "Non preoccuparti, niente è stato scivolato nel tuo drink. ( ͡° ͜ʖ ͡°)",
		whiskey = "Whiskey",
		whiskey_description = "Solo per i migliori alcolisti.",
		cider = "Cedrata",
		cider_description = "Succo di mela adulto.",
		rum = "Rum",
		rum_description = "CAPTAIN, YE-YEAH?! LOOOOK! OH FUCKKK (soundboard dei pirati dei caraibi)",
		absinthe = "Assenzio",
		absinthe_description = "ATTENZIONE: contiene alcol.Lascia che i bambini bevano solo quantità moderate.",
		wine = "Vino",
		wine_description = "Sa di aceto, sicuramente è francese.",

		moonshine = "Moonshine",
		moonshine_description = "Il modo migliore per ubriacarsi senza che il governo lo sappia.",
		yeast_packet = "Pacchetto di lievito",
		yeast_packet_description = "Un pacchetto di lievito, usato per fare l'alcool.",

		kimchi = "Kimchi",
		kimchi_description = "Un contorno piccante coreano a base di verdure fermentate.",
		fish_sauce = "Salsa di pesce",
		fish_sauce_description = "Un condimento a base di pesce che è stato lasciato fermentare.",

		pumpkin = "Zucca",
		pumpkin_description = "Ah ecco dov'era la testa del cavalliere.",
		cabbage = "Cavolo",
		cabbage_description = "Perfetto per fare il Kimchi in casa.",

		smoothie = "Frullato",
		smoothie_description = "La miscela perfetta di frutta, verdura ed elettroliti per curare anche i peggiori postumi di una sbornia indotta dal gioco.",
		blender = "Frullatore",
		blender_description = "Ogni buco non è trincea, fidati soldato.",

		cocoa_beans = "Semi di cacao",
		cocoa_beans_description = "Piccoli Semi che vengono utilizzati per fare il cioccolato.",
		cocoa_powder = "Polvere di cacao",
		cocoa_powder_description = "Una polvere ricavata dalle fave di cacao.",
		hot_chocolate = "Cioccolata calda",
		hot_chocolate_description = "Una bevanda calda a base di cacao in polvere e latte.",

		jack_o_lantern = "Jack O' Lantern",
		jack_o_lantern_description = "Questa è la zucca di prima.",

		cigarette = "Sigarette",
		cigarette_description = "Se non fumi, sei una figa dawg, cazzo te ne, sei già un cancro",
		cigarette_pack = "Pacchetto sigarette",
		cigarette_pack_description = "Per tuo padre che ha una dipendenza da sigaretta (si spera che torni dopo essere partito per ottenerli).",

		cocaine_bag = "Bustina di cocaina",
		cocaine_bag_description = "Se trovata ad un politico, è zucchero.",
		cocaine_brick = "Panetto di cocaina",
		cocaine_brick_description = "Meglio del borotalco.",
		joint = "Joint",
		joint_description = "420 Blaze It Dawg",
		oxy = "Oxy",
		oxy_description = "Hai delle droghe ?Aiuta con il mal di schiena.",
		antibiotics = "Antibiotici",
		antibiotics_description = "Aiutarti a sbarazzarti di quelle infezioni e dei parassiti.",
		pain_killers = "Pain Killers",
		pain_killers_description = "È il massimo del tempo di vendita, ho bisogno delle mie droghe.",
		weed_seeds = "Semi di erba",
		weed_seeds_description = "Cresce il 420, fratello",
		weed_1q = "Erba 7g",
		weed_1q_description = "420 bro",
		weed_1oz = "Erba 28g",
		weed_1oz_description = "1680 bro",

		oxy_prescription = "Prescrizioni di Oxy",
		oxy_prescription_description = "Prescrizione oxy imprecisa.",

		brownies = "Brownies",
		brownies_description = "Goey, Foamy, e doppiamente la quantità di cioccolato con giusto un pizzico che ti farà sedere e ti chiederai domande essenziali sulla tua vita, per esempio. Dov'è Bugo?.",

		ejector_seat = "Sedile di espulsione",
		ejector_seat_description = "Kaput!",
		tuner_chip = "Tuner Chip",
		tuner_chip_description = "Sono velocità.",

		chip = "Chip",
		chip_description = "Chip hacker dall'aspetto interessante.",
		decryption_key_red = "Red Decryption Key",
		decryption_key_red_description = "LO SAPEVATE?La mafia rossa è in realtà solo un mucchio di fighe.",
		decryption_key_green = "Green Decryption Key",
		decryption_key_green_description = "LO SAPEVATE?La coca era originariamente di colore verde.",
		decryption_key_blue = "Blue Decryption Key",
		decryption_key_blue_description = "LO SAPEVATE?Esiste un uccello dai piedi blu?Riferimento: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "Scudo balistico",
		ballistic_shield_description = "Questo scudo dovrebbe essere usato quando ci si avventura nelle gangland di RP.",

		pet_porg = "Porg Pal",
		pet_porg_description = "Adorabile Porg Pal da posare sulla tua spalla e tenerti compagnia. Carina e coccolosa, questa piccola creatura ti farà sorridere ovunque tu vada.",
		pet_duck = "Calcio rotante quantastico",
		pet_duck_description = "Con i suoi allegri ciarlatani e le soffici piume, questa papera è la compagna perfetta per ogni viaggio. Si appollaierà felicemente sulla tua spalla, pronto a esplorare il mondo con te.",
		pet_cat = "Felino grassoccio",
		pet_cat_description = "Questo soffice felino è sempre pronto per un pisolino, e quale posto migliore per sonnecchiare se non sulla tua spalla? Si accoccolerà felicemente e farà le fusa durante la tua giornata.",
		pet_cat_grey = "Pigro Gizmo",
		pet_cat_grey_description = "Questo piccolo gatto grigio è il massimo della pigrizia. Si siede con soddisfazione sulla tua spalla, muovendosi a malapena tranne che per dare occasionalmente un pigro allungamento.",
		pet_chicken = "Amico pennuto",
		pet_chicken_description = "Questo adorabile pulcino ti beccherà allegramente intorno alla spalla, le sue morbide piume e la sua personalità curiosa lo rendono il compagno perfetto per qualsiasi avventura.",
		pet_shiba = "Paw Patrol",
		pet_shiba_description = "Con la sua personalità giocosa e la morbida pelliccia, questo piccolo cane shiba è il compagno perfetto per ogni avventura. Ti seguirà felicemente ovunque tu vada, la sua coda scodinzolante e la sua corteccia allegra aggiungeranno un tocco di gioia al tuo viaggio.",
		pet_mouse = "Cincillà grassoccio",
		pet_mouse_description = "Questo cincillà rotondo e soffice è il compagno perfetto per ogni avventura. La sua morbida pelliccia e la sua personalità giocosa lo rendono il perfetto compagno di coccole, e si appollaierà felicemente sulla tua spalla durante la tua giornata.",
		pet_raccoon = "Rascal il procione",
		pet_raccoon_description = "Introcendo Rascal, il soffice procione sempre pronto per l'avventura. Con un fisico paffuto e una personalità maliziosa, si siederà felicemente sulla tua spalla e ti aiuterà a cercare tesori. Pronto a unirti alla tua ricerca?",

		hotwheels_mcqueen = "Lightning McQueen",
		hotwheels_mcqueen_description = "Io sono velocità, Veloce come una Cadillac come ed elegante come una fita. KATCHOW KATCHOW KATCHOW",
		hotwheels_towmater = "Tow Mater",
		hotwheels_towmater_description = "Il mio nome è Matter, come Tua.. ma pronunciato come Tou.",

		boxing_gloves = "Guanti da box",
		boxing_gloves_description = "Ti trasforma in Rocky, ma probabilmente non otterrai un sequel e molto probabilmente verrai sconfitto da un pakistano...",
		leash = "Guinzaglio",
		leash_description = "Nessuno saprà perché hai acquistato questo, ma sicuramente ti giudicheranno per averlo.",

		shrooms = "Funghi",
		shrooms_description = "Qualcuno ha detto di metterli sulla pizza, ma ora la pizza si sta mettendo su di me ... aspetta chi sono?",

		bucket = "Secchio",
		bucket_description = "Può essere usato come casco improvvisato.",
		fertilizer = "Fertilizatore",
		fertilizer_description = "No, non funziona al contrario se lo metti a testa in giù e se lo spruzzi su te stesso.",

		aluminium_powder = "Polvere di aluminio",
		aluminium_powder_description = "",
		iron_oxide = "Polvere di ossido di ferro",
		iron_oxide_description = "",

		gold_bar = "Lingotto d'oro",
		gold_bar_description = "Utilizzato per riparazioni e lavorazione.",

		aluminium = "Alluminio grezzo",
		aluminium_description = "Utilizzato per riparazioni e lavorazione.",
		glass = "Vetro ruvido",
		glass_description = "Utilizzato per riparazioni e lavorazione.",
		rubber = "Gomma non curata",
		rubber_description = "Utilizzato per riparazioni e lavorazione.",
		scrap_metal = "Metallo rottamanto",
		scrap_metal_description = "Utilizzato per riparazioni e lavorazione.",
		steel = "Acciaio grezzo",
		steel_description = "Utilizzato per riparazioni e lavorazione.",

		purified_aluminium = "Aluminio purificato",
		purified_aluminium_description = "Utilizzato per riparazioni professionali.",
		tempered_glass = "Vetro temperato",
		tempered_glass_description = "Utilizzato per riparazioni professionali.",
		vulcanized_rubber = "Gomma vulcanizzata",
		vulcanized_rubber_description = "Utilizzato per riparazioni professionali.",
		processed_metal = "Metallo processato",
		processed_metal_description = "Utilizzato per riparazioni professionali.",
		refined_steel = "Acciaio raffinato",
		refined_steel_description = "Utilizzato per riparazioni professionali.",

		power_saw = "Sega elettrica",
		power_saw_description = "Usato per segarsi le cose.",

		thermite = "Termite",
		thermite_description = "Polvere altamente esplosiva, non annusare.",
		fake_plate = "Targa falsa",
		fake_plate_description = "Hehe scopa gli sbirri, non mi stanno catturando.",
		evidence_bag_empty = "Buste prove vuoto",
		evidence_bag_empty_description = "Puoi migliorarlo?",
		evidence_bag = "Busta prove",
		evidence_bag_description = "Crimine sigillato in una borsa per un uso successivo.",
		fingerprint_evidence = "Impronte digitali",
		fingerprint_evidence_description = "Aiutarti a catturarli criminali permanenti.",

		ammo_box = "Grande scatola di munizioni",
		ammo_box_description = "Perfetto per quando devi sparare molto.Contiene 60 round di ogni tipo di munizioni.",

		stungun_ammo = "Scariche Taser",
		stungun_ammo_description = "Meno che letale.",
		pistol_ammo = "Munizioni pistola",
		pistol_ammo_description = "Perfetto per uso casual.Si adatta alla maggior parte dei palmari.",
		sub_ammo = "Munizioni SMG",
		sub_ammo_description = "Stai cercando di Mag-Dump un gruppo rivalente?Questa è una risorsa economica che lo consente esattamente.Per il pieno effetto, si consiglia un'arma di mestia.",
		rifle_ammo = "Munizioni assalto",
		rifle_ammo_description = "Questo è per tutti i ladri di banche hardcore che cercano di massacrare alcuni maiali lungo la strada.",
		sniper_ammo = "Munizioni cecchino",
		sniper_ammo_description = "Fanculo la tua iniziazione!",
		shotgun_ammo = "Munizioni shotgun",
		shotgun_ammo_description = "La gente pensa che ci sia polvere da sparo in questi!Clown ... sono pieni di amore e gioia.",

		silver_watches = "Orologi d'argento",
		silver_watches_description = "Consiglio, non andare a Napoli!",
		necklaces = "Collane",
		necklaces_description = "Aggiungi un po 'di bling extra al tuo outfit!",
		gold_watches = "Orologi d'oro",
		gold_watches_description = "E ... dove li hai presi, esattamente?",
		diamonds = "Diamonti",
		diamonds_description = "Hai bisogno di 24 per fare un'armatura piena.Consiglierei di ricevere 27 però in modo da poterti fare anche un piccone.",

		weather_spell_snow = "Weather Spell (Snow)",
		weather_spell_snow_description = "L'uso di questo articolo ti consentirà di controllare temporaneamente il tempo e farlo nevicare!È un utilizzo una tantum, quindi usa con cura.Se usi due incantesimi meteorologici contemporaneamente, il secondo farà semplicemente la fila.",
		weather_spell_rain = "Weather Spell (Rain)",
		weather_spell_rain_description = "L'uso di questo articolo ti consentirà di controllare temporaneamente il tempo e far piovere!È un utilizzo una tantum, quindi usa con cura.Se usi due incantesimi meteorologici contemporaneamente, il secondo farà semplicemente la fila.",
		weather_spell_thunder = "Weather Spell (Thunder)",
		weather_spell_thunder_description = "Using this item will let you temporarily control the weather and make a thunderstorm! It is a one-time use, so use with care. If you use two weather spells at once, the second one will simply queue up.",

		zombie_pill = "Pillola zombie",
		zombie_pill_description = "Una strana pillola che fa anche cose più strane ... deglutire a tuo rischio.Forse avere una pistola su di te per proteggere da sogni violenti sarebbe saggio.",

		acid = "Acidi",
		acid_description = "Ti fa alto permanentemente.Non c'è sfuggire.",

		rose = "Rosa",
		rose_description = "Il bro fa erp",

		teddy_bear = "Orsacchiotto",
		teddy_bear_description = "Un amico che ti ascolterà davvero.",

		self_driving_chip = "Self-Driving Chip",
		self_driving_chip_description = "Deer Dead ovunque ... fottutamente esilarante.",

		ticket_50 = "$50 Biglietto lotteria",
		ticket_50_description = "Getta un po 'nella pentola.",
		ticket_250 = "$250 Biglietto lotteria",
		ticket_250_description = "Ora stiamo arrivando da qualche parte, corre quel rischio.",
		ticket_500 = "$500 Biglietto lotteria",
		ticket_500_description = "Guardati, questo è il tuo stipendio per l'intera settimana!",

		avocado = "Avocado",
		avocado_description = "Piccolo oggetto Bulbus verde, sarebbe bello fare un tuffo da.",
		avocado_smoothie = "Avocado Smoothie",
		avocado_smoothie_description = "Succo verde sano, ignora i pezzi.",

		raspberry = "Raspberry",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Antenna",
		antenna_description = "Cattura tutte le frequenze.",
		battery_pack = "Pacchetto di batterie",
		battery_pack_description = "Alimentare tutta la tua elettronica.",
		cpu = "CPU",
		cpu_description = "Il cuore di ogni computer.",
		knob = "Pomello",
		knob_description = "Torci, giralo.",
		pcb_board = "PCB Board",
		pcb_board_description = "Per prototipare la tua prossima invenzione.",
		screen = "Monitor",
		screen_description = "Guarda cosa fai.",
		sd_card = "SD Card",
		sd_card_description = "Per tutte le tue esigenze di archiviazione.",
		wires = "Fili",
		wires_description = "Tenendo tutto insieme.",

		note = "Nota",
		note_description = "Qualche nota idk man.",

		pigeon_milk = "Latte di piccione",
		pigeon_milk_description = "\"Avrebbe dovuto bere il latte di piccione quella roba ti farà cadere subito\"\nLatte estratto da Vedder con amore.",

		bandana = "Bandana",
		bandana_description = "TUTTA MERCA DI GANGE.(Bloods Win)",

		battering_ram = "Ariete",
		battering_ram_description = "Porta quelle porte a Slam Town!",

		trading_card = "Carta collezionabile",
		trading_card_description = "Una carta commerciale da collezione, devo prenderli tutti!",

		trading_card_pack = "Pacchetto di carte collezionabili",
		trading_card_pack_description = "Un pacchetto di carte commerciali casuali, otteniamo delle buone tiri.",

		boombox = "Boombox",
		boombox_description = "Suona musica e sii odioso ovunque, in qualsiasi momento!",

		lighter = "Accendino",
		lighter_description = "Alcuni uomini vogliono solo vedere bruciare il mondo",

		nitro_tank = "Serbatoio nitro",
		nitro_tank_description = "STU TU TU TU.",

		empty_nitro_tank = "Serbatoio nitro vuoto",
		empty_nitro_tank_description = "Circa utile come una lattina vuota di fagioli.",

		sheet_metal = "Lastra di metallo",
		sheet_metal_description = "Perfetto per aggiornare il tuo 2x2.",

		valve = "Valvola",
		valve_description = "Half Life 3 Quando?",

		empty_tank = "Serbatoio vuoto",
		empty_tank_description = "Non contiene più accessori propani o propani.",

		pepper_spray = "Spray al peperoncino",
		pepper_spray_description = "I MIEI OCCHI!",

		jail_card = "Bonus carta prigione",
		jail_card_description = "Esci dalla cartolina per la prigione!",

		vape = "Svapo",
		vape_description = "Stai cercando di sembrare bello?Stanco di essere una figa?Prendi un successo bwo!",

		acetone = "Acetone",
		acetone_description = "Perfetto per rimuovere la vernice o lucidarla, in stile cooper .",

		bleach = "Candeggina",
		bleach_description = "Non berlo, a meno che non sei un bimbo di 3 anni, o se sei emo.",

		ammonia = "Ammoniaca",
		ammonia_description = "Mescola con la candeggina per una sorpresa magica.",

		lithium_batteries = "Batterie al litio",
		lithium_batteries_description = "Non consentito su aerei commerciali, a meno che tu non voglia andare boom.",

		meth_bag = "Sacco di metanfetamina",
		meth_bag_description = "Soprannominata \"Cooper's Spice\". Alcuni dei cristalli più puri per abbellire il mare di Alamo.",

		meth_table = "Tavolo di polvere bianca",
		meth_table_description = "Haha che si diverte un cattivo riferimento sulla cucina meth.",

		campfire = "Falò",
		campfire_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!Questo articolo non può essere ripreso.",
		tent = "Tenda",
		tent_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		cloth_tent = "Tenda di stoffa",
		cloth_tent_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		canvas_tent = "Tenda di canva",
		canvas_tent_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		plastic_chair = "Sedia di plastica",
		plastic_chair_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		fishing_chair = "Sedia da pesca",
		fishing_chair_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		yoga_mat = "Tappetino yoga",
		yoga_mat_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		cooler_box = "Scatola frigo",
		cooler_box_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		parasol = "Parasole",
		parasol_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		parasol_table = "Tavolo con parasole",
		parasol_table_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		table = "Tavolo",
		table_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		towel = "Asciugamano",
		towel_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		disposable_grill = "Griglia usa e getta",
		disposable_grill_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!Questo articolo non può essere ripreso.",
		grill = "Griglia",
		grill_description = "Può essere collocato in qualsiasi parte del mondo.Perfetto per il campeggio, la caccia e la pesca!",
		police_barrier = "Barriera polizia",
		police_barrier_description = "Può essere collocato in qualsiasi parte del mondo.",
		dummy = "Ciuccio",
		dummy_description = "Può essere collocato in qualsiasi parte del mondo.",
		target = "Target",
		target_description = "Può essere collocato in qualsiasi parte del mondo.",
		large_target = "Grande target",
		large_target_description = "Può essere collocato in qualsiasi parte del mondo.",
		cone = "Cono",
		cone_description = "Può essere collocato in qualsiasi parte del mondo.",
		spike_strips = "Strisce appuntite",
		spike_strips_description = "Può essere collocato in qualsiasi parte del mondo.",
		floodlight = "Proiettore",
		floodlight_description = "Può essere collocato in qualsiasi parte del mondo.",
		left_diversion_sign = "Cartellodi deviazione di sinistra",
		left_diversion_sign_description = "Può essere collocato in qualsiasi parte del mondo.",
		right_diversion_sign = "Cartello di deviazione di destra",
		right_diversion_sign_description = "Può essere collocato in qualsiasi parte del mondo.",
		stop_sign = "Cartello stop",
		stop_sign_description = "Può essere collocato in qualsiasi parte del mondo.",
		bear_trap = "Trappola per orsi",
		bear_trap_description = "Può essere collocato in qualsiasi parte del mondo.",
		barrier = "Barriera",
		barrier_description = "La tua barriera di costruzione standard.",
		traffic_barrier = "Traffic Barrier",
		traffic_barrier_description = "Una barriera per assicurarsi che il traffico sappia cosa è successo.",
		small_barrier = "Piccola Barrier",
		small_barrier_description = "Balricata di merda piccola piccola.",
		traffic_barrel = "Barile di traffico",
		traffic_barrel_description = "Sembra hittable, ma non ... a meno che?",
		pedestrian_barrier = "Barriera pedonale",
		pedestrian_barrier_description = "Ottimo da avere a meno che non sia un concerto di Travis Scott...",

		bandit_1 = "Bandito 1",
		bandit_1_description = "Può essere collocato in qualsiasi parte del mondo.",
		bandit_2 = "Bandito 2",
		bandit_2_description = "Può essere collocato in qualsiasi parte del mondo.",
		hostage_1 = "Ostaggio 1",
		hostage_1_description = "Può essere collocato in qualsiasi parte del mondo.",
		hostage_2 = "Ostaggio 2",
		hostage_2_description = "Può essere collocato in qualsiasi parte del mondo.",

		director_chair = "Sedia del direttore",
		director_chair_description = "Può essere collocato in qualsiasi parte del mondo.Comodi posti a sedere in movimento.",
		beach_chair = "Sedia da spiaggia",
		beach_chair_description = "Può essere collocato in qualsiasi parte del mondo.Comodi posti a sedere in movimento.",
		green_fishing_chair = "Sedia da pesca verde",
		green_fishing_chair_description = "Può essere collocato in qualsiasi parte del mondo.Comodi posti a sedere in movimento.",
		blue_fishing_chair = "Sedia da pesca blue",
		blue_fishing_chair_description = "Può essere collocato in qualsiasi parte del mondo.Comodi posti a sedere in movimento.",

		tire_wall = "Muro di pneumatici",
		tire_wall_description = "Quando hai bisogno di una copertura ma non ce n'è.",

		claymore = "Claymore",
		claymore_description = "Peggio delle trappole di Frost.",

		tv_stand = "Supporto della televisione",
		tv_stand_description = "Usa questo per sostenere una TV ovunque tu voglia.",
		tv_remote = "Telecomando TV",
		tv_remote_description = "Telecomando universale (batterie quantistiche non incluse).",

		firework_rocket = "Razzo pirotecnico",
		firework_rocket_description = "Un semplice razzo per fuochi d'artificio.Ottimo per il 4 luglio.",
		firework_battery = "Batteria pirotecnica",
		firework_battery_description = "Una batteria di fuochi d'artificio.Spara 4 fuochi d'artificio contemporaneamente.",

		pole = "Palo giallo",
		pole_description = "Perfetto per fermare chiunque morto nelle loro tracce.",

		gasoline_bottle = "Bottiglia di gasolina",
		gasoline_bottle_description = "Per una rapida ricarica per la tua auto o .... uhm ..... te stesso?",

		radio_jammer = "Jammer radio",
		radio_jammer_description = "Perfetto per inceppare qualsiasi tipo di trasmissioni in arrivo e in uscita.",

		winner_trophy = "Trofeo vincitore",
		winner_trophy_description = "Sei il migliore!",

		treasure_map = "Mappa del tesoro",
		treasure_map_description = "",
		treasure_map_piece = "Pezzo di mappa del tesoro",
		treasure_map_piece_description = "Un frammento strappato di una mappa del tesoro più grande, forse perso o deliberatamente nascosto. Contiene un frammento del mistero, un puzzle in attesa di essere risolto. Raccogli tutti i pezzi, assembla la mappa e svela i segreti di un tesoro perduto da tempo. Fai attenzione ai cacciatori di tesori rivali e agli ostacoli imprevisti lungo la strada!",

		flag = "Bandiera",
		flag_description = "Tienila stretta!",

		black_dildo = "Dildo nero",
		black_dildo_description = "Otterremo quella confessione in un modo o nell'altro.",
		pink_dildo = "Dildo rosa",
		pink_dildo_description = "Fatto a mano, intagliato e testato dalla lele® indrustries.",

		bean_coffee = "Grano di caffe",
		bean_coffee_description = "Acqua di fagioli .... tutto ciò che è davvero.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Exprero con latte materno, intendo latte materno, intendo latte materno...",
		espresso = "Espresso",
		espresso_description = "Abbastanza energia per alimentare la tua casa, tutto in una piccola tazza ordinata.",
		cream_cookie = "Biscotto con crema",
		cream_cookie_description = "Cremoso, proprio come ti piace.",
		cheesecake = "Cheesecake",
		cheesecake_description = "Da non confondere con una torta fatta di formaggio.",
		chocolate_cake = "Torta al cioccolato",
		chocolate_cake_description = "Deliziosa torta fatta con i migliori fagioli di cacao.",
		cupcake = "Cupcake",
		cupcake_description = "Una torta soffice piena condita con una magica crema di unicorno.",
		pink_lemonade = "Limonata rosa",
		pink_lemonade_description = "Totalmente non solo il normale rosa tinto alla limonata in modo da poterti caricare il doppio...",

		irish_coffee = "Caffè irlandese",
		irish_coffee_description = "Caffè appena preparato con un po 'di whisky irlandese originale in esso.",

		chip_10 = "$10 Chip",
		chip_10_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro nel casinò.",
		chip_50 = "$50 Chip",
		chip_50_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro nel casinò.",
		chip_100 = "$100 Chip",
		chip_100_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro al casinò.",
		chip_500 = "$500 Chip",
		chip_500_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro nel casinò.",
		chip_1000 = "$1000 Chip",
		chip_1000_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro al casinò.",
		chip_5000 = "$5000 Chip",
		chip_5000_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro al casinò.",
		chip_10000 = "$10000 Chip",
		chip_10000_description = "Un chip di gioco d'azzardo.Può essere usato per giocare d'azzardo.L'oggetto può essere convertito in denaro al casinò.",

		grubs = "Larve",
		grubs_description = "Perfetto per la pesca.",
		leeches = "Sanguisuge",
		leeches_description = "Perfetto per la pesca.",
		earthworms = "Vermi da terra",
		earthworms_description = "Perfetto per la pesca.",
		fishing_rod = "Canna da pesca",
		fishing_rod_description = "Perfetto per la pesca.",
		raw_meat = "Carne cruda",
		raw_meat_description = "Un pezzo fresco di carne.",
		cooked_meat = "Carne cotta",
		cooked_meat_description = "Carne che è stata appena cotta.",
		burnt_meat = "Carne bruciata",
		burnt_meat_description = "Carne che è stata bruciata.",
		leather = "Cuoio",
		leather_description = "Un bel briciolo fresco dal cervo.",
		wood = "Legno",
		wood_description = "Un pezzo di legno fresco da un albero.",
		charcoal = "Carbonella",
		charcoal_description = "Superiore al carbone normale.",

		beef_jerky = "Carne secca",
		beef_jerky_description = "Alcuni bei pezzi di carne essiccata.",
		oreos = "Torta di compleanno Oreo",
		oreos_description = "Alcuni deliziosi biscotti con un pizzico di torta di compleanno.",
		nerds_chunks = "Nerds Chunks",
		nerds_chunks_description = "Un sacchetto di grappoli gommosi nerd, deliziosi!",
		reeses_pieces = "Pezzi di Reese's",
		reeses_pieces_description = "Lo spuntino perfetto per quando ti senti un po' affamato, ma non abbastanza per mangiare un pasto completo.",
		kettle_chips = "Kettle Chips (Miele-BBQ)",
		kettle_chips_description = "Le migliori patatine al mondo.",
		cheetos = "Cheetos",
		cheetos_description = "Lo snack migliore per le tue sessioni di gaming.",
		peanuts = "Arachidi",
		peanuts_description = "Una lattina di arachidi, perfetto per qualche snack.",

		rice = "Riso",
		rice_description = "Sono grani carnosi e soffici.",
		nori = "Nori",
		nori_description = "Questa è un'alga, ci potresti trovare nemo dentro.",
		soy_sauce = "Salsa di soia",
		soy_sauce_description = "La salsa di soia è un condimento saporito con un ricco sapore di umami, perfetto per marinate, condimenti e salse da immersione, a basso contenuto calorico e ricco di proteine.",
		eggs = "Uovo",
		eggs_description = "Versatile e nutrizioso, uova perfette per le omelette, strapazzate, o anche pasticeria.",
		lime = "Lime",
		lime_description = "Saporito e ricco di vitamina C, aggiungi la scorza di lime alle bevande,marina e usali come decoro.",
		coconut = "Noce di cocco",
		coconut_description = "Dolce e cremoso, il cocco esalta dessert, curry e frullati. Dab.",
		sugar = "Zucchero",
		sugar_description = "E' come la cocaina ma non è illegale, l'unica cosa che da è il diabete.",

		golf_ball = "Palla da Golf",
		golf_ball_description = "Utilizzato per il golf.",
		golf_ball_yellow = "Palla da golf gialla",
		golf_ball_yellow_description = "Utilizzato per il golf.",
		golf_ball_orange = "Palla da golf arancione",
		golf_ball_orange_description = "Utilizzato per il golf.",
		golf_ball_pink = "Palla da golf rosa",
		golf_ball_pink_description = "Utilizzato per il golf.",

		gas_mask = "Maschera a gas",
		gas_mask_description = "Ti salverà da tutti i tipi di gas, anche le scoregge di nonne",
		nv_goggles = "Visori notturni",
		nv_goggles_description = "Ti aiuteranno per vedere nell'oscurità.",
		thermal_goggles = "Visori termali",
		thermal_goggles_description = "Ti aiuteranno a vedere attraverso i muri (Non proprio xD).",

		green_rolls = "Rotoli Verdi",
		green_rolls_description = "Per quelli di noi che hanno bisogno di più dell'importo medio.",
		rolling_paper = "Cartina per sigaretta",
		rolling_paper_description = "Quella carta veloce da arrotolare e fumare il tuo dolore.",

		arena_pill = "Pillola dell'arena",
		arena_pill_description = "Una strana pillola che fa anche cose più strane ... deglutire a tuo rischio.Forse avere una pistola su di te per proteggere da sogni violenti sarebbe saggio.",

		shovel = "Pala",
		shovel_description = "Un robusto strumento di scavo per portare alla luce ricchezze nascoste e scoprire segreti in qualsiasi ambiente, rendendolo una risorsa preziosa per gli avidi cacciatori di tesori.",

		electric_fuse = "Fusibile elettrico",
		electric_fuse_description = "Il fusibile elettrico è un oggetto necessario per le stanze dei colpi. Deve essere posizionato nella scatola dei fusibili per alimentare la serratura con chiave magnetica.",
		keycard_green = "Keycard verde",
		keycard_green_description = "Utilizzato per aprire magazzini pieni di forniture mediche.",
		keycard_blue = "Keycard blu",
		keycard_blue_description = "Utilizzato per aprire magazzini pieni di forniture tecniche.",
		keycard_red = "Keycard rossa",
		keycard_red_description = "Utilizzato per aprire armerie.",

		magazine = "Giornale",
		magazine_description = "Un giornale.",

		bank_rockfish = "Scorfano banca",
		black_and_yellow_rockfish = "Scorfano nero e giallo",
		black_rockfish = "Scorfano nero",
		blackgill_rockfish = "Scorfano blackgill",
		blackspotted_rockfish = "Scorfano macchiato di nero",
		blue_rockfish = "Scorfano blu",
		bocaccio = "Bocaccio",
		bronzespotted_rockfish = "Scorfano macchiato di bronzo",
		brown_rockfish = "Scorfano marrone",
		cabezon = "Cabezon",
		calico_rockfish = "Scorfano calico",
		california_scorpionfish = "California Scorpionfish",
		canary_rockfish_variant_1 = "Scorfano canarino (Variante 1)",
		canary_rockfish_variant_2 = "Scorfano canarino (Variante 2)",
		chilipepper_rockfish = "Scorfano peperoncino",
		china_rockfish = "Scorfano cinese",
		copper_rockfish_variant_1 = "Scorfano rame (Variante 1)",
		copper_rockfish_variant_2 = "Scorfano rame (Variante 2)",
		cowcod = "Cucù",
		darkblotched_rockfish = "Scorfano macchie scure",
		deacon_rockfish = "Scorfano diacono",
		dusky_rockfish_dark_version = "Scorfano tetro (versione scura)",
		dusky_rockfish_light_version = "Scorfano tetro (versione chiara)",
		flag_rockfish = "Scorfano bandiera",
		gopher_rockfish = "Scorfano gopher",
		grass_rockfish_dark_version = "Scorfano erba (versione scura)",
		grass_rockfish_light_version = "Scorfano erba (versione chiara)",
		greenblotched_rockfish = "Scorfano macchie verdi",
		greenspotted_rockfish = "Scorfano macchiato verde",
		greenstriped_rockfish = "Scorfano striscie verdi",
		halfbanded_rockfish = "Scorfano Mezzobanda",
		honeycomb_rockfish = "Scorfano favo",
		kelp_greenling_female = "Fuco pesce verde (femmina)",
		kelp_greenling_male = "Fuco pesce verde (maschio)",
		kelp_rockfish = "Scorfano fuco",
		lingcod = "Lingcod",
		olive_rockfish = "Scorfano oliva",
		pacific_ocean_perch = "Scorfano dell'Oceano Pacifico",
		pacific_sand_sole = "Pesce sogliola di sabbia del Pacifico",
		pacific_sanddab = "Pesce Sanddab del Pacifico",
		quillback_rockfish_variant_1 = "Scorgano quillback (Variante 1)",
		quillback_rockfish_variant_2 = "Scorgano quillback (Variante 2)",
		redbanded_rockfish = "Scorfano a bande rosse",
		rock_sole = "Sogliola di scoglio",
		rosy_rockfish = "Scorfano rosa",
		rougheye_rockfish = "Scorfano occhio ruvido",
		shortraker_rockfish = "Scorfano shortraker",
		silvergray_rockfish = "Scorfano grigioargento",
		speckled_rockfish = "Scorfano maculato",
		squarespot_rockfish = "Scorfano a punti quadrati",
		starry_flounder = "Passera stellata",
		starry_rockfish = "Scorfano stellato",
		tiger_rockfish_dark_version = "Scorfano tigre (versione scura)",
		tiger_rockfish_pink_version = "Scorfano tigre (versione rosa)",
		treefish = "Pesce albero",
		vermilion_rockfish = "Scorfano vermiglio",
		widow_rockfish = "Scorfano Vedova",
		yelloweye_rockfish_adult = "Scorfano Occhio Giallo (Adulto)",
		yelloweye_rockfish_juvenile = "Scorfano Occhio Giallo (Giovane)",
		yellowtail_rockfish = "Scorfano dalla coda gialla",

		bank_rockfish_description = "I pesci rocciosi di banca sono pesci a forma di ovale con piccola testa.spine.Sono rossi o marroni rossi, spesso con una chiara zona rosa-arancione lungo la linea laterale e spotting nero sul corpo e porzione spinosa della pinna dorsale.",
		black_and_yellow_rockfish_description = "Sebaste Chrysomelas, comunemente noto come il pesce roccioso nero e giallo, è una specie di pesce marino della famiglia Sebastidae.Si trova nelle aree rocciose nel Pacifico al largo della California e della Baja California.",
		black_rockfish_description = "Il pesce roccia nera, noto anche in vari modi come il Seaperch nero, il basso nero, il merluzzo di roccia nera, il branzino, lo snapper nero e il pesce persico dell'Oceano Pacifico, è una specie di pesce marino con pentola di raggi appartenenti alla sottofamiglia Sebastinae, i pesci rocciosi, parte del rocciaFamiglia Scorpaenidae.",
		blackgill_rockfish_description = "Occasionalmente catturato al largo della costa di Washington da raccoglitori commerciali usando tracolle di lontra e attrezzature a lungo termine.Una volta che una specie comunemente catturata al largo della costa della California. <br> <br> si possono trovare piccole versioni off-shore, ma i blackgill più anziani si sposteranno in acque profonde.",
		blackspotted_rockfish_description = "Sebastes melanostictus, il pesce roccia blackspottated, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico settentrionale.",
		blue_rockfish_description = "Il pesce roccia blu o il seaperch blu, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico nord -orientale, che va dalla California della Baja settentrionale all'Oregon centrale. <br> <br> Trovato solo nelle voci del fiume, non direttamente nei fiumi.",
		bocaccio_description = "Il pesce roccioso di Bocaccio è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae, si trova nell'Oceano Pacifico nord-orientale. <br> <br> anche noto come il \"red snapper\".",
		bronzespotted_rockfish_description = "Sebastes Gilli, il pesce roccia di bronze, è una specie di pesci appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico centrale orientale.",
		brown_rockfish_description = "Il pesce roccia marrone, i cui altri nomi includono Seaperch marrone, basso al cioccolato, basso marrone e bombardiere marrone, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico nord -orientale.",
		cabezon_description = "Il Cabezon è una grande specie di sculpina originaria della costa del Pacifico del Nord America.Sebbene il nome del genere si traduca letteralmente come \"scorpion fish\", True Scorpionfish appartiene alla famiglia correlata Scorpaenidae.",
		calico_rockfish_description = "Sebastes dallii, il pesce roccioso di Calico, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae. Si trova nell'Oceano Pacifico centrale orientale. <br> <br> Calicos maschili maschiPrima Beome matura sessualmente a sette anni, mentre le femmine raggiungono la maturità sessuale a nove anni.",
		california_scorpionfish_description = "Scorpaena Guttata è una specie di pesce nella famiglia Scorpionfish conosciuta con il nome comune California Scorpionfish.È originario dell'Oceano Pacifico orientale, dove si può trovare lungo la costa della California e della Baja California.",
		canary_rockfish_variant_1_description = "Il pesce roccia canarino, noto anche come arancione roccioso, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico al largo del Nord America occidentale.",
		canary_rockfish_variant_2_description = "Il pesce roccia canarino, noto anche come arancione roccioso, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico al largo del Nord America occidentale.",
		chilipepper_rockfish_description = "Sebastes Goodei, The Chilipepper Rockfish e Chilipepper, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Questa specie vive principalmente al largo della costa del Nord America occidentale dalla Baja California a Vancouver.",
		china_rockfish_description = "Il pesce roccioso cinese, il pesce roccioso di Yellowstripe o il pesce roccioso di giallo, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico al largo del Nord America occidentale.",
		copper_rockfish_variant_1_description = "Il pesce roccia di rame, noto anche come Seaperch di rame, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale. <br> <br> Non saranno mai visti negli oceani generici, poiché vogliono solo vicino alla parte superiore o in basso.",
		copper_rockfish_variant_2_description = "Il pesce roccia di rame, noto anche come Seaperch di rame, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale. <br> <br> Non saranno mai visti negli oceani generici, poiché vogliono solo vicino alla parte superiore o in basso.",
		cowcod_description = "Sebastes Levis, il cowcod o rockfish di mucca, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico orientale. <br> <br> La gamma di dimensioni crea una spigolosità competitiva.",
		darkblotched_rockfish_description = "Il pesce roccioso con la piena scura, conosciuta anche con i nomi di rocciosi a bottina nera, roccia di blackmouth e macchie, è un pesce profondo.",
		deacon_rockfish_description = "Sebastes Diaconus, The Deacon Rockfish, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico orientale. <br> <br> I maschi vivranno sempre più a lungo delle femmine.",
		dusky_rockfish_dark_version_description = "Sebastes Ciliatus è una specie di pesce roccioso anche comunemente noto come pesce roccioso scuro.Si trova in genere nell'Oceano Pacifico del Nord.",
		dusky_rockfish_light_version_description = "Sebastes Ciliatus è una specie di pesce roccioso anche comunemente noto come pesce roccioso scuro.Si trova in genere nell'Oceano Pacifico del Nord.",
		flag_rockfish_description = "Sebastes Rubrivecttus, noto anche come bandiera rocciosa, bandiera spagnola, rockfish bandied o barberpole, è una specie di pesci marini con pentola di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale.",
		gopher_rockfish_description = "Il pesce roccioso Gopher, noto anche come Gopher Sea Person, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale, principalmente al largo della California.",
		grass_rockfish_dark_version_description = "Sebastes Rastrelliger, The Grass Rockfish, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico orientale. <br> <br> più comunemente utilizzato dai pescatori ricreativi usando gli equipaggiamenti per gancio e linea.",
		grass_rockfish_light_version_description = "Sebastes Rastrelliger, The Grass Rockfish, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico orientale. <br> <br> Più comunemente utilizzato dai pescatori ricreativi usando gli attrezzi da gancio e linea.",
		greenblotched_rockfish_description = "Il pesce roccia con la veglia è una specie di demersale che si trova come individui solitari o in piccoli gruppi all'interno di strutture rocciose a profondità comprese tra 55 m (180 piedi) e 490 m (1.610 piedi).Raggiungono una lunghezza massima di 54 cm (21 pollici), con le femmine più grandi dei maschi. <br> <br> I Greenbotched, verniciati;e Greenstriped condividono tutti le stesse caratteristiche e comportamenti.",
		greenspotted_rockfish_description = "Sebastes clorostictus, il pesce roccioso di Greenspottad, è una specie di pesce marino-fornato appartenente alla sottofamiglia Sebastinae, i pesci rocciosi, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale. <br> <br> I Greenbotched, Greenspotd;e Greenstriped condividono tutti le stesse caratteristiche e comportamenti.",
		greenstriped_rockfish_description = "Sebastes elongatus, il pesce roccioso di Greenstriped, il pesce roccioso a strisce, il pesce roccioso alla fragola, le stelle, la Reina o Serena, è una specie di pesce marino con pentola di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte delle Famiglia Scorpaenidae.Si trova nell'Oceano Pacifico nord -orientale. <br> <br> I Greenbotched, Greenspotd;e Greenstriped condividono tutti le stesse caratteristiche e comportamenti.",
		halfbanded_rockfish_description = "Sebastes Semicincus, il pesce roccia a metà bandio, è una specie di pesce marino-con pignolo di raggi appartenenti alla sottofamiglia Sebastinae, i pesci rocciosi, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale.",
		honeycomb_rockfish_description = "Il pesce roccia a nido d'ape ha un corpo tozzo compatto con una larghezza che è dal 35% al 39% della lunghezza standard.Sono coperti di spine.Hanno una colorazione marrone marrone, marrone o rossastra con macchie bianche da 4 a 6 distanziati casualmente sopra la loro linea laterale.",
		kelp_greenling_female_description = "Una donna in serre al gambo femmina è frenata dappertutto con piccole macchie da marrone rossastro a dorate su uno sfondo grigio a brunastro.Le pinne sono per lo più arancione giallastra.I maschi tendono ad essere grigi all'oliva marrone, con macchie blu irregolari nella metà anteriore ai due terzi dei loro corpi.<br><br>Più comunemente presente in acque più superficiali di 328 piedi.",
		kelp_greenling_male_description = "Il gregling maschio di alghe è brunastro per il grigio, con macchie blu a forma irregolare fiancheggiate da nero sulla schiena e sulla testa.Sia femmine che maschi hanno una piccola proiezione folta (Cirrus) sopra ogni occhio.Questa specie arriva a 60 cm di lunghezza.<br><br>Più comunemente presente in acque più superficiali di 328 piedi.",
		kelp_rockfish_description = "Sebastes atrovirens, il pesce roccioso di Kelp, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario dell'Oceano Pacifico lungo la costa della California negli Stati Uniti e della Baja California in Messico.",
		lingcod_description = "Lingcod sono predatori voraci e possono crescere per pesare oltre 80 libbre (35 kg) e misurare la lunghezza di 150 cm di 60 pollici.Sono caratterizzati da una bocca grande con 18 denti affilati.Il loro colore è variabile, di solito con macchie di marrone scuro o rame disposte in cluster.",
		olive_rockfish_description = "Il pesce roccia oliva, Acanthoclinus fuscus, è un lungofina della famiglia Plesiopidae.Trovato solo nella zona intertidale della Nuova Zelanda e nelle piscine rocciose con bassa marea, il pesce cresce fino a una lunghezza fino a 30 cm.",
		pacific_ocean_perch_description = "L'Oceano Pacifico, noto anche come Pacific Rockfish, Rose Fish, Bream Red o Red Porch, è un pesce il cui raggio si estende nel Nord Pacifico: dalla California meridionale attorno al bordo del Pacifico a Northern Honshū, in Giappone, incluso il Mare di Bering.",
		pacific_sand_sole_description = "La suola di sabbia del Pacifico, noto anche come unica sela di sabbia, è una specie di pesce piatto che abita le acque del Pacifico nord -orientale dove vive su fondo sabbioso.L'unica specie del genere, psettichthys, va dal mare di Bering al nord della California.",
		pacific_sanddab_description = "Il Sanddab del Pacifico è una specie di pesce piatto.È di gran lunga il sanddab più comune e condivide il suo habitat con il sanddab lungo e il sanddab maculato.È un pesce piatto di medie dimensioni, con un colore marrone chiaro o nero chiazzato marrone chiaro, occasionalmente con macchie bianche o arancioni.",
		quillback_rockfish_variant_1_description = "Il pesce roccia di Quillback, noto anche come Quillback Seaperch, è una specie di pesce marino-con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Questa specie si abita principalmente nelle barriere coralline di acqua salata.L'adulto medio pesa 2-7 libbre e può raggiungere 1 m di lunghezza. <br> <br> intorno a Cali, questi vivono per 15 anni.Intorno al Canada, questi vivono per almeno 95 anni.Dimostrando ca> noi.",
		quillback_rockfish_variant_2_description = "Il pesce roccia di Quillback, noto anche come Quillback Seaperch, è una specie di pesce marino-con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Questa specie si abita principalmente nelle barriere coralline di acqua salata.L'adulto medio pesa 2-7 libbre e può raggiungere 1 m di lunghezza. <br> <br> intorno a Cali, questi vivono per 15 anni.Intorno al Canada, questi vivono per almeno 95 anni.Dimostrando ca> noi.",
		redbanded_rockfish_description = "Il pesce roccioso in fascia rossa, noto anche come Bandit, Polo Barber, Flag Rockfish, Bandiera spagnola, Hollywood, Convict e Canary, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae. Si trova nell'Oceano Pacifico settentrionale.",
		rock_sole_description = "La suola di roccia (Lepidopsetta bilineata) è un pesce piatto della famiglia Pleuronectidae.È un pesce demersale che vive su fondi di sabbia e ghiaia a profondità fino a 575 metri (1.886 piedi), sebbene si trovi più comunemente tra 0 e 183 metri (0 e 600 piedi).",
		rosy_rockfish_description = "Sebastes Rosaceus, il rockfish roseo, è una specie di pesce marino-formato di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nel Pacifico orientale.",
		rougheye_rockfish_description = "Il rockfish Rougye è un pesce roccioso del genere Sebastes.È anche noto come BlackTroat Rockfish o Blacktip Rockfish e cresce fino a un massimo di circa 97 cm di lunghezza, con il peso record IGFA che è 14 libbre 12 once.",
		shortraker_rockfish_description = "Da adulti, i pesci rocciosi di Shortraker sono una delle più grandi specie di roccia.Sott'acqua sono rosa chiaro, rosa-arancio o rosso con macchie e selle.Tutte le pinne hanno un po 'di nero e la pinna dorsale potrebbe essere bianca con la punta.La bocca è rossa e può avere macchie nere. <br> <br> Shortraker Rockfish è tra le specie marine di lunga durata sulla Terra, essendo stata registrata pari a 157 anni.",
		silvergray_rockfish_description = "Silvergray Rockfish è una specie di roccia sottile con spine con testa ridotta.Hanno labbra scure e una mascella inferiore che è lunga e sporge oltre la mascella superiore.Hanno una manopola sinfisica di spicco sulla punta della mascella inferiore.",
		speckled_rockfish_description = "Sebastes ovalis, il pesce roccioso maculato, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova in profonde aree rocciose del Pacifico orientale.",
		squarespot_rockfish_description = "Sebastes Hopkinsi, The SquareSpot Rockfish, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Questa specie si trova nel Pacifico orientale.",
		starry_flounder_description = "La passerella stellata, nota anche come mola, ruota serena e passera dal naso lungo, è un pesce piatto comune trovato attorno ai margini del Nord Pacifico.",
		starry_rockfish_description = "Il pesce roccioso stellato, noto anche come Corsair maculato, Spotted Rockfish, Chinafish e Red Rock Cod, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico orientale.",
		tiger_rockfish_dark_version_description = "Il pesce roccioso di Tiger, chiamato anche Tiger Seaperch, pesce roccioso e pesci rocciosi a fascia nera, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico al largo del Nord America occidentale.",
		tiger_rockfish_pink_version_description = "Il pesce roccioso di Tiger, chiamato anche Tiger Seaperch, pesce roccioso e pesci rocciosi a fascia nera, è una specie di pesci marini con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario delle acque dell'Oceano Pacifico al largo del Nord America occidentale.",
		treefish_description = "Il pesce albero è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.È originario dell'Oceano Pacifico orientale.",
		vermilion_rockfish_description = "Sebastes miniatus, il pesce roccioso di Vermilion, Vermilion Seaperch, Red Snapper, Red Rock Bud e Rasher, è una specie di pesce marino con pentola di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.",
		widow_rockfish_description = "Il pesce roccioso della vedova, o bombardiere marrone, è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Si trova nell'Oceano Pacifico nord -orientale.",
		yelloweye_rockfish_adult_description = "Il pesce roccia di Yelloweye è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.e uno dei più grandi membri del genere Sebastes.Il suo nome deriva dalla sua colorazione.",
		yelloweye_rockfish_juvenile_description = "The Yelloweye Rockfish è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae. E uno dei più grandi membri del genere Sebastes. Il suo nome deriva dalla sua colorazione.",
		yellowtail_rockfish_description = "Sebastes flavidus, il pesce roccia a coda gialla o il seaperch a coda gialla è una specie di pesce marino con pinne di raggi appartenenti alla sottofamiglia Sebastinae, The Rockfishes, parte della famiglia Scorpaenidae.Questa specie vive principalmente al largo della costa del Nord America occidentale dalla California all'Alaska. <br> <br> Larve e giovani vivono vicino alla superficie, mentre gli adulti vivono in acqua più profonda su scogliera rocciose.",

		weapon_dagger = "Pugnale da cavalleria antico",
		weapon_bat = "Mazza da Baseball",
		weapon_bottle = "Bottiglia rotta",
		weapon_crowbar = "Piede di porco",
		weapon_unarmed = "Pugno",
		weapon_flashlight = "Torcia",
		weapon_golfclub = "Mazza da Golf",
		weapon_hammer = "Martello",
		weapon_hatchet = "Ascia da guerra",
		weapon_knuckle = "Tirapugni d'ottone",
		weapon_knife = "Coltello",
		weapon_machete = "Macete",
		weapon_switchblade = "Coltello a serramanico",
		weapon_nightstick = "Manganello",
		weapon_wrench = "Giratubi",
		weapon_battleaxe = "Ascia da battaglia",
		weapon_poolcue = "Stecca da biliardo",
		weapon_stone_hatchet = "Ascia di pietra",
		weapon_candycane = "Bastoncino di zucchero",

		weapon_pistol = "Pistola",
		weapon_pistol_mk2 = "Pistola Mk II",
		weapon_combatpistol = "Glock",
		weapon_appistol = "Pistola AP",
		weapon_stungun = "Taser",
		weapon_pistol50 = "Pistola .50",
		weapon_snspistol = "Pistola SNS",
		weapon_snspistol_mk2 = "Pistola sns Mk II",
		weapon_heavypistol = "Pistola pesante",
		weapon_vintagepistol = "Pistola Vintage",
		weapon_flaregun = "Pistola lanciarazzi",
		weapon_marksmanpistol = "Pistola da tiratore scelto",
		weapon_revolver = "Revolver pesante",
		weapon_revolver_mk2 = "Revolver pesante Mk II",
		weapon_doubleaction = "Revolver a doppia azione",
		weapon_raypistol = "Up-n-Atomizer",
		weapon_ceramicpistol = "Pistola in ceramica",
		weapon_navyrevolver = "Navy Revolver",
		weapon_gadgetpistol = "Pistola Perico",
		weapon_stungun_mp = "Taser (MP)",
		weapon_pistolxm3 = "Pistola WM 29",

		weapon_microsmg = "Micro SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "SMG d'assalto",
		weapon_combatpdw = "Combat PDW",
		weapon_machinepistol = "Pistola mitragliatrice",
		weapon_minismg = "Mini SMG",
		weapon_raycarbine = "Empio Portatore dell'Inferno",

		weapon_pumpshotgun = "Shotgun",
		weapon_pumpshotgun_mk2 = "Shotgun MK II",
		weapon_sawnoffshotgun = "Shotgun corto",
		weapon_assaultshotgun = "Shotgun d'assalto",
		weapon_bullpupshotgun = "Fucile Bullpup",
		weapon_musket = "Moschetto",
		weapon_heavyshotgun = "Shotgun pesante",
		weapon_dbshotgun = "Fucile a canne mozze",
		weapon_autoshotgun = "Sweeper Shotgun",
		weapon_combatshotgun = "Shotgun da combattimento",

		weapon_assaultrifle = "Fucile d'assalto",
		weapon_assaultrifle_mk2 = "Fucile d'assalto MK II",
		weapon_carbinerifle = "Carabina d'assalto",
		weapon_carbinerifle_mk2 = "Carabina MK II",
		weapon_advancedrifle = "Fucile avanzato",
		weapon_specialcarbine = "Carabina speciale",
		weapon_specialcarbine_mk2 = "Carabina speciale Mk II",
		weapon_bullpuprifle = "Fucile Bullpup",
		weapon_bullpuprifle_mk2 = "Fucile Bullpup Mk II",
		weapon_compactrifle = "Fucile compatto",
		weapon_militaryrifle = "Fucile militare",
		weapon_heavyrifle = "Fucile pesante",
		weapon_tacticalrifle = "Carabina di servizio",

		weapon_mg = "MG",
		weapon_combatmg = "MG da combattimento",
		weapon_combatmg_mk2 = "MG da combattimento MK II",
		weapon_gusenberg = "Gusenberg",

		weapon_sniperrifle = "Fucile da cecchino",
		weapon_heavysniper = "Fucile da cecchino pesante",
		weapon_heavysniper_mk2 = "Fucile da cecchino pesante MK II",
		weapon_marksmanrifle = "Fucile Marksman",
		weapon_marksmanrifle_mk2 = "Fucile Marksman MK II",
		weapon_precisionrifle = "Fucile di precisione",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Lanciagranate",
		weapon_grenadelauncher_smoke = "Lanciagranate fumogene",
		weapon_minigun = "Minigun",
		weapon_firework = "Lanciatore di fuochi d'artificio",
		weapon_railgun = "Railgun",
		weapon_hominglauncher = "Lanciarazzi guidato",
		weapon_compactlauncher = "Lanciagranate compatto",
		weapon_rayminigun = "Widowmaker",
		weapon_emplauncher = "Lancia EMP compatto",
		weapon_stinger = "RPG",
		weapon_railgunxm3 = "Cannone a rotaia",

		weapon_grenade = "Grenata",
		weapon_bzgas = "BZ Gas",
		weapon_molotov = "Molotov",
		weapon_stickybomb = "C4",
		weapon_proxmine = "Mine di prossimità",
		weapon_snowball = "Palle di neve",
		weapon_pipebomb = "Bombe a tubo",
		weapon_ball = "Palla da baseball",
		weapon_smokegrenade = "Granata fumogena", -- NOTE: this is called "Tear Gas" in the native game for some reason
		weapon_flare = "Flare",
		weapon_acidpackage = "Pacchetto acido",

		weapon_petrolcan = "Tanica",
		gadget_parachute = "Paracadute",
		weapon_fireextinguisher = "Estintore",
		weapon_hazardcan = "Tanica pericolosa",
		weapon_fertilizercan = "Fertilizzante",

		red_parachute = "Paracadute rosso",
		blue_parachute = "Paracadute blu",
		black_parachute = "Paracadute nero",

		weapon_dagger_description = "Hai fatto oscillare il look pirata-chic per un po ', ma nessuna arma viziosa per completare il look?Ottieni questo pugnale con un'elsa protetta.",
		weapon_bat_description = "MACK BASEBALL ALLUMINUME con impugnatura in pelle. Lightweight ma potente per tutti voi grandi battitori là fuori.",
		weapon_bottle_description = "Non è intelligente e non è carino ma, il più delle volte, né il ragazzo che ti viene con un coltello.Quando tutto il resto fallisce, questo fa il lavoro.",
		weapon_crowbar_description = "Crowbar pesante forgiato da acciaio temperato di alta qualità per quella leva aggiuntiva devi svolgere il lavoro.",
		weapon_unarmed_description = "Quando tutto il resto fallisce, si abbassa e lavora con quello che hai.",
		weapon_flashlight_description = "Intensifica la tua paura del buio con questa fonte di luce a corto raggio e alimentato a batteria. Fyy for Blunt Force Trauma.",
		weapon_golfclub_description = "Lunghezza standard, Mid Iron Golf Club con presa in gomma per un gioco corto letale.",
		weapon_hammer_description = "Un martello robusto e multiuso con manico in legno e artiglio curvo, questo vecchio classico inchioda ancora la competizione.",
		weapon_hatchet_description = "Fai accendere ... dei tuoi amici con questo ascia facile da nascondere facile da nascondere.",
		weapon_knuckle_description = "Perfetto per eliminare i denti d'oro o come regalo per il partner del trofeo che ha tutto.",
		weapon_knife_description = "Questo acciaio al carbonio 7\" Il coltello a lama è doppia con una colonna vertebrale per fornire capacità di pugnalata e spinta migliorate.",
		weapon_machete_description = "Il commercio di armi dell'Africa occidentale americana non riguarda solo il dare.Riscopri la vita semplice con questa mannaia arrugginita.",
		weapon_switchblade_description = "Dalla tua tasca alla profondità dell'elsa nelle costole dell'altro ragazzo in un secondo: i coltelli pieghevoli non passano mai di moda.",
		weapon_nightstick_description = "24\" Policarbiciatura del policarbonato a manico laterale.",
		weapon_wrench_description = "Prenodo perenne dei sopravvissuti apocalittici e padri violenti in tutto il mondo, apparentemente raddoppia anche come una sorta di strumento.",
		weapon_battleaxe_description = "Se è abbastanza buono per i soldati del piede medievale, le guardie di frontiera moderne e le mamme di calcio invadente, è abbastanza buono per te.",
		weapon_poolcue_description = "Ah, non c'è alcun suono soddisfacente come la crepa di una pausa perfetta, specialmente quando è la colonna vertebrale dell'altro ragazzo.",
		weapon_stone_hatchet_description = "2,5 milioni di anni di ricerca e sviluppo e siamo ancora qui.",
		weapon_candycane_description = "Un bastoncino di zucchero vestivo. E' un po' appiccicoso.",

		weapon_pistol_description = "Pistola standard.Una pistola da combattimento calibro .45 con una capacità di rivista di 12 colpi che può essere estesa a 16.",
		weapon_pistol_mk2_description = "Equilibrio, semplicità, precisione: niente mantiene la pace come una canna estesa nella bocca dell'altro ragazzo.",
		weapon_combatpistol_description = "Una pistola semiautomatica compatta e leggera progettata per le forze dell'ordine e l'uso della difesa personale.Magazino da 12 colpi con opzione per estendere a 16 round.",
		weapon_appistol_description = "Pistola ad alta penetrazione, completamente automatica.Contiene 18 colpi nel caricatore con l'opzione per estendersi a 36 round.",
		weapon_stungun_description = "Divertimento zaptic per tutta la famiglia!",
		weapon_pistol50_description = "Non sparare mai a un uomo di grande calibro con un piccolo proiettile calibro.",
		weapon_snspistol_description = "Come i preservativi o la lacca, questo si adatta in tasca per una notte in città.Il prezzo di una bottiglia in un club, è la metà accurata come un sughero di champagne e il doppio mortale.",
		weapon_snspistol_mk2_description = "L'ultimo filler della borsa: se vuoi rendere sabato sera davvero speciale, questo è il tuo biglietto.",
		weapon_heavypistol_description = "Il campione dei pesi massimi della rivista Fed, il mondo semi-automatico per pistole.Offre ogni volta l'accuratezza e un serio allenamento dell'avambraccio.",
		weapon_vintagepistol_description = "Ciò di cui hai veramente bisogno è una pistola più riconoscibile.Distinguersi dalla folla a una rapina a mano armata con questa pistola incisa.",
		weapon_flaregun_description = "Utilizzare per segnalare angoscia o eccitazione ubriaca.ATTENZIONE: puntare direttamente contro gli individui può causare combustione spontanea.Parte delle rapide.",
		weapon_marksmanpistol_description = "Non per il rischio avversario.Fallo contare perché ricaricherai tanto quanto sparare.",
		weapon_revolver_description = "Una pistola con abbastanza potere di fermo per far cadere un rinoceronte pazzo e abbastanza pesante da batterlo a morte se sei senza munizioni.",
		weapon_revolver_mk2_description = "Se riesci a sollevarlo, questo è il più vicino a sparare a qualcuno con un treno merci.",
		weapon_doubleaction_description = "Perché a volte la vendetta è un piatto meglio servito sei volte, in rapida successione, proprio tra gli occhi.",
		weapon_raypistol_description = "Speciale Republican Space Ranger, fresco dalla guerra galattica al socialismo: nessuna munizione, nessuna rivista, solo un brutale impulso di energia dopo l'altro.",
		weapon_ceramicpistol_description = "Non la ceramica di tua nonna.Sebbene questa pistola di dimensioni pinta sia abbastanza piccola da adattarsi alla sua borsa e non farà scattare un rilevatore di metalli.",
		weapon_navyrevolver_description = "Un vero pezzo del museo.Vuoi sapere come è stato vinto l'Occidente: velocità di ricarica lenta e un mucchio di spargimenti di sangue.",
		weapon_gadgetpistol_description = "Un tiro mortale.Non essere prezioso.Non sfregerai la finitura del nitruro di titanio.",
		weapon_stungun_mp_description = "Divertimento zaptastico per tutta la famiglia",
		weapon_pistolxm3_description = "Una pistola compatta e leggera che spara colpi da 9 mm. Molto efficace per gli incontri ravvicinati.",

		weapon_microsmg_description = "Combina il design compatto con un alto tasso di incendio a circa 700-900 round al minuto.",
		weapon_smg_description = "Questo è noto come una buona pistola a tutto tondo.Leggero con uno spettacolo accurato e una capacità di caricatore da 30 colpi.",
		weapon_smg_mk2_description = "Leggero, compatto, con una velocità di fuoco per morire in modo molto disordinato: trasformare qualsiasi spazio confinato in una casella di uccisione al clic di un grilletto ben oliato.",
		weapon_assaultsmg_description = "Una pistola per sottomissione ad alta capacità che è sia compatta che leggera.Mantiene fino a 30 proiettili in una rivista.",
		weapon_combatpdw_description = "Chi ha detto che le armi personali non potrebbero essere degne di personale militare?Grazie ai nostri lobbisti, non al Congresso.Soppressore integrale.",
		weapon_machinepistol_description = "Questo completamente automatico è il tamburo del rullante per il tuo basso v8 bimotore: nessun drive-by suona bene senza di esso.",
		weapon_minismg_description = "Sempre più popolare da quando il team di marketing ha guardato oltre le unità di specifiche e ha iniziato a prendersi cura dei ragazzini in aree a basso reddito.",
		weapon_raycarbine_description = "Speciale Republican Space Ranger.Se vuoi trasformare un uomo verde in un piccolo appiccicone verde, questo è l'unico modo americano per farlo.",

		weapon_pumpshotgun_description = "Fucilo standard ideale per il combattimento a corto raggio.Una diffusione ad alto proiettile compensa la sua precisione inferiore a lungo raggio.",
		weapon_pumpshotgun_mk2_description = "Solo una cosa pompa più che un'azione di un'azione della pompa: fai attenzione, il rinculo è quasi mortale come lo scatto.",
		weapon_sawnoffshotgun_description = "Questo fucile a canna singola e segata compensa la sua bassa gamma e la capacità delle munizioni con efficienza devastante in combattimento ravvicinato.",
		weapon_assaultshotgun_description = "Fuggito completamente automatico con un caricatore a 8 round e un alto tasso di fuoco.",
		weapon_bullpupshotgun_description = "Più che compensare il suo tasso di fuoco lento e pump-action con la sua gamma e la sua diffusione.Decima qualsiasi cosa nel suo percorso proiettile.",
		weapon_musket_description = "Armati di nient'altro che moschetti e un complesso di superiorità, gli inglesi hanno assunto la metà del mondo.Possedere la pistola che ha costruito un impero.",
		weapon_heavyshotgun_description = "L'arma da raggiungere quando devi assolutamente fare un orribile casino della stanza.Best usate solo superfici easy wipe solo.",
		weapon_dbshotgun_description = "Fai una cosa, fallo bene.Chi ha bisogno di un alto tasso di fuoco quando il tuo primo colpo trasforma l'altro ragazzo in una bella nebbia?",
		weapon_autoshotgun_description = "Quanti strumenti efficaci per il controllo antisommossa puoi infilare nei pantaloni?Ok, due.Ma questo è l'altro.",
		weapon_combatshotgun_description = "C'è solo un fucile semi-automatico con una frequenza di fuoco che pone le campane di allarme LSFD e lo stai guardando.",

		weapon_assaultrifle_description = "Questo fucile d'assalto standard vanta una rivista di grande capacità e una precisione a distanza.",
		weapon_assaultrifle_mk2_description = "La revisione definitiva di un classico di tutti i tempi: tutto ciò che serve è un po 'di lavoro e dopo tutto può uccidere.",
		weapon_carbinerifle_description = "Combinando l'accuratezza a lunga distanza con un caricatore ad alta capacità, il fucile Carbine può essere affidato per fare il colpo.",
		weapon_carbinerifle_mk2_description = "Questa è una potenza di fuoco artigianale su misura: non si può fornire una grandine di proiettili con più amore e cura se li hai inseriti a mano.",
		weapon_advancedrifle_description = "Il più leggero e compatto di tutti i fucili d'assalto, senza compromettere l'accuratezza e il tasso di incendio.",
		weapon_specialcarbine_description = "Combinando l'accuratezza, la manovrabilità, la potenza di fuoco e il rinculo basso, questo è un fucile d'assalto estremamente versatile per qualsiasi situazione di combattimento.",
		weapon_specialcarbine_mk2_description = "Il Jack of All Trade ha appena ricevuto un serio aggiornamento: inchina al maestro.",
		weapon_bullpuprifle_description = "L'ultima importazione cinese che prende d'assalto l'America, questo fucile è noto per la sua maneggevolezza equilibrata.Leggero e molto controllabile nel fuoco automatico.",
		weapon_bullpuprifle_mk2_description = "Così preciso, così squisito, non è tanto una grandinata di proiettili quanto una sinfonia.",
		weapon_compactrifle_description = "Metà delle dimensioni, tutta la potenza, raddoppiare il rinculo: non c'è modo più rischioso di dire \"Sto compensando qualcosa\".",
		weapon_militaryrifle_description = "Questo fucile d'assalto immensamente potente è stato progettato per soldati altamente qualificati ed eccezionalmente qualificati.Sì, puoi acquistarlo.",
		weapon_heavyrifle_description = "Più pesante significa meglio, giusto?!Sì, andiamo con quello.",
		weapon_tacticalrifle_description = "L'hardware indispensabile di questa stagione per le forze dell'ordine, il personale militare e chiunque sia bloccato in una lotta fino alla morte con le forze dell'ordine o il personale militare.",

		weapon_mg_description = "Mitragliatrice per scopi generici che combina un design robusto con prestazioni affidabili.Potenza penetrativa a lungo raggio.Molto efficace contro grandi gruppi.",
		weapon_combatmg_description = "Mitragliatrice compatta e compatta che combina un'eccellente manovrabilità con un elevato tasso di fuoco a un effetto devastante.",
		weapon_combatmg_mk2_description = "Non puoi mai avere troppo di buona cosa: dopo tutto, se il primo colpo conta, allora i successivi centinaia o giù di lì devono contare per il doppio.",
		weapon_gusenberg_description = "Completa il tuo look con una pistola proibizionaria.Sembra fantastico sporgere dalla finestra di un roosevelt o abbinato a un abito gessato.",

		weapon_sniperrifle_description = "Fucile da cecchino standard.Ideale per situazioni che richiedono precisione a lungo raggio.Le limitazioni includono una velocità di ricarica lenta e una velocità di fuoco molto bassa.",
		weapon_heavysniper_description = "Presenta round di armature per danni pesanti.Viene fornito con portata laser di serie.",
		weapon_heavysniper_mk2_description = "Lontano, ma sempre intimo: se stai cercando una base sicura per quella relazione a lunga distanza, questo è tutto.",
		weapon_marksmanrifle_description = "Che tu sia da vicino o che sei sconcertante, quest'arma farà il lavoro.Uno strumento a più range per gli strumenti.",
		weapon_marksmanrifle_mk2_description = "Conosciuto nei circoli militari come \"Il dislocatore\", Questo set di mod distruggerà sia il bersaglio che la spalla, in quell'ordine.",
		weapon_precisionrifle_description = "Un fucile per i perfezionisti.Perché perché accontentarti di destro tra gli occhi, quando si potrebbe avere il giusto-superiori-Frontale-Gyrus?",

		weapon_rpg_description = "Un'arma portatile, lanciata alle spalle e anticarro che spara testate esplosive.Molto efficace per abbattere veicoli o grandi gruppi di assalitori.",
		weapon_grenadelauncher_description = "Un lanciatore di granate compatto e leggero con funzionalità semiautomatica.Mantiene fino a 10 round.",
		weapon_grenadelauncher_smoke_description = "\"Ottieni una bomba fumante, ottieni una granata fumogena, ottieni una granata fumogena!\" - Oprah",
		weapon_minigun_description = "Una mitragliatrice a 6 barili devastante che presenta barili rotanti in stile gatling.Tasso di incendio molto elevato (da 2000 a 6000 round al minuto).",
		weapon_firework_description = "Metti il tocco in flare con questo lanciatore di fuochi d'artificio, garantito per sollevare alcuni OOH e AAH dalla folla.",
		weapon_railgun_description = "Tutto quello che devi sapere è: magneti, e fa cose orribili alle cose a cui è indicato.",
		weapon_hominglauncher_description = "Launcher missile a infrarossi e guidati e forget.Per tutte le tue esigenze target in movimento.",
		weapon_compactlauncher_description = "I focus group usando il modello normale hanno suggerito che era troppo accurato e lo ha trovato imbarazzante da usare con una mano sull'acceleratore.Correzione facile.",
		weapon_rayminigun_description = "Speciale Republican Space Ranger.Vai avanti, dì che sto compensando qualcosa.IO TI SFIDO.",
		weapon_emplauncher_description = "Spara a droni ed elicotteri per renderli assonnati.",
		weapon_stinger_description = "Un lanciamissili terra-aria a spalla per abbattere gli aerei nemici",
		weapon_railgunxm3_description = "Tutto quello che devi sapere è: - magneti, e fa cose orribili alle cose a cui è puntato.",

		weapon_grenade_description = "Granata di frammentazione standard.Tira il perno, lancia, quindi trova la copertura.Ideale per eliminare gli assalitori cluster.",
		weapon_bzgas_description = "Usa per le persone di hot-boxing che non ti piacciono.",
		weapon_molotov_description = "Arma incendiaria grezza ma altamente efficace.Nessun happy hour con questo cocktail.",
		weapon_stickybomb_description = "Una carica esplosiva di plastica dotata di un detonatore remoto.Può essere lanciato e quindi far esplodere o attaccare a un veicolo, quindi far esplodere.",
		weapon_proxmine_description = "Lascia un regalo ai tuoi amici con queste mine di terra del sensore di movimento.Breve ritardo dopo l'attivazione.",
		weapon_snowball_description = "Sii alla ricerca e pronto a radunare il tuo equipaggio per un amichevole lotta con la palla di neve, ma sii avvisato, quei piccoli ficchi ghiacciati possono fare le valigie un wallop.",
		weapon_pipebomb_description = "Ricorda, non conta come un IED quando lo acquisti in un negozio e lo usi in un paese del primo mondo.",
		weapon_ball_description = "Firmato da Babe Ruth, totalmente non un falso.",
		weapon_smokegrenade_description = "Grenata a gas lacrimogeni, particolarmente efficace nel inabilitare più assalitori.L'esposizione sostenuta può essere letale.",
		weapon_flare_description = "Lanciare per goccia d'aria.",
		weapon_acidpackage_description = "Un pacchetto di acido. Usalo per fare un pasticcio.",

		weapon_petrolcan_description = "Lascia una scia di benzina che può essere accesa. <br> <br> Rimanna: ${petrolAmount}%.",
		gadget_parachute_description = "Questo paracadute sportivo in nylon presenta un design di parafoil ariete per un aumento del controllo sulla direzione e sulla velocità.",
		weapon_fireextinguisher_description = "Estintore aka \"Smoke machine\".",
		weapon_hazardcan_description = "Come un gas può, ma inutile.",
		weapon_fertilizercan_description = "Buona vecchia lattina di merda, niente di meglio per le tue colture.",

		red_parachute_description = "Proprio come il normale paracadute ma in rosso.",
		blue_parachute_description = "Proprio come il normale paracadute ma in blu.",
		black_parachute_description = "Proprio come il normale paracadute ma in nero.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Fucile da caccia",
		weapon_addon_huntingrifle_description = "Il tuo fucile per scopi di caccia.",

		weapon_addon_vfcombatpistol = "Pistola da combattimento VF",
		weapon_addon_vfcombatpistol_description = "Sorridi e aspetta il flash.",

		weapon_addon_dp9 = "Pistola D&P 9",
		weapon_addon_dp9_description = "12 possibilità di catturare il doppiaggio.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Il sistema di protezione domestica wireless originale.",

		weapon_addon_gardonepistol = "Pistola Gardone",
		weapon_addon_gardonepistol_description = "In caso di dubbio, svuota la rivista.",

		weapon_addon_endurancepistol = "Pistola di resistenza",
		weapon_addon_endurancepistol_description = "Il Viagra delle pistole",

		weapon_addon_sentinelshotgun = "Sentinel Shotgun",
		weapon_addon_sentinelshotgun_description = "Distributore di omicidio unidirezionale.",

		weapon_addon_sentinelbbshotgun = "Beanbag Shotgun",
		weapon_addon_sentinelbbshotgun_description = "Sacchi di divertimento.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "Taser",
		weapon_addon_stungun_description = "Divertimento zaptic per tutta la famiglia!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Piccolo e veloce, un po 'come la persona che lo tiene...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Esipante e veloce, il partner perfetto da avere nella tua squadra.Finché la testa rossa non la tiene.",

		weapon_addon_pp19 = "PP-19 Vityaz",
		weapon_addon_pp19_description = "L'apice dell'eccellenza russa, perfetta per qualsiasi tipo di \"Raid\".",

		weapon_addon_m9a3 = "Beretta M9A3",
		weapon_addon_m9a3_description = "Tutto ciò di cui hai bisogno per fare le tue azioni sporche a buon mercato.",

		weapon_addon_357mag = "357 Magnum",
		weapon_addon_357mag_description = "Dalle fermate del traffico agli zombi, questo revolver è un migliore amico degli sceriffi.",

		weapon_addon_m870 = "Remington M870",
		weapon_addon_m870_description = "Sport perfetto e fucile da caccia, anche se Shoot Dannys non è davvero uno sport ...?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "La mitragliatrice più perfetta che abbia mai esistito, non dimenticare la tuta.",

		weapon_addon_tacknife = "Ultimate Tactical Knife",
		weapon_addon_tacknife_description = "Infine, hai raggiunto il livello 100. Il colonnello sarebbe orgoglioso.",

		weapon_addon_reaper = "Reaper",
		weapon_addon_reaper_description = "Machete ma più elegante.",

		weapon_addon_berserker = "Berserker",
		weapon_addon_berserker_description = "Ascia fresca.",

		weapon_addon_katana = "Katana",
		weapon_addon_katana_description = "Ninja, yeah.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Il futuro è ora vecchio, solo in un calibro più piccolo...",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Le dimensioni di una mitragliatrice con la balistica terminale del round NATO da 5,56 mm.Sviluppato per applicazioni tattiche speciali da parte di forze speciali di polizia e militari.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant pog.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "оставайся привязанным или хлопай в ладоши.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "Non siamo più a Londra Bruv.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "\"Stay strapped or get clapped\" - George Washington (Probably)",

		weapon_addon_glock = "Glock 17",
		weapon_addon_glock_description = "La pistola più famosa al mondod.",

		weapon_addon_colt = "Colt 1851 Navy",
		weapon_addon_colt_description = "La Colt 1851 Navy è un revolver ad azione singola utilizzato dalla Marina degli Stati Uniti durante il XIX secolo.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "L'H&K 433 è un fucile d'assalto tedesco sviluppato da Heckler & Koch nel 2009.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "La pistola perfetta per la persona perfetta, ma non dimenticare la tuta.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "L'H&K 416, la Ferrari delle armi da fuoco: elegante, potente e che farà sicuramente girare la testa. È come avere un personal trainer per il dito sul grilletto, che fornisce risultati che renderanno gelosi i tuoi nemici. Saluta la tua nuova migliore amica (miglior arma da fuoco per sempre)!"
	},

	items = {
		move_to_repair = "Spostati qui per riparare il veicoloe.",
		repairing_vehicle = "Riparazione del veicolo",
		using_first_aid_kit = "Utilizzo del kit di pronto soccorso",
		using_bandages = "Utilizzo di bende",
		using_ifak = "Usando IFAK",
		move_to_wash = "Spostati qui per lavare il veicolo",
		vehicle_too_clean = "Il veicolo è troppo pulito per essere lavato.",
		move_to_put_fake_plate = "Spostati qui per mettere su una targa falsa.",
		unable_to_repair = "Non sei in grado di riparare il veicolo mentre ci sono giocatori all'interno.",
		failed_lockpicking = "Lockpicking non riuscito",
		lockpicking_succeeded = "Lockpicking è riuscito.",
		hotwiring_vehicle = "Scassinando Veicolo",
		lockpick_broke = "Lockpick si è rotto",
		failed_hotwire = "Hotwire fallito",
		unpacking_green_rolls = "Disimballare i panini verdi",
		you_do_not_have_enough_rolling_paper = "Non hai abbastanza carta rotanti.",
		rolling_joint = "Spinello rotolante",
		rolling_joints = "Spinello rotolanti",
		changing_license_plate = "Modifica della targa",
		equipping_parachute = "Equipaggiamento ${itemName}",
		lockpicking_vehicle = "Scassinando Veicolo",
		illegal_weather_name = "Tentare di usare un incantesimo meteorologico con un nome meteorologico illegale.",
		equipping_body_armor = "Equipaggiare l'armatura del corpo",
		illegal_burger_shot_delivery_item_id = "Tentare di utilizzare un elemento di consegna di hamburger con un documento di identità illegale.",
		illegal_lighter_item_id = "Tentare di utilizzare un articolo più leggero con un documento di identità illegale.",
		unable_to_use_lighter_in_vehicle = "Non sei in grado di utilizzare un accendino in un veicolo.",
		not_possible_in_a_vehicle = "Questa azione non è possibile in un veicolo.",
		just_used_bandage = "Hai appena usato un kit di pronto soccorso, aspetta un po 'prima di usarne un altro.",
		drank_gasoline_death = "Avvelenamento da benzina",
		drank_bleach_death = "Avvelenamento da candeggina",

		failed_burger_shot_delivery = "Non è riuscito ad aprire il pasto Burgershot.",
		failed_bean_machine_delivery = "Impossibile aprire la consegna della macchina per fagioli.",

		burger_shot_delivery_empty = "Quel pasto Burgershot sembrava essere vuoto.",
		bean_machine_delivery_empty = "Quella consegna della macchina per fagioli sembrava vuota.",

		logs_used_weather_spell_title = "Incantesimo meteo usato",
		logs_used_weather_spell_details = "${consoleName} incantesimo meteo usato `${itemName}`.",

		you_have_used_jail_card = "Hai usato un file'Esci dalla cartolina per la prigione'!",
		you_are_not_in_jail = "Non sei in prigione.",

		stored_map_location = "Posizione della mappa aggiornata correttamente.",
		failed_location_map = "Impossibile aggiornare la posizione della mappa.",
		updated_waypoint = "Imposta waypoint sulla posizione della mappa.",

		cleared_map = "Posizione della mappa memorizzata cancellata.",
		failed_clear_map = "Impossibile cancellare la posizione della mappa memorizzata.",
		clear_map_invalid_slot = "Spazio inventario non valido."
	},

	jackpot = {
		press_to_deposit = "Premi ~INPUT_REPLAY_SHOWHOTKEY~ per depositare oggetti sul jackpot online.",
		can_only_withdraw_at_casino = "Puoi prelevare solo al Casinò.",

		jackpot = "Jackpot",
		inventory = "Inventario",
		history = "Storia",
		no_items_in_inventory = "Sembra che tu non abbia articoli nel tuo inventario virtuale.",
		you_can_deposit_at_the_casino = "Puoi depositare oggetti al casinò.",
		close = "Chiudi",
		bet = "Scommetti",
		your_chance = "La tua chance: ${chance}%",
		character_bet = "${characterName} scommetti ${itemAmount} oggetto(i) valore $${itemWorth}",
		pot = "Vassoio: $${jackpotWorth}",
		items = "Oggetti: ${jackpotItemAmount}",
		withdraw = "Preleva (${withdrawAmount})",
		quick_sell = "Vendita veloce ($${quickSellWorth})",
		inventory_value = "Valore: $${inventoryWorth}",
		inventory_total_items = "Oggetti totali: ${inventoryTotalItems}",
		daily_fee_information = "Alle 8 di mattina ogni giorno, il valore degli oggetti >= 5% del valore totale del tuo inventario verrà rimosso come 'tassa di stoccaggio'.",

		take_fee_no_permissions = "Il giocatore ha tentato di prendere le tasse del jackpot senza le autorizzazioni appropriate.",
		took_jackpot_fees = "Ha tassato il jackpot. Rimosso ${removedTotalItems} oggetti dal valore $${removedTotalWorth} da ${inventories} inventario."
	},

	jail = {
		press_to_leave_jail = "Premi ~INPUT_CONTEXT~ per uscire dalla prigione.",

		menu_title = "Menù prigione",
		check_remaining_time = "Controlla il tempo di rimanenza",
		leave_city = "Lascia la città",
		leave_jail = "Lascia la prigione",
		close_menu = "Chiudi menù",

		sentence_reduced = "La tua sentenza è stata ridotta di ${amount} mesi, ora hai ${remaining} mesi rimasti.",
		sentence_over = "La tua sentenza è finita.",
		remaining_time = "Tempo rimasto: ${remaining} mesi.",
		jailed = "Sei stato messo in prigione per ${amount} mesi.",

		mission_help_1 = "Premi ~INPUT_CONTEXT~ per pulire il pavimento.",
		mission_help_2 = "Premi ~INPUT_CONTEXT~ per mangiare qualcosa.",
		mission_help_3 = "Premi ~INPUT_CONTEXT~ per allenarti.",

		mission_1 = "Pulendo il pavimento.",
		mission_2 = "Mangiando un panino.",
		mission_3 = "Allenandosi.",

		mission_blip = "Missioni della prigione"
	},

	kiosks = {
		read_catalog = "Premi ~g~${InteractionKey} ~w~per leggere il catalogo"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Usa il guinzaglio",
		putting_leash_on = "Mettere il guinzaglio",
		press_to_take_leash_off = "[${InteractionKey}] Togliere il guinzaglio",
		takeing_leash_off = "Togliersi il guinzaglio."
	},

	letterboxes = {
		press_to_access = "Premi ~g~${SeatEjectKey} ~w~per accedere al ${type}",
		letterbox_broken = "La ${type} è rotta.",

		type_letterbox = "Cassetta delle lettere",
		type_newsdisp = "Dispensatore",
		type_postbox = "Casella postale"
	},

	locate = {
		invalid_filter_value = "Valore del filtro non valido.",
		locate_failed = "Impossibile individuare la corrispondenza dell'entità `${filter}`.",
		something_went_wrong = "Impossibile individuare l'entità.",
		locate_success = "Corrispondenza entità posizionata con successo `${filter}` at (${x}, ${y}, ${z}).",

		locate_entity_no_permissions = "Il giocatore ha tentato di individuare un'entità senza adeguato autorizzazione.",

		locate_entity_logs_title = "Entità situata",
		locate_entity_logs_details = "${consoleName} ha tentato di individuare il tipo di entità `${filterType}` con valore `${filterValue}`."
	},

	login = {
		exit_city = "Esci dalla Citta.",
		press_to_exit_city = "Premi ~g~${InteractionKey} ~w~ per uscire dalla citta.",
		bad_words_in_character_creation = "Tentativo di creare un personaggio con una possibile parolaccia nel backstory: \"${badWords}\"",
		disallowed_words_in_character_name = "Tentativo di creare un personaggio con un non appropriato: \"${characterName}\"",
		disallowed_birthday_ban = "Tentativo di creare un personaggio con un compleanno con la data non idonea: \"${birthday}\"",

		welcome_to = "Benvenuto su",
		press = "Premi",
		enter = "Entra",
		to_join = "per Joinare",
		changelogs = "Changelogs",
		fetching_character_data = "Recupero dei dati del personaggio...",
		yes = "Si",
		no = "No",
		exit_game = "Esci dal Gioco",
		are_you_sure_you_want_to_exit = "Sei sicuro di voler uscire dal gioco?",
		exiting_game = "Uscendo dal gioco...",
		delete_character = "Cancella",
		select_character = "Seleziona",
		new_character = "Nuovo personaggio",
		empty_slot = "Slot vuoto",
		male = "Maschio",
		female = "Femmina",
		name = "Nome",
		dob = "DOB",
		born = "Nato ${dob}",
		gender = "Sesso",
		cash = "Denaro",
		bank = "Banca",
		story = "Storia",
		loading_character = "Caricando il personaggio...",
		deleting_character = "Cancellando il personaggio...",
		create_character = "Creando il personaggio",
		first_name = "Nome",
		last_name = "Cognome",
		date_of_birth = "Data di nascita",
		character_backstory = "Background del Personaggio",
		cancel = "Cancella",
		complete = "Completa",
		creating_character = "Creando il personaggio...",
		are_you_sure_you_want_to_delete = "Sei sicuro di voler eliminare questo personaggio? Questa azione non può essere annullata.",
		stop_download = "Stop Download",
		start_download = "Start Download",
		slow_download = "Rallenta il download",
		regular_download = "Download regolare",
		back = "Indietro",
		copy_license = "ID Licenza",
		copy_license_success = "Copiato!",
		cache_assets = "Risorse della cache",
		download_assets = "Vuoi scaricare e memorizzare nella cache la maggior parte delle risorse del server? In questo modo porterà ad alcune cose:",
		cache_assets_less_lag = "Potenzialmente meno picchi di ritardo, meno frame persi e meno picchi di ping durante il gioco. Soprattutto se utilizzi hardware di fascia bassa o una connessione più lenta.",
		cache_assets_crashes = "Potrebbe bloccarsi il gioco durante il processo.",
		cache_assets_restart = "Una volta completato, ti consigliamo di riavviare il gioco in quanto potrebbe causare ritardi per il resto di questa sessione.",
		cache_assets_disk = "Questo occuperà un po' di spazio su disco, quindi assicurati che ci sia spazio disponibile. Dopo un aggiornamento potrebbe anche valere la pena cancellare la vecchia cache per liberare spazio.",
		vehicles = "Veicoli",
		objects = "Oggetti",
		peds = "Peds",
		clothing = "Vestiti",
		main_menu = "Main Menu",
		gta_settings = "Impostazioni GTA",
		discord = "Discord",
		framework = "Framework",
		rules = "Regole del server",
		notice = "Avviso",
		language = "Lingua",
		support_the_server = "Supporta il server",
		battle_royale = "Battle Royale",
		arena = "Arena",
		queue = "In coda",
		queue_position_with_priority = "🐌 Sei ${queuePosition}/${queueTotal} in conda con ${queuePriorityName} priorità. 🕐${queueTime}",
		queue_position_without_priority = "🐌 sei ${queuePosition}/${queueTotal} in coda. 🕐${queueTime}",
		you_are_through = "Sei in mezzo!",
		join_server = "Entrando nel server",
		tired_of_queueing = "Stanco di stare in coda? Supportaci per avere la priorità in coda!",
		joining_battle_royale = "Unendomi alla Battle Royale",
		joining_arena = "Unendomi all'Arena",
		refresh = "Aggiorna",
		refreshing = "Aggiornando...",

		missing_character_creation_data = "Dati di creazione del personaggio mancanti.",
		invalid_first_name = "Nome mancante o non valido (da 1 a 100 caratteri).",
		invalid_last_name = "Cognome mancante o non valido (da 1 a 100 caratteri).",
		invalid_date_of_birth = "Data di nascita mancante o non valida.",
		invalid_backstory = "Storia mancante o non valida (da 1 a 5.000 caratteri).",

		bad_words = "Ci sono alcune parolacce nel nome del tuo personaggio o nel retroscena.",
		disallowed_name = "Ci sono alcune parole non consentite nel nome del tuo personaggio.",
		disallowed_birthday = "La tua data di nascita non è consentita.",
		numbers_not_allowed = "I numeri non sono consentiti nel nome del personaggio.",
		something_went_wrong = "Qualcosa è andato storto durante il tentativo di creare il tuo personaggio.",
		character_slot_occupied = "Il tuo slot personaggio è già occupato.",
		name_already_taken = "Qusto nome è già stato preso.",
		illegal_character_slot = "Non sei in grado di creare un personaggio in questo slot.",
		character_already_loaded = "Hai già caricato un personaggio.",

		new_citizen = "Nuovo cittadino",
		los_santos_police_dept = "LOS SANTOS POLICE DEPT",

		welcome_msg_title = "Benvenuto in ${communityName}!",
		welcome_msg = "Hai ricevuto alcuni oggetti per aiutarti a iniziare. Puoi usare gli oggetti nella tua hotbar usando i tasti 1-5.\n\n*Premi 1 per leggere la Brochure.*",

		press_to_go_back_to_menu = "Premi ~g~${InteractionKey}~w~ per tornare al menù.",
		go_back_to_menu = "Ritorna al menù.",

		developer = "Developer",
		super_admin = "Super Admin",
		staff = "Staff",
		reconnect = "Reconnect",
		christmas = "Christmas",
		casino = "Casino",
		random = "Casuale",
		beginner = "Principiante",
		custom = "Personalizzato",

		appreciated_tier = "Appreciated Tier",
		respected_tier = "Respected Tier",
		heroic_tier = "Heroic Tier",
		legendary_tier = "Legendary Tier",
		godlike_tier = "Godlike Tier"
	},

	loot = {
		press_to_pick_up = "Premi ~INPUT_CONTEXT~ raccogliere ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "Annuncio Lotteria",
		lottery_about_to_roll = "Un vincitore verrà disegnato in 5 minuti per la lotteria di oggi.Il vaso totale è attualmente a $${totalPot} dove hai messo $${betAmount}. La tua possibilità di vincere è ${odds}%.",
		current_lottery_pot = "Il vaso totale è attualmente a $${totalPot} dove hai messo $${betAmount}. La tua possibilità di vincere è ${odds}%.",
		drew_a_lottery_winner = "È stato disegnato un vincitore della lotteria.",
		roll_lottery_no_permission = "Il giocatore ha tentato di lanciare la lotteria ma non aveva il permesso di farlo.",
		winner_has_been_picked = "${fullName} ha vinto il vaso della lotteria di $${totalPot}! Scommettono $${betAmount} E la loro possibilità di vincere era ${odds}%.",
		claimed_lottery_winnings = "Rivendicato tutte le vincite della lotteria.",
		no_lottery_winnings = "Non hai vincere la lotteria non reclamate.",
		internal_server_error = "Si è verificato un errore del server interno.",
		use_disabled_animal = "Non puoi usare la lotteria come pedopone.",

		lottery_log_title = "Ha vinto lotteria",
		lottery_log_description = "${fullName} (#${characterId}) ha vinto il vaso della lotteria di $${totalPot}. Scommettono $${betAmount}."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Tieni premuto ~INPUT_CONTEXT~ per spingere la ruota della fortuna. Ti costerà $${cost}.",
		hold_to_spin_lucky_wheel_free_one_left = "Tieni premuto ~INPUT_CONTEXT~ per spingere la ruota della fortuna. Hai soltanto 1 giro rimanente oggi.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Tieni premuto ~INPUT_CONTEXT~ per spingere la ruota della fortuna. Hai ${spins} giri rimanenti oggi.",
		continue_holding_to_spin_lucky_wheel = "Tieni premuto ~INPUT_CONTEXT~ per spingere la ruota della fortuna.",
		unable_to_spin_lucky_wheel = "Hai già girato la ruota fortunata quanto consentito oggi.Torna più tardi per un altro giro!",
		unable_to_spin_lucky_wheel = "Hai già girato la ruota fortunata quanto consentito oggi.Successivo giro disponibile in ${displayTime}.",
		lucky_wheel_is_occupied = "La ruota fortunata è attualmente occupata.attendere prego.",
		not_enough_balance_to_spin = "Non hai abbastanza soldi per girare la ruota.Il costo è $${cost}.",
		logs_lucky_wheel_reward_title = "Ricompensa della ruota fortunata",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} ha girato la ruota e ha vinto un veicolo.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} è stato assegnato con successo un veicolo con il nome del modello `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} ha girato la ruota e ha vinto $${amount}.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} ha girato la ruota ed ha vinto $${amount} nell'esatto valore dato in fishes.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} ha girato la ruota e ha vinto gioielli con il nome di `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} ha girato la ruota e ha vinto un oggetto con il nome di `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} ha girato la ruota e ha vinto una settimana di priorità in coda."
	},

	magazines = {
		issue_id = "Problema numero #${issueId}",
		releases_updated = "Rilasciati aggiornamenti.",
		no_release_changes = "Non sono state apportate modifiche al rilascio.",
		refresh_magazines_no_permissions = "Il giocatore ha tentato di aggiornare le riviste senza le autorizzazioni appropriate."
	},

	mdt = {
		mdt_title = "Terminale dati mobile",
		loading_reports = "Caricando i report...",
		failed_report_load = "Caricamento report non riuscito.",
		no_reports = "Nessun report.",
		loading = "Caricamento...",

		title_placeholder = "Titolo",
		body_placeholder = "Il mio report..."
	},

	mechanics = {
		move_here_check = "Spostati qui per verificare gli aggiornamenti",
		checking_upgrades = "Controllo degli aggiornamenti del veicolo",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} e ${turbo}.",

		has_no_turbo = "non ha turbo installato",
		has_turbo = "ha un turbo installato",

		armor_0 = "No armatura",
		armor_1 = "Armatura 20%",
		armor_2 = "Armatura 40%",
		armor_3 = "Armatura 60%",
		armor_4 = "Armatura 80%",
		armor_5 = "Armatura 100%%",

		brakes_0 = "Stock Freni",
		brakes_1 = "Street Freni",
		brakes_2 = "Sport Freni",
		brakes_3 = "Race Freni",

		transmission_0 = "Stock Transmissioni",
		transmission_1 = "Street Transmissioni",
		transmission_2 = "Sport Transmissioni",
		transmission_3 = "Race Transmissioni",

		engine_0 = "Predefinito Motore",
		engine_1 = "Motore EMS Level 2",
		engine_2 = "Motore EMS Level 3",
		engine_3 = "Motore EMS Level 4",
		engine_4 = "Motore EMS Level 5",

		no_nearby_vehicle = "Nessun veicolo vicino.",
		already_checking_upgrades = "Stai già controllando le melodie dei veicoli.",
		engine_is_running = "Il motore dei veicoli è in funzione."
	},

	meth = {
		press_to_sell_meth = "Premi ~INPUT_CONTEXT~ per vendere meth.",
		local_not_interested = "Il locale non sembra essere interessato in questo momento.",
		selling_meth = "Vendendo Meth."
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Pietra di perforazione, [${SeatEjectKey}] Scansionare la pietra",
		scan_stone = "[${SeatEjectKey}] Scansionare la pietra",
		drill_stone = "[${InteractionKey}] Pietra di perforazione",
		scanning_stone = "Scansione (${percentage}%)",
		drilling = "Perforazione (${percentage}%)",
		failed_drill_stone = "Non è riuscito a perforare la pietra.",
		drill_no_drops = "Non hai trovato gemme in questa pietra.",
		drill_drops = "Hai trovato alcune gemme in questa pietra.",
		used_drill = "Il tuo trapano si è rotto.",
		still_shook = "Sei ancora scosso dall'ultima esplosione e non hai trovato gemme in questa pietra.",

		recharging_scanner = "Ricarica scanner ${percentage}%",
		scanning = "Scansione ${percentage}%",

		refine_gemstones = "[${InteractionKey}] Affinare le pietre preziose",
		refinery = "Tavolo da raffineria",
		exit_refinery = "exitRefinery",
		no_gemstones = "Non hai gemme grezze.",
		refining = "Raffinazione 1x ${gemstone}",
		refine_success = "Raffinata 1x ${gemstone}.",
		failed_refine = "La pietra gemma di perfezionamento fallita.",

		craft_rings = "[${InteractionKey}] Anelli artigianali",
		no_crafting_items = "Non hai abbastanza oggetti per creare qualcosa qui.",
		crafting = "crafting 1x ${item}",
		crafting_table = "Tavolo da realizzazione",
		crafting_success = "Realizzato 1x ${gemstone}.",
		failed_crafting = "Articolo di crafting non riuscito.",
		exit_crafting = "exitCraftingTable",

		engrave_ring = "[${InteractionKey}] Incisioni",
		no_engrave_items = "Non hai anelli.",
		exit_engraving = "USCI TABELLA DI INCIRAZIONE",
		engraving_table = "Tavolo di incisione",
		engraving = "Incisione ${itemName}",
		engrave_message = "Incisione Messaggio (Max 100 caratteri)",
		engrave_success = "Messaggio inciso con successo su ${itemName}.",
		failed_engrave = "Impossibile incidere il messaggio.",

		no_sellable_items = "Non hai niente che puoi vendere qui.",
		exit_shop = "OSSERE SHOP",
		shop = "gemstoneShop",
		sell_gemstones = "[${InteractionKey}] Vendi pietre preziose",
		local_price = "Prezzo locale: $${price}",

		sold_gemstone = "Venduta 1x ${gemstone} per $${price}.",
		failed_sell_gemstone = "Impossibile vendere gemme.",
		failed_sell_no_item = "Non hai l'oggetto che hai provato a vendere.",
		failed_sell_cap = "Il venditore non vuole acquistare più quell'articolo da te.",

		mining_sold_item_title = "Gemme vendute",
		mining_sold_item_details = "${consoleName} venduta 1x ${itemName} per $${price}.",

		mining_crafted_item_title = "Oggetto realizzato",
		mining_crafted_item_details = "${consoleName} realizzato 1x ${itemName}.",

		mining_refined_item_title = "Gemma raffinata",
		mining_refined_item_details = "${consoleName} raffinata 1x ${itemName}.",

		mining_mined_title = "Gemma estratta",
		mining_mined_details = "${consoleName} estratto ${output}.",

		mining_exploded_title = "Esplosione mineraria",
		mining_exploded_details = "${consoleName} è esploso mentre tentava di estrarre una gemma.",

		instability_0 = "Questa pietra preziosa è stabile.",
		instability_1 = "Questa pietra preziosa è leggermente instabile.",
		instability_2 = "Questa pietra preziosa è instabile.",
		instability_3 = "Questa pietra preziosa è molto instabile.",

		exhausted = "Ti senti esausto dall'essere nella miniera per così tanto tempo.",
		very_exhausted = "Ti senti molto esausto dall'essere nella miniera per così tanto tempo."
	},

	miscellaneous = {
		language_unavailable = "Lingua `${languageCode}` non è ancora disponibile.Se desideri creare localizzazione per questa lingua, sentiti libero di unirti alla Guild di discordia dello sviluppo OP-FW per ulteriori informazioni su ${frameworkDiscord}!",
		same_language = "Hai già ${languageCode} come la tua lingua fissa.",
		language_set = "La tua lingua preferita è stata ora impostata ${languageCode}.",
		current_language = "Lingua attuale",
		available_language_codes = "Lingue disponibili",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (callback time: ${callbackTime}ms)",
		ooc_first_time = "Vediamo che non hai ancora usato /ooc! Prima di lasciarti usarlo, vorremmo darti un piccolo avvertimento.Il comando /OOC deve essere utilizzato solo in situazioni immediate e tutte le domande o i messaggi non immediati devono essere reindirizzati alla nostra Discord Guild a $ {CommunityDiscord}.È tutto!Per iniziare a usare /OOC, digitare /ooc_on.Sarai in grado di spegnerlo di nuovo con /ooc_off.",
		ooc_not_logged_in = "Non sei loggato.",
		ooc_timed_out = "Attualmente sei scaduto dalla chat OOC.Attendere prego.",
		ooc_muted_no_reason = "Sei stato disattivato dalla chat OOC globale senza un motivo specificato.",
		ooc_muted = "Sei stato disattivato dalla chat OOC globale per motivo `${reason}`.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "LOCAL OOC ${playerDescriptor}",
		ooc_is_disabled = "Hai disabilitato la chat OOC globale.",
		ooc_enabled = "L'OOC globale è stato ora abilitato.",
		ooc_already_enabled = "L'OOC globale è già abilitato.",
		ooc_disabled = "L'OOC globale è stato disabilitato.",
		ooc_already_disabled = "L'OOC globale è già disabilitato.",
		ooc_local_logs_title = "Messaggio OOC locale",
		ooc_local_logs_details = "${consoleName} ha inviato il seguente messaggio nella chat OOC locale: `${oocMessage}`.",
		ooc_global_logs_title = "Messaggio OOC globale",
		ooc_global_logs_details = "${consoleName} ha inviato il seguente messaggio nella chat OOC globale: `${oocMessage}`.",
		bad_ooc_message = "Ha tentato di pubblicare un messaggio forse cattivo nella chat OOC: `${oocMessage}`",
		bad_ped_message = "Ho tentato di creare un messaggio PED forse cattivo: `${pedMessage}`",
		bad_twitter_post = "Ho tentato di creare un post su Twitter forse cattivo: `${twitterPost}`",
		bad_phone_message = "Ho cercato di creare un messaggio twitter cattivo, cazzo se sono stupido: `${message}`",
		mute_toggle_not_staff = "Il giocatore ha tentato di disattivare un giocatore, ma non aveva le autorizzazioni corrette per farlo.",
		unmute_toggle_not_staff = "Il giocatore ha tentato di riattivare un giocatore, ma non aveva le autorizzazioni corrette per farlo.",
		user_not_found = "Non siamo stati in grado di trovare un utente con ID server `${serverId}`.",
		player_already_muted = "${consoleName} è già stato disattivato.",
		player_has_been_muted_no_reason = "${consoleName} ora è stato disattivato senza una ragione specificata.",
		player_has_been_muted = "${consoleName} ora è stato disattivato con la ragione: `${reason}`.",
		player_not_muted = "${consoleName} non è mutato.",
		player_has_been_unmuted = "${consoleName} ora non è piu mutato.",
		clear_chat_not_admin = "Il giocatore ha tentato di cancellare la chat per tutti i giocatori, ma non aveva autorizzazioni adeguate per farlo.",
		ooc_clear_chat_title = "Chat Pulita",
		ooc_clear_chat_details = "${consoleName} ha cancellato la chat per tutti.",
		muted_player = "Giocatore Mutato",
		muted_player_no_reason_details = "${consoleName} Mutato ${targetConsoleName} without any specified reason.",
		muted_player_details = "${consoleName} mutato ${targetConsoleName} con motivo `${muteReason}`.",
		player_muted = "Player Mutato",
		player_muted_no_reason_details = "${targetConsoleName} e stato mutato ${consoleName} senza specificare nessuna ragione.",
		player_muted_details = "${targetConsoleName} stato mutato da ${consoleName} con motivazione `${muteReason}`.",
		muted_self = "Mutato dassolo",
		muted_self_no_reason_details = "${consoleName} mutato se stesso senza una motivazione.",
		muted_self_details = "${consoleName} mutato se stesso con la motivazione`${muteReason}`.",
		unmuted_self = "Smutato dassolo",
		unmuted_self_details = "${consoleName} Smutato themselves.",
		unmuted_player = "Smutato Player",
		unmuted_player_details = "${consoleName} Smutato ${targetConsoleName}.",
		player_unmuted = "Giocatore non merito",
		player_unmuted_details = "${targetConsoleName} è stato smutato da ${consoleName}.",
		ooc_cancelled_same_as_last = "Il tuo messaggio OOC è stato annullato quando hai tentato di inviare due messaggi identici di riga.",
		use_measurement_metric = "Hai impostato il tuo sistema di misura preferito su metrica.",
		use_measurement_imperial = "Hai impostato il tuo sistema di misura preferito su Imperial.",
		use_measurement_default = "Ora utilizzerai il sistema di misurazione predefinito del locale.",
		already_using_metric_measurement = "Hai già set di metriche come sistema di misurazione preferito.",
		already_using_imperial_measurement = "Hai già un set imperiale come sistema di misurazione preferito.",
		already_using_default_measurement = "Stai già utilizzando il sistema di misurazione predefinito della localizzazione.",
		no_copyright = "Nessun copyright",
		no_copyright_warning = "Ciao!Sei un creatore di streamer o contenuti in cui DMCA e Copyright afferma che è un problema?In tal caso, suggeriamo di attivare il comando `$ {NocopyrightCommand} in modo da poter impedire a un certo materiale protetto da copyright di mostrare e giocare nel tuo gioco.Questa funzione inizia a funzionare non appena viene attivata.",
		no_copyright_enabled = "La funzione 'No Copyright' è stata abilitata.",
		no_copyright_disabled = "La funzione 'No Copyright' è stata disabilitata.",
		server_tps = "Server TPS",
		server_tps_response = "${tps}",
		license_copied = "Licenza copiata con successo negli appunti.",
		uptime = "Uptime: ${uptime}",

		picture_no_url = "url mancante.",
		picture_invalid_url = "Url mancante, deve cominciare con https://.",
		picture_no_description = "Descrizione mancante.",
		picture_failed = "Non è possibile creare l'immagine.",

		auto_run_already_set_to = "L'auto-run è già settato sul tasto ${controlId}.",
		auto_run_already_unset = "L'auto-run non è più settato.",
		auto_run_set_to = "L'auto-run è stato settato sul tasto ${controlId}.",
		auto_run_unset = "l'auto-run è stato tolto.",

		invalid_server_id = "Server ID non valido.",
		walk_forwards_success = "Camminata in avanti attivata con successo per ${displayName}.",
		walk_forwards_failed = "Impossibile attivare o disattivare la camminata in avanti per ${displayName}."
	},

	money = {
		invalid_server_id = "ID invalido.",
		invalid_amount = "Ammonto invalido.",
		something_went_wrong = "Qualcosa è andato storto.",
		not_enough_cash = "Non hai abbastanza cash.",
		not_close_enough = "Non sei abbastanza vicino al player.",
		user_not_available = "L'user non è disponibile.",

		bill_received = "${displayName} Ti ha inviato un ammonto do $${amount}. Scrivi `/yes` per accettare oppure `/no` per declinare.",
		bill_expired = "Il tuo ammonto da ${displayName} è scaduto.",
		bill_declined = "Hai declinato l'ammonto da ${displayName}.",
		failed_bill_payment = "Pagamento dell'acconto fallito.",
		bill_success = "Pagamento dell'acconto riuscito da $${amount} mandato da ${displayName}.",
		bill_created = "Hai creato un ammonto di $${amount} per ${displayName}.",

		givecash_success = "Hai dato ${displayName} $${amount}.",

		give_cash_title = "Trasferimento cash",
		give_cash_details = "${consoleName} Trasferito $${amount} a ${targetConsoleName}.",
		paid_bill_title = "Ammonto pagato",
		paid_bill_details = "${consoleName} pagato $${amount} ammonto da ${targetConsoleName}.",
		bill_created_title = "Ammonto creato",
		bill_created_details = "${consoleName} creato ammonto per $${amount} a ${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Riempi",
		collect_moonshine = "[${InteractionKey}] Prendi moonshine",
		fermenting = "Fermentando ${percentage}%",
		filling_chamber = "Riempiendo",

		not_enough_items = "Non hai abbastanza materiali per riempire il chamber.",
		something_went_wrong = "Qualcosa è andato storto.",
		failed_fill = "Impossibile riempire il chamber.",
		failed_empty = "Impossibile prendere il Moonshine.",

		press_to_sell_moonshine = "Premi ~INPUT_CONTEXT~ per vendere il Moonshine.",
		local_not_interested = "Il locale non sembra essere interessato in questo momento.",
		selling_moonshine = "Vendendo il Moonshine."
	},

	nos = {
		press_to_install_nitro_tank = "Premi ~INPUT_CONTEXT~ Per installare Nitro Tank.",
		installing_nitro_tank = "Installazione del serbatoio nitro",
		press_to_remove_nitro_tank = "Premi ~INPUT_CONTEXT~ Per rimuovere il serbatoio nitro.",
		removing_nitro_tank = "Rimozione del serbatoio nitro"
	},

	notepads = {
		take_notes = "Prendi nota...",
		press_to_open = "Premi ~INPUT_DETONATE~ per aprire il NotePad.",
		notepad_busy = "Qualcunaltro sta visualizzando il Notepad.",
		dropped_notepad_title = "Blocco note caduto",
		dropped_notepad_text_title_details = "${consoleName} Blocco note caduto con scritta `${text}`.",
		updated_notepad_title = "Notepad aggiornato",
		updated_notepad_text_title_details = "${consoleName} aggiornato un blocco note con testo `${text}`.",
		picked_up_notepad_title = "Notepad preso",
		picked_up_notepad_text_title_details = "${consoleName} prese un blocco note con del testo che recita `${text}`.",
		invalid_notepad_id = "Notepad ID invalido.",
		failed_notepad_info = "Non si è riusciti a prendere le informazioni del notepad.",
		notepad_info = "Notepad ${notepadId} è caduto da ${droppedBy}.",
		failed_notepad_wipe = "Impossibile cancellare i blocchi note.",
		invalid_notepad_wipe_radius = "Raggio invalido (Min = 1, Max = 100).",
		notepad_wipe_success = "Spazzati via con successo ${amount} notepad.",
		sign_invalid_slot = "Invetario slot invalido.",
		signed_notepad = "Blocco note firmato con successo nello slot `${slotId}`.",
		failed_sign_notepad = "Impossibile firmare il blocco note.",
		sign_already_signed = "Non puoi firmare questo blocco note.",

		notepad_info_missing_permissions = "Il giocatore ha tentato di ottenere informazioni sui blocco note senza autorizzazioni adeguate.",
		wipe_notepads_missing_permissions = "Il giocatore ha tentato di asciugare i blocco note senza autorizzazioni adeguate."
	},

	notices = {
		message_too_long = "Il messaggio contiene troppi caratteri o righe!",
		invalid_notice_id = "Avviso non valido ID.",
		successfully_removed_notice = "Avviso rimosso con successo.",
		failed_remove_notice = "Impossibile rimuovere l'avviso.",

		add_notice_missing_permissions = "Il giocatore ha tentato di aggiungere un avviso senza autorizzazioni adeguate.",
		remove_notice_missing_permissions = "Il giocatore ha tentato di rimuovere un avviso senza autorizzazioni adeguate."
	},

	objects = {
		saved_found_objects = "Salvato `${foundObjectsAmount}` Oggetti trovati con modello `${modelName}` a un file sul server.",
		no_nearby_objects_with_model_found = "Non c'erano oggetti vicini trovati con il modello `${modelName}`.",
		invalid_model_name = "Il modello `${modelName}` non è un modello valido.",
		missing_model_name = "Nome modello mancante."
	},

	orbitcam = {
		enabled_orbitcam = "Orbitcam abilitato.",
		disabled_orbitcam = "Orbitcam disabilitato",
		orbitcam_failed = "Impossibile abilitare l'orbita.Hai noclip o abilitato simile?",

		orbitcam_logs_title = "Orbitcam attivato",
		orbitcam_on_logs_details = "${consoleName} ha attivato la loro orbitacam on.",
		orbitcam_off_logs_details = "${consoleName} ha attivato la loro orbitacam off.",

		orbitcam_no_permission = "Ha tentato di attivare la loro orbita."
	},

	overview = {
		header_title = "OP Framework - Panoramica UI",
		select_information = "Informazione",
		select_activity_points = "Punti di attività",
		select_staff_points = "Punti del personale",
		select_moderation = "Moderazione",
		select_handling_overrides = "Gestione di sovrascrive",
		select_settings = "Impostazioni",
		about_title = "Informazioni sulla panoramica dell'interfaccia utente",

		-- eh idk if putting entire chunks of html code is the way to go but for now it is xd
		about_text = [[
			Questa interfaccia è destinata a fungere da menu di interazione OOC, Centro informazioni e visualizzatore di dati per i giocatori.
			<br><br>
			Per ora, l'unica cosa a cui è abituato è visualizzare lo stato della "priorità del lavoro".
			<br><br>
			In futuro, si prevede che verranno implementate molte più funzionalità come:
			<ul class="list">
				<li>Visione e gestione più approfondite dei lavori con equilibra di biancheria per le persone che li controllano.</li>
				<li>Statistiche complesse dei giocatori.</li>
				<li>Un sistema di raggiungimento.</li>
				<li>Forse un sistema di report migliore per il personale.</li>
				<li>Più funzionalità per il personale che possono utilizzare per gestire e controllare più il server.</li>
				<li>...E molto altro, sentiti libero di venire con suggerimenti!</li>
			</ul>
			<br>
			Onto the future!
		]],

		about_activity_points_title = "Sui punti di attività",

		about_activity_points_text = [[
			Puoi guadagnare punti di attività essendo in servizio in lavori che offrono questi punti.Attualmente, solo i lavori medici/EMS e le forze dell'ordine/polizia lo offrono.
			<br><br>
			Ogni minuto, una certa quantità di punti di attività viene distribuita in ogni lavoro tra i giocatori che sono in servizio.Ciò significa che se ci sono 4 giocatori in servizio come polizia, ogni giocatore otterrà il 25% dei punti di attività quel minuto.La quantità di punti di attività distribuiti viene deciso prendendo l'importo attuale del giocatore del server e dividendolo per 32.
			<br><br>
			I punti di attività si ripristinano per tutti all'inizio di ogni settimana.Se hai avuto un certo numero di punti di attività, ti verrà data priorità in coda per l'intera settimana.
				<br><br>
				Punti di attività richiesti per la priorità della coda in questo momento:
				<ul class="list">
				<li>400: Priorità di lavoro bassa.</li>
				<li>700: Priorità di lavoro medio.</li>
				<li>1000: Alta priorità di lavoro.</li>
			</ul>
		]],

		activity_points_this_week = "Questa settimana",
		activity_points_last_week = "La settimana scorsa",
		activity_points_current = "Punti di attività: <b>${activityPoints} + ${gainAmount}/minute</b>",
		activity_points_current_no_gain = "Punti di attività: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Your L'obiettivo dell'attività attuale è a 400 punti per una bassa priorità di lavoro, con <b>${remainingPoints} to go</b>!",
		activity_points_goal_medium = "<br><br>Il tuo obiettivo di attività attuale è a 700 punti per la priorità di lavoro medio, con <b>${remainingPoints} to go</b>!",
		activity_points_goal_high = "<br><br>Il tuo obiettivo di attività attuale è a 1000 punti per la priorità di lavoro elevata, con <b>${remainingPoints} to go</b>!",
		activity_points_goal_none = "<br><br>Al momento non hai obiettivi di attività.",
		activity_points_not_enough = "La scorsa settimana non avevi abbastanza punti di attività per qualificarsi per la priorità della coda.",
		activity_points_last_week_low = "Impressionante, la scorsa settimana hai avuto abbastanza punti di attività per qualificarti per una bassa priorità di lavoro in coda!",
		activity_points_last_week_medium = "Incredibile, la scorsa settimana hai avuto abbastanza punti di attività per qualificarti per la priorità di lavoro medio in coda!",
		activity_points_last_week_high = "Incredibile, la scorsa settimana hai avuto abbastanza punti di attività per qualificarti per un'elevata priorità di lavoro in coda!",

		about_staff_points_title = "Sui punti del personale",

		about_staff_points_text = [[
			Simile ai punti di attività per i lavori, otterrai punti del personale quando sei nel server con la disponibilità del personale.
			<br><br>
			Ogni minuto, un certo numero di punti del personale viene distribuito a tutti i membri del personale attivo.Ciò significa che se ci sono 4 membri del personale attivi, ogni persona otterrà il 25% dei punti del personale quel minuto.La quantità di punti del personale distribuita viene deciso prendendo l'importo attuale del giocatore del server e dividendolo per 32.
			<br><br>
			I punti del personale si ripristinano per tutti all'inizio di ogni settimana.Le tue otto settimane più recenti saranno disponibili per la visualizzazione in una tabella seguente.
		]],

		staff_points_this_week = "Questa settimana",
		staff_points_current = "Punti del personale: <b>${staffPoints} + ${gainAmount}/minute</b>",
		staff_points_current_no_gain = "Punti del personale: <b>${staffPoints}</b>",
		staff_points_table = "Tabella dei punti del personale",
		this_week = "Questa settimana",
		one_week_ago = "1 Una settimana fa",
		two_weeks_ago = "2 Settimane fa",
		three_weeks_ago = "3 Settimane fa",
		four_weeks_ago = "4 Settimane fa",
		five_weeks_ago = "5 Settimane fa",
		six_weeks_ago = "6 Settimane fa",
		seven_weeks_ago = "7 Settimane fa",
		eight_weeks_ago = "8 Settimane fa",
		previous_weeks_average = "Media delle settimane precedenti",

		about_detection_areas_title = "Aree di rilevamento",
		about_detection_areas_text = "Le aree di rilevamento possono essere uno strumento utile per i membri dello staff quando si tenta di identificare una riproduzione di un imbroglione in veicoli e/o PED indesiderati.Per creare un'area di rilevamento, utilizzare `/rilevamento_area_add`.Una volta creata un'area, apparirà qui.Solo le ultime 100 entità saranno registrate in ogni area.",
		detection_area_title = "Area di rilevamento #${detectionAreaId}",

		about_sound_effects_title = "Effetti sonori",
		about_sound_effects_text = "Questi campi ti consentono di sovrascrivere alcuni effetti sonori.Richiedono un collegamento a un file .OOG per funzionare correttamente.Deve anche essere un https: // url e non un http: // uno.Un modo semplice per caricare un file sarebbe di caricarlo su Discord, quindi copiare il suo collegamento e inserirlo nei campi qui.",
		radio_mic_click_on = "Radio Click microfono (On)",
		radio_mic_click_off = "Radio Click microfono (Off)",
		clipboard_animation = "Animazione degli appunti",
		sound_effect_placeholder = "URL al file .ogg...",
		sound_effect_save = "Salva",
		sound_effect_reset = "Ripristina",

		staff_notifications_reports = "Notifica report",
		staff_notifications_staff_chat = "Notifica Staff-Chat",
		staff_notifications_general = "Notifica generale",
		staff_notifications_anti_cheat = "Notifica Anti-cheat",

		december_1 = "1st of December",
		december_2 = "2nd of December",
		december_3 = "3rd of December",
		december_4 = "4th of December",
		december_5 = "5th of December",
		december_6 = "6th of December",
		december_7 = "7th of December",
		december_8 = "8th of December",
		december_9 = "9th of December",
		december_10 = "10th of December",
		december_11 = "11th of December",
		december_12 = "12th of December",
		december_13 = "13th of December",
		december_14 = "14th of December",
		december_15 = "15th of December",
		december_16 = "16th of December",
		december_17 = "17th of December",
		december_18 = "18th of December",
		december_19 = "19th of December",
		december_20 = "20th of December",
		december_21 = "21st of December",
		december_22 = "22nd of December",
		december_23 = "23rd of December",
		december_24 = "24th of December",
		hatch_closed = "CHIUSO",
		hatch_open = "APRI",
		hatch_claim = "RICEVI",
		hatch_opened = "RICEVUTO",
		hatch_waiting = "ASPETTANDO",

		about_advent_calendar_title = "Informazioni sul calendario dell'Avvento",

		-- NOTE: this is the most aids shit ever, please ignore the HTML stuff in here
		about_advent_calendar_text = [[
			Il calendario dell'Avvento è una caratteristica di vacanza destinata a portare un po 'più di gioia ai giocatori di ${communityName} Per tutto il mese di dicembre!
			<br><br>
			Ogni giorno diventerà disponibile un altro portello, contenente denaro, un oggetto, un veicolo o qualcos'altro.Saranno disponibili tutti i portelli appartenenti a una data precedente.Una volta che un portello è stato aperto, devi rivendicarlo per riceverlo.L'apertura e la raccolta diventeranno impossibili dopo il 25 dicembre.
			<br><br>
			Il prossimo portello si sblocca ${time}.
			<br><br>
			Aprire un portello il giorno in cui è stato sbloccato, ti dà un punto bonus.Se ottieni abbastanza punti bonus, riceverai un regalo speciale il 24 dicembre.(Il regalo bonus deve essere richiesto prima del 26.)
			<br><br>
			<div class="bonusPoints">
				<div>Bonus Points: ${bonusPoints}/22</div>
				<div>
					<button class="button" style="${buttonStyle}" id="claimBonusButton">${buttonText}</button>
				</div>
			</div>
		]],

		unlocks_in_days_hours_minutes_seconds = "${days} giorni, ${hours} ore, ${minutes} minuti r ${seconds} secondi",
		unlocks_in_hours_minutes_seconds = "${hours} ore, ${minutes} minuti e ${seconds} secondi",
		unlocks_in_minutes_seconds = "${minutes} minuti e ${seconds} secondi",
		unlocks_in_seconds = "${seconds} secondi",
		unlocks_in_an_unknown_amount_of_time = "un periodo di tempo sconosciuto",

		unopened_hatch = "Portello non aperto",
		won_money = "$${amount} Cash",
		won_vehicle = "Veicolo (Christmas Special)",
		won_queue_priority = "Una settimana di priorità in coda!",

		about_handling_overrides_title = "Gestione delle sostituzioni",
		about_handling_overrides_text = "Crea sostituzioni di gestione temporanee per gestire le classi in modo dinamico. Le sostituzioni dureranno fino a quando non vengono rimosse o il server viene riavviato. Le sostituzioni verranno impostate per tutti i giocatori sul server.",
		add_override = "Aggiungi sostituzione",
		add = "Aggiungi",
		model_name = "Nome modello...",
		field_name = "Campo...",
		value = "Valore...",
		current_overrides = "Sostituzione corrente",

		about_explosion_events_title = "Eventi esposivi",
		about_explosion_events_about = "Qui vengono registrate le informazioni sugli ultimi 500 eventi di esplosione. Questo dovrebbe aiutare lo staff a trovare i modder.",
		about_unusual_explosions = "Eventi esplosivi insoliti che non si verificano normalmente.",
		explosions_by_type_title = "Esplosioni di tipo",
		players_causing_explosions_title = "Giocatori che causano esplosioni",
		show_common_events_off = "Mostra eventi comuni: OFF",
		show_common_events_on = "Mostra eventi comuni: ON",

		explosion_events_type = "Tipologia",
		explosion_events_amount = "Quantità",
		explosion_events_nearby = "Vicino",
		explosion_events_distance = "Distanza",
		explosion_events_player = "Nome player",

		illegal_weapons_title = "Armi spawnate",
		illegal_weapons_about = "Qui vengono registrate le ultime 500 occorrenze di spawn nelle armi rilevate dal sistema. Quando qualcuno ha un'arma generata, non significa necessariamente che stia modificando, poiché i modder possono generare armi nelle mani di altri giocatori e quindi anche altri giocatori si presenterebbero qui.",
		illegal_weapons_by_type = "Armi di tipo",
		players_with_spawned_weapons = "PLayer con armi spawnate",

		ped_models_title = "Modelli ped dei player",
		ped_models_about = "Qui è elencato ogni giocatore che non usa un modello di personaggio freemode. Questo dovrebbe aiutare a trovare giocatori che sono qui solo per trollare o potenziali modder.",
		local_ped_models_title = "Modelli ped locali",
		animal_ped_models_title = "Modelli ped animali",

		fast_movement_title = "Movimento veloce",
		fast_movement_about = "Qui viene elencato ogni giocatore che è stato segnalato per essersi mosso troppo velocemente. Questo dovrebbe aiutare a trovare giocatori che sono potenziali modder.",

		damage_modifier_title = "Modificatore di danni",
		damage_modifier_about = "Qui viene elencato ogni giocatore che è stato rilevato per avere un modificatore di danno modificato. Questo dovrebbe aiutare a trovare giocatori che sono potenziali modder.",

		bad_screen_word_title = "Brutte parole sullo schermo",
		bad_screen_word_about = "Iqui viene elencato ogni giocatore che è stato rilevato per avere determinate parole sullo schermo. Questo dovrebbe aiutare a trovare giocatori che sono potenziali modder.",

		freecam_detections_title = "Rilevamenti di Freecam",
		freecam_detections_about = "Qui è elencato ogni giocatore che è stato rilevato utilizzare una freecam. Questo dovrebbe aiutare a trovare giocatori che sono potenziali modder.",

		damage_modifier_name = "Nome giocatore",
		damage_modifier_expected = "Eccetto",
		damage_modifier_actual = "Attuale",

		bad_words_name = "Nome Player",
		bad_words_words = "Parole trigger",

		freecam_detections_name = "Nome player",
		freecam_detections_distance = "Massima distanza",

		hotwire_driving_detections_name = "Nome giocatore",

		model = "Modello",
		label = "Label",
		amount = "Valore",
		console_name = "Player",
		expected = "Previsto",
		actual = "In realtà",
		words = "Parole",
		distance = "Distanza",
		weapon = "Arma",
		type = "Tipologia",
		nearby = "Vicino",

		no_entries = "No entrate"
	},

	oxy = {
		press_to_talk_to_jc = "Presmi ~g~${InteractionKey} ~w~per parlare con JC.",
		tutorial_will_play_next_time = "Il tutorial oxy verrà riprodotto la prossima volta che inizi una corsa.",
		prescription_pick_up = "Prescrizione Pick-UP: ${label}",

		pick_up_the_prescriptions = "Raccogli le prescrizioni contraffatte segnate sulla tua mappa.",
		redeem_them_at_the_city = "Dopo averlo fatto, devi riscattarli in città.",
		jc_will_be_expecting_some_back = "~y~JC ~w~aspetterà 6 ${pickUpAmount} delle Oxy indietro.",
		you_have_limited_time = "Hai un tempo limitato. Devi tornare con le pillole dentro ${time}.",
		press_to_hide_unimportant_blips_in_map = "Premi ~INPUT_SPRINT~ per nascondere i segnali non relativi alle missioni nella mappa del menu di pausa.",
		consider_getting_a_smart_watch = "Prendi in considerazione l'acquisto di uno Smart Watch per essere sempre in grado di vedere il tuo GPS.",

		press_to_pick_up_prescription = "Premi ~g~${InteractionKey} ~w~per ritirare la ricetta.",

		redeem_oxy_prescription = "Riscatta la prescrizione Oxy",
		press_to_redeem_prescription = "Premi ~g~${InteractionKey} ~w~riscattare la prescrizione.",

		check_your_map_to_redeem_prescriptions = "Buon lavoro! Controlla la tua mappa per riscattare le prescrizioni. Ti rimangono ${time}.",
		go_to_jc_to_finish_run = "Ben fatto! Torna da ~y~JC ~w~ per terminare la corsa. Ti rimangono ${time}.",

		oxy_run_started_title = "Oxy Run avviato",
		oxy_run_started_details = "${consoleName} ha iniziato una corsa ossigenata.",

		oxy_run_ended_title = "Oxy Run terminato",
		oxy_run_ended_details = "${consoleName} ha completato la corsa oxy dopo ${time} e guadagnato $${payout}.",

		oxy_run_failed_title = "Oxy Run non riuscito",
		oxy_run_failed_details = "${consoleName} fallito la loro corsa ossigenata.",

		you_failed_the_run = "Hai fallito la corsa. ~y~JC ~w~non sarà felice con te per un po' di tempo.",

		time_left = "Hai ${time} tempo.",

		accidental_call_1_part_1 = "Yooo, cosa mi dici drilla?",
		accidental_call_1_part_2 = "Ok fondamentalmente quello che faremo adesso; ora organizzeremo una piccola cosa perché c'è un tizio che gestisce l'oxy bro.",
		accidental_call_1_part_3 = "Sì, ho preso la sua targa, la sua macchina, tutto questo.",
		accidental_call_1_part_4 = "E fondamentalmente, quando scende dall'auto per consegnare la cosa, fratello, ho bisogno che tu salti dentro e la prenda per me fra.",
		accidental_call_1_part_5 = "Nah non saprà che siamo stati noi, l'ho mandato downtown e penserà che sarà stata qualche sorta di gang o cose simili.",
		accidental_call_1_part_6 = "Fidati di me è semplice.",
		accidental_call_1_part_7 = "Ohhhh! Yoo, che stai dicendo?! non tu, l'altro figlio di puttana! Ho mandato 2 uomini! Non tu!",
		accidental_call_1_part_8 = "Stai calmo! Ragazzo sbagliato... ma era.. diverso da te bro. Non eri tu.",
		accidental_call_1_part_9 = "Non eri tu. Mi capisci? Non eri tu!",
		accidental_call_1_part_10 = "Ma stai attento, se mi mandi tutto a puttane sarà sicuramente la tua auto.",
		accidental_call_1_part_11 = "Love.",

		accidental_call_2_part_1 = "Yooo, che stai dicendo babe?",
		accidental_call_2_part_2 = "Yeah non ti posso mentire, Voglio solo strofinare la senape su tutto il tutto il tuo piede e leccarlo come se fosse un hot dog.",
		accidental_call_2_part_3 = "Yo baby.",
		accidental_call_2_part_4 = "Aspe..",
		accidental_call_2_part_5 = "Oh cazzo, mea culpa.",

		accidental_call_3_part_1 = "Yooo, che stai dicendo bro?",
		accidental_call_3_part_2 = "Ye ye, Ho appena fatto quella nuova canzone hip-hop che volevi fratello.",
		accidental_call_3_part_3 = "Yeah va un po' così..",
		accidental_call_3_part_4 = "Voglio amarti piccola, voglio amarti, voglio amarti, voglio baciarti sui piedi, vog-",
		accidental_call_3_part_5 = "Wooooah, woah woah.. Volevo dire, lo sai.. quello non ero io però..",
		accidental_call_3_part_6 = "Okay, numero sbagliato, colpa mia bro, colpa mia..",

		accidental_call_4_part_1 = "Yooo bro, quando verrai nella mia culla e giocherai con il mio piccolo pony con me, fratello mio?",
		accidental_call_4_part_2 = "È passato troppo tempo e quello, e ho bisogno, bruv sai che mi piace quello scintillante e-",
		accidental_call_4_part_3 = "Ooookay.. ho sbagliato numero fratello, colpa mia, ma non l'hai sentito.",
		accidental_call_4_part_4 = "'perché se lo avessi fatto, sei morto, sai che dico'?",

		accidental_call_5_part_1 = "Yo mamma, sono un po' spaventato ora..",
		accidental_call_5_part_2 = "Yeah c'erano dei ragazzi fuoi dalla mia porta, e- Io non so cosa fare mamma..",
		accidental_call_5_part_3 = "Sono un po' spaventato, perché penso di essere alla fine say..",
		accidental_call_5_part_4 = "Mamma.. oh, ohh.. oh, yo! Che dici bro?",
		accidental_call_5_part_5 = "Yeah, no, ti piacciono le mie skill di recitazione si?",
		accidental_call_5_part_6 = "Fidati di me, ay ma non ti permetere mai e poi mai di registrare una chiamata, oppure sei morto.",
		accidental_call_5_part_7 = "Sai a cosa mi riferisco'? Verrò lì e ti taglierò in pezzetti piccoli.",
		accidental_call_5_part_8 = "Sai a cosa mi riferisco vero bro?",
		accidental_call_5_part_9 = "Fidati di me, vaffanculo bro.",

		accidental_call_6_part_1 = "Yo yo little bro, vieni qui yeah.",
		accidental_call_6_part_2 = "Tuo padre è sul telefono bro, Tuo padre al telefono.",
		accidental_call_6_part_3 = "Lo so che non l'hai visto bro, Prendilo, Prendilo, Prendilo bro, Prendilo, Prendilo.",
		accidental_call_6_part_4 = "Ciao? Papà sei tu?",
		accidental_call_6_part_5 = "Papà?!",
		accidental_call_6_part_6 = ".. Aspetta quello non è papà, è qualcuno altro! No! Perché-",
		accidental_call_6_part_7 = "Sei un cazzone, Non ci credo che ci sei cascato!",
		accidental_call_6_part_8 = "Ohh mio dio..",

		maxed_out_runs_part_1 = "Bro, So che ti piace il pane, ma devi lasciare che qualcuno degli altri mandem ne prenda un po'.",
		maxed_out_runs_part_2 = "Smettila di venite bro.",
		maxed_out_runs_part_3 = "Vai a chiacchierare con qualche testa di cazzo al quartier generale di Trash o qualcosa del genere.",

		mission_completed_1_part_1 = "Yoo wag1 bro, ay Non posso mentire che era una bella merda però, sapevo di potermi fidare di te fratello.",
		mission_completed_1_part_2 = "Ay, se mai avessi bisogno di guadagnare qualche soldo in più, sai dove trovarmi.",
		mission_completed_1_part_3 = "Presto sarò rifornito, non ti preoccupare.",

		mission_completed_2_part_1 = "Yoo che stai a di bro.",
		mission_completed_2_part_2 = "Non posso mentirti, quel lavoro era buono proprio lì.",
		mission_completed_2_part_3 = "Yeah, fidati di me, i clienti ti adorano in questo momento e anche io ti amo, sai il perché?",
		mission_completed_2_part_4 = "Mi hai preso i soldi; Ti sei preso dei soldi.",
		mission_completed_2_part_5 = "Prendilo, torna più tardi però, perché ho bisogno di te ragazzo mio.",

		mission_completed_3_part_1 = "Yoo che stai dicendo' bro.",
		mission_completed_3_part_2 = "Ay non ti posso mentire, quella cosa lì dietro.. ADORABILE bro.",
		mission_completed_3_part_3 = "Non potevi farlo meglio fratello.",
		mission_completed_3_part_4 = "L'ultimo uomo ha fatto una cazzata, quindi sono contento di averti preso.",
		mission_completed_3_part_5 = "Ritorna dopo bro, fidati, Ho ancora un po' di roba per te, fratello.",

		mission_completed_4_part_1 = "Yoooo, sai come vendere vero?",
		mission_completed_4_part_2 = "Potresti dover essere un uomo d'affari prima di essere fratello, fidati di me però.",
		mission_completed_4_part_3 = "Il modo in cui lo stavi vendendo a queste persone era pazzesco, fratello.",
		mission_completed_4_part_4 = "Yeah yeah, oy, adorabile.",
		mission_completed_4_part_5 = "Però ti apprezzo in modo diverso, quindi torna più tardi, ti ho preso con le pillole, fratello.",
		mission_completed_4_part_6 = "Ne ho di più, yeah yeah, Fidati.",

		mission_completed_5_part_1 = "Ay che stai facendo la bro?",
		mission_completed_5_part_2 = "Ohh, sei tu! Yo, che stai dicendo bro?",
		mission_completed_5_part_3 = "Yeah, ay, bello quello.",
		mission_completed_5_part_4 = "Perché mi hai benedetto con quello! Ora ho soldi nudi, mi comprerò una nuova frusta EDM nuova, sai cosa sto dicendo fratello??",
		mission_completed_5_part_5 = "Dinka Blista, tutto quello, yeah, oy ritorna dopo, tutto legit.",
		mission_completed_5_part_6 = "'Perché ho molta più roba per te bro.",

		mission_completed_6_part_1 = "Yoo dovevi vedere la faccia di Gogginschmiel' prima bro.",
		mission_completed_6_part_2 = "Assomigli ad una testa di cazzo, non riesco a mentire.",
		mission_completed_6_part_3 = "Non sapevi che fosse dietro di te vero?!",
		mission_completed_6_part_4 = "Lo era, però bella merda.",
		mission_completed_6_part_5 = "Non ti posso mentire, sei troppo bravo in questo.",
		mission_completed_6_part_6 = "Ritorna dopo, ne ho preso di più bro.",

		mission_completed_7_part_1 = "Yoo che stai dicendo bro?",
		mission_completed_7_part_2 = "Ay non posso mentire, quella cosa lì dietro.. ADORABILE bro.",
		mission_completed_7_part_3 = "Non avresti potuto farlo meglio bro.",
		mission_completed_7_part_4 = "L'ultimo uomo ha fatto una cazzata, sono così felice che ti abbia come lavoratore.",
		mission_completed_7_part_5 = "Ritorna dopo bro, fidati, Ho più roba per te bro.",

		mission_completed_8_part_1 = "Ay, Questo è il tuo Boss che ti sta parlando. Si fidati bro, questo ragazzo è troppo figo.",
		mission_completed_8_part_2 = "Questo ragazzo è troppo figo.",
		mission_completed_8_part_3 = "Consegna ogni volta, in tempo.",
		mission_completed_8_part_4 = "I clienti amano questo tipo.",
		mission_completed_8_part_5 = "Fidati, sta arrivando nel mondo un nuovo tipo di merda, non mi batterai mai.",
		mission_completed_8_part_6 = "perché dovresti essere un cazzone, mi capisci?",
		mission_completed_8_part_7 = "Love, torna più tardi ti ho preso altre pillole, fratello.",

		mission_failed_1_part_1 = "Yeah bro, Non posso mentire, il cliente mi ha chiamato e ha detto che non l'hai nemmeno consegnato al mio uomo.",
		mission_failed_1_part_2 = "Che sta succedendo bro?",
		mission_failed_1_part_3 = "Hai fatto una grande cazzata.",
		mission_failed_1_part_4 = "Fuori dalla mia vista bro.",
		mission_failed_1_part_5 = "Se ti vedrò ancora, sarà la fine per te.",

		mission_failed_2_part_1 = "Yeah abbiamo un grosso problema ora.",
		mission_failed_2_part_2 = "Non ti posso mentire, sei in ritardo, che sta succedendo??",
		mission_failed_2_part_3 = "Yeahh bro, ovviamente i miei clienti sono incazzati!",
		mission_failed_2_part_4 = "Ay, non preoccuparti nemmeno di provare a prendere di nuovo qualcosa da me, bro.",
		mission_failed_2_part_5 = "Vaffanculo, hai finito con me bro.",

		mission_failed_3_part_1 = "Yeah, yeah, yeah, yeah, oi, oi..",
		mission_failed_3_part_2 = "Non ti posso mentire.",
		mission_failed_3_part_3 = "Sei il primo ragazzo a cui lo dirò.",
		mission_failed_3_part_4 = "Sei una testa di cazzo.",
		mission_failed_3_part_5 = "Lo sai vero? Yeah? Sei una testa di cazzo.",
		mission_failed_3_part_6 = "Lo sai perchP?",
		mission_failed_3_part_7 = "Perché non hai consegnato la mia merda bro.",
		mission_failed_3_part_8 = "vaffanculo bro. Non voglio vederti di nuovo al mio posto, fratello.",
		mission_failed_3_part_9 = "Ho un occhio su di te, Lo giuro sul nostro signore.",
		mission_failed_3_part_10 = "Ho lo matics su di te, e anche la ooters.",
		mission_failed_3_part_11 = "E' su di te bro.",
		mission_failed_3_part_12 = "Yeah, ecco.. vaffanculo fra.",

		mission_failed_4_part_1 = "Yoo, che stai dicendo bro?",
		mission_failed_4_part_2 = "Ay, solo una cosa veloce ora.",
		mission_failed_4_part_3 = "Se mai ritornerai qui, sei morto.",
		mission_failed_4_part_4 = "Yeah, sai il perché?",
		mission_failed_4_part_5 = "Perché fai merda bro, continui a fallire la mia merda.",
		mission_failed_4_part_6 = "che ti succede?",
		mission_failed_4_part_7 = "I clienti sono incazzati, vengono da me a dirmi che sono un cazzone bro.",
		mission_failed_4_part_8 = "Non ci credo che mi sono riferito a te.",
		mission_failed_4_part_9 = "Ho pensato che fossi il mio tipo per le consegne bro",
		mission_failed_4_part_10 = "But nah, sei solo un cazzone, quindi vaffanculo bro bro.",
		mission_failed_4_part_11 = "Vai via dalla mia vista bro.",

		mission_failed_5_part_1 = "Yeah non hai fatto molto bene l'ultima volta..",
		mission_failed_5_part_2 = "Non riesco a mentirti bro, Hai fottutamente sbagliato.",
		mission_failed_5_part_3 = "Quindi non venire mai più da me!",
		mission_failed_5_part_4 = "Perché giuro Gesù cristo che ti farò saltare.",

		mission_failed_6_part_1 = "Yo, Che dici bro?",
		mission_failed_6_part_2 = "Ay, se mai verrai di nuovo da me, bro.",
		mission_failed_6_part_3 = "Prendo il rambo e lascio che quella cosa ti strappi in testa bro!",
		mission_failed_6_part_4 = "Giuro su dio! Mi hai fottuto bro!",
		mission_failed_6_part_5 = "I clienti mi stanno chiamando, dicendomi quanto INCAZZATI sono.",
		mission_failed_6_part_6 = "E' tutta colpa tua bro, tutta colpa tua..",

		mission_failed_7_part_1 = "Non ritornare mai da me bro, vaffanculo bro.",

		mission_failed_8_part_1 = "Ay bro, vaffanculo finché non finisci i pacchetti, fratello.",

		mission_failed_9_part_1 = "Ay bro, vaffanculo finché non finisci i pacchetti.",
		mission_failed_9_part_2 = "Nah bro, non ritornare indietro fino a quando non finisci i miei pacchetti bro.",
		mission_failed_9_part_3 = "Hai scazzato, vai via da qui bro.",

		mission_failed_10_part_1 = "Yo bro, faresti bene a pregare purché tu riesca ad arrivare sano e salvo a casa stasera.",
		mission_failed_10_part_2 = "Perché arriverò per te bro.",
		mission_failed_10_part_3 = "Yo bro, Non fallire mai più bro, giuro su dio.",

		no_pills_1_part_1 = "Yoo wag1 bro, praticamente.. È un po' complicato.",
		no_pills_1_part_2 = "Perché non ho niente ora.",
		no_pills_1_part_3 = "Quindi cosa sto dicendo è che..",
		no_pills_1_part_4 = "Vaffacnulo bro, Ritorna un'altra volta.",

		no_pills_2_part_1 = "Yeah, che stai dicendo bro. Ay praticamente e- un po'- un po' fottuto al momento..",
		no_pills_2_part_2 = "Perché non ho nulla al momento. Non ho pillole bro!",
		no_pills_2_part_3 = "Yeah, Loro- Loro mi hanno fottuto! Non ho niente bro!",
		no_pills_2_part_4 = "Ay, H-Ho chiamato ed ho detto. Yo wag1, dove stanno le mie pillole?..",
		no_pills_2_part_5 = "Il mio uomo ha detto che non è nemmeno qui bro.",
		no_pills_2_part_6 = "Questi staranno viaggiando molto per Liberty City..",
		no_pills_2_part_7 = "Ci stanno mettendo troppo.",
		no_pills_2_part_8 = "Ma fidati, quando ne avrò di più, Ti chiamerò sicuramente.",

		no_pills_3_part_1 = "Yo, che stai dicendo' bro?",
		no_pills_3_part_2 = "Non abbiamo nessuna pillola ora, quindi perché non te ne vai a fanculo bro?",
		no_pills_3_part_3 = "Prima che io comincia ad incazzarmi, sai di che cosa sto parlando'?",

		no_pills_4_part_1 = "Yoo, wag1 bro? Nessuna pillola ora, quindi uhm.. boh bro..",
		no_pills_4_part_2 = ".. boh, hai finito, fanculo bro.",
		no_pills_4_part_3 = "Esci da qui, sei finito.",

		no_pills_5_part_1 = "Yoooooo.. ragazzo mio!",
		no_pills_5_part_2 = "Cosa stai dicendo bro? Ay, Non ti posso mentire, non abbiamo nulla ora.",
		no_pills_5_part_3 = "Quindi è un po' un picco per te in questo momento.",
		no_pills_5_part_4 = "Ma fondamentalmente, ritorna indietro fra un po.",
		no_pills_5_part_5 = "Amore bro.",

		no_pills_6_part_1 = "Bro.. Ho detto la stessa cosa a 2 persone prima di te ma non ho avuto nulla fino ad ora..",
		no_pills_6_part_2 = "Quindi perché non ascolti i tuoi ragazzini e vai a farti fottere collettivamente, amico mio.",
		no_pills_6_part_3 = "Sai cosa intendo'? Sei finito, fanculo bro.",

		no_pills_7_part_1 = "Yeah Sono la cosa GRANDE qui, sai cosa intendo?",
		no_pills_7_part_2 = "Ma la cosa grande non ha le grandi pillore ora.. quindi fondamentalmente vai a farti fottere.",
		no_pills_7_part_3 = "Sai cosa intendo?.",

		no_pills_8_part_1 = "Yo, yo, che stai dicendo?",
		no_pills_8_part_2 = "Ay, ay, ay, Dev- devo volare basso bro.",
		no_pills_8_part_3 = "Yeah, ay Ti sto dicendo la verità.. c'erano dei poliziotti qui davanti poco fa..",
		no_pills_8_part_4 = "Non ho pillole ora, capiscimi.",
		no_pills_8_part_5 = "Io mi taglio fuori per ora. Ritorna dopo quando le acque si calmano bro.",

		no_pills_9_part_1 = "Yeah, ayNon posso mentire a qualche testa di cazzo prima, sono corsi da me e hanno preso la mia merda fratello.",
		no_pills_9_part_2 = "Non ti preoccupare o dei ooters su di loro ora.",
		no_pills_9_part_3 = "Quindi quando ci porterai delle pillole, ritorna qunad.",

		no_pills_10_part_1 = "Yoo, cosa dici bro?",
		no_pills_10_part_2 = "Yeah, proprio ora, c'è qualche gang di merta a north bro.",
		no_pills_10_part_3 = "L'hanno rubata, quindi andremo lì insieme, riprendilo e ti pagheremo, fratello.",
		no_pills_10_part_4 = "Rispetto per quello che fai.",

		no_pills_11_part_1 = "Yoo, che dici? Si non c'è nulla ora.. Niente di cui ti possa occupare.",
		no_pills_11_part_2 = "È un po' strano per te in questo momento. Non c'è niente.",
		no_pills_11_part_3 = "Ti dirò una cosa che dico sempre a tutti..",
		no_pills_11_part_4 = "Perchè non vai a FANCULO bro.. ritorna dopo. Love.",

		no_pills_12_part_1 = "Nah non ho nulla con me ora bro.",
		no_pills_12_part_2 = "Ritorna fra un po' man, ritorna fra un po'..",

		no_pills_13_part_1 = "Bro! Vaffanculo! Non ho niente bro!",
		no_pills_13_part_2 = "Non ho niente bro! Ay, stai calmo bro!",

		no_pills_14_part_1 = "Guarda bro, te l'ho detto, non ho pillole ora.",
		no_pills_14_part_2 = "se porvi a prendere ching, vieni un'altra volta, Ti prego bro fallo.",

		no_pills_15_part_1 = "Nah, sentimi bro.. mi stai facendo incazzare bro.",
		no_pills_15_part_2 = "Non riesco neanche a mentirti su quello.",
		no_pills_15_part_3 = "Inizierò a prepararmi se non te ne andrai a fanculo bro.",

		not_leaving_1_muffled_part_1 = "Va bene, perché il bro è ancora lì?",
		not_leaving_1_muffled_part_2 = "Forse è un federale",
		not_leaving_1_muffled_part_3 = "Ay, oi.. controlla se è un federale, controlla se è un federale.",

		not_leaving_2_part_1 = "Oi vaffanculo bro, vai via da qui bro.",

		not_leaving_3_part_1 = "Bro, puoi smettere di essere qui..",
		not_leaving_3_part_2 = "Proverò a fare qualcosa. Sai di cosa sto parlando.",
		not_leaving_3_part_3 = "Farò una cosa col mio uccello, e tu sei lì fuori fermo sulla porta come un cazzo.",
		not_leaving_3_part_4 = "Fanculo bro.",

		not_leaving_4_part_1 = "Oi, TI PREGO bro, vattene bro.",
		not_leaving_4_part_2 = "Ah- Giuro su Dio bro.",

		not_leaving_5_part_1 = "Bro mi stai facendo incazzare ora, non ti mento..",
		not_leaving_5_part_2 = "Sto per venire lì e bagnarti tutto ragazzo mio.",
		not_leaving_5_part_3 = "Faresti bene ad andartene velocemente fratello mio.",

		not_leaving_6_part_1 = "Bro.. Sono il grande boss qui.",
		not_leaving_6_part_2 = "Smetti di fingere che questo sia la tua zona e vattene, fai quello che ti ho chiestp.",

		not_leaving_7_part_1 = "Oi giuro su dio, se lo fai ancora chiemerò i ballerini bro.",
		not_leaving_7_part_2 = "Ti faranno divertire fidati di me.",

		not_leaving_8_muffled_part_1 = "Va bene, bagnalo bro, bagnalo.. ci sta mettendo troppo.",

		not_leaving_9_part_1 = "Broo, non farmi tirare fuori il grande Chinga bro.",
		not_leaving_9_part_2 = "Ti prego di smetterla di calpestare la MIA zona proprio lì, fratello.",
		not_leaving_9_part_3 = "Faresti meglio a tirarti indietro e a farlo subito, ci stai mettendo troppo tempo fratello.",
		not_leaving_9_part_4 = "Tu sei nella MIA casa nella MIA culla, pensi di essere un ragazzo grosso bro?.",
		not_leaving_9_part_5 = "Aspetta bro, ti fotto bro.",

		not_leaving_10_muffled_part_1 = "Yeah questo ragazzo viene gasato in un angolo come se fosse il proprietario del mio blocco o qualcosa del genere fratello.",

		not_leaving_11_part_1 = "Ay, muoviti, muoviti..",
		not_leaving_11_part_2 = "Sei finito qui bro.",

		not_leaving_12_muffled_part_1 = "Ay, è appiccicoso per questo ragazzo.",
		not_leaving_12_muffled_part_2 = "Sta impiegando troppo tempo fratello, vaffanculo bro!",
		not_leaving_12_muffled_part_3 = "Posso vederti adesso, vaffanculo bro!",

		not_leaving_13_muffled_part_1 = "Bruv! Questo tizio ci sta mettendo troppo tempo a succhiare..",
		not_leaving_13_muffled_part_2 = "E' una testa di cazzo.. Dev'essere una testa di cazzo o un fratello succhiatore..",
		not_leaving_13_muffled_part_3 = "È decisamente una testa di cazzo.",

		start_1_part_1 = "Oi bro, broo.. ay, vieni qui, vieni qui..",
		start_1_part_2 = "Yo, ay ay.. Stai provando a prendere un po' più di oxy, fra?",
		start_1_part_3 = "Ayy, pace fratello, pace fratello..",
		start_1_part_4 = "Ay, sai cosa fare anche se va bene?",
		start_1_part_5 = "Ay, Ti sto mandando il ping sulla mappa proprio ora.",
		start_1_part_6 = "Pace.",

		start_2_part_1 = "Ay, wag1 bro! Vieni velocemente qui ragazzo mio!",
		start_2_part_2 = "Yeah yeah.. Stai cercando di prendere l'oxy ancora?",
		start_2_part_3 = "Rispetto per quello brooo.",
		start_2_part_4 = "Sai cosa fare anche se va bene, certo che lo fai bro.",

		start_3_part_1 = "Ay.. ay bro, vieni qui bro, veini qui.",
		start_3_part_2 = "Stai provando a prendere un po' di oxy?",
		start_3_part_3 = "Davvero? Oi, vieni.. vieni.. Non sei un federale giusto?",
		start_3_part_4 = "Ok.. ok.. Adoro, ay, ay, sai cosa fare vero, ti mando il ping e tutto.",

		start_4_part_1 = "Ay! Sei il cazzone dell'ultima volta?!",
		start_4_part_2 = "Oi, vieni qui bro! Hai fatto un buon lavoro l'ultima volta, non posso mentirti su questo..",
		start_4_part_3 = "So quindi.. fallo ancora bro, sai cosa fare, ti mando il ping sulla mappa.",
		start_4_part_4 = "Rispetto per te bro.",

		start_5_part_1 = "Ay vieni qui piccola testa di cazzo!",
		start_5_part_2 = "Yeah, yeah, yeah.. I-Io so chi sei tu bro..",
		start_5_part_3 = "Non me lo dire, Non mi interessa chi sei.. ma so chi sei.",
		start_5_part_4 = "Ma fondamentalmente cosa voglio voglio, è che tu mi porti l'oxy di nuovo.",
		start_5_part_5 = "Ti ricordi dall'ultima volta vero bro? Ti ricordi che drill vero?",
		start_5_part_6 = "Ti mando le informazioni sul telefono, yee pace.",

		start_6_part_1 = "Yooo, è quello il mio ragazzo preferito! Che dici fra!",
		start_6_part_2 = "Ayy, wag1 e tutto quello.. ragazzo mioy.",
		start_6_part_3 = "Ay, in pratica.. Non ti mento ho bisogno che ti mi faccia un'altra piccola missione..",
		start_6_part_4 = "Yeah yeah, tu sa- tu sai di che sto parlando, sai di che sto parlando..",
		start_6_part_5 = "L'oxy, yeah yeah, certo che lo sai. Ay, ti mando le coordinate sul telefono.",
		start_6_part_6 = "Fai quel che devi fare grande bro, pace.",

		start_7_part_1 = "Yeah, yeah, yeah, yeah, yeah, è hey, è la testa di cazzo di prima bro!",
		start_7_part_2 = "Ricordo questo ragazzo! Yeah, ay, sei divertente,mi piaci, mi piaci..",
		start_7_part_3 = "Oi, ho bisogno che tu mi faccia l'oxy no cap. Quindi sbrigati uomo.",
		start_7_part_4 = "Ti mando la posizione, ti mando i dettagli.. Yeah, yeah..",
		start_7_part_5 = "Ricorda però..",
		start_7_part_6 = "Metà è mia, quindi no-non andare a non prendere niente oppure giuro che preparo la ching , ok.",

		start_8_look_to_sides_part_1 = "Ay bro, ti giuro ho visto Gogginshmiel passare di qua bro..",
		start_8_look_to_sides_part_2 = "Ay vieni qua, vieni qua, vieni qua bro, smettila di ignorarmi.",
		start_8_look_to_sides_part_3 = "Yo, yo.. ho bisogno di te ora, ho bisogno che tu vada e mi prenda delle pillole.",
		start_8_look_to_sides_part_4 = "Ho bisogno che tu mi prenda delle pillole.",
		start_8_look_to_sides_part_5 = "Ti mando i dettagli proprio ora, sai come comportarti ora.",
		start_8_look_to_sides_part_6 = "Ma mantieni la testa bassa, perché mi sono imbattuto in diversi federali di già?",
		start_8_look_to_sides_part_7 = "Se vieni preso! Non dire nulla su di me oppure diventi morto fratello!",
		start_8_look_to_sides_part_8 = "Mi capisci? Ok pace.",

		start_9_look_to_sides_part_1 = "Yo non ti mento ho appena visto un poliziotto passare per di là poco fa!",
		start_9_look_to_sides_part_2 = "Sicuro di non essere stato seguito vero?",
		start_9_look_to_sides_part_3 = "Perché I-Io non ti posso mentire ma la FIB è su un altro livello ora bro.",
		start_9_look_to_sides_part_4 = "Hanno elicotteri in cielo e tutti quella merda bro.",
		start_9_look_to_sides_part_5 = "Vedo tutto e so tutto, non ti preoccupare bro.",
		start_9_look_to_sides_part_6 = "Yeah yeah.. stava su di te prima bro, ricor-ricorda la Charger che hai superato?",
		start_9_look_to_sides_part_7 = "Ma non aveva attivato i lampeggianti? Fidati di me..",
		start_9_look_to_sides_part_8 = "Yeah lo so, lo so questo.",

		start_burger_shot_part_1 = "Yo ti ho visto da Burger Shot una volta.. capovolgi gli hamburger vero?",
		start_burger_shot_part_2 = "Yeah non ti mento, hai definitivamente bisogno di questo pane.",

		start_cop_1_part_1 = "Yo riesco ad annusare la puzza di poliziotto della Maze Bank bro..",
		start_cop_1_part_2 = "Ti posso dire che sei un poliziotto.",
		start_cop_1_part_3 = "Meglio se chiami un backup prima che qualcosa cada sulla tua piccola macchina.",

		start_cop_2_part_1 = "Ay wag1, nah stiamo solo aiutando la gente ammalata a Blaine county.",
		start_cop_2_part_2 = "Niente di illegale signore",

		start_gang_member_part_1 = "Giuro ti ho visto venire atterrato da quella gang..",
		start_gang_member_part_2 = "Yeaah yeaah, hai definitivamente cagato, te lo posso affermare da quella faccia da cazzo pitturata.",

		start_group_part_1 = "Yo ho sentito che volete fare uhm- un po' di oxy.",
		start_group_part_2 = "Non ti mento, più siamo meglio è, posso dare le pillole solo a uno di voi.",
		start_group_part_3 = "Quindi spero che la prendiate bene, andate con la vostra piccola squadra o qualsiasi cosa merda vogliate.",
		start_group_part_4 = "Perché il tempo è denaro bro, mi capisci?",
		start_group_part_5 = "Perché sei ancora lì impalato? Non stare impalato, sbrigati, fanculo bro.",

		start_knife_part_1 = "Ookayy, quello è un grande rambo sul tuo polso bro!",
		start_knife_part_2 = "Fratello, è meglio che non muovi quella cosa vicino a me, perché per te, fratello mio, sarà poco piacevole!",

		start_last_fail_part_1 = "Yooo, quello è il mio ragazzo preferito, che stai dicendo bro? Ay, wag1 e tutto quello, caro mio!",
		start_last_fail_part_2 = "Ay.. Non ti mento ho bisogno di te per un'altra missione..",
		start_last_fail_part_3 = "Yeah yeah.. sa-sai di che parlo, sai di che parlo, l'oxy, yeah, yeah di certo lo sai.",
		start_last_fail_part_4 = "Ay, ti mando le coordinate sul telefono.",
		start_last_fail_part_5 = "Fai quello che devi fare big bro, Pace.",

		start_legendary_tier_part_1 = "Ohhh, quindi sei un grande così?",
		start_legendary_tier_part_2 = "Legendary tier, okayy, sembra che tu debba comprare l'intero piano per l'EDM, fratello mio!",
		start_legendary_tier_part_3 = "Suvvia.",

		start_mechanic_part_1 = "Yoo, ripari macchine vero?",
		start_mechanic_part_2 = "Yo G, dopo questa ho bisogno di modificare la mia Asbo, perché la mia Dinga ha troppe dinge, capiscimi.",

		start_mercedes_part_1 = "Yo amo la Mercedes la fuori bro!",
		start_mercedes_part_2 = "Non ti mento, ne avrò bisogno quando hai finito con quella piccola roba bro.",

		start_no_gun_part_1 = "Il bro viene qui amichevolmente come se non stessi per derubare qualcuno.",
		start_no_gun_part_2 = "Sei fortunato che gli ooters non vengano ora, però..",
		start_no_gun_part_3 = "Stai attento per la prossima volta.",

		start_on_timer_1_part_1 = "Ay non ti posso mentire bro, hai fallito l'ultima volta quindi perché sei qui bro?",
		start_on_timer_1_part_2 = "Nahh bro, ritorna dopo quando decidi di agire in buon modo, cazzone.",

		start_on_timer_2_part_1 = "Nahh bro, l'ultima volta hai fallito bro..",
		start_on_timer_2_part_2 = "Vai a fare in culo.",

		start_on_timer_3_part_1 = "Eh? Pensi di poter tornare normalmente dopo che hai sfanculato tutto come l'ultima volta?",
		start_on_timer_3_part_2 = "Nah faresti bene ad andare via prima che gli ooters vengano per te!",

		start_on_timer_4_part_1 = "Yeah Non posso mentire l'ultima volta che hai fatto una cazzata, bro..",
		start_on_timer_4_part_2 = "Non posso mentire, ti sembrerà un po' esagerato ma se rimani qui per altri 2 secondi non sarai più tanto felice, amico mio..",

		start_on_timer_5_part_1 = "Yoo, che stai dicendo G?",
		start_on_timer_5_part_2 = "Non ti mento, l'ultima volta mi hai messo nei guai, non mi hai nemmeno riportato le pillole.",
		start_on_timer_5_part_3 = "Hai tipo mandato tutto a fanculo in grande..",
		start_on_timer_5_part_4 = "Non venire mai più qui! Mi capisci bro?",
		start_on_timer_5_part_5 = "Conosco il tuo nome, conosco la tua faccia. Hai finito qui bro.",

		start_on_timer_6_part_1 = "Yeah questo ragazzo pensa che sia un cattivo ragazzo? Mandando tutto a fanculo e venire qui scusandosi e facendo finta di niente..",
		start_on_timer_6_part_2 = "Nahh bro, non funziona così qui.",
		start_on_timer_6_part_3 = "Faresti bene a fotterti amico mio!",

		start_on_timer_7_part_1 = "Yeah non ti mento, questo ragazzo ha FOTTUTO TUTTO..",
		start_on_timer_7_part_2 = "Vedi quel ragazzo? Si quella testa di cazzo là",
		start_on_timer_7_part_3 = "Ha mandato tutto all'aria, ay bro vieni qui bro!",
		start_on_timer_7_part_4 = "Yeah non ti mento, sei un cazzone, vai via da qui bro, torna dopo bro.",

		start_on_timer_8_part_1 = "Yeah sei un tipo di uomo..",
		start_on_timer_8_part_2 = "Questo qua sta girando attorno LA MIA cosa bro.. fotte LA MIA cosa bro.. fa incazzare LA MIA gente.",
		start_on_timer_8_part_3 = "Poi torna indietro e si aspetta una ricarica, e si aspetta di essere PAGATO bro!",
		start_on_timer_8_part_4 = "Si aspetta di prendere il pane bro.. non prenderai nessun pane bro..",
		start_on_timer_8_part_5 = "Ti prendi le briciole bro.. Vai fottutamente via da qui!",
		start_on_timer_8_part_6 = "Vattene da qui bro, hai finito qui e tutto il resto.",
		start_on_timer_8_part_7 = "Il tuo telefono ha pingato bro, Hai finito bro! Ho qualcun'altro su questa cosa bro.",

		start_over_31d_part_1 = "Yo non ti posso mentire bro! Sei stato qui per troppo tempo..",
		start_over_31d_part_2 = "Ti prego, vai a toccare qualcosa in fretta e torna indietro fratello.",

		start_over_100k_part_1 = "Perché spacci cibo quando hai più di 100 borse a tuo nome?",
		start_over_100k_part_2 = "Quello non è in cash vero? Perché manderò gli ooters a derubarti.",

		start_revving_part_1 = "Aite se continui a tirare su di giri quella macchina bro, avremo un problema in sospeso.",
		start_revving_part_2 = "Calma il tuo piede, prima che calmi il tuo piede bro!",

		start_staff_1_part_1 = "Ay yo bro.. Non dovresti bannare teste di cazzo invece che parlare con me?",
		start_staff_1_part_2 = "Facnulo, Ho bisogno del pane ma sto guardando voi admin.",

		start_staff_2_part_1 = "Broo, sei tipo il secondo moderatore che ha avviato l'oxy oggi..",
		start_staff_2_part_2 = "Voi tutti avete bisogno di un lavoro, non questo però.",

		start_streamer_part_1 = "Yoooo, quel ragazzo che pensa di essere uno streamer famoso!",
		start_streamer_part_2 = "Yo Ls è nella chat, fanculo questo ragazzo bro!",

		start_stressed_part_1 = "Bro! Perché le tue mani stanno tremando?!",
		start_stressed_part_2 = "Vai a prenderti una pausa fumo bro, perché stai tremando per troppo stress ora.",

		start_subaru_part_1 = "Ay quella Subaru è meglio che sia buona per l'off-road G!",
		start_subaru_part_2 = "Perché ti farò un percorso diverso!",

		start_under_10k_part_1 = "Broo, so che stai sotto 10k in banca!",
		start_under_10k_part_2 = "Quindi perché non vai col tuo culo rotto a prendere le pillole che ti sto chiedendo.. veloce bro.",

		start_under_24h_part_1 = "Sei una bestia bro! Continua così.",

		start_zombie_pills_part_1 = "Okay ti sei appena fatto delle pillole Z e ora ti vuoi fare le pillole per l'oxy?..",
		start_zombie_pills_part_2 = "Naah sei un drogato!",

		still_pressing_e_1_part_1 = "Aite bro, perché sei un coglione?",
		still_pressing_e_1_part_2 = "Stop smettila di venire qui. Bro ti ho mandato il ping, controlla il telefono ragazzo mio.",
		still_pressing_e_1_part_3 = "Yeah yeah, controlla.. controlla..",

		still_pressing_e_2_part_1 = "Brooo, sei un tipo stupido o cosa?",
		still_pressing_e_2_part_2 = "Bro ti ho appena mandato il ping, sei 'ceco' o cosa bro?",
		still_pressing_e_2_part_3 = "Controlla quel telefono bro, vaffanculo bro!",

		still_pressing_e_3_part_1 = "Ay non ti sto mentendo, se lo fai un'altra volta a me, te l'ho detto troppe volte ragazzo mio..",
		still_pressing_e_3_part_2 = "Se lo fai ancora, Manderò gli ooters a cercarti bro.",

		still_pressing_e_4_part_1 = "Mi stai facendo incazzare ora, vaffanculo bro!",

		still_pressing_e_5_part_1 = "Brooo, sei stupido o cosa?",
		still_pressing_e_5_part_2 = "Ritorna pure da me, parli ancora con quella voce grossa?",
		still_pressing_e_5_part_3 = "Ay meglio se te ne vai, o giuro su dio che ti fotto alla grande!",

		still_pressing_e_6_muffled_part_1 = "Ay questo ragazzo è una testa di cazzo..",

		still_pressing_e_7_muffled_part_1 = "Ay questo ragazzo è una testa di cazzo.",
		still_pressing_e_7_muffled_part_2 = "E' definitivamente una testa di cazzo, continua a tornare!",
		still_pressing_e_7_muffled_part_3 = "Pensa che mi incazzi di più, non mi sto incazzando di più!",

		still_pressing_e_8_part_1 = "Oi non ti sto mentendo mi sta facendo incazzare per davvero..",
		still_pressing_e_8_part_2 = "Quindi smettila di premerlo bro.",

		still_pressing_e_9_part_1 = "Oi non ti sto mentendo, se continui a premere E bro.",
		still_pressing_e_9_part_2 = "Farò meta e ti farò esplodere come una cazzo di puttanela bro, vaffanculo bro.",

		taking_too_long_1_part_1 = "Ay bro, ci stai mettendo troppo ragazzo mio, mi capisci vero..",
		taking_too_long_1_part_2 = "Faresti bene ad accelerare il passo.",

		taking_too_long_2_part_1 = "Ay, se continui a ritardare avremo un sacco di problemi per te, sai che intendo?",
		taking_too_long_2_part_2 = "Sei in ritardo bro, troppo tardi.. SBRIGATI BRO.",

		taking_too_long_3_part_1 = "Yoo bro, ci stai impiegando troppo bro, stai cercando di rubarmi il lavoro bro?",

		taking_too_long_5_part_1 = "Yo credi di essere divertente non è vero? Credi sia uno scherzo vero Big Man?",
		taking_too_long_5_part_2 = "Ay, vieni.. vieni da me ora, per vedere cosa ti succederà bro.",

		taking_too_long_6_part_1 = "Ay sarebbe MEGLIO se non mi facessi incazzare.. voglio la mia merda ORA fam..",
		taking_too_long_6_part_2 = "Sbrigati cazzo.",

		taking_too_long_7_part_1 = "Bro so che auto stai guidando..",
		taking_too_long_7_part_2 = "Ti osservo da quando hai lasciato questo posto, non pensare di essere al sicuro.",

		taking_too_long_8_part_1 = "Aite, questo è.. l'ultima chance bro.",
		taking_too_long_8_part_2 = "Se perdi tempo, chiamero gli ooter e diventeranno appicicosi amico mio.",
		taking_too_long_8_part_3 = "Quindi faresti meglio a sbrigarti bro... il tempo sta finendo bro.",

		too_many_people_1_part_1 = "Oi non riesco a mentire, ci sono un sacco persone vicino a me ora bro!",
		too_many_people_1_part_2 = "Perché siete tutti qui? State cercando di defenestrarmi?",
		too_many_people_1_part_3 = "Perché giuro che chiamo gli ooter e i matics per uccidervi.",
		too_many_people_1_part_4 = "Vedi cosa dico bro..",
		too_many_people_1_part_5 = "State INDIETRO, ho detto a tutti voi, si questo significa anche per te bro, fanculo bro!",

		too_many_people_2_part_1 = "Yo non riesco a mentire, ci sono troppe persone ora bro..",
		too_many_people_2_part_2 = "Ti stai muovendo in modo strano con tutte queste persone vicine a te e con tutto questo.",
		too_many_people_2_part_3 = "Ho detto che ci dovrebbe essere solo 1 persona, non tipo 4 teste di cazzo..",
		too_many_people_2_part_4 = "Non mi importa se siete una sorta di gang bro, sembra che mi importi? No bro..",
		too_many_people_2_part_5 = "Indietreggiate ora se non volete che le cose diventino serie fratello.",

		tutorial_1_part_1 = "Ay cosa c'è bro? Cerchi di fare dell'oxy per me bro?",
		tutorial_1_part_2 = "Yoo figo! Ay, non ti mento ora, stavo cercando qualcuno che mi aiutasse.",
		tutorial_1_part_3 = "Ay, ay ascolta qui- ascolta qui però..",
		tutorial_1_part_4 = "Ho un po' di prescrizioni yeah.. fatte per me verso nord.",
		tutorial_1_part_5 = "Yeah non ti mento ho bisogno che tu me le prenda per me ora-",
		tutorial_1_part_6 = "Poi ho bisogno che tu- Oi ascoltami quando ti parlo bro!",
		tutorial_1_part_7 = "Prendile giù in città.. e riscattale!",
		tutorial_1_part_8 = "Yeah.. yeah.. hai bisogno di riscattarle.",
		tutorial_1_part_9 = "Yeah Ti mando i dettaggli sul telefono quindi controlla il gps, forza bro..",
		tutorial_1_part_10 = "Ma oi.. faresti meglio a non perdere tempo.. oppure dovrò chiamare gli ooters per te bro.",
		tutorial_1_part_11 = "E fidati, non è una cosa buona, non ti sto mentendo.",
		tutorial_1_part_12 = "Yeah andiamo big bro.. smettila di parlarmi bro, smettila di guardarmi in faccia bro e cazzo sbrigati bro.",

		tutorial_2_part_1 = "Oi che c'è bro? Cerci ci fare l'oxy per me bro?",
		tutorial_2_part_2 = "Yoo, figo! Ay, non ti mento ora, stavo cercando qualcuno che mi aiutasse.",
		tutorial_2_part_3 = "Yo bro, Ho un po' di prescrizioni fatte per me verso nord, fidati di me.",
		tutorial_2_part_4 = "Ay cosa avrò bisogno che tu faccia, sarà che tu vada e prenda quelle prescrizioni-",
		tutorial_2_part_5 = "Yeah, ed ascolta qui- ascolta qui però, prendili giù in città, e riscattale alle farmacie.",
		tutorial_2_part_6 = "Yeah, yeah, yeah, yeah..",
		tutorial_2_part_7 = "Yeah ti mando i dettagli sul telefono, quindi controlla il gps sul telefono, forza bro.",
		tutorial_2_part_8 = "ma oi.. faresti meglio a non perdere tempo.. oppure dovrò chiamare gli ooters per te bro.",
		tutorial_2_part_9 = "E fidati, non è una cosa buona, non ti sto mentendo.",
		tutorial_2_part_10 = "Yeah andiamo big bro.. smettila di parlarmi bro, smettila di guardarmi in faccia bro e cazzo sbrigati bro.",

		tutorial_3_part_1 = "Yo che c'è bro? Praticamente stai cercando di prendere le pillole per l'oxy?",
		tutorial_3_part_2 = "Yeah.. yeah.. ottimo, non ti mento, stavo cercando qualcuno che mi aiutasse.",
		tutorial_3_part_3 = "Yeah, yeah, yeah.. Ho un po' di prescrizioni fatte per me verso nord, fidati di me.",
		tutorial_3_part_4 = "Yeah non ti mento, ho bisogno di TE, per prendere le prescrizioni per me yeah-",
		tutorial_3_part_5 = "Poi dovvrai andare giuù in città per riscattarle in diverse farmacia bro.",
		tutorial_3_part_6 = "Yeah ti copro le spalle, perché cosa farò ora.. yeah..",
		tutorial_3_part_7 = "Vedi la mappa bro? Ti mando i dettagli sulla mappa, controlla il tuo GPS bro.",
		tutorial_3_part_8 = "faresti meglio a non perdere tempo.. oppure dovrò chiamare gli ooters per te bro.",
		tutorial_3_part_9 = "Yeah andiamo big bro.. smettila di parlarmi bro, smettila di guardarmi in faccia bro e cazzo sbrigati bro.",
		tutorial_3_part_10 = "Pace e amore bro, amore."
	},

	panel = {
		loading_title = "Caricando",
		error_title = "Qualcosa è andato storto",

		was_banned = "Bannato",
		loading = "Caricando i data del player...",
		no_warnings = "Nessun avvertimento",
		not_shown_warnings = "${count}non più mostrato",
		system_issuer = "Sistema",
		add_warning_title = "Aggiungi avvertimento",
		message_placeholder = "${playerName} ha fatto un oopsie...",

		type_note = "Nota",
		type_warning = "Avverto,emtp",
		type_strike = "Sciopero",
		type_system = "Sistema",

		button_cancel = "Cancella",
		button_add = "Aggiungi",
		button_close = "Chiudi",
		button_new = "Nuovo",

		invalid_server_id = "Invalid server id.",

		failed_load_player = "Impossibile caricare i dati del giocatore. Hai inserito un ID server valido!?",
		failed_add_warning = "Impossibile aggiungere un avvertimento.",

		get_info_no_permissions = "Il giocatore ha tentato di ottenere informazioni su un giocatore senza le autorizzazioni appropriate.",

		user_indefinitely_banned_warning_no_reason = "Ho bannato a tempo indeterminato questa persona senza un motivo specifico. Questo avviso è stato generato automaticamente a seguito del divieto.",
		user_indefinitely_banned_warning = "Ho bannato a tempo indeterminato questa persona con il motivo `${reason}`. Questo avviso è stato generato automaticamente a seguito del divieto.",
		user_temporarily_banned_warning_no_reason = "Ho bannato questa persona senza un motivo specifico per ${displayTime}. Questo avviso è stato generato automaticamente a seguito del divieto.",
		user_temporarily_banned_warning = "Ho bannato questa persona con il motivo `${reason}` for ${displayTime}. Questo avviso è stato generato automaticamente a seguito del divieto."
	},

	panic = {
		press_panic_button = "Hai 5 secondi per premere il pulsante (X) per inviare un Panic Button.",
		panic_button_timeout = "Non hai premuto il pulsante per inviare il Panic Button.",

		panic_button_title = "[Dispatch]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} atterrato.",
		panic_button_no_unit = "10-14, ${lastName} ${label} atterrato.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "Officer",
		label_paramedic = "Paramedico"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Riempire il sacchetto di carta",
		no_bags = "Non hai sacchetti di carta.",
		no_bag_items = "Non hai oggetti che potresti mettere in un sacchetto di carta.",
		close_bag = "Close Borsa",
		cancel_bag = "Annulla",
		title = "Sacchetto di carta",
		failed_fill = "Impossibile riempire il sacchetto di carta.",
		filled_bag = "Sacchetto di carta riempito con successo."
	},

	parking_meters = {
		not_paid = "Non pagato",
		insert_dollar = "[${InteractionKey}] Inserisci $${amount}",

		no_cash = "Non hai un dollaro.",
		max_time = "Questo parchimetro è pieno.",
		failed_pay = "Impossibile pagare il parchimetro."
	},

	pawn_shops = {
		sell_items = "Vendere ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Vendere ${itemLabel}",
		sold_items = "Venduta ${sellAmount}x ${itemLabel} per $${sellPrice}.",
		no_items_to_sell = "Tu non hai ${itemLabel} vendere.",
		daily_limit_reached = "Hai raggiunto il tuo limite giornaliero, il venditore non sta acquistando più articoli.",
		illegal_pawn_shop_id = "Tentare di superare i valori per un banco dei pegni che non esiste.",
		used_pawn_shop_title = "Shop di pegni usato",
		used_pawn_shop_details = "${consoleName} usato un banco dei pegni e venduto ${sellAmount} `${itemLabel}` e ricevuto $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "Tentativo ${attemptMessage} Riuscito",
		attempt_failed = "Tentativo ${attemptMessage} Fallito!!",
		dice_message = "a tirato un dado, ed è uscito un ${diceNumber}",
		roll_message = "tirato un dado personalizzato con le impostazioni ${rolls}d${max} ed è uscito ${totalValue}",
		citizen_card_message = "Mostrando il Documento (${characterId})",
		badge_message = "Mostrando il badge (${characterId})",
		license_message = "Mostrando la licenza (${characterId})",
		ped_message_logs_title = "Messaggio Ped",
		ped_message_logs_details = "${consoleName} inviato un messaggio ped con il seguente messaggio: `${pedMessage}`",
		attached_ped_message_logs_title = "Messaggio Ped in allegato",
		attached_ped_message_logs_details = "${consoleName} allegato un messaggio ped con il seguente messaggio: `${pedMessage}`",
		chat_ped_messages_enabled = "I messaggi ped verranno ora visualizzati nella chat.",
		chat_ped_messages_disabled = "Ped messages non sarà piu visibile nella chat.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/inspect [${serverId}]",
		frisk_chat_title = "/frisk [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/dice [${serverId}]",
		roll_message_chat_title = "/roll [${serverId}]",
		description_message_chat_title = "/description [${serverId}]",
		message_too_long = "Il messaggio contiene troppi caratteri in linea!",
		card_command_wait = "Hai appena pescato una carta, aspetta un po' prima di pescarne un'altra.",
		ped_message_timeout = "Rallenta, aspetta un po' prima di inviare un altro messaggio."
	},

	ped_objects = {
		illegal_ped_object = "Tentando di aggiungere un oggetto PED non in 'allowed' Elenco degli oggetti PED.",
		illegal_ped_weapon_object = "Tentativo di aggiungere un oggetto Ped Weapon non nell'elenco delle armi."
	},

	ped_task = {
		network_id_invalid = "ID di rete non valido.",
		ped_not_found = "PED con ID di rete `${networkId}` non trovato.",
		tracked_ped = "PED Tracciato",
		tracked_ped_is = "Ped (${entity}) e:"
	},

	ped_spawn = {
		ped_missing_model = "Parametro del modello mancante.",
		ped_spawn_success = "PED generato con successo.",
		ped_failed_spawn = "Impossibile spawn PED.",
		invalid_weapon = "Arma non valida.",
		ped_remove_success = "Rimuoveti con successo i PED generati.",
		ped_failed_remove = "Impossibile rimuovere i PED generati.",
		ped_task_success = "Assegnato correttamente '${task}' compito di generare pedoni.",
		ped_failed_task = "Impossibile assegnare '${task}' compito di generare pedoni.",
		invalid_target = "ID server di destinazione non valido.",
		missing_task = "Parametro dell'attività mancante.",
		invalid_task = "Attività PED non valida '${task}'.",
		target_required = "Questa attività PED richiede un target valido.",
		ped_emote_success = "Posti di PED generati con successo'${emote}' Emote.",
		ped_failed_emote = "Non è riuscito a far giocare i PED generati '${emote}' Emote.",
		invalid_emote = "Emota non valida '${emote}'.",
		missing_emote = "Parametro Emote mancante.",

		emote_list = "Ped Emotes disponibile: ${list}.",
		task_list = "Attività di PED disponibili: ${list}.",

		spawn_ped_missing_perms = "Ha tentato di generare un PED senza autorizzazioni adeguate.",
		remove_peds_missing_perms = "Ha tentato di rimuovere i PED generati senza autorizzazioni adeguate.",
		ped_assign_task_missing_perms = "Ha tentato di assegnare un'attività a generare PED senza autorizzazioni adeguate."
	},

	ped_steal = {
		ped_steal_reset = "PED PED è stato ripristinato.",
		ped_steal_success = "Ho rubato con successo la pelle PED.",
		ped_steal_failed = "Non è riuscito a rubare la pelle.",
		ped_not_found = "PED PED PED non trovato.",
		invalid_server_id = "ID server non valido."
	},

	ped_takeover = {
		failed_reset = "Impossibile tornare al PED originale.",
		failed_reset_not_exist = "Il tuo PED originale non esiste o non è vicino a te.",
		failed_takeover = "Non è riuscito a prendere PED.",
		invalid_network_id = "ID di rete non valido."
	},

	peds = {
		ped_robbing_injection = "Eccessivo petrolio! (Bypassato server-timeout, molto probabilmente usando un iniettore per raggiungere questo obiettivo.)",
		robbed_ped_logs_title = "Ped derubato",
		robbed_ped_logs_details = "${consoleName} derubato un PED e ricevuto $${payout}."
	},

	pepper_spray = {
		press_to_pepper_spray = "Premi ~INPUT_ATTACK~ per usare lo spray al peperoncino.",
		using_pepper_spray = "Usando lo spray al peperoncino."
	},

	phone = {
		app_settings = "Impostazioni",
		app_contacts = "Contatti",
		app_calls = "Telefono",
		app_messages = "Messaggi"
	},

	phone_numbers = {
		no_phone_number_set = "Nessun numero di telefono è stato impostato.",
		invalid_format = "Il numero di telefono impostato era in formato non valido.",
		invalid_length = "Il numero di telefono impostato era di lunghezza non valida.",
		invalid_characters = "Il numero di telefono impostato conteneva caratteri non validi.",
		phone_number_changed_to = "Il tuo numero di telefono è stato modificato `${phoneNumber}`.",
		phone_number_taken = "Il numero di telefono `${phoneNumber}` è preso.",
		database_error = "Si è verificato un errore di database back-end.",
		no_packages = "Non hai pacchetti per questo.",
		api_error = "La nostra API di back-end ha restituito un errore.",
		api_not_available = "La nostra API di back-end non è disponibile.",
		phone_number_is_available = "Il numero di telefono `${phoneNumber}` è disponibile.",
		phone_number_is_not_available = "Il numero di telefono `${phoneNumber}` Non è disponibile."
	},

	pictures = {
		selfie_description = "Ritratto di ${firstName} ${lastName}."
	},

	player_control = {
		unable_to_drive_for_yourself = "Non sei in grado di prendere il sopravvento per te stesso.",
		drive_for_player_no_permissions = "Il giocatore ha tentato di guidare per conto del giocatore ma non disponeva delle autorizzazioni necessarie per farlo.",
		player_is_not_nearby = "Il giocatore con ID server ${serverId} non è nelle vicinanze.",
		player_is_not_the_drive_of_a_vehicle = "Il giocatore con ID server ${serverId} non è il conducente di un veicolo.",
		press_to_stop_drive_for = "Premi ~INPUT_FRONTEND_CANCEL~ per smettere di guidare il player."
	},

	player_scales = {
		reset_player_scale_for = "Ripristina la scala del giocatore per ${consoleName}.",
		set_player_scale_to_for = "Imposta la scala del giocatore su `${scale}` per ${consoleName}",
		reset_player_scale = "Ripristina la scala del giocatore.",
		set_player_scale_to = "Imposta la scala del giocatore su `${scale}`.",
		set_player_scale_no_permission = "Il giocatore non aveva l'autorizzazione richiesta per impostare la scala di un giocatore.",
		player_is_already_set_to_scale = "${consoleName} è già impostato su scala `${scale}`.",
		you_are_already_set_to_scale = "Sei già impostato su scala `${scale}`.",
		player_is_not_scaled = "${consoleName} non è ridimensionato.",
		you_are_not_scaled = "Non sei ridimensionato."
	},

	player_stats = {
		hp = "HP",
		armor = "Armatura",
		toggle_player_stats_no_permissions = "Il giocatore ha tentato di attivare/disattivare le statistiche del giocatore senza le autorizzazioni appropriate.",
		updated_render_range = "Intervallo di rendering aggiornato a ${renderRange}.",
		turned_player_stats_on = "Statistiche giocatore attivate.",
		turned_player_stats_off = "Statistiche giocatore disattivate."
	},

	players = {
		player_left = "Giocatore a sinistra [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Premi ~INPUT_CONTEXT~ per fare lo strip dance.",
		this_pole_is_occupied = "Questo pale è occupato.",
		stop_dancing = "Fermati",
		change_dance = "Cambia ballo (${animationId})",

		no_model_name_set = "Nessun nome del modello.",
		invalid_model = "Modello '${modelName}' è invalido.",
		pole_dancing_offset = "Modello '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "Piscine straripanti: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "Il giocatore ha tentato di utilizzare un oggetto a sostegno con un documento di identità illegale.",
		spawn_prop_not_staff = "Il giocatore ha tentato di generare un sostegno ma non avevano le autorizzazioni richieste per farlo.",
		managing_props_help = "Attualmente stai gestendo oggetti di scena.Camminare fino a un sostegno e premi ~INPUT_CONTEXT~ raccoglierlo.",
		total_props = "Oggetti di scena totali: ${count}",
		active_props = "Prop attivos: ${count}",
		press_to_pick_up = "[${InteractionKey}] Raccolta",
		pick_up = "Raccolta",
		picking_up = "Raccogliere",
		press_to_destroy = "[${InteractionKey}] Distruggere",
		destroy = "Distruggere",
		destroying = "Distruggere",
		prop = "Prop",
		model_parameter_missing = "La `model` Manca il parametro.",
		model_parameter_invalid = "Il modello `${model}` è un modello non valido.",
		model_parameter_is_not_an_object = "Il modello `${model}` non è un oggetto.",
		spawned_prop_non_networked = "Ha generato un sostegno non network con il modello `${model}`.",
		spawned_prop_networked = "Ha generato un sostegno in rete con il modello `${model}`.",
		spawned_exact_prop = "Prop spawnato.",
		failed_to_spawn_prop = "Impossibile generare prop con il modello `${model}`.",
		not_able_to_spawn_in_vehicle = "Non puoi essere in un veicolo quando si genera un sostegno.",
		not_able_to_spawn_while_dead = "Non puoi essere morto quando si genera un sostegno.",
		not_able_to_spawn_while_moving = "Devi stare fermo quando si genera un sostegno.",
		stand_still_to_place_prop = "Devi stare fermo per collocare un sostegno.",
		prop_no_interior = "Puoi solo posizionare questo sostegno all'esterno.",

		invalid_prop_id = "ID prop.",
		prop_deleted = "Prop con ID ${propId} è stato eliminato.",

		invalid_wipe_radius = "Raggio di pulizia non valido (tra 1 e 100).",
		wipe_successful = "Ha spazzato via gli oggetti di scena.",
		wipe_props_missing_permissions = "Il giocatore ha tentato di pulire gli oggetti di scena ma non avevano le autorizzazioni richieste per farlo.",

		placing_prop = "Posizionamento di prop",
		pickup_prop = "Raccogliere l'elica",
		setting_up_tire_wall = "Impostazione della parete del pneumatico",
		destroying_tire_wall = "Distruggere la parete dei pneumatici"
	},

	radio = {
		frequency = "Frequenza",
		switch = "Cambia",
		radio_turned_off = "La radio è stata spenta.",
		radio_removed = "Hai perso la radio.",
		no_radio = "Non hai una radio.",
		unable_to_use_radio_while_cuffed = "Non puoi usare la radio mentre sei ammanettato.",
		unable_to_use_radio_while_down = "Non puoi usare la radio mentre sei a terra.",
		unable_to_use_radio_as_animal = "Non puoi usare la radio come un animale.",
		frequency_set_to_streamer = "La frequenza è stata impostata.",
		frequency_set_to = "La frequenza è stata impostata sul canale ${frequency}.",
		frequency_already_set_to = "La frequenza è stata già impostata sul canale ${frequency}.",
		radio_volume_same = "Il volume della radio è già impostato su `${radioVolume}`.",
		radio_volume_reset = "Il volume della radio è stato ripristinato.",
		radio_volume_set = "Il volume della radio è ora impostato su `${radioVolume}`.",
		radio_volume_current = "Il tuo attuale volume della radio è impostato su `${radioVolume}`.",
		radio_volume_current_default = "Il tuo attuale volume radio è predefinito.",
		radio_sound_effects_same = "Il volume degli effetti sonori della radio è già impostato su `${radioSoundEffects}`.",
		radio_sound_effects_reset = "Il volume degli effetti sonori della radio è stato ripristinato.",
		radio_sound_effects_set = "TIl volume degli effetti sonori della radio è ora impostato su `${radioSoundEffects}`.",
		radio_sound_effects_current = "Il volume degli effetti sonori della radio è attualmente impostato su `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "Il volume degli effetti sonori della radio è attualmente predefinito.",

		radio_missing_last_freq = "Non hai una radio per unirti all'ultima frequenza.",

		radio_debug_failed = "Impossibile attivare/disattivare il debug della radio.",
		radio_debug_off = "Debug radio disattivato correttamente.",
		radio_debug_on = "Debug radio attivato correttamente.",

		radio_debug_no_permissions = "Tentativo di attivare/disattivare il debug della radio senza l'autorizzazione appropriata.",

		decrypt_frequency = "[${InteractionKey}] Decifra frequenza",
		decrypting_frequency = "Decifrando la frequenza",
		decrypting_frequency_failed = "Impossibile decrittografare la frequenza.",
		decrypter_jammed = "Il decrypter sembra essere inceppato.",
		decrypted_frequency = "La frequenza sembra essere intorno `${frequency}`.",
		no_frequency_detected = "Nessuna frequenza trovata."
	},

	remote_camera = {
		connected_to_camera = "Connesso alla camera #${id}",

		camera_distance = "Distanza: ${distance}m",
		out_of_range = "Fuori dal limite",

		disconnect = "DisconneSSO",
		view_feed = "Visualizza alimentazione",

		no_nearby_cameras = "Nessuna camera vicina",
		nearby_cameras = "${amount} camera vicina",
		no_nearby_cameras_description = "Non ci sono camere vicino a te.",

		camera_operator = "operatore: ${fullName}",

		camera_label = "Camera #${id}",
		camera_distance = "Distanza: ${distance}m",
		connect = "Connessione",

		something_went_wrong = "Qaulcosa è andato strorto.",
		error_out_of_range = "La camera è fuori portata.",
		error_not_found = "La camera non è stata trovata."
	},

	reskin = {
		plastic_surgery = "Chirurgia plastica",
		los_santos_police_dept = "LOS SANTOS POLICE DEPT",

		reskin_player_no_permissions = "Il giocatore ha tentato di attivare o disattivare il debug della radio senza l'autorizzazione appropriata.",

		triggered_reskin_for_player = "Reskin attivato per ${consoleName}.",

		triggered_reskin_for_player_logs_title = "Reskin attivato per il giocatore.",
		triggered_reskin_for_player_logs_details = "${consoleName} resking attivato per ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "Reskin attivato per te stesso",
		triggered_reskin_for_self_logs_details = "${consoleName} attivato un reskin te stesso.",

		no_reskin_packages = "Non hai un pacchetto reskin.",
		redeemed_reskin_package = "Paccetto reskin riscattato con successo."
	},

	restaurants = {
		["table"] = "Tavolo",
		press_to_table = "[${InteractionKey}] Tavolo",

		table_title = "Tavolo ${tableId}",
		seat = "Sedia ${seatId}",
		close_menu = "Chiudi menù",
		loading = "Caricando...",

		leave_seat = "Alzati",
		view_menu = "Guarda il menù",
		change_seating_position = "Cambia posizione (${animationId})",

		sushi = "Sushi",
		drinks = "Bevande",
		desserts = "Dolci",

		aka = "Aka",
		kuro = "Kuro",
		shiro = "Shiro",
		midori = "Midori",
		nigiri = "Nigiri",
		sex_on_the_beach = "Sex on the beach",
		mojito = "Mojito",
		pina_colada = "Pina Colada",
		tiramisu = "Tiramisù",
		chocolate_mousse = "Mousse al ciocolato",

		food_replenish = "La tua fame e la tua sete saranno riempite di ${amount}%.",
		thirst_replenish = "Ti deseterai di ${amount}%.",
		hunger_replenish = "La tua fame sarà riempita di ${amount}%.",
		diving_drop_boost = "Prendi ${amount}x più gocce da viaggi subacquei per ${duration} minuti.",
		hunting_drop_boost = "Prendi ${amount}x più gocce da caccia per ${duration} minuti.",
		garbage_drop_boost = "Prendi ${amount}x più gocce da rifiuti per ${duration} minuti.",
		faster_progress_bars = "Hai ${amount}x la barra più veloce per ${duration} minuti.",
		weapon_damage_multiplier = "Hai ${amount}x danni aumentati per ${duration} minuti.",
		local_sales_multiplier = "Hai ${amount}x moltiplicatore delle vendite per i prodotti venduti alla gente del posto.",
		shorter_boosting_cooldown = "Hai ${amount}x un cooldown più corto per gli hackeraggi nel boosting.",
		swim_faster = "Nuota ${amount}x più velocemente per ${duration} minuti.",
		walk_faster = "Cammina e corri ${amount}x più veloce per ${duration} minuti.",
		health_generation = "Hai una graduale generazione della salute per ${duration} minuti.",
		better_stamina = "Essere in grado di correre per ${duration} minuti senza stancarti.",
		more_inventory_space = "Avere ${amount} slot nell'inventario in più per ${duration} minuti.",

		buffs_note = "I buff si attiveranno solo dopo aver lasciato le vicinanze dell'edificio."
	},

	riot_mode = {
		riot_mode_enabled = "Modalità riot abilitata correttamente.",
		riot_mode_disabled = "Modalità riot disabilitata correttamente.I PED già aggressivi continueranno a combattere fino a quando non saranno morti.",
		riot_mode_failed = "Impossibile attivare la modalità Riot.",
		riot_mode_missing_perms = "Ha tentato di attivare la modalità riot senza l'autorizzazione adeguata.",

		riot_mode_enabled_help = "La modalità antisommossa è stata abilitata.",
		riot_mode_disabled_help = "La modalità antisommossa è stata disabilitata.",

		add_riot_player_no_permissions = "Ha tentato di aggiungere un giocatore all'elenco antisommossa senza l'autorizzazione adeguata.",
		remove_riot_player_no_permissions = "Ha tentato di aggiungere un giocatore all'elenco antisommossa senza l'autorizzazione corretta.",

		player_already_in_riot_list = "${consoleName} è già nella lista dei rivolte.",
		player_not_in_riot_list = "${consoleName} non è nell'elenco antisommossa.",
		added_riot_player = "Aggiunto ${consoleName} alla lista delle rivolte.",
		failed_to_add_riot_player = "Impossibile aggiungere ${consoleName} alla lista delle rivolte.",
		removed_riot_player = "Rimossa ${consoleName} Dall'elenco delle rivolte.",
		failed_to_remove_riot_player = "Impossibile rimuovere ${consoleName} Dall'elenco delle rivolte"
	},

	safes = {
		how_to_use = "Usa i tasti \"A\" e \"D\" per ruotare la cassaforte finché non trovi la combinazione corretta. Inizia premendo \"D\".",
		lock_open = "Sbloccato",
		lock_closed = "Bloccato"
	},

	scoreboard = {
		player_list = "Lista giocatori",
		players = "Giocatori",
		total = "Totali",
		recent_disconnections = "Disconnessioni recenti",
		disconnected_player = "Giocatore Disconnesso",
		id = "ID",
		name = "Nome",
		identifier = "Identificatore",
		reason = "Ragione",
		time_since_disconnection = "Tempo dalla disconnessione",

		you_are_now_metagaming = "Ora sei Metagaming.",
		you_are_no_longer_metagaming = "Non sei più Metagaming."
	},

	screenshots = {
		screenshot_created = "Uno screenshot è stato creato con successo.",
		screenshot_failed = "Impossibile ottenere uno screenshot dall'utente dato.",
		screencapture_created = "Uno screencapture è stato creato con successo.",
		user_not_found_with_server_id = "Impossibile trovare un utente con l'ID server indicato.",
		invalid_lifespan_parameter = "Il parametro della durata della vita non è valido.",
		invalid_server_id_parameter = "Il parametro ID server non è valido.",
		invalid_duration_parameter = "Il parametro di durata non è valido.",
		invalid_fps_parameter = "Il parametro FPS non è valido.",
		missing_server_id_parameter = "Manca il parametro ID server.",

		screenshot_error_client_false = "Impossibile leggere lo schermo del client.",
		screenshot_error_user_not_found = "Impossibile creare lo screenshot",
		screenshot_error_user_developer = "L'user è un developer.",
		screenshot_error_no_token = "Impossibile ottenere il token opfw.",
		screenshot_timeout = "Richiesta di screenshot scaduta."
	},

	scuba = {
		sunken_ship = "Nave affondata",
		gather_item = "Raccogli l'oggetto (${distance}m)",

		collected_junk = "Spazzatura raccolta.",
		collected_item = "Raccolta ${itemLabel}.",
		collected_broken_item = "Raccolto rotto ${itemLabel}.",

		collected_scuba_item_logs_title = "Articolo di scuba raccolto",
		collected_scuba_item_logs_details = "${consoleName} raccolto un articolo subacqueo e ricevuto `${itemName}`."
	},

	scuba_gear = {
		equipping_scuba_tank = "Equipaggiamento del serbatoio subacqueo",
		equipping_scuba_mask = "Equipaggiare la maschera subacquea"
	},

	security_cameras = {
		illegal_security_camera = "Tentando di manomettere le telecamere di sicurezza illegali.",
		saved_security_cameras_to_file = "Salvato `${amount}` telecamere di sicurezza in un file sul server.",
		no_nearby_security_cameras = "Non ci sono telecamere di sicurezza nelle vicinanze da salvare.",
		no_city_ping = "Impossibile eseguire il ping delle telecamere della città.",
		offline = "Offline",
		camera_list = "Lista camera",
		camera = "Camera ${cameraId}",
		mission_row_pd = "Mission Row PD",
		pillbox_hospital = "Ospedale Pillbox",
		jewelry_store = "Gioielleria a Rockford Hills",
		principal_bank = "Banca principale",
		bolingbroke_penitentiary = "Penitenziario di Bolingbroke",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Molo Del Perro",
		flywheels_garage = "Flywheels Garage",
		sandy_shores_pd = "Sandy Shores PD",
		sandy_shores_hospital = "Ospedale di Sandy Shores",
		davis_sheriffs_station = "Sceriffato Davis",
		vespucci_pd = "Stazione di polizia di Vespucci",
		rockford_hills_pd = "Rockford Hills PD",
		la_mesa_pd = "La Mesa PD",
		beaver_bush_ranger_station = "Stazione dei ranger di Beaver Bush",
		cinema = "Cinema",
		st_fiacre_hospital = "Ospedale St. Fiacre",
		weazel_news = "Weazel News",
		palomino_fib_facility = "Struttura FIB di Palomino",
		bank_1 = "Banca a Legion Square",
		bank_2 = "Banca a Rockford Hills",
		bank_3 = "Banca a Alta",
		bank_4 = "Banca a Burton",
		bank_5 = "Banca a Banham Canyon",
		bank_6 = "Banca a Grand Senora",
		bank_7 = "Banca a Paleto battle_royale_toggle_command",
		grocery_store_1 = "Stazione di servizio Davis LTD",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Drogheria Murrieta Heights Rob's",
		grocery_store_4 = "Stazione di servizio Little Seoul LT",
		grocery_store_5 = "Drogheria Vespucci Canals Rob's",
		grocery_store_6 = "Drogheria Morningwood Rob's",
		grocery_store_7 = "Stazione di servizio Mirror Park LTD",
		grocery_store_8 = "Downtown Vinewood 24/7",
		grocery_store_9 = "Tataviam Mountains 24/7",
		grocery_store_10 = "DrogheriaBanham Canyon Rob's",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "Stazione di servizio Richman Glen LTD",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Drogheria Grand Senora Rob's",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Drogheria Ace Sandy Shores",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Stazione di servizio Grapeseed LTD",
		grocery_store_20 = "Mount Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "Attualmente non stai utilizzando un veicolo.",
		not_a_self_driving_vehicle = "Il veicolo che stai operando non supporta il pilota automatico.",
		no_waypoint_set = "Si prega di impostare un waypoint per contrassegnare la tua destinazione.",
		invalid_waypoint_set = "Il waypoint che hai impostato non può essere guidato automaticamente.",
		self_driving_engaged = "L'autopilota è stato coinvolto. Premi ~INPUT_SPRINT~ e ~INPUT_DUCK~ Per controllare la velocità di crociera.",
		self_driving_disengaged = "L'autopilota è stato disimpegnato.",
		destination_too_close = "La destinazione marcata è troppo vicina.",
		self_driving_could_not_be_engaged = "Il pilota automatico non poteva essere fidanzato."
	},

	shield = {
		no_weapon_equipped = "Devi avere un'arma equipaggiata per equipaggiare lo scudo balistico.",
		no_shield = "Non hai uno scudo balistico nel tuo inventario."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "Il giocatore ha tentato di creare un'onda d'urto ma non avevano le autorizzazioni richieste.",
		push_player_missing_permissions = "Il giocatore ha tentato di spingere un giocatore ma non aveva le autorizzazioni richieste.",
		shockwave_success = "Creato con successo Shockwave.",
		shockwave_failed = "Non è riuscito a creare shockwave.",

		invalid_server_id = "ID non valido.",
		push_player_success = "Giocatore spinto.",
		push_player_failed = "Giocatore non spinto."
	},

	shooting_ranges = {
		turn_on = "Attiva ($${cost})",
		turn_off = "Disattiva",
		toggle_through_targets = "Attiva alterni attraverso gli obiettivi(${modelId})",
		speed = "Velocità (${speedLevel})",
		rotation = "Rotazione (${rotationLevel})",
		clear_bullet_impacts = "clearBulletImpacts",
		illegal_shooting_spot_value = "Tentare di passare valori non validi per i punti di sparatorie.",
		illegal_shooting_spot_id = "Tentativo di passare i valori per un punto di sparatorie che non esiste.",
		not_enough_cash = "Non hai abbastanza contanti."
	},

	shrooms = {
		press_to_pick_up_shrooms = "Premi ~INPUT_CONTEXT~ per raccogliere shrooms.",
		picking_up_shrooms = "Raccogliendo shrooms.",
		press_to_sell_shrooms = "Premi ~INPUT_CONTEXT~ per vendere shrooms.",
		local_not_interested = "Il locale non sembra essere interessato in questo momento.",
		not_interested = "Questo locale non sembra essere interessato ai tuoi shrooms.",
		selling_shrooms = "Vendere shrooms.",
		shrooms_not_ripe = "Questi shroom non sembrano ancora maturi, forse lascianoli un po 'più a lungo.",
		shroom_id = "fungo-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "Premi ~INPUT_CONTEXT~ per attivare/disattivare il magnete.",
		skylift_magnet_turned_off_logs_title = "Magnete Skylift disattivato",
		skylift_magnet_turned_off_logs_details = "${consoleName} spento il magnete Skylift.",
		skylift_magnet_turned_on_logs_title = "Magnete Skylift attivato",
		skylift_magnet_turned_on_logs_details = "${consoleName} acceso il magnete Skylift.",
		skylift_attached_vehicle_logs_title = "Veicolo agganciato allo Skylift",
		skylift_attached_vehicle_logs_details = "${consoleName} attaccato un veicolo al loro Skylift."
	},

	smoothies = {
		blend = "frullatore",
		close = "Chiudi",

		use_blender = "[${InteractionKey}] Usa il frullatore",
		blending = "Frullando",

		smoothie_label = "Frullato (${flavors})",
		seperator = "e"
	},

	snow = {
		hold_to_pick_up_snowballs = "Tieni Premuto ~INPUT_CONTEXT~ per raccogliere una palla di neve."
	},

	spawn = {
		spawn_now = "Spawna Ora",
		last_position = "Ultima Posizione",

		train_station = "Stazione del treno",
		city_bus_station = "Stazione degli autobus di LS",
		paleto_bay_bus_station = "Stazione degli autobus di Paleto Bay",

		mission_row_police_station = "Mission Row PD",
		sandy_police_station = "Sandy Shores PD",
		paleto_police_station = "Paleto Bay PD",

		mount_zonah = "Mount Zonah",
		sandy_hospital = "Ospedale di Sandy Shores",
		paleto_hospital = "Ospedale di Paleto Bay",

		battle_royale = "Battle Royale"
	},

	special_imports = {
		special_imports_blip = "Import Speciale",

		purchased_vehicle = "Acquistato con successo ${label} per $${price}. Il veicolo è stato aggiunto al tuo garage.",

		something_went_wrong = "Qualcosa è andato storto.",
		not_enough_money = "Non hai abbastanza soldi.",
		invalid_package = "Livello del pacchetto non valido.(Hai bisogno del livello divino)",

		dealership_closed = "La concessionaria è attualmente chiusa.",

		purchased_vehicle_logs_title = "Importazioni speciali",
		purchased_vehicle_logs_details = "${consoleName} acquistato a `${modelName}` Veicolo di importazioni speciali per ${price} (Plate: `${plate}`).",

		marker_label = "${label} | $${price} | Stock: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] Compra ${label} per $${price}",
		marker_label_purchase_timer = "[${timer}s] Tieni premuto ${SeatEjectKey} per comprare ${label} per $${price}",

		vehicle_sold_out = "${label} | il Veicolo non è piu in Stock"
	},

	spectating = {
		cannot_spectate_self = "Non puoi intrappolare te stesso.",
		failed_spectate = "Impossibile fare il giocatore.",
		player_not_exist = "Il giocatore è offline.",
		no_character_loaded = "Il giocatore non ha un personaggio caricato.",
		not_same_instance = "Il giocatore non è nella tua stessa istanza.",

		loading_coords = "Caricando coordinate",
		preloading_area = "Precaricando la zona",
		finding_player = "Cercando giocatore",

		invincibility_active = "GODMOD: ~r~Attiva~w~",
		invincibility_inactive_dead = "GODMOD: ~g~inattiva~w~ (dead)",
		invincibility_inactive = "GODMOD: ~g~inattiva~w~",

		health_ok = "Salute: ~g~${health} / ${maxHealth}~w~",
		health_bad = "Salute: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "Armatura: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "Armatura: ~r~${armor} / ${maxArmor}~w~",

		speed = "Velocità: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "kmh",

		exit_spectate = "Premi ~g~${InteractionKey}~w~ per uscire dalla modalita Spettatore",

		spectate_logs_title = "Cominciato a spectare",
		spectate_logs_details = "${consoleName} cominciato a spectare ${targetUser}.",

		spectate_stopped_logs_title = "Smesso di spectare",
		spectate_stopped_logs_details = "${consoleName} smesso di spectare."
	},

	spying = {
		microphone_bug_not_activated = "Questo bug non è stato attivato.",
		vehicle_tracker_not_activated = "Questo tracker non è stato attivato.",
		microphone_bug_active_with_battery = "Questo bug microfono è attualmente attivo.La sua batteria è a ${batteryPercentage}%. Puoi \"Use\" per ascoltare qualsiasi conversazione potrebbe raccogliere.<br><br>Device Id: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "Questo bug del microfono ha esaurito la batteria.Il bug del microfono fisico decaderà dopo una settimana.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "Questo tracker del veicolo è attualmente attivo.La sua batteria è a ${batteryPercentage}%. Finché è disponibile il veicolo questo tracker, verrà visualizzato sulla mappa.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Questo tracker del veicolo ha esaurito la batteria.Il tracker del veicolo fisico decaderà dopo una settimana.<br><br>Device Id: ${deviceId}",
		scanning_for_devices = "Scansione per dispositivi",
		searching_for_devices = "Alla ricerca di dispositivi",
		no_nearby_vehicle = "Nessun veicolo vicino.",
		placing_vehicle_tracker = "Posizionamento del tracker del veicolo",
		error_using_vehicle_tracker = "C'è stato un errore mentre cercava di posizionare il tracker del veicolo.",
		vehicle_tracker_placed = "Il tracker del veicolo è stato posizionato con successo.",
		error_using_microphone_bug = "C'è stato un errore mentre cercava di posizionare il bug del microfono.",
		microphone_bug_placed = "Il bug del microfono è stato posizionato con successo.",
		placing_microphone_bug_on_vehicle = "Posizionare un bug sul veicolo",
		placing_microphone_bug_on_player = "Posizionare un bug sul giocatore",
		placing_microphone_bug_on_ground = "Posizionare un bug a terra",
		error_using_device_scanner = "Si è verificato un errore durante il tentativo di utilizzare lo scanner del dispositivo.",
		error_searching_for_devices = "C'è stato un errore mentre cercava di cercare dispositivi.",
		found_devices = "Trovato ${totalDevices} dispositivi.",
		no_nearby_devices_found = "Nessun dispositivo vicino trovato.",
		microphone_bug = "Bug microfono",
		microphone_bug_destroy = "Microphone Bug\n[${InteractionKey}] Distrutto",
		vehicle_tracker = "Tracker del veicolo",
		vehicle_tracker_destroy = "Tracker del veicolo\n[${InteractionKey}] Destroy",
		destroying_device = "Distruggendo il dispositivo",
		tracker_will_appear_on_map = "Questo tracker è già stato attivato.Apparirà sulla tua mappa per tutto il tempo che il veicolo è disponibile e il tracker ha una batteria.",
		spy_ui_info = "Ascoltare il bug del microfono (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Premi ESC Per uscire dal bug del microfono",
		spy_ui_connecting = "Collegamento al bug del microfono (#${deviceId})",
		spy_ui_connection_failed = "Impossibile connettersi al bug del microfono (#${deviceId})",
		spy_ui_awaiting_data = "In attesa di dati...",
		spy_ui_data_failed = "Dati non riusciti"
	},

	starter_car = {
		your_vehicle_is_nearby = "Il tuo veicolo personale è parcheggiato nelle vicinanze.",
		would_you_like_directions = "Vorresti indicazioni per raggiungerlo?",
		press_to_respond = "Premi ~INPUT_FRONTEND_ACCEPT~ accettare o ~INPUT_FRONTEND_CANCEL~ rifiutare.",
		follow_the_checkpoints = "Segui i punti di controllo.",

		received_logs_title = "Auto avviata ricevuta",
		received_logs_details = "${consoleName} ha ricevuto un'auto avviata (Model: ${modelName})."
	},

	status = {
		status_reset = "Ripristina correttamente lo stato per ${consoleName}.",
		status_reset_failed = "Nessun utente con ID server `${serverId}` è stato trovato.",
		reset_status_not_staff = "Ha tentato di ripristinare lo stato di un giocatore senza autorizzazioni richieste.",
		status_reset_for_all = "Ripristina correttamente lo stato per tutti.",
		status_disabled = "Stato disabili (stress, hunger and thirst).",
		status_enabled = "Stato abilitati (stress, hunger and thirst).",
		failed_to_set_body_armor_level = "Impossibile eseguire il file `/set_body_armor` comando correttamente.",
		set_body_armor_level_player = "Imposta correttamente il livello di armatura per il corpo per ${consoleName} to `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Impostare con successo il livello di armatura di tutti `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Imposta il livello di armatura per sé",
		set_body_armor_level_self_details = "${consoleName} impostare il proprio livello di armatura `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Imposta il livello di armatura per tutti per tutti",
		set_body_armor_level_everyone_details = "${consoleName} impostare il livello di armatura di tutti a `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Imposta il livello di armatura per il giocatore",
		set_body_armor_level_player_details = "${consoleName} aggiornata ${targetConsoleName} e impostare il livello della loro armatura `${bodyArmorLevel}`.",
		set_body_armor_level_player_not_staff = "Il giocatore ha tentato di impostare il livello di armatura per un altro giocatore, ma non avevano le autorizzazioni richieste per farlo.",
		set_body_armor_level_self_not_staff = "Il giocatore ha tentato di impostare il proprio livello di armatura per il corpo, ma non avevano le autorizzazioni richieste per farlo.",
		stress_level_warning = "Sei stressato!Abbassati lo stress fumando sigarette, articolazioni o attività come lo yoga."
	},

	streamer_mode = {
		enabled_streamer_mode = "Modalità streamer abilitata.",
		disabled_streamer_mode = "Modalità Streamer disabilitato."
	},

	sync = {
		missing_hour = "Nessuna ora fornita.",
		invalid_hour = "Ora `${hour}`è invalido.Il valore dovrebbe essere tra 0 e 23.",
		hour_changed = "L'ora è stata ora impostata `${hour}`.",
		set_hour_not_staff = "Ha tentato di impostare l'ora senza autorizzazioni richieste.",

		local_time_override_enabled = "Abilitato l'ora locale di sovraccarico ${hour}:${minute}.",
		local_time_override_disabled = "Override per ora locale disabilitata.",
		local_weather_override_enabled = "Imposta il meteo locale su `${weatherName}`.",
		local_weather_override_disabled = "Reimposta il meteo locale su predefinito.",

		missing_minute = "Nessun minuto fornito.",
		invalid_minute = "Minuta `${minute}` è invalido.Il valore dovrebbe essere tra 0 and 59.",
		minute_changed = "Il minuto ora è stato impostato `${minute}`.",
		set_minute_not_staff = "Ha tentato di impostare il minuto senza le autorizzazioni richieste.",

		missing_weather = "Nessun tempo fornito.",
		invalid_weather = "Tempo atmosferico `${weatherName}` non è valido.I nomi meteorologici del valore sono CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT and BLIZZARD.",
		weather_changed = "Il tempo è stato ora impostato `${weatherName}`.",
		weather_advanced = "Il tempo è stato avanzato `${weatherName}`.",
		weather_advance_fail = "Non è riuscito a far avanzare il tempo naturalmente.",
		set_weather_not_staff = "Ha tentato di impostare il tempo senza le autorizzazioni richieste.",
		advance_weather_not_staff = "Ha tentato di far avanzare il tempo senza le autorizzazioni richieste.",

		time_frozen = "Il tempo è stato congelato.",
		time_unfrozen = "Il tempo non è più congelato.",
		freeze_time_not_staff = "Ha tentato di congelare il tempo senza autorizzazioni richieste.",

		weather_frozen = "Il tempo è ora congelato.",
		weather_unfrozen = "Il tempo non è più congelato.",
		freeze_weather_not_staff = "Ha tentato di congelare il tempo senza autorizzazioni richieste.",

		blackout_enabled = "Un blackout è ora presente in città.",
		blackout_disabled = "La città non è più in un blackout.",
		blackout_not_staff = "Ha tentato di attivare un blackout senza autorizzazioni richieste.",

		weather_changed_title = "Il tempo è cambiato",
		weather_changed_details = "${consoleName} ha cambiato il tempo in `${weatherName}`.",

		weather_changed_success = "Tempo cambiato con successo in `${weatherName}`.",
		weather_change_failed = "Non è riuscito a cambiare il tempo.",
		weather_parameter_invalid = "Parametro Weathername non valido.",
		weather_parameter_missing = "Parametro Weathername mancante.",

		time_parameters_invalid = "Parametro ora o minuto non valido.",
		time_currently_transitioning = "Il tempo sta attualmente passando, per favore aspetta.",
		time_successfully_transitioned = "Ha transizionato con successo il tempo a `${hour}:${minute}`.",
		time_successfully_set = "Imposta correttamente il tempo `${hour}:${minute}`."
	},

	tablet = {
		you_dont_have_a_tablet = "Non hai un tablet.",

		app_snake = "Snake",
		app_tetris = "Tetris",
		app_chess = "Scacchi",
		app_minesweeper = "Minesweeper",
		app_flappy_bird = "Flappy Bird",
		app_geoguesser = "Geo-Guesser",
		app_pdm = "Catalogo PDM",
		app_edm = "Catalogo EDM",
		app_cat_pictures = "Immagini del gatto",

		folder_games = "Games",
		folder_productivity = "Produttività",

		snake_title = "Snake",
		snake_description = "Usa i tasti freccia per spostarsi verso l'alto, giù, sinistra e destra.",
		snake_start_game = "Startare Game",
		snake_difficulty = "Difficolta:",
		snake_difficulty_easy = "Facile",
		snake_difficulty_medium = "Medio",
		snake_difficulty_hard = "Difficile",

		snake_game_over = "Game Over!",
		snake_over_description = "Final score: ${score}.",
		snake_new_game = "Nuovo Gioco",

		tetris_description = "Usa i tasti freccia per spostarsi a sinistra e a destra.",
		tetris_play = "Nuovo gioco",
		tetris_game_over = "Game Over",
		tetris_restart = "Ricomincia",
		tetris_score = "Punteggio",

		chess_title = "Scacchi",
		chess_your_turn = "Tuo turno",
		chess_ai_turn = "L'IA sta pensando",
		chess_you_lost = "Hai perso",
		chess_you_won = "Hai Vinto",
		chess_draw = "Disegno",

		chess_play_as = "Gioca come:",
		chess_play_as_b = "Nero",
		chess_play_as_w = "Bianco",
		chess_difficulty = "Difficolta:",
		chess_difficulty_level = "Livello ${level}",
		chess_start = "Startare Game",

		minesweeper_title = "Minesweeper",
		minesweeper_win = "Hai Vinto",
		minesweeper_loose = "Hai perso",
		minesweeper_difficulty = "Difficolta:",
		minesweeper_start = "Startare Game",
		minesweeper_flags_used = "${used}/${total} Flagged",

		flappy_bird_title = "Flappy Bird",
		flappy_bird_score = "Punteggio finale:",
		flappy_bird_game_over = "Game Over",
		flappy_bird_start = "Premi la canvas per startare"
	},

	tattoos = {
		tattoos_refreshed = "Tattoos rinfrescata.",
		something_went_wrong = "Qualcosa è andato storto.",
		user_does_not_have_sent_character_loaded = "L'utente non ha il carattere inviato caricato.",
		user_has_no_character_loaded = "L'utente non ha alcun carattere caricato.",
		user_not_found = "L'utente inviato non è stato trovato sul server.",
		invalid_character_id = "Parametro ID carattere non valido inviato.",
		invalid_license_identifier = "Parametro Identificatore del vapore non valido inviato."
	},

	teleporters = {
		enter_mechanic_shop = "Entrata Mechanic Shop",
		enter_mechanic_shop_interact = "[${InteractionKey}] Entrata Mechanic Shop",

		exit_mechanic_shop = "uscita Mechanic Shop",
		exit_mechanic_shop_interact = "[${InteractionKey}] uscita Mechanic Shop",

		enter_coroner = "Entrata Coroner",
		enter_coroner_interact = "[${InteractionKey}] Entrata Coroner",

		exit_coroner = "uscita Coroner",
		exit_coroner_interact = "[${InteractionKey}] uscita Coroner",

		enter_fib = "Entrata FIB",
		enter_fib_interact = "[${InteractionKey}] Entrata FIB",

		exit_fib = "uscita FIB",
		exit_fib_interact = "[${InteractionKey}] uscita FIB",

		enter_iaa_base = "Entrata IAA Base",
		enter_iaa_base_interact = "[${InteractionKey}] Entrata IAA Base",

		exit_iaa_base = "uscita IAA Base",
		exit_iaa_base_interact = "[${InteractionKey}] uscita IAA Base",

		enter_server_room = "Entrata Server Room",
		enter_server_room_interact = "[${InteractionKey}] Entrata Server Room",

		exit_server_room = "uscita Server Room",
		exit_server_room_interact = "[${InteractionKey}] uscita Server Room",

		enter_warehouse_shop = "Entrata Warehouse",
		enter_warehouse_shop_interact = "[${InteractionKey}] Entrata Warehouse",

		exit_warehouse_shop = "uscita Warehouse",
		exit_warehouse_shop_interact = "[${InteractionKey}] uscita Warehouse",

		enter_office_shop = "Entrata Office",
		enter_office_shop_interact = "[${InteractionKey}] Entrata Office",

		exit_office_shop = "uscita Office",
		exit_office_shop_interact = "[${InteractionKey}] uscita Office",

		enter_cocaine_lab = "Entrata Cocaine Lab",
		enter_cocaine_lab_interact = "[${InteractionKey}] Entrata Cocaine Lab",

		exit_cocaine_lab = "uscita Cocaine Lab",
		exit_cocaine_lab_interact = "[${InteractionKey}] uscita Cocaine Lab",

		enter_mayor_office = "Entrata Mayor's Office",
		enter_mayor_office_interact = "[${InteractionKey}] Entrata Mayor's Office",

		exit_mayor_office = "uscita Mayor's Office",
		exit_mayor_office_interact = "[${InteractionKey}] uscita Mayor's Office",

		enter_exclusive_dealership = "Entrata Exclusive Dealership",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Entrata Exclusive Dealership",

		exit_exclusive_dealership = "uscita Exclusive Dealership",
		exit_exclusive_dealership_interact = "[${InteractionKey}] uscita Exclusive Dealership",

		enter_casino = "Entrata Casino",
		enter_casino_interact = "[${InteractionKey}] Entrata Casino",

		exit_casino = "Uscita Casino",
		exit_casino_interact = "[${InteractionKey}] Uscita Casino",

		enter_roof = "Entrata Tetto",
		enter_roof_interact = "[${InteractionKey}] Entrata Tetto",

		exit_roof = "Uscita Tetto",
		exit_roof_interact = "[${InteractionKey}] Uscita Tetto",

		enter_penthouse = "Entrata Penthouse",
		enter_penthouse_interact = "[${InteractionKey}] Entrata Penthouse",

		exit_penthouse = "Uscita Penthouse",
		exit_penthouse_interact = "[${InteractionKey}] Uscita Penthouse",

		enter_parking_garage = "Entrata Parking Garage",
		enter_parking_garage_interact = "[${InteractionKey}] Entrata Parking Garage",

		exit_parking_garage = "Uscita Parking Garage",
		exit_parking_garage_interact = "[${InteractionKey}] Uscita Parking Garage",

		enter_surgery = "Entrata Chirurgia",
		enter_surgery_interact = "[${InteractionKey}] Entrata Chirurgia",

		exit_surgery = "uscita Chirurgia",
		exit_surgery_interact = "[${InteractionKey}] uscita Chirurgia",

		enter_icu = "Entrata ICU",
		enter_icu_interact = "[${InteractionKey}] Entrata ICU",

		exit_icu = "Uscita ICU",
		exit_icu_interact = "[${InteractionKey}] Uscita ICU",

		enter_underground_tunnel = "Entra nel tunner sotterraneo",
		enter_underground_tunnel_interact = "[${InteractionKey}] Entra nel tunner sotterraneo",

		exit_underground_tunnel = "Esci dal tunnel sotterraneo",
		exit_underground_tunnel_interact = "[${InteractionKey}] Esci dal tunnel sotterraneo",

		use_secret_tunnel_exit = "Esci dall'uscita segreta",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Esci dall'uscita segreta",

		enter_hangar = "Entra nell'hangar",
		enter_hangar_interact = "[${InteractionKey}] Entra nell'hangar",

		exit_hangar = "Esci dall'hangar",
		exit_hangar_interact = "[${InteractionKey}] Esci dall'Hangar",

		enter_loading_bay = "Entra nella baia di carico",
		enter_loading_bay_interact = "[${InteractionKey}] Entra nella baia di carico",

		exit_loading_bay = "Esci dalla baia di carico",
		exit_loading_bay_interact = "[${InteractionKey}] Esci dalla baia di carico"
	},

	test_server = {
		you_are_not_in_a_vehicle = "Non sei su un veicolo.",
		you_are_in_a_vehicle = "Sei in un veicolo.",
		invalid_vehicle_preset = "Preset veicolo non valido.",
		fully_upgraded = "Veicolo modificato con successo.",
		applied_preset = "Preset appliccato con successo.",
		spawned_car = "Spawnato `${modelName}`.",
		just_spawned_a_car = "Hai appena spawnato una macchina, aspetta ${time} prima di spawnarne un'altra."
	},

	time_scale = {
		invalid_time_scale = "Il valore ${timeScale} è una scala temporale non valida.",
		set_time_scale_missing_permissions = "Il giocatore ha tentato di impostare la scala temporale ma non avevano le autorizzazioni richieste.",
		time_scale_set_to = "La scala temporale è stata impostata su ${timeScale}.",
		time_scale_disabled = "L'override della scala temporale è stata disabilitata.",
		time_scale_already_set_to = "La scala temporale è già impostata su ${timeScale}.",
		time_scale_is_already_disabled = "L'override della scala temporale è già disabilitata."
	},

	titanic = {
		created_titanic = "Ha creato un titanic con il tempo di sink di ${sinkTime} minuta(s).",
		failed_to_create_titanic = "Non è riuscito a creare Titanic.",
		create_titanic_missing_permissions = "Il giocatore ha tentato di creare un Titanic ma non avevano le autorizzazioni richieste."
	},

	top_down = {
		not_in_valid_vehicle = "Non sei in un veicolo valido (only cars/bikes).",
		top_down_on = "Vista top-down attivata.",
		top_down_off = "Vista top-down disattivata."
	},

	trackers = {
		error_finding_tracker = "Si è verificato un errore durante la ricerca del tracker.",
		tracker_visible = "Il tuo tracker è ora visibile.",
		tracker_hidden = "Il tuo tracker ora è nascosto.",
		tracker = "tracker",
		trackers = "Tracker",
		stockade_robbery_tracker = "Camion di stoccata (10-78)",
		tracked_vehicle = "Veicolo tracciato (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "I tracker saranno ora archiviati all'interno delle loro categorie sulla mappa.",
		trackers_split = "I tracker saranno ora divisi in singoli blips.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Ranger",
		department_medical = "EMS",
		department_doctor = "Dottore",
		department_bcfd = "BCFD",

		department_police_undercover = "PD sottocopertura",

		department_police_training = "Allenamento PD",
		department_ems_training = "Allenamento EMS"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] Accedi al negozio",

		buy_pack = "Compra ${packName}",
		store_title = "Negozio di carte",

		successfully_bought_pack = "Pacchetto di carte commerciali acquistato con successo",
		failed_buy_pack = "Impossibile acquistare il pacchetto.Hai abbastanza soldi?",

		just_showed_trading_cards = "Hai appena mostrato una carta commerciale.Per favore aspetta un po '.",

		unpack_successfull = "Apri con successo questo pacchetto.",
		failed_unpack = "Impossibile aprire questo pacchetto.",
		failed_unpack_no_cards = "Impossibile aprire questo pacchetto.Non ci sono carte commerciali disponibili.",

		edition = "Edizione",
		rarity = "Rarità",

		rarity_bronze = "Bronzo",
		rarity_silver = "Argento",
		rarity_gold = "Oro",
		rarity_holo = "Holo",
		rarity_foil = "Stagno",
		rarity_relic = "Reliquia",
		rarity_headache = "Mal di testa",
		rarity_missprint = "Errore di stampa",
		rarity_ethereal = "Eterea",
		rarity_promotional = "Promozionale",

		rarity_custom = "Personalizzato",

		press_to_access_buyback = "Premi ~INPUT_CONTEXT~ Per accedere al riacquisto della carta.",
		buyback_title = "Riacquisto della carta commerciale",
		close_menu = "Chiudi menu",
		sell_cards = "Vendere tutto ${rarity} carte",

		failed_selling = "Impossibile vendere carte.",
		no_cards_of_type = "Non ne hai nessuno ${rarity} carte.",
		successfully_sold_cards = "Venduto ${amount} ${rarity} card(s) per $${earned}.",

		studio_blip = "945 Studios"
	},

	training = {
		on_team_attackers = "Sei un attaccante!\nTempo rimasto: ${time}",
		on_team_defenders = "Sei un difensore!\nTempo rimasto: ${time}",
		attackers = "Aggressori:",
		defenders = "Difenditori:",
		waiting_for_players = "Aspettando più giocatori.\nDeve esserci almeno un giocatore in ogni squadra.",
		none = "N/A",
		match_starting_in = "La partita inizierà ${seconds} Secondi.",
		loading_match = "Aspettando che i giocatori caricano.La partita inizierà ${seconds} Secondi.",
		attackers_help_text = "Uccidi tutti i difensori prima che il tempo di recupero finisca per vincere!",
		defenders_help_text = "Uccidi tutti gli aggressori o aspetta che il tempo di recupero sarà finito per vincere!",
		attacker = "ATTACCANTE",
		defender = "DIFENSORE",
		attackers_won = "Gli aggressori hanno vinto!",
		defenders_won = "I difensori hanno vinto!"
	},

	trains = {
		spawn_train_missing_permissions = "Il giocatore ha tentato di generare un treno ma non avevano le autorizzazioni richieste per farlo.",

		invalid_track_id = "ID traccia non valido fornito.",
		spawned_train_on_track = "Ha generato un treno in pista ${trackId}.",
		failed_to_spawn_train = "Non è riuscito a generare un treno."
	},

	traps = {
		rearming = "Riorganizzazione",
		press_to_rearm = "[${InteractionKey}] Riarmare",
		rearm = "Riarmare",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "Non esiste una mappa del tesoro con il livello ${mapTier}.",
		treasure_map_does_not_have_piece = "Mappa del tesoro con livello ${mapTier} non ha un pezzo ${pieceNumber}.",
		spawn_map_piece_missing_permissions = "Il giocatore ha tentato di generare un pezzo di mappa senza autorizzazioni adeguate.",

		sketchy_map = "Mappa abbozzata",
		worn_map = "Mappa usurata",
		fancy_map = "Mappa fantasiosa",
		exquisite_map = "Mappa squisita",

		map_piece_tier_1_description = "Sembra che ci sia scrivere sotto un brutto pezzo di gomma.",
		map_piece_tier_2_description = "Un frammento piuttosto autentico di una mappa.Anche se l'inchiostro sta correndo un po '.",
		map_piece_tier_3_description = "Questo pezzo di mappa brilla un po 'alla luce del sole.",
		map_piece_tier_4_description = "Questo pezzo di mappa intricato e bello odora di soldi.",

		map_tier_1_description = "Sembra che sia stato disegnato a mano su un tovagliolo.Ignora la curiosa macchia.",
		map_tier_2_description = "Questa mappa è abbastanza usurata ma sembra che potrebbe portare a qualcosa di decente.",
		map_tier_3_description = "Molto bella \"sparkly\" mappa con un \"100% Real\" Sigillare nell'angolo in basso a destra.",
		map_tier_4_description = "Questa mappa sembra più costosa della maggior parte dei tesori.Andiamo!!!!",

		press_to_combine_pieces = "Premi ~INPUT_CONTEXT~ Per combinare pezzi di mappa ${mapTier}.",

		treasure_map = "Mappa del tesoro (Tier ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "L'intensità di scaler oceanica è già impostata su `${intensity}`.",
		no_ocean_scaler_intensity_set = "Non esiste già un set di intensità di scala oceanica.",
		set_ocean_scaler_to = "Imposta l'intensità di scaler dell'oceano `${intensity}`.",
		reset_ocean_scaler = "Ripristina l'intensità della scala dell'oceano.",
		set_ocean_scaler_no_permission = "Il giocatore non aveva l'autorizzazione richiesta per impostare lo scaler dell'oceano."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] Acquistare ${label} for $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] Acquistare ${label} for $${price} (-${discount}%)",
		purchase_label_sale_far = "On-Sale | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%)",

		failed_vehicle_spawn = "Non è riuscito a generare il veicolo.",
		not_enough_funds = "Non abbastanza fondi per completare l'acquisto.",
		area_not_clear = "L'area di spawn non è chiara.",
		something_went_wrong = "Qualcosa è andato storto nel tentativo di acquistare il veicolo.",

		purchased_vehicle = "Acquistato ${label} per $${price}.",

		tuner_shop_blip = "Midnight tunershop",

		log_title = "Tunershop Acquistare",
		log_description = "Acquistato il `${label}` for $${price}.",
		log_description_discount = "Acquistato il `${label}` per $${price} con un ${discount}% sconto."
	},

	vape = {
		press_to_use = "Premi ~INPUT_CONTEXT~ per aspirare. Premi ~INPUT_FRONTEND_CANCEL~ per mettere la sigaretta elettronica via."
	},

	vdm = {
		failed_vdm = "A coglione, non puoi fare VDM.",
		invalid_entity = "Veicolo o player non trovato.",
		invalid_network_id = "Network id invalido.",
		invalid_target = "Target invalido.",
		cleared_vdm = "Cleared ${amount} vdm targets.",
		failed_vdm_clear = "Pulizia dei VDM targets fallito.",
		added_vdm_target = "NPC con un network ID ${networkId} ti sta ora puntando ${target}.",

		vdm_no_permissions = "Player ha cercato di avviare senza i permessi."
	},

	vending_machines = {
		vending_coffee = "Premi ~INPUT_CONTEXT~ per acquistare un caffè.Il costo è $${cost}.",
		vending_coffee_not_enough_cash = "Non hai abbastanza contanti per acquistare un caffè.Il costo è $${cost}.",
		vending_snack = "Premi ~INPUT_CONTEXT~ per acquistare uno spuntino.Il costo è $${cost}.",
		vending_snack_not_enough_cash = "Non hai abbastanza contanti per acquistare uno spuntino.Il costo è $${cost}.",
		vending_soda = "Premi ~INPUT_CONTEXT~ per acquistare una soda.Il costo è $${cost}.",
		vending_soda_not_enough_cash = "Non hai abbastanza contanti per acquistare una soda.Il costo è $${cost}.",
		vending_water = "Premi ~INPUT_CONTEXT~ per acquistare una bottiglia d'acqua.Il costo è $${cost}.",
		vending_water_not_enough_cash = "Non hai abbastanza contanti per acquistare una bottiglia d'acqua.Il costo è $${cost}.",
		vending_machine_damaged = "Questo distributore automatico è danneggiato.Si prega di ricontrollare più tardi.",
		vending_water_cooler = "Premi ~INPUT_CONTEXT~ Per ottenere una tazza d'acqua.",

		refill_bottle = "Premi ~INPUT_CONTEXT~ per riempire la bottiglia.",
		refilling_bottle = "Bottiglia di riempimento"
	},

	voice = {
		illegal_radio_frequency = "Tentare di accedere alle frequenze radio illegali.",
		voice_chat = "Voice Chat",
		voice_server_connected = "Connesso al server vocale.Invio di dati vocali ai giocatori pertinenti.",
		voice_server_disconnected = "Disconnesso dal server vocale.In attesa di connessione.",
		voice_muted = "La chat vocale è stata disattivata.",
		voice_unmuted = "La chat vocale non è stata mutata.",
		broadcasting_voice_to_players = "Trasmettere ai giocatori:",
		listening_to_virtual_players = "Ascoltando i giocatori virtuali:",
		radio = "Radio",
		phone = "Telefono",
		muted_players = "Giocatori silenziati:",
		connected = "Connesso: ${connected}",
		muted = "Mutato: ${muted}",
		boolean_true = "True",
		boolean_false = "False",
		target_channel = "Canale di destinazione: ${targetChannel}",
		actual_channel = "Canale effettivo: ${actualChannel}",
		target_radius = "Raggio target: ${targetRadius}",
		actual_radius = "Raggio effettivo: ${actualRadius}",

		invalid_server_id = "ID server non valido.",
		failed_toggle_listen = "Impossibile alternare lo stato di ascolto.",
		listeners = "Ascoltatrici:",
		listening_to = "Ascoltare:",

		failed_toggle_muted = "Impossibile attivare lo stato silenzioso.",
		toggle_muted_on = "${consoleName} ora è disattivato dalla chat vocale.",
		toggle_muted_off = "${consoleName} ora è non merito dalla chat vocale.",

		affected_by_jammer = "La tua radio sembra essere colpita da un jammer o qualche tipo.",

		listening_missing_permissions = "Il giocatore ha tentato di attivare il loro stato di ascolto ma non avevano le autorizzazioni richieste.",
		voice_mute_missing_permissions = "Il giocatore ha tentato di attivare lo status di deboli di un altro giocatori ma non avevano le autorizzazioni richieste."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Usa il lavandino",
		using_sink = "Usando il lavandino"
	},

	weed_field = {
		pick_weed = "Premi ~INPUT_CONTEXT~ per prendere l'erba.",
		picking_weed = "Prendendo l'erba"
	},

	wizard = {
		action_missing_permissions = "Ha tentato di fare in modo che un giocatore compia un'azione magica senza autorizzazioni adeguate.",
		action_radius_missing_permissions = "Tentato di fare giocatori in un certo raggio fare azioni magne senza autorizzazioni adeguate.",
		run_as_missing_permissions = "Ha tentato di eseguire un comando come un altro giocatore senza autorizzazioni adeguate.",

		menu_title = "Wizard",

		ragdoll_player = "Ragdoll",
		ragdoll_player_force = "Ragdoll (Force)",
		punch_player = "Pugno forzato",
		taze_player = "Tase",
		exit_vehicle_player = "Esci dal veicolo",
		yank_steering_wheel_player = "Volante Yank",
		flashbang_player = "Flashbang",
		paper_bag_player = "Sacchetto di carta",
		ignite_player = "Brucia",
		explode_player = "Esplodi",
		quietly_revive_player = "Rianimazione silenziosa",
		play_sound = "Metti suono",

		play_sound_knocking = "Bussando",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Chiamata",
		play_sound_message = "Messaggio",
		play_sound_twitter = "Twitter",

		invalid_radius = "Raggio non valido",
		invalid_server_id = "ID server non valido.",

		ragdoll_failed = "Non è riuscito a fare il giocatore ragdoll.",
		ragdoll_success = "Fatto con successo ${consoleName} ragdoll.",

		punch_success = "Fatto con successo ${consoleName} punch.",
		punch_failed = "Non è riuscito a fare un pugno del giocatore.",

		explode_success = "Fatto con successo ${consoleName} esplodere.",
		explode_failed = "Non è riuscito a fare il giocatore explode.",

		ignite_success = "Illuminato con successo ${consoleName} a fuoco.",
		ignite_failed = "Non è riuscito a accendere il giocatore in fiamme.",

		punch_radius_failed = "Non sono riusciti a fare giocatori nel pugno del raggio.",
		punch_radius_success = "Realizzato con successo giocatori in un ${radius} Punch raggio.",

		ragdoll_radius_success = "Realizzato con successo giocatori in un ${radius} raggio ragdoll.",
		ragdoll_radius_failed = "Non sono riusciti a realizzare giocatori nel raggio ragdoll.",

		flashbang_success = "Flashbango con successo ${consoleName}.",
		flashbang_failed = "Impossibile a Flashbang Player.",

		flashbang_radius_success = "Giocatori con successo in flash in un ${radius} raggio.",
		flashbang_radius_failed = "Non è riuscito a flashbang i giocatori in raggio.",

		missing_command = "Missing command.",
		run_as_success = "Comando correttamente eseguito come ${consoleName}.",
		run_as_failed = "Impossibile eseguire il comando come ${consoleName}.",

		no_nearby_vehicle = "Nessun veicolo nelle vicinanze.",
		reversing_failed = "Impossibile rendere PED REVERSE.",
		driving_forwards_failed = "Impossibile fare in avanti Ped Drive.",
		reversing_success = "PED inverso fatto con successo.",
		driving_forwards_success = "Ped Drive con successo in avanti.",

		vehicle_temp_action_missing_permissions = "Il giocatore ha tentato di eseguire un'azione di temperatura del veicolo senza autorizzazioni adeguate."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Tappeto di Yoga",
		yoga_mat = "Tappeto Yoga",
		press_to_stop_yoga = "Premi ~INPUT_CONTEXT~ per Stoppare a fare Yoga."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Lootando Zombie",
		press_to_loot_zombie = "[${InteractionKey}] Depreda lo zombi",
		looting_zombie = "Looting Zombie",
		zombie_looting_injection = "Eccessivo saccheggio di zombi! (Timeout del server ignorato, molto probabilmente utilizzando un iniettore per eseguire questa operazione.)",

		zombie_trip_limit = "Ti senti troppo stanco per continuare a saccheggiare gli zombi. Magari riprova domani."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "Ti trovi in una 'zona senza pedoni'.",
		not_in_no_ped_population_area = "Non sei in una 'zona no ped'."
	},

	explosions = {
		invalid_explosion_type = "Tipo di esplosione `${explosionType}` non è valido.",
		invalid_camera_shake = "Sbarazzo della fotocamera `${cameraShake}` non è valido.",
		invalid_damage_scale = "Scala del danno `${damageScale}` non è valido.",
		created_explosion = "Ha creato un'esplosione di tipo `${explosionTypeName}` con una scala di danno di `${damageScale}` e scanalatura della telecamera di `${cameraShake}`.",
		create_explosion_not_developer = "Il giocatore ha tentato di creare un'esplosione ma non erano uno sviluppatore."
	},

	functions = {
		year = "Anno",
		years = "Anni",
		month = "Mese",
		months = "Mesi",
		day = "Giorno",
		days = "Giorni",
		hour = "Ora",
		hours = "Ore",
		minute = "Minuto",
		minutes = "Minuti",
		second = "Secondo",
		seconds = "Secondi",
		just_now = "Proprio ora",
		unknown = "Sconosciuto",
		flipped_vehicle_logs_title = "Veicolo capovolto",
		flipped_vehicle_logs_details = "${consoleName} Veicolo capovolto.",
		failed_to_find_ground = "Terreno non trovata, sei stato teletrasportato alla strada più vicina.",

		time_in = "in ${time} ${unit}",
		time_ago = "${time} ${unit} fa"
	},

	states = {
		invalid_network_id = "ID di rete non valido.",
		debug_states_failed = "Impossibile eseguire il debug di queste entità afferma.",
		no_states = "Questa entità non ha stati stati stabiliti.",
		printed_states = "Stati di entità stampati ${networkId}.",

		get_entity_states_missing_permissions = "Il giocatore ha tentato di ottenere uno stato di entità specifici senza autorizzazioni adeguate."
	},

	-- illegal/*
	corner = {
		corner_ped = "Angolo Ped - ${cornerPedDistance}m (${cornerPedTimer})",
		corner_ped_title = "Angolo Ped",
		corner_ped_already_active = "C'è già un pedop angolo che ti aspetta.",
		no_node_found = "Nessun nodo vicino per i PED trovati.",
		no_sell_area = "Non ti trovi in un'area in cui i PED sono interessati alle droghe.",
		inside_areas_none = "Aree Interne: None",
		inside_areas = "Aree Interne: ${insideAreas}",
		not_able_to_sell = "Non sei in grado di vendere in questo momento.Cammina per un po 'prima di provare a vendere di nuovo."
	},

	stockade = {
		dispatch = "[Dispatch]",
		status_1a = "10-78, A Stockade ha premuto il pulsante di emergenza e richiede il backup a ${streetName}.",
		status_1b = "10-78, A Stockade ha premuto il pulsante di emergenza e richiede il backup a ${streetName} near ${crossingRoad}.",
		status_2a = "10-78, Un sistema di allarme ha rilevato che una palizzata sta attualmente facendo armeggiare le porte e sta richiedendo il backup a ${streetName}.",
		status_2b = "10-78, Un sistema di allarme ha rilevato che una palizzata sta attualmente facendo armeggiare le porte e sta richiedendo il backup a ${streetName} near ${crossingRoad}.",
		status_3a = "10-78, Un sistema di allarme ha rilevato che una scorta ha avuto le sue porte aperte in modo improprio e sta richiedendo il backup a ${streetName}.",
		status_3b = "10-78, Un sistema di allarme ha rilevato che una scorta ha avuto le sue porte aperte in modo improprio e sta richiedendo il backup a ${streetName} near ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] Prendi oggetti di valore (${valuablesRemaining} left)",
		grabbing_valuables = "Afferrare oggetti di valore",
		use_advanced_lockpick = "[${InteractionKey}] Usando Advanced Lockpick",
		lockpicking_stockade = "Scassinando Stockade",

		status_blip = "Stockade",

		stockade_reward_logs_title = "Ricompensa di stockade",
		cash_pickup_logs_details = "${consoleName} raccolto $${cashAmount} in contanti.",
		item_pickup_logs_details = "${consoleName} raccolto 1x ${itemName}.",

		reward_diamonds = "Hai preso un diamante.",
		reward_gold_bar = "Hai preso una barra d'oro.",
		reward_cash = "Hai preso un po 'di contanti.",
		reward_keycard_red = "Hai preso una Keycard rossa.",

		stockade_logs_title = "Stockade attivato",
		stockade_logs_details = "${consoleName} attivato una palizzata."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Nessuna interfaccia è impostata come focalizzata.",
		interfaces_focused = "Interfacce mirate:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Inizia una consegna.",
		press_to_start_delivery = "Premi ~g~${InteractionKey} ~w~Per iniziare una consegna.",
		already_in_delivery = "Hai già una consegna attiva.",
		not_bean_machine_employee = "Devi essere un dipendente di Bean Machine per iniziare una consegna.",
		finish_delivery = "Finire la consegna.",
		press_to_finish_delivery = "Premi ~g~${InteractionKey} ~w~Per finire la consegna.",
		started_delivery = "Ha iniziato una consegna a ${deliveryName}. La posizione è stata contrassegnata sulla tua mappa.",
		finished_delivery = "La consegna to ${deliveryName} è stato completato. Hai ricevuto $${deliveryPrice} e $${distanceBonus} in punta, totale $${totalPrice}.",
		error_finishing_delivery = "Si è verificato un errore nel tentativo di finire la consegna.",
		finished_delivery_title = "Consegna di macchina per fagioli finiti",
		finished_delivery_details = "${consoleName} Finito una consegna di Bean Machine e ricevuta $${deliveryPrice} e $${distanceBonus} in punta, totale $${totalPrice}.",
		delivery_blip = "Bean Machine Delivery"
	},

	burger_shot = {
		start_delivery = "Inizia una consegna.",
		press_to_start_delivery = "Premi ~g~${InteractionKey} ~w~Per iniziare una consegna.",
		already_in_delivery = "Hai già una consegna attiva.",
		not_burger_shot_employee = "Devi essere un dipendente di Burger Shot per iniziare una consegna.",
		finish_delivery = "Finire la consegna.",
		press_to_finish_delivery = "Premi ~g~${InteractionKey} ~w~Per finire la consegna.",
		started_delivery = "Ha iniziato una consegna a ${deliveryName}. La posizione è stata contrassegnata sulla tua mappa.",
		finished_delivery = "La consegna a ${deliveryName} è stato completato.Hai ricevuto $${deliveryPrice} e $${distanceBonus} in punta, totale $${totalPrice}.",
		error_finishing_delivery = "Si è verificato un errore nel tentativo di finire la consegna.",
		finished_delivery_title = "Consegna di Shot Shot finita",
		finished_delivery_details = "${consoleName} Finito una consegna di hamburger e ricevuto $${deliveryPrice} e $${distanceBonus} in punta, totale $${totalPrice}.",
		delivery_blip = "Consegna Burger Shot"
	},

	duty = {
		toggle_duty_status_no_permissions = "Il giocatore ha tentato di attivare lo stato di turno tramite comando senza autorizzazioni adeguate.",

		duty_status_on = "È andato in servizio con successo.",
		duty_status_off = "È andato fuori servizio.",
		duty_status_failed = "Impossibile alternare lo stato di turno.",

		training_status_on = "Modalità di allenamento a disattivazione corretta.",
		training_status_off = "Modalità di allenamento a disattivazione corretta.",
		training_status_failed = "Impossibile alternare la modalità di allenamento.",

		emergency_call = "C'è una chiamata di emergenza. Premi ENTER per riceverlo.",

		toggled_operator_status_on = "Stato dell'operatore a disattivazione.",
		toggled_operator_status_off = "Stato dell'operatore attivato OFF."
	},

	job_center = {
		life_invader = "Life Invader",
		life_invader_blip = "Richiedere un lavoro",
		ui_close_menu = "Chiudi menu",
		press_to_browse_jobs = "Premi ~INPUT_CONTEXT~ per sfogliare i lavori.",
		change_job = "Cambia lavoro: ${jobName}",
		job_unemployed = "Disoccupato",
		job_transportation = "Camionista",
		job_taxi = "Taxi",
		job_journalist = "Giornalista",
		job_government = "Netturbino",
		job_mechanic = "Carroattrezzi",
		job_delivery = "Fattorino",
		changed_job_already_set_to_job = "Il tuo lavoro è già impostato su ${jobName}.",
		changed_job_success = "Impostato con successo il tuo lavoro su ${jobName}.",
		changed_job_success_go_to_coords = "Impostato con successo il tuo lavoro su ${jobName}. Segui il waypoint sulla tua mappa per iniziare.",
		changed_job_failure = "Si è verificato un errore nel tentativo di impostare il lavoro su ${jobName}.",
		changed_job_title = "Lavoro cambiato",
		changed_job_details = "${consoleName} ha cambiato il loro lavoro in `${jobName}`."
	},

	jobs = {
		job_refreshed = "Lavoro aggiornato.",
		something_went_wrong = "Qualcosa è andato storto.",
		user_does_not_have_sent_character_loaded = "L'utente non ha il carattere inviato caricato.",
		user_has_no_character_loaded = "L'utente non ha alcun carattere caricato.",
		user_not_found = "L'utente inviato non è stato trovato sul server.",
		invalid_character_id = "Parametro ID carattere non valido inviato.",
		invalid_license_identifier = "Parametro dell'identificatore del vapore non valido inviato."
	},

	police = {
		aim_assist_enabled = "Il tuo obiettivo sarà ora conferito a grandi capacità.",
		aim_assist_disabled = "Ora mirerai a peggio dei criminali/scompanti ancora una volta. Si consiglia di riaccendere immediatamente l'obiettivo.",
		you_are_not_police = "Questa funzione è riservata alla polizia, non ai criminali/scumbag.",

		undercover_enabled = "Ora sei sotto copertura.",
		undercover_disabled = "Non sei più sotto copertura.",

		npc_vehicle = "Questo veicolo non è di un giocatore.",
		not_in_a_vehicle = "Non stai guidando un veicolo.",
		invalid_minutes = "Tempo invalido (tra 1 minuto e 12 ore).",

		not_on_duty = "Non sei in servizio.",
		failed_impound = "Sequestro veicolo non riuscito.",
		not_near_impound = "Non sei vicino al sequestro del PD.",
		impound_success = "Sequestro veicolo con targa `${plate}` per ${minutes} minuti adempito con successo.",

		access_impound = "[${InteractionKey}] Accedi al sequestro",
		impound_lot = "Lotto sequestro",
		exit_impound = "Esci dal lotto del sequestro",
		no_impounded_vehicles = "Non ci sono veicoli attualmente in attesa.",
		failed_impound_list = "Impossibile ottenere i veicoli sequestrati.",
		impound_owner = "Proprietario: #${cid}",
		withdraw_success = "Veicolo ritirato con successo.",
		failed_withdraw = "C'è stato un errone nel mentre ritiravi il veicolo.",
		vehicle_not_impounded = "ID del veicolo attualmente non in attesa.",

		impound_logs_title = "Sequestro PD",
		impound_logs_details = "${consoleName} metti un veicolo con la targa ${plate} in attesa della polizia per ${minutes} minuti.",

		impound_withdraw_logs_title = "Ritiro PD",
		impound_withdraw_logs_details = "${consoleName} ritirato il veicolo targato ${plate} dal sequestro PD (Time left: ${timeLeft}).",

		none = "Nessun",
		active = "Attivo",
		not_active = "Non attivo",
		active_robberies = "\nNegozio attivo: ${store}.\nBanca attiva: ${bank}\nGioielleria attiva: ${jewelry}",

		failed_dispatch = "Impossibile inviare il messaggio di DISPATCH.",
		dispatch_title = "[Dispatch]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Non valido il Messaggio di DISPATCH (Massimo 255 characters).",
		in_training = "Sei attualmente in modalità di allenamento.",
		cannot_use_dispatch = "Non puoi usare il DISPATCH proprio adesso.",

		dispatch_message_logs_title = "Dispatch Messaggio",
		dispatch_message_logs_details = "${consoleName} inviato a dispatch Messaggio: `${message}`.",

		no_keys = "Non hai le chiavi di questo veicolo.",
		invalid_drive_mode = "Modalità di guida invalida.",
		not_in_police_vehicle = "Non sei in un veicolo della polizia.",
		drive_mode_too_fast = "Stai andando troppo veloce per cambiare modalità di guida.",
		drive_mode_already_set = "La tua modalità di guida è già impostata su `${mode}`.",
		drive_mode_failed = "Impossibile impostare la modalità di guida.",
		drive_mode_set = "Modalità di guida impostata con successo su `${mode}`.",

		mode_s = "Sport-Mode",
		mode_d = "Drive-Mode",

		drive_mode_logs_title = "Modalità di guida cambiata",
		drive_mode_logs_details = "${consoleName} ha cambiato la modalità di guida in `${mode}`."
	},

	state = {
		license_heli = "Elicottero",
		license_fw = "Ala aggiustata",
		license_cfi = "Istruttore di volo certificato",
		license_hw = "Mezzi pesanti",
		license_hwh = "Heavyweight Elicottero",
		license_perf = "Prestazioni",
		license_utility = "Utilità",
		license_commercial = "Commercialista",
		license_management = "Management",
		license_military = "Militare",
		license_special = "Aerei Speciali",
		license_hunting = "Licenza di caccia",
		license_fishing = "Licenza di pesca",
		license_weapon = "Licenza d'armi",
		gave_character_license = "Give ${characterName} licenza `${licenseLabel}`.",
		character_already_has_license = "${characterName} ha già la patente `${licenseLabel}`",
		removed_character_license = "Licenza rimossa `${licenseLabel}` da ${characterName}.",
		character_does_not_have_license = "${characterName} non ha licenza `${licenseLabel}`",
		license_not_found = "Licenza `${licenseName}` Non è stato trovato.",
		user_not_found_with_character_id = "Utente non trovato con ID character `${characterId}`.",
		no_license_added = "Nessuna licenza aggiunta.",
		invalid_character_id = "il character ID che è stato aggiunto non è valido.",
		no_character_id_added = "No character ID aggiunto.",
		your_licenses_are = "Le tue licenze sono le seguenti: ${licenses}",
		player_licenses_are = "${characterName} dispone delle seguenti licenze: ${licenses}",
		you_have_no_licenses = "Non hai la licenza.",
		player_has_no_licenses = "${characterName} non ha licenze.",
		failed_to_get_licenses = "Impossibile ottenere le licenze.",
		license_list = "Licenze disponibili: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "Premi ~INPUT_CONTEXT~ Per accedere al veicolo spawner.",
		tow_vehicles = "Tow Veicoli",
		vehicle_list = "Elenco dei veicoli",
		park_vehicle = "Park Veicolo",
		parked_vehicle = "Veicolo parcheggiato.",
		no_vehicle_to_park = "Non c'è veicolo da parcheggiare.",
		close_menu = "Chiudi menù.",
		purchased_vehicle = "Veicolo acquistato.",
		shop_on_timeout = "Ops qualcosa è andato storto nel vehicle shop, riprova tra un po'.",
		spawn_area_not_clear = "Il punto di spawn non è libero.",
		purchase_funds = "Fondi insufficienti.",
		return_button = "Ritorna",

		toggled_messages_on = "Messaggi attivati.",
		toggled_messages_off = "Messaggi disattivati."
	},

	weazel_news = {
		press_to_access_spawner = "Premi ~INPUT_CONTEXT~ Per accedere al veicolo spawner.",
		weazel_news = "Weazel News",
		vehicle_list = "Elenco dei veicoli",
		close_menu = "Chiudi menu",
		return_button = "Ritorna",
		park_vehicle = "Park Veicolo",
		parked_vehicle = "Parked veicolo.",
		no_vehicle_to_park = "Non c'è veicolo da parcheggiare.",
		spawned_vehicle = "Veicolo generato.",
		spawner_on_timeout = "Il veicolo spawner è in timeout.Per favore riprova.",
		spawn_area_not_clear = "L'area di spawn non è chiara."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number1} di ${number2}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "Alert di veicolo attivato a ${locationLabel} per veicolo con piastra `${plateText}`.",
		vehicle_alert_blip = "Veicolo Alert"
	},

	boats = {
		anchor_disconnected = "Disconnesso con successo l'ancoraggio.",
		anchored_successfully = "Ha distribuito con successo l'ancoraggio.",
		removing_anchor = "Scollegare l'ancoraggio",
		deploying_anchor = "Distribuire l'ancora",
		no_vehicle_nearby = "Non c'è barca nelle vicinanze che puoi ancorare."
	},

	car_wash = {
		use_car_wash = "Premi ~INPUT_CONTEXT~ per usare l'autolavaggio. il Costo è di $${cost}.",
		stop_car_to_wash = "Ferma il veicolo per utilizzare l'autolavaggio.",
		vehicle_already_clean = "Questo veicolo è troppo pulito per essere lavato.",
		car_wash = "Lavaggio auto",
		air_unit_damaged = "Questa unità aerea è danneggiata.",
		air_unit_not_enough_cash = "Non hai abbastanza denaro per utilizzare l'unità aerea.",
		air_unit_exit_vehicle = "Esci dal veicolo per utilizzare l'unità aerea.",
		air_unit_press_to_use = "Premi ~g~${SeatEjectKey} ~w~Per utilizzare l'unità aerea per $${cost}.",
		air_unit_purchase_cleaning_kit = "Premi ~g~${InventoryKey} ~w~Per acquistare un kit di pulizia.",
		cleaning_vehicle = "Pulendo il veicolo",
		not_enough_money = "Non hai abbastanza soldi per usare l'unità aerea.",
		vehicle_not_in_range = "Il veicolo si spostò lontano per essere pulito."
	},

	carrier = {
		use_catapult = "Premi ~INPUT_CONTEXT~ agganciarsi alla catapulta.",
		use_launch = "Premi ~INPUT_VEH_HANDBRAKE~ lanciare."
	},

	damage = {
		vehicle = "ID-Veicolo: ${entity}",
		general = "Generale: ${value}",
		body = "Carrozzeria: ${value}",
		engine = "Motore: ${value}",
		petrol_tank = "Tanica: ${value}",
		temperature = "Temperatura: ${value}",
		tracked_vehicle = "Tracked Veicolo",

		debug_vehicle_on = "Debug del veicolo a disattivazione on.",
		debug_vehicle_off = "Debug del veicolo a disattivazione off."
	},

	fuel = {
		exit_to_fuel = "Esci dal veicolo per fare rifornimento.",
		press_to_fuel = "Premi ~g~${InteractionKey} ~w~per rifornire di carburante il veicolo.",
		fuel_pump_text = "Costo del carburante: $${fuelCost}~n~Premi ~g~E ~w~per smettere di alimentare.",
		vehicle_text = "Livello di Benzina: ${fuelLevel}%",
		tank_full = "Il serbatoio è pieno.",
		vehicle_busy = "Il veicolo vicino è occupato.",
		purchase_jerry_can = "Premi ~g~${InventoryKey} ~w~per comprare una tanica di benzina.",
		gas_station = "Stazione di servizio",
		petrolcan_fuel_text = "Carburante rimasto: ${petrolAmount}%~n~Premi ~g~E ~w~per smettere di rifornire.",
		player_busy = "Sei impegnato con qualcos'altro.",
		fuel_level_set_to = "Il carburato è stato settato a `${fuelLevel}`.",
		not_in_a_vehicle = "Non sei sul veicolo.",
		vehicle_engine_on = "Il motore è acceso.",

		set_fuel_no_permissions = "Il giocatore ha tentato di impostare il livello del carburante di un veicolo senza le autorizzazioni appropriate.",

		vehicle_exploded_logs_title = "Veicolo esploso",
		vehicle_exploded_logs_details = "${consoleName} fare rifornimento di un veicolo e scatenato un'esplosione a causa di un motore in esecuzione."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "Velocità: ${speed} km/h\nModello: ${model}\nTarga: ${plate}",
		helicopter_camera_vehicle_info_imperial = "elocità: ${speed} mp/h\nModello: ${model}\nTarga: ${plate}",
		helicopter_camera_altitude = "${altitude}ft AGL",
		helicopter_camera_altitude_asl = "${altitude}ft ASL",
		unknown = "Sconosciuto"
	},

	garages = {
		garage_empty = "il tuo garage e vuoto!",
		impound_lot = "Sequestro Lotto",
		police_impound = "Sequestro della polizia",
		engine = "Motore",
		body = "Body",
		vehicle_in = "Dentro",
		vehicle_out = "Fuori",
		vehicle_at_police_impound = "Il tuo veicolo è attualmente in attesa di polizia.",
		vehicle_at_impound = "Il tuo veicolo si trova nel lotto sequestrato.",
		waypoint_to_impound = "Sul tuo GPS è stato segnato un punto di passaggio per il lotto sequestrato.",
		unable_to_withdraw = "Impossibile ritirare il veicolo in quanto attualmente reperibile presso ${location}.",
		waypoint_to_vehicle = "Sul GPS è stato contrassegnato un waypoint per il tuo veicolo.",
		vehicle_currently_at = "Il tuo veicolo è attualmente disponibile su ${location}.",
		vehicle_in_garage = "Il tuo veicolo si trova in ${garageName}.",
		insufficient_funds = "Non hai abbastanza soldi per ritirare questo veicolo.",
		error_withdrawing = "Si è verificato un errore durante il tentativo di ritirare il tuo veicolo.",
		withdraw_timeout = "Attendi un po' prima di provare a ritirare un altro veicolo.",
		garage_in_use = "Questo garage è attualmente in uso, attendi un momento.",
		invalid_model = "Modello di veicolo non valido o sconosciuto.",
		vehicle_in_the_way = "C'è un veicolo che blocca il punto di spawn.",
		vehicle_is_out = "Il tuo veicolo è già fuori.",
		vehicle_stored = "Il tuo veicolo è stato immagazzinato.",
		error_storing = "Impossibile conservare il veicolo. Il veicolo è tuo?",
		no_nearby_vehicle = "Nessun veicolo nelle vicinanze trovato.",
		no_vehicles_to_retrieve = "Non hai veicoli da recuperare!",
		vehicle_retrieved = "Il veicolo è stato recuperato con successo.",
		error_retrieving = "Si è verificato un errore durante il tentativo di recuperare il tuo veicolo.",
		not_enough_balance_to_retrieve = "Non disponi di saldo sufficiente in nessuno dei tuoi conti per recuperare questo veicolo.",
		press_to_access = "Premi ~INPUT_CONTEXT~ per accedere al garage.",
		ui_return = "Ritorna",
		ui_vehicle_list = "Elenco veicoli",
		ui_store_vehicle = "Conservare il veicolo",
		ui_vehicle_sell = "Vendi veicoli",
		ui_retrieve_vehicle = "Recupero veicolo",
		ui_close_menu = "Chiudi Menù",
		garage_letter = "Garage ${letter}",
		garage_emergency = "${type} Garage",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "Nessuno dei tuoi veicoli è sequestrato!",
		you_must_retrieve_this_vehicle = "Dovrai recuperare questo veicolo per accedervi.",
		garage = "Garage",
		retrieved_vehicle_logs_title = "Veicolo recuperato",
		retrieved_vehicle_logs_details = "${consoleName} veicolo recuperato con targa `${plate}` per ${price}.",

		state_loading_model = "Caricando Modello...",
		state_withdrawing = "Ritirando...",

		state_retrieve_searching = "Cercando...",
		state_retrieving = "Ritirando...",

		state_storing = "Storando...",

		state_loading = "Caricamento in corso...",

		vehicle_weight = "Il peso: ${weight}",
		last_garage_letter = "Ultimo - Garage ${letter}",
		last_garage_impound = "Ultimo - Sequestro Lotto",
		no_last_garage_letter = "Nessun ultimo garage",

		purchase_vehicle = "Premi ~INPUT_CONTEXT~ per accedere al negozio",
		emergency_shop = "Negozio di veicoli",
		exit_shop = "Esci dal negozio",
		purchase_success = "La ${label} Hai appena acquistato è stato aggiunto al tuo garage.",
		purchase_failed = "Impossibile acquistare il veicolo.",
		already_owned = "Possiedi già questo modello di veicolo.",
		maximum_owned = "Non puoi possedere più di 6 veicoli.",
		not_enough_money = "Non hai abbastanza soldi per acquistare questo veicolo.",

		sold_vehicle = "Venduta ${label} per $${price}.",
		failed_sell_vehicle = "Impossibile vendere il veicolo.",

		sold_vehicle_logs_title = "Vendi Veicolo",
		sold_vehicle_logs_details = "${consoleName} venduto a `${modelName}` Veicolo di emergenza con piastra `${plate}` for ${price}.",

		purchased_vehicle_logs_title = "Veicolo acquistato",
		purchased_vehicle_logs_details = "${consoleName} acquistato a `${modelName}` Veicolo di emergenza per ${price} (Plate: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Ha attivato il debug del garage on.",
		toggle_garage_debug_toggled_off = "Ha attivato il debug del garage off."
	},

	handlings = {
		set_handling_override_not_super_admin = "Il giocatore ha tentato di impostare un sovraccarico di gestione ma non erano un super admin.",
		remove_handling_override_not_super_admin = "Il giocatore ha tentato di rimuovere un sovraccarico di gestione ma non erano un super admin."
	},

	keys = {
		no_nearby_player = "Nessun giocatore vicino ha trovato.",
		no_nearby_vehicle = "Nessun veicolo vicino trovato.",
		no_keys_for_vehicle = "Non hai le chiavi di questo veicolo.",
		vehicle_locked = "Veicolo Chiuso",
		vehicle_unlocked = "Veicolo Aperto",
		h_to_hotwire = "[H] Scassina",
		received_keys = "Ricevuto chiavi dalla macchina con la targa ${plate}.",
		received_keys_no_plate = "Chiavi del veicolo ricevute.",
		you_are_not_in_a_vehicle = "Non sei nel veicolo.",
		you_are_in_a_vehicle = "Attualmente sei in un veicolo.",
		hotwired_vehicle_with_plate_number = "Scassinato veicolo con la targa '${plateNumber}'.",
		unable_to_hotwire_vehicle = "Impossibile scassinare il veicolo.",
		picked_up_keys = "Chiavi ritirate per `${plate}`.",
		invalid_server_id = "ID non valido.",
		hotwired_vehicle_for_player = "Il giocatore ${displayName} ha scassinato il veicolo nel quale sta guidando."
	},

	modifications = {
		wheels_reset = "Le ruote sono in fase di ripristino.",
		wheels_already_reset = "Le ruote sono già nella loro posizione predefinita.",
		wheels_modified = "Le ruote sono state modificate.",
		wheels_none_specified = "Nessuna ruota specificata.",
		wheels_none_valid_specified = "Nessuna ruota valida specificata.",
		not_in_a_car = "Non sei in macchina.",
		invalid_value = "valore non valido."
	},

	plates = {
		plate_number_is_available = "Targa `${plateNumber}` è disponibile.",
		plate_number_is_not_available = "Targa `${plateNumber}` Non è disponibile.",
		missing_valid_plate_number = "Manca un parametro 'numero di targa' valido.",
		missing_valid_vehicle_id = "Parametro 'ID veicolo' mancante.",
		database_error = "Si è verificato un errore del database back-end.",
		no_custom_plate_package = "Non disponi di un pacchetto di piastre personalizzato. Dai un'occhiata al nostro negozio online per ulteriori informazioni!",
		api_error = "La nostra API di back-end ha restituito un errore.",
		api_not_available = "La nostra API di back-end non è disponibile.",
		vehicle_does_not_belong_to_player = "Veicolo ID `${vehicleId}` non appartiene a te.",
		vehicle_id_does_not_exist = "Veicolo ID `${vehicleId}` non esiste.",
		you_have_no_character_loaded = "Non hai un personaggio caricato.",
		vehicle_plate_changed = "Modificato il numero di targa del veicolo con ID `${vehicleId}` a `${plateNumber}`.",

		you_are_not_in_a_vehicle = "Non sei in un veicolo.",
		fake_plate_active = "Generato con successo una targa falsa per il tuo veicolo.",
		fake_plate_inactive = "Ripristina la targa dei veicoli all'originale.",

		fake_plate_missing_permissions = "Il giocatore ha tentato di impostare un piatto falso tramite comando senza le autorizzazioni appropriate."
	},

	runways = {
		you_are_not_in_a_plane = "Non sei su un aereo.",
		ifr_disabled = "IFR è stato disabilitato.",
		ifr_enabled = "IFR è stato abilitato."
	},

	sirens = {
		sirens_muted_on = "Tutte le sirene ora sono mutate.",
		sirens_muted_off = "Tutte le sirene ora sono smutate."
	},

	spawner = {
		press_to_access_spawner = "Premi ~INPUT_CONTEXT~ per accedere allo Spawn dei Veicoli.",

		parked_vehicle = "Veicolo parcheggiato con successo.",

		spawner_burger_shot = "Burger Shot Delivery Veicoli",
		spawner_bean_machine = "Bean Machine Delivery Veicoli",
		spawner_weazel_news = "Veicoli Weazel News",
		close_menu = "Chiudi menu",
		vehicle_list = "Elenco dei veicoli",
		park_vehicle = "Parcheggia",
		return_button = "Ritorna",

		failed_spawn = "Non è riuscito a spaziare il veicolo.",
		failed_area = "L'area non è chiara.",
		failed_job = "Non hai il lavoro corretto.",
		failed_generic = "Qualcosa è andato storto."
	},

	vehicles = {
		flip_flipping = "Rovesciando Veicolo",
		flip_unable = "Non puoi capovolgere un veicolo mentre ci sono persone all'interno.",
		vehicle_busy = "Attendere, il veicolo è occupato!",
		hold_to_eject = "Tieni premuto per l'espulsione",
		taking_keys = "Prendendo Chiavi",
		belt_on = "Cintura On",
		belt_off = "Cintura Off",
		mileage = "Chilometraggio",
		vehicle_mileage_amount = "Questo veicolo ha ${miles} miles.",
		not_in_driver_seat = "Per controllare il chilometraggio, devi essere al posto di guida.",
		not_driving_vehicle = "Non stai guidando un veicolo.",
		vehicle_locked = "Il veicolo è bloccato.",
		gear_animation_enabled = "Animazione cambio (e suono) è stato appena attivato.",
		gear_animation_disabled = "Animazione cambio (e suono) è stato appena disattivato.",
		manual_gears_enabled = "Il cambio manuale è ora abilitato.",
		manual_gears_disabled = "Il cambio manuale è stato ora disattivato.",
		manual_gear_set_to = "Ingranaggio impostato su ${gearId}.",
		speed_limiter_set_to_metric = "Il limitatore di velocità ora limiterà la velocità a ${speed} km/h.",
		speed_limiter_set_to_imperial = "Il limitatore di velocità ora limiterà la velocità a ${speed} mp/h.",
		speed_limiter_reset = "Il limitatore di velocità ora limiterà la velocità alla velocità a cui si trovava il veicolo quando attivato.",
		speed_limiter_on_metric = "Limitatore di velocità impostato su ${speed} km/h.",
		speed_limiter_on_imperial = "Limitatore di velocità impostato su ${speed} mp/h.",
		speed_limiter_on_plane_metric = "Limitatore di velocità impostato su ${speed} km/h e ${altitude} meters.",
		speed_limiter_on_plane_imperial = "Limitatore di velocità impostato su ${speed} mp/h e ${altitude} ft.",
		speed_limiter_on_helicopter_metric = "Limitatore di velocità impostato ${altitude} meters (hover).",
		speed_limiter_on_helicopter_imperial = "Limitatore di velocità impostato su ${altitude} ft (hover).",
		autopilot_metric = "~g~Autopilota~s~: ${altitude}m ~c~/~s~ ${speed}km/h",
		autopilot_imperial = "~g~Autopilota~s~: ${altitude}ft ~c~/~s~ ${speed}knots",
		you_are_cuffed = "Sei ammanettato.",
		belt_is_on_and_vehicle_is_locked = "La cintura è allacciata e il veicolo è bloccato.",
		belt_is_on = "La tua cintura è allacciata.",
		vehicle_is_locked = "Il veicolo è bloccato.",

		nearest_player_not_vehicle = "Il giocatore più vicino non è su un veicoloe.",
		no_dead_player_nearby = "Non c'è nessun giocatore morto in un veicolo vicino a te.",
		dragging_out_player = "Trascinare il giocatore fuori dal veicolo.",
		vehicle_too_fast = "Il veicolo si sta muovendo troppo velocemente.",

		modifying_brakes = "Modificando i freni",
		toggle_brakes_on = "Disattivando i freni.",
		toggle_brakes_off = "Attivando i freni.",
		failed_modify_brakes = "Modifica freni non riuscito.",

		toggle_disabled_brakes_no_permissions = "Il giocatore ha tentato di attivare/disattivare i freni tramite comando senza le autorizzazioni appropriate.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "Il giocatore ha tentato di aggiungere un veicolo al garage di qualcuno ma non erano un super admin.",
		add_vehicle_added_vehicle_for_everyone = "Aggiunto veicolo con il nome del modello `${modelName}` for everyone.",
		add_vehicle_added_vehicle_for_player = "Aggiunto veicolo con il nome del modello `${modelName}` for ${consoleName}.",
		add_vehicle_added_vehicle = "Aggiunto veicolo con il nome del modello `${modelName}`.",
		add_vehicle_character_not_loaded = "Il giocatore bersaglio non aveva i caratteri carichi.",
		add_vehicle_target_user_not_found = "Non è stato possibile trovare l'utente di destinazione.",
		add_vehicle_invalid_input = "Inserimento non valido.",
		add_vehicle_no_permissions = "Nessuna autorizzazione.",
		add_vehicle_user_not_found = "Utente non trovato.",
		add_vehicle_invalid_player = "Non c'erano giocatori con server ID `${serverId}`.",
		add_vehicle_invalid_model_name = "Il nome del modello `${modelName}` non è un modello valido.",
		add_vehicle_no_model_name = "Nessun nome del modello aggiunto.",

		added_vehicle_for_everyone_logs_title = "Aggiunto un Veicolo per tutti quanti",
		added_vehicle_for_everyone_logs_details = "${consoleName} Aggiunto un veicolo con il nome del modello `${modelName}` nei garage di tutti.",
		added_vehicle_for_player_logs_title = "Aggiunto veicolo per il giocatore",
		added_vehicle_for_player_logs_details = "${consoleName} Aggiunto un veicolo con il nome del modello `${modelName}` to ${targetConsoleName}'s garage.",
		added_vehicle_logs_title = "Veicolo aggiunto",
		added_vehicle_logs_details = "${consoleName} Aggiunto veicolo con il nome del modello `${modelName}` al loro garage.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "Il giocatore ha tentato di attivare le armi del veicolo su un veicolo ma non erano un super amministratore.",
		toggled_vehicle_weapons_on = "Armi veicoli a disattivazione on.",
		toggled_vehicle_weapons_off = "Armi veicoli a disattivazione off.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Il veicolo in cui ti trovi non è in rete.",
		toggled_vehicle_weapons_not_in_a_vehicle = "Non sei in un veicolo.",
		toggled_vehicle_weapons_target_user_not_found = "Target utente non trovato.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Il giocatore bersaglio non è in un veicolo.",
		toggled_vehicle_weapons_for_player_on = "Attivava le armi del veicolo per ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "Attivava le armi del veicolo per ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "Ha attivato le armi del veicolo per tutti.",
		
		toggled_vehicle_weapons_on_logs_title = "Armi veicoli a disattivazione On",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} attivava le armi per un veicolo on.",
		toggled_vehicle_weapons_off_logs_title = "Armi veicoli a disattivazione Off",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} attivava le armi per un veicolo off.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Armi di veicolo attivate per il giocatore",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} ha attivato le armi per ${targetConsoleName}'s veicolo on.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Armi di veicolo attivate per il giocatore",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} ha attivato le armi per ${targetConsoleName}'s veicolo off.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Armi di veicolo a disattivazione per tutti",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} attivava le armi per il veicolo di tutti.",

		breaking_window = "Rompendo il vetro",
		not_near_window = "Non sei abbastanza vicino ad un vetro.",
		not_near_vehicle = "Nessun veicolo vicino.",

		wheelie_no_vehicle = "Nessun veicolo",
		wheelie_engine_off = "Motore spento",
		wheelie_idling = "Inattivo",
		wheelie_ready = "Pronto",
		wheelie_boosting = "Potenziando",

		invalid_power_level = "Livello potenza invalido (1 - 5)."
	},

		vin_numbers = {
			cad_title = "[CAD]",

			checking_vin = "Controllando il telaio",
			not_driver = "Non stai guidando un veicolo.",
			failed_vin_get = "Telaio non trovato.",
			vin_checked = "Il numero di telaio di questo veicolo è `${vin}`.",
			vin_scratched = "Il numero di telaio è stato graffiato.",

		looking_up_vin = "Ricerca del numero di telaio",
		invalid_vin = "Numero di telaio invalido o mancante.",
		failed_vin_lookup = "Impossibile cercare il numero di telaio.",
		vin_lookup_details = "Telaio`${vin}` è registrato al veicolo targato `${plate}` posseduto da `${fullName}`.",
		vin_lookup_unregistered = "Telaio `${vin}` non è registrato a nessun veicolo."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] Tieni premuto per tagliare",
		hold_to_slash = "Tieni premuto per tagliare",
		slashing_tire = "Tagliendo la gomma"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Spacchettamento Munizioni",
		failed_unbox = "Impossibile spacchettare le munizioni.",
		failed_unbox_full = "Non puoi portare più di queste munizioni.",
		unbox_success = "Spacchettamento ${amount}x ${ammoType}.",
		unbox_success_box = "Aperta con successo una scatola di munizioni.",

		type_pistol = "Munizioni pistola",
		type_smg = "Munizioni SMG",
		type_rifle = "Munizioni assalto",
		type_sniper = "Munizioni cecchino",
		type_shotgun = "12 cartucce",
		type_stungun = "Scariche taser",

		fill_ammo_success = "Munizioni spachettate con successo.",
		fill_ammo_failed = "Impossibile spachettare le munizioni."
	},

	weapons = {
		pick_up_fire_extinguisher = "Tieni Premuto ~INPUT_CONTEXT~ per raccogliere l'estintore.",
		press_to_drop_fire_extinguisher = "Premi ~INPUT_FRONTEND_RRIGHT~ per buttare l'estintore.",
		illegal_fire_extinguisher_model = "Tentativo di eliminare un estintore su tutti i client con un modello che non era un estintore.",

		airsoft_mode_on = "Airsoft modalità on.",
		airsoft_mode_off = "Airsoft modalità off.",
		airsoft_mode_failed = "Impossibile attivare la modalità softair.",

		no_weapon_equipped = "Nessuna arma equipaggiata.",
		no_ammo = "Nessuna munizione per quest'arma.",
		infinite_ammo = "Hai munizioni infinite per quest'arma.",
		ammo_count = "You have ${clips} full clips (${total} rounds in total).",
		ammo_count_loose = "Hai ${clips} full clips and 1 clip with ${loose} rounds (${total} rounds in total).",

		firing_mode_0 = "Modalità di fuoco impostato a 0.",
		firing_mode_1 = "Modalità di fuoco impostato su semi-automatico.",
		firing_mode_2 = "Sicura impostata sull'arma.",

		safety_is_on = "Arma in sicura.",

		firing_mode_set_1 = "Modalità di fuoco impostato su semi-automatico.",
		firing_mode_set_2 = "L'arma ha la sicura attiva.",

		folded_stock = "Calcio Piegato",
		unfolded_stock = "Calcio Spiegato",
		failed_to_toggle_stock = "Impossibile cambiare il calcio.",
		weapon_has_no_stock = "Quest'arma non ha calcio."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Fai il Check-In",
		check_in_timer = "[${remaining}s] Check In",
		check_in_escorted = "Stai venendo scortato",
		checking_in = "Check -in",
		doctor_notified = "Un medico è stato avvisato, per favore aspetta",
		leave_bed = "Premi ~INPUT_CONTEXT~ lasciare il letto",
		you_have_been_charged = "Ti è stato accusato $${cost} per le tue lesioni",
		beds_occupied = "Tutti i letti occupati",
		patient_checked_in = "Il paziente ha registrato a letto ${bed}",
		stop_bleeding = "[E] Smetti di sanguinare",
		stopping_bleeding = "Smettere di sanguinare",
		bleeding_stopped = "Il sanguinamento si fermò",
		overdose_effects = "Stai vivendo effetti di overdose.",
		you_have_parasite = "Hai un parassita",
		you_have_multiple_parasite = "Hai più parassiti",
		bandage = "[E] Ferite di bendaggio",
		bandaging = "Ferite di bendaggio",
		wounds_bandaged = "Ferite bendate",
		treat_injury = "[E] ${label} Lesione",
		treating_injury = "Treating ${label} Lesione",
		injury = "${label} Lesione",
		cpr_done = "CPR con successo",
		cpr_fail = "Impossibile individuare la persona",
		went_on_duty = "È andato in servizio",
		went_off_duty = "È andato fuori servizio",
		on_duty = "in servizio",
		off_duty = "fuori servizio",
		press_to_sign = "Premi ~g~E ~w~ per firmare",
		open_vehicle_spawner = "Premi ~g~E ~w~ Per aprire il veicolo spawner",
		open_heli_spawner = "Premi ~g~E ~w~ Per aprire il menu dell'elicottero",
		open_boat_spawner = "Premi ~g~E ~w~ Per aprire il menu della barca",
		on = "ON",
		off = "OFF",
		sign_as_doctor = "Premi ~g~E ~w~ per firmare ${status} come dottore",
		close_menu = "Chiudi menu",
		vehicle_list = "Elenco dei veicoli",
		park_vehicle = "parkVehicle",
		clear_area = "Si prega di liberare il garage prima di generare un veicolo",
		unable_to_extra = "Impossibile modificare 'extra' su questo veicolo!",
		warning = "Avvertimento",
		invalid_input = "Input invalido.",
		unable_to_extra_on_vehicle = "Impossibile modificare 'extra' su questo veicolo!",
		heli_here_already = "Già un elicottero sull'eliporto",
		ems_air_hq = "EMS Air HQ",
		ems_boat_hq = "EMS Boat HQ",
		ems_garage = "EMS Garage",
		e_to_get_treated = "[E] Per essere curato - $1250",
		get_treated = "Fatti curare - $1250",
		you_are_being_treated = "Stai venendo curado",
		being_treated = "Stai venendo trattato",
		minute = "minuto",
		minutes = "minuti",
		second = "secondo",
		seconds = "secondi",
		kurwa_and = "e",
		wait_for_paramedic = "Attendere l'arrivo di un paramedico o attendere ${time} il respawn",
		cannot_respawn_currently = "Non puoi attualmente spawnare",
		hold_to_respawn = "Premi ~b~ENTER ~w~per respaware o attendere l'arrivo di un paramedico",
		hold_to_respawn_secondslol = "Premi ~b~ENTER (${seconds}) ~w~per respaware o attendere l'arrivo di un paramedico",
		passed_out = "Sei svenuto",
		light = "Leggero",
		moderate = "Moderato",
		heavy = "Pesante",
		severe = "Severo",
		arms_injured = "Braccia troppo ferite, incapaci di sparare",
		injuryb = "Infortunio",
		bleeding_multiple_injuries = "sanguinamento con lesioni multiple",
		feels_irritated = "si sente irritato",
		feels_painful = "Si sente doloroso",
		feels_extremely_painful = "Si sente estremamente doloro",
		multiple_injuries = "Hai più infortuni",
		bleeding = "Sanguinamento",
		bleeding_with_injury = "Sanguinamento per ${label} infortunio",
		bleeding_reduced = "Sanguinamento ridotto",
		bleeding_self_stopped = "Il sanguinamento si è fermato da solo",
		thanks_for_loot = "Sei stato aggredito mentre era privo di sensi. Potrebbero mancare alcuni elementi.",
		serial_number = "Numero seriale: ${serialNumber}<br>Quest'arma è intestata a ${fullName} (#${characterId}).",
		serial_number_unknown = "Numero seriale: Sconosciuto.",
		badge_owner = "<i>Questo distintivo appartiene a <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "Il proprietario del badge è sconosciuto.",
		citizen_card_owner = "<i>Questa carta di cittadino appartiene a <b>${fullName} (#${characterId})</b>.</i>",
		citizen_card_has_portrait = "<i>Ha una foto.</i>",
		picture_pending = "<i>La foto sta ancora processando...</i>",
		picture_selfie_owner = "<i>Questa foto è di <b>${fullName}</b>.</i>",
		bought_by = "Comprato da ${buyerName} (${buyerCid}).",
		bought_by_unknown = "L'acquirente di questo articolo è sconosciuto.",
		cigarette_pack = "${cigarettes} sigarette rimaste.",
		evidence_incomplete = "Questa prova è incompleta e non può essere rivista.",
		evidence_type = "Tipo di prova",
		processed_picked_up = "<i>Raccolto da ${pickupName} ed elaborato da ${processName}.</i>",
		picked_up = "<i>Raccolto da ${pickupName}.</i>",
		processed_by = "<i>Processato da ${processName}.</i>",
		evidence_casings = "Gli involucri sono tornati al numero di serie ${serialNumber} che era detenuto da ${buyerName} (${buyerCid}) al momento dell'utilizzo.",
		evidence_bullets = "Gli impatti dei proiettili sembrano essere stati creati da ${bulletLabel}.",
		evidence_clothing = "Un capo d'abbigliamento (${clothingType}).",
		evidence_car_dna = "Il DNA è stato prelevato dal veicolo con la targa ${plateNumber} ed è tornato a ${DNAOwnerName} (${DNAOwner}).",
		evidence_dna = "DNA raccolto da ${fullName} #${characterId}.",
		evidence_fingerprint = "Impronta digitale di ${fullName} #${characterId}.",
		evidence_not_processed = "Questa busta di prove non è stata ancora elaborata.",
		additional_information = "Informazioni aggiuntive:",
		picked_up_at_location = "Ritirato in loco:",
		clothing_dna_trace = "Le tracce del DNA tornano a ${fullName} (#${cid})",
		clothing_dna_trace_unprocessed = "Tracce di DNA non processato sui vestiti",
		timestamp_of_pickup = "Timestamp del ritiro:",
		weapon_name = "Nome dell'arma:",
		casings_picked_up = "Quantità di bossoli raccolti:",
		bullet_label = "Etichetta proiettile:",
		impacts_found = "Quantità di impatti rilevati nell'area:",
		right_foot = "Piede destro",
		left_foot = "Piede sinistro",
		right_hand = "Mano destra",
		left_hand = "Mano sinistra",
		right_knee = "Ginocchio destro",
		left_knee = "Ginocchio sinistro",
		head = "Testa",
		neck = "Collo",
		right_arm = "Braccio destro",
		left_arm = "Braccio sinistro",
		chest = "Torso",
		pelvis = "Bacino",
		right_shoulder = "Spalla destra",
		left_shoulder = "Spalla sinistra",
		right_wrist = "Polso destro",
		left_wrist = "Polso sinistro",
		tounge = "Lingua",
		upper_lip = "Labbro superiore",
		lower_lip = "Labbro inferiore",
		right_thigh = "Coscia destra",
		left_thigh = "Coscia sinistra",
		lower_spine = "Colonna vertebrale inferiore",
		center_spine = "Colonna vertebrale centrale",
		upper_spine = "Colonna vertebrale superiore",
		root_spine = "Colonna vertebrale radice",
		right_clavicle = "Clavicola destra",
		left_clavicle = "Clavicola sinistra",
		note_signed_by = "<b>Firmata da:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>Posizione contrassegnata:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>Questo orologio intelligente appartiene <b>${name} (#${cid})</b>. Ha monitorato <b>${stepsWalked}</b> steps.</i>",
		item_contains = "<b>Contiene:</b> <i>${contents}</i>.",
		item_engraving = "<b>Incisione:</b> <i>${message}</i>.",
		evidence_incomplete = "Questa borsa delle prove è incompleta."
	}
}
