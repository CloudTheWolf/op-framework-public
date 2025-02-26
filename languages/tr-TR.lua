if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 8 (do not change)

OP.Global.Locales.Languages["tr-TR"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "Sistem",
		warning = "Uyarı",
		invalid_input = "Geçersiz Girdi.",
		missing_input = "Eksik Girdi.",
		player_not_found = "Sunucu Kimliği `${serverId}` olan oyuncu bulunamadı.",
		something_went_wrong = "Bir şeyler yanlış gitti. Lütfen tekrar deneyin.",
		yes = "Evet",
		no = "Hayır"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "Bagaja girmek için ~INPUT_ENTER~ tuşuna basın.",
		put_boombox_in_trunk = "Boombox'ı bagaja koymak için ~INPUT_ENTER~ tuşuna basın.",
		put_player_in_trunk = "Oyuncuyu bagaja koymak için ~INPUT_ENTER~ tuşuna basın.",
		put_player_in_seat = "[${VehicleEnterKey}] Koltuğa yerleştir",
		trunk_interaction_display = "[${VehicleEnterKey}] Çık [${InteractionKey}] Bagajı Aç/Kapat",
		trunk_open_close_display = "[${InteractionKey}] Bagajı Aç/Kapat",
		boombox_already_in_trunk = "Bagajda zaten bir boombox var.",
		the_trunk_is_occupied = "Bagaj dolu.",
		unable_to_toggle_carry = "Taşımayı açıp kapatmadan önce lütfen biraz bekleyin.",
		carry_disabled_animal = "Hayvan karakterler taşıyamaz.",

		cancel_piggyback = "Omuzda taşımayı iptal etmek için ~INPUT_FRONTEND_RRIGHT~ tuşuna basın.",
		piggyback_hop_on = "[${InteractionKey}] omuza al",
		stop_piggyback = "Piggybacking'i durdurmak için ~INPUT_VEH_HEADLIGHT~ tuşuna basın.",

		lockpicking_cuffs = "Kelepçe Kilidi Açma",
		lockpick_cuffs_too_fast = "Çok hızlı hareket ettiniz.",
		success_lockpick_cuffs = "Kelepçe başarılı bir şekilde açıldı.",
		failed_lockpick_cuffs = "Kelepçe açma başarısız oldu.",
		lockpick_lost = "Kelepçe açma aletinizi kaybettiniz.",

		not_cuffed = "Kelepçelenmediniz.",
		unable_to_lockpick = "Kelepçe açamıyorsunuz.",

		lockpick_cuffs_logs_title = "Kelepçe Açma Kayıtları",
		lockpick_cuffs_logs_details = "${consoleName}, `${itemName}` kullanarak kelepçelerini başarıyla açtı.",

		you_are_not_being_carried = "Şu anda taşınmıyorsunuz.",
		successfully_uncarried = "Taşıma işlemi başarıyla durduruldu.",
		failed_uncarried = "Taşıma işlemi durdurulurken hata oluştu.",
		uncarry_missing_permissions = "Uygun izin olmadan taşıma işlemini durdurmaya çalışıldı.",

		uncarry_logs_title = "Zorla Taşımayı Durdurma",
		uncarry_logs_details = "${consoleName}, taşıyıcısını zorla durduran ${targetName}.",

		failed_carry_npc = "NPC taşıma işlemi başarısız oldu.",
		carry_npc_something_wrong = "Ped taşıma işlemi yapılırken bir sorun oluştu.",

		e_to_struggle = "Sıkışmaktan Kurtulmak için E Tuşuna Bas",
		cant_struggle_dead = "Ölüyken sıkışmazsın.",
		struggle_to_quick = "Sıkışıp kurtulduktan sonra yorgun düştün, biraz bekleyip tekrar dene.",
		struggle_logs_title = "Kurtarıldı",
		struggle_logs_details = "${consoleName}, taşıyan kişiden (${targetName}) sıkışıp kurtuldu."
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "Kendi veya başkasının '${featureName}' özelliğini değiştirmeye çalıştı, ancak yeterli izne sahip değil.",
		feature_toggle_activated_logs_title = "Uzaktan Özellik Değiştirildi",
		feature_toggle_activated_logs_details_state = "${consoleName}, ${targetConsoleName} için ${featureName} özelliğini ${newState} durumuna getirdi.",
		feature_toggle_activated_all_logs_title = "Herkes için uzaktan özellik değiştirildi",
		feature_toggle_activated_all_logs_details = "${consoleName}, ${featureName} özelliğini herkes için değiştirdi.",
		feature_toggle_activated_self_logs_title = "Özellik Değiştirildi",
		feature_toggle_activated_self_on_logs_details = "${consoleName}, kendi için ${featureName} özelliğini açtı.",
		feature_toggle_activated_self_off_logs_details = "${consoleName}, kendi için ${featureName} özelliğini kapattı.",
		feature_toggle_success = "${consoleName} için ${featureName} özelliği açıldı.",
		feature_toggle_success_all = "Herkese ${featureName} özelliği açıldı.",
		feature_toggle_failed = "Sunucu ID ${serverId} için ${featureName} özelliği açılamadı.",
		feature_toggle_success_on = "${consoleName} için ${featureName} özelliği açıldı.",
		feature_toggle_success_off = "${consoleName} için ${featureName} özelliği kapatıldı.",

		noclip_toggle_activated_self_logs_title = "Noclip Açık/Kapalı",
		noclip_toggle_activated_self_on_logs_details = "${consoleName}, konum `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}` de noclip özelliğini açtı. (Araçta: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName}, konumda `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}` konumunda uçuş modu kapatıldı.",

		model_name_not_provided = "Model adı belirtilmedi.",
		model_name_invalid = "Model adı `${modelName}` geçersiz.",
		failed_to_spawn_vehicle = "`/spawn_vehicle` komutu doğru bir şekilde yürütülemedi.",
		spawned_vehicle_for_player = "${consoleName}, ${modelName} aracını başarıyla oluşturdu.",
		spawned_vehicle_for_everyone = "Herkes için ${modelName} aracı başarıyla oluşturuldu.",
		spawn_vehicle_for_player_not_staff = "Bir oyuncu başkası için araç spawnlamaya çalıştı ancak bunu yapmak için gerekli izne sahip değil.",
		spawn_vehicle_for_self_not_staff = "Bir oyuncu kendisi için araç spawnlamaya çalıştı ancak bunu yapmak için gerekli izne sahip değil.",
		replace_vehicle_no_permissions = "Bir oyuncu araçlarını değiştirmeye çalıştı ancak bunu yapmak için gerekli izne sahip değil.",
		create_vehicle_no_permissions = "Bir oyuncu araç yaratmaya çalıştı ancak bunu yapmak için gerekli izne sahip değil.",
		spawned_vehicle_for_self_title = "Araç Spawnlandı",
		spawned_vehicle_for_self_details = "${consoleName}, model adı `${modelName}` olan bir araç spawnladı.",
		spawned_vehicle_for_player_title = "Oyuncu İçin Araç Spawnlandı",
		spawned_vehicle_for_player_details = "${consoleName}, model adı `${modelName}` olan bir araç ${targetConsoleName} oyuncusu için spawnlandı.",
		spawned_vehicle_for_everyone_title = "Herkese Araç Spawnlandı",
		spawned_vehicle_for_everyone_details = "${consoleName}, model adı `${modelName}` olan bir aracı herkese spawnladı.",

		vehicle_created = "Araç başarıyla oluşturuldu.",
		failed_vehicle_creation = "Araç oluşturma başarısız oldu.",

		invalid_amount = "Geçersiz miktar.",

		added_cash_title = "Nakit Eklendi",
		added_cash_details = "${consoleName}, ${amount} TL para ekledi.",
		added_cash_to_player_title = "Oyuncuya Nakit Eklendi",
		added_cash_to_player_details = "${consoleName}, ${targetConsoleName}'nin hesabına ${amount} TL para ekledi.",
		added_cash_to_everyone_title = "Herkes'e Nakit Eklendi",
		added_cash_to_everyone_details = "${consoleName}, herkesin hesabına ${amount} TL para ekledi.",

		removed_cash_title = "Nakit Kaldırıldı",
		removed_cash_details = "${consoleName} $${amount} nakit kaldırdı.",
		removed_cash_from_player_title = "Oyuncudan Nakit Kaldırıldı",
		removed_cash_from_player_details = "${consoleName}, ${targetConsoleName} adlı oyuncudan $${amount} nakit kaldırdı.",
		removed_cash_from_everyone_title = "Herkesten Nakit Kaldırıldı",
		removed_cash_from_everyone_details = "${consoleName}, herkesin $${amount} nakitini kaldırdı.",

		added_bank_title = "Banka Eklendi",
		added_bank_details = "${consoleName} $${amount} banka ekledi.",
		added_bank_to_player_title = "Oyuncunun bankasına eklendi",
		added_bank_to_player_details = "${consoleName}, ${targetConsoleName}'nin bankasına $${amount} ekledi.",
		added_bank_to_everyone_title = "Herkesin bankasına eklendi",
		added_bank_to_everyone_details = "${consoleName}, herkesin bankasına $${amount} ekledi.",

		removed_bank_title = "Bankadan para düşürüldü",
		removed_bank_details = "${consoleName}, $${amount} para düşürdü.",
		removed_bank_from_player_title = "Oyuncunun bankasından para düşürüldü",
		removed_bank_from_player_details = "${consoleName}, ${targetConsoleName}'nin bankasından $${amount} para düşürdü.",
		removed_bank_from_everyone_title = "Herkese Bankadan Para Çıkarıldı",
		removed_bank_from_everyone_details = "${consoleName} herkesten $${amount} bankadan para çıkardı.",

		added_cash = "$${amount} para eklendi.",
		added_cash_to_player = "${targetConsoleName}'ye $${amount} para eklendi.",
		added_cash_to_everyone = "Herkese $${amount} para eklendi.",

		removed_cash = "$${amount} para çıkartıldı.",
		removed_cash_from_player = "${targetConsoleName}'den $${amount} para çıkartıldı.",
		removed_cash_from_everyone = "Herkese $${amount} para çıkartıldı.",

		added_bank = "$${amount} banka eklendi.",
		added_bank_to_player = "$${amount} banka, ${targetConsoleName}'in hesabına eklendi.",
		added_bank_to_everyone = "Herkesin hesabına $${amount} banka eklendi.",

		removed_bank = "$${amount} banka çıkarıldı.",
		removed_bank_from_player = "$${amount} banka, ${targetConsoleName}'in hesabından çıkarıldı.",
		removed_bank_from_everyone = "Herkesin hesabından $${amount} banka çıkarıldı.",

		money_event_not_admin = "Para etkinliği `${moneyEvent}` yapılamadı, yönetici değilsiniz.",

		spawned_item_title = "Eşya Çıkarıldı",
		spawned_item_details = "${consoleName}, kendisi için ${amount} adet `${itemName}` eşyası çıkardı.",
		spawned_item_for_player_title = "Oyuncu İçin Eşya Yaratıldı",
		spawned_item_for_player_details = "${consoleName}, ${targetConsoleName} için ${amount}x `${itemName}` eşyasını yarattı.",
		spawned_item_for_everyone_title = "Herkes İçin Eşya Yaratıldı",
		spawned_item_for_everyone_details = "${consoleName}, herkes için ${amount}x `${itemName}` eşyasını yarattı.",

		report_title = "RAPOR-${reportId} ${reporterName}",
		report_logs_title = "Rapor",
		report_logs_details = "${consoleName}, aşağıdaki mesajla bir rapor oluşturdu: `${reportMessage}`",

		announcement_staff_title = "Personel Duyurusu",
		announcement_server_title = "Sunucu Duyurusu",

		announcement_logs_title = "Tüm Sunucu Duyurusu",
		announcement_logs_details = "${consoleName}, sunucu genelinde şu mesajı yayınladı: `${announcementMessage}`",
		announcement_not_admin = "Personel duyurusu yapmak için yetkiniz yok.",

		announcement_maintenance = "Sunucu, ${minutes} dakika içinde bakım nedeniyle kapalı olacak.",
		announcement_update = "Sunucu, ${minutes} dakika içinde güncelleme nedeniyle kapalı olacak.",
		announcement_restart = "Sunucu yeniden başlatılıyor, ${minutes} dakika içinde kapatılacak.",

		posted_announcement = "Duyuru mesajı yayınlandı.",
		posted_announcement_locale = "Yerelleştirilmiş duyuru mesajı yayınlandı.",
		failed_to_post_announcement = "Mesaj eklenmediği için duyuru mesajı yayınlanamadı.",
		failed_to_post_announcement_locale = "Desteklenmeyen bir yerelleştirme eklendiği için duyuru mesajı yayınlanamadı.",

		staff_title = "${staffName} PERSONELİ",
		staff_message_logs_title = "Personel Mesajı",
		staff_message_logs_details = "${consoleName} şu mesajı personel sohbetinde gönderdi: `${staffMessage}`",
		staff_message_illegal = "Bir oyuncu personel sohbetine mesaj göndermeyi denedi, ancak personel değildi.",

		staff_pm_title = "PERSONEL ÖZEL MESAJI ${transmissionTitle}",
		staff_pm_logs_title = "Personel Özel Mesajı",
		staff_pm_logs_details = "${senderConsoleName}, ${recipientConsoleName} kişisine şu mesajı gönderdi: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "Giriş yapmadınız.",
		staff_pm_not_user_not_found = "Sunucu kimliği ${serverId} olan kullanıcı bulunamadı.",
		staff_pm_not_recipient_not_staff = "Mesaj göndermeye çalıştığınız oyuncu bir personel üyesi değildir.",
		staff_pm_unable_to_message_self = "Kendinize mesaj gönderemezsiniz.",
		staff_pm_warning = "Personel PM Uyarısı",
		staff_pm_first_time = "Personel PM'lerini daha önce hiç kullanmadığınızı görüyoruz. Bir personel PM'sine yanıt vermek için /personelpm komutunu kullanın.",

		external_staff_message = "Harici Personel Mesajı",
		external_staff_message_from_player = "${playerName} tarafından Harici Personel Mesajı",
		external_staff_message_content = "${staffMessage} (Bu mesaja yanıt veremezsiniz.)",

		unable_to_staff_message_yourself = "Kendinize personel mesajı gönderemezsiniz.",
		message_sent = "Mesaj gönderildi.",
		player_not_found = "Oyuncu bulunamadı.",
		missing_valid_target_source_parameter = "Geçerli bir 'hedef kaynağı' parametresi eksik.",
		missing_valid_message_parameter = "Geçerli bir 'mesaj' parametresi eksik.",

		invalid_coordinates = "Geçersiz x, y, z veya w koordinatları gönderildi.",
		player_not_loaded_character = "Oyuncunun karakteri yüklenmemiş.",
		teleport_successful = "Oyuncu başarıyla teleport edildi.",

		player_revived_success = "Oyuncu başarıyla diriltildi.",

		missing_valid_license_identifier_parameter = "Geçerli bir 'licenseIdentifier' parametresi eksik.",

		illegal_entity_wipe = "Oyuncu izinlere sahip olmadan varlıkları silmeye çalıştı.",
		wiped_entities = "Varlıklar silindi",
		wipe_entities_logs_title = "Varlıklar silindi",
		wipe_entities_logs_details = "${consoleName} şu yapılandırmayla varlık silme işlemi gerçekleştirdi: mesafe = `${distance}`, ignoreLocalEntities = `${ignoreLocalEntities}`, modelName = `${modelName}`",

		wipe_awaiting_confirmation = "Silme işlemi şimdi onay bekliyor. Onaylamak veya iptal etmek için `evet` veya `hayır` yazın (60 saniye içinde sona erer).\n\nSeçilen parametreler:\n- mesafe: `${distance}`\n- yerel öğeleri yoksay: `${ignoreLocalEntities}`\n- model adı: `${modelName}`",
		wipe_awaiting_big_title = "Mesafe Silme Uyarısı",
		wipe_awaiting_confirmation_big = "**Dikkat, çok büyük bir alanı sileceksiniz, lütfen istediğinizden emin olun!**\nOnaylamak veya iptal etmek için `evet` veya `hayır` yazın (60 saniye içinde sona erer).\n\n- mesafe: `${distance}`\n- yerel öğeleri yoksay: `${ignoreLocalEntities}`\n- model adı: `${modelName}`",
		cancelled_wipe = "Silinme işlemi iptal edildi.",

		there_is_people_nearby = "Noclip yaparken seni görebilecek oyuncular var!",

		cant_while_spectating = "İzlerken bunu yapamazsın.",

		you_have_been_kicked = "${kicker} tarafından '${reason}' sebebiyle sunucudan atıldın.",
		you_have_been_kicked_no_reason = "${kicker} tarafından belirtilmemiş bir nedenle sunucudan atıldın.",

		logs_player_kicked_title = "Oyuncu Atıldı",
		logs_player_kicked_details = "${consoleName}, ${kicker} tarafından '${reason}' sebebiyle sunucudan atıldı.",
		logs_player_kicked_no_reason_details = "${consoleName}, ${kicker} tarafından belirtilmemiş bir nedenle sunucudan atıldı.",

		you_have_been_banned = "${banner} tarafından `${reason}` sebebiyle yasaklandınız.",
		you_have_been_banned_no_reason = "${banner} tarafından belirtilmeyen bir sebep ile yasaklandınız.",

		banner_name_generic = "Bir personel üyesi",

		ban_alert_title = "Sunucudan Yasaklandınız",
		ban_alert_description_banner = "Sebep: `${reason}`. ${banner} tarafından otomatik olarak yasaklanmış olacaktınız.",
		ban_alert_description = "Sistem tarafından `${reason}` sebebiyle otomatik olarak yasaklanmış olabilirdiniz.",

		logs_player_banned_title = "Oyuncu Yasaklandı",
		logs_player_banned_system_title = "Oyuncu Sistem Tarafından Yasaklandı",
		logs_player_banned_details = "${consoleName}, ${banner} tarafından `${reason}` sebebiyle sunucudan yasaklandı.",
		logs_player_banned_no_reason_details = "${consoleName}, belirtilmeyen bir nedenle ${banner} tarafından sunucudan yasaklandı.",

		player_kicked = "${consoleName} sunucudan atıldı.",
		player_banned = "${consoleName} sunucudan yasaklandı.",

		ban_double_kill = "Çift Öldürme!",
		ban_triple_kill = "😧 Üçlü Öldürme!!!",
		ban_quadrouple_kill = "😨 DÖRTLÜ ÖLDÜRME!!!!!!",
		ban_killing_spree = "🤯 ÖLDÜRME ÇIĞLIĞI (${count})!!!!!!",

		kick_player_not_staff = "izinleri olmayan bir oyuncuyu atma girişiminde bulunuldu.",
		ban_player_not_staff = "Yeterli izin olmadan bir oyuncuyu yasaklamaya çalışıldı.",

		hide_staff_not_staff = "Yeterli izin olmadan personel durumunu gizlemeye çalışıldı.",
		toggle_staff_not_staff = "Yeterli izin olmadan personel durumunu açıp kapatmaya çalışıldı.",

		logs_hide_staff_title = "Personel Gizlendi",
		logs_hide_staff_hidden_details = "${consoleName}, personel durumunu gizledi.",
		logs_hide_staff_shown_details = "${consoleName}, personel durumunu gösterdi.",

		logs_toggle_staff_title = "Personel Durumu Değiştirildi",
		logs_toggle_staff_off_details = "${consoleName} personeli müsait olmama durumunu kapattı.",
		logs_toggle_staff_on_details = "${consoleName} personeli müsait olma durumunu açtı.",

		staff_hidden = "Personel durumunuz şimdi gizlidir.",
		staff_shown = "Personel durumunuz şimdi gösterilmektedir.",
		staff_toggled_on = "Personel müsaitliğiniz açılmıştır.",
		staff_toggled_off = "Personel müsaitliğiniz kapatılmıştır.",

		staff_feature_unavailable = "Personel müsaitliği kapalıyken bu özellik kullanılamaz.",

		failed_toggle_tracker = "Oyuncu takip özelliği açılamadı.",
		unable_track_player = "Oyuncu takip özelliği kullanılamıyor.",
		success_enable_tracker = "Oyuncu takip özelliği başarıyla açıldı: `${playerName}`.",
		success_disable_tracker = "Oyuncu takip özelliği başarıyla kapatıldı.",
		not_tracking_player = "Oyuncu takip özelliği etkin değil.",
		already_tracking_player = "Zaten bir oyuncuyu takip ediyorsunuz.",

		toggle_player_track_no_permissions = "Geçerli izinler yokken oyuncu takip özelliği açılmaya çalışıldı.",
		set_job_no_permissions = "Geçerli izinler yokken bir iş atamaya çalışıldı.",
		toggle_reflection_no_permissions = "Doğru izinlere sahip olmadan hasar yansımasını açmaya çalışıldı.",

		success_enable_reflection = "Hasar yansıması başarıyla açıldı.",
		success_disable_reflection = "Hasar yansıması başarıyla kapatıldı.",
		failed_toggle_reflection = "Hasar yansıtma geçişini değiştirme başarısız oldu.",

		reflection_logs_title = "Yansıtma Değiştirildi",
		reflection_logs_enabled_details = "${consoleName}, yansıtma özelliğini açtı.",
		reflection_logs_disabled_details = "${consoleName}, yansıtma özelliğini kapattı.",

		headache_logs_title = "Baş Ağrısı Tetiklendi",
		headache_logs_details = "${consoleName}, ${targetConsoleName} için baş ağrısı tetikledi.",
		trigger_headache_no_permissions = "Yeterli izinlere sahip olmadan baş ağrısı tetikleme girişiminde bulunuldu.",

		success_trigger_headache = "${playerName} için baş ağrısı başarıyla tetiklendi.",
		failed_trigger_headache = "Baş ağrısı tetikleyemedi.",

		protective_mode_not_staff = "Sunucunun koruyucu modunu uygun izinler olmadan açmaya çalıştınız.",
		protective_mode_toggled_on = "Sunucu koruyucu modu etkinleştirildi. Sunucuya bağlanmak için gereken oynama süresi `${playtime}` olarak ayarlandı.",
		protective_mode_toggled_off = "Sunucu koruyucu modu devre dışı bırakıldı.",
		protective_mode_already_on = "Sunucu koruyucu modu zaten `${playtime}` oynama süresi gerektirerek etkinleştirilmiş durumda.",
		protective_mode_already_off = "Sunucu koruyucu modu zaten devre dışı bırakılmıştır.",
		logs_protective_mode = "Sunucu Koruma Modu",
		logs_protective_mode_on = "${consoleName} sunucu koruma modunu etkinleştirdi, gerekli oynama süresi: `${playtime}`.",
		logs_protective_mode_off = "${consoleName} sunucu koruma modunu devre dışı bıraktı.",

		spawn_item_not_staff = "Yetkili izni olmadan öğe oluşturma denemesi yapıldı",
		no_item_name = "Hiçbir öğe adı belirtilmedi.",
		invalid_item_name = "${itemName} geçerli bir öğe adı değil.",
		item_spawned = "${consoleName} için ${amount}x `${itemName}` öğesi oluşturuldu.",
		item_spawned_for_everyone = "${itemName} adlı öğe herkes için ${amount} kez oluşturuldu",

		set_warning_message_not_staff = "Sunucunun uyarı mesajını uygun izinler olmadan ayarlamaya çalışıldı",
		warning_message_set_to = "Uyarı mesajı `${warningMessage}` olarak ayarlandı",
		warning_message_removed = "Uyarı mesajı kaldırıldı",
		warning_message_error = "Uyarı mesajını ayarlarken bir hata oluştu",
		warning_message_identical = "Uyarı mesajını zaten ayarlanmış olduğu şekilde ayarlayamazsınız",
		warning_message_set_to_title = "Uyarı Mesajı Ayarlandı",
		warning_message_set_to_details = "${consoleName} uyarı mesajını `${warningMessage}` olarak ayarladı.",
		warning_message_removed_title = "Uyarı Mesajı Kaldırıldı",
		warning_message_removed_details = "${consoleName} uyarı mesajını kaldırdı.",

		indestructibility_on = "'Yok Edilemezlik' Açıldı.",
		indestructibility_off = "'Yok Edilemezlik' Kapandı.",
		speed_boost_on = "'Hız Arttırıcı' Açıldı.",
		speed_boost_off = "'Hız Arttırıcı' Kapandı.",
		nitro_boost_on = "'Nitro Boost' Açıldı.",
		nitro_boost_off = "'Nitro Boost' Kapandı.",
		no_nearby_vehicles_on = "'Yakındaki Araç Yok' Açıldı.",
		no_nearby_vehicles_off = "'Yakındaki Araç Yok' Kapandı.",
		speed_up_progress_bar_on = "'İlerleme Çubuğunu Hızlandır' Açıldı.",
		speed_up_progress_bar_off = "'İlerleme Çubuğunu Hızlandır' Kapandı.",
		invisibility_on = "'Görünmezlik' Açıldı.",
		invisibility_off = "'Görünmezlik' Kapandı.",
		wallhack_on = "'Duvar Hilesi' Açıldı.",
		wallhack_off = "'Duvar Hilesi' Kapandı.",
		aimbot_on = "'Aimbot' Açıldı.",
		aimbot_off = "'Aimbot' Kapandı.",
		player_bones_on = "'Oyuncu Kemikleri' Açıldı.",
		player_bones_off = "'Oyuncu Kemikleri' Kapandı.",
		vehicle_smoke_on = "'Araç Dumanı' Açıldı.",
		vehicle_smoke_off = "'Araç Dumanı' Kapandı.",

		peeking_on = "Hızlı bakış açısı açıldı.",
		peeking_off = "Hızlı bakış açısı kapatıldı.",

		watching_on = "İzleme modu açıldı.",
		watching_off = "İzleme modu kapatıldı.",
		watching_label = "İzleme: ${nearby}",

		evidence_view_on = "Kanıt görünümü açıldı.",
		evidence_view_off = "Kanıt görünümü kapalı hale getirildi.",
		evidence_view_title = "Kanıt Görünümü Değiştirildi",
		evidence_view_details_on = "${consoleName}, gelişmiş kanıt görünümünü açtı.",
		evidence_view_details_off = "${consoleName}, gelişmiş kanıt görünümünü kapattı.",

		report_muted_no_reason = "Rapor komutundan neden belirtilmeden susturuldunuz.",
		report_muted = "Rapor komutundan '${reason}' sebebiyle susturuldunuz.",

		already_sending_report = "Zaten bir rapor gönderiyorsunuz. Lütfen bekleyin.",
		unable_to_send_identical_report = "Aynı raporu ard arda gönderemezsiniz.",

		already_sending_staff_message = "Zaten bir yetkili mesajı gönderiyorsunuz. Lütfen bekleyin.",
		unable_to_send_identical_staff_message = "30 saniye içinde ard arda aynı iki yetkili mesajı gönderemezsiniz.",

		tp_coords_invalid_coordinates = "Geçersiz koordinatlar.",
		tp_coords_teleported_to_coordinates = "Koordinat X: ${x}, Y: ${y}, Z: ${z} olarak teleport edildiniz.",

		teleported_to_waypoint = "${locationLabel} noktasındaki yer işaretine teleport edildiniz.",
		no_waypoint_set = "Bir rota noktası belirlemelisiniz.",

		teleported_to_coordinates_logs_title = "Koordinatlara Teleport Edildi",
		teleported_to_coordinates_logs_details = "${consoleName}, X: ${x}, Y: ${y}, Z: ${z} koordinatlarına teleporte edildi.",
		teleported_to_waypoint_logs_title = "Rotaya Teleport Edildi",
		teleported_to_waypoint_logs_details = "${consoleName}, ${locationLabel} adresindeki rotaya teleporte edildi.",

		teleport_to_coordinates_not_staff = "Oyuncu, bazı koordinatlara teleporte etmeye çalıştı ancak personel değil.",
		teleport_to_waypoint_not_staff = "Oyuncu personel değilken bir yer işaretine ışınlanmaya çalıştı.",

		failed_isolate = "Oyuncu izole edilemedi.",
		invalid_server_id = "Geçersiz sunucu kimliği.",
		isolate_success_on = "${consoleName} başarıyla izole edildi.",
		isolate_success_off = "${consoleName} izolasyonu durduruldu.",

		isolate_missing_permissions = "Oyuncu uygun izinlere sahip olmadan başka bir oyuncuyu izole etmeye çalıştı.",

		population_density_set_to = "Nüfus yoğunluğu çarpanı yazılımı ${multiplierLabel}% olarak ayarlandı.",
		population_density_set_off = "Nüfus yoğunluğu çarpanı devre dışı bırakıldı.",
		population_density_is_not_on = "Nüfus yoğunluğu çarpanı devrede değil.",
		population_density_already_set_to = "Nüfus yoğunluğu çarpanı zaten ${multiplierLabel}% olarak ayarlandı.",

		population_density_not_super_admin = "Oyuncu, uygun izinlere sahip olmadan nüfus yoğunluğunu ayarlamaya çalıştı.",

		enabled_features_list = "Aktif Özellikler:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "Çarpışmaları Devre Dışı Bıraktı",
		disabled_recoil_feature = "Rekabeti Engelleyen",
		evidence_view_feature = "Delil Görünümü",
		hit_indicator_feature = "Vurulma Göstergesi",
		indestructibility_feature = "Dayanıklılık",
		infinite_ammo_feature = "Sonsuz Mühimmat",
		invisibility_feature = "Görünmezlik",
		muted_sirens_feature = "Kısık Siren Sesleri",
		nitro_boost_feature = "Nitro Yükseltme",
		no_nearby_vehicles_feature = "Yakındaki Araç Yok",
		peeking_feature = "Gizlice Bakma",
		roll_control_feature = "Yatma Kontrolü",
		speed_boost_feature = "Hız Yükseltme",
		speed_up_progress_bar_feature = "İlerleme Çubuğunu Hızlandırma",
		sticky_feet_feature = "Yapışkan Ayaklar",
		wallhack_feature = "Duvar Hilesi",
		watching_feature = "İzleme",
		fortnite_feature = "Fortnite",
		reflection_feature = "Hasar Yansıtma",
		stable_cam_feature = "Stabil Kamera",

		you_are_not_in_a_vehicle = "Araçta değilsiniz.",
		repaired_vehicle = "Araç tamir edildi.",

		success_nos_refill = "NOS başarıyla yenilendi.",
		failed_nos_refill = "NOS yenilenemedi.",

		refill_nitro_missing_permissions = "Oyuncu, uygun izinlere sahip olmadan NOSunu yenilemeyi denedi.",

		register_invalid_character_id = "Geçersiz karakter kimliği.",
		register_invalid_slot = "Geçersiz envanter yuvası.",
		register_weapon_success = "${cid} karakter kimliğine sahip karaktere ${slotId} yuvasındaki silah başarıyla kaydedildi.",
		register_weapon_failed = "Silah kaydedilemedi.",

		register_weapon_missing_permissions = "Oyuncu uygun izinlere sahip olmadan silah kaydetmeye çalıştı.",

		vehicle_smoke_invalid_class = "Araç sınıfı için duman etkisi etkinleştirilemez.",

		repair_vehicle_not_super_admin = "Oyuncu uygun izinlere sahip olmadan araç tamir etmeye çalıştı.",

		repaired_vehicle_logs_title = "Tamir Edilen Araç",
		repaired_vehicle_logs_details = "${consoleName} aracını tamir etti.",

		unable_to_enter_vehicle_while_dead = "Ölüyken araca binemezsiniz.",
		the_closest_vehicle_had_no_free_seats = "En yakın araçta boş koltuk yoktu.",
		there_are_no_nearby_vehicles = "Yakında hiçbir araç yok.",
		vehicle_not_found_network = "Ağ kimliği ile eşleşen araç bulunamadı.",
		entered_vehicle = "Yakındaki ${vehicleName} aracına girmeye çalışıldı.",

		set_vehicle_modifications_logs_title = "Araç Modifikasyonları Ayarla",
		set_vehicle_modifications_logs_details = "${consoleName}, plakası `${vehiclePlate}` olan bir aracın modifikasyonlarını ayarladı. Ayarlanan modifikasyonlar: modTipi-${modType}, modIndex-${modIndex}, customTires-${customTires}.",

		set_vehicle_livery_logs_title = "Araç Kaplaması Ayarlandı",
		set_vehicle_livery_logs_details = "${consoleName}, plakası `${vehiclePlate}` olan bir aracın kaplamasını `${liveryIndex}` olarak ayarladı..",

		set_livery_missing_permissions = "Oyuncunun yeterli izni olmadan bir aracın kaplaması ayarlaması engellendi.",
		set_modifications_missing_permissions = "Oyuncunun yeterli izni olmadan bir aracın modifikasyonlarını ayarlama girişimi engellendi.",

		set_vehicle_modification = "Mod tipi `${modType}` için araç modifikasyonu ayarı `${modIndex}` olarak yapıldı. (Özel Lastikler: ${customTires})",
		mod_index_invalid_for_type = "Mod indeksi `${modIndex}`, mod türü `${modType}` için geçersiz.",
		mod_type_invalid = "Mod türü `${modType}` geçersiz.",
		no_mod_type_set = "Mod türü belirtilmedi.",

		set_vehicle_livery = "Araç kaplaması `${liveryIndex}` olarak ayarlandı.",
		no_livery_index_set = "Kaplama indeksi belirtilmedi (Minimum: 1).",
		you_are_not_the_driver = "Araç sürücüsü siz değilsiniz.",
		vehicle_is_not_a_plane_or_heli = "Araç uçak veya helikopter değil.",
		livery_index_invalid = "Geçersiz kaplama indeksi (Maksimum: ${maxLiveries}).",
		vehicle_has_no_liveries = "Araçta hiçbir kaplama yoktur.",

		invalid_plate_number = "Geçersiz plaka numarası.",
		set_fake_plate_number = "Araç plaka numarası `${plateNumber}` olarak ayarlandı.",

		invalid_dirt_level = "Geçersiz kir seviyesi.",
		set_dirt_level = "Araç kir seviyesi `${dirtLevel}` olarak ayarlandı.",

		set_dirt_level_not_super_admin = "Bir oyuncu, yeterli izinlere sahip olmadan bir aracın kir seviyesini değiştirmeyi denedi.",

		set_fake_plate_not_super_admin = "Bir oyuncu, yeterli izinlere sahip olmadan bir aracın sahte plakasını değiştirmeyi denedi.",

		already_fake_disconnecting = "Zaten sahte bağlantı kesme işlemi yapmaya çalışıyorsunuz. Lütfen bekleyin.",
		started_fake_disconnect = "Sahte bağlantı kesme işlemi başlatıldı. İşlemi durdurmak için komutu tekrarlayın.",
		stopped_fake_disconnect = "Sahte bağlantı kesme işlemi durduruldu.",

		fake_disconnect_not_super_admin = "Oyuncu uygun izinlere sahip olmadan sahte bağlantı kesme işlemi denedi.",

		disabled_idle_cam = "Boşta kamera devre dışı bırakıldı.",
		enabled_idle_cam = "Boşta kamera tekrar etkinleştirildi.",

		created_vehicle_smoke_for_player_logs_title = "Araç Dumanı Oluşturuldu",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} araç dumanı oluşturdu.",

		player_info_not_staff = "Bir oyuncunun karakter bilgilerini uygun izin olmadan alma girişimi yapıldı.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\n${playtime} oynanma süresine sahip.\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "Envanter adı parametresi eksik.",
		force_inventory_missing_perms = "Uygun izin olmadan bir envanteri açmaya çalışıldı.",

		auto_driving_engaged = "Otomatik sürüş aktifleştirildi (Stil: ${style}).",
		auto_driving_updated = "Otomatik sürüş hızı/konumu güncellendi.",
		auto_driving_disengaged = "Otomatik sürüş sonlandırıldı.",
		not_auto_driving = "Otomatik sürüş modunda değilsiniz.",
		invalid_auto_drive_speed = "Otomatik sürüş hızı geçersiz veya eksik.",
		reset_auto_drive_speed = "Otomatik sürüş hızı varsayılana sıfırlandı.",
		set_auto_drive_speed = "${speed} mph olarak otomatik sürüş hızı ayarlandı.",

		disable_collisions_on = "Çarpışmalarınız devre dışı bırakıldı.",
		disable_collisions_off = "Çarpışmalarınız şu anda etkin.",
		failed_toggle_collisions = "Devre dışı bırakılan çarpışmaları açma işlemi başarısız oldu.",

		disabled_recoil_on = "Geri tepme devre dışı bırakıldı.",
		disabled_recoil_off = "Geri tepme etkinleştirildi.",

		attachment_missing = "Eksik bağlantı parametresi.",
		no_weapon_equipped = "Hiçbir silah takılı değil.",
		attachment_invalid = "Bağlantı geçersiz veya bu silah için uygun değil.",
		attachment_failed_toggle = "Bu silahta bağlantı geçişini açmak başarısız oldu.",
		attachment_on = "'${attachment}' bağlantısı başarıyla açıldı.",
		attachment_off = "'${attachment}' bağlantısı başarıyla kapatıldı.",

		tint_invalid = "Geçersiz silah tonu.",
		tint_range_invalid = "Geçersiz silah renk aralığı (0 ile ${max} arasında olmalıdır).",
		tint_failed_set = "Silah rengi ayarlanırken hata oluştu.",
		tint_removed = "Silah rengi başarıyla kaldırıldı.",
		tint_set = "Silah rengi başarıyla `${tint}` (${tintIndex}) olarak ayarlandı.",
		no_weapon_tint = "Bu silahın renk seçenekleri yok.",

		weapon_attachment_missing_perms = "Silah ek parçasını kullanmak için gerekli izinler yok.",
		weapon_tint_missing_perms = "Silah rengi değiştirme izinleri yok",

		no_attachments = "Bağlantı Noktası Yok",
		available_attachments = "Mevcut Bağlantı Noktaları",
		current_attachments = "Geçerli Bağlantılar",
		no_attachments = "Bağlantı Noktası Yok",
		attachments_list = "Bağlantı Noktaları:",
		tint_label = "Renklendirme: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "Öğe adı değiştirmesi başarısız oldu.",
		item_name_removed = "Öğe adı değiştirmesi başarıyla kaldırıldı.",
		item_name_set = "'${itemName}' öğe adı değiştirme işlemi başarıyla tamamlandı.",
		item_name_invalid_slot = "Geçersiz veya eksik öğe yuvası.",

		cleaned_ped = "${consoleName}'nın karakteristiği başarıyla temizlendi.",
		cleaned_ped_self = "Ped'iniz temizlendi.",
		clean_ped_failed = "Ped temizlenemedi.",
		cleaned_ped_for_all = "Tüm oyuncuların pedleri temizlendi.",
		clean_ped_no_permission = "Gerekli yetkilere sahip olmadan bir oyuncunun peditemizlenmeye çalışıldı.",

		item_durability_set_success = "Koçan ${slotId} için dayanıklılık başarıyla %${amount}'e ayarlandı.",
		item_durability_set_failed = "Dayanıklılık ayarlanamadı.",
		item_durability_invalid_amount = "Geçersiz dayanıklılık miktarı (0 <> 100).",
		item_durability_set_no_permission = "Gerekli yetkilere sahip olmadan bir eşyanın dayanıklılığı ayarlanmaya çalışıldı.",

		item_metadata_set_no_permission = "Gerekli izinler olmadan bir öğenin meta verilerini ayarlamaya çalıştınız.",
		item_metadata_invalid_metadata = "Geçersiz öğe meta verileri.",
		item_metadata_set_success = "Slot ${slotId} için öğelerin meta verileri başarıyla ayarlandı.",
		item_metadata_set_failed = "Meta verileri ayarlamada sorun oluştu.",

		advanced_metagame_on = "Gelişmiş metagame açıldı.",
		advanced_metagame_off = "Gelişmiş metagame kapatıldı.",

		identity_set = "Kimliğin '${name}' olarak başarıyla ayarlandı.",
		identity_reset = "Kimliğiniz başarıyla sıfırlandı.",
		identity_set_failed = "Kimlik bilginiz ayarlanırken bir hata oluştu.",
		identity_hud = "Kimlik: ${playerName}",

		set_identity_no_permission = "Oyuncu uygun izinlere sahip olmadan isimlerini değiştirmeye çalıştı.",

		invalid_range_parameter = "Geçersiz aralık parametresi.",
		wipe_first_owned_success = "Başarıyla ${amount} adet nesne silindi, sahibi sunucu kimliği `${serverId}` olan oyuncunun.",
		wipe_first_owned_success_range = "${range} metrelik alanda, sahibi sunucu kimliği `${serverId}` olan oyunculara ait ilk ${amount} adet nesne başarıyla silindi.",
		wipe_first_owned_failed = "Sunucu ID'si `${serverId}` tarafından sahip olunan öğeleri silme başarısız oldu.",

		invalid_radius_parameter = "Geçersiz yarıçap (1 ile 500 arasında).",
		scooped_up_players = "${amount} oyuncu kucaklandı.",
		scoop_invalid = "Herhangi bir oyuncu kucaklanmadı.",
		unscooped_players = "${total} oyuncunun ${amount} kucaklaması geri çevrildi.",
		unscoop_failed = "Oyuncuların kucaklaması geri alınamadı.",

		unscoop_missing_permissions = "Oyuncu uygun izinlere sahip olmadan kucaklamaları geri almaya çalıştı.",

		toggle_collisions_missing_permissions = "Oyuncu uygun izinlere sahip olmadan çarpışmaları açıp kapatmaya çalıştı.",
		wipe_first_owned_missing_permissions = "Oyuncu, uygun izinlere sahip olmadan ilk sahip olduğu varlıkları temizlemeye çalıştı.",

		freeze_missing_permissions = "Oyuncu, uygun izinlere sahip olmadan başka bir oyuncuyu dondurmayı veya düşürmeyi denedi.",

		freeze_success = "${consoleName} başarıyla donduruldu.",
		failed_freeze = "Oyuncunun dondurulması başarısız oldu.",
		unfreeze_success = "${consoleName} başarıyla çözüldü.",
		failed_unfreeze = "Oyuncunun çözülmeleri başarısız oldu.",

		freeze_logs_title = "Oyuncu Donduruldu",
		freeze_logs_details = "${consoleName} '${targetName}' adlı oyuncuyu dondurdu.",
		unfreeze_logs_title = "Oyuncunun Dondurulması Kaldırıldı",
		unfreeze_logs_details = "${consoleName}, ${targetName}'in dondurulmasını kaldırdı.",

		slap_kill_reason = "Tokatlandı",
		slap_success = "${consoleName} başarıyla tokatlandı.",
		slap_failed = "Oyuncunun tokatlanması başarısız oldu.",
		slap_logs_title = "Oyuncu Tokatlandı",
		slap_logs_details = "${consoleName}, ${targetName}'i tokatladı.",
		slap_missing_permissions = "Oyuncu, gerekli izinleri olmadan başka bir oyuncuyu tokatlamaya çalıştı.",

		damaged_player = "${consoleName}, ${damage} hasar vererek başarılı bir şekilde hasar aldı.",
		damage_player_failed = "Oyuncunun hasar alması başarısız oldu.",
		damage_player_logs_title = "Oyuncu Hasar Alınca",
		damage_player_logs_details = "${consoleName}, ${targetConsoleName}'ı(ları) ${damage} hasar vererek zarar verdi.",
		damage_player_missing_permissions = "Oyuncu, uygun izinler olmadan başka bir oyuncuya hasar vermeye çalıştı.",

		refill_nitro_logs_title = "Nitro Seviyesi Tamamlandı",
		refill_nitro_logs_details = "${consoleName} nitro seviyesini doldurdu.",

		isolated_logs_title = "Oyuncu İzolasyonu",
		isolated_off_logs_details = "${consoleName}, ${targetName}'nin izolasyonunu kapatıldı.",
		isolated_on_logs_details = "${consoleName}, ${targetName}'nin izolasyonunu açıldı.",

		character_data_logs_title = "Karakter Verileri",
		character_data_logs_details = "${consoleName}, ${targetName}'nin karakter verilerini kontrol etti (CID: ${characterId}).",

		item_name_logs_title = "İsim Değiştirme",
		item_name_logs_details = "${consoleName}, ${slot} numaralı slotun eşyalarının ismini `${nameOverride}` olarak değiştirdi.",

		toggle_attachment_logs_title = "Eklenti Açma/Kapatma",
		toggle_attachment_logs_details = "${consoleName}, `${attachment}` ekletisini açıp/kapattı.",

		tint_logs_title = "Silah Tonu Ayarlama",
		tint_logs_details = "${consoleName}, silahının tonunu ${tintIndex} olarak ayarladı.",

		population_multiplier_logs_title = "Nüfus Çarpanı",
		population_multiplier_logs_details = "${consoleName}, nüfus çarpanını ${populationMultiplier} olarak ayarladı.",

		fake_disconnect_logs_title = "Suni Bağlantı Kesme",
		fake_disconnect_on_logs_details = "${consoleName}, suni bağlantı kesme özelliğini açtı.",
		fake_disconnect_off_logs_details = "${consoleName}, suni bağlantı kesme özelliğini kapattı.",

		identity_logs_title = "Kimlik Geçersiz Kılma",
		identity_on_logs_details = "${consoleName}, kimlik bilgisini '${playerName}' olarak belirledi.",
		identity_off_logs_details = "${consoleName} kimliklerini sıfırladı.",

		clean_ped_logs_title = "Temizlenen Ped",
		clean_ped_logs_details = "${consoleName} ${targetName}'in ped'ini temizledi.",

		collisions_logs_title = "Çarpışmalar",
		collisions_off_logs_details = "${consoleName} devre dışı bırakılan çarpışmalarını kapattı.",
		collisions_on_logs_details = "${consoleName} devre dışı bırakılan çarpışmalarını açtı.",

		invalid_job_search = "Geçersiz iş arama (en az 3 karakter olmalıdır).",
		failed_job_search = "İş araması başarısız oldu.",
		job_search_no_results = "İş bulunamadı.",
		job_search_results = "${consoleName}'in işi \"${jobName}, ${departmentName}, ${positionName}\" olarak ayarlandı (Skor: ${score}).",

		job_reset_success = "${consoleName}'in işi başarıyla sıfırlandı.",
		failed_job_reset = "İş sıfırlama başarısız oldu."
	},

	anti_cheat = {
		illegal_client_event = "Direkt olarak hapse gidin. Gitmek istemeyenler için $200 gibi bir para dağıtılmayacaktır.",
		illegal_server_event = "Direkt olarak hapse gidin. Gitmek istemeyenler için $200 gibi bir para dağıtılmayacaktır.",
		bad_entity_spawn = "Model adı `${modelName}` olan bir varlık oluşturuldu.",
		bad_entity_title = "Kötü Varlık Doğuruldu",
		bad_entity_message = "${consoleName} ${modelName} model adlı varlığı doğurdu.",
		detected_entity_title = "Algılanan Varlık Doğuruldu",
		detected_entity_message = "${consoleName} ${modelName} model adlı varlık doğurdu.",
		added_model_to_list = "${modelName} (${modelHash}) modeli tespit listesine eklendi.",
		model_already_added_to_list = "${modelName} (${modelHash}) modeli zaten tespit listesine eklenmiş.",
		removed_model_to_list = "${modelName} (${modelHash}) modeli tespit listesinden kaldırıldı.",
		model_not_in_list = "${modelName} (${modelHash}) adlı model tespit listesine eklenmemiş.",
		set_model_detected_not_staff = "Oyuncu modeli tespit listesine eklemeye çalıştı, ancak yapmak için gerekli izne sahip değil.",
		set_model_undetected_not_staff = "Oyuncu modeli tespit listesinden çıkarmaya çalıştı, ancak yapmak için gerekli izne sahip değil.",
		add_detection_area_not_staff = "Oyuncu tespit bölgesi eklemeye çalıştı, ancak yapmak için gerekli izne sahip değil.",
		remove_detection_area_not_staff = "Oyuncu tespit bölgesini kaldırmaya çalıştı, ancak yapmak için gerekli izne sahip değil.",
		detection_area_close = "[${InteractionKey}] Algılama Alanını Kaldır (${areaId})",
		detection_area = "Algılama Alanı (${areaId})",

		ban_notification_title = "Anti-Hile",
		ban_notification = "${consoleName} hile sebebi `${banReason}` ile yasaklandı.",

		bad_screen_word_ban = "Açık kitap sınavlarını duymuştuk ama bu absürt.",
		blacklisted_command_ban = "Üzgünüz, fakat bu komutu gerçekleştirmek için yetkiniz yok. Eğer bu bir hata olduğunu düşünüyorsanız lütfen sunucu yöneticileri ile iletişime geçin.",
		damage_modifier_ban = "Güç seviyeniz 9000'in üzerinde olamaz.",
		distance_taze_ban = "Uzaktan yaptığın şoklamalar diğerlerini rahatsız etti.",
		fast_movement_ban = "Uçma özelliği bu sunucuda etkinleştirilmemiştir.",
		freecam_ban = "Dışarıdan bir deneyim yaşadığın için engellendin.",
		honeypot_ban = "Yaratıcı modu açmaya çalıştın ama iznin yoktu.",
		hotwire_driving_ban = "Vroom Vroom, ben annemin arabasındayım.",
		illegal_freeze_ban = "Bilirsin sıcak yemek dondurulmuş yemekten daha iyidir?",
		illegal_ped_change_ban = "Kendine estetik müdahale yapmak çok tehlikeli.",
		illegal_spectating_ban = "Diğer oyuncuları izlemek için FIB Ajanı olmanız veya /gamemode spectator komutunu kullanmanız gerekiyor.",
		illegal_vehicle_modifier_ban = "Fast and Furious'taki Dom Toretto gibi aile değiliz.",
		invincibility_ban = "Siyah Şövalye değilsiniz, ölümsüz olamazsınız.",
		ped_spawn_ban = "Mitoz yapmayı denediniz, ancak fotosentez için yeterli güneş ışığı yoktu.",
		player_blips_ban = "Hava sahası dolu olduğundan UAV kullanılamıyor.",
		runtime_texture_ban = "Mod menüsüne sahipsiniz ama kullanamazsınız.",
		spiked_resource_ban = "İzin olmadan betiği değiştirmeye çalışmak, hikayenin sonunu beğenmediğiniz için değiştirmeye çalışmak gibidir.",
		text_entry_ban = "Bu tarayıcıda \"Inspect Element\" işlemi izin verilmez.",
		thermal_night_vision_ban = "Daha parlak geceler izin verilmez.",
		vehicle_modification_ban = "Arabanızın far sıvısını bulamadınız.",
		vehicle_spam_ban = "Kontre teröristler kazandı.",
		vehicle_spawn_ban = "Maden arabasında redstone kullanmaya çalıştınız ancak motorlu raylarınız yoktu.",
		weapon_spawn_ban = "BeşM'e \"Kazanmak için Öde\" yolunu denediniz ve şimdi aslında yasaklanmak için ödediniz.",

		mp_f_freemode_01_label = "Serbest mod (kadın)",
		mp_m_freemode_01_label = "Serbest mod (erkek)",
		player_one_label = "Franklin",
		player_two_label = "Trevor",
		player_zero_label = "Michael",

		notification_distance_taze = "Anti-Hile: ${displayName} çok uzak bir mesafeden (${distance}m) birini tazelerken tespit edildi.",
		notification_bad_screen_word = "Anti-Hile: ${displayName}'ın ekranında ${count} tetikleyici kelime tespit edildi.",

		notification_freecam_detected = "Anti-Hile: Freecam Tespit Edildi",
		notification_illegal_vehicle_modifier = "Anti-Hile: Aracı Modifiye Etme",
		notification_illegal_vehicle_spawn = "Anti-Hile: Araç Spawlandı",
		notification_fast_movement = "Anti-Hile: Hızlı Hareket",
		notification_illegal_freeze = "Anti-Hile: Yasaklı Donma",
		notification_invincibility = "Anti-Hile: Yenilmezlik",
		notification_vehicle_modification = "Anti-Hile: Araç Modifikasyonu",
		notification_damage_modifier = "Anti-Hile: Hasar Modifikasyonu",
		notification_illegal_weapon = "Anti-Hile: Yasaklı Silah",
		notification_spawned_object = "Anti-Cheat: Nesne Oluşturuldu",
		notification_driving_hotwire = "Anti-Cheat: Sıcak Telle Sürüş",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "İsa",
		u_m_y_babyd_label = "Vücut Geliştirici",
		u_m_y_imporage_label = "Süper Kahraman",
		a_m_m_bevhills_02_label = "Beyaz Adam",
		a_m_m_fatlatin_01_label = "Tombul Adam",
		a_m_m_hasjew_01_label = "Yahudi Ped",
		a_m_m_beach_01_label = "Üstsüz Ped (Siyah, Erkek)",
		a_m_m_beach_02_label = "Üstsüz Ped (Beyaz, Erkek)",
		a_m_m_afriamer_01_label = "Tombul Siyah Adam",
		ig_jimmydisanto_label = "Jimmy",
		ig_jimmydisanto2_label = "Jimmy 2",
		a_m_y_musclbeac_01_label = "Yarı çıplak plaj adamı",
		csb_ramp_marine_label = "Denizci adam",
		s_f_y_stripperlite_label = "Dansöz karakteri",
		mp_f_stripperlite_label = "Dansöz karakteri 2",
		mp_m_marston_01_label = "Eksik kol ve bacakları olan karakter",
		mp_m_niko_01_label = "Niko (GTA IV)",

		high_fov_warning = "FOV değeriniz alışılmadık yüksek",
		high_fov_description = "Bu muhtemelen bir FOV (Görüş Alanı) Modifikatörü nedeniyle kaynaklanmaktadır.",
		high_fov_debug = "Geçerli: ${fov}",

		illegal_oxy_run = "Oyuncu insanüstü bir şekilde oxy koşusunu tamamladı.",

		fast_movement_warning = "Çok hızlı hareket ettiğiniz için işaretlendiniz! Lütfen, bunu nasıl yaptığınızı bir geliştiriciye söyleyerek ve ne yaptığınızı açıklama yaparak, geliştiricilere bildirin. Bu sohbet mesajını almanız gerekmeyen bir durum olmalıdır.",
		invincibility_warning = "Ölümsüz olduğunuz için işaretlendiniz! Lütfen, bunu nasıl yaptığınızı bir geliştiriciye söyleyerek ve ne yaptığınızı açıklama yaparak, geliştiricilere bildirin. Bu sohbet mesajını almanız gerekmeyen bir durum olmalıdır.",
		damage_modifier_warning = "Geçersiz bir hasar değiştiriciye sahip olduğunuz için işaretlendiniz! Lütfen, bunu nasıl yaptığınızı bir geliştiriciye söyleyerek ve ne yaptığınızı açıklama yaparak, geliştiricilere bildirin. Bu sohbet mesajını almanız gerekmeyen bir durum olmalıdır.",
		freeze_warning = "Dondurulmanız gerekmeyen durumlarda dondurulduğunuz için işaretlendiniz! Lütfen bir geliştiriciye bildirin ve neden bu mesajı aldığınızı söyleyin.",

		distance_taze_screenshot = "Hile Önleme: Mesafeli Tazeleme (${distance}m)",
		spectating_screenshot = "Hile Önleme: İzlemek",
		fast_movement_screenshot = "Hile Önleme: Hızlı Hareket",
		illegal_freeze_screenshot = "Hile Önleme: Yasaklı Dondurma",
		illegal_vehicle_modifier_screenshot = "Hile Önleme: Yasaklı Araç Değiştirici (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "Anti-Hile: Geçersiz Hasar Değiştirici (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "Anti-Hile: Oyuna Yasa Dışı Silah Eklendi (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "Anti-Hile: Oyuna Yasa Dışı Araç Eklediniz (${modelName})",
		vehicle_modification_screenshot = "Anti-Hile: Araç Değiştirildi (${types})",
		thermal_night_vision_screenshot = "Anti-Hile: Termal/Gece Görüşü Eklendi (${nativeName})",
		text_entry_screenshot = "Anti-Hile: Yazı Girişi (${textEntry})",
		player_blips_screenshot = "Anti-Hile: Oyuncu Harita İşaretleri",
		modified_fov_screenshot = "Anti-Hile: Değiştirilmiş FOV (${fov})",
		ped_change_screenshot = "Anti-Hile: Yasaklı Ped Değişikliği",
		invincibility_screenshot = "Anti-Hile: Ölümsüzlük",
		runtime_texture_screenshot = "Anti-Hile: Çalışma Zamanı Doku (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "Anti-Hile: Kötü Ekran Kelimesi (${words})",
		freecam_detected_screenshot = "Anti-Hile: Serbest Kamera Tespit Edildi (${distance}m)",
		driving_hotwire_screenshot = "Anti-Hile: Çalarken Sürüş"
	},

	authentication = {
		ip_not_found = "IP adresinizi alamadık.",
		authenticating_local_server = "Yerel sunucu ile kimlik doğrulama yapılıyor...",
		authenticating_global_server = "OP-FW sunucuları ile kimlik doğrulama yapılıyor...",
		error_fetching_data = "Verileriniz alınırken bir hata oluştu.",
		region_blocked = "Bu sunucu, bağlanmaya çalıştığınız bölgeyi engelledi.",
		server_config_not_loaded = "Sunucu yapılandırması yüklenmedi.",
		something_went_horribly_wrong = "Bir şeyler çok kötü gitti. Lütfen tekrar deneyin.",
		local_firewall_enabled = "Yerel güvenlik duvarı etkinleştirildi.",

		local_firewall_on = "Bloke mesajı `${blockMessage}` ile yerel güvenlik duvarı etkinleştirildi.",
		local_firewall_re_enabled = "${blockMessage}'li blokaj mesajı ile yerel duvarı yeniden etkinleştirildi.",
		local_firewall_off = "Yerel duvar devre dışı bırakıldı.",
		local_firewall_blocked = "Yerel Duvar: ${playerName} (${licenseIdentifier}) blokaj yapıldı.",

		developer = "geliştirici",
		super_admin = "süper yönetici",
		staff = "personel",
		reconnect = "yeniden bağlan",
		random = "rastgele",
		beginner = "yeni başlayan",
		custom = "özel",
		christmas = "noel",
		casino = "kumarhane",

		job_low = "düşük iş",
		job_medium = "orta iş",
		job_high = "yüksek iş",

		banned_globally = "Tüm OP-FW sunucularından küresel olarak yasaklandınız.\n\nYasaklama Kodu: ${banHash}\nYasaklama Sebebi: ${banReason}\n\nEğer yanlış bir yasaklama olduğunu düşünüyorsanız, ${frameworkDiscord} adresinden OP-FW Discord sunucusuna katılarak nasıl itiraz edeceğiniz hakkında bilgi edinebilirsiniz.",
		banned_locally = "${communityName} sunucusundan yasaklandınız.\n\nYasaklama Kodu: ${banHash}\nYasaklayan: ${creatorName}\nYasaklama Sebebi: ${banReason}\nZaman Damgası: ${timestamp}\n\n${indefiniteOrExpires}\n\nİtiraz etmek için, ${communityDiscord} adresindeki Discord sunucumuza katılabilirsiniz.",
		banned_locally_no_creator = "${communityName} sunucusundan yasaklandınız.\n\nYasak Kodu: ${banHash}\nYasak Sebebi: ${banReason}\nZaman Damgası: ${timestamp}\n\n${indefiniteOrExpires}\n\nItiraz için discord sunucumuza katılın: ${communityDiscord}.",
		ban_indefinite = "Bu yasak süresizdir.",
		ban_expires = "Bu yasak ${timeLeft} kaldıktan sonra sona erecektir.",
		not_whitelisted = "Bu sunucuda whitelistli değilsiniz. Başvuru için discord sunucumuza katılın.\n\n${communityDiscord}",
		api_error = "Verileriniz alınırken bir hata oluştu. (hata kodu ${errorCode})",
		pepega_moderate = "Belirtilen herhangi bir sebep olmadan tüm OP-FW sunucularından global olarak yasaklandınız.",
		pepega_ultimate = "Bu sunucudan yasaklandınız.",
		ban_code_not_found = "Tüm OP-FW sunucularından global bir şekilde yasaklandınız. Yasaklama kodunuz için herhangi bir veri bulunamadı.",
		fraud_chargeback = "Dolandırıcılık / İptal",
		threatening_ddos = "Altyapımızı tehdit etmek.",
		unknown = "Bilinmeyen",
		api_offline = "Arka plan hizmetimiz şu anda kullanılamıyor ve verilerinizi alamıyoruz. Lütfen tekrar deneyin.",
		protective_mode_on = "Sunucu Koruyucu Modu şu anda bu sunucuda etkin, bu da yalnızca belirli bir oynama süresine sahip oyuncuların sunucuya bağlanabileceği anlamına gelir. Bu sadece geçicidir ve sunucu yakında normale dönecektir.\n\nBu durum hakkında daha fazla bilgi için ${communityDiscord} discorduna katılın.",
		server_restarting = "Sunucu şu anda yeniden başlıyor. Lütfen birkaç dakika içinde tekrar deneyin.",
		connection_cancelled = "Başka bir bağlantı zaten etkin olduğu için bu bağlantı iptal edildi.",
		no_reason_provided = "Sebep belirtilmedi.",
		discord_whitelist_id_not_found = "Discord kimliğinizi bulamadık. Discord'u arka planda açtığınızdan ve FiveM'in discord istemcinizden veri almasına izin verdiğinizden emin olun.\n\n${communityDiscord}"
	},

	chat = {
		default = "Varsayılan",

		chat_group_information = "Bir sohbet grubuna eklendiniz. **TAB** tuşuna basarak mevcut sohbet gruplarınız arasında geçiş yapabilirsiniz.\n\n / işareti olmadan gönderilen mesajlar bu gruptaki diğer üyelere yayınlanacaktır."
	},

	commands = {
		command_unavailable = "Bu komut mevcut değil!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "Bu, '${command}' için yedek bir komuttur.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "taşı",
		carry_command_help = "Taşıma işlemini aç/kapat.",
		carry_command_substitutes = "",

		uncarry_command = "taşıyıcıdan-çık",
		uncarry_command_help = "Seni taşıyan oyuncunun seni taşımayı bırakmasını sağlar.",
		uncarry_command_substitutes = "",

		piggyback_command = "sırtta-taşı",
		piggyback_command_help = "Başka bir oyuncuyu sırtta taşı.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "kelepçe-kır",
		pick_cuffs_command_help = "Kelepçeleri açmak için kilit açıcı kullanın.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "mücadele",
		struggle_command_help = "Seni taşıyan kişiden kurtulmaya çalış.",
		struggle_command_substitutes = "",

		handsup_command = "eller havaya",
		handsup_command_help = "Ellerini havaya kaldır (veya geri indir).",
		handsup_command_substitutes = "eller, teslim ol, hu",

		-- animations/chairs
		sit_command = "otur",
		sit_command_help = "Yakındaki bir sandalyeye oturmaya çalış.",
		sit_command_parameter_variation = "çeşit",
		sit_command_parameter_variation_help = "Hangi oturma animasyonunu oynatılacağı (1 - 6)",
		sit_command_substitutes = "sandalye",

		-- animations/emotes
		ragdoll_command = "ragdoll",
		ragdoll_command_help = "Ragdoll'u açıp kapatır.",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "bildir",
		report_command_help = "Tüm aktif personellere mesaj gönderir.",
		report_command_parameter_message = "mesaj",
		report_command_parameter_message_help = "Göndermek istediğiniz mesaj.",
		report_command_substitutes = "",

		announce_command = "duyuru",
		announce_command_help = "Tüm oyunculara bir duyuru yayınlar.",
		announce_command_parameter_message = "mesaj",
		announce_command_parameter_message_help = "Yayınlamak istediğiniz mesaj.",
		announce_command_substitutes = "",

		staff_pm_command = "personel_pm",
		staff_pm_command_help = "Bir personel üyesine veya personel olarak bir oyuncuya mesaj gönderin.",
		staff_pm_command_parameter_server_id = "sunucu kimliği",
		staff_pm_command_parameter_server_id_help = "Mesaj göndermek istediğiniz oyuncunun sunucu kimliği.",
		staff_pm_command_parameter_message = "mesaj",
		staff_pm_command_parameter_message_help = "Göndermek istediğiniz mesaj.",
		staff_pm_command_substitutes = "personelmesajı",

		staff_command = "personel",
		staff_command_help = "Tüm aktif personel üyelerine bir yayın mesajı gönderin.",
		staff_command_parameter_message = "mesaj",
		staff_command_parameter_message_help = "Göndermek istediğiniz mesaj.",
		staff_command_substitutes = "",

		wipe_command = "sil",
		wipe_command_help = "Haritadan istenmeyen nesneleri silin.",
		wipe_command_parameter_distance = "mesafe",
		wipe_command_parameter_distance_help = "Sadece belirli bir mesafedeki nesneleri silmek isterseniz, buraya mesafe girin. Tam harita için `false` veya `0` bırakın.",
		wipe_command_parameter_ignore_local_entities = "yerel nesneleri yok say",
		wipe_command_parameter_ignore_local_entities_help = "Ağa bağlı olmayan nesneleri dikkate almak istemiyorsanız, burayı `true` veya `1` olarak ayarlamanız önerilir. Bir hileciyi temizliyorsanız bunu bu şekilde ayarlayın.",
		wipe_command_parameter_model_name = "model ismi",
		wipe_command_parameter_model_name_help = "Sadece belirli bir model ismi olan nesneleri silmek istiyorsanız buraya bir model adı ekleyin. Aksi takdirde boş bırakın, `false` veya `0` olarak ayarlayın. Ayrıca bunu `vehicles` veya `peds` olarak ayarlayabilirsiniz.",
		wipe_command_substitutes = "",

		noclip_command = "geçiş",
		noclip_command_help = "Geçişi açıp kapatın.",
		noclip_command_parameter_server_id = "sunucu kimliği",
		noclip_command_parameter_server_id_help = "Başka birinin geçişini açıp kapatmak isterseniz buraya sunucu kimliğini ekleyin.",
		noclip_command_substitutes = "",

		safe_noclip_command = "güvenli_noclip",
		safe_noclip_command_help = "Noclip'ı açar, ancak yanınızda görebilecek kimse yoksa (staff üyeleri hariç).",
		safe_noclip_command_substitutes = "gnoclip",

		delete_vehicle_command = "arac_sil",
		delete_vehicle_command_help = "Yakındaki bir aracı siler.",
		delete_vehicle_command_parameter_ignore_heading = "evet",
		delete_vehicle_command_parameter_ignore_heading_help = "Oyuncunuzun bakış açısını yoksaymak ister misiniz? Boş bırakmak 'hayır' olarak işlev görecektir.",
		delete_vehicle_command_substitutes = "sil_arac",

		delete_vehicle_interactively_command = "sil_arac_interaktif",
		delete_vehicle_interactively_command_help = "Etkileşimli araç silme özelliğini aktifleştirir veya devre dışı bırakır.",
		delete_vehicle_interactively_command_substitutes = "sai",

		kick_command = "at",
		kick_command_help = "Bir oyuncuyu sunucudan atar.",
		kick_command_parameter_server_id = "sunucu id",
		kick_command_parameter_server_id_help = "Atmak istediğiniz oyuncunun sunucu kimliği.",
		kick_command_parameter_reason = "neden",
		kick_command_parameter_reason_help = "Oyuncunun atılma sebebi. Boş bırakılabilir.",
		kick_command_substitutes = "",

		ban_command = "yasakla",
		ban_command_help = "Bir oyuncuyu sunucudan yasaklar.",
		ban_command_parameter_server_id = "sunucu ID'si",
		ban_command_parameter_server_id_help = "Yasaklamaya çalıştığınız oyuncunun sunucu ID'si.",
		ban_command_parameter_expire = "geçerlilik",
		ban_command_parameter_expire_help = "Oyuncunun yasağının süresi. Bu boş bırakılabilir, `0` veya `false` için süresiz yasak. Süre için w/g/s/sa/k kullanabilirsiniz. (ör: `3g2s` -> 3 gün, 2 saat)",
		ban_command_parameter_reason = "neden",
		ban_command_parameter_reason_help = "Oyuncunun yasağı arkasındaki neden. Bu boş bırakılabilir.",
		ban_command_substitutes = "",

		staff_hidden_command = "gizli_personel",
		staff_hidden_command_help = "Diğer oyuncuların personel durumunuzu görebilmesini açıp kapatın.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "personel_durumu",
		staff_toggle_command_help = "Personel durumunuzu açıp kapatın. Kapatmak, raporların, personel PM'lerinin ve personel mesajlarının görünmesini engeller.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "koruyucu_mod",
		protective_mode_command_help = "Sunucu koruyucu modunu açıp kapatın. Bu, belirli bir oynama süresinin altındaki oyuncuların yeni bağlantılarını iptal edecektir. Bu kontrol, personel üyeleri ve sunucu destekçileri hariçtir.",
		protective_mode_command_parameter_enabled = "etkin",
		protective_mode_command_parameter_enabled_help = "Kontrol etmenin etkinleştirilip etkinleştirilmeyeceği? Geçerli girişler şunlardır: `true`, `false`, `1` ve `0`.",
		protective_mode_command_parameter_playtime = "oynama süresi",
		protective_mode_command_parameter_playtime_help = "Yeni bir bağlantı kabul etmek için gereken oynama süresi (saniye).",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "araç_oluştur",
		spawn_vehicle_command_help = "Araç oluşturur.",
		spawn_vehicle_command_parameter_model_name = "model adı",
		spawn_vehicle_command_parameter_model_name_help = "Oluşturmak istediğiniz aracın model adı.",
		spawn_vehicle_command_parameter_server_id = "sunucu kimliği",
		spawn_vehicle_command_parameter_server_id_help = "Bu aracı oluşturmak istediğiniz oyuncunun sunucu kimliği. Kendinizi seçmek için bunu boş bırakabilir veya `0` olarak bırakabilirsiniz.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "araç_oluştur",
		create_vehicle_command_help = "Sizi içine hızlıca sokmadan mevcut konumunuzda araba oluşturur.",
		create_vehicle_command_parameter_model_name = "model adı",
		create_vehicle_command_parameter_model_name_help = "Oluşturmak istediğiniz aracın model adı.",
		create_vehicle_command_parameter_ground = "zemin",
		create_vehicle_command_parameter_ground_help = "Araç zeminde mi spawn edilsin?",
		create_vehicle_command_substitutes = "av",

		replace_vehicle_command = "araç_değiştir",
		replace_vehicle_command_help = "Mevcut aracınızı farklı birisiyle değiştirin.",
		replace_vehicle_command_parameter_model_name = "model adı",
		replace_vehicle_command_parameter_model_name_help = "Oluşturmak istediğiniz aracın model adı.",
		replace_vehicle_command_substitutes = "araç",

		aimbot_command = "aimbot",
		aimbot_command_help = "'Aimbot'u açıp kapatarak etkinleştirin.",
		aimbot_command_parameter_server_id = "sunucu id",
		aimbot_command_parameter_server_id_help = "Başka biri için 'aimbot'u ayarlamak istiyorsanız, buraya sunucu kimlik numarasını girin.",
		aimbot_command_parameter_targets = "hedefler",
		aimbot_command_parameter_targets_help = "Hedef sunucu kimlik numaraları (yalnızca kendiniz için açıp kapattığınızda çalışır). (Hedefleri yalnızca bu sunucu kimlik numaraları olan oyuncularla sınırlar)",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "oyuncu_kemikleri_hata_ayiklama",
		player_bones_debug_command_help = "Oyuncu kemikleri hata ayıklayıcısını açıp kapar.",
		player_bones_debug_command_parameter_server_id = "sunucu kimliği",
		player_bones_debug_command_parameter_server_id_help = "Başka birisi için oyuncu kemikleri hata ayıklayıcısını açmak veya kapatmak istiyorsanız, onların sunucu kimliğini buraya yazın.",
		player_bones_debug_command_substitutes = "oyuncu_kemikleri",

		wallhack_command = "duvar_atisi",
		wallhack_command_help = "'duvar atışı' özelliğini açıp kapar.",
		wallhack_command_parameter_server_id = "sunucu kimliği",
		wallhack_command_parameter_server_id_help = "Eğer başkasının 'duvarhilesi'ni açıp kapamak istiyorsanız, onların sunucu kimliğini buraya girin.",
		wallhack_command_substitutes = "",

		speed_boost_command = "hız_arttırma",
		speed_boost_command_help = "Hız arttırmayı açıp kapatmak için kullanın.",
		speed_boost_command_parameter_server_id = "sunucu kimliği",
		speed_boost_command_parameter_server_id_help = "Eğer başkasının 'hız arttırma' özelliğini açıp kapamak istiyorsanız, onların sunucu kimliğini buraya girin.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_arttırma",
		nitro_boost_command_help = "Nitro arttırmayı açıp kapatmak için kullanın.",
		nitro_boost_command_parameter_server_id = "sunucu kimliği",
		nitro_boost_command_parameter_server_id_help = "'Nitro boost' özelliğini başka bir kişi için açmak istiyorsanız, buraya sunucu kimliğini girin.",
		nitro_boost_command_substitutes = "nitro",

		indestructibility_command = "dayanıklılık",
		indestructibility_command_help = "'Dayanıklılık' özelliğini açıp kapatın.",
		indestructibility_command_parameter_server_id = "sunucu kimliği",
		indestructibility_command_parameter_server_id_help = "'Dayanıklılık' özelliğini başka bir kişi için açmak istiyorsanız, buraya sunucu kimliğini girin.",
		indestructibility_command_substitutes = "ind, tanrı, tanrı_modu, tanrım",

		no_nearby_vehicles_command = "yakındaki_araçları_kapat",
		no_nearby_vehicles_command_help = "'Yakındaki araçları kapat'ı açıp kapatın.",
		no_nearby_vehicles_command_parameter_server_id = "sunucu id",
		no_nearby_vehicles_command_parameter_server_id_help = "Başkası için 'yakındaki araçları kapat'ı açıp kapatmak istiyorsanız, burada sunucu id'sini ekleyin.",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "çarpışmaları_devre_dışı_bırak",
		disable_collisions_command_help = "10 metre yarıçapında araç ve yaya çarpışmalarını devre dışı bırakın.",
		disable_collisions_command_substitutes = "çarpışmalar",

		ghost_command = "hayalet",
		ghost_command_help = "Bu komut /peek, görünmezlik ve /çarpışmaları devre dışı bırakacaktır.",
		ghost_command_substitutes = "",

		job_command = "meslek",
		job_command_help = "Aramaya dayalı olarak birinin mesleğini günceller.",
		job_command_parameter_server_id = "sunucu id",
		job_command_parameter_server_id_help = "Oyuncunun sunucu kimliği veya kendinizi seçmek için 0.",
		job_command_parameter_search = "arama",
		job_command_parameter_search_help = "Aramak için iş/departman/pozisyon adı veya bir kısmı veya işi kaldırmak için `none`.",
		job_command_substitutes = "",

		reset_job_command = "iş_sıfırla",
		reset_job_command_help = "Bir kişinin işini işsiz olarak sıfırlar.",
		reset_job_command_parameter_server_id = "sunucu kimliği",
		reset_job_command_parameter_server_id_help = "Oyuncunun sunucu kimliği veya kendinizi seçmek için 0.",
		reset_job_command_substitutes = "",

		watching_command = "izliyor",
		watching_command_help = "Size yakın izleyen tüm oyuncuları gösterir.",
		watching_command_substitutes = "",

		disable_recoil_command = "geri tepmeyi devre dışı bırak",
		disable_recoil_command_help = "Tüm silah geri tepmelerini devre dışı bırakır.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "sonsuz_mermi",
		infinite_ammo_command_help = "Sonsuz mermiyi açıp kapatır.",
		infinite_ammo_command_substitutes = "",

		track_player_command = "takip_et",
		track_player_command_help = "Belirli bir oyuncu için izleyiciyi açıp kapatar.",
		track_player_command_parameter_server_id = "sunucu kimliği",
		track_player_command_parameter_server_id_help = "Takip etmek istediğiniz oyuncunun sunucu kimliği. Devre dışı bırakmak için boş bırakın.",
		track_player_command_substitutes = "",

		reflect_damage_command = "zarar_yansitma",
		reflect_damage_command_help = "Hasarı yansıtmayı açar/kapatır. (Seni hasarlandıran herhangi bir oyuncu kendisi de hasarlanır)",
		reflect_damage_command_substitutes = "yansit",

		trigger_headache_command = "baş_ağrısı_oluştur",
		trigger_headache_command_help = "Belirtilen oyuncunun kısa bir süre için takılmasına neden olur.",
		trigger_headache_command_parameter_server_id = "sunucu id",
		trigger_headache_command_parameter_server_id_help = "Baş ağrısı oluşturmak istediğiniz oyuncunun sunucu kimliği.",
		trigger_headache_command_substitutes = "başağrısı",

		stick_command = "yapış",
		stick_command_help = "Üzerinde olduğunuz araca yapışır.",
		stick_command_substitutes = "",

		unstick_command = "ayrış",
		unstick_command_help = "Yapışık olduğunuz araçtan ayrılır.",
		unstick_command_substitutes = "",

		clean_ped_command = "iyileştir",
		clean_ped_command_help = "Bir karakterin kanını, kurşun izlerini, toprağı vb. temizler.",
		clean_ped_command_parameter_server_id = "sunucu kimliği",
		clean_ped_command_parameter_server_id_help = "Ped'i temizlemek istediğiniz oyuncunun sunucu kimliği.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "araç_dumanını_aç/kapat",
		toggle_vehicle_smoke_command_help = "Araç dumanını açıp kapatır.",
		toggle_vehicle_smoke_command_parameter_server_id = "sunucu kimliği",
		toggle_vehicle_smoke_command_parameter_server_id_help = "Başka bir kişi için 'araç dumanını' açıp kapatmak istiyorsanız, buraya sunucu kimliğini yazın.",
		toggle_vehicle_smoke_command_parameter_color_r = "renk r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "Duman renginin kırmızı değeri (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_g = "renk g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "Duman renginin yeşil değeri (0 - 255).",
		toggle_vehicle_smoke_command_parameter_color_b = "renk b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "Duman renginin mavi değeri (0 - 255).",
		toggle_vehicle_smoke_command_substitutes = "araç_dumanı, duman",

		speed_up_progress_bar_command = "ilerleme_cubugu_hizin_arttir_komutu",
		speed_up_progress_bar_command_help = "Ileriye dogru ilerleme cubugu hizini degistirmek icin kullanilir.",
		speed_up_progress_bar_command_parameter_server_id = "sunucu kimligi",
		speed_up_progress_bar_command_parameter_server_id_help = "Baskasi icin 'ilerleme cubugu hizini arttirmayi' aktiflestirmek istiyorsaniz, buraya sunucu kimligini ekleyin.",
		speed_up_progress_bar_command_substitutes = "hiz_arttir",

		invisibility_command = "gorunmezlik_komutu",
		invisibility_command_help = "Gorunmezligi aktiflestirmek/deaktiflestirmek icin kullanilir.",
		invisibility_command_parameter_server_id = "sunucu id'si",
		invisibility_command_parameter_server_id_help = "Başka birinin 'görünmezliğini' değiştirmek istiyorsanız, buraya sunucu id'sini girin.",
		invisibility_command_substitutes = "görünmez, görünürlük, gizlilik",

		add_cash_command = "nakit_ekle",
		add_cash_command_help = "Bir karakterin nakitine para ekleyin.",
		add_cash_command_parameter_amount = "miktar",
		add_cash_command_parameter_amount_help = "Oyuncuya vermek istediğiniz nakit miktarı.",
		add_cash_command_parameter_server_id = "sunucu id'si",
		add_cash_command_parameter_server_id_help = "Oyuncunun sunucu kimliği. Boş bırakılırsa, kendiniz otomatik olarak seçilir.",
		add_cash_command_substitutes = "",

		remove_cash_command = "para_kaldir",
		remove_cash_command_help = "Birinin karakterinden para çıkarın.",
		remove_cash_command_parameter_amount = "miktar",
		remove_cash_command_parameter_amount_help = "Oyuncudan çıkarılacak nakit miktarı.",
		remove_cash_command_parameter_server_id = "sunucu kimliği",
		remove_cash_command_parameter_server_id_help = "Oyuncunun sunucu kimliği. Boş bırakılırsa, kendiniz otomatik olarak seçilir.",
		remove_cash_command_substitutes = "",

		add_bank_command = "banka_ekle",
		add_bank_command_help = "Birinin karakterine banka bakiyesi ekleyin.",
		add_bank_command_parameter_amount = "miktar",
		add_bank_command_parameter_amount_help = "Oyuncuya vermek istediğiniz banka bakiyesi miktarı.",
		add_bank_command_parameter_server_id = "sunucu kimliği",
		add_bank_command_parameter_server_id_help = "Oyuncunun sunucu kimliği. Boş bırakılırsa, otomatik olarak kendiniz seçilir.",
		add_bank_command_substitutes = "",

		remove_bank_command = "banka_cikar",
		remove_bank_command_help = "Birinden banka bakiyesi çıkarın.",
		remove_bank_command_parameter_amount = "miktar",
		remove_bank_command_parameter_amount_help = "Oyuncudan kaldırmak istediğiniz banka bakiyesinin miktarı.",
		remove_bank_command_parameter_server_id = "sunucu kimliği",
		remove_bank_command_parameter_server_id_help = "Oyuncunun sunucu kimliği. Boş bırakılırsa, otomatik olarak siz seçilirsiniz.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "Eşya oluşturmak için kullanılır.",
		spawn_item_command_parameter_item_name = "eşya adı",
		spawn_item_command_parameter_item_name_help = "Oluşturmak istediğiniz eşyanın adı. Bu *eşya adı* olmalı ve dolayısıyla etiketi çalışmayacaktır.",
		spawn_item_command_parameter_amount = "miktar",
		spawn_item_command_parameter_amount_help = "Oluşturmak istediğiniz öğenin miktarı. Boş bırakılırsa bir tane seçilir.",
		spawn_item_command_parameter_server_id = "sunucu kimliği",
		spawn_item_command_parameter_server_id_help = "Öğeyi oluşturmak istediğiniz oyuncunun sunucu kimliği. Boş bırakılırsa kendiniz seçilir.",
		spawn_item_command_parameter_battle_royale_only = "yalnızca battle royale",
		spawn_item_command_parameter_battle_royale_only_help = "Bu öğeyi sadece Battle Royale modunda kullanılabilir yapar.",
		spawn_item_command_substitutes = "ei",

		warning_message_command = "uyari_mesaji",
		warning_message_command_help = "Tüm oyunculara yönelik global bir sunucu mesajı ekleyin.",
		warning_message_command_parameter_message = "mesaj",
		warning_message_command_parameter_message_help = "Oyunculara göstermek istediğiniz mesaj. Uyarı mesajını kaldırmak için bu parametreyi boş bırakabilirsiniz.",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_koordinatlar",
		tp_coords_command_help = "Belli bir konuma teleport olun.",
		tp_coords_command_parameter_x = "x_koordinatı",
		tp_coords_command_parameter_x_help = "Gitmek istediğiniz X koordinatı.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "Gitmek istediğiniz Y koordinatı.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "Gitmek istediğiniz Z koordinatı. Bu parametre isteğe bağlıdır ve boş bırakılırsa, yer koordinatları otomatik olarak aranır.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "Ayarladığınız rota noktasına gitmek için kullanılır.",
		tp_waypoint_command_substitutes = "tp_isaretci, tp",

		isolate_player_command = "oyuncu_izole_et",
		isolate_player_command_help = "Bir oyuncuyu izole eder, yapmaya çalıştıkları her şeyi reddeder.",
		isolate_player_command_parameter_server_id = "sunucu kimliği",
		isolate_player_command_parameter_server_id_help = "Hedef oyuncu.",
		isolate_player_command_substitutes = "izole",

		show_all_evidence_command = "tüm_delilleri_göster",
		show_all_evidence_command_help = "Yakındaki tüm mermi kovanı delillerini gösterir.",
		show_all_evidence_command_substitutes = "tum_deliller, delilleri_goster, deliller",

		population_density_command = "nüfusyoğunluğu",
		population_density_command_help = "Genel nüfus yoğunluğu çarpanını geçersiz kılın.",
		population_density_command_parameter_multiplier = "çarpan",
		population_density_command_parameter_multiplier_help = "Ayarlamak istediğiniz nüfus yoğunluğu çarpanı. Bunu boş bırakmak kapatır. Geçerli değerler 0.0 ile 1.0 arasındadır.",
		population_density_command_substitutes = "nüfus, yoğunluk, pop",

		repair_vehicle_command = "araç_tamir",
		repair_vehicle_command_help = "Bulunduğunuz aracı tamir edin.",
		repair_vehicle_command_substitutes = "tamir",

		enter_vehicle_command = "araca_gir",
		enter_vehicle_command_help = "Oyuncunuzu araçtan indirip, en yakındaki araca zorla bindirin (eğer araçta iseniz önce inersiniz).",
		enter_vehicle_command_parameter_network_id = "ağ kimliği",
		enter_vehicle_command_parameter_network_id_help = "Girmek istediğiniz aracın aş kimliği. (isteğe bağlı)",
		enter_vehicle_command_substitutes = "ag",

		set_modification_command = "modifikasyon_ayarla",
		set_modification_command_help = "Bulunduğunuz aracın modifikasyonlarını ayarlayın.",
		set_modification_command_parameter_mod_type = "mod türü",
		set_modification_command_parameter_mod_type_help = "Ayarlamak istediğiniz mod türünün kimlik numarası.",
		set_modification_command_parameter_mod_index = "mod indeksi",
		set_modification_command_parameter_mod_index_help = "Ayarlamak istediğiniz modun ID'si.",
		set_modification_command_parameter_custom_tires = "özel lastikler",
		set_modification_command_parameter_custom_tires_help = "Özel lastikler?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "set_livery",
		set_livery_command_help = "Bulunduğunuz araç için livery ayarlayın.",
		set_livery_command_parameter_livery_index = "livery indeksi",
		set_livery_command_parameter_livery_index_help = "Ayarlamak istediğiniz livery'nin indeksi.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "sahte_plaka_belirle",
		set_fake_plate_command_help = "Bulunduğunuz aracın sahte plaka numarasını belirler.",
		set_fake_plate_command_parameter_plate_number = "plaka numarası",
		set_fake_plate_command_parameter_plate_number_help = "Belirlemek istediğiniz plaka numarası.",
		set_fake_plate_command_substitutes = "plaka",

		set_dirt_level_command = "kir_seviyesi_belirle",
		set_dirt_level_command_help = "Bulunduğunuz aracı temizler.",
		set_dirt_level_command_parameter_dirt_level = "kir seviyesi",
		set_dirt_level_command_parameter_dirt_level_help = "Ayarlamak istediğiniz kir seviyesi (0 ile 15 arasında)",
		set_dirt_level_command_substitutes = "krdrtseviyesi",

		player_info_command = "oyuncu_bilgisi",
		player_info_command_help = "Belirli bir oyuncu hakkında bazı bilgileri getirir.",
		player_info_command_parameter_server_id = "sunucu kimliği",
		player_info_command_parameter_server_id_help = "Bilgi almak istediğiniz oyuncunun sunucu kimliği. Boş bırakılırsa kendi kimliğiniz seçilir.",
		player_info_command_substitutes = "oyuncu, ob",

		inventory_command = "envanter",
		inventory_command_help = "Belirtilen envanteri açar.",
		inventory_command_parameter_inventory_name = "envanter adı",
		inventory_command_parameter_inventory_name_help = "Açmak istediğiniz envanterin adı.",
		inventory_command_substitutes = "",

		character_inventory_command = "karakter_envanteri",
		character_inventory_command_help = "Başka bir oyuncunun envanterini gösterir.",
		character_inventory_command_parameter_server_id = "sunucu id",
		character_inventory_command_parameter_server_id_help = "Oyuncunun sunucu id'si.",
		character_inventory_command_substitutes = "cepler",

		fake_disconnect_command = "sahte_baglanti_kesme",
		fake_disconnect_command_help = "Sunucudan kopmuş gibi yapar. Bu işlem noclip özelliğini de aktif hale getirir.",
		fake_disconnect_command_substitutes = "sahte_ayrıl, dc",

		set_identity_command = "kimlik_belirle",
		set_identity_command_help = "Oyuncu adınızı değiştirir.",
		set_identity_command_parameter_player_name = "oyuncu adı",
		set_identity_command_parameter_player_name_help = "Ayarlamak istediğiniz ad veya sıfırlamak için boş bırakın.",
		set_identity_command_substitutes = "kimlik",

		disable_idle_cam_command = "boşta_kamera_devre_dışı",
		disable_idle_cam_command_help = "Boşta kameranın etkinleştirilmesini engeller.",
		disable_idle_cam_command_substitutes = "boşta_kamera, boşta",

		auto_drive_command = "otomatik_sur",
		auto_drive_command_help = "Belirlenmiş rotaya otomatik olarak sizi götürür veya belirlenmiş rota yoksa rastgele sürüş işlemi yapar.",
		auto_drive_command_parameter_style = "stil",
		auto_drive_command_parameter_style_help = "Sürüş stili (normal, aceleci, tehlikeli, geri vites).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "surus_hizi",
		drive_speed_command_help = "Otomatik sürüş komutu için seyir hızını ayarlar.",
		drive_speed_command_parameter_speed = "hız",
		drive_speed_command_parameter_speed_help = "Ayarlamak istediğiniz hız (mph cinsinden).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "silah_eklenti_degis",
		toggle_weapon_attachment_command_help = "Şu anda tuttuğunuz silahın eklentilerini açar veya kapatır.",
		toggle_weapon_attachment_command_parameter_attachment = "eklenti",
		toggle_weapon_attachment_command_parameter_attachment_help = "Açmak veya kapatmak istediğiniz eklenti.",
		toggle_weapon_attachment_command_substitutes = "silah_eklenti, eklenti",

		set_weapon_tint_command = "silah_renk_ayarla",
		set_weapon_tint_command_help = "Şu anda tuttuğunuz silahın rengini ayarlar veya kaldırır.",
		set_weapon_tint_command_parameter_tint = "tint",
		set_weapon_tint_command_parameter_tint_help = "Ayarlamak istediğiniz renk (çıkarmak için boş bırakın).",
		set_weapon_tint_command_substitutes = "silah_renk, renk",

		set_item_name_override_command = "item_isim_ustunden_yazma_ayarla",
		set_item_name_override_command_help = "Belirtilen öğenin adını değiştirir veya kaldırır.",
		set_item_name_override_command_parameter_slot = "slot",
		set_item_name_override_command_parameter_slot_help = "Adını değiştirmek istediğiniz öğenin yuva numarası.",
		set_item_name_override_command_parameter_item_name = "öğe adı",
		set_item_name_override_command_parameter_item_name_help = "Ayarlamak istediğiniz öğe adı geçersiz kılması (kaldırmak için boş bırakın).",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "dayanıklılığı_ayarla",
		set_durability_command_help = "Belirli bir yuva içindeki tüm öğelerin dayanıklılığını ayarlar.",
		set_durability_command_parameter_slot = "yuva",
		set_durability_command_parameter_slot_help = "Öğelerin dayanıklılığını ayarlamak için hangi yuva kullanılacak.",
		set_durability_command_parameter_amount = "miktar",
		set_durability_command_parameter_amount_help = "Ayarlanacak dayanıklılık miktarı (varsayılan 100).",
		set_durability_command_substitutes = "dayanıklılık",

		set_metadata_command = "set_metadata",
		set_metadata_command_help = "Belirli bir yuva içindeki tüm öğelerin meta verilerini ayarlar.",
		set_metadata_command_parameter_slot = "yuva",
		set_metadata_command_parameter_slot_help = "Hangi yuvada öğelerin dayanıklılığını ayarlamak gerektiği.",
		set_metadata_command_parameter_metadata = "meta_verileri",
		set_metadata_command_parameter_metadata_help = "Ayarlanacak meta verileri json formatında.",
		set_metadata_command_substitutes = "metaveri",

		refill_nitro_command = "nitr yükle",
		refill_nitro_command_help = "Aracınızın nitro tankını doldurur.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "silah kaydet",
		register_weapon_command_help = "Belirli bir karakter kimliğine belirli bir slottaki bir silahı kaydeder.",
		register_weapon_command_parameter_slot = "slot",
		register_weapon_command_parameter_slot_help = "Silahın bulunduğu slot.",
		register_weapon_command_parameter_character_id = "karakter id",
		register_weapon_command_parameter_character_id_help = "Silahı kaydetmek istediğiniz karakterin kimliği.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "ilkel_metacı",
		advanced_metagame_command_help = "Süper yönetici komutu, metacılığınızı bir üst seviyeye çıkarmak için size yardımcı olur.",
		advanced_metagame_command_substitutes = "im",

		list_weapon_attachments_command = "silah_eklentileri_listele",
		list_weapon_attachments_command_help = "Şu anda tuttuğunuz silahın rengini ayarlar veya kaldırır.",
		list_weapon_attachments_command_substitutes = "silah_eklentileri, eklentiler",

		wipe_first_owned_command = "ilk_sahibi_sil",
		wipe_first_owned_command_help = "Belirli bir oyuncu tarafından ilk sahibi olan tüm varlıkları siler.",
		wipe_first_owned_command_parameter_server_id = "sunucu kimliği",
		wipe_first_owned_command_parameter_server_id_help = "Oyuncunun sunucu kimliği.",
		wipe_first_owned_command_parameter_range = "menzil",
		wipe_first_owned_command_parameter_range_help = "Silmek istediğiniz varlıkların menzili veya tümünü silmek için boş bırakın.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "donma",
		freeze_command_help = "Bir oyuncuyu dondurur.",
		freeze_command_parameter_server_id = "sunucu kimliği",
		freeze_command_parameter_server_id_help = "Dondurmak istediğiniz oyuncunun sunucu kimliği.",
		freeze_command_substitutes = "",

		unfreeze_command = "dondurmayı aç",
		unfreeze_command_help = "Bir oyuncunun dondurulmasını açar.",
		unfreeze_command_parameter_server_id = "sunucu kimliği",
		unfreeze_command_parameter_server_id_help = "Dondurulmasını kaldırmak istediğiniz oyuncunun sunucu kimliği.",
		unfreeze_command_substitutes = "",

		slap_command = "tokatla",
		slap_command_help = "Bir oyuncuyu tokatlar (öldürür).",
		slap_command_parameter_server_id = "sunucu kimliği",
		slap_command_parameter_server_id_help = "Tokatlamak istediğiniz oyuncunun sunucu kimliği.",
		slap_command_substitutes = "",

		damage_player_command = "oyuncuya_zarar_ver",
		damage_player_command_help = "Bir oyuncunun sağlığına zarar verir.",
		damage_player_command_parameter_server_id = "sunucu kimliği",
		damage_player_command_parameter_server_id_help = "Canlandırmak istediğiniz oyuncunun sunucu kimliği.",
		damage_player_command_parameter_health = "zarar",
		damage_player_command_parameter_health_help = "Vereceğiniz zarar miktarı.",
		damage_player_command_substitutes = "zarar",

		scoop_command = "topla",
		scoop_command_help = "Belirli bir yarıçapta tüm oyuncuları toplar. ( /al toplandırmak için kullanılır)",
		scoop_command_parameter_radius = "yarıçap",
		scoop_command_parameter_radius_help = "Hangi yarıçap içinde oyuncuların toplanacağı (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "unscoop",
		unscoop_command_help = "Seni önceden yakaladığın tüm oyuncuları, şimdiki konumuna teleport eder.",
		unscoop_command_parameter_revive = "revive",
		unscoop_command_parameter_revive_help = "Yere düşen oyuncuları canlandırır.",
		unscoop_command_substitutes = "",

		peek_command = "peek",
		peek_command_help = "Peek, seninle birlikte yüzünü göstermeyen tüm oyuncuları gösterir.",
		peek_command_substitutes = "",

		hit_indicator_command = "hit_indicator",
		hit_indicator_command_help = "Özel nişangah kullanıyorsan, vurulma göstergesini açıp kapatır.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "ems_cagrisi_gonder",
		trigger_ems_call_command_help = "Konumunuzdan yerel EMS çağrısı gönderir.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_tespit_ekle",
		model_detect_add_command_help = "Geçici olarak bir modeli tespit listesine ekler. Liste sunucu yeniden başlatıldığında sıfırlanır.",
		model_detect_add_command_parameter_model = "model",
		model_detect_add_command_parameter_model_help = "Tespit etmek istediğiniz model. Model adı ve model karması olabilir.",
		model_detect_add_command_substitutes = "tespit",

		model_detect_remove_command = "model_tespit_cikar",
		model_detect_remove_command_help = "Bir modeli tespit listesinden çıkarın.",
		model_detect_remove_command_parameter_model = "model",
		model_detect_remove_command_parameter_model_help = "Kaldırmak istediğiniz model. Model adı ve model karmasını içerebilir.",
		model_detect_remove_command_substitutes = "tespitçıkar",

		detection_area_add_command = "detection_area_ekle",
		detection_area_add_command_help = "Spawn edilen tüm varlıkların bilgilerinin size gönderileceği bir alan oluşturun. Bilgiler Özet Arayüzünde bulunabilir.",
		detection_area_add_command_parameter_radius = "yarıçapı",
		detection_area_add_command_parameter_radius_help = "Varlıkların tespit edileceği dairenin yarıçapı. Minimum değer `10`, maksimum değer `5000`dir. Bu alanı boş bırakırsanız varsayılan olarak `100` olarak ayarlanacaktır.",
		detection_area_add_command_substitutes = "alan_ekle",

		detection_area_remove_command = "detection_area_remove",
		detection_area_remove_command_help = "Bir tespit alanını kaldır.",
		detection_area_remove_command_parameter_area_id = "taranan alan kimliği",
		detection_area_remove_command_parameter_area_id_help = "Kaldırmak istediğiniz algılama alanının kimliği.",
		detection_area_remove_command_substitutes = "bolge_kaldir",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "Ekran metni dışlama dikdörtgenlerini hata ayıklar.",
		screen_text_debug_command_substitutes = "screen_text",

		-- base/commands
		help_command = "yardım",
		help_command_help = "Mevcut tüm komutları gösterir.",
		help_command_substitutes = "",

		substitutes_command = "yedekler",
		substitutes_command_help = "Mevcut tüm yedekleri gösterir.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "daha_zengin_varlık",
		richer_presence_command_help = "Daha fazla bilgi ekler, gibi yüklenmiş karakter, zengin varlığı etkinleştirir veya devre dışı bırakır.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "emojiler_listesi",
		emojis_list_command_help = "Mevcut tüm emojileri listeler.",
		emojis_list_command_substitutes = "emojiler",

		emojis_refresh_command = "emojileri_guncelle",
		emojis_refresh_command_help = "Mevcut emojileri yeniler. Bu, discord sunucusundan en son listeyi alır.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "pingleri_al",
		get_pings_command_help = "Dünya çapındaki çeşitli sunuculara ortalama pingleri alarak, bu sunucunun mevcut oyuncuları için en uygun sunucu konumunu bulun.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "profil_debug",
		profile_debug_command_help = "Profili hata ayıklama aracını açıp kapatabilirsiniz.",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "oynama-süresi",
		playtime_command_help = "Sunucudaki toplam oynama sürenizi ve bu oturumdaki oynama sürenizi kontrol edin.",
		playtime_command_parameter_server_id = "Sunucu Kimliği",
		playtime_command_parameter_server_id_help = "Oynama süresini almak istediğiniz oyuncunun sunucu kimliği. Kendinizi seçmek için bu boş bırakabilir veya `0` olarak bırakabilirsiniz.",
		playtime_command_substitutes = "",

		leaderboard_command = "liderlik-tablosu",
		leaderboard_command_help = "Oynama süresi liderlik-tablosunu kontrol edin.",
		leaderboard_command_substitutes = "",

		package_command = "paket",
		package_command_help = "Paketinizi kontrol edin ve yenileyin.",
		package_command_substitutes = "paket_yenile",

		player_packages_command = "oyuncu_paketleri",
		player_packages_command_help = "Kullanılmayan tüm 'oyuncu paketlerinizi' alın.",
		player_packages_command_substitutes = "",

		unload_character_command = "karakter_at",
		unload_character_command_help = "Bir oyuncunun karakterini atın.",
		unload_character_command_parameter_server_id = "sunucu kimliği",
		unload_character_command_parameter_server_id_help = "Karakteri boşaltmak istediğiniz oyuncunun sunucu kimliği. Kendinizi seçmek için bunu boş veya `0` olarak bırakabilirsiniz.",
		unload_character_command_parameter_message = "mesaj",
		unload_character_command_parameter_message_help = "Giriş menüsünde görüntülenecek bir mesaj göstermek isterseniz, buraya yazın.",
		unload_character_command_substitutes = "boşalt",

		-- game/admin_menu
		admin_command = "yönetici",
		admin_command_help = "Yönetici menüsünü açar.",
		admin_command_substitutes = "",

		tp_player_command = "tp_oyuncu",
		tp_player_command_help = "Bir oyuncuya teleport olmanızı sağlar.",
		tp_player_command_parameter_server_id = "sunucu id",
		tp_player_command_parameter_server_id_help = "Teleport olmak istediğiniz oyuncunun sunucu kimliği.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_buraya",
		tp_here_command_help = "Bir oyuncuyu kendinize teleport eder.",
		tp_here_command_parameter_server_id = "sunucu ID'si",
		tp_here_command_parameter_server_id_help = "Teleport etmek istediğiniz oyuncunun sunucu ID'si.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_oyuncuya",
		tp_to_command_help = "Bir oyuncuyu diğer bir oyuncuya teleport eder.",
		tp_to_command_parameter_source_id = "kaynak ID'si",
		tp_to_command_parameter_source_id_help = "Teleport etmek istediğiniz oyuncu.",
		tp_to_command_parameter_destination_id = "hedef ID'si",
		tp_to_command_parameter_destination_id_help = "Teleport edileceği oyuncu.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "hava_indirimi_oluştur",
		create_airdrop_command_help = "Bir hava indirimi oluşturun.",
		create_airdrop_command_parameter_airdrop_type = "hava indirimi türü",
		create_airdrop_command_parameter_airdrop_type_help = "Oluşturmak istediğiniz hava indirimi türü. (silahlar, uyuşturucular, tıbbi malzemeler, malzemeler, ekler, değerli eşyalar, gıda)",
		create_airdrop_command_parameter_item_amount = "eşya miktarı",
		create_airdrop_command_parameter_item_amount_help = "Hava indiriminin içermesi gereken eşya miktarı.",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "hava_saldırısı_çağır",
		call_airstrike_command_help = "Mevcut pozisyonunuza bir hava saldırısı çağırır.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "hava_destek",
		airsupport_command_help = "Hava desteği çağırır.",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "uyarı_göster",
		show_alert_command_help = "Belirli bir oyuncu için (veya herkes için) bir uyarı gösterir.",
		show_alert_command_parameter_server_id = "sunucu id",
		show_alert_command_parameter_server_id_help = "Uyarıyı göstermek istediğiniz oyuncunun sunucu kimliği.",
		show_alert_command_parameter_content = "içerik",
		show_alert_command_parameter_content_help = "Uyarının içeriği.",
		show_alert_command_substitutes = "uyarı",

		-- game/archives
		create_archive_command = "arşiv_oluştur",
		create_archive_command_help = "Bulunduğunuz arşivde yeni bir dosya oluşturur.",
		create_archive_command_parameter_case_number = "dosya_numarası",
		create_archive_command_parameter_case_number_help = "Dosya numarası (1 ile 99.999 arasında bir sayı).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "arşiv_sil",
		destroy_archive_command_help = "Bulunduğunuz arşivdeki mevcut bir dosyayı siler.",
		destroy_archive_command_parameter_case_number = "dava numarası",
		destroy_archive_command_parameter_case_number_help = "Dava numarası. (Sadece boş dava dosyalarını silebilirsiniz)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "yeniden doğ",
		respawn_command_help = "Kendinizi öldürün. (arena için)",
		respawn_command_substitutes = "intihar",

		-- game/audio
		audio_debug_command = "ses_hata_ayıklama",
		audio_debug_command_help = "Ses ayıklama modunu aç/kapat",
		audio_debug_command_substitutes = "",

		play_audio_command = "ses_çal",
		play_audio_command_help = "Belirli bir oyuncu veya tüm oyuncular için bir ses çalın.",
		play_audio_command_parameter_url = "url",
		play_audio_command_parameter_url_help = "Ses dosyasının indirme URL'si.",
		play_audio_command_parameter_volume = "ses seviyesi",
		play_audio_command_parameter_volume_help = "Sesin çalma seviyesi. Geçerli değerler `0` ile `1` arasındadır. Bu değer varsayılan olarak `0.1` olacaktır.",
		play_audio_command_parameter_server_id = "sunucu kimliği",
		play_audio_command_parameter_server_id_help = "Bu sesi çalmak istediğiniz oyuncunun sunucu kimliği. Tüm oyuncular için `-1` yapabilirsiniz.",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "rastgele_bandaj",
		random_bandaid_command_help = "Rastgele bir bandaj verir. :)",
		random_bandaid_command_substitutes = "bandaj",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "Savaş Royale özelliğini açıp kapatın.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "savas_royale_baslat",
		battle_royale_start_command_help = "Savaş Royale maçı başlatın.",
		battle_royale_start_command_parameter_no_vehicles = "araç yok",
		battle_royale_start_command_parameter_no_vehicles_help = "Araç içermeyen bir maç oluşturun.",
		battle_royale_start_command_substitutes = "br_baslat",

		battle_royale_invite_command = "savas_royale_davet",
		battle_royale_invite_command_help = "Bir oyuncuyu Battle Royale lobisine davet edin.",
		battle_royale_invite_command_parameter_server_id = "sunucu id'si",
		battle_royale_invite_command_parameter_server_id_help = "Davet etmek istediğiniz oyuncunun sunucu kimliği.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "Bir oyuncunun Battle Royale lobisine katılın.",
		battle_royale_join_command_parameter_server_id = "sunucu id'si",
		battle_royale_join_command_parameter_server_id_help = "Katılmak istediğiniz oyuncunun sunucu kimliği.",
		battle_royale_join_command_substitutes = "br_katil",

		battle_royale_leave_command = "battle_royale_ayril",
		battle_royale_leave_command_help = "Bulunduğunuz Battle Royale bekleme odasından ayrılın.",
		battle_royale_leave_command_substitutes = "br_ayril",

		battle_royale_join_instance_command = "battle_royale_oyuncunun_oyununa_katil",
		battle_royale_join_instance_command_help = "Bir oyuncunun Battle Royale oyununa katılın.",
		battle_royale_join_instance_command_parameter_server_id = "sunucu kimliği",
		battle_royale_join_instance_command_parameter_server_id_help = "Katılmak istediğiniz oyuncunun sunucu kimliği.",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "Katıldığınız örneği terk edin.",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "yatak",
		bed_command_help = "En yakın yatağa yatmayı deneyin.",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "patlayıcıları_değiştir",
		toggle_bombs_command_help = "Mevcut uçağınızda bombaları açıp kapatır.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "Mevcut aracın ateşleme bombasını açıp kapatır (motor çalıştığında araç patlar).",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "Boombox'ları temizler.",
		wipe_boomboxes_command_parameter_radius = "yarıçap",
		wipe_boomboxes_command_parameter_radius_help = "Temizlenecek yarıçap. Boş bırakırsanız varsayılan olarak `100` seçilir. Geçerli değerler `0` veya `-1` dahil olmak üzere `0`'ın üzerindedir ve tüm envanterleri seçecektir.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "boombox_ciz",
		draw_boomboxes_command_help = "Boombox'ları çizer.",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "kontrat_oluştur",
		spawn_contract_command_help = "Arttırma kontratı oluşturur.",
		spawn_contract_command_parameter_server_id = "sunucu id",
		spawn_contract_command_parameter_server_id_help = "Kontrat oluşturmak istediğiniz sunucu ID'si. Boş bırakılırsa kendiniz seçilir.",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "varlıkları_önbellekle",
		cache_assets_command_help = "Çoğu kopyalanan varlıkları (araçlar, nesneler ve giysiler) zorla isteyin ve indirin. Bu, sadece yavaş bir bağlantınız varsa ve varlıklar isteğe bağlı olarak yeterince hızlı indirilmediği için sorunsuz olmamaları önerilmez. Bu, işlemdeyken istemci çökmelerine neden olabilir.",
		cache_assets_command_parameter_slow_download = "yavaş indirme",
		cache_assets_command_parameter_slow_download_help = "Varlıkları yavaş bir şekilde önbelleğe almak istiyor musunuz? Bu işlem daha uzun sürer ama çökme olasılığını azaltır.",
		cache_assets_command_substitutes = "indirme_cache, önbelleğe_ön_yükleme, yükleme_cache",

		-- game/camera
		stable_cam_command = "stabil_kam",
		stable_cam_command_help = "Stabil kamerasını açıp kapatır.",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "kargo_başlat",
		cargo_start_command_help = "Dünya çapında Kargo soygununu başlatın.",
		cargo_start_command_substitutes = "başlat_kargo",

		cargo_end_command = "kargo_sonu",
		cargo_end_command_help = "Dünya çapındaki Kargo soygununu sonlandırır.",
		cargo_end_command_substitutes = "end_cargo",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "Kargo hata ayıklamasını açıp/kapatır.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "Kargo Pedlerinin hata ayıklamasını açıp/kapatır.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "Kumarhanedeki ekranları ayarlar.",
		set_casino_screens_command_parameter_screen_label = "ekran etiketi",
		set_casino_screens_command_parameter_screen_label_help = "Ayarlamak istediğiniz ekranın etiketi. Mevcut ekran etiketleri `diamonds`, `skulls`, `snowflakes` ve `winner`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "cayo_perico_togle",
		toggle_cayo_perico_command_help = "Cayo Perico adasını açıp kapatır.",
		toggle_cayo_perico_command_substitutes = "ada_togla, ada",

		-- game/cayo_perico_world
		cayo_perico_command = "cayo_perico",
		cayo_perico_command_help = "Cayo Perico adasına giriş ve çıkış yardımını açar veya kapatır.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "cinema_kara_liste_ekle",
		cinema_blacklist_add_command_help = "Yerel sinema kara listesine bir video ekler.",
		cinema_blacklist_add_command_parameter_video_key = "video anahtarı",
		cinema_blacklist_add_command_parameter_video_key_help = "Siyah listede engellemek istediğiniz video için video anahtarı. Örnek: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "sinema_ekranlari_hata_giderme",
		cinema_screens_debug_command_help = "Cinema ekranlarını hata giderme için kontrol eder.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "sinema_odakla",
		cinema_focus_command_help = "Daha iyi bir görüntüleme deneyimi için en yakın sinema ekranına odaklanır.",
		cinema_focus_command_substitutes = "sinema_odak",

		-- game/cinematic
		cinematic_command = "sinematik",
		cinematic_command_help = "Sinematik siyah barları açıp kapatır.",
		cinematic_command_parameter_bar_height = "çubuk yüksekliği",
		cinematic_command_parameter_bar_height_help = "Çubukların yüksekliği. 0 ile 50 arasında olmalıdır (yüzde olarak). Varsayılan 10'dur. Boş bırakırsanız, son kullandığınız değere ayarlanacaktır.",
		cinematic_command_substitutes = "c, cin",

		-- game/clothing_menu
		clothing_command = "giyim",
		clothing_command_help = "Giyim menüsünü size veya diğer bir oyuncuya açar.",
		clothing_command_parameter_server_id = "sunucu id",
		clothing_command_parameter_server_id_help = "Giyim menüsünü açmak istediğiniz oyuncunun sunucu ID'si.",
		clothing_command_substitutes = "",

		barber_command = "berber",
		barber_command_help = "Berber dükkanı menüsünü kendiniz veya başka bir oyuncu için açar.",
		barber_command_parameter_server_id = "sunucu kimliği",
		barber_command_parameter_server_id_help = "Berber dükkanı menüsünü açmak istediğiniz oyuncunun sunucu kimliği.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "kıyafet_kaydet",
		save_outfit_command_help = "Mevcut giysilerinizi bir kıyafet olarak kaydeder.",
		save_outfit_command_parameter_name = "ad",
		save_outfit_command_parameter_name_help = "Kıyafetin adı.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "giyim_sil",
		delete_outfit_command_help = "Belirtilen kıyafeti siler.",
		delete_outfit_command_parameter_name = "isim",
		delete_outfit_command_parameter_name_help = "Kıyafetin adı.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "giyim_paylaş",
		share_outfit_command_help = "Başka bir oyuncuyla kıyafet paylaşır (eğer bir giyim mağazasının yakınında ise).",
		share_outfit_command_parameter_server_id = "sunucu id",
		share_outfit_command_parameter_server_id_help = "Kıyafeti paylaşmak istediğiniz oyuncunun ID'si.",
		share_outfit_command_parameter_hairstyle = "saç stili",
		share_outfit_command_parameter_hairstyle_help = "Saç stilini ve rengini dahil etmek istiyorsanız (`0` veya `false` değilse).",
		share_outfit_command_parameter_makeup = "makyaj",
		share_outfit_command_parameter_makeup_help = "Makyajı dahil etmek istiyorsanız (`0` veya `false` değilse).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "kıyafet_cal",
		steal_outfit_command_help = "Başka bir oyuncunun kıyafetini çalar.",
		steal_outfit_command_parameter_server_id = "sunucu id",
		steal_outfit_command_parameter_server_id_help = "Oyuncunun sunucu id'si.",
		steal_outfit_command_parameter_hairstyle = "saç stili",
		steal_outfit_command_parameter_hairstyle_help = "Eğer oyuncunun saç stilini kopyalamak istiyorsanız.",
		steal_outfit_command_parameter_makeup = "makyaj",
		steal_outfit_command_parameter_makeup_help = "Eğer oyuncunun makyajını kopyalamak istiyorsanız.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "ayakkabı çal",
		steal_shoes_command_help = "En yakındaki düşmüş oyuncunun ayakkabılarını çalar.",
		steal_shoes_command_substitutes = "",

		outfit_command = "kıyafet",
		outfit_command_help = "Giysi noktasına yakınken farklı bir kıyafete geçiş yapar.",
		outfit_command_parameter_outfit = "kıyafet",
		outfit_command_parameter_outfit_help = "Kıyafetin adı.",
		outfit_command_parameter_force = "zorla",
		outfit_command_parameter_force_help = "Giyinme noktası kontrolünü yok sayar ve animasyon oynatmaz.",
		outfit_command_substitutes = "",

		outfits_command = "kiyafetler",
		outfits_command_help = "Kaydedilmiş tüm kıyafetlerinizi listeler.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "yeniden_bağlan_komut_yuvası",
		reconnect_command_socket_command_help = "Komut yuvasına yeniden bağlanmayı dener.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "yapım_hata_ayıklama_komutu",
		crafting_debug_command_help = "Tüm el işçiliği konumlarını hata ayıklar.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "çökert",
		crash_command_help = "Yapay bir çökertme tetikler.",
		crash_command_parameter_server_id = "sunucu id",
		crash_command_parameter_server_id_help = "Bir çökertme tetiklemek istediğiniz oyuncunun sunucu kimliği. Bunu boş bırakmak otomatik olarak kendinizi seçer.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "nişangah_özelle",
		customize_crosshair_command_help = "Nişangah özelleştirme menüsünü açar.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "nişangah_kopyala",
		copy_crosshair_command_help = "Mevcut nişangah ayarlarını panoya kopyalar.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "nişangah_içe_aktar",
		import_crosshair_command_help = "Nişangah yapılandırmasını içe aktar veya özel nişangahı devre dışı bırakın.",
		import_crosshair_command_parameter_config = "yapılandırma",
		import_crosshair_command_help_parameter_config_help = "Yapılandırma veya özel nişangahı devre dışı bırakmak için boş.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "görünmezlik_hatası_hata_ayıklama",
		culling_debug_command_help = "Görünmezlik hatası ayıklamasını açar/kapatır.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "günlük_aktiviteleri_sıfırla",
		reset_daily_activities_command_help = "Günlük Aktivitelerinizi Sıfırlayın.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "birim_id",
		unit_id_command_help = "Birim Kimliğinizi Belirleyin.",
		unit_id_command_parameter_unit_id = "birim id",
		unit_id_command_parameter_unit_id_help = "Birim Kimliğiniz. Bu, 1 ile 999 arasında bir tamsayı olmalıdır.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "hata_ayıklama",
		debug_command_help = "Var olan varlıklar hakkında genel bilgi gösteren hata ayıklama aracını açar/kapatır.",
		debug_command_substitutes = "",

		npc_debug_command = "npc_hata_ayıklama",
		npc_debug_command_help = "Çevrenizdeki tüm hayvan olmayan npc'lere hata ayıklama yapar.",
		npc_debug_command_substitutes = "npcs",

		network_debug_command = "network_debug",
		network_debug_command_help = "Varlık ağı hata ayıklama aracını açar/kapatır. Bu, baktığın varlık hakkında bazı ağ bilgilerini gösterir.",
		network_debug_command_substitutes = "net_debug, ndebug",

		attach_command = "attach",
		attach_command_help = "Nesne-bağlayıcı aracı açıp kapatabilrsiniz. Bu, bir bağlı nesneyi karakteriniz üzerinde konumlandırmanıza yardımcı olacaktır.",
		attach_command_parameter_model_name = "model adı",
		attach_command_parameter_model_name_help = "Bağlamak istediğiniz model adı.",
		attach_command_parameter_bone_id = "kemik id'si",
		attach_command_parameter_bone_id_help = "Esya takarken kullanmak istediğiniz kemik id'si. Varsayılan kemik id'si için boş bırakabilirsiniz.",
		attach_command_substitutes = "",

		position_command = "pozisyon",
		position_command_help = "Mevcut konumunuzu bir metin dosyasına kaydedin.",
		position_command_parameter_label = "etiket",
		position_command_parameter_label_help = "Etiketiyle birlikte saklanacak isteğe bağlı bir etiket.",
		position_command_substitutes = "konum, koordinatlar",

		save_commands_list_command = "komut_listesi_kaydet",
		save_commands_list_command_help = "Tüm mevcut op-fw komutlarının listesini kaydeder.",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "araç_verileri_kaydet",
		save_vehicle_data_command_help = "Araçlar hakkında birçok veri kaydeder.",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "çizgi_yarıçapı",
		draw_radius_command_help = "Bir yarıçap çizer.",
		draw_radius_command_parameter_radius = "yarıçap",
		draw_radius_command_parameter_radius_help = "Çizmek istediğiniz yarıçap.",
		draw_radius_command_substitutes = "",

		inject_code_command = "kod_enjekte_et",
		inject_code_command_help = "Birinin istemcisinde kod enjekte edin.",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "Enjekte edilecek olan kodu içeren bir metin dosyasının URL'si.",
		inject_code_command_parameter_server_id = "sunucu kimliği",
		inject_code_command_parameter_server_id_help = "Koda enjekte etmek istediğiniz oyuncunun sunucu kimliği. Bu alanı boş bırakarak kendinizi seçebilirsiniz.",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "Tek seferlik mesaj. True olarak ayarlanırsa, oyuncunun istemcisinden yanıt almak için _sendResponse() kullanabilirsiniz.",
		inject_code_command_substitutes = "enjekte",

		inject_code_radius_command = "enjekte_çapı_kod",
		inject_code_radius_command_help = "Belirli bir çapta oyuncuların istemcilerine kod enjekte edin.",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "Enjekte edilecek kodu içeren bir URL adresi.",
		inject_code_radius_command_parameter_radius = "yarıçapı",
		inject_code_radius_command_parameter_radius_help = "Kodu enjekte etmek için oyuncuların bulunması gereken yarıçap.",
		inject_code_radius_command_substitutes = "enjeksiyon_yarıçapı",

		run_code_command = "kodu_yürüt",
		run_code_command_help = "Küçük bir kod parçasını çalıştırır.",
		run_code_command_parameter_code = "kod",
		run_code_command_parameter_code_help = "Çalıştırmak istediğiniz kod parçası.",
		run_code_command_substitutes = "ckodu",

		print_code_command = "kodu_yazdır",
		print_code_command_help = "Küçük bir kod parçasını çalıştırır ve sonucu yazdırır.",
		print_code_command_parameter_code = "kod",
		print_code_command_parameter_code_help = "Çalıştırmak istediğiniz kod parçası.",
		print_code_command_substitutes = "yazdır",

		vehicle_bones_command = "araç_kemikleri",
		vehicle_bones_command_help = "En yakın araç üzerindeki tüm var olan araç kemiklerini çizer.",
		vehicle_bones_command_parameter_bone_name = "kemik adı",
		vehicle_bones_command_parameter_bone_name_help = "Sadece tek bir kemik konumunu gösterin.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "araç_bilgi",
		vehicle_info_command_help = "Sorunları ayıklamaya yardımcı olmak için bulunduğunuz araçla ilgili bilgileri yazdırır.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "varlık_sil",
		delete_entity_command_help = "Belirli bir ağ kimliğine sahip bir varlığı siler.",
		delete_entity_command_parameter_network_id = "ağ kimliği",
		delete_entity_command_parameter_network_id_help = "Silmek istediğiniz varlığın ağ kimliği.",
		delete_entity_command_substitutes = "vs",

		move_entity_command = "varlık_taşı",
		move_entity_command_help = "Belli bir ağ kimliği olan bir varlığı mevcut pozisyonunuza taşır.",
		move_entity_command_parameter_network_id = "ağ kimliği",
		move_entity_command_parameter_network_id_help = "Taşımak istediğiniz varlığın ağ kimliği.",
		move_entity_command_parameter_ground = "yer",
		move_entity_command_parameter_ground_help = "Varlığın yerde uygun şekilde yerleştirilip yerleştirilmeyeceği (yalnızca araçlar için).",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "sahte_güç",
		fake_lag_command_help = "Sahte güç yaratır.",
		fake_lag_command_parameter_counter = "sayı",
		fake_lag_command_parameter_counter_help = "Gecikme oluşturmak için kullanılan sayı. Bu değer ne kadar yüksek olursa, o kadar yavaş olacaktır. Devre dışı bırakmak için boş bırakın veya `0` yazın.",
		fake_lag_command_substitutes = "gösterge",

		view_weapon_command = "silah_görüntüle",
		view_weapon_command_help = "Belirtilen model adıyla nesne oluşturur ve ekran görüntüleri için mükemmel bir konumlandırma yapar.",
		view_weapon_command_parameter_weapon_name = "silah adı",
		view_weapon_command_parameter_weapon_name_help = "Görmek istediğiniz silahın adı.",
		view_weapon_command_parameter_component_names = "parça isimleri",
		view_weapon_command_parameter_component_names_help = "Silmekte olduğunuz parçaların listesi (virgül ile ayrılmış) ",
		view_weapon_command_substitutes = "görüntü",

		view_model_command = "modeli_görüntüle",
		view_model_command_help = "Belirli bir modeli ekranda düzgün bir şekilde görüntülemek için nesne oluşturur.",
		view_model_command_parameter_model_name = "model ismi",
		view_model_command_parameter_model_name_help = "Görmek istediğiniz modelin adı.",
		view_model_command_substitutes = "",

		play_animation_command = "animasyon_oynat",
		play_animation_command_help = "Belirtilen animasyonu oynatır.",
		play_animation_command_parameter_animation_dict = "animasyon sözlüğü",
		play_animation_command_parameter_animation_dict_help = "Oynatmak istediğiniz animasyonun animasyon sözlüğü.",
		play_animation_command_parameter_animation_name = "animasyon adı",
		play_animation_command_parameter_animation_name_help = "Oynatmak istediğiniz animasyonun animasyon adı.",
		play_animation_command_parameter_flags = "bayraklar",
		play_animation_command_parameter_flags_help = "Oynatmak istediğiniz animasyon için animasyon bayrakları.",
		play_animation_command_substitutes = "animasyon",

		draw_coords_command = "draw_coords",
		draw_coords_command_help = "Dünyada koordinatları çiz.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "X koordinatı.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "Y koordinatı.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "Z koordinatı.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "koordinat-çizim-sil",
		draw_coords_destroy_command_help = "Dünyadaki tüm koordinat çizimlerini siler.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "hasar-ayıklama",
		damage_debug_command_help = "F8 konsolunuzda her karede alınan hasarı ayıklar.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl-ayıklama",
		ipl_debug_command_help = "Dünyadaki tüm IPLleri çizer.",
		ipl_debug_command_substitutes = "ipller",

		enable_ipl_command = "ipl-etkinleştir",
		enable_ipl_command_help = "Belirli bir IPL'yi etkinleştirir.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "Etkinleştirmek istediğiniz IPL.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "disable_ipl",
		disable_ipl_command_help = "Belirli bir IPL'yi devre dışı bırakır.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "Devre dışı bırakmak istediğiniz IPL.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "enable_ipl_globally",
		enable_ipl_globally_command_help = "Sunucudaki tüm oyuncular için belirli bir IPL'yi etkinleştirir.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "Etkinleştirmek istediğiniz IPL.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "etkin_ipls",
		enabled_ipls_command_help = "Tüm oyuncular için etkinleştirilmiş ipl'leri listeler.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "iplyi_global_olarak_devre_disi_birak",
		disable_ipl_globally_command_help = "Belirli bir IPL'yi sunucundaki tüm oyuncular için devre dışı bırakır.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "Devre dışı bırakmak istediğiniz IPL.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "özçekim",
		selfie_command_help = "Özçekim kamerasını açar ve kapatır.",
		selfie_command_substitutes = "",

		search_world_command = "dünya_arama",
		search_world_command_help = "Belirli model tipleri için dünyada arama yapar.",
		search_world_command_parameter_model_name = "model adı",
		search_world_command_parameter_model_name_help = "Aramak istediğiniz model adı.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "geçerli_ped_bileşen_varyasyonlarını_kaydet",
		save_valid_ped_component_variations_command_help = "Mevcut oyuncunuzun model için tüm geçerli ped bileşen varyasyonlarını kaydedin.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "araç_testini_aç/kapat",
		toggle_vehicle_test_command_help = "Araç testini açar ya da kapatır. (En yüksek hızı takip eder, vb.)",
		toggle_vehicle_test_command_substitutes = "araç_testi, araç_test",

		create_vehicle_model_lists_command = "araç_model_listeleri_oluştur",
		create_vehicle_model_lists_command_help = "Özgün (kullanılan), özgün (kullanılmayan) ve ek olarak olan araç model listeleri oluştur.",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "araç_düğümlerini_çiz",
		draw_vehicle_nodes_command_help = "Yakındaki araç düğümlerinin çizimini aç/kapat.",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "mesafe",
		distance_command_help = "İki noktanın arasındaki mesafeyi hesaplayın.",
		distance_command_parameter_groundify = "zeminleştir",
		distance_command_parameter_groundify_help = "Noktayı yere (zemin) indirir.",
		distance_command_substitutes = "mesafe",

		get_command = "al",
		get_command_help = "Aradığınız native getter sonucunu yazdırır.",
		get_command_parameter_search = "ara",
		get_command_parameter_search_help = "Native adının tamamı ya da bir kısmı.",
		get_command_substitutes = "getter",

		ped_bone_command = "ped_kemik",
		ped_bone_command_help = "Belirli bir ped kemikleri hakkında hata ayıklama yapar.",
		ped_bone_command_parameter_bone_name = "kemik adı",
		ped_bone_command_parameter_bone_name_help = "Hata ayıklamak istediğiniz kemik.",
		ped_bone_command_substitutes = "",

		edit_marker_command = "edit_marker",
		edit_marker_command_help = "Bir işaretçinin konumunu düzenleyin veya yeni bir işaretçi yerleştirin.",
		edit_marker_command_parameter_marker_name = "işaretçi adı",
		edit_marker_command_parameter_marker_name_help = "Düzenleyeceğiniz işaretçi (yeni bir işaretçi yerleştirmek için boş bırakın).",
		edit_marker_command_substitutes = "",

		rectangle_command = "dikdörtgen",
		rectangle_command_help = "3B uzayda bir dikdörtgen oluşturun.",
		rectangle_command_substitutes = "dörtgen",

		define_area_command = "alan_tanımı",
		define_area_command_help = "Bir alan tanımlayın.",
		define_area_command_substitutes = "alan",

		-- game/debug_menu
		debug_menu_command = "hata ayıklama menüsü",
		debug_menu_command_help = "Debug menüsünü açar/kapatır.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "dna_örneği_al",
		take_dna_sample_command_help = "En yakın oyuncunun DNA örneğini alır.",
		take_dna_sample_command_substitutes = "dna_örneği, dna",

		-- game/doors
		door_offset_command = "kapı_ayar",
		door_offset_command_help = "Kapı ayar aracını açar/kapatır.",
		door_offset_command_parameter_model_name = "model adı",
		door_offset_command_parameter_model_name_help = "Ayarlamak istediğiniz model adı.",
		door_offset_command_substitutes = "",

		doors_scan_command = "kapı_taraması",
		doors_scan_command_help = "Yakındaki kapıları tarayarak, onları bir metin dosyasında kaydedin.",
		doors_scan_command_parameter_clear_file = "dosyayı temizle",
		doors_scan_command_parameter_clear_file_help = "Yazmadan önce dosya içeriğini temizlemek istiyor musunuz?",
		doors_scan_command_parameter_save_distance = "mesafeyi kaydet",
		doors_scan_command_parameter_save_distance_help = "Girişlere olan mesafeyi kaydetmek istiyor musunuz?",
		doors_scan_command_substitutes = "kapılar",

		door_debug_command = "kapı_hata_ayıklama",
		door_debug_command_help = "Yakındaki kapılar hakkında hata ayıklama bilgisi verir.",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "asansor_ac",
		elevator_enable_command_help = "En yakın asansörleri tekrar açar.",
		elevator_enable_command_substitutes = "asansor_ac",

		elevator_disable_command = "asansor_kapat",
		elevator_disable_command_help = "En yakın asansörleri kapatır.",
		elevator_disable_command_substitutes = "asansor_kapat",

		elevator_enable_all_command = "tum_asansorleri_ac",
		elevator_enable_command_all_help = "Tüm asansörleri tekrar açar.",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "parmakizi",
		fingerprint_command_help = "En yakındaki kişinin parmak izlerini alır.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "motor_ariza_orani",
		engine_failure_chance_command_help = "Uçak arızaları için varsayılan şansı geçersiz kılar.",
		engine_failure_chance_command_parameter_chance = "şans",
		engine_failure_chance_command_parameter_chance_help = "Bir motor arızası oluşma şansı veya sıfırlamak için boş.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "sahte_kimlik",
		fake_id_command_help = "Sahte bir kimlik kartı oluşturur.",
		fake_id_command_parameter_female = "kadın",
		fake_id_command_parameter_female_help = "Eğer erkek yerine bir kadın vatandaş kartı istiyorsanız, bu özelliği true olarak ayarlayın.",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "bayrak_degisimi",
		flag_swap_command_help = "Sunucu genelinde 'bayrak değiştirme' etkinliğini açar/kapatır.",
		flag_swap_command_parameter_flags = "bayraklar",
		flag_swap_command_parameter_flags_help = "Etkinlik sırasında dünyada bulunacak bayrak sayısı. (varsayılan: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "bayrak_degisimi_goster_bayraklar",
		flag_swap_show_flags_command_help = "Yakındaki tüm bayrakların gösterimini açıp/kapatır.",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "bayrak_degisimi_liderlik_tablosu",
		flag_swap_leaderboard_command_help = "Bayrak değişimi liderlik tablosunu açıp/kapatır.",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "forcefield_yarat",
		create_forcefield_command_help = "Mevcut konumunuzda bir güç alanı oluşturur.",
		create_forcefield_command_parameter_radius = "yarıçap",
		create_forcefield_command_parameter_radius_help = "Güç alanının yarıçapı.",
		create_forcefield_command_parameter_deny_players = "oyuncuları reddet",
		create_forcefield_command_parameter_deny_players_help = "Güç alanı oyuncuların girişine izin vermemeli mi?",
		create_forcefield_command_substitutes = "forcefield",

		destroy_forcefield_command = "forcefield_yok_et",
		destroy_forcefield_command_help = "Belirtilen forcefield'ın yok edilmesini sağlar.",
		destroy_forcefield_command_parameter_id = "id",
		destroy_forcefield_command_parameter_id_help = "Yok etmek istediğiniz forcefield'ın ID'si.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "fortnite",
		fortnite_command_help = "Fortnite bina özelliğini açıp/kapatır.",
		fortnite_command_substitutes = "fn",

		fortnite_debug_command = "fortnite_debug",
		fortnite_debug_command_help = "Fortnite bina ayıklayıcısını açıp/kapatır.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_sil",
		fortnite_wipe_command_help = "Fortnite binalarını siler.",
		fortnite_wipe_command_parameter_radius = "yarıçap",
		fortnite_wipe_command_parameter_radius_help = "Silmek istediğiniz yarıçap. Boş bırakırsanız veya sıfır olarak ayarlarsanız her şeyi silecektir.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "serbest_kamera",
		freecam_command_help = "Serbest kamera aç/kapa.",
		freecam_command_parameter_track = "takip_et",
		freecam_command_parameter_track_help = "Serbest kameranın karakterinizin arkasından takip etmesini sağla.",
		freecam_command_substitutes = "",

		cam_point_command = "kamera_noktası",
		cam_point_command_help = "Bir kamera noktası kaydeder.",
		cam_point_command_parameter_time = "zaman",
		cam_point_command_parameter_time_help = "Son noktadan geçiş süresi ms cinsinden (min:100, max:30,000)",
		cam_point_command_parameter_index = "endeks",
		cam_point_command_parameter_index_help = "Gitmek istediğiniz noktanın endeksi.",
		cam_point_command_parameter_override = "yok say",
		cam_point_command_parameter_override_help = "Endeksteki noktayı yok say.",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_temizle",
		cam_clear_command_help = "Tanımlanmış tüm kamera noktalarını temizler.",
		cam_clear_command_substitutes = "",

		cam_play_command = "kamera_oynat",
		cam_play_command_help = "Tüm belirlenen kamera noktalarını oynatır.",
		cam_play_command_parameter_ease = "kolaylık",
		cam_play_command_parameter_ease_help = "Kamera noktaları arasında kolaylaştırma yapar.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "arayarak_bul",
		frisk_command_help = "En yakın kişiyi silah açısından arar.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "ağaç_hataayıklama",
		tree_debug_command_help = "Dünyadaki tüm ağaçları hata ayıklar.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "silah_tüccar_hataayıklama",
		gun_trader_debug_command_help = "Silah tüccarının mevcut konumunda bir metin çizer.",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "benzin_hata",
		gas_debug_command_help = "Benzin hata ayarlarını değiştirir.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_hedef",
		gps_target_command_help = "GPS için bir hedef belirler.",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "Hedefin X koordinatı.",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "Hedefin Y koordinatı.",
		gps_target_command_substitutes = "hedef",

		-- game/graphics
		toggle_noir_command = "toggle_noir",
		toggle_noir_command_help = "Noir ekran ve ses efektlerini açıp/kapatır.",
		toggle_noir_command_parameter_timecycle_id = "zaman çevrimi kimliği",
		toggle_noir_command_parameter_timecycle_id_help = "Zaman çevrimi kimliği. Sadece iki tane var.",
		toggle_noir_command_substitutes = "noir",

		-- game/gravity
		toggle_vehicle_gravity_command = "araç_yerçekimi_kapali",
		toggle_vehicle_gravity_command_help = "Belirli bir oyuncunun aracı için yerçekimini açıp kapatır.",
		toggle_vehicle_gravity_command_parameter_server_id = "sunucu kimliği",
		toggle_vehicle_gravity_command_parameter_server_id_help = "Yerçekimini açıp kapatmak istediğiniz oyuncunun sunucu kimliği.",
		toggle_vehicle_gravity_command_substitutes = "araç_gravitesi, gravite",

		-- game/gravity_gun
		gravity_gun_command = "çekim_silahı",
		gravity_gun_command_help = "Sana bir çekim silahı oluşturur.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "Halloween hata ayıklamasını aç/kapat.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "halloween_kaçış_odası_başlat",
		halloween_start_escape_room_command_help = "Kaçış odasını zorla başlatır.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "hayata_döndür",
		revive_command_help = "Ölüden birini hayata döndürür.",
		revive_command_parameter_server_id = "sunucu kimliği",
		revive_command_parameter_server_id_help = "Canlandırmak istediğiniz oyuncunun sunucu kimliği. Boş bırakabilir veya `0` olarak ayarlayabilirsiniz kendinizi seçmek için. `Herkesi canlandırmak için -1 yapabilirsiniz.`",
		revive_command_parameter_remove_injuries = "yaralanmaları çıkarın",
		revive_command_parameter_remove_injuries_help = "Tüm yaralanmaları kaldırmak için `0` veya `false` hariç herhangi bir değeri ayarlayın.",
		revive_command_substitutes = "",

		range_revive_command = "menzil_canlandırma",
		range_revive_command_help = "Belirli bir menzildeki tüm oyuncuları canlandırın.",
		range_revive_command_parameter_distance = "mesafe",
		range_revive_command_parameter_distance_help = "Oyuncuları hayata döndürmek istediğiniz mesafe (1 ile 200 arasında).",
		range_revive_command_substitutes = "mesafe_canlandır",

		recent_deaths_command = "son_ölümler",
		recent_deaths_command_help = "En son ölümleri alın.",
		recent_deaths_command_parameter_amount = "miktar",
		recent_deaths_command_parameter_amount_help = "Almak istediğiniz ölüm sayısı. Geçerli değerler `1` ile `100` arasındadır. Boş bırakılırsa varsayılan olarak `20` seçilir.",
		recent_deaths_command_substitutes = "son_öldürmeleri_kontrol_et",

		player_death_command = "oyuncu_ölümü",
		player_death_command_help = "Bir oyuncunun son ölümünü alın.",
		player_death_command_parameter_server_id = "sunucu kimliği",
		player_death_command_parameter_server_id_help = "Oyuncunun sunucu kimliği. Bu boş bırakılırsa otomatik olarak kendi kimliğinizi seçer.",
		player_death_command_substitutes = "ölüm_kontrolü",

		death_timer_command = "ölüm_süresi",
		death_timer_command_help = "Ölüm yeniden doğma süresini geçersiz kılın.",
		death_timer_command_parameter_time = "süre",
		death_timer_command_parameter_time_help = "Süreyi saniye cinsinden belirtin. Geçersiz kılmak için boş bırakın.",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "vuruş işaretleri",
		hitmarkers_command_help = "Vuruş işareti seslerini açıp kapatın.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "filigran",
		watermark_command_help = "Ortada üstteki filigranı açıp kapatın.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "metrikler",
		metrics_toggle_command_help = "Ortada üstteki metrikleri açıp kapatın.",
		metrics_toggle_command_substitutes = "metrik, metrikler_gösterimi",

		toggle_small_metrics_command = "kucuk_olcumleri_kapama",
		toggle_small_metrics_command_help = "Küçük ölçüm ekranını (eğer /metrik de açıksa) açar veya kapatır.",
		toggle_small_metrics_command_substitutes = "kucuk_olcumler",

		toggle_phone_gps_command = "telefon_gps_kapama",
		toggle_phone_gps_command_help = "Yürürken telefonunu açtığında gösterilen mini haritayı açar veya kapatır.",
		toggle_phone_gps_command_substitutes = "telefon_gps",

		toggle_advanced_hud_command = "ileri_hud_kapama",
		toggle_advanced_hud_command_help = "Araç HUD'unu (RPM, vites, vb.) açar veya kapatır.",
		toggle_advanced_hud_command_substitutes = "gelişmiş_hud",

		toggle_hud_gauges_command = "hud_göstergelerini_açkapat",
		toggle_hud_gauges_command_help = "Hud göstergelerini açıp kapatır. (Hız ve RPM)",
		toggle_hud_gauges_command_substitutes = "göstergeler",

		set_gauge_needle_command = "gauge_needle_ayarla",
		set_gauge_needle_command_help = "Hud gösterge ibresinin stilini ayarlar. (Hız ve RPM)",
		set_gauge_needle_command_parameter_needle = "ibre",
		set_gauge_needle_command_parameter_needle_help = "Ibrenin stili (ok/çizgi)",
		set_gauge_needle_command_substitutes = "gauge_needle",

		-- game/hunting
		animal_debug_command = "animal_debug",
		animal_debug_command_help = "Hayvan hata ayıklama modunu açıp kapar.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "inspect",
		inspect_command_help = "En yakındaki oyuncuyu yaralanma durumu için muayene eder.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "instance_create",
		instance_create_command_help = "Bir örnek oluşturur.",
		instance_create_command_substitutes = "i_create",

		instance_destroy_command = "instance_destroy",
		instance_destroy_command_help = "Bir örneği yok eder.",
		instance_destroy_command_parameter_instance_id = "örnek kimliği",
		instance_destroy_command_parameter_instance_id_help = "Silmek istediğiniz örneğin kimliği.",
		instance_destroy_command_substitutes = "i_sil",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "Bir oyuncuyu bir örneğe ekleyin.",
		instance_add_player_command_parameter_instance_id = "örnek kimliği",
		instance_add_player_command_parameter_instance_id_help = "Bir oyuncuyu eklemek istediğiniz örneğin kimliği.",
		instance_add_player_command_parameter_server_id = "sunucu id",
		instance_add_player_command_parameter_server_id_help = "Otomatik kendinizi seçmek için boş bırakılabilir. Gruba eklemek istediğiniz oyuncunun sunucu kimliği (ID).",
		instance_add_player_command_substitutes = "i_ekle",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "Bir oyuncuyu bir örneğin dışına çıkarın.",
		instance_remove_player_command_parameter_instance_id = "örnek id",
		instance_remove_player_command_parameter_instance_id_help = "Bir oyuncuyu çıkarmak istediğiniz örneğin ID'si.",
		instance_remove_player_command_parameter_server_id = "sunucu kimliği",
		instance_remove_player_command_parameter_server_id_help = "Kaldırmak istediğiniz oyuncunun sunucu kimliği. Bu parametre isteğe bağlıdır ve boş bırakılırsa otomatik olarak kendinizi seçecektir.",
		instance_remove_player_command_substitutes = "i_kaldır",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "Bir örneğin içindeki tüm oyuncuları alın.",
		instance_get_players_command_parameter_instance_id = "örnek kimliği",
		instance_get_players_command_parameter_instance_id_help = "Oyuncularını almak istediğiniz örneğin kimliği.",
		instance_get_players_command_substitutes = "i_oyuncuları",

		quick_instance_command = "hızlı_örnek",
		quick_instance_command_help = "Bir örnek oluşturur ve size ve bir oyuncu listesine ekler.",
		quick_instance_command_parameter_server_ids = "sunucu kimlikleri",
		quick_instance_command_parameter_server_ids_help = "Örneğe eklemek istediğiniz virgülle ayrılmış sunucu kimliklerinin listesi.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "iç_mekan_hata_ayıklama",
		interior_debug_command_help = "İç mekan hata ayıkla metnini aç/kapat.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "draw_interiors",
		draw_interiors_command_help = "İç mekanların çizimini aç/kapat.",
		draw_interiors_command_substitutes = "interiors",

		draw_interior_portals_command = "draw_interior_portals",
		draw_interior_portals_command_help = "İç mekan portal çizimini aç/kapat.",
		draw_interior_portals_command_substitutes = "interior_portals, portals",

		random_interior_command = "random_interior",
		random_interior_command_help = "Rastgele bir iç mekana teleportasyon yap.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "bagaj",
		trunk_command_help = "Yakındaki bir bagaj envanterine erişmeye çalışın.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "yerdeki_envanterleri_temizle",
		wipe_ground_inventories_command_help = "Yerdeki envanterleri temizleyin.",
		wipe_ground_inventories_command_parameter_radius = "yarıçap",
		wipe_ground_inventories_command_parameter_radius_help = "Silme yarıçapı. Bunu boş bırakmak, `100` olarak otomatik seçim yapacaktır. Geçerli değerler `0`'ın üzerindedir ve `0` ve `-1` tüm envanterleri seçecektir.",
		wipe_ground_inventories_command_substitutes = "wipeinvs, wipe_inventories, wipe_ground",

		refresh_inventory_command = "envanteri_yenile",
		refresh_inventory_command_help = "Belirli bir envanteri zorla yeniler.",
		refresh_inventory_command_parameter_inventory_name = "envanter ismi",
		refresh_inventory_command_parameter_inventory_name_help = "Yenilemek istediğiniz envanter.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "buyuk_envanter",
		toggle_big_inventory_command_help = "Geçici olarak karakterinizin envanter yuvalarını 250'ye arttırır.",
		toggle_big_inventory_command_substitutes = "buyuk_envanter",

		item_lookup_command = "esya_bak",
		item_lookup_command_help = "Bir öğenin ID'sine göre bakın.",
		item_lookup_command_parameter_item_id = "öğe id'si",
		item_lookup_command_parameter_item_id_help = "Bakmak istediğiniz öğenin ID'si.",
		item_lookup_command_substitutes = "esya",

		-- game/items
		clear_map_command = "haritayı_temizle",
		clear_map_command_help = "Bir haritanın saklanan konumunu temizler.",
		clear_map_command_parameter_slot = "slot",
		clear_map_command_parameter_slot_help = "Harita hangi envanter yuvasında ise onun slot numarası.",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "kazanç",
		jackpot_command_help = "Jackpot arabirimini açıp kapama.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_ucret_al",
		jackpot_take_fees_command_help = "Tüm jackpot envanterlerinden ücret al.",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "varlık_bul",
		locate_entity_command_help = "Haritada belirli bir varlığı bulun.",
		locate_entity_command_parameter_filter = "filtre",
		locate_entity_command_parameter_filter_help = "Varlığın eşleşeceği filtrenin ne olacağı (id:12345, plaka:90FMK072, vb.)",
		locate_entity_command_substitutes = "vb",

		-- game/loot
		loot_debug_command = "yağmala_hata_ayıklama",
		loot_debug_command_help = "Kutu sıralama hata ayıklamasını açar/kapatır.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "piyango",
		lottery_command_help = "Piyango'nun şimdiki durumunu öğrenin.",
		lottery_command_substitutes = "",

		claim_lottery_command = "piyango_tamamla",
		claim_lottery_command_help = "Kazandığınız piyango ödülünü alın.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "piyango_cevir",
		roll_lottery_command_help = "Piyango çekilişini manuel olarak başlatın.",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "dolab_magazinleri_guncelle",
		refresh_magazines_command_help = "Veritabanında değişiklik yapıldıysa dolap magazinlerini yeniden yükleyin.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "MDT arayüzünü açıp kapatır.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "Yakındaki aracın motor 5 yükseltmesi olup olmadığını kontrol eder.",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "Madencilik hata ayıklama modunu açıp kapatır.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "dil",
		language_command_help = "Tercih ettiğiniz dil ayarlarınızı yapar. Bu değişiklik gelecekteki oturumlar için kaydedilecektir. Değişiklik anlık olarak etkilenecektir.",
		language_command_parameter_language = "dil kodu",
		language_command_parameter_language_help = "Etkinleştirmek istediğiniz dil kodu. Mevcut dilinizi ve diğer tüm mevcut dilleri görmek için /diller yazın. Varsayılan dil için bu argümanı boş bırakın.",
		language_command_substitutes = "dil",

		languages_command = "diller",
		languages_command_help = "Mevcut dilinizi ve diğer tüm mevcut dilleri kontrol edin.",
		languages_command_substitutes = "diller",

		ping_command = "ping",
		ping_command_help = "Sunucuya olan gecikmenizi öğrenin.",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "Sunucudaki tüm oyunculara karakter dışı bir mesaj yayınlayın.",
		ooc_command_parameter_message = "ooc mesajı",
		ooc_command_parameter_message_help = "Göndermek istediğiniz mesaj.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "Yakındaki oyunculara karakter dışı bir mesaj yayınlayın.",
		ooc_local_command_parameter_message = "ooc mesajı",
		ooc_local_command_parameter_message_help = "Göndermek istediğiniz mesaj.",
		ooc_local_command_substitutes = "looc, oocl, yerel_ooc",

		ooc_on_command = "ooc_acik",
		ooc_on_command_help = "Eğer kapalıysa OOC sohbetini açar.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_kapali",
		ooc_off_command_help = "Eğer açıksa OOC sohbetini kapatır.",
		ooc_off_command_substitutes = "",

		copy_license_command = "lisans_kopyala",
		copy_license_command_help = "Kendi Rockstar lisansınızı panonuza kopyalar. (Yetkililer tarafından sizi tanımak için kullanılır)",
		copy_license_command_substitutes = "",

		clear_chat_command = "sohbet_temizle",
		clear_chat_command_help = "Sohbeti temizler.",
		clear_chat_command_substitutes = "cls, temizle",

		clear_chat_all_command = "temizle_chat_tümü",
		clear_chat_all_command_help = "Herkesin sohbetini temizler.",
		clear_chat_all_command_substitutes = "temizletümü, tumtemizle",

		mute_command = "sustur",
		mute_command_help = "Bir oyuncuyu OOC sohbetten ve rapor komutundan sustur.",
		mute_command_parameter_server_id = "sunucu id",
		mute_command_parameter_server_id_help = "Susturmak istediğiniz oyuncunun Sunucu ID'si.",
		mute_command_parameter_expire = "süre",
		mute_command_parameter_expire_help = "Oyuncunun susturma süresi. Bu, süresiz bir susturma için `0` veya `false` atlanabilir. S. /D./Saat. uzunluğu için w/d/h kullanabilirsiniz. (örnek: `3g2s` -> 3 gün, 2 saat)",
		mute_command_parameter_reason = "neden",
		mute_command_parameter_reason_help = "Oyuncunun susturulmasının sebebi.",
		mute_command_substitutes = "",

		unmute_command = "susturmayı kaldır",
		unmute_command_help = "OOC ve rapor komutundan bir oyuncunun susturmasını kaldırın.",
		unmute_command_parameter_server_id = "sunucu kimliği",
		unmute_command_parameter_server_id_help = "Susturmak istediğiniz oyuncunun sunucu kimliği",
		unmute_command_substitutes = "",

		use_measurement_command = "ölçü sistemi kullan",
		use_measurement_command_help = "Locale'nin tercih edilen ölçü sisteminin üzerine yazın.",
		use_measurement_command_parameter_measurement = "ölçü",
		use_measurement_command_parameter_measurement_help = "Kullanmak istediğiniz ölçü sistemi. Geçerli değerler `İngilizce` ve `Metrik`dir. Bu parametreyi varsayılan olarak kullanmak için boş bırakabilirsiniz veya geçersiz bir değer olarak bırakabilirsiniz.",
		use_measurement_command_substitutes = "ölçü, ölc",

		no_copyright_command = "telifsiz",
		no_copyright_command_help = "Bu komut etkinleştirildiğinde, çerçeveden gelen tüm potansiyel telif hakkı olan seslerin kullanımını devre dışı bırakır.",
		no_copyright_command_substitutes = "",

		picture_command = "resim",
		picture_command_help = "Özel bir resim URL'si ile resim öğesi yapar.",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "Resim URL'si.",
		picture_command_parameter_description = "açıklama",
		picture_command_parameter_description_help = "Resim açıklaması.",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "Sunucunun mevcut TPS'sini alın.",
		tps_command_substitutes = "",

		uptime_command = "uptime",
		uptime_command_help = "Sunucunun çalışma süresini kontrol eder.",
		uptime_command_substitutes = "",

		auto_run_command = "otomatik_koş",
		auto_run_command_help = "Otomatik koşmak için bir tuş bağlama ayarlar.",
		auto_run_command_parameter_control_id = "kontrol kimliği",
		auto_run_command_parameter_control_id_help = "Otomatik koşu işlevine bağlamak istediğiniz kontrol kimliği.",
		auto_run_command_substitutes = "",

		walk_forwards_command = "ileri_yürü",
		walk_forwards_command_help = "Sizi veya başka bir oyuncuyu otomatik olarak ileri yürütürken (engellerden kaçınmaya çalışarak).",
		walk_forwards_command_parameter_server_id = "sunucu kimliği",
		walk_forwards_command_parameter_server_id_help = "İleri yürütülecek oyuncunun sunucu kimliği.",
		walk_forwards_command_parameter_sprint = "koşmak",
		walk_forwards_command_parameter_sprint_help = "Oyuncunun ileri yürürken koşup koşmayacağı. (Varsayılan: false)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "nakit",
		cash_command_help = "Nakit bakiyenizi görüntüler.",
		cash_command_substitutes = "",

		bank_command = "banka",
		bank_command_help = "Banka bakiyenizi görüntüler.",
		bank_command_substitutes = "",

		give_cash_command = "paraver",
		give_cash_command_help = "Başka bir oyuncuya belirli miktarda nakit verin.",
		give_cash_command_parameter_server_id = "sunucu kimliği",
		give_cash_command_parameter_server_id_help = "Nakit vermek istediğiniz oyuncunun sunucu kimliği.",
		give_cash_command_parameter_amount = "miktar",
		give_cash_command_parameter_amount_help = "Oyuncuya vermek istediğiniz nakit miktarı.",
		give_cash_command_substitutes = "",

		bill_player_command = "fatura_oyuncu",
		bill_player_command_help = "Başka bir oyuncuya belirli bir miktarda para fatura edin.",
		bill_player_command_parameter_server_id = "sunucu kimliği",
		bill_player_command_parameter_server_id_help = "Faturayı göndermek istediğiniz oyuncunun sunucu kimliği.",
		bill_player_command_parameter_amount = "miktar",
		bill_player_command_parameter_amount_help = "Oyuncuya fatura edeceğiniz nakit miktarı.",
		bill_player_command_substitutes = "fatura",

		-- game/notepads
		notepad_command = "notdefteri",
		notepad_command_help = "Not defterini aç/kapat.",
		notepad_command_substitutes = "",

		notepad_debug_command = "notdefteri_debug",
		notepad_debug_command_help = "Yakındaki tüm not defteri kimliklerini gösterir.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "notdefteri_bilgi",
		notepad_info_command_help = "Belirli bir not defteri hakkında bilgi sağlar.",
		notepad_info_command_parameter_notepad_id = "not defteri kimliği",
		notepad_info_command_parameter_notepad_id_help = "Bilgi almak istediğiniz not defterinin kimliği.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "notdefteri_temizle",
		wipe_notepads_command_help = "Belirli bir yarıçapta tüm not defterlerini siler.",
		wipe_notepads_command_parameter_radius = "yarıçap",
		wipe_notepads_command_parameter_radius_help = "Silinmesini istediğiniz not defterlerinin yarıçapı (Max = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "not_defterini_imzala",
		sign_notepad_command_help = "Bir not defterine imza atar. (Adınızı altına koyar ve daha fazla düzenlenmesini önler)",
		sign_notepad_command_parameter_slot = "yuva",
		sign_notepad_command_parameter_slot_help = "Not defterinin bulunduğu envanter yuvası.",
		sign_notepad_command_substitutes = "imza",

		-- game/notices
		add_notice_command = "mesaj_ekle",
		add_notice_command_help = "Mevcut konumunuza uçan bir mesaj ekler.",
		add_notice_command_parameter_message = "mesaj",
		add_notice_command_parameter_message_help = "Eklemek istediğiniz mesaj.",
		add_notice_command_substitutes = "",

		remove_notice_command = "mesaj_sil",
		remove_notice_command_help = "/mesaj_ekle ile eklenen belirli bir mesajı kaldırır.",
		remove_notice_command_parameter_message_id = "mesaj kimliği",
		remove_notice_command_parameter_message_id_help = "Kaldırmak istediğiniz mesajın kimliği.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "donmuş_nesneler_taraması",
		frozen_objects_scan_command_help = "Donmuş bir nesnenin model özdeşliğini tarayın ve onu sunucuda bir dosyaya yazın.",
		frozen_objects_scan_command_parameter_model_name = "model ismi",
		frozen_objects_scan_command_parameter_model_name_help = "Taramak istediğiniz nesnenin model ismi.",
		frozen_objects_scan_command_substitutes = "donmuş_nesneler",

		-- game/orbitcam
		orbitcam_command = "yörünge_kamera",
		orbitcam_command_help = "Yörünge kamerayı açıp kapatın.",
		orbitcam_command_substitutes = "yörünge",

		-- game/overview
		overview_command = "genelbakis",
		overview_command_help = "Genel bakış arayüzünü açar/kapatır. Genel bakış arayüzü, OOC etkileşim menüsü, bilgi merkezi ve veri görüntüleyicisidir.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "oksijen_egitimi",
		oxy_tutorial_command_help = "Bir sonraki işleme başladığınızda oksijen eğitimini oynatır.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "panel",
		panel_command_help = "Bir oyuncunun notlarını görüntülemeni ve yeni notlar eklemeni sağlayan mini bir yönetici panelini gösterir.",
		panel_command_parameter_server_id = "sunucu id",
		panel_command_parameter_server_id_help = "Görmek istediğiniz oyuncunun sunucu kimliği (çevrimiçi veya yakın zamanda çıkmış olmalıdır).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "ben",
		me_command_help = "Karakterinizin ne yaptığını anlatın.",
		me_command_parameter_message = "mesaj",
		me_command_parameter_message_help = "Eylemlerinizi anlatmak için göndermek istediğiniz mesaj.",
		me_command_substitutes = "",

		do_command = "yap",
		do_command_help = "Rol yapma sahnesini daha iyi görselleştirin.",
		do_command_parameter_message = "mesaj",
		do_command_parameter_message_help = "Rol yapma sahnesini daha iyi görselleştirmek için göndermek istediğiniz mesaj",
		do_command_substitutes = "",

		description_command = "açıklama",
		description_command_help = "Ped'inize açıklama özelliklerini ekleyin.",
		description_command_parameter_message = "mesaj",
		description_command_parameter_message_help = "Ped'inize eklemek istediğiniz mesaj.",
		description_command_substitutes = "",

		attempt_command = "deneme",
		attempt_command_help = "Başarı şansı %50 olan bir şey deneyin.",
		attempt_command_parameter_message = "mesaj",
		attempt_command_parameter_message_help = "Ne denediğinizi gösteren bir mesaj.",
		attempt_command_substitutes = "",

		dice_command = "zar",
		dice_command_help = "Standart bir zar atın.",
		dice_command_substitutes = "",

		roll_command = "atış",
		roll_command_help = "Özel ayarlarla daha karmaşık bir zar atışı yapın.",
		roll_command_parameter_rolls = "zar_atışları",
		roll_command_parameter_rolls_help = "Yapmak istediğiniz zar atışı sayısı. 20'ye kadar sınırlısınız.",
		roll_command_parameter_max = "en_yüksek",
		roll_command_parameter_max_help = "Bir zar atışında alabileceğiniz en yüksek değer. En yüksek değer burada 100.000'dir.",
		roll_command_substitutes = "",

		card_command = "kart",
		card_command_help = "Rastgele bir kart çekin.",
		card_command_substitutes = "",

		ped_messages_command = "ped_mesajları",
		ped_messages_command_help = "Ped mesajlarının sohbette gösterilip gösterilmeyeceğini açıp kapatın.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "ped_oluştur",
		ped_spawn_command_help = "Bir NPC spawnlar.",
		ped_spawn_command_parameter_model = "model",
		ped_spawn_command_parameter_model_help = "Spawn etmek istediğiniz NPC'nin modeli.",
		ped_spawn_command_parameter_weapon = "silah",
		ped_spawn_command_parameter_weapon_help = "NPC'nin silah taşıması isteniyorsa (opsiyonel, atlamak için \"false\" yazın).",
		ped_spawn_command_parameter_fearless = "cesur",
		ped_spawn_command_parameter_fearless_help = "NPC silah vs. karşısında korkmamalı mı? (default: hayır)",
		ped_spawn_command_substitutes = "",

		ped_task_command = "ped_task",
		ped_task_command_help = "Oluşturduğunuz pedlere görev atar.",
		ped_task_command_parameter_task = "görev",
		ped_task_command_parameter_task_help = "Oluşturulmuş pedlerin hangi görevi yapması gerektiğini belirtir.",
		ped_task_command_parameter_target = "hedef",
		ped_task_command_parameter_target_help = "Pedlerin hedef olarak belirleyeceği oyuncunun server id'sini belirtir (isteğe bağlı).",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "Oluşturduğunuz pedlere belirli bir jest yaptırır.",
		ped_emote_command_parameter_emote = "jest",
		ped_emote_command_parameter_emote_help = "Oluşturulan pedlerin yapacağı jesti belirtir.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "ped_sil",
		ped_remove_command_help = "Oluşturduğunuz tüm karakterlerden kurtulur.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "listele_ped_hareketleri",
		list_ped_emotes_command_help = "Mevcut tüm ped hareketlerini listeler.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "listele_ped_görevleri",
		list_ped_tasks_command_help = "Mevcut tüm ped görevlerini listeler.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "ped_çal",
		ped_steal_command_help = "Birisinin karakterini çalar.",
		ped_steal_command_parameter_server_id = "sunucu id'si",
		ped_steal_command_parameter_server_id_help = "Oyuncunun sunucu ID'si.",
		ped_steal_command_substitutes = "ped_cal",

		-- game/ped_takeover
		takeover_ped_command = "ped_ele_geçir",
		takeover_ped_command_help = "Belirli bir pedi kontrol etmenizi sağlar.",
		takeover_ped_command_parameter_network_id = "ağ kimliği",
		takeover_ped_command_parameter_network_id_help = "Üzerinde kontrol almak istediğiniz pedin ağ kimliği.",
		takeover_ped_command_substitutes = "ele_geçir",

		-- game/ped_tasks
		ped_debug_command = "ped_hata_ayıklama",
		ped_debug_command_help = "Bir ped hakkında hata ayıklama bilgisi verir.",
		ped_debug_command_parameter_network_id = "ağ kimliği",
		ped_debug_command_parameter_network_id_help = "Problemin kaynağı olan pedin ağ kimliği.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "ozel_telefon_numarasi",
		custom_phone_number_command_help = "Telefon numaranizi degistirin.",
		custom_phone_number_command_parameter_phone_number = "telefon numarasi",
		custom_phone_number_command_parameter_phone_number_help = "Degistirmek istediginiz telefon numarasi. XXX-XXXX formatini takip ettiginden emin olun.",
		custom_phone_number_command_substitutes = "ozel_numara",

		phone_number_available_command = "telefon_numarasi_mevcut",
		phone_number_available_command_help = "Bir telefon numarasının mevcut olup olmadığını kontrol edin.",
		phone_number_available_command_parameter_phone_number = "telefon numarası",
		phone_number_available_command_parameter_phone_number_help = "Mevcut olup olmadığını kontrol etmek istediğiniz telefon numarası. Lütfen XXX-XXXX formatına uygun olduğundan emin olun.",
		phone_number_available_command_substitutes = "numara_mevcut",

		-- game/player_control
		drive_for_command = "drive_for",
		drive_for_command_help = "Bir oyuncunun aracını devralın ve onun yerine sürün.",
		drive_for_command_parameter_server_id = "sunucu kimliği",
		drive_for_command_parameter_server_id_help = "Sürmek istediğiniz oyuncunun sunucu kimliği.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "set_player_scale",
		set_player_scale_command_help = "Bir oyuncunun boyutunu değiştirin.",
		set_player_scale_command_parameter_scale = "boyut",
		set_player_scale_command_parameter_scale_help = "Ayarlamak istediğiniz boyutu belirtin.",
		set_player_scale_command_parameter_server_id = "sunucu id",
		set_player_scale_command_parameter_server_id_help = "Boyutu ayarlamak istediğiniz sunucu kimliğini belirtin. Bu alanı boş bırakırsanız kendinizi otomatik olarak seçecektir.",
		set_player_scale_command_substitutes = "player_scale, set_player_size, player_size",

		-- game/player_stats
		player_stats_command = "oyuncu_istatistikleri",
		player_stats_command_help = "Oyuncu istatistikleri özelliğini açıp kapatır.",
		player_stats_command_parameter_render_range = "görüş aralığı",
		player_stats_command_parameter_render_range_help = "Oyuncular için görüş aralığını değiştirir. Varsayılanı 200'dür.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "direk_dansı_ofseti",
		pole_dancing_offset_command_help = "Direk dansı ofsetleri için hata ayıklama aracını açar/kapatır.",
		pole_dancing_offset_command_parameter_model_name = "model adı",
		pole_dancing_offset_command_parameter_model_name_help = "Ayarlama yapmak istediğiniz model adı.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "özellikler_hata_ayıklama",
		properties_debug_command_help = "Özellikler hata ayıklamayı açıp kapar.",
		properties_debug_command_substitutes = "özellikler",

		-- game/props
		props_manage_command = "nesneleri_yönet",
		props_manage_command_help = "Yakındaki nesneleri yönetin.",
		props_manage_command_substitutes = "nesneleri_yönet, np",

		spawn_prop_command = "nesne_oluştur",
		spawn_prop_command_help = "Bir nesne oluştur.",
		spawn_prop_command_parameter_model_hash = "model",
		spawn_prop_command_parameter_model_hash_help = "Oluşturmak istediğiniz nesnenin modeli.",
		spawn_prop_command_parameter_network = "ağ",
		spawn_prop_command_parameter_network_help = "Prop'u ağda mı olmasını istersiniz? Hareket edebilmesi gereken prop'lar için sadece bunu etkinleştirmeniz önerilir.",
		spawn_prop_command_parameter_no_pickup = "toplama yok",
		spawn_prop_command_parameter_no_pickup_help = "Bu prop sadece süper yöneticiler tarafından toplanılsın mı?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "tam yerinde prop spawn et",
		spawn_exact_prop_command_help = "Tam konumunuzda bir prop spawn edin.",
		spawn_exact_prop_command_parameter_model_name = "model adı",
		spawn_exact_prop_command_parameter_model_name_help = "Oluşturmak istediğiniz prop modeli.",
		spawn_exact_prop_command_parameter_ground = "zemin",
		spawn_exact_prop_command_parameter_ground_help = "Prop'un zeminde olup olmaması.",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "Etrafınızdaki tüm prop'ları hata ayıklar.",
		props_debug_command_substitutes = "",

		delete_prop_command = "delete_prop",
		delete_prop_command_help = "Belirli bir prop kimliği verilerek prop silinir.",
		delete_prop_command_parameter_prop_id = "prop kimliği",
		delete_prop_command_parameter_prop_id_help = "Silmeye çalıştığınız nesnenin kimlik numarası.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "nesneleri_sil",
		wipe_props_command_help = "Çevrenizdeki nesneleri siler.",
		wipe_props_command_parameter_radius = "yarıçap",
		wipe_props_command_parameter_radius_help = "Temizleme yarıçapı (1-250).",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "radyo",
		radio_command_help = "Radyo UI'sinin açılıp kapanmasını sağlar.",
		radio_command_substitutes = "",

		radio_debug_command = "radyo_hata_ayıklama",
		radio_debug_command_help = "Radyo hata ayıklama modunu açar/kapatır.",
		radio_debug_command_substitutes = "",

		frequency_command = "frekans",
		frequency_command_help = "Radyonuzun hangi frekansta olduğunu belirler.",
		frequency_command_parameter_frequency = "frekans",
		frequency_command_parameter_frequency_help = "Gitmek istediğiniz frekans.",
		frequency_command_substitutes = "frek",

		force_frequency_command = "force_frequency",
		force_frequency_command_help = "Radyo veya görevde olmanız gerekmeden bir radyo frekansına katılın.",
		force_frequency_command_parameter_frequency = "frekans",
		force_frequency_command_parameter_frequency_help = "Gitmek istediğiniz frekans.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "rastgele_frekuensi",
		random_frequency_command_help = "Radyonuzu rastgele bir frekansa ayarlar.",
		random_frequency_command_substitutes = "rastgele_fre, rfrekans",

		radio_sounds_command = "radio_sesleri",
		radio_sounds_command_help = "Radyo ses efektlerinin ses düzeyini ayarlar.",
		radio_sounds_command_parameter_volume = "ses düzeyi",
		radio_sounds_command_parameter_volume_help = "Radyo seslerinin ses düzeyi. Değer 0-1 arasında olmalıdır. Varsayılan değer 0,1'dir. Bu boş bırakılırsa, mevcut ses seviyenizi döndürür.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radyo_ses",
		radio_volume_command_help = "Radyonun sesini ayarlar.",
		radio_volume_command_parameter_volume = "ses düzeyi",
		radio_volume_command_parameter_volume_help = "Radyonun ses düzeyi. Değerler 0 ile 1 arasında olmalıdır. Varsayılan değer 0,5'tir. Boş bırakılırsa, şu anda kullanmakta olduğunuz ses düzeyini gösterir.",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "Karakterlerin ilişkilerinin hata ayıklamasını açar ya da kapatır.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "Bir oyuncuya reskin yapar.",
		reskin_command_parameter_server_id = "sunucu id'si",
		reskin_command_parameter_server_id_help = "Yeniden dış görünümünü tetiklemek istediğiniz oyuncunun sunucu kimliği (ID). Kendinizi otomatik olarak seçmek için bu alanı boş bırakın.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "yeniden_dış_görünüm",
		redeem_reskin_command_help = "Satın alınan bir dış görünümü yeniden kullanın.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "ayaklanma_modu",
		toggle_riot_mode_command_help = "Tüm oyuncular için ayaklanma modunu açıp kapatabilirsiniz.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "ayaklanma_oyuncu_ekle",
		add_riot_player_command_help = "'Ayaklanma listesine' bir oyuncu ekleyin ve çevredeki yayaların o oyuncuya saldırmasına neden olun.",
		add_riot_player_command_parameter_server_id = "sunucu kimliği",
		add_riot_player_command_parameter_server_id_help = "Eklemek istediğiniz oyuncunun sunucu kimliği. Kendinizi otomatik seçmek için bu alana boş bırakın.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "isyan_oyuncusu_sil",
		remove_riot_player_command_help = "'isyan listesinden' bir oyuncuyu kaldırın.",
		remove_riot_player_command_parameter_server_id = "sunucu kimliği",
		remove_riot_player_command_parameter_server_id_help = "Kaldırmak istediğiniz oyuncunun sunucu kimliği. Kendinizi otomatik seçmek için bu alana boş bırakın.",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "metaoyun",
		metagame_command_help = "Oyuncuların server ID'lerinin sürekli çizilmesini açıp kapatır.",
		metagame_command_substitutes = "meta, m",

		-- game/security_cameras
		security_cameras_command = "guvenlik_kameralari",
		security_cameras_command_help = "Güvenlik kameralarını açıp kapatır.",
		security_cameras_command_substitutes = "guvenlik_kam, guvenlikkameralari, guvenlikkam, guvenlikkamera, gvkameralari, gvkam",

		security_cameras_scan_command = "guvenlik_kameralari_tara",
		security_cameras_scan_command_help = "Bilinen tüm güvenlik kamera nesnelerini tarar ve bir metin dosyasında kaydeder.",
		security_cameras_scan_command_substitutes = "tarayıcı, kamerayı_tarayıcı, kameratarayıcı",

		security_cameras_health_command = "kamera_sağlık",
		security_cameras_health_command_help = "Güvenlik kamerası sağlık hata ayıklama aracını açar veya kapatır.",
		security_cameras_health_command_substitutes = "kamera_sağlık",

		-- game/shield
		shield_command = "kalkan",
		shield_command_help = "Balistik kalkanı açar veya kapatır.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "şok_dalgası_oluştur",
		create_shockwave_command_help = "Mevcut pozisyonunuzda şok dalgası oluşturur.",
		create_shockwave_command_parameter_force = "güç",
		create_shockwave_command_parameter_force_help = "Şok dalgasının gücü (1 - 1000).",
		create_shockwave_command_parameter_radius = "yarıçap",
		create_shockwave_command_parameter_radius_help = "Şok dalgasının yarıçapı (1 - 100).",
		create_shockwave_command_substitutes = "sok dalga",

		push_player_command = "push_player",
		push_player_command_help = "Bir oyuncuyu veya araçlarını sizden uzak itin.",
		push_player_command_parameter_server_id = "sunucu kimliği",
		push_player_command_parameter_server_id_help = "Oyuncunun sunucu kimliği",
		push_player_command_substitutes = "it",

		-- game/shrooms
		draw_shroom_areas_command = "mantar_alanlarını_çiz",
		draw_shroom_areas_command_help = "Tüm mantar alanlarını çiz ve daha fazlasını ekleyin.",
		draw_shroom_areas_command_substitutes = "mantar_alanları",

		-- game/spying
		search_for_devices_command = "cihazlarda_ara",
		search_for_devices_command_help = "Yakındaki cihazları ara.",
		search_for_devices_command_substitutes = "cihaz_ar, cihazar, c4a",

		-- game/spectating
		spectate_command = "izle",
		spectate_command_help = "Belirli bir oyuncuyu izle.",
		spectate_command_parameter_server_id = "sunucu kimliği",
		spectate_command_parameter_server_id_help = "İzlemek istediğiniz oyuncunun sunucu kimliği.",
		spectate_command_substitutes = "iz",

		-- game/status
		status_reset_command = "durum_sıfırla",
		status_reset_command_help = "Durum seviyelerini sıfırla.",
		status_reset_command_parameter_server_id = "sunucu kimliği",
		status_reset_command_parameter_server_id_help = "Durumu sıfırlamak istediğiniz oyuncunun sunucu kimliği. Boş bırakılırsa, otomatik olarak kendi kimliğiniz seçilecektir.",
		status_reset_command_substitutes = "dr",

		toggle_status_command = "durum_değiştir",
		toggle_status_command_help = "Açlık, susuzluk ve stres gibi belirli durumları devre dışı bırakır (veya etkinleştirir).",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "zırh_ayarla",
		set_body_armor_command_help = "Birinin zırh seviyesini ayarlar.",
		set_body_armor_command_parameter_server_id = "sunucu id'si",
		set_body_armor_command_parameter_server_id_help = "Vücut zırhı seviyesini ayarlamak istediğiniz oyuncunun sunucu ID'si. Kendinizi seçmek için bunu boş veya `0` olarak bırakabilirsiniz. Ayrıca `herkesin vücut zırhı seviyesini ayarlamak için -1` yapabilirsiniz.",
		set_body_armor_command_parameter_body_armor_level = "vücut zırhı seviyesi",
		set_body_armor_command_parameter_body_armor_level_help = "Ayarlamak istediğiniz vücut zırhı seviyesi. Bu değer `0'dan 100'e kadar` herhangi bir yerde olabilir. Bu alanı boş veya geçersiz bir değerde bırakmak, varsayılan olarak `100`'e ayarlayacaktır.",
		set_body_armor_command_substitutes = "vucut_zirhi, zirh",

		-- game/streamer_mode
		toggle_streamer_mode_command = "yayinci_modunu_ac_kapat",
		toggle_streamer_mode_command_help = "Yayıncı modunu açıp/kapatın. Bu, yakınınızda '18+' emote yapmalarını oyuncuların yapmasını engeller.",
		toggle_streamer_mode_command_substitutes = "yayinci_modu, yayinci",

		-- game/sync
		time_hour_command = "saat_degistir",
		time_hour_command_help = "Mevcut saati ayarla.",
		time_hour_command_parameter_hour = "saat",
		time_hour_command_parameter_hour_help = "Saat dilimini belirtir. Değer, 0 ile 23 arasında olmalıdır.",
		time_hour_command_parameter_transition = "geçiş",
		time_hour_command_parameter_transition_help = "Zamanın akıcı bir şekilde değiştirilip değiştirilmeyeceği (evet/hayır, varsayılan hayır).",
		time_hour_command_substitutes = "saat",

		time_minute_command = "time_minute",
		time_minute_command_help = "Mevcut saatin dakikasını ayarlayın.",
		time_minute_command_parameter_minute = "dakika",
		time_minute_command_parameter_minute_help = "Saat ayarının hangi dakikada olacağı. Değer 0 ile 59 arasında olmalıdır.",
		time_minute_command_substitutes = "dakika",

		local_time_command = "yerel_zaman",
		local_time_command_help = "Zamanı ayarlar, ancak sadece senin için geçerlidir.",
		local_time_command_parameter_time = "zaman",
		local_time_command_parameter_time_help = "Yerel saati ayarlamak istediğiniz zaman. Değer 0:00 ila 23:59 arasında olmalıdır.",
		local_time_command_substitutes = "",

		local_weather_command = "yerel_hava",
		local_weather_command_help = "Hava durumunu ayarlar, ancak sadece senin için geçerlidir.",
		local_weather_command_parameter_weather = "hava",
		local_weather_command_parameter_weather_help = "Yerel hava durumunu ayarlamak istediğiniz hava durumu. /hava ile aynı değerleri alır.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "daha_ışıklı_geceler",
		brighter_nights_command_help = "Sadece size özel olarak zamanı 12:00 öğlen ve hava durumunu güneşli hale getirir.",
		brighter_nights_command_substitutes = "",

		weather_command = "hava_durumu",
		weather_command_help = "Hava durumunu değiştirir.",
		weather_command_parameter_weather = "hava durumu adı",
		weather_command_parameter_weather_help = "Hava durumu adı. Geçerli hava durumu adları EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS ve HALLOWEEN'dir.",
		weather_command_substitutes = "",

		advance_weather_command = "hava_geçiş",
		advance_weather_command_help = "Doğal olarak bir sonraki hava durumuna geçin.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "zaman_dondur",
		freeze_time_command_help = "Zamanın dondurulup dondurulmadığını açıp kapatın.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "hava_dondur",
		freeze_weather_command_help = "Havanın dondurulup dondurulmadığını açıp kapatın.",
		freeze_weather_command_substitutes = "",

		blackout_command = "elektrik_kesintisi",
		blackout_command_help = "Elektrik kesintisinin etkin olup olmadığını açıp kapatın.",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "tabletim",
		tablet_command_help = "Tablet arayüzünü açar (eğer bir tablete sahipseniz).",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "arac_ayarla",
		set_vehicle_preset_command_help = "Bulunduğunuz aracın tüm yükseltmelerini tamamlar ve belirtilen ön ayar renklerini uygular.",
		set_vehicle_preset_command_parameter_preset = "önayar",
		set_vehicle_preset_command_parameter_preset_help = "Uygulamak istediğiniz ön ayar renkleri (kırmızı, mavi, yeşil, sarı, turuncu, beyaz, siyah).",
		set_vehicle_preset_command_substitutes = "araç_ayarla",

		detach_all_doors_command = "tüm_kapilari_ayir",
		detach_all_doors_command_help = "Bulunduğunuz aracın tüm kapılarını ayırır.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "patlat_butun_lastikler",
		pop_all_tires_command_help = "Bulunduğunuz aracın tüm lastiklerini patlatır.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "araci_tamamen_guncelle",
		upgrade_vehicle_fully_command_help = "Bulunduğunuz aracı tamamen günceller.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "rastgele_arac_renkleri",
		random_vehicle_colors_command_help = "Bulunduğunuz aracın renklerini rastgele olarak değiştirir.",
		random_vehicle_colors_command_parameter_lights = "isiklar",
		random_vehicle_colors_command_parameter_lights_help = "Işıklar da rastgele olarak değiştirilsin mi? (ksenon ve neon).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "açlık",
		starve_command_help = "Yiyecek ve susuzluğunuzu sıfıra ayarlar.",
		starve_command_substitutes = "",

		car_command = "araba",
		car_command_help = "Rastgele bir araba oluşturur.",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "set_time_scale",
		set_time_scale_command_help = "Sunucunun zaman ölçeğini ayarlar.",
		set_time_scale_command_parameter_time_scale = "zaman ölçeği",
		set_time_scale_command_parameter_time_scale_help = "Ayarlamak istediğiniz zaman ölçeği. Değer 0 ile 1 arasında olmalıdır.",
		set_time_scale_command_substitutes = "zaman_ölçeği, yavaş_hareket",

		-- game/titanic
		create_titanic_command = "titanic_oluştur",
		create_titanic_command_help = "Batan bir Titanic oluşturun.",
		create_titanic_command_parameter_sink_time = "batış süresi",
		create_titanic_command_parameter_sink_time_help = "Tekne suya gömülmeden önce kaç dakika süreceği.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "yukarıdan_aşağıya",
		top_down_command_help = "Yukarıdan aşağıya görünümünü açıp kapatır.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "izleyici",
		tracker_command_help = "İzleyicinin görünürlüğünü açıp kapatır.",
		tracker_command_substitutes = "",

		trackers_split_command = "izleyiciler_split",
		trackers_split_command_help = "Haritada kategori içinde izleyici depolama ve bölme arasında geçiş yapın.",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "trenler_hata_ayıkla",
		trains_debug_command_help = "Trenler hata ayıklama özelliğini açar veya kapatır.",
		trains_debug_command_substitutes = "",

		spawn_train_command = "tren_çıkart",
		spawn_train_command_help = "Bir tren çıkarır.",
		spawn_train_command_parameter_track_id = "takip no",
		spawn_train_command_parameter_track_id_help = "Trenin çıkacağı takip no. (1 ile 12 arası)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "hazine_haritası_parçası_çıkart",
		spawn_map_piece_command_help = "Bir hazine haritası parçası çıkarır.",
		spawn_map_piece_command_parameter_map_tier = "hazineharitasıkatmanı",
		spawn_map_piece_command_parameter_map_tier_help = "Oluşturulacak hazine haritası parçasının katmanı.",
		spawn_map_piece_command_parameter_piece_number = "parça numarası",
		spawn_map_piece_command_parameter_piece_number_help = "Oluşturmak istediğiniz parça numarası.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "Okyanus ölçeğini global olarak değiştirin.",
		set_ocean_scaler_command_parameter_intensity = "yoğunluk",
		set_ocean_scaler_command_parameter_intensity_help = "Ayarlamak istediğiniz yoğunluk.",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		-- game/vdm
		vdm_command = "vdm",
		vdm_command_help = "Belirtilen npc'nin hedefi çalıştırmaya çalışmasını sağlar.",
		vdm_command_parameter_target = "hedef",
		vdm_command_parameter_target_help = "Hedef oyuncunun server id'si.",
		vdm_command_parameter_network_id = "ağ kimliği",
		vdm_command_parameter_network_id_help = "Yerel ağ kimliği (veya aracının).",
		vdm_command_substitutes = "",

		vdm_clear_command = "vdm_temizle",
		vdm_clear_command_help = "Tüm vdm hedeflerinizi temizler.",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "ses_hata_bulma",
		voice_debug_command_help = "Ses hata ayıklamayı etkinleştirir / devre dışı bırakır.",
		voice_debug_command_parameter_server_id = "sunucu idsi",
		voice_debug_command_parameter_server_id_help = "Başkasının 'ses hata ayıklama' özelliğini açmak/ kapatmak isterseniz, buraya sunucu idlerini girin.",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "sesli-yasaklama-hata-ayıklama",
		muted_areas_debug_command_help = "Sesli yasaklama bölgelerinin tümünü çizer.",
		muted_areas_debug_command_substitutes = "sesli-yasaklama",

		listen_command = "dinle",
		listen_command_help = "Belirli bir kullanıcı için dinleme modunu açıp kapatır. (Söylediklerini duyarsınız)",
		listen_command_parameter_server_id = "sunucu idsi",
		listen_command_parameter_server_id_help = "Dinlemek istediğiniz kullanıcı.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "sesli_mute",
		toggle_voice_mute_command_help = "Sesli sohbette birini sessize alır veya sessizden çıkarır.",
		toggle_voice_mute_command_parameter_server_id = "sunucu kimliği",
		toggle_voice_mute_command_parameter_server_id_help = "Sessize almak/çıkarmak istediğiniz kullanıcı.",
		toggle_voice_mute_command_substitutes = "ses_mute",

		-- game/wizard
		wizard_command = "sihirbaz",
		wizard_command_help = "Sihirbaz menüsünü açar.",
		wizard_command_parameter_server_id = "sunucu kimliği",
		wizard_command_parameter_server_id_help = "Menüde belirli bir oyuncu seçin (isteğe bağlı).",
		wizard_command_substitutes = "",

		ragdoll_player_command = "oyuncu_bebek",
		ragdoll_player_command_help = "Bir oyuncuyu bebek yapar.",
		ragdoll_player_command_parameter_server_id = "sunucu kimliği",
		ragdoll_player_command_parameter_server_id_help = "Bebek yapmak istediğiniz oyuncunun sunucu kimliği.",
		ragdoll_player_command_parameter_force = "zorlama",
		ragdoll_player_command_parameter_force_help = "Oyuncuyu bebek yapmadan sonra rastgele bir kuvvet uygulayın.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "ragdoll_yarıçapı",
		ragdoll_radius_command_help = "Verilen yarıçap içindeki tüm oyuncuları rastgele ragdoll durumuna sokar.",
		ragdoll_radius_command_parameter_radius = "yarıçap",
		ragdoll_radius_command_parameter_radius_help = "Oyuncuların ragdoll durumuna geçeceği yarıçap.",
		ragdoll_radius_command_parameter_force = "güç",
		ragdoll_radius_command_parameter_force_help = "Oyuncuları ragdoll yapmadan önce rastgele bir güç uygulayın.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "yumruk_yarıçapı",
		punch_radius_command_help = "Verilen yarıçap içindeki tüm oyuncuları rastgele yumruk atmak için zorlar.",
		punch_radius_command_parameter_radius = "yarıçap",
		punch_radius_command_parameter_radius_help = "Oyuncuların rastgele yumruklama yapacağı yarıçap.",
		punch_radius_command_substitutes = "",

		flashbang_command = "flashbang",
		flashbang_command_help = "Belirli bir oyuncuya flaş bombası atar.",
		flashbang_command_parameter_server_id = "sunucu id'si",
		flashbang_command_parameter_server_id_help = "Hedef oyuncunun sunucu kimliği.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "flashbang_yarıçapı",
		flashbang_radius_command_help = "Belirli bir yarıçap içindeki tüm oyunculara flaş bombası atar.",
		flashbang_radius_command_parameter_radius = "yarıçap",
		flashbang_radius_command_parameter_radius_help = "Oyuncuların flashbang patlamalarından etkileneceği yarıçap.",
		flashbang_radius_command_parameter_include_self = "kendini dahil et",
		flashbang_radius_command_parameter_include_self_help = "Kendinizi de flashbang yapmak istiyorsanız işaretleyin.",
		flashbang_radius_command_substitutes = "",

		punch_command = "yumruk",
		punch_command_help = "Belirli bir oyuncunun rasgele yumruk atmasını zorlar.",
		punch_command_parameter_server_id = "sunucu ID'si",
		punch_command_parameter_server_id_help = "Hedef oyuncunun sunucu kimliği.",
		punch_command_substitutes = "",

		explode_command = "patlat_oyuncu",
		explode_command_help = "Belirli bir oyuncuyu patlatır.",
		explode_command_parameter_server_id = "sunucu kimliği",
		explode_command_parameter_server_id_help = "Hedef oyuncunun sunucu kimliği.",
		explode_command_substitutes = "",

		ignite_player_command = "ignite_player",
		ignite_player_command_help = "Bir oyuncuyu kısa bir süre için ateşe verir.",
		ignite_player_command_parameter_server_id = "sunucu kimliği",
		ignite_player_command_parameter_server_id_help = "Hedef oyuncunun sunucu kimliği.",
		ignite_player_command_substitutes = "ateşle, yan",

		run_command_as_command = "run_command_as",
		run_command_as_command_help = "Başka bir oyuncunun komutları çalıştırmasını sağlar.",
		run_command_as_command_parameter_server_id = "sunucu kimliği",
		run_command_as_command_parameter_server_id_help = "Hedef oyuncunun sunucu kimliği.",
		run_command_as_command_parameter_command = "komut",
		run_command_as_command_parameter_command_help = "Çalıştırmak istediğiniz komut.",
		run_command_as_command_substitutes = "runas, sudo",

		ped_reverse_command = "ped_reverse",
		ped_reverse_command_help = "En yakın araçtaki pediten geri geri gitmesini sağlar.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "ped_ileri",
		ped_forwards_command_help = "En yakındaki araçtaki NPC'yi ileri sürer.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "yerel_nesneler_hata_ayıklama",
		local_entities_debug_command_help = "Yerel nesnelerin hata ayıklamasını açıp kapatır.",
		local_entities_debug_command_substitutes = "lnesneler",

		no_ped_population_areas_debug_command = "no_ped_population_areas_debug",
		no_ped_population_areas_debug_command_help = "'NPC nufus alanlari' hata ayıklamasını açıp kapatır.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "patlama_yarat",
		create_explosion_command_help = "Bir patlama oluşturur.",
		create_explosion_command_parameter_explosion_type = "patlama türü",
		create_explosion_command_parameter_explosion_type_help = "Patlama türü.",
		create_explosion_command_parameter_damage_scale = "zarar ölçeği",
		create_explosion_command_parameter_damage_scale_help = "Zarar ölçeği.",
		create_explosion_command_parameter_camera_shake = "kamera sarsıntısı",
		create_explosion_command_parameter_camera_shake_help = "Kamera sarsıntısı.",
		create_explosion_command_substitutes = "pat, patlat, patlama",

		-- global/functions
		confirm_yes_command = "evet",
		confirm_yes_command_help = "Geçerli işlemi onaylar.",
		confirm_yes_command_substitutes = "onayla",

		confirm_no_command = "hayır",
		confirm_no_command_help = "Geçerli işlemi iptal eder.",
		confirm_no_command_substitutes = "iptal, vazgeç",

		-- global/states
		entity_states_command = "nesne_durumlari",
		entity_states_command_help = "Belirli bir nesnenin tüm durumlarını yazdırır.",
		entity_states_command_parameter_network_id = "ağ kimliği",
		entity_states_command_parameter_network_id_help = "Nesnenin ağ kimliği.",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "köşede",
		corner_command_help = "Yakındaki bir kişiye uyuşturucu satın. Sattığın uyuşturucu, bulunduğun konuma bağlıdır.",
		corner_command_substitutes = "",

		corner_debug_command = "köşe_hata_ayıklama",
		corner_debug_command_help = "Tüm satış alanlarını gösterir.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "temizle_arayüzler",
		clear_uis_command_help = "Tüm arayüz odaklarını temizler.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "arayüz_odaklamaları",
		interface_focuses_command_help = "Hangi arayüzlerin odaklandığını kontrol edin.",
		interface_focuses_command_substitutes = "arayüz_odaklama, odak, odaklamalar",

		--jobs/duty
		toggle_duty_status_command = "görev_durumu",
		toggle_duty_status_command_help = "Görev durumunuzu açıp/kapatır.",
		toggle_duty_status_command_parameter_server_id = "sunucu id",
		toggle_duty_status_command_parameter_server_id_help = "Hedef sunucu id'si ya da kendinizin görev durumunu açıp/kapatmak için boş bırakınız.",
		toggle_duty_status_command_substitutes = "görev_durumu, görev",

		toggle_training_command = "eğitim_durumu",
		toggle_training_command_help = "Eğitim durumunuzu açıp/kapatır.",
		toggle_training_command_substitutes = "eğitim",

		toggle_operator_status_command = "acil_durum_operatör_durumunu_değiştir",
		toggle_operator_status_command_help = "Acil durum operatör durumunuzu açın veya kapatın. Bu açık olduğunda, 911 çağrılarını kabul etme seçeneğini alacaksınız.",
		toggle_operator_status_command_substitutes = "operatör, operatör_durumunu_değiştir, acil_durum_operatör",

		-- jobs/police
		aim_assist_command = "nişan_yardımı",
		aim_assist_command_help = "PD nişan yardımını açar veya kapatır. (Nathan Spencer'ın anısına.)",
		aim_assist_command_substitutes = "",

		undercover_command = "gizli",
		undercover_command_help = "Gizli olduğunuzu gösterir veya göstermez. Bu, normalde polis durumunuzu ortaya çıkaracak çeşitli şeyleri gizler.",
		undercover_command_substitutes = "",

		active_robberies_command = "aktif_soygunlar",
		active_robberies_command_help = "Açık olan tüm mağazaları, bankaları ve mücevher dükkanlarını listeler.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_çekme",
		pd_impound_command_help = "Bu komut, bir oyuncunun aracını belirli bir süre için çeker.",
		pd_impound_command_parameter_minutes = "dakika",
		pd_impound_command_parameter_minutes_help = "Araç ne kadar süreyle (1 dakika ile 12 saat arasında) çekilecek.",
		pd_impound_command_substitutes = "",

		dispatch_command = "görevlendirme",
		dispatch_command_help = "Polis birimine bir mesaj gönderir.",
		dispatch_command_parameter_message = "mesaj",
		dispatch_command_parameter_message_help = "Göndermek istediğiniz mesaj.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "polis_sürüş_modu",
		police_drive_mode_command_help = "Polis aracının sürüş modunu açıp kapatın.",
		police_drive_mode_command_parameter_mode = "mod",
		police_drive_mode_command_parameter_mode_help = "Ayarlamak istediğiniz mod. Sürüş için \"D\", spor için \"S\" (varsayılan spor modudur).",
		police_drive_mode_command_substitutes = "sürüş_modu",

		-- jobs/state
		license_give_command = "lisans_ver",
		license_give_command_help = "Bir lisans ver.",
		license_give_command_parameter_character_id = "karakter id",
		license_give_command_parameter_character_id_help = "Lisansı vermek istediğiniz karakterin ID'si.",
		license_give_command_parameter_license = "lisans",
		license_give_command_parameter_license_help = "Vermek istediğiniz lisans. Mevcut lisansları `/license_list` komutunu kullanarak listeleyebilirsiniz.",
		license_give_command_substitutes = "ehliyet_ver, ehliyet_ekle",

		license_remove_command = "ehliyet_sil",
		license_remove_command_help = "Bir ehliyeti siler.",
		license_remove_command_parameter_character_id = "karakter id",
		license_remove_command_parameter_character_id_help = "Ehliyeti silmek istediğiniz karakterin kimliği.",
		license_remove_command_parameter_license = "ehliyet",
		license_remove_command_parameter_license_help = "Kaldırmak istediğiniz ehliyet. Mevcut ehliyetleri `/license_list` komutuyla listeyebilirsiniz.",
		license_remove_command_substitutes = "lisans_sil",

		license_list_command = "lisans_listesi",
		license_list_command_help = "Tüm mevcut lisansları listeler.",
		license_list_command_substitutes = "lisanslar_listesi, lisanslar_listele",

		licenses_check_command = "lisanslar_kontrol",
		licenses_check_command_help = "Birinin lisanslarını kontrol eder.",
		licenses_check_command_parameter_character_id = "karakter kimliği",
		licenses_check_command_parameter_character_id_help = "Lisanslarını kontrol etmek istediğiniz karakterin kimliği.",
		licenses_check_command_substitutes = "lisans_kontrol, lisanslar_kontrol_et, lisans_kontrol_et",

		licenses_command = "lisanslar",
		licenses_command_help = "Lisanslarınızı görüntüleyin.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "tamirci_mesajlarını_aç_kapat",
		toggle_mechanic_messages_command_help = "Tamirci mesajlarını almaya devam edip etmeyeceğinizi açar veya kapatır.",
		toggle_mechanic_messages_command_substitutes = "tamirci_mesajları",

		-- vehicles/boats
		toggle_anchor_command = "çapa_aç_kapat",
		toggle_anchor_command_help = "Yakındaki bir teknenin çapasını açıp kapatır.",
		toggle_anchor_command_substitutes = "çapa",

		-- vehicles/damage
		vehicle_damage_debug_command = "araç_hasar_ayrıntısı",
		vehicle_damage_debug_command_help = "Araçtaki mevcut hasar değerlerini hata ayıklar.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "Bulunduğunuz aracın yakıt seviyesini belirler.",
		set_fuel_command_parameter_fuel_level = "yakıt seviyesi",
		set_fuel_command_parameter_fuel_level_help = "Belirlemek istediğiniz yakıt seviyesi. Boş bırakırsanız `100` otomatik olarak seçilir.",
		set_fuel_command_substitutes = "yakıt",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "Araç garaj hata ayıklama ekranını açar veya kapatır.",
		toggle_garage_debug_command_substitutes = "garaj_hata_ayıklama",

		-- vehicles/keys
		give_key_command = "anahtar_ver",
		give_key_command_help = "Yakındaki bir kişiye araç anahtarı verin.",
		give_key_command_parameter_server_id = "sunucu kimliği",
		give_key_command_parameter_server_id_help = "Anahtarı vermek istediğiniz oyuncunun sunucu kimliği. Bu boş bırakılabilir (veya 0), en yakın kişiye vermek için.",
		give_key_command_substitutes = "anahtarver",

		hotwire_vehicle_command = "aracı_direkt_çalıştır",
		hotwire_vehicle_command_help = "Bulunduğunuz aracı anında çalıştırın.",
		hotwire_vehicle_command_parameter_server_id = "sunucu kimliği",
		hotwire_vehicle_command_parameter_server_id_help = "Başka bir oyuncunun içinde bulunduğu aracı anında çalıştırın.",
		hotwire_vehicle_command_substitutes = "kablolu",

		pickup_keys_command = "anahtarlari_al",
		pickup_keys_command_help = "En yakın aracın anahtarlarını almanızı sağlar.",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "jant_ayarı",
		wheel_offset_command_help = "Bir aracın jantlarının ayarını değiştirir.",
		wheel_offset_command_parameter_wheels = "ön/arka",
		wheel_offset_command_parameter_wheels_help = "Hangi jantları değiştirmek istersiniz?",
		wheel_offset_command_parameter_value = "değer",
		wheel_offset_command_parameter_value_help = "Değiştirilmesini istediğiniz miktar. Bu -0.15 ila 0.15 arasında herhangi bir değer olabilir (0 varsayılan).",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "teker_dondur",
		wheel_rotation_command_help = "Araç tekerleklerinin dönüşünü değiştirin.",
		wheel_rotation_command_parameter_wheels = "ön/arka",
		wheel_rotation_command_parameter_wheels_help = "Hangi tekerlekleri değiştirmek istiyorsunuz?",
		wheel_rotation_command_parameter_value = "değer",
		wheel_rotation_command_parameter_value_help = "Değiştirilmesini istediğiniz miktar. Bu, varsayılanın -0,5 ile 0,5 arasında olabileceği 0'dan herhangi bir yer olabilir.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "sahte_plaka",
		fake_plate_command_help = "Mevcut aracın sahte plakasını açar/kapatır.",
		fake_plate_command_substitutes = "",

		plate_available_command = "plaka_musait",
		plate_available_command_help = "`/özel_plaka` komutu için bir plakanın müsait olup olmadığını kontrol edin.",
		plate_available_command_parameter_plate_number = "plaka numarası",
		plate_available_command_parameter_plate_number_help = "Kontrol etmek istediğiniz plaka numarası. Plaka numaraları yalnızca büyük harf ve rakamlardan oluşabileceği gibi en fazla 8 karakterden oluşabilir.",
		plate_available_command_substitutes = "",

		custom_plate_command = "özel_plaka",
		custom_plate_command_help = "Araçlarınız için özel bir plaka ayarlayın.",
		custom_plate_command_parameter_vehicle_id = "araç kimliği",
		custom_plate_command_parameter_vehicle_id_help = "Özel plakanın yerleştirileceği araç kimliği. (Bu kimliği garajınızda bulabilirsiniz)",
		custom_plate_command_parameter_plate_number = "plaka numarası",
		custom_plate_command_parameter_plate_number_help = "Ayarlamak istediğiniz plaka numarası. Plaka numaraları en fazla 8 karakterden oluşabilir ve yalnızca büyük harfler ve sayılar içerebilir.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "IFR modunu açıp kapatır (Yakındaki pistler için iniş yardımını gösterir).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "sirenleri_sustur",
		mute_sirens_command_help = "Tüm sirenleri ve klaksonları susturur.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "ters_cevir",
		flip_command_help = "Ters çevrilen bir aracı düzeltir.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "roll_ve_hava_kontrolunu_aç_kapat",
		toggle_roll_control_command_help = "Roll ve hava kontrolünü açıp kapar.",
		toggle_roll_control_command_substitutes = "roll_kontrolü",

		enable_ls_customs_command = "ls_customs_menu_ac",
		enable_ls_customs_command_help = "LS Customs menüsünü açar ya da kapatır.",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "vites_animasyonunu_aç_kapat",
		toggle_gear_animation_command_help = "Araçlardaki vites değiştirme animasyonlarını ve seslerini açıp kapatır.",
		toggle_gear_animation_command_substitutes = "vites_animasyonu, vites_sesleri",

		turtle_vehicle_command = "araci_turtle_et",
		turtle_vehicle_command_help = "Aracınızı çatısına doğru tepeüstü çevirir.",
		turtle_vehicle_command_substitutes = "turtle",

		door_command = "kapı",
		door_command_help = "Bir aracın kapısını açar veya kapatır.",
		door_command_parameter_door_id = "kapı numarası (1-6)",
		door_command_parameter_door_id_help = "Hangi araç kapısını açmak istersiniz? Bu parametre, yolcu iseniz üzerine yazılır. Ayrıca, araç dışında da bu komutu kullanabilirsiniz.",
		door_command_substitutes = "",

		window_command = "pencere",
		window_command_help = "Bir aracın penceresini açıp kapatın.",
		window_command_parameter_window_id = "pencere kimliği (1-4)",
		window_command_parameter_window_id_help = "Hangi araç penceresini açmak istersiniz? Bu parametre, yolcu iseniz üzerine yazılır.",
		window_command_substitutes = "",

		shuffle_command = "karıştır",
		shuffle_command_help = "Başka bir araç koltuğuna geçiş yapar.",
		shuffle_command_substitutes = "shuff",

		seat_command = "koltuk",
		seat_command_help = "Başka bir araç koltuğuna geçiş yapar.",
		seat_command_parameter_seat_id = "koltuk id'si (1-6)",
		seat_command_parameter_seat_id_help = "Hangi koltuğa geçmek istersiniz?",
		seat_command_substitutes = "",

		engine_command = "motor",
		engine_command_help = "Araç motorunu açıp kapatır.",
		engine_command_substitutes = "",

		mileage_command = "kilometre",
		mileage_command_help = "Bir aracın kilometre bilgisini kontrol eder.",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "frenleri_devre_disi_birak",
		toggle_disabled_brakes_command_help = "En yakın aracın frenlerini devre dışı bırakır veya etkinleştirir.",
		toggle_disabled_brakes_command_substitutes = "frenleri_kapat",

		manual_toggle_command = "manuel_degisim",
		manual_toggle_command_help = "Arabaların viteslerini manuel olarak kontrol etmek isteyip istemediğinizi açar veya kapatır.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "hiz_siniri",
		speed_limiter_command_parameter_speed = "hiz",
		speed_limiter_command_parameter_speed_help = "Hız sınırlandırıcının hangi hızı kullanmasını istersiniz? Bu alanı boş bırakarak sıfırlayabilirsiniz, böylece normal davranışına dönecektir.",
		speed_limiter_command_help = "Aşırı hız sınırlandırıcısının normal davranışını değiştirerek hız sınırını önceden ayarlamak için kullanılır.",
		speed_limiter_command_substitutes = "sl, cc, cruise_control",

		add_vehicle_command = "araç_ekle",
		add_vehicle_command_help = "Bir aracı birinin garajına ekler.",
		add_vehicle_command_parameter_model = "model",
		add_vehicle_command_parameter_model_help = "Eklemek istediğiniz aracın model adı veya model hash kodu.",
		add_vehicle_command_parameter_server_id = "sunucu id",
		add_vehicle_command_parameter_server_id_help = "Bir oyuncuya araç vermek için sunucu ID'si. Bu alanı boş bırakmak otomatik olarak kendinizi seçecektir.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "araç_silahlarını_aç_kapa",
		toggle_vehicle_weapons_command_help = "Bir aracın silahlarının kullanılıp kullanılamayacağı durumunu açıp/kapar.",
		toggle_vehicle_weapons_command_parameter_server_id = "sunucu kimliği",
		toggle_vehicle_weapons_command_parameter_server_id_help = "Araç silahlarını açıp/kapamak istediğiniz oyuncunun sunucu kimliği. Bu alanı boş bırakırsanız, otomatik olarak kendiniz seçilir.",
		toggle_vehicle_weapons_command_substitutes = "araç_silahları",

		wheelie_command = "tekerlek_üstünde_yürüme",
		wheelie_command_help = "Tekerlek üstünde yürüme modunu açar/kapatır. (Bir araçta iken şift tuşuna basılır.)",
		wheelie_command_parameter_power_level = "güç seviyesi",
		wheelie_command_parameter_power_level_help = "Uygulanacak boost miktarı (varsayılan olarak 2,5'tir, tek tekerlek havalanması çok güçlüyseniz, azaltın, çok zayıfsa arttırın).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_numarası",
		vin_number_command_help = "Sürdüğünüz aracın VIN numarasını döndürür.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_sorgula",
		vin_lookup_command_help = "Bir aracın VIN numarasını sorgular.",
		vin_lookup_command_parameter_vin_number = "vin numarası",
		vin_lookup_command_parameter_vin_number_help = "Kontrol etmek istediğiniz araç kimlik numarası.",
		vin_lookup_command_substitutes = "arama_vin, av",

		-- weapons/ammo
		fill_ammo_command = "mühimmat_doldur",
		fill_ammo_command_help = "Tüm silahlarınızın mühimmatını doldurur.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "nişangah",
		crosshair_command_help = "Nişangahı açıp kapatır.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "nişan_al",
		aim_down_sight_command_help = "Üçüncü kişi kamerada olsanız bile, sağ tıklama yaparken otomatik olarak nişan almanızı sağlar.",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/weapons
		check_ammo_command = "mühimmat_kontrolü",
		check_ammo_command_help = "Şu anda tuttuğunuz silah için toplamda kaç mühimmatınız olduğunu kontrol eder.",
		check_ammo_command_substitutes = "mühimmat",

		toggle_airsoft_mode_command_command = "havali_tüfek_modunu_aç/kapat",
		toggle_airsoft_mode_command_command_help = "Havalı tüfek modunu açar/kapatır (sunucu çapında), bu tüm silahların zararını önemli ölçüde azaltır.",
		toggle_airsoft_mode_command_command_substitutes = "havalı_tüfek_modu, havali_tufek, havalı_tüfek",

		toggle_folded_stock_command_command = "katlanabilir_stok_modunu_aç/kapat",
		toggle_folded_stock_command_command_help = "Şu anda tuttuğunuz silahın katlanabilir kundakını açıp kapatır.",
		toggle_folded_stock_command_command_substitutes = "katlanabilir_kundak, kundak"
	},

	connections = {
		your_account_is_connecting = "Hesabınız yeni bir oturumdan bağlanıyor."
	},

	controls = {
		menu_control_up = "Menü Yukarı",
		menu_control_down = "Menü Aşağı",
		menu_control_left = "Menü Sol",
		menu_control_right = "Menü Sağ",

		menu_control_up_alternative = "Menü Yukarı (Alternatif)",
		menu_control_down_alternative = "Menü Aşağı (Alternatif)",
		menu_control_left_alternative = "Sol Alternatif Menü",
		menu_control_right_alternative = "Sağ Alternatif Menü"
	},

	core = {
		version = "Versiyon"
	},

	discord = {
		one_player = "1 oyuncu",
		multiple_players = "${playerAmount} oyuncu",
		join_with_fivem = "FiveM ile katıl",
		discord_guild = "Discord Sunucusu",
		richer_presence_on = "Daha zengin varlık özelliği şimdi açık.",
		richer_presence_off = "Daha zengin varlık özelliği şimdi kapalı."
	},

	emojis = {
		emoji_list = "${emojis}",
		refresh_emojis_no_permissions = "Oyuncu, yeterli izinlere sahip olmadan emojileri yenilemeyi denedi.",
		api_reported_no_updates = "Discord API'sinde emoji listesinde güncelleme bulunamadı.",
		emojis_added = "${added} adet emoji eklendi.",
		emojis_removed = "${removed} adet emoji kaldırıldı.",
		emojis_updated = "${added} adet emoji eklendi ve ${removed} adet emoji kaldırıldı."
	},

	errors = {
		script_location = "Script Konumu",
		additional_information = "Ek Bilgiler",
		error_report = "Hata Raporu",
		send_report = "Raporu Gönder",
		abort_report = "Raporu İptal Et",
		input_placeholder = "Bu hatanın oluşma sebebini lütfen bize bildirin...",
		oh_no = "Oh hayır,",
		an_error_has_occurred = "bir hata meydana geldi!",
		error_occured_information = "Bu, bir şeyin düzgün çalışmadığını veya amaçlanan şekilde çalışmadığını gösterir. Bu hatanın tetiklendiği sırada ne yaptığınıza dair ek ayrıntılar sağlayarak bize bu sorunu çözmeye yardımcı olmanızı istirham ediyoruz."
	},

	ping = {
		get_pings_missing_permissions = "Oyuncu ping'leri almaya çalıştı ancak bunu yapmak için gerekli izinlere sahip değildi.",
		getting_pings = "Tüm oyunculardan ping'ler alınıyor. Bu birkaç saniye sürebilir.",
		host_data = "${position}. ${location} - ${totalPings} müşteri için ${averagePing} Ortalama Ping, %10 Düşük: ${averagePingLow}, %10 Yüksek: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "Profil hata ayıklama etkinleştirildi. Çıktı için F8 konsolunu kontrol edin.",
		profile_debug_disabled = "Profil hata ayıklama devre dışı bırakıldı."
	},

	queue = {
		joining_the_queue = "Sıraya katılıyor...",
		timed_out_before_joining = "Sunucuya katılmadan önce zaman aşımına uğradınız.",
		server_reload_while_in_loading = "Sunucunun çekirdeği yeniden başlatılıyor ve düzgün yüklenemediğiniz için otomatik olarak atıldınız.",
		server_reload_while_in_queue = "Sunucu yeniden başlatılıyor. Lütfen yeniden sıraya girin.",
		took_too_long_to_connect = "Bağlanmak için çok uzun süre beklediniz!",
		queue_position_with_priority = "🐌 ${priorityName} önceliğiyle ${queueLength} kişilik kuyrukta ${queueEntryId}. sırasındasın. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 ${queueLength} kişilik kuyrukta ${queueEntryId}. sırasındasın. 🕐${queueTime}\nSıra beklemeden oyuna girmek istiyorsan bizi destekleyebilirsin!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nSıkıldın mı? Bu yayıncılara göz at!\n${streamers}",
		server_is_starting = "Sunucu başlatılıyor...",
		cancelled_before_server_start = "Sunucu başlatılmadan bağlantı kesildi.",
		kicked_from_queue = "Sıradan `${reason}` nedeniyle atıldın.",
		kicked_from_queue_no_reason = "Belirtilmeyen bir nedenle sıradan atıldın.",
		missing_slots_parameter = "`slots` parametresi eksik.",
		invalid_slots_parameter = "Geçersiz `slots` parametresi.",
		slots_parameter_out_of_range = "The `slots` parameter has to be between `0` and `1025`.",
		slots_already_set_to = "The server slots are already set to `${slots}`.",
		slots_set_to = "The server slots have now been set to `${slots}`.",

		invalid_license_identifier_parameter = "Missing or invalid 'licenseIdentifier' parameter.",
		invalid_target_position_parameter = "Missing or invalid 'targetPosition' parameter.",
		player_not_found_in_queue = "The player was not found in the queue.",
		player_queue_moved_success = "The player's position in the queue has been updated.",
		player_queue_skipped_success = "Oyuncu sırayı başarıyla atladı.",
		queue_is_not_ready = "Sıra hazır değil, bu yüzden atlanamaz.",

		welcome_to = "Hoş geldiniz"
	},

	restart = {
		restart_30_minutes = "Sunucu 30 dakika içinde yeniden başlatılacak!",
		restart_15_minutes = "Sunucu 15 dakika içinde yeniden başlatılacak!",
		restart_10_minutes = "Sunucu 10 dakika içinde yeniden başlatılacak!",
		restart_5_minutes = "Sunucu 5 dakika içinde yeniden başlatılacak!",
		restart_3_minutes = "Sunucu 3 dakika içinde yeniden başlatılacak!",
		restart_2_minutes = "Sunucu 2 dakika içinde yeniden başlatılacak!",
		restart_1_minute = "Sunucu 1 dakika içinde yeniden başlatılacak!",
		server_restarting = "Sunucu yeniden başlatılıyor. Birkaç dakika içinde tekrar katılabilirsiniz.",
		executed_restart_command = "Yeniden başlatma komutu yürütüldü.",
		already_executed_restart_command = "Yeniden başlatma komutu zaten yürütüldü."
	},

	routes = {
		route_not_found = "Rota ${route} bulunamadı.",
		route_restricted = "Rota ${route} kısıtlı.",
		internal_server_error = "İç sunucu hatası."
	},

	users = {
		playtime = "Oynama Süresi",
		player_playtime = "${playerName} (Pozisyon ${position})\nToplam Oynama Süresi: ${totalPlaytime}\nOturum Oynama Süresi: ${sessionPlaytime}",
		leaderboard = "Lider Tablosu",
		your_position = "Sizin pozisyonunuz",
		logs_user_reject_connection_title = "Bağlantı Reddedildi",
		logs_user_reject_connection_details = "${consoleName} kullanıcısının bağlantısı reddedildi (`${reason}`).",
		logs_user_connected_title = "Kullanıcı Bağlandı",
		logs_user_connected_details = "${consoleName} sunucuya bağlandı.",
		logs_user_joined_title = "Kullanıcı Katıldı",
		logs_user_joined_details = "${consoleName} sunucuya katıldı.",
		logs_user_dropped_title = "Kullanıcı Bağlantısı Kesildi",
		logs_user_dropped_details = "${consoleName} ${playtime} oynadıktan sonra `${reason}` nedeniyle sunucudan bağlantısını kesti.",
		logs_character_loaded_title = "Karakter Yüklendi",
		logs_character_loaded_details = "${consoleName} adlı kullanıcı ${fullName} (${characterId}) karakterini yükledi.",
		logs_character_unloaded_title = "Karakter Yüklemesi Kaldırıldı",
		logs_character_unloaded_details = "${consoleName} adlı kullanıcı ${fullName} (${characterId}) karakterini yüklemesi kaldırdı.",
		logs_character_unloaded_details_reason = "${consoleName} adlı kullanıcı ${fullName} (${characterId}) karakterini `${reason}` sebebiyle yüklemesi kaldırdı.",
		logs_character_created_title = "Karakter Oluşturuldu",
		logs_character_created_details = "${consoleName} adlı kullanıcı ${fullName} (${characterId}) karakterini oluşturdu.",
		logs_character_deleted_title = "Karakter Silindi",
		logs_character_deleted_details = "${consoleName}, ${fullName} (${characterId}) karakterini sildi.",
		server_core_is_restarting = "Sunucunun çekirdeği yeniden başlatılıyor.",
		you_timed_out = "Bağlantınız zaman aşımına uğradı!",
		kicked_for_no_specified_reason = "Belirtilmemiş bir nedenle atıldınız.",
		kicked_player = "Oyuncu atıldı.",
		kicked_player_and_removed_reconnect_priority = "Oyuncu atıldı ve yeniden bağlanma önceliği kaldırıldı.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Oyuncu atıldı ve yeniden bağlanma önceliği kaldırılamadı.",
		removed_player_from_queue = "Sıradan oyuncu kaldırıldı.",
		player_not_found = "Oyuncu bulunamadı.",
		missing_license_identifier = "`licenseKimliği` eksik.",
		package = "Paket",
		package_updated = "Paketiniz `${packageName}` olarak güncellendi.",
		package_updated_remaining_time = "Paketiniz `${packageName}` olarak güncellendi. Kalan süresi ${remainingTime}.",
		package_expired = "Paketiniz süresi dolmuştur.",
		package_same = "Paketiniz `${packageName}` olarak aynıdır.",
		package_same_remaining_time = "Paketiniz `${packageName}` olarak aynıdır. Kalan süresi ${remainingTime}.",
		no_package = "Paketiniz yok.",
		fetching_package_error = "Paket verilerinizi almaya çalışırken bir hata oluştu.",
		check_playtime_not_staff = "Oyuncu, başka birinin oynama süresini kontrol etmeye çalıştı ancak buna izin veren yetkisi yoktu.",
		reason_unknown = "Neden bilinmiyor.",

		unloaded_character = "Yüklenmemiş karakter.",
		user_does_not_have_sent_character_loaded = "Kullanıcının gönderilen karakteri yüklenmemiş.",
		user_has_no_character_loaded = "Kullanıcının yüklenmiş herhangi bir karakteri yok.",
		user_not_found = "Sunulan kullanıcı sunucuda bulunamadı.",
		invalid_character_id = "Geçersiz karakter kimliği parametresi gönderildi.",
		invalid_license_identifier = "Geçersiz lisans tanımlayıcısı parametresi gönderildi.",

		unload_character_not_staff = "Oyuncu, personel olmadan bir oyuncunun karakterini yüklemeye çalıştı.",

		unloaded_character_for_player_logs_title = "Oyuncu İçin Karakter Yüklemesi Kaldırıldı",
		unloaded_character_for_player_logs_details = "${consoleName} ${message} nedeniyle ${targetConsoleName}'in ${characterFullName} (${characterId}) karakterini yükledi.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName}, herhangi bir belirtilmiş sebep olmayan şekilde ${targetConsoleName}'ın karakteri ${characterFullName} (${characterId}) boşaltıldı.",
		unloaded_character_self_logs_title = "Karakteri Boşaltıldı",
		unloaded_character_self_logs_details = "${consoleName}, `${message}` sebebi ile kendi karakteri ${characterFullName} (${characterId}) boşalttı.",
		unloaded_character_self_no_reason_logs_details = "${consoleName}, herhangi bir belirtilmiş sebep olmayan şekilde kendi karakterini ${characterFullName} (${characterId}) boşalttı.",

		unloaded_character_for_user = "${consoleName} için ${characterFullName} (${characterId}) karakteri yüklenmedi.",
		user_with_server_id_has_no_character_loaded = "Sunucu kimlik numarası `${serverId}` olan kullanıcının yüklenmiş bir karakteri yok.",
		user_with_server_id_not_found = "Sunucu kimlik numarası `${serverId}` olan kullanıcı bulunamadı.",

		custom_plate = "Özel Plaka",
		custom_character_id = "Özel Karakter Kimliği",
		custom_phone_number = "Özel Telefon Numarası",
		reskin = "Reskin",

		no_player_packages = "Herhangi bir oyuncu paketiniz yok.",
		player_packages = "Oyuncu Paketleri:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "Takdir Edilen Tier",
		respected_tier = "Saygıdeğer Tier",
		heroic_tier = "Kahramanca Tier",
		legendary_tier = "Efsanevi Tier",
		godlike_tier = "Tanrısal Tier"
	},

	-- game/*
	admin_menu = {
		menu_title = "Yönetici Menüsü",
		spectate_player = "Oyuncuya Bak",
		teleport_player = "Oyuncuya Taşı",
		teleport_player_here = "Oyuncuyu Kendine Taşı",
		failed_teleport_to_player = "Oyuncuya taşıma başarısız oldu.",
		failed_teleport_player_here = "Oyuncuyu kendine taşıma başarısız oldu.",
		invalid_target_server_id = "Geçersiz hedef sunucu kimliği.",
		invalid_destination_server_id = "Geçersiz varış sunucu kimliği.",
		invalid_source_server_id = "Geçersiz kaynak sunucu kimliği.",
		failed_teleport_player_to_player = "Oyuncuyu diğer oyuncuya telef etme başarısız oldu.",
		teleported_player_to_player = "Oyuncu diğer oyuncuya telef edildi.",

		teleport_player_missing_permissions = "Bir oyuncu oyunucu telef etmeye çalıştı, ancak bunu yapmak için yeterli yetkiye sahip değil."
	},

	afk = {
		you_are_afk = "AFK'sınız. Karakteriniz yakında yüklenmeyecek.",
		move_mouse = "AFK olmamak için fareni hareket ettir.",
		you_have_been_unloaded_for_being_afk = "Uzun bir süre AFK kaldığınız için yükleme işleminden çıkarıldınız. Bir dahaki sefere karakter seçim ekranına gidin."
	},

	airdrops = {
		create_airdrop_missing_permissions = "Bir oyuncu bir hava indirimi oluşturmaya çalıştı ancak bunu yapmak için gerekli izinlere sahip değildi.",
		created_airdrop = "Toplam ${itemAmount} öğe içeren ${airdropType} tipinde bir hava indirimi oluşturuldu."
	},

	airports = {
		airport = "Havaalanı",
		press_to_access_spawner = "Aracı çıkarmak için ~INPUT_CONTEXT~ tuşuna basın.",
		no_spawner_licenses = "Aracın spawnunu yapmak için herhangi bir lisansınız yok.",
		vehicle_lists = "Araç Listeleri",
		parked_vehicle = "Araç park edildi.",
		press_to_park_vehicle = "Araç park etmek için ~INPUT_CONTEXT~ tuşuna basın.",
		no_vehicle_to_park = "Park edilecek araç yok.",
		park_vehicle = "Araç Parkı",
		park_vehicle_outside = "Araç Dışında Park Et",
		close_menu = "Menüyü Kapat",
		spawned_vehicle = "Aracın spawnu yapıldı.",
		spawner_on_timeout = "Araç spawnu hakkınızı geçici süreyle kaybettiniz. Lütfen tekrar deneyiniz.",
		spawn_area_not_clear = "Spawn bölgesi açık değil.",
		return_button = "Geri Dön",
		deposit = "${amount} Depozito",
		no_deposit = "Depozito Yok",
		deposit_not_enough_money = "Depozitoyu ödeyecek kadar paranız yok."
	},

	airstrike = {
		create_airstrike_missing_permissions = "Bir oyuncu hava saldırısı oluşturmaya çalıştı ancak bunu yapmak için gerekli izinlere sahip değillerdi.",

		airstrike_success = "Hava saldırısı başarıyla oluşturuldu.",
		airstrike_failed = "Hava saldırısı oluşturma başarısız oldu."
	},

	airsupport = {
		create_airsupport_missing_permissions = "Bir oyuncu hava desteği çağırmaya çalıştı ancak bunu yapmak için gerekli izinlere sahip değillerdi.",

		distance = "Mesafe: ${distance}${unit}",
		time_to_impact = "Yaklaşık Varış Süresi: ${timeToImpact}",

		out_of_range = "~r~OOR",

		km = "km",
		mi = "mil",

		airsupport_failed = "Hava desteği çağırma başarısız oldu."
	},

	alcohol = {
		now_sober = "Artık ayılsınız.",
		drunk_state_1 = "Hafif sarhoşsunuz.",
		drunk_state_2 = "Sarhoşsunuz.",
		drunk_state_3 = "Çok sarhoşsunuz.",
		drunk_state_4 = "Tehlikeli bir şekilde sarhoşsunuz."
	},

	alerts = {
		close = "Kapat",

		alert_title = "Uyarı",

		invalid_server_id = "Geçersiz sunucu kimliği.",
		missing_content = "Eksik içerik.",

		show_alert_success = "Başarıyla oyuncuya uyarı gösterildi.",
		show_alert_everyone_success = "Herkese başarıyla uyarı gösterildi.",
		show_alert_failed = "Oyuncuya uyarı gösterme başarısız oldu.",

		show_alert_missing_permissions = "Bir oyuncu başka bir oyuncuya uyarı göstermeye çalıştı, ancak gerekli izinlere sahip değildi."
	},

	arcade = {
		use_arcade_machine = "Arcade Makinesini kullanmak için ~INPUT_CONTEXT~ tuşuna basın. Fiyatı $${cost}.",
		finished_arcade_logs_title = "Arcade Tamamlandı",
		finished_arcade_logs_details = "${consoleName}, ${score} puan ile bir arcade oyununu tamamladı."
	},

	archives = {
		press_to_access_archives = "Arşivlere erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		archives_title = "Arşivler",
		no_archives = "Burada arşiv yok.",
		close_menu = "Menüyü kapat",
		archive_label = "Vaka No. ${case}",

		failed_get_archives = "Arşivler alınamadı.",
		failed_not_on_duty = "Görevde değilsiniz.",

		archive_created = "Vaka no ${case} olan arşiv başarıyla oluşturuldu.",
		invalid_case_number = "Geçersiz vaka numarası (1 ile 99999 arasında bir tamsayı olmalıdır).",
		not_near_archive = "Bir arşiv yakınında değilsiniz.",
		failed_create_archive = "Arşiv oluşturma başarısız oldu.",
		archive_already_exists = "Bu arşivde zaten bir işlem numarası mevcut.",
		archive_destroyed = "${case} işlem numaralı arşiv başarıyla silindi.",
		archive_maximum_case_count = "Yeni bir işlem oluşturamazsınız.",
		failed_destroy_archive = "Arşiv silme başarısız.",
		destroy_not_empty = "Sadece boş arşivleri silebilirsiniz.",

		create_archive_logs_title = "Arşiv oluşturuldu",
		create_archive_logs_details = "${consoleName} ${archiveName} arşivinde ${caseNumber} işlem numaralı bir işlem oluşturdu.",
		destroy_archive_logs_title = "Arşiv Yıkıldı",
		destroy_archive_logs_details = "${consoleName}`${caseNumber}` numaralı dosyayı `${archiveName}` arşivinden sildi."
	},

	arena = {
		player_died = "${name} öldü.",
		player_killed = "${killerName} kişisi ${name}'i ${deathCause} (${distance}m) mesafeden öldürdü.",
		hud_info = "Oyuncu Sayısı: ${playerAmount}\n\nÖlümler: ${deaths}\nÖldürme Sayısı: ${kills}",
		press_to_access_menu = "Arena menüsüne erişmek için ~INPUT_INTERACTION_MENU~ tuşuna basın.",
		this_command_is_only_for_arena = "Bu komut yalnızca Arena için geçerlidir.",
		stand_still_to_respawn = "Yeniden doğmak için 5 saniye boyunca hareketsiz durun.",
		respawn_cancelled = "Yeniden doğma hareket ettiğiniz için iptal edildi.",
		arena_suicide_reason = "İntihar",
		arena = "Arena",
		ordered_airdrop = "Hava Yoluyla Teslimat Sipariş Edildi",

		store = "Mağaza",
		team = "Takım",
		leaderboard = "Liderlik Tablosu",
		search = "Ara",
		add_to_cart = "Sepete Ekle",
		unlocks_at_level = "Seviye ${level}'da açılır",
		show_vehicles = "Araçları Göster",
		hide_vehicles = "Araçları Gizle",
		balance = "Bakiye: $${balance}",
		shopping_cart = "${items} Ürün ($${cost})",
		buy_now = "Şimdi Satın Al",
		call_airdrop = "Hava İndirme Çağır",
		empty = "Boş",
		clear_cart = "Sepeti Temizle",
		can_not_afford = "Karşılayamıyorsun",
		brokie_lol = "Sensin Brokie lol",
		confirmation_exit_arena = "Arenadan çıkmak istediğinize emin misiniz?",
		confirmation_buy_now = "${label}'yi $${cost} karşılığında satın almak istediğinize emin misiniz?",
		yes = "Evet",
		no = "Hayır",
		empty_slot = "Boş Yuva",
		team_name = "Takım Adı",
		level = "Seviye",
		arena = "Arena",
		battle_royale = "Savaş Kralı",
		arena_gun_game = "Arena Silah Oyunu",
		lottery = "Loto",
		daily_tasks = "Günlük Görevler",
		categories = "Kategoriler",
		refresh = "Yenile",
		refreshing = "Yenileniyor...",
		not_available = "Mevcut değil",

		kill = "Öldürme",
		headshot = "Kafa",
		killstreak = "Öldürme Serisi",
		assist = "Destek",

		level = "Seviye",
		position = "Pozisyon",
		name = "İsim",
		kills = "Öldürmeler",
		deaths = "Ölümler",
		kd = "Ö/B",
		hits = "Vuruşlar",
		hits_headshots = "Kafa Vuruşları",
		headshot_ratio = "Kafa Vuruş Oranı",
		damage_dealt = "Verilen Hasar",
		damage_taken = "Alınan Hasar",
		matches_played = "Maçlar",
		wins = "Kazanılanlar",
		win_ratio = "Kazanma Oranı",
		xp = "XP",
		money_won = "Kazanılan Para",
		average_percentage = "Ortalama Yüzde",
		streak = "Seri"
	},

	atms = {
		withdraw = "Para Çekme",
		deposit = "Para Yatırma",
		balance = "Bakiye",
		transfer = "Transfer",
		back = "Geri",

		amount = "Miktar",
		target = "Hedef",

		failed_deposit = "Para yatırılması başarısız oldu",
		failed_withdraw = "Para çekilmesi başarısız oldu",
		failed_transfer = "Para transferi başarısız oldu",

		processing = "İşleniyor...",
		counting_bills = "Faturalar sayılıyor...",

		something_went_wrong = "Bir şeyler yanlış gitti",
		error_not_online = "Hedefiniz çevrimiçi değil",
		error_not_enough_money = "Yetersiz bakiye.",
		deposit_amount_big = "ATM yatırımları 4.000 $ ile sınırlıdır.",
		withdraw_amount_big = "ATM çekimleri 6.000 $ ile sınırlıdır.",

		retrieving_card = "Kart alınıyor",
		atm_damaged = "Bu ATM hasar gördü",

		press_to_use = "ATM'yi kullanmak için ~g~${InteractionKey} ~w~tuşuna basın",
		press_to_interact_bank = "Bankayla etkileşim kurmak için ~g~${InteractionKey} ~w~tuşuna basın",

		deposit_log_bank_title = "Banka Yatırımı",
		deposit_log_atm_title = "ATM Yatırımı",
		deposit_log = "${consoleName}, ${amount} $ yatırdı.",

		withdraw_log_bank_title = "Banka Para Çekme",
		withdraw_log_atm_title = "ATM Para Çekme",
		withdraw_log = "${consoleName} ${amount}$ çekti.",

		transfer_log_title = "Banka Transferi",
		transfer_log = "${consoleName} (#${characterId}) ${amount}$ para ${targetConsoleName} (#${targetCharacterId}) hesabına transfer etti."
	},

	attachments = {
		cancel_attachments = "İptal",
		finish_attachments = "Tamamla",

		modifying_attachments = "${amount} Ek Parça Değiştiriliyor",

		failed_apply = "Parçaları uygulayamadınız.",
		no_item = "Silmeye çalıştığınız silah envanterinizde yok.",
		no_attachment = "Gerekli ek parçaya sahip değilsiniz.",
		no_paint = "Herhangi bir boya renginiz yok.",
		success = "Aksesuarlar başarıyla uygulandı.",

		not_available = "Envanterinizde bu aksesuar bulunmuyor.",

		attachment_label_suppressor = "Susturucu",
		attachment_label_flashlight = "Fener",
		attachment_label_extended_clip = "Uzatılmış Şarjör",
		attachment_label_extended_pistol_clip = "Uzatılmış Tabanca Şarjörü",
		attachment_label_extended_smg_clip = "Uzatılmış SMG Şarjörü",
		attachment_label_extended_shotgun_clip = "Uzatılmış Av Tüfeği Şarjörü",
		attachment_label_luxury = "Lüks Kaplama",
		attachment_label_incendiary = "Alevli Mermi",
		attachment_label_tracer = "Izleyici Mermi",
		attachment_label_hollow_point = "Boşluğa Sahip Mermi",
		attachment_label_scope = "Dürbün",
		attachment_label_grip = "Kavrama",
		attachment_label_drum = "Tambur Şarjörü",
		attachment_label_heavy_barrel = "Ağır Namlu",
		attachment_label_armor_piercing = "Zırh Delici Mermi",
		attachment_label_explosive = "Patlayıcı Mermi",
		attachment_label_sight = "Holografik Nişangah",
		attachment_label_pistol_sight = "Tabanca Nişangahı",
		attachment_label_fmj = "Tam Metal Ceket Mermileri",
		attachment_label_scope_nv = "Gece Görüşü Dürbünü",
		attachment_label_scope_thermal = "Termal Dürbün",

		attachment_label_luxury1 = "Şımarık",
		attachment_label_luxury2 = "Ballas",
		attachment_label_luxury3 = "Hustler",
		attachment_label_luxury4 = "Rock",
		attachment_label_luxury5 = "Kinaye Yapan",
		attachment_label_luxury6 = "Aşık",
		attachment_label_luxury7 = "Oyuncu",
		attachment_label_luxury8 = "Kral",
		attachment_label_luxury9 = "Vagos",

		attachment_label_luxury_knife_1 = "VIP Varyantı",
		attachment_label_luxury_knife_2 = "Korumalık Varyantı",

		attachment_label_stock_folded = "Katlanmış Dipçik",
		attachment_label_stock_unfolded = "Açılmış Dipçik",

		attachment_label_skin_patriotic = "Vatansever Skin",
		attachment_label_skin_brushstroke = "Fırça Darbesi Skin",
		attachment_label_skin_skull = "Kafatası Skin",
		attachment_label_skin_leopard = "Leopar Skin",
		attachment_label_skin_zebra = "Zebra Skin",
		attachment_label_skin_geometric = "Geometrik Skin",

		label_no_skin = "Skin Yok",

		no_tint = "Tint Yok",

		tint_normal_0 = "Siyah",
		tint_normal_1 = "Yeşil",
		tint_normal_2 = "Altın",
		tint_normal_3 = "Pembe",
		tint_normal_4 = "Ordu",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "Turuncu",
		tint_normal_7 = "Platin",

		tint_mk2_0 = "Klasik Siyah",
		tint_mk2_1 = "Klasik Gri",
		tint_mk2_2 = "Klasik İki Tonlu",
		tint_mk2_3 = "Klasik Beyaz",
		tint_mk2_4 = "Klasik Bej",
		tint_mk2_5 = "Klasik Yeşil",
		tint_mk2_6 = "Klasik Mavi",
		tint_mk2_7 = "Klasik Dünya",
		tint_mk2_8 = "Kahverengi & Siyah Klasik",
		tint_mk2_9 = "Kırmızı Kontrast",
		tint_mk2_10 = "Mavi Kontrast",
		tint_mk2_11 = "Sarı Kontrast",
		tint_mk2_12 = "Turuncu Kontrast",
		tint_mk2_13 = "Cesur Pembe",
		tint_mk2_14 = "Cesur Mor ve Sarı",
		tint_mk2_15 = "Cesur Turuncu",
		tint_mk2_16 = "Cesur Yeşil ve Mor",
		tint_mk2_17 = "Cesur Kırmızı Özellikler",
		tint_mk2_18 = "Cesur Yeşil Özellikler",
		tint_mk2_19 = "Cesur Cam Göbeği Özellikler",
		tint_mk2_20 = "Cesur Sarı Özellikler",
		tint_mk2_21 = "Cesur Kırmızı ve Beyaz",
		tint_mk2_22 = "Cesur Mavi ve Beyaz",
		tint_mk2_23 = "Metalik Altın",
		tint_mk2_24 = "Metalik Platin",
		tint_mk2_25 = "Metalik Gri & Leylak",
		tint_mk2_26 = "Metalik Mor & Limon Yeşili",
		tint_mk2_27 = "Metalik Kırmızı",
		tint_mk2_28 = "Metalik Yeşil",
		tint_mk2_29 = "Metalik Mavi",
		tint_mk2_30 = "Metalik Beyaz & Turkuaz",
		tint_mk2_31 = "Metalik Kırmızı & Sarı",

		tint_ray_0 = "Uzay Avcısı",
		tint_ray_1 = "Mor",
		tint_ray_2 = "Yeşil",
		tint_ray_3 = "Turuncu",
		tint_ray_4 = "Pembe",
		tint_ray_5 = "Altın",
		tint_ray_6 = "Platin",

		last_concat = "ve",

		attachments_logs_title = "Aksesuarlar ve Renkler",
		attachments_logs_details = "${consoleName} `${weaponName}` silahını değiştirdi: ${modifications}.",

		removed_attachments = "Ayrılmış ${removed}",
		added_attachments = "Eklenmiş ${added}",
		tint_changed = "${fromTint} renk tonundan ${toTint} renk tonuna değiştirildi"
	},

	audio = {
		audio_id = "Ses ${audioId}",
		illegal_sound_effect = "Diğer istemcilere harici bir ses oynatmaya çalışıldı.",
		url_invalid = "Sağlanan URL geçerli değil. Güvenli bir bağlantıda yüklenmiş olması gerekiyor. (https://)",
		url_missing = "Oynatmaya çalıştığınız sesin URL'sini ekleyin lütfen.",
		play_audio_no_permissions = "Oyuncu bir ses oynamaya çalıştı ancak buna izin veren gerekli izinlere sahip değildi.",
		played_audio_for_self = "Kendin için ses oynattın.",
		played_audio_for_player = "${consoleName} için ses oynattın.",
		played_audio_for_everyone = "Herkes için ses oynattın.",
		played_audio_effect_for_everyone_title = "Herkes İçin Ses Efekti Oynatıldı",
		played_audio_effect_for_everyone_details = "${consoleName} bir ses efekti oynattı ve bu efekt bağlantısı kullanıldı: `${url}`, ses seviyesi `${volume}` olarak ayarlandı.",
		played_audio_effect_for_player_title = "Belirli Bir Oyuncu İçin Ses Efekti Oynatıldı",
		played_audio_effect_for_player_details = "${consoleName} oyuncusu için ses efekti çaldı. Ses efektinin bağlantısı `${url}` ve ses seviyesi `${volume}` olarak ayarlandı."
	},

	balls = {
		press_to_pick_up_ball = "Topu almak için ~INPUT_CONTEXT~ tuşuna basın."
	},

	banana_peels = {
		slipped_logs_title = "Muz Kabuğu Kayması",
		slipped_logs_details = "${consoleName} ${slipForce} sırasında muz kabuğuna kaydı.",

		slip_0 = "yürüme",
		slip_1 = "koşma",
		slip_2 = "sprint atma"
	},

	bandaids = {
		label = "${type} Yara Bandı",

		baby_yoda = "Bebek-Yoda",
		batman = "Batman",
		care_bear = "Sevgi Ayısı",
		hello_kitty = "Merhaba Kitty",
		hotwheels = "Sıcak Tekerlekler",
		mc_queen = "Şimsek McQueen",
		minions = "Minyonlar",
		pony = "Benim Küçük Atım",
		power_puff = "Powerpuff Kızları",
		spiderman = "Örümcek Adam",
		star_wars = "Yıldız Savaşları",

		failed_random_bandaid = "Rastgele bir bandaj alınamadı.",

		received_bandaid_logs_title = "Bant Alındı",
		received_bandaid_logs_details = "${consoleName}, havadan nakil sonrasında 1x ${bandaid} aldı.",
		spawned_bandaid_logs_details = "${consoleName} kendisine 1x ${bandaid} verdi."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "Savaş Royale açma/ kapama işlemi başarısız oldu.",
		toggled_battle_royale_on = "Savaş Royale açıldı.",
		toggled_battle_royale_off = "Battle Royale kapalı hale getirildi.",
		battle_royale_info = "Battle Royale için sıraya alındınız!\nŞu anda sırada ${battleRoyaleQueueLength} kişi var.",
		toggle_battle_royale_missing_permissions = "Oyuncu Battle Royale'yi açmak için gerekli izinlere sahip olmadığı için açmaya çalıştı.",
		start_battle_royale_missing_permissions = "Oyuncu bir Battle Royale başlatmaya çalıştı ancak buna izni yoktu.",
		unable_to_start_battle_royale_not_active = "Battle Royale etkin olmadığından başlatılamadı.",
		not_enough_players_in_queue = "Sıraya yeterli oyuncu olmadığı için Savaş Royale başlatılamıyor.",
		zone_idling = "Bölge şu anda boşta.",
		zone_advancing = "Bölge şimdi ilerliyor.",
		player_died = "${name} öldü: ${remainingPlayers} oyuncu kaldı.",
		player_killed = "${name} ${distance}m mesafeden ${killerName} tarafından ${deathCause} sebebiyle öldürüldü: ${remainingPlayers} oyuncu kaldı.",
		player_won = "${name} kazandı!",
		your_team = "Senin Takımın:",
		received_lobby_invite = "${serverId} tarafından bir lobi davetiyesi aldınız. Katılmak için `/br_join ${serverId}` yazın!",
		unable_to_invite_yourself = "Kendinizi davet edemezsiniz.",
		unable_to_join_yourself = "Kendinize katılamazsınız.",
		player_already_invited = "ID `${serverId}`'li oyuncu zaten davet edilmiş.",
		sent_player_invite = "ID `${serverId}`'li oyuncuya davet gönderildi.",
		joined_lobby = "Lobiye katıldınız.",
		player_not_invited = "Bu lobinin davetli listesinde değilsiniz.",
		you_are_not_in_a_lobby = "Bir lobide değilsiniz.",
		left_lobby = "Lobiden ayrıldınız.",
		created_match = "${playerAmount} oyunculu bir maç oluşturuldu.",
		created_match_no_vehicles = "${playerAmount} oyuncu ile araçsız bir maç oluşturuldu.",
		zone_complete = "Bölge tamamlandı.",
		battle_royale_match_info = "Geçerli Bölge: ${zoneId}/${zoneAmount}\nKalan Süre: ${remainingTime}s\nŞu anda: ${currentlyLabel}\nKalan Oyuncular: ${remainingPlayers}\nÖldürme Sayısı: ${kills}",
		idling = "Boşta",
		advancing = "İlerleme",
		battle_royale = "Savaş Royale",
		press_to_deploy_parachute = "Paraşütünüzü açmak için ~INPUT_PARACHUTE_DEPLOY~ tuşuna basın.",
		join_battle_royale_instance_missing_permissions = "Bir oyuncu Savaş Royale oturumuna katılmaya çalıştı ancak bunu yapmak için gereken izinlere sahip değildi.",
		no_match_found = "${consoleName} herhangi bir eşleşme bulunamadı.",
		joined_instance = "${consoleName} adlı kişi eşleşmeye katıldı.",
		leave_battle_royale_instance_missing_permissions = "Oyuncu, Battle Royale eşleşmesinden ayrılmak için gerekli izinlere sahip olmadığından ayrılmaya çalıştı.",
		left_instance = "Eşleşmeden ayrıldınız.",
		failed_to_leave_instance = "Eşleşmede olmadığınız için ayrılamadınız.",
		already_in_match = "Mevcut bir eşleşmede olduğunuz için yeni bir eşleşmeye katılamıyorsunuz.",
		lobby_is_full = "Katılmaya çalıştığınız bekleme alanı dolu.",
		zone_center = "Bölge Merkezi",
		team_marker = "Takım İşareti",
		trophy_information_top = "${name} en iyisi!",
		trophy_information_bottom = "${playerAmount} oyuncu vardı ve bunların ${kills} tanesini öldürdünüz.",
		not_able_to_join_while_in_match = "Bir maçta iken bir lobby'e katılamazsınız."
	},

	bazaar = {
		access_bazaar = "Basın ~INPUT_CONTEXT~ bu mağazaya erişmek için.",

		bazaar_blip = "Baraz",

		no_items = "Burada satmak için hiçbir şeyiniz yok.",
		price_about = "yaklaşık ${price} $",

		sold_logs_title = "Bazaar Satışı",
		sold_logs_details = "${consoleName} ${amount} adet `${itemName}` ürününü $${price} fiyatına sattı.",

		sold_items = "${amount} adet ${label} ürününü $${money} fiyatına sattınız.",
		failed_sell_items = "Ürünleri satmak başarısız oldu.",

		junk_collector = "Çöp Toplayıcı",
		tool_collector = "Araç Gereç Toplayıcı",
		waste_collector = "Atık Toplayıcı",
		ammo_collector = "Mühimmat Toplayıcı",

		close_menu = "Menüyü Kapat"
	},

	beds = {
		no_nearby_available_bed_found = "Yakında müsait yatak bulunamadı.",
		press_to_leave_bed = "Yataktan çıkmak için ~INPUT_CONTEXT~ tuşuna basın."
	},

	blackjack = {
		play_blackjack = "Blackjack oynamak için ~INPUT_CONTEXT~ tuşuna basın.",
		play_blackjack_high_limit = "Yüksek Limitli Blackjack oynamak için ~INPUT_CONTEXT~ tuşuna basın."
	},

	blindfold = {
		blindfolding_player = "Oyuncuya Kağıt Torba Koyuluyor",
		blindfolding_self = "Kendinize Kağıt Torba Koyuyorsunuz",
		hold_to_take_blindfold_off = "Kağıt Torbayı çıkarmak için ~INPUT_VEH_HEADLIGHT~ tuşuna basılı tutun.",
		hold_to_take_blindfold_off_holding = "Kağıt Torbayı çıkarmak için basılı tutun."
	},

	blips = {
		comedy_club = "Komedi Kulübü",
		bean_machine = "Fasulye Makinesi",
		arcade_bar = "Oyun Salonlu Bar",
		japanese_restaurant = "Japon Restoranı",
		luxury_autos = "Lüks Otomobiller",
		rockford_records = "Rockford Records",
		dispensary = "Eczane",
		haunted_high_school = "Perili Lise",
		sushi_restaurant = "Sushi Restoranı",

		bank = "Banka",
		hospital = "Hastane",
		bolingbroke = "Bolingbroke Hapishanesi",
		police_department = "Polis Departmanı",
		motel = "Motel",
		tattoo_parlor = "Dövme Dükkanı",
		repair_shop = "Tamirhane",
		material_vendor = "Malzeme Satıcısı",
		pdm = "Premium Deluxe Motorsport",
		ls_customs = "Los Santos Customs",
		jewelry_store = "Vangelico Mücevher",
		pd_air_hq = "Polis Hava Merkezi",
		pd_sea_hq = "Polis Deniz Karakolu",
		ems_air_hq = "Acil Sağlık Hava Karakolu",
		ems_boat_hq = "Acil Sağlık Deniz Karakolu",
		ems_garage = "Acil Sağlık Garajı"
	},

	blockage = {
		restricted_area = "Bu bir kısıtlı bölgedir. Lütfen geri dönün!"
	},

	bombs = {
		not_in_plane = "Uçakta değilsiniz.",
		not_in_plane_anymore = "Artık uçakta değilsiniz.",
		interaction_menu = "~INPUT_CONTEXT~ ${name} bombası bırak, ~INPUT_VEH_HEADLIGHT~ Türü değiştir.",
		too_low = "Bomba bırakmak için irtifa çok düşük.",

		you_are_not_in_a_vehicle = "Şu anda bir araç kullanmıyorsunuz.",
		ignition_bomb_on = "Ateşleme bombası açıldı.",
		ignition_bomb_off = "Ateşleme bombası kapatıldı.",
		failed_ignition_bomb = "Ateşleme bombası kapatılamadı.",

		recharging_countermeasures = "Karşı önlemler şarj oluyor ${yüzde}%",

		ignition_bomb_triggered_logs_title = "Ateşleme Bombası",
		ignition_bomb_triggered_logs_details = "${consoleName}, ateşleme bombası takılı olan bir araçta motoru çalıştırdı.",

		toggle_ignition_bomb_missing_permissions = "Bir oyuncu ateşleme bombasını kapatmaya çalıştı fakat gereken izinlere sahip değildi."
	},

	boomboxes = {
		boombox = "Boombox",
		play = "Oynat",
		pause = "Duraklat",
		skip_song = "Şarkıyı Atla",
		volume = "Ses Şiddeti",
		music = "Müzik",

		store_boombox = "Boombox'ı envanterinde depola",
		put_boombox_down = "Boombox'ı yerleştir",
		use_boombox = "Boombox kullan",
		hold_to_pick_boombox_up = "Boombox'u almak için basılı tut",
		illegal_boombox_item_id = "Yasak bir öğe kimliği ile boombox öğesi kullanmaya çalışılıyor.",
		logs_attempted_to_add_song_title = "Şarkı eklemeye çalışıldı",
		logs_attempted_to_add_song_details = "${consoleName}, video URL `${url}` ile ID'si `${boomboxId}` olan boombox'a şarkı eklemeye çalıştı.",
		wipe_boomboxes_not_staff = "Oyuncu boombox'ları silmeyi denedi, ancak bunu yapmak için gerekli izinlere sahip değil.",
		logs_wiped_all_boomboxes_title = "Tüm Boombox'lar Silindi",
		logs_wiped_all_boomboxes_details = "${consoleName} tüm boombox'ları sildi.",
		logs_wiped_nearby_boomboxes_title = "Yakındaki Boombox'lar Silindi",
		logs_wiped_nearby_boomboxes_details = "${consoleName} `${radius}` bir yarıçap içindeki tüm boombox'ları sildi.",
		radius_invalid = "`${radius}` bir yarıçap değeri geçerli bir değil.",
		wiped_all_boomboxes = "${boomboxesWiped} boombox silindi.",
		wiped_nearby_boomboxes = "${boomboxesWiped} adet boombox `${radius}` birim yarıçap içinde silindi.",
		failed_to_wipe_boomboxes = "Boomboxler silinemedi.",
		no_boomboxes = "Silinecek hiçbir boombox bulunamadı.",
		no_boomboxes_within_radius = "`${radius}` birim yarıçap içinde silinecek hiçbir boombox bulunamadı."
	},

	boosting = {
		boosting_contracts = "Sözleşmeleri artırma",
		join_queue = "Kuyruğa Katıl",
		leave_queue = "Kuyruktan Ayrıl",

		transfer_crypt = "CRYPT Transferi",
		transfer_crypt_info = "Transfer etmek istediğiniz oyuncunun miktar ve sunucu ID'sini girin.",

		amount = "Miktar",
		server_id = "Sunucu ID'si",

		transfer = "Transfer et",
		cancel = "İptal",

		start_contract = "Sözleşme Başlat",
		start_contract_info = "Bu sözleşmeyi başlatmak istediğinizden emin misiniz?",

		yes = "Evet",
		no = "Hayır",

		transfer_contract = "Sözleşme Transferi",
		transfer_contract_info = "Sözleşmeyi transfer etmek istediğiniz kişinin sunucu ID'sini girin.",

		decline_contract = "Sözleşmeyi Reddet",
		decline_contract_info = "Bu sözleşmeyi reddetmek istediğinizden emin misiniz?",

		cancel_contract = "Sözleşmeyi İptal Et",
		cancel_contract_info = "Bu sözleşmeyi iptal etmek istediğinizden emin misiniz?",

		no_contracts = "Mevcut sözleşmeniz yok. Bazı sözleşmeler almak için sıraya katılın.",

		model = "Model",
		plate = "Plaka",
		buy_in = "Katılım Bedeli",
		expires_in = "Süresi doluyor",

		start_contract_type = "Ne yapmak istiyorsunuz?",
		start_contract_type_info = "Bir teslimat mı yapmak istiyorsunuz yoksa VIN çizik mi yapmak istiyorsunuz? VIN çizik yapmak ekstra ${cost} CRYPT tutarında.",

		drop_off = "Teslim Etme",
		vin_scratch = "VIN çizik",

		start_contract = "Sözleşme Başlat",
		transfer_contract = "Sözleşme Transferi",
		decline_contract = "Sözleşmeyi Reddet",
		mark_pickup = "Toplanma Yeri Belirle",
		cancel_contract = "Sözleşmeyi İptal Et",

		new_contract = "Yeni bir arttırma sözleşmeniz var. (Sınıf: ${className})",
		started_contract = "Sözleşme başlatıldı.",
		failed_contract = "Sözleşme başarısız oldu.",
		completed_contract = "Sözleşme tamamlandı. ${payout} CRYPT aldınız.",
		completed_contract_vin_scratch = "Sözleşme tamamlandı. Araç garajınızda bulunabilir.",
		marked_pickup = "Toplanma yeri belirlendi.",

		vehicle_tracker_is_being_hacked = "Araç takip cihazı hackleniyor. ${hacksRemaining} adet hack işlemi kaldı.",
		use_chip_to_hack_vehicle_tracker = "Araç takip cihazını hacklemek için bir çip kullanın. ${hacksRemaining} hackleme hakkınız kaldı.",
		vehicle_hacking_is_timed_out = "Tekrar hacklemek için biraz beklemeniz gerekiyor. ${hacksRemaining} hackleme hakkınız kaldı.",
		drop_the_vehicle_off = "Araç işaretli konuma bırakın.",
		drop_off = "Teslim Etme",
		exit_the_vehicle = "Görevi tamamlamak için araçtan çıkın ve alandan ayrılın.",

		vehicle_is_being_tampered = "${locationLabel} civarında bir araç manipüle ediliyor. Model ${modelLabel} (sınıf ${className}) ve plaka ${plate}.",
		vehicle_tamper = "Araç Değiştirme (${plate})",
		vehicle_tracker_alert = "Araç Takip Uyarısı (${plate})",

		exit_the_vehicle_to_scratch = "Araçtan çıkarak VIN çizimini yapın.",

		scratch = "VIN çizimi.",
		press_to_scratch = "VIN çizimi için ~g~E ~w~ tuşuna basın.",

		scratching_vehicle = "Araç Çiziliyor",

		deleted_boosted_vehicle_logs_title = "Yükseltilmiş Araç Silindi",
		deleted_boosted_vehicle_logs_details = "${consoleName}, ID${vehicleId} numaralı yükseltilmiş aracı sildi.",

		spawned_contract = "Başarıyla bir kontrat oluşturuldu.",
		spawned_contract_for = "${displayName}'in sözleşmesi başarıyla oluşturuldu.",

		spawn_contract_no_permissions = "Oyuncu uygun izinlere sahip olmadan destek sözleşmesi oluşturmaya çalıştı.",

		already_max_vin_scratched_vehicles = "Garajınızda zaten maksimum miktarda VIN çizikli araçınız var.",
		contract_has_expired = "Bu sözleşme süresi dolmuştur.",
		you_already_have_a_contract_started = "Zaten başlamış bir sözleşmeniz var."
	},

	brochure = {
		welcome_to = "Hoşgeldiniz",
		san_andreas = "San Andreas",

		getting_started = "Başlarken",
		getting_started_1 = "Havaalanına yeni geldiniz ve nereden başlayacağınızı merak ediyorsunuz? Tüm yeni vatandaşlar ücretsiz bir başlangıç aracı alırlar. Belki en iyi araba olmayabilir ama sizin aracınız. Arabanızı otoparkta bulabilirsiniz.",
		getting_started_2 = "Araba sürmek istemezseniz, yürüyerek, arkadaşınızı çağırarak veya telefonunuzu kullanarak taksi çağırabilirsiniz. Telefonunuza \"P\" tuşuna basarak erişebilirsiniz.",
		getting_started_3 = "Çoğu aracın bagaj bölmesi vardır; içine eşya koymakla birlikte, insanları da koyabilirsiniz. Birisini /carry ile tutup bagaja götürüp (/door) içine koyabilirsiniz. Aynı şekilde onları da geri çıkarabilirsiniz. Aracınızı devirdiyseniz onu /flip ile tekrar tekerleklerine çevirebilirsiniz.",

		where_now = "Nerede Şimdi?",
		where_now_1 = "İlk aracınızı aldığınız için şimdi şehri keşfe çıkabilirsiniz. Beslenmeniz ve hidrate olmanız gerektiği için markete gitmek iyi bir başlangıç olabilir. Orada yiyecek, içecek ve yaralanmalardan iyileşmenizi sağlayacak olan sargı bezi satın alabilirsiniz.",
		where_now_2 = "Malzemelerinizi aldıktan sonra adliyeye gidin ve bir vatandaşlık kartı alın. Bu kimlik, sürücü belgesi ve silah ruhsatı özelliklerini taşıyacaktır.",

		getting_a_job = "İş Bulma",
		getting_a_job_1 = "Para nasıl kazanılır? İş arayarak başlayabilirsiniz. İş ilanlarını Life Invader'de bulabilirsiniz. Haritada kırmızı bir çanta simgesi olan Life Invader'a gidin. Burada başvurabileceğiniz birçok iş seçeneği bulabilirsiniz.",
		getting_a_job_2 = "Kamyoncu işi, çeşitli yerlere mal teslim etmenizi gerektirir. İlk olarak, kamyoncu karargahından 2.000 $ karşılığında bir kamyon satın almanız gerekiyor.",
		getting_a_job_3 = "Dağıtım işine kaydolurken, dağıtım karargahından paketlerle dolu bir teslimat alabilirsiniz. Ardından şehirdeki çeşitli yerlere paketleri teslim etmeniz gerekiyor. Teslimat kamyonetinin arkasını /door yazarak açabilirsiniz.",
		getting_a_job_4 = "Ayrıca, çöp toplayıcı olabilirsiniz. Çöp toplayıcı merkezinde bir çöp kamyonu alıp çöpleri toplamaya başlayabilirsiniz.",
		getting_a_job_5 = "İşlerden birine kaydolduktan sonra haritanızda çeşitli işaretleyicileri göreceksiniz. Bir yönlendirme işareti başlamak için nereye gideceğinizi gösterir.",

		your_appearance = "Görünüşünüz",
		your_appearance_1 = "Pantolon, ayakkabı, gömlek gibi giysileri ücretsiz olarak herhangi bir giyim mağazasından değiştirebilirsiniz. Saç stili, sakal ve makyajınızı bir berberde değiştirebilirsiniz. Giyim mağazalarını ve berberleri haritada bulabilirsiniz.",
		your_appearance_2 = "İlk uçuşunuzdan sonra cilt rengi, yüz özellikleri vb. gibi genel görünümünüzü değiştiremezsiniz. Eğer görünümünüzü yanlış ayarladıysanız veya çok hızlı bitirdiyseniz /report komutunu kullanarak reskin isteyebilirsiniz.",

		medical_care = "Tıbbi Bakım",
		medical_care_1 = "Yaralandıysanız, hastaneye giderek kayıt yaptırabilir ve tedavi olabilirsiniz. Hastaneyi haritada bulabilirsiniz. Kendinizi iyileştirmek için bandaj veya ilk yardım kitleri de kullanabilirsiniz.",
		medical_care_2 = "Eğer hastaneye götürülmeden yeniden doğarsanız veya oyunu çıkarken düşük durumdaysanız bazı eşyalarınızı kaybedebilirsiniz. Sunucu yeniden başlatması oyunu kapatmak gibi işlev görür.",

		safety_hint = "İpucu: Silahınızın emniyetini açmak için ALT tuşuna ve orta fare düğmesine basabilirsiniz. Güvende kalın!",

		closing_sentence = "Şehirde yapacak daha çok şey var! Etrafınıza sorarak yeni arkadaşlar edinin ;)"
	},

	cache = {
		download_progress = "İndirme İlerlemesi:\n- Araçlar: ${vehiclesDone}/${vehiclesTotal}\n- Objeler: ${objectsDone}/${objectsTotal}\n- Vatandaşlar: ${pedsDone}/${pedsTotal}\n- Kıyafetler: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "Yavaş indirme etkinleştirildi.",
		slow_download_disabled = "Yavaş indirme devre dışı bırakıldı."
	},

	capri_sun = {
		capri_sun_name = "Capri Sun (${flavor})"
	},

	cargo = {
		start_cargo_no_permissions = "Oyuncu kargo soygununu başlatmaya çalıştı ancak buna izinleri yoktu.",
		end_cargo_no_permissions = "Oyuncu Kargo soygununu bitirmeye çalıştı, ancak bunu yapma izni yoktu.",
		cargo_already_active = "Kargo zaten aktif.",
		started_cargo = "Kargo başlatıldı.",
		cargo_not_active = "Kargo aktif değil.",
		ended_cargo = "Kargo sona erdi.",
		cargo_crate = "Kargo Kasa",
		use_chip_to_hack_crate = "Kasa hacklemek için ~g~Chip~w~ kullanın.",
		crate_is_being_hacked = "Kasa hackleniyor.",
		crate_will_unlock_in = "Kasa ~g~${time}~w~ süre içerisinde açılacak.",
		press_k_to_access = "Erişmek için ~g~K~w~ tuşuna basın."
	},

	casino = {
		set_casino_screen_id_not_staff = "Oyuncu kumarhane ekran kimliğini ayarlamaya çalıştı, ancak bunu yapmak için gerekli izinlere sahip değil.",
		successfully_set_screen_label = "`${screenLabel}` etiketli ekrana başarıyla ayarlandı.",
		successfully_queued_screen_label = "`${screenLabel}` etiketli ekran kuyruğa başarıyla eklendi.",
		failed_to_set_screen_label = "`${screenLabel}` etiketli ekran ayarlanamadı.",
		invalid_screen_label = "Geçersiz ekran etiketi `${screenLabel}`.",
		missing_screen_label = "Eksik `screen label` parametresi.",
		set_screen_label_already_set_to = "Ekran etiketi zaten '${screenLabel}' olarak ayarlandı.",
		only_available_in_the_casino = "Bunu sadece casinoda yapabilirsin.",
		casino_blip = "Kumarhane"
	},

	cayo_perico = {
		approaching_out_of_bounds = "Harita sınırlarına yaklaşıyorsun",
		out_of_bounds = "Harita sınırlarının dışındasın"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "Cayo Perico'ya gitmek için ${distanceToTeleport} metre kaldı, yönünü ${direction} şeklinde devam ettir.",
		keep_heading_in_direction_out = "Los Santos'a geri dönmek için ${distanceToTeleport} metre kaldı, yönünü ${direction} şeklinde devam ettir.",

		south = "güney",
		south_east = "güneydoğu",
		east = "doğu",
		north_east = "kuzeydoğu",
		north = "kuzey",
		north_west = "kuzeybatı",
		west = "batı",

		not_the_driver = "Kendi sürücü koltuğunda olmanız gerekiyor, Cayo Perico'ya uçmak için.",
		not_a_cayo_vehicle = "Cayo Perico'ya gitmek için bir bot, uçak veya helikopterde olmalısınız.",
		entering_cayo_perico_logs_title = "Cayo Perico'ya Giriliyor",
		entering_cayo_perico_logs_details = "${consoleName}, Cayo Perico'ya giriyor.",
		exiting_cayo_perico_logs_title = "Cayo Perico'dan Çıkılıyor",
		exiting_cayo_perico_logs_details = "${consoleName} Cayo Perico'dan çıkıyor.",
		entering_cayo_perico_with_passengers_logs_title = "Yolcularla Birlikte Cayo Perico'ya Giriş",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName}, ${passengersAmount} yolcuyla birlikte Cayo Perico'ya giriş yapıyor.",
		exiting_cayo_perico_with_passengers_logs_title = "Yolcularla Birlikte Cayo Perico'dan Çıkış",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName}, ${passengersAmount} yolcuyla birlikte Cayo Perico'dan çıkıyor."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Advent Takvimi Kapısı Talep Edildi",
		claimed_money = "${consoleName}, $${amount} talep etti.",
		claimed_item = "${consoleName}, `${itemLabel}` eşyasını talep etti.",
		claimed_vehicle = "${consoleName}, özel bir Noel aracı olan aracı talep etti.",
		claimed_queue_priority = "${consoleName}, bir haftalık Noel sıra önceliğini talep etti.",

		claimed_advent_calendar_bonus_title = "Advent Takvimi Bonusu Talep Edildi",
		claimed_advent_calendar_bonus_details = "${consoleName}, advent takvim bonusunu, yani model adı `${modelName}` olan bir aracı talep etti."
	},

	cinema = {
		failed_to_find_cinema_identifier = "Sinema kimliği bulunamadı.",

		screen_model_size = "Boyut: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "Kaydırma: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "Döndürme: ${rotation}",
		screen_model_volume = "Ses düzeyi: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "Model: ${modelName}",

		locked = "Kilitli",

		add_video_to_queue_title = "Sıraya Video Ekle",
		add_video_to_queue_details = "${consoleName}, video anahtarı `${videoType}:${videoId}` olan bir sinemada sıraya bir video ekledi.",

		blacklisted_video = "${videoKey}'li video kara listeye alındı.",
		failed_to_blacklist_video = "${videoKey}'li video kara listeye alınamadı.",
		video_is_already_blacklisted = "${videoKey}'li video zaten kara listeye alınmış.",

		blacklist_video_missing_permissions = "Bir oyuncu, gereken izinlere sahip olmadan bir videoyu kara listeye almaya çalıştı.",

		watching_movie = "${title} izleniyor.",

		cinema = "Sinema",
		doppler_cinema = "Doppler Sineması",
		sandy_cinema = "Sandy Sineması",
		tv = "TV",
		monitor = "Monitör",
		laptop = "Bilgisayar",
		projector = "Projektör",

		zoom = "Kamerayı ileri geri hareket ettir",
		slow = "Yavaş",
		toggle_lights = "Işıkları Aç/Kapat",
		exit = "Çıkış",

		-- NOTE: UI locales
		title = "Başlık",
		length = "Uzunluk",
		date = "Tarih",
		author = "Yazar",
		queue = "Sıra",
		search_through_library = "Kütüphaneden ara...",
		add_to_library = "Videoyu kütüphaneye ekle (URL)..."
	},

	cinematic = {
		cinematic = "Sinematik",
		black_bars_set_to = "Sinematik siyah çubuklar artık ${blackBarsHeight}% olarak ayarlandı."
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] Silahı Hazırla",
		disarm_claymore = "[${InteractionKey}] Silahı Devre Dışı Bırak",

		disarming = "Silahsızlandırma",
		arming = "Silahlandırma"
	},

	clothing = {
		outfit_failed = "Kıyafet uygulaması başarısız oldu.",
		missing_outfit = "Eksik kıyafet.",
		missing_outfit_name = "Eksik kıyafet adı.",
		no_nearby_clothing_spot = "Yakınlarda kıyafet yerleştirme yeri yok.",
		trunk_closed = "Bagaj kapalı.",
		trunk_too_far = "Bagaja çok uzaksınız.",
		moved_too_far_trunk = "Bagajdan çok uzaklaştınız.",
		invalid_job = "Bu kıyafet yerleştirme yeri için gerekli işiniz yok.",
		outfit_list = "Kıyafetler",
		no_saved_outfits = "Kaydedilmiş kıyafetiniz yok.",
		saved_outfit = "${name} adlı kıyafet başarıyla kaydedildi.",
		replaced_outfit = "${name} adlı kıyafet başarıyla değiştirildi.",
		failed_save_outfit_exists = "${name} adlı kıyafet zaten kaydedildiği için kaydetme başarısız oldu.",
		failed_save_outfit = "Kıyafet kaydedilemedi.",
		deleted_outfit = "${name} adlı kıyafet başarıyla silindi.",
		failed_delete_outfit_doesnt_exists = "${name} adlı kıyafetin silinmesi başarısız oldu, çünkü böyle bir kıyafet yok.",
		failed_delete_outfit = "Kıyafeti silme başarısız oldu.",

		invalid_server_id = "Geçersiz veya eksik sunucu kimliği.",
		player_model_missmatch = "Bu oyuncuyla kıyafetinizi paylaşamazsınız.",
		player_too_far = "Oyuncu çok uzakta.",
		shared_outfit_too_far = "${displayName} sizinle bir kıyafet paylaştı, ancak bir giyinme noktasına yakın değilsiniz.",
		outfit_shared = "Kıyafet paylaşımı başarıyla gerçekleştirildi.",
		outfit_not_shared = "Kıyafet paylaşımı başarısız oldu.",
		shared_outfit = "${displayName} bir kıyafet paylaştı. Kabul etmek için `evet` yazın, reddetmek için `hayır` yazın. (Bu 30 saniye içinde sona erecek)",
		applied_shared_outfit = "Paylaşılan kıyafet başarıyla uygulandı.",
		declined_shared_outfit = "Paylaşılan kıyafeti reddettiniz.",

		no_nearby_dead_player = "Yakında ölü bir oyuncu yok.",
		failed_to_steal_shoes = "Ayakkabı çalmak başarısız oldu.",

		loading_model = "Yaya modeli yükleniyor...",
		loading_spawn = "Oyuncu yaya modeli yaratılıyor...",
		loading_set_data = "Yaya verileri ayarlanıyor...",
		loading_tattoos = "Dövmeler ayarlanıyor...",
		loading_finalize = "Final işlemleri yapılıyor..."
	},

	clothing_bag = {
		packed_outfit = "Kıyafet başarıyla çanta içine konuldu.",
		packed_outfit_failed = "Kıyafet çanta içine konulamadı.",

		item_description_filled = "\"<i>${outfit}</i>\" kıyafeti çantada.",
		item_description_empty = "<b>Hiçbir</b> kıyafet çantada yok.",

		bag_empty = "Bu kıyafet çantası boş.",
		wrong_ped_model = "Bu kıyafet size uygun görünmüyor.",
		cant_use_in_vehicle = "Araçta kıyafet çantası kullanamazsınız.",
		cant_use_while_moving = "Hareket halindeyken kıyafet çantası kullanamazsınız.",

		opening_bag = "Çanta açılıyor"
	},

	clothing_menu = {
		component = "Parça",
		texture = "Doku",
		palette = "Palet",

		clothing = "Kıyafet",
		accessories = "Aksesuarlar",
		face = "Yüz",
		outfits = "Kıyafetler",

		reset_zoom = "Yakınlaştırmayı sıfırla",
		zoom_level = "Yakınlaştırma",

		variation = "Değişiklik",
		color = "Renk",
		secondary_color = "İkincil Renk",
		opacity = "Opaklık",

		press_to_access = "Kıyafet mağazasına erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		press_no_freemode = "Bu npc modeli kıyafet mağazasına erişemiyor.",
		press_no_freemode_barber = "Bu npc modeli berber dükkânına erişemiyor.",
		press_to_access_barber = "Berber dükkânına erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		press_to_change_outfit = "Kıyafet değiştirmek için ~INPUT_CONTEXT~ tuşuna basın.",

		clothingstore = "Kıyafet Mağazası",
		barbershop = "Berber Dükkânı",

		changing_area = "Giysi Değiştirme Bölümü",

		switch_outfit = "Bu kıyafete değiştir.",
		replace_outfit = "Bu kıyafeti değiştirin.",
		new_outfit = "Kıyafet Kaydet",
		no_saved_outfits = "Kaydedilmiş kıyafet yok.",

		save_outfit_title = "Yeni Kıyafet Kaydet",
		save_outfit_label = "Kıyafet Adı:",
		save_outfit_button = "Kaydet",

		replace_outfit_title = "Kıyafeti Değiştir",
		replace_outfit_description = "Adı ${outfit} olan kıyafeti değiştirmek istediğinizden emin misiniz?",
		replace_outfit_button = "Değiştir",

		delete_outfit_title = "Kıyafeti Sil",
		delete_outfit_description = "Adı ${outfit} olan kıyafeti silmek istediğinizden emin misiniz?",
		delete_outfit_button = "Sil",

		packing_outfit_title = "Kıyafetlerini Paketle",
		packing_outfit_description = "\"${outfit}\" adlı kıyafetini hangi çantada sakladıysan onu seç.",

		cancel_button = "İptal",

		remove_button = "${label} Sil",
		menu_description = "Kamera açmak için \"V\" tuşuna bas. Sürgüleri fare ile kaydırabilirsin veya ok tuşlarını kullanabilirsin. Konumunu ayarlamak için \"A\" ve \"D\" tuşlarını kullanabilirsin.",

		failed_toggle_clothing_menu = "Kıyafet menüsü açılamadı.",
		clothing_menu_success = "${consoleName} adlı kişinin kıyafet menüsü açıldı.",
		barber_menu_success = "Berber dükkanı menüsü açılamadı.",
		failed_toggle_barber_menu = "${consoleName} için berber dükkanı menüsü açıldı.",
		invalid_server_id = "Geçersiz sunucu kimliği.",

		clothing_menu_missing_permissions = "Bir oyuncu diğer bir oyuncu için giyim menüsünü açmaya çalıştı, ancak gerekli izinlere sahip değildi.",

		hats_and_helmets = "Şapkalar/Kasklar",
		glasses = "Gözlükler",
		earrings = "Küpeler",
		left_wrist = "Sol Bilek",
		right_wrist = "Sağ Bilek",

		pants = "Pantolonlar",
		shoes = "Ayakkabılar",
		undershirt = "İç Gömlek",
		necklaces_and_ties = "Kolye ve Kravat",
		decals = "Stickerlar",
		shirts = "Gömlekler",
		arms = "Kollar",
		masks = "Maskeler",
		armor = "Zırh",
		parachute_and_bag = "Paraşüt ve Çanta",

		hair = "Saç",

		blemishes = "Cilt Lekeleri",
		facial_hair = "Sakal",
		eyebrows = "Kaşlar",
		ageing = "Yaşlanma",
		makeup = "Makyaj",
		blush = "Allık",
		complexion = "Ten Renk Tonu",
		sun_damage = "Güneş Hasarı",
		lipstick = "Ruj",
		moles_and_freckles = "Benekler",
		chest_hair = "Göğüs Kılı",
		body_blemishes = "Vücut Lekeleri",
		add_body_blemish = "Vücut Lekesi Ekle"
	},

	command_socket = {
		connected = "Komut soketine bağlanıldı.",
		disconnected = "Komut soketinden bağlantı kesildi.",
		failed_reconnect = "Komut soketine yeniden bağlanma başarısız oldu."
	},

	crafting = {
		menu_title = "El İşi",
		close_menu = "Menüyü Kapat",

		smelt_glass = "Kırık Şişeleri Erit",
		press_to_smelt_glass = "[${SeatEjectKey}] Kırık Şişeleri Erit",
		smelting_glass = "${usedItems} eritiliyor.",
		smelted_glass = "${usedItems} eritilerek cam elde edildi.",
		failed_smelt_glass = "Cam eritme başarısız oldu.",

		craft_steel = "Çelik Üret",
		press_to_craft_steel = "[${SeatEjectKey}] Çelik Üret",
		crafting_steel = "${usedItems} kalıplama işlemi yapılıyor",
		crafted_steel = "${usedItems} metal parçaları çelik haline getirildi.",
		failed_craft_steel = "Çelik yapımı başarısız oldu.",

		scrapping_item = "${usedItems} hurdalanıyor",
		scrapped_item = "${usedItems} yıkılarak hurda metale dönüştürüldü.",

		scrap_knife = "Hurda Bıçak",
		press_to_scrap_knife = "[${SeatEjectKey}] Hurda Bıçak",
		failed_scrap_knife = "Bıçak hurdalanamadı.",

		scrap_item = "Hurda Eşya",
		press_to_scrap_item = "[${SeatEjectKey}] Hurda Eşya",
		failed_scrap_item = "Eşya hurdalanamadı.",

		cut_item = "Patatesleri Kes",
		press_to_cut_item = "[${SeatEjectKey}] Patatesleri Kes",
		cutting_item = "3 Adet Patates Kesiliyor",
		cut_item_done = "Patatesleri kızartmalık dilimlere kestin.",
		failed_cut_item = "Patatesleri kesme başarısız oldu.",

		fry_item = "Kızartmalıkları Kızart",
		press_to_fry_item = "[${SeatEjectKey}] Kızartmalıkları Kızart",
		frying_item = "Kızartmalıklar Kızartılıyor",
		fried_item = "Belçika usulü kızarmış patatesler hazır.",
		failed_fry_item = "Kızartma başarısız oldu.",

		grill_item = "Çiğ Köfteleri Izgara",
		press_to_grill_item = "[${SeatEjectKey}] Çiğ Köfteleri Izgara",
		grilling_item = "Köfteler Izgaralanıyor",
		grilled_item = "Izgara Patty'ler.",
		failed_grill_item = "Patty'leri izgara yaparken başarısız oldunuz.",

		hamburger_recipe = "Hamburger",
		cheeseburger_recipe = "Peynirli hamburger",

		assemble_burger = "Burgerı Birleştir",
		press_to_assemble_burger = "[${SeatEjectKey}] Burgerı Birleştir",
		assembling_burger = "Hamburger Birleştiriliyor",
		assembled_burger = "Hamburger Birleştirildi",
		failed_assemble_burger = "Bir hamburger birleştirmekte başarısız oldunuz.",

		assembling_cheeseburger = "Peynirli hamburger birleştiriliyor",
		assembled_cheeseburger = "Peynirli hamburger birleştirildi",
		failed_assemble_cheeseburger = "Hamburger hazırlanması başarısız oldu.",

		mix_avocado_smoothie = "Avokado Smoothie karıştırın",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] Avokado Smoothie karıştırın",
		mixing_avocado_smoothie = "Avokado Smoothie karıştırılıyor",
		mixed_avocado_smoothie = "Avokado Smoothie karıştırıldı",
		failed_mix_avocado_smoothie = "Avokado smoothie karıştırma işlemi başarısız oldu.",

		fill_nitro_tank = "Nitro Tankını Doldurun",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] Nitro Tankını Doldurun",
		filling_nitro_tank = "Nitro Tankı dolduruluyor",
		filled_nitro_tank = "Nitro Tankı dolduruldu",
		failed_fill_nitro_tank = "Nitro tankı doldurma işlemi başarısız oldu.",

		craft_sheet_metal = "Sac Metal Yap",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] Sac Metal Yap",
		crafting_sheet_metal = "Sac Metal Yapılıyor",
		crafted_sheet_metal = "Sac metal yapıldı.",
		failed_craft_sheet_metal = "Sac metal yapımı başarısız oldu.",

		craft_empty_tank = "Boş Tankı Montele",
		press_to_craft_empty_tank = "[${SeatEjectKey}] Boş Tankı Montele",
		crafting_empty_tank = "Boş tank monte ediliyor...",
		crafted_empty_tank = "Boş tank monte edildi.",
		failed_craft_empty_tank = "Boş tank monte edilemedi.",

		craft_valve = "Valf Montele",
		press_to_craft_valve = "[${SeatEjectKey}] Valf Montele",
		crafting_valve = "Valf monteliyor.",
		crafted_valve = "Valf monte edildi.",
		failed_craft_valve = "Valf monte edilemedi.",

		craft_nitro_tank = "Nitro Tankı Montele",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] Nitro Tankı Montele",
		crafting_nitro_tank = "Nitro tankı monteliyor.",
		crafted_nitro_tank = "Nitro tankı monte edildi.",
		failed_craft_nitro_tank = "Nitro tankı monte edilemedi.",

		salvage_meth_table = "Meth Tezgahını Geri Dönüştür",
		press_to_salvage_meth_table = "[${SeatEjectKey}] Meth Tezgahını Geri Dönüştür",
		salvaging_meth_table = "Meth Tezgahı Geri Dönüştürülüyor",
		salvaged_meth_table = "Meth tezgahı geri dönüştürüldü.",
		failed_salvage_meth_table = "Meth tezgahı geri dönüştürme başarısız oldu.",

		refill_vape = "Vape Dolumu",
		press_to_refill_vape = "[${SeatEjectKey}] Vape Dolumu Yap",
		refilling_vape = "Vape Dolduruluyor",
		refilled_vape = "Vape dolduruldu.",
		failed_refill_vape = "Vape dolumu başarısız oldu.",

		deconstructing_item = "${usedItems} parçalanıyor",
		deconstructed_item = "${usedItems} parçalandı.",

		deconstruct_pistol = "Pistolü Parçala",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] Pistolü Parçala",
		failed_deconstruct_pistol = "Pistolü parçalamak başarısız oldu.",

		deconstruct_smg = "SMG'yi Parçala",
		press_to_deconstruct_smg = "[${SeatEjectKey}] SMG'yi Parçala",
		failed_deconstruct_smg = "SMG'yi parçalamak başarısız oldu.",

		deconstruct_shotgun = "Shotgun'u Parçala",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] Shotgun'u Parçala",
		failed_deconstruct_shotgun = "Shotgun'u parçalamak başarısız oldu.",

		deconstruct_rifle = "Tüfek Parçalama",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] Tüfeği parçalamak için basın",
		failed_deconstruct_rifle = "Tüfeği parçalama başarısız oldu.",

		extract_copper = "Bakır Çıkarma",
		press_extract_copper = "[${SeatEjectKey}] Bakır çıkarmak için basın",
		extracting_copper = "Bakır çıkarılıyor",
		extracted_copper = "Bakır çıkarıldı.",
		failed_extract_copper = "Bakır çıkarma başarısız oldu.",

		processing_item = "${usedItems} işleniyor",
		processed_item = "${usedItems} işlendi.",

		process_copper = "Bakır külçelerini işleme",
		press_process_copper = "[${SeatEjectKey}] Bakır Nüvelerini İşle",
		failed_process_copper = "Bakır nüvelerini işleme başarısız.",

		process_rubber = "Kauçuğu İşle",
		press_process_rubber = "[${SeatEjectKey}] Kauçuğu İşle",
		failed_process_rubber = "Kauçuğu işleme başarısız.",

		process_aluminium = "Alüminyum İşle",
		press_process_aluminium = "[${SeatEjectKey}] Alüminyum İşle",
		failed_process_aluminium = "Alüminyum işleme başarısız.",

		process_steel = "Çelik İşle",
		press_process_steel = "[${SeatEjectKey}] Çelik İşle",
		failed_process_steel = "Çelik işlemesi başarısız oldu.",

		craft_lens = "Mercek İşle",
		press_craft_lens = "[${SeatEjectKey}] Mercek İşle",
		crafting_lens = "Mercek İşleniyor",
		crafted_lens = "Mercek işlendi.",
		failed_craft_lens = "Mercek işleme başarısız oldu.",

		craft_sight = "Nişangah İşle",
		press_craft_sight = "[${SeatEjectKey}] Nişangah İşle",
		crafting_sight = "Nişangah İşleniyor",
		crafted_sight = "Nişangah işlendi.",
		failed_craft_sight = "Nişangah işleme başarısız oldu.",

		craft_pistol_sight = "Tabanca Nişangahı İşle",
		press_craft_pistol_sight = "[${SeatEjectKey}] Tabanca Nişangahı İşle",
		crafting_pistol_sight = "Pistol Mermisi Tasarlanıyor",
		crafted_pistol_sight = "Pistol Mermisi Tasarlandı",
		failed_craft_pistol_sight = "Pistol Mermisi tasarlamada başarısız olundu.",

		craft_scope = "Dürbün Tasarlanıyor",
		press_craft_scope = "[${SeatEjectKey}] Dürbün Tasarla",
		crafting_scope = "Dürbün Tasarlanıyor",
		crafted_scope = "Dürbün Tasarlandı",
		failed_craft_scope = "Dürbün tasarlamada başarısız olundu.",

		craft_grip = "Kavrama Tasarlanıyor",
		press_craft_grip = "[${SeatEjectKey}] Kavrama Tasarla",
		crafting_grip = "Kavrama Tasarlanıyor",
		crafted_grip = "Kavrama Tasarlandı",
		failed_craft_grip = "Kavrama tasarlamada başarısız olundu.",

		craft_extended_clip = "Uzatılmış Şarjör Üret",
		press_craft_extended_clip = "[${SeatEjectKey}] Uzatılmış Şarjör Üret",
		crafting_extended_clip = "Uzatılmış Şarjör Üretiliyor",
		crafted_extended_clip = "Uzatılmış şarjör üretildi.",
		failed_craft_extended_clip = "Uzatılmış şarjör üretme başarısız oldu.",

		craft_extended_smg_clip = "Uzatılmış SMG Şarjör Üret",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] Uzatılmış SMG Şarjör Üret",
		crafting_extended_smg_clip = "Uzatılmış SMG Şarjör Üretiliyor",
		crafted_extended_smg_clip = "Uzatılmış SMG şarjörü üretildi.",
		failed_craft_extended_smg_clip = "Genişletilmiş SMG şarjörü üretimi başarısız oldu.",

		craft_extended_shotgun_clip = "Genişletilmiş Av Tüfeği Şarjörü Üret",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] Genişletilmiş Av Tüfeği Şarjörü Üret",
		crafting_extended_shotgun_clip = "Genişletilmiş av tüfeği şarjörü üretiliyor...",
		crafted_extended_shotgun_clip = "Genişletilmiş av tüfeği şarjörü üretildi.",
		failed_craft_extended_shotgun_clip = "Genişletilmiş av tüfeği şarjörü üretimi başarısız oldu.",

		craft_extended_pistol_clip = "Genişletilmiş Tabanca Şarjörü Üret",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] Genişletilmiş Tabanca Şarjörü Üret",
		crafting_extended_pistol_clip = "Pistol Şarjörü Uzatma Üretimi",
		crafted_extended_pistol_clip = "Pistol şarjörü uzatması üretildi.",
		failed_craft_extended_pistol_clip = "Pistol şarjörü uzatma üretimi başarısız oldu.",

		craft_drum = "Davul Şarjörü Üretimi",
		press_craft_drum = "[${SeatEjectKey}] Davul Şarjörü Üretimi",
		crafting_drum = "Davul Şarjörü Üretimi",
		crafted_drum = "Davul şarjörü üretildi.",
		failed_craft_drum = "Davul şarjörü üretimi başarısız oldu.",

		craft_suppressor = "Susturucu Üretimi",
		press_craft_suppressor = "[${SeatEjectKey}] Susturucu Üretimi",
		crafting_suppressor = "Susturucu Yapımı",
		crafted_suppressor = "Susturucu yapıldı.",
		failed_craft_suppressor = "Susturucu yapımı başarısız.",

		craft_flashlight = "El Feneri Yapımı",
		press_craft_flashlight = "[${SeatEjectKey}] El Feneri Yapımı",
		crafting_flashlight = "El Feneri Yapımı İşlemi",
		crafted_flashlight = "El Feneri yapıldı.",
		failed_craft_flashlight = "El Feneri yapımı başarısız.",

		mix_paint = "Boya Karıştırma",
		press_mix_paint = "[${SeatEjectKey}] Boya Karıştırma",
		mixing_paint = "Boya karıştırılıyor.",
		mixed_paint = "Boya karıştırıldı.",
		failed_mix_paint = "Boya karıştırma başarısız oldu.",

		modify_knuckle = "Sopa Düzenle",
		press_modify_knuckle = "[${SeatEjectKey}] Sopa Düzenle",
		modifying_knuckle = "Sopa Düzenleniyor",
		modified_knuckle = "Sopa Düzenlendi.",
		failed_modify_knuckle = "Sopa düzenlemesi başarısız oldu.",

		craft_jammer = "Jammer Oluştur",
		press_craft_jammer = "[${SeatEjectKey}] Jammer Oluştur",
		crafting_jammer = "Jammer Oluşturuluyor",
		crafted_jammer = "Jammer oluşturuldu.",
		failed_craft_jammer = "Jammer oluşturma başarısız oldu.",

		craft_advanced_repair_kit = "Gelişmiş Tamir Kiti Oluştur",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] Gelişmiş Tamir Kiti Oluştur",
		crafting_advanced_repair_kit = "Gelişmiş Tamir Kiti Oluşturuluyor",
		crafted_advanced_repair_kit = "Gelişmiş tamir kiti oluşturuldu.",
		failed_craft_advanced_repair_kit = "Gelişmiş tamir kiti oluşturma başarısız oldu.",

		pulverize_aluminium = "Alüminyum Tozu Yap",
		press_pulverize_aluminium = "[${SeatEjectKey}] Alüminyum Tozu Yap",
		pulverizing_aluminium = "Alüminyum Tozu Yapılıyor",
		pulverized_aluminium = "Alüminyum tozu yapıldı.",
		failed_pulverize_aluminium = "Alüminyum öğütme başarısız oldu.",

		pulverize_steel = "Çelik öğütme",
		press_pulverize_steel = "[${SeatEjectKey}] Çelik öğütme",
		pulverizing_steel = "Çelik öğütülüyor",
		pulverized_steel = "Çelik öğütüldü.",
		failed_pulverize_steel = "Çelik öğütme başarısız oldu.",

		mix_thermite = "Termi mixleme",
		press_mix_thermite = "[${SeatEjectKey}] Termi mixleme",
		mixing_thermite = "Termi karıştırılıyor",
		mixed_thermite = "Termi karıştırıldı.",
		failed_mix_thermite = "Termi mixleme başarısız oldu.",

		deconstruct_phone = "Telefonu Demonte Et",
		press_deconstruct_phone = "[${SeatEjectKey}] Telefonu Demonte Et",
		failed_deconstruct_phone = "Telefonun demonte edilemedi.",

		deconstruct_radio = "Radyoyu Demonte Et",
		press_deconstruct_radio = "[${SeatEjectKey}] Radyoyu Demonte Et",
		failed_deconstruct_radio = "Radyonun demonte edilemedi.",

		deconstruct_raspberry = "Raspberry'yi Demonte Et",
		press_deconstruct_raspberry = "[${SeatEjectKey}] Raspberry'yi Demonte Et",
		failed_deconstruct_raspberry = "Raspberry'nin demonte edilemedi.",

		deconstruct_chip = "Çipi Sök",
		press_deconstruct_chip = "[${SeatEjectKey}] Çipi Sök",
		failed_deconstruct_chip = "Çip sökme başarısız oldu.",

		craft_device_scanner = "Cihaz Tarayıcısı Yap",
		press_craft_device_scanner = "[${SeatEjectKey}] Cihaz Tarayıcısı Yap",
		crafting_device_scanner = "Cihaz Tarayıcısı Yapılıyor",
		crafted_device_scanner = "Cihaz tarayıcısı yapıldı.",
		failed_craft_device_scanner = "Cihaz tarayıcısı yapma başarısız oldu.",

		craft_decryption_key = "Şifre Çözme Anahtarı Yap",
		press_craft_decryption_key = "[${SeatEjectKey}] Şifre Çözme Anahtarı Yap",
		crafting_decryption_key = "Şifre Çözme Anahtarı İmalatı",
		crafted_decryption_key = "Şifre çözme anahtarı imal edildi.",
		failed_craft_decryption_key = "Şifre çözme anahtarı imalatı başarısız oldu.",

		craft_tire_wall = "Lastik Duvar İmalatı",
		press_craft_tire_wall = "[${SeatEjectKey}] Lastik Duvar İmal Et",
		crafting_tire_wall = "Lastik Duvar İmal Ediliyor",
		crafted_tire_wall = "Lastik duvarı imal edildi.",
		failed_craft_tire_wall = "Lastik duvarı imalatı başarısız oldu.",

		fix_tire_wall = "Lastik Duvarını Tamir Et",
		press_fix_tire_wall = "[${SeatEjectKey}] Lastik Duvarını Tamir Et",
		fixing_tire_wall = "Lastik duvarı tamir ediliyor.",
		fixed_tire_wall = "Lastik duvarı tamir edildi.",
		failed_fix_tire_wall = "Lastik duvarı tamir edilemedi.",

		saw_shotgun = "Testereyle kesilmiş av tüfeği",
		press_saw_shotgun = "[${SeatEjectKey}] Testereyle kesilmiş av tüfeği",
		sawing_shotgun = "Av tüfeği testerelemesi",
		sawed_shotgun = "Av tüfeği testere ile kesilmiştir.",
		failed_saw_shotgun = "Av tüfeği testere ile kesilemedi.",

		bake_brownies = "Kahverengi kek pişirme",
		press_bake_brownies = "[${SeatEjectKey}] Kahverengi kek pişirme",
		baking_brownies = "Kahverengi kek pişiriliyor",
		baked_brownies = "Kahverengi kek pişirildi.",
		failed_bake_brownies = "Kahverengi kek pişirilemedi.",

		mix_brushstroke_paint = "Fırça Vuruşu Boyası Karıştır",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] Fırça Vuruşu Boyası Karıştır",
		mixing_brushstroke_paint = "Fırça Vuruşu Boyası Karıştırılıyor",
		mixed_brushstroke_paint = "Fırça vuruşu boyası karıştırıldı.",
		failed_mix_brushstroke_paint = "Fırça vuruşu boyası karıştırılamadı.",

		mix_skull_paint = "Kafatası Boyası Karıştır",
		press_mix_skull_paint = "[${SeatEjectKey}] Kafatası Boyası Karıştır",
		mixing_skull_paint = "Kafatası Boyası Karıştırılıyor",
		mixed_skull_paint = "Kafatası boyası karıştırıldı.",
		failed_mix_skull_paint = "Kafatası boyası karıştırılamadı.",

		mix_leopard_paint = "Leopar Desenli Boya Karışımı",
		press_mix_leopard_paint = "[${SeatEjectKey}] Leopar Desenli Boya Karıştır",
		mixing_leopard_paint = "Leopar Desenli Boya Karıştırılıyor",
		mixed_leopard_paint = "Leopar desenli boya karıştırıldı.",
		failed_mix_leopard_paint = "Leopar desenli boya karıştırma başarısız oldu.",

		mix_zebra_paint = "Zebra Desenli Boya Karışımı",
		press_mix_zebra_paint = "[${SeatEjectKey}] Zebra Desenli Boya Karıştır",
		mixing_zebra_paint = "Zebra Desenli Boya Karıştırılıyor",
		mixed_zebra_paint = "Zebra desenli boya karıştırıldı.",
		failed_mix_zebra_paint = "Zebra desenli boya karıştırma başarısız oldu.",

		mix_geometric_paint = "Geometrik Desenli Boya Karışımı",
		press_mix_geometric_paint = "[${SeatEjectKey}] Geometrik Boyayı Karıştır",
		mixing_geometric_paint = "Geometrik Boya Karıştırılıyor",
		mixed_geometric_paint = "Geometrik boya karıştırıldı.",
		failed_mix_geometric_paint = "Geometrik boyayı karıştırma başarısız oldu.",

		mix_patriotic_paint = "Patriotik Boyayı Karıştır",
		press_mix_patriotic_paint = "[${SeatEjectKey}] Patriotik Boyayı Karıştır",
		mixing_patriotic_paint = "Patriotik Boya Karıştırılıyor",
		mixed_patriotic_paint = "Patriotik boya karıştırıldı.",
		failed_mix_patriotic_paint = "Patriotik boyayı karıştırma başarısız oldu.",

		craft_radio_decrypter = "Telsiz Şifre Çözücüsü İmalatı",
		press_craft_radio_decrypter = "[${SeatEjectKey}] Telsiz Şifre Çözücüsü İmalatı",
		crafting_radio_decrypter = "Telsiz Şifre Çözücüsü İmal Ediliyor",
		crafted_radio_decrypter = "Telsiz şifre çözücüsü imal edildi.",
		failed_craft_radio_decrypter = "Telsiz şifre çözücüsü imal edilemedi.",

		craft_grenade_shell = "El Bombası Kabı İmalatı",
		press_craft_grenade_shell = "[${SeatEjectKey}] El Bombası Kabı İmalatı",
		crafting_grenade_shell = "El Bombası Kabı İmal Ediliyor",
		crafted_grenade_shell = "El bombası kabı imal edildi.",
		failed_craft_grenade_shell = "El bombası kabuğu üretimi başarısız oldu.",

		craft_grenade_pin = "El Bombası Pimi Üret",
		press_craft_grenade_pin = "[${SeatEjectKey}] El Bombası Pimi Üret",
		crafting_grenade_pin = "El bombası pimi üretiliyor.",
		crafted_grenade_pin = "El bombası pimi üretildi.",
		failed_craft_grenade_pin = "El bombası pimi üretimi başarısız oldu.",

		craft_gas_grenade = "Gaz Dolu El Bombası Üret",
		press_craft_gas_grenade = "[${SeatEjectKey}] Gaz Dolu El Bombası Üret",
		crafting_gas_grenade = "Gaz dolu el bombası üretimi gerçekleştiriliyor.",
		crafted_gas_grenade = "Gaz dolu el bombası üretildi.",
		failed_craft_gas_grenade = "Gaz bombası üretme işlemi başarısız oldu.",

		break_apart_ring = "Yuzuk Parcalama",
		press_break_apart_ring = "[${SeatEjectKey}] Yüzük parçalama",
		breaking_ring = "Yüzük parçalama işlemi",
		broke_ring = "Yüzük parçalandı.",
		failed_break_ring = "Yüzük parçalama işlemi başarısız oldu.",

		no_required_items = "Tüm gerekli öğeleriniz yok.",

		debug_multi = "-Birden Fazla Çıkış-",

		used_crafting_station_title = "Üretim İstasyonu",
		used_crafting_station_details = "${consoleName} adlı kişi, ${amount} adet ${itemName} üretmek için üretim istasyonunu kullandı."
	},

	crashes = {
		crash_failed = "${consoleName} adlı kişinin çökertilmesi başarısız oldu.",
		crash_success = "${consoleName} adlı kişinin çökertilmesi başarıyla gerçekleşti.",
		server_id_invalid = "Geçersiz sunucu ID'si."
	},

	creation = {
		turn_right = "Sağa Dön",
		turn_left = "Sola Dön"
	},

	creation_menu = {
		character_creation = "Karakter Oluşturma",
		new_character = "YENİ KARAKTER",

		select_a_model = "Bir model seçin.",

		heritage = "Miras",
		heritage_description = "Ebeveynlerinizi seçmek için seçin.",
		mom = "Anne",
		mom_description = "Annenizi seçin.",
		dad = "Baba",
		dad_description = "Babanızı seçin.",
		resemblance = "Benzerlik",
		resemblance_description = "Özelliklerinizin daha çok anneniz mi, babanız mı tarafından etkilendiğini seçin.",
		skin_tone = "Ten Rengi",
		skin_tone_description = "Cildinizin daha çok anneniz mi, babanız mı tarafından etkilendiğini seçin.",
		divorced = "Boşanmış",
		divorced_description = "Ebeveynleriniz boşanmışsa seçin.",

		["in"] = "in",
		out = "dışarı",
		up = "yukarı",
		down = "aşağı",
		brow = "Kaş",
		brow_description = "Fiziksel özelliklerinize değişiklik yapın.",

		squint = "Kısık",
		wide = "Geniş",
		eyes = "Gözler",
		eyes_description = "Fiziksel özelliklerinize değişiklik yapın.",

		narrow = "Dar",
		wide = "Geniş",
		nose = "Burun",
		nose_description = "Fiziksel özelliklerinize değişiklik yapın.",

		short = "Kısa",
		long = "Uzun",
		crooked = "Eğri",
		curved = "Kavisli",
		nose_profile = "Burun Profili",
		nose_profile_description = "Fiziksel özelliklerinizi değiştirin.",

		broken_left = "Sol Kırık",
		broken_right = "Sağ Kırık",
		tip_up = "Burun Ucu Yukarı",
		tip_down = "Burun Ucu Aşağı",
		nose_tip = "Burun Ucu",
		nose_tip_description = "Fiziksel özelliklerinizi değiştirin.",

		cheekbones = "Elmacık Kemikleri",
		cheekbones_description = "Fiziksel özelliklerinizi değiştirin.",

		gaunt = "Kasık",
		puffed = "Yuvarlak",
		cheeks = "Yanaklar",
		cheeks_description = "Fiziksel özelliklerinizi değiştirin.",

		thin = "İnce",
		fat = "Şişman",
		lips = "Dudaklar",
		lips_description = "Fiziksel özelliklerinizi değiştirin.",

		round = "Yuvarlak",
		square = "Kare",
		jaw = "Çene",
		jaw_description = "Fiziksel özelliklerinizi değiştirin.",

		chin_profile = "Çene Profili",
		chin_profile_description = "Fiziksel özelliklerinizi değiştirin.",

		pointed = "Sivri",
		rounded = "Yuvarlak",
		bum = "Çıkıntı",
		chin_shape = "Çene Şekli",
		chin_shape_description = "Fiziksel özelliklerinizi değiştirin.",

		thick = "Kalın",
		neck_thickness = "Boyun Kalınlığı",
		neck_thickness_description = "Fiziksel özelliklerinizi değiştirin.",

		features = "Özellikler",
		appearance = "Görünüm",
		save_and_continue = "Kaydet ve Devam Et",
		components = "Parçalar",
		props = "Eşyalar",
		ambient_females = "Ortam Kadınları",
		ambient_male = "Ortam Erkekleri",
		animals = "Hayvanlar",
		cutscene = "Sahne Kesimi",
		gang_female = "Çete Kadınları",
		gang_male = "Çete Erkekleri",
		multiplayer = "Çok Oyunculu",
		scenario_female = "Senaryo Kadınları",
		scenario_male = "Senaryo Erkekleri",
		story = "Hikaye",
		story_scenario_female = "Hikaye Senaryo Kadınları",
		story_scenario_male = "Hikaye Senaryo Erkekleri",
		models = "Modeller",

		features_description = "Yüz özelliklerinizi değiştirmek için seçin.",

		unknown_hair = "Bilinmeyen Saç (${hairId})",
		unknown_eyebrow = "Bilinmeyen Kaş (${eyebrowId})",
		unknown_facial_hair = "Bilinmeyen Sakal & Bıyık (${facialHairId})",
		unknown_skin_blemish = "Bilinmeyen Cilt Lekesi (${skinBlemishId})",
		unknown_skin_aging = "Bilinmeyen Cilt Yaşlanması (${skinAgingId})",
		unknown_skin_complexion = "Bilinmeyen Cilt Tonu (${skinComplexionId})",
		unknown_moles_and_freckles = "Bilinmeyen Benekler ve Çilller (${molesAndFrecklesId})",
		unknown_skin_damage = "Bilinmeyen Cilt Hasarı (${skinDamageId})",
		unknown_eye_makeup = "Bilinmeyen Göz Makyajı (${eyeMakeupId})",
		unknown_blusher = "Bilinmeyen Allık (${blusherId})",
		unknown_lipstick = "Bilinmeyen Ruj (${lipstickId})",
		unknown_chest_hair = "Bilinmeyen Göğüs Kılı (${chestHairId})",

		color = "Renk",
		opacity = "Opaklık",

		hair = "Saç",
		hair_description = "Görünümünüzde değişiklik yapın.",

		eyebrows = "Kaşlar",
		eyebrows_description = "Görünümünüzde değişiklik yapın.",

		facial_hair = "Sakal ve Bıyık",
		facial_hair_description = "Görünümünüzde değişiklikler yapın.",

		skin_blemishes = "Cilt Lekeleri",
		skin_blemishes_description = "Görünümünüzde değişiklikler yapın.",

		skin_aging = "Cilt Yaşlanması",
		skin_aging_description = "Görünümünüzde değişiklikler yapın.",

		skin_complexion = "Cilt Görünümü",
		skin_complexion_description = "Görünümünüzde değişiklikler yapın.",

		moles_and_freckles = "Benekler ve Çil",
		moles_and_freckles_description = "Görünümünüzde değişiklikler yapın.",

		skin_damage = "Cilt Hasarı",
		skin_damage_description = "Görünümünüzde değişiklikler yapın.",

		eye_color = "Göz Rengi",
		eye_color_description = "Görünümünüzde değişiklik yapın.",

		eye_makeup = "Göz Makyajı",
		eye_makeup_description = "Görünümünüzde değişiklik yapın.",

		blusher = "Allık",
		blusher_description = "Görünümünüzde değişiklik yapın.",

		lipstick = "Ruj",
		lipstick_description = "Görünümünüzde değişiklik yapın.",

		chesthair = "Göğüs Kılı",
		chesthair_description = "Görünümünüzde değişiklik yapın.",

		ready_to_start_playing = "Oynamaya hazır mısınız?",
		no = "Hayır",
		go_back = "Geri Git.",
		yes = "Evet",
		you_will_not_be_able_to_return = "Geri dönemezsiniz.",

		freemode = "Freemode",
		freemode_description = "Freemode modelini kullanmak istiyorsanız seçin. Freemode modelleri yüksek ölçüde özelleştirilebilir.",

		sex = "Cinsiyet",
		sex_description = "Karakterinizin cinsiyetini seçin.",
		male = "Erkek",
		female = "Kadın",

		props_description = "Tercih ettiğiniz özellikleri seçin.",

		hat = "Şapka",
		glass = "Gözlük",
		ear = "Kulak",
		watch = "Saat",
		bracelet = "Bilezik",

		appearance_description = "Görünümünüzü değiştirmek için seçin.",
		components_description = "Tercih edilen bileşenleri seçiniz.",

		none = "Hiçbiri",

		texture = "${textureId} dokusu",
		drawable = "${drawableId} çizimi",

		clean_shaven = "Sakalsız",

		face = "Yüz",
		mask = "Maske",
		hair = "Saç",
		torso = "Gövde",
		leg = "Bacak",
		parachute_and_bag = "Paraşüt / çanta",
		shoes = "Ayakkabı",
		accessory = "Aksesuar",
		undershirt = "İç gömlek",
		kevlar = "Kevlar",
		badge = "Rozet",
		torso_two = "Gövde 2"
	},

	crosshair = {
		copied_config = "Yapılandırma panoya kopyalandı.",
		imported_config = "Yapılandırma içeri aktarıldı.",
		disabled_crosshair = "Özel nişangah devre dışı bırakıldı.",

		invalid_url_title = "Geçersiz resim URL'si",
		invalid_url_description = "Girdiğiniz resim URL'si geçersiz. Resmin doğrudan bağlantısı olmalı, resmi içeren bir web sitesine bağlantı değil. Aşağıdaki URL'lerden biriyle başlamalıdır:",
		cancel_button = "Tamam",

		center = "Merkez",
		main = "Ana",
		outer = "Dış",
		kill = "Kill Flash",

		enabled = "Etkinleştirildi",
		size = "Boyut",
		image = "Resim",
		length = "Uzunluk",
		offset = "Offset",
		secondary_offset = "İkincil Offset",
		rotation = "Döndürme",
		color = "Renk",
		duration = "Süre (ms)"
	},

	clip_saver = {
		start_recording = "Kaydı Başlat",
		clip_save = "Klibi Kaydet",
		clip_discard = "Klibi İptal Et"
	},

	compass = {
		north = "K",
		north_east = "KD",
		east = "D",
		south_east = "GD",
		south = "G",
		south_West = "SW",
		west = "B",
		north_west = "KB"
	},

	courthouse = {
		press_to_use_gavel = "Küçük Çekiçi kullanmak için ~INPUT_CONTEXT~ tuşuna basın."
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] Günlük Etkinlikler",
		daily_activities = "Günlük Etkinlikler",
		resets_in = "Sıfırlanacak süre ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "Kilidi açmak için diğer görevleri tamamlayın...",
		remain = "${remain} kaldı",
		remain_money = "$${remain} kaldı",
		claimed = "Talep edildi",
		claim = "Talep et",
		streak_reward = "Streak'iniz 7 veya daha fazla olduğunda, Lucky Wheel'de başka bir ücretsiz günlük çark çevirme hakkı kazanırsınız.",

		reset_daily_activities_no_permissions = "Oyuncu, uygun izinleri olmadan günlük etkinliklerini sıfırlamayı denedi.",
		reset_daily_activities = "Günlük Etkinlikleri Sıfırla",

		parachute_from_location = "${location} noktasından paraşütle atlama.",
		gamble_at_blackjack = "${amount} el Blackjack masasında oyna.",
		bring_in_items = "Aşağıdaki öğeleri getirin.",
		kills_in_arena = "Arena'da ${amount} öldürme yapın.",
		headshot_kills_in_arena = "Arena'da ${amount} kafadan vurma öldürmesi yapın.",
		punch_locals = "${amount} yerel halka yumruk atın.",
		move_from_place_to_place = "${time} saniyede ${from} yerinden ${to} yerine gidin.",
		put_bets_in_jackpot = "${amount}$ değerinde bahisleri Jackpot'a koyun.",
		win_bets_in_jackpot = "Jackpot'ta ${amount}$ değerinde öğeler kazanın.",
		chop_vehicles = "${amount} aracı parçalayın.",
		purchase_ammo = "${amount} cephane satın alın.",
		collect_items_from_diving = "Dalıştan ${amount} adet ${itemLabel} toplayın.",
		take_zombie_pills = "${amount} adet Zombi Hapı alın.",
		dig_up_a_treasure = "Hazine Haritası kullanarak bir hazine kazının.",
		refine_gems = "${amount} adet mücevher işleyin.",
		visit_location = "${location} adresini ziyaret edin.",
		visit_the_location = "${location} adresini ziyaret edin."
	},

	dashcam = {
		video = "Video",
		time = "Zaman",
		date = "Tarih",

		unit_id = "Birim ID",
		unit_name = "Birim Adı",
		unit_speed = "Birim Hızı",

		state_seal_one = "Bu araç, San Andreas Devleti'ne kayıtlıdır",
		state_seal_two = "San Andreas Devleti",
		state_seal_three = "Herhangi izinsiz kullanım, 13 S.A. Ceza Kanunu 502 (a) uyarınca ağır cezaya tabidir.",

		kmh = "km/s",
		mph = "mil/s",

		set_unit_id_to = "Birim Kimliğiniz şimdi ${unitId} olarak ayarlandı.",
		reset_unit_id = "Birim Kimliğiniz şimdi sıfırlandı.",
		failed_to_set_unit_id = "Birim Kimliği ayarlanamadı.",
		unit_id_already_set_to = "Birim Kimliğiniz zaten ${unitId} olarak ayarlandı.",
		unit_id_already_reset = "Birim Kimliğiniz zaten sıfırlandı.",
		invalid_unit_id = "Birim Kimliği 1 ile 999 arasında bir tam sayı olmalıdır.",

		unit_id_vehicles_updated = "Acil durum araçlarınız yeni birim kimliğinizi yansıtacak şekilde güncellendi: `${unitId}`."
	},

	debug = {
		ped = "Yaya",
		vehicle = "Araç",
		object = "Nesne",
		network_id = "Ağ Kimliği",
		owned_by_us = "Bize Ait",
		owned_by = "Sahibi",
		one_state_set = "1 Durum Ayarlandı",
		many_states_set = "${count} Durumlar Ayarlandı",
		no_states = "Durum Yok",
		entity_health = "Sağlık ${health}/${maxHealth}",
		owned_by_server = "Sunucu",
		first_owned_short = "İlk Sahibi: ${firstOwned}",
		network_id_side = "Ağ ID'si: ${networkId}",
		no_target = "Hedef Yok",
		invalid_radius_parameter = "Geçersiz `yarıçapı` parametresi.",
		inject_code_not_developer = "Oyuncu kod enjekte etmeye çalıştı, ancak geliştirici değil.",
		inject_code_invalid_player = "Sunucu Kimliği `${serverId}` olan oyuncu bulunamadı.",
		inject_code_success_for_everyone = "Herkes için kod başarıyla enjekte edildi.",
		inject_code_success_for_player = "${consoleName} için kod başarıyla enjekte edildi.",
		inject_code_success = "Kod başarıyla enjekte edildi.",
		inject_code_target_user_not_found = "Hedef kullanıcı bulunamadı.",
		inject_code_invalid_text = "Geçersiz metin.",
		inject_code_invalid_input = "Geçersiz giriş.",
		inject_code_no_permissions = "İzin yok.",
		inject_code_user_not_found = "Kullanıcı bulunamadı.",
		inject_code_invalid_url = "Geçersiz URL.",
		inject_code_invalid_radius = "Geçersiz yarıçap.",
		game_pools = "Oyun Havuzları:",
		ped_config_flags = "Ped Yapılandırma Bayrakları:",
		ped_is = "Ped:",
		vehicle_is = "Araç:",
		native_calls = "Doğal Araçlar : ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "Oyuncu Hızı:${playerSpeed}",
		player_ped = "Oyuncu Pedi: ${playerPedId}",
		heading = "Başlık: ${heading}",
		coords = "Koordinatlar: ${coords}",
		rotation = "Döndürme: ${rotation}",
		velocity = "Hız: ${velocity}",
		ground_material = "Zemin Malzemesi: ${material}",
		g_force = "G-Kuvveti: ${force}",
		debug_print_f8 = "Hata ayıklama bilgileri F8 konsolunda yazdırıldı.",
		no_vehicle_bone = "\"${boneName}\" isimli kemik bulunamadı",

		distance = "Mesafe: ${distance}m",
		distance_first = "İlk pozisyon kaydedildi.",

		get_search_invalid = "Geçersiz arama (en az 2 karakter).",

		disabled_ped_bone_debug = "Ped kemiği hata ayıklama devre dışı bırakıldı.",

		mph = "mph",
		vehicle_speed = "Hız: ${speed}",
		vehicle_average = "Ortalama: ${speed}",
		vehicle_top_speed = "En Yüksek Hız: ${speed}",
		vehicle_acceleration = "0'dan 60'a: ${time}",
		vehicle_acceleration_120 = "0'dan 120'e: ${time}",
		vehicle_acceleration_150 = "0'dan 150'ye: ${time}",
		vehicle_acceleration_force = "Başlatma Kuvveti: ${force}",

		invalid_network_id = "Geçersiz ağ kimliği.",
		delete_entity_success = "${networkId} ağ kimliği ile varlık başarıyla silindi.",
		delete_entity_failed = "Varlık silinemedi.",
		delete_entity_no_permissions = "Oyuncu uygun izin olmadan bir varlık silmeye çalıştı.",

		move_entity_success = "${networkId} ağ kimliği olan varlık başarıyla taşındı.",
		move_entity_failed = "Varlık taşınamadı.",
		move_entity_no_permissions = "Oyuncu uygun izin olmadan bir varlığı taşımaya çalıştı.",

		fake_lag_updated = "Sahte gecikme sayacı '${counter}' olarak güncellendi.",
		fake_lag_already_set_to = "Sahte gecikme sayacı zaten '${counter}' olarak ayarlanmış.",
		fake_lag_enabled = "Sahte gecikme, sayıcısı `${counter}` ile etkinleştirildi.",
		fake_lag_invalid_counter_value = "Sahte gecikme için geçersiz sayaç değeri `${counter}`.",
		fake_lag_disabled = "Sahte gecikme devre dışı bırakıldı.",
		fake_lag_not_enabled = "Sahte gecikme etkinleştirilmemiş.",

		weapon_name_missing = "Silah ismi parametresi eksik.",
		weapon_name_invalid = "`${weaponName}` geçerli bir silah ismi değil.",
		model_name_missing = "Model ismi parametresi eksik.",
		model_name_invalid = "`${modelName}` geçerli bir model ismi değil.",
		model_view_enabled = "Model görünümü etkinleştirildi.",
		model_view_disabled = "Model görünümü devre dışı bırakıldı.",
		invalid_component = "Geçersiz bileşen `${componentName}`.",

		animation_currently_playing = "Şu anda bir animasyon oynatılıyor.",
		invalid_or_missing_animation_dict = "Geçersiz veya eksik animasyon sözlüğü `${animationDict}`.",
		missing_animation_name = "Geçersiz veya eksik animasyon adı `${animationName}`.",
		invalid_animation_flags = "Geçersiz animasyon bayrakları.",
		animation_played = "Oynatılan animasyon: `${animationDict}` `${animationName}` (bayraklar: ${flags}).",
		no_flags = "Bilinmiyor",

		invalid_coordinates = "Geçersiz koordinatlar.",
		added_coordinates_draw = "Koordinatlar `x: ${x}, y: ${y}, z: ${z}` ID `${drawId}` ile çizim listesine eklendi.",
		no_coordinate_draws_to_destroy = "Silinecek koordinat çizimleri mevcut değil.",
		destroyed_coordinate_draws = "${drawingCoordinatesAmount} koordinat çizimi yok edildi.",

		debug_damage_enabled = "Hasar hata ayıklama etkinleştirildi.",
		debug_damage_disabled = "Hasar hata ayıklama devre dışı bırakıldı.",

		enabled_network_debug = "Varlık ağı hata ayıklama etkinleştirildi.",
		disabled_network_debug = "Varlık ağının hata ayıklaması devre dışı bırakıldı.",
		failed_network_debug = "Varlık ağının hata ayıklaması etkinleştirilemedi.",

		network_owner_subscription_no_permissions = "Varlık sahiplerine abone olmak için uygun izin yok.",

		missing_ipl = "İpl parametresi eksik.",
		enabled_ipl = "İpl `${ipl}` başarıyla etkinleştirildi.",
		disabled_ipl = "İpl `${ipl}` başarıyla devre dışı bırakıldı.",

		enabled_ipl_globally = "İpl `${ipl}` tüm dünyada başarıyla etkinleştirildi.",
		failed_enabled_ipl_globally = "İpl'nin tüm dünyada etkinleştirilmesi başarısız oldu.",
		disabled_ipl_globally = "Global olarak ${ipl} ipl'i başarıyla devre dışı bırakıldı.",
		failed_disabled_ipl_globally = "Global olarak ipl devre dışı bırakılamadı.",

		enabled_ipls_list = "Aktif IPL'ler: ${list}.",
		no_ipls_enabled = "Hiçbir IPL etkin değil.",

		missing_code = "Kod parametresi eksik.",
		run_code_success = "Kod parçası başarıyla çalıştırıldı.",
		run_code_error = "Kod parçası bir hata verdi.",

		searching_world = "Dünya aranıyor:\n${modelNames}",
		copied_clipboard = "Koordinatlar panoya kopyalandı.",

		saved_vehicle_model_lists_to_file = "Araç modeli listeleri sunucuda bir dosyaya kaydedildi.",

		network_debug_logs_title = "Ağ Hata Ayıklama Etkinleştirildi",
		network_debug_logs_details_on = "${consoleName} ağ hata ayıklamasını açtı.",
		network_debug_logs_details_off = "${consoleName} ağ hata ayıklamasını kapattı."
	},

	debug_menu = {
		menu_title = "Hata Ayıklama Menüsü",

		timecycles = "Zaman Çevrimleri",
		weather = "Hava Durumu",
		reset = "Sıfırla",
		refresh_interior = "İç Mekanı Yenile"
	},

	dna_evidence = {
		taking_sample = "DNA Numunesi Alma",
		already_taking_sample = "Zaten bir oyuncunun dna örneğini alıyorsunuz.",
		sample_no_player = "Yakınında alabileceğiniz bir oyuncu bulunmamaktadır.",
		sample_no_bags = "Herhangi bir kanıt poşetiniz bulunmamaktadır.",
		dna_evidence_bag = "DNA Kanıtı",

		evidence_failed = "DNA kanıtı alınamadı.",

		evidence_text = "Kanıt Türü: DNA Kanıtı\n${fullName} #${characterId}'den toplanan DNA\n\nEk Bilgi:\n • Toplama Zamanı: ${time}"
	},

	doors = {
		locked = "Kilitli",
		unlocked = "Açık",
		locked_press_to_unlock = "[${InteractionKey}] Kilidi aç",
		unlocked_press_to_lock = "[${InteractionKey}] Kilitle",
		locking = "Kilitleniyor",
		unlocking = "Açılıyor",
		jewelry_store_closed = "Mücevher Mağazası şu anda kapalıdır. Lütfen daha sonra tekrar geliniz.",
		bank_closed = "Banka şu anda kapalıdır. Lütfen daha sonra tekrar geliniz.",
		store_closed = "Mağaza şu anda kapalıdır. Lütfen daha sonra tekrar geliniz.",
		failed_to_sync_doors = "Kapılar senkronize edilemedi. Muhtemelen bir şey bozuldu. Lütfen tekrar deneyin.",
		saved_doors_to_file = "Sunucuda `${amount}` kapı dosyaya kaydedildi.",
		no_nearby_doors = "Kaydedilecek yakındaki kapı yok.",
		lockpicking_door = "Kilit açma kapısı",

		debug_doors_on = "Kapı hata ayıklama açık.",
		debug_doors_off = "Kapı hata ayıklama kapalı.",
		doors_no_job = "Mevcut değil."
	},

	elevators = {
		use_elevator = "[${InteractionKey}] Asansörü kullan",
		elevator_title = "Asansör",
		close_menu = "Menüyü Kapat",
		already_on_floor = "Zaten bu kata ulaştınız.",

		no_elevator_nearby = "Yakınında asansör yok.",
		elevator_enabled = "Başarıyla ${elevatorId} numaralı asansör etkinleştirildi.",
		elevator_disabled = "Asansör #${elevatorId} başarıyla devre dışı bırakıldı.",
		elevator_toggle_failed = "Asansör açma/kapatma işlemi başarısız oldu.",
		elevator_enabled_all = "Tüm asansörler başarıyla etkinleştirildi.",

		out_of_service = "Hizmet Dışı",
		out_of_service_help = "Bu asansör şu anda hizmet dışıdır.",

		current = "Mevcut",
		up = "Yukarı",
		down = "Aşağı",

		floor_tunnel_entrance = "Tünel Girişi",
		floor_underground_tunnel = "Yer Altı Tüneli",

		floor_lounge = "Lobi",

		floor_garage = "Garaj",
		floor_lobby = "Lounge",
		floor_roof = "Çatı",
		floor_helipad = "Helikopter Pisti",

		floor_shop = "Dükkan",

		floor_casino = "Kumarhane",
		floor_security = "Güvenlik",
		floor_loading_bay = "Yükleme Bölgesi",
		floor_vault = "Kasa Odası",

		floor_second_floor = "İkinci Kat",
		floor_icu = "Yoğun Bakım",
		floor_ground = "Zemin Kat",
		floor_surgery = "Cerrahi",

		floor_entrance = "Giriş",
		floor_server_room = "Sunucu Odası",

		floor_50 = "50. Kat",
		floor_49 = "49. Kat",
		floor_47 = "47. Kat",
		floor_basement = "Bodrum Kat",

		floor_exclusive_dealership = "Özel Satıcı",
		floor_mayors_office = "Belediye Başkanının Odası",
		floor_mechanic_shop = "Tamirci Dükkanı",

		floor_fourth_floor = "4. Kat",
		floor_third_floor = "3. Kat",

		floor_obelisk = "Obelisk",
		floor_hangout = "Takılınacak Yer",
		floor_penthouse = "Üst Daire",
		floor_theatre_office = "Tiyatro Ofisi",
		floor_psychiatrists_office = "Psikiyatristin Ofisi",
		floor_nightclub_garage = "Gece Kulübü Garajı",
		floor_submarine = "Denizaltı",

		floor_lower_penthouse = "Alt Üst Daire",
		floor_middle_penthouse = "Orta Üst Daire",
		floor_upper_penthouse = "Üst Üst Daire",

		floor_showroom = "Araç Sergisi",
		floor_office = "Ofis",
		floor_doj_office = "Adalet Bakanlığı Ofisi",

		floor_penthouse_top = "Penthouse (En Üst Kat)",
		floor_penthouse_entrance = "Penthouse (Giriş)",

		floor_containment = "Kısıtlama Odası",

		doj_office = "Adalet Bakanlığı Ofisi"
	},

	emails = {
		title = "OP E-Posta",
		email_domain = "san-andreas.gov",

		app_title = "E-Posta",

		error_loading_emails = "E-Postalarınız yüklenirken bir şeyler yanlış gitti.",

		new_email_notification = "~o~Yeni E-Posta",

		email_label = "E-Posta",
		password_label = "Parola",
		set_password = "Parola Ayarla",
		inbox = "Gelen Kutusu",
		outbox = "Gönderilenler",
		new_email = "Yeni E-Posta",

		loading = "Yükleniyor...",
		failed_load_email = "E-posta içeriği yüklenemedi.",

		from_label = "Kimden",
		to_label = "Kime",

		send_email = "Gönder",

		no_emails = "E-posta yok.",
		to_email = "${email} adresine",

		error_no_subject = "E-posta konusu eksik.",
		error_invalid_target = "Geçersiz hedef e-posta adresi.",
		error_subject_too_long = "E-posta konusu çok uzun.",
		error_body_too_long = "E-posta içeriği çok uzun.",
		error_body_missing = "E-posta içeriği eksik.",
		error_failed_send = "E-posta gönderimi başarısız oldu.",
		error_password_empty = "Parola boş olamaz.",
		error_password_update_failed = "Parola güncelleme başarısız oldu."
	},

	emote_items = {
		give_item = "[${InteractionKey}] ${itemName} ver",
		received_item = "${firstName} adlı kişi size bir ${itemName} verdi.",
		give_item_success = "${itemName} isimli öğe başarıyla bir kişiye verildi.",
		give_item_failed = "${itemName} isimli öğe bir kişiye verilemedi."
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] ${label} satın al $${price}",

		confirm_purchase = "Satın Almayı Onayla",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "Vazgeç, istemiyorum",
		accept_purchase = "Evet, satın almak istiyorum",
		accept_purchase_info = "Bu aracı satın almak istediğinizden emin misiniz? Bu işlem geri alınamaz.",

		purchased_vehicle = "${label} adlı araç $${price}'a satın alındı.",
		insufficient_funds = "Yetersiz bakiye.",
		area_not_clear = "Spawn alanı temiz değil.",
		invalid_package = "Yanlış destekçi bağışı.",
		something_went_wrong = "Bir şeyler yanlış gitti.",

		failed_vehicle_spawn = "Araç spawn etme başarısız oldu. Araç hala garajınızda olacak.",

		next_rotation_in = "${time} sonra bir sonraki dönüşüm.",

		exclusive_dealership_blip = "Özel Deluxe Motorsport",
		exclusive_buyback_blip = "Prestij Jant Takas",

		buyback_vehicle_help = "Değiş tokuşa erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		buyback_title = "Prestij Jant Takası",
		sell_closest_vehicle = "En yakın ${label}'i $${price} (${percent}% fiyatına satmak ister misin?)",
		deny_sale = "Hayır, satmak istemiyorum",
		accept_sale = "Evet, eminim",
		accept_sale_description = "Bu aracınızı $${price}'a satmak istediğinizden emin misiniz? Bu işlem geri alınamaz.",
		are_you_sure_sell = "Satmak istediğinizden emin misiniz?",
		no_vehicle_to_sell = "Satılabilir araç yok.",
		vehicle_not_owned = "Bu araca sahip değilsiniz.",
		sale_success = "Başarıyla `${label}` aracınızı $${price}'a sattınız.",

		sale_log_title = "EDM Geri Satın Alma",
		sale_log_description = "${consoleName}, `${label}` adlı eşyasını $${price} fiyatıyla sattı.",

		log_title = "EDM Satın Alma",
		log_description = "${label}'yi ${price}$ karşılığında satın aldı."
	},

	failures = {
		engine_failure_chance = "Motor arızası olma şansı ${chance}'e ayarlandı.",
		failure_chance_invalid = "Motor arızası olma şansı 1 ile 1500 arasında olmalıdır.",
		engine_failure_reset = "Motor arızası olma şansı varsayılana sıfırlandı."
	},

	fake_ids = {
		press_to_purchase = "Sahte Kimlik satın almak için ~INPUT_CONTEXT~ tuşuna basın.",

		store_title = "Sahte Kimlik Mağazası",

		female_id = "Kadın Sahte Kimlik",
		male_id = "Erkek Sahte Kimlik",
		close_menu = "Menüyü Kapat",

		logs_purchased_title = "Sahte Kimlik Satın Alındı",
		logs_purchased_details = "${consoleName} bir ${type} (${firstName} ${lastName} #${characterId}) satın aldı.",

		something_went_wrong = "Bir şeyler yanlış gitti.",
		failed_not_on_duty = "Bir sahte kimlik satın almak için görevde olmalısınız.",
		failed_not_enough_money = "Sahte kimlik satın almak için yeterli paranız yok.",
		purchase_success = "Başarıyla $3.000 karşılığında bir sahte kimlik satın aldınız."
	},

	fingerprint = {
		taking_fingerprint = "Parmak İzi Alınıyor",
		already_fingerprinting = "Zaten bir oyuncunun parmak izini alıyorsunuz.",
		sample_no_player = "Yakınızda parmak izi alabileceğiniz bir oyuncu yok.",
		sample_no_bags = "Herhangi bir delil poşetiniz yok.",
		fingerprint_evidence = "Parmak İzi",

		evidence_failed = "Parmak izi alınamadı.",

		evidence_text = "Delil Türü: Parmak İzi\n${fullName} #${characterId} kişisinin parmak izi.\n\nEk Bilgiler:\n • Toplama zamanı: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] Havai Fişek At"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "Bayrak değişimlerini uygun izinler olmadan etkisizleştirmeye çalışıldı.",

		toggled_flag_swap_on = "Bayrak değişimi açıldı.",
		toggled_flag_swap_off = "Bayrak takası kapalı.",

		showing_flags = "Bayraklar gösteriliyor.",
		not_showing_flags = "Artık bayraklar gösterilmiyor.",

		flag_swap_leaderboard = "Bayrak Takası Sıralaması",
		ongoing = "Devam Ediyor",
		not_ongoing = "Devam Etmiyor",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} bayrak",
		players_with_most_flags_will_show_here = "En fazla sayıda bayrağı olan oyuncular burada gösterilecek."
	},

	forcefields = {
		invalid_radius = "Geçersiz yarıçap (1 ile 200 arasında olmalıdır).",
		failed_create = "Kuvvet alanı oluşturma başarısız oldu.",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "Geçersiz kuvvet alanı ID'si.",
		failed_destroy = "Kuvvet alanı yok etme başarısız oldu.",

		create_forcefield_no_permissions = "Oyuncu, gerekli izinlere sahip olmadan bir kuvvet alanı oluşturmaya çalıştı.",
		destroy_forcefield_no_permissions = "Oyuncu, gerekli izinlere sahip olmadan bir kuvvet alanı yok etmeye çalıştı."
	},

	fortnite = {
		add_building_no_permissions = "Oyuncu, gereken izinlere sahip olmadan bir Fortnite binası eklemeye çalıştı.",
		wipe_buildings_no_permissions = "Oyuncu, Fortnite binalarını silmek için gerekli izinlere sahip değil, bu yüzden ekleyemedi.",

		no_buildings_in_radius = "${radius} yarıçapı içinde bina yok.",
		no_buildings = "Hiç bina yok.",
		wiped_buildings_in_radius = "${radius} yarıçapı içinde ${removedBuildings} bina silindi.",
		wiped_buildings = "${removedBuildings} bina silindi."
	},

	freecam = {
		enabled_freecam = "Freecam etkinleştirildi.",
		disabled_freecam = "Freecam devre dışı bırakıldı.",
		freecam_failed = "Freecam etkinleştirilemedi. Noclip veya benzeri bir şeyi etkinleştirdiniz mi?",

		freecam_logs_title = "Freecam Etkinleştirildi",
		freecam_on_logs_details = "${consoleName} freecam modunu açtı.",
		freecam_off_logs_details = "${consoleName} freecam modunu kapattı.",

		track_player_logs_title = "Takip Ediliyor",
		track_player_logs_details = "${consoleName}, orbitcam'i kullanarak ${targetName} adlı oyuncuyu takip ediyor.",

		freecam_no_permission = "Gerekli izinler olmadan freecam modunu açmaya çalıştı.",
		track_player_no_permission = "Gerekli izinler olmadan orbitcam ile bir oyuncuyu takip etmeye çalıştı.",

		freecam_inactive = "Şu anda serbest kamera modunda değilsiniz.",
		added_point = "Kamera noktası eklendi, index: ${index} (Geçiş: ${transition}ms).",
		disable_freecam = "Noktaları oynatmak için serbest kamera modunu kapatın.",
		not_enough_points = "Noktaları oynamak için en az 2 noktaya ihtiyacınız var.",
		already_replaying = "Kamera noktaları zaten oynatılıyor.",
		cleared_points = "Tüm kamera noktaları temizlendi.",
		replaced_point = "Kamera noktası değiştirildi, index: ${index} (Geçiş: ${transition}ms).",
		moved_to_point = "Serbest kamera noktası ${index}'e taşındı (Geçiş: ${transition}ms).",
		invalid_point_index = "Geçersiz kamera noktası indeksi."
	},

	frisk = {
		frisk_no_player = "Friske edebileceğiniz bir oyuncu yakınında yok.",
		already_frisking = "Zaten bir oyuncuyu friske ediyorsunuz.",
		frisk_failed = "Oyuncunun frisk işlemi başarısız oldu.",
		frisking = "Oyuncu frisk ediliyor",

		frisk_category_0 = "Herhangi bir silahı yok gibi görünüyor.",
		frisk_category_1 = "Olabilir bir silahı varmış gibi görünüyor.",
		frisk_category_2 = "Silahı olduğu gibi görünüyor.",
		frisk_category_3 = "Kesinlikle büyük bir silahı var gibi görünüyor.",
		frisk_category_4 = "Kesinlikle büyük bir silahı var."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] ${fruit} topla",
		picking_fruit = "${fruit} toplanıyor",

		shake_tree = "Ağacı sallamak için ~INPUT_CONTEXT~ tuşuna basın.",
		shaking_tree = "Ağaç sallanıyor",

		tree_klonk = "Ağaçtan bir şey düştü ve başınıza geldi."
	},

	gas_masks = {
		gas_grenade = "Gaz bombası",
		in_gas_circle = "Gaz dairesinde!",
		not_in_gas_circle = "Gaz dairesinde değilsiniz.",
		gas_time_left = "Gaz maskesi için ${gasTime} saniyeniz kaldı.",
		hold_to_take_gas_mask_off = "Gaz Maskesini çıkarmak için ~INPUT_VEH_HEADLIGHT~ tuşuna basılı tutun.",
		hold_to_take_gas_mask_off_holding = "Gaz Maskesini çıkarmaya devam etmek için basılı tutun."
	},

	gps = {
		altitude = "Yükseklik",
		latitude = "Enlem",
		longitude = "Boylam",
		speed = "Hız",

		distance = "Mesafe",
		heading = "Başlık",

		reset_target = "GPS hedefini sıfırlama.",
		set_gps_target = "GPS hedefini ${x}, ${y} olarak ayarlama.",
		gps_blip = "GPS Hedefi",
		no_gps_item = "GPS'in yok.",

		collar_no_target = "Bu yaka bağına bir telefon bağlı değil.",
		collar_timeout = "Yeni bir ping göndermeden önce biraz bekleyin.",
		collar_sent = "Başarıyla ping gönderildi: ${firstName} ${lastName} (${phoneNumber}).",

		mph = "mph",
		kph = "kph",
		ft = "ft",
		m = "m",
		km = "km",
		mi = "mi",
		deg = "derece"
	},

	gravity = {
		gravity_success_on = "${consoleName} için yerçekimini kapattınız.",
		gravity_success_off = "${consoleName} için yerçekimini geri açtınız.",
		gravity_client_failed = "${consoleName} için yerçekimini değiştirirken bir hata oluştu.",
		gravity_failed = "Yerçekimini değiştirmeye çalışırken bir sorun oluştu.",
		invalid_server_id = "Geçersiz sunucu ID'si.",
		yourself = "kendin"
	},

	gravity_gun = {
		name_override = "Yerçekimi-Silahı",

		failed_item_spawn = "Yerçekimi silahı öğesi oluşturulurken bir hata oluştu."
	},

	grills = {
		campfire = "Kamp ateşi",
		use_campfire = "[${InteractionKey}] Kamp ateşi kullan",
		grill = "Izgara",
		use_grill = "[${InteractionKey}] Izgara kullan"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] Para at",
		using_gumball_machine = "Para atılıyor",
		not_enough_money = "Yeterli para miktarınız yok.",
		something_went_wrong = "Bir hata oluştu.",

		flavor = "Şekerleme (${flavor})"
	},

	gun_running = {
		insert_key = "Anahtarı tak: ${key}",
		wrong_key = "Yanlış anahtar kullanıldı.",
		decrypting = "Şifre çözülüyor",
		guns_disabled = "Silah kaçakçılığı şu anda devre dışı.",
		high_level_cooldown = "FIB sunucusuyla bağlantı kurulamadı, daha sonra tekrar deneyin.",
		failed_start_run = "Silah sevkiyatı başlatılamadı.",
		hack_timeout = "Sunucu ile bağlantı kaybedildi, tekrar deneyin.",

		drop_blip = "Silah Konteyneri",

		drill_container = "Konteyneri açmak için ~INPUT_CONTEXT~ tuşuna basın.",

		drilling_container = "Konteyner Açıyor",
		failed_drill = "Konteyneri açarken başarısız oldu.",
		drill_success = "Başarıyla konteyneri açtın ve içinde 1x ${item} buldun.",

		started_run_logs_title = "Silah Kaçakçılığı",
		started_run_logs_details = "${consoleName} silah kaçakçılığı hilesini başlattı.",
		finished_run_logs_title = "Silah Kaçakçılığı İndirimi",
		finished_run_logs_details = "${consoleName} silah sandığını kırarak 1 adet ${item} aldı."
	},

	gun_trader = {
		press_e_to_talk = "Jim'le konuşmak için ~INPUT_CONTEXT~ tuşuna basın.",
		trader_closed = "Jim'in dükkânı şu anda kapalı.",

		trader_locked = "Jim dükkânını açmadan önce senden birkaç şey istiyor.",
		unlock_trader = "Jim'e ilgili nesneyi sağla.",

		purchase = "Satın al",
		out_of_stock = "Stokta yok",

		failed_trader_closed = "Silah satın alınamadı, Jim'in dükkanı kapalı.",
		failed_no_stock = "Silah satın alınamadı, stokta kalmadı.",
		failed_no_money = "Silah satın alınamadı, yeterli miktarda paranız yok.",
		failed_something_went_wrong = "Silah satın alınamadı, bir şeyler yanlış gitti.",
		failed_trader_not_locked = "Kilit açılamadı, Jim'in dükkanı zaten açık.",
		failed_no_item = "Kilit açılamadı, Jim o öğeyi istemiyor.",
		failed_no_enough_items = "Kilit açılamadı, o öğeden yeterli miktarda yok.",

		bought_gun_logs_title = "Jim'in Silah Dükkanı",
		bought_gun_logs_details = "${consoleName}, Jim'den ${itemName} için $${price} ödeyerek 1 adet silah satın aldı.",

		trader_active = "Tüccar (açık)",
		trader_inactive = "Tüccar (kapalı)",

		slogan_1 = "Silah kullanırken ilk kural unutmayın... Silahınız olsun!",
		slogan_2 = "Silahların sadece iki düşmanı vardır: Pas & politikacılar",
		slogan_3 = "Şüphelendiğinizde... silahınızı çıkartın!",
		slogan_4 = "Telefonda bir polisten daha iyi bir savunma, elinizde bir silahtır.",

		copyright = "Telif Hakkı © 2009-2016 Jim'in Silah Dükkanı NC. Tüm Hakları Saklıdır."
	},

	hacking = {
		local_disk = "Yerel Disk (C:)",
		network = "Ağ",
		external_device = "Harici Cihaz (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "Benim Bilgisayarım",
		power_off = "Kapat",

		password_cracked = "Şifre Kırıldı!",
		brute_force_failed = "Brute Force Başarısız!",

		writing_data = "Veri tamponuna yazılıyor...",
		executing_code = "Zararlı kod yürütülüyor...",
		memory_leak_detected = "Bellek sızıntısı tespit edildi, kapatılıyor..."
	},

	halloween = {
		is_in_school = "Okulda mı: ${isInSchool}",
		yes = "Evet",
		no = "Hayır",
		press_to_hide_in_locker = "Kilitte saklanmak için ~INPUT_CONTEXT~ tuşuna basın.",
		locker_is_occupied = "Dolap işgal edilmiştir.",
		press_to_exit_locker = "Dolaptan çıkmak için ~INPUT_CONTEXT~ tuşuna basın.",
		failed_to_start_escape_room = "Kaçış odası başlatılamadı.",
		started_escape_room = "${playerAmount} oyuncu ile kaçış odası başlatıldı.",
		start_escape_room_missing_permissions = "Bir oyuncu kaçış odası başlatmaya çalıştı ancak bunu yapmak için gerekli izinlere sahip değildi.",
		escape_instructions = "Tamamlandığında kapılar kilidi açılacak ve binadan çıkabileceksiniz.",
		answer_the_phone = "Telefonu açın.",

		-- NOTE: temp
		none = "Hiçbiri"
	},

	health = {
		successfully_revived_player = "${consoleName} başarıyla canlandırıldı.",
		successfully_revived_player_removed_injuries = "${consoleName} başarıyla canlandırıldı ve yaraları iyileştirildi.",
		successfully_revived_everyone = "Herkes başarıyla canlandırıldı.",
		successfully_revived_everyone_removed_injuries = "Herkes başarıyla canlandırıldı ve tüm yaralanmaları iyileştirildi.",
		failed_to_revive = "/revive komutu doğru şekilde yürütülemedi.",
		revive_player_not_staff = "Bir oyuncu başka bir oyuncuyu canlandırmaya çalıştı ancak buna gerekli izinlere sahip değil.",
		revive_self_not_staff = "Oyuncu birini canlandırmayı denedi ancak bunu yapmak için gerekli izinlere sahip değil.",
		revived_self_removed_injuries_title = "Kendi Kendini Canlandırdı ve Yaralarını İyileştirdi",
		revived_self_removed_injuries_details = "${consoleName} kendini canlandırdı ve yaralarını iyileştirdi.",
		revived_self_title = "Kendi Kendini Canlandırdı",
		revived_self_details = "${consoleName} kendini canlandırdı.",
		revived_everyone_removed_injuries_title = "Herkesi Canlandırdı ve Yaralarını İyileştirdi",
		revived_everyone_removed_injuries_details = "${consoleName} herkesi canlandırdı ve yaralarını iyileştirdi.",
		revived_everyone_title = "Herkes Canlandırıldı",
		revived_everyone_details = "${consoleName} herkesi canlandırdı.",
		revived_player_removed_injuries_title = "Oyuncuyu Canlandırıp Yaraları Sildi",
		revived_player_removed_injuries_details = "${consoleName}, ${targetConsoleName}'i canlandırdı ve yaralarını sildi.",
		revived_player_title = "Oyuncuyu Canlandırdı",
		revived_player_details = "${consoleName}, ${targetConsoleName}'i canlandırdı.",
		get_recent_deaths_not_staff = "Oyuncu son ölümleri görmeye çalıştı, ancak uygun izinlere sahip değildi.",
		get_player_last_death_not_staff = "Bir oyuncunun son ölümünü almaya çalışan oyuncu, bunu yapmak için gerekli izinlere sahip değil.",
		recent_deaths = "Son Ölümler",
		no_recent_deaths = "Hiçbir son ölüm yok.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} ${timer} saniye önce öldü.",
		target_user_not_found = "Hedef kullanıcı bulunamadı.",
		no_server_id_sent = "Sunucu kimliği gönderilmedi.",
		no_permissions = "Yetkiler yok.",
		user_not_found = "Kullanıcı bulunamadı.",
		player_death = "Oyuncu Ölümü",
		player_death_recent = "${consoleName} son olarak ${timer} saniye önce öldü.",
		no_recent_death = "${consoleName} son zamanlarda ölmedi.",
		death_alcohol_poisoning = "Alkol zehirlenmesi nedeniyle bayıldınız.",
		character_has_hardcore_died = "${fullName} öldü. Başka bir karakter seçebilirsiniz.",

		death_timer_override_already_set_to = "Ölüm süre aşımı zaten `${time}` olarak ayarlandı.",
		set_death_timer_override = "Ölüm süre aşımı `${time}` olarak ayarlandı.",
		time_parameter_is_invalid = "Zaman parametresi geçersiz.",
		death_timer_override_removed = "Ölüm süre aşımı kaldırıldı.",
		no_death_timer_override_set = "Ölüm zamanlayıcı geçersiz.",

		invalid_distance = "Geçersiz yeniden canlandırma menzili (1 ile 50 arasında olmalıdır).",
		no_players_in_range = "${distance}m yarıçapında canlandırılmayı bekleyen oyuncu yok.",
		successfully_revived_range = "${distance}m yarıçapında ${amount} oyuncu başarıyla canlandırıldı.",
		failed_revive_range = "Oyuncuları canlandırma başarısız oldu.",
		range_revive_not_staff = "Oyuncu belirli bir mesafedeki oyuncuları canlandırmaya çalıştı, ancak bunu yapmak için gerekli izinlere sahip değildi."
	},

	hitmarkers = {
		hitmarkers_enabled = "Vuruş işaretçileri etkinleştirildi.",
		hitmarkers_disabled = "Vuruş işaretçileri devre dışı bırakıldı."
	},

	hud = {
		mph = "mil/sa",
		kmh = "km/sa",
		knots = "deniz mili/sa",
		ft = "ft",
		m = "m",
		belt = "KEMER",
		limiter = "LİMİTER",
		fuel = "yakıt",
		nitro = "nitro",
		battery = "pil",
		fps = "FPS",
		ping = "PING",
		autopilot = "otomatik pilot",
		ground_asl = "Yer Y.O./Y.S. (${unit})",
		heading = "YÖN",
		gear = "vites",
		rpm = "dev/dk",
		degrees = "°C",
		degrees_f = "°F",
		steps_walked_deaths = "${stepsWalked} adım ~t~/~w~ ${deaths} ölüm",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "Kalan oksijen: ${timer}",

		muted = "Susturulmuş",

		fps_unit = "fps",
		ping_unit = "ms",

		smart_warnings = "Uyarı: ${warnings}!",
		dehydrated = "susamış",
		starving = "aç",
		injured = "yaralı",
		seriously_injured = "ağır şekilde yaralı",
		incapacitated = "güçsüz",
		stressed = "stres altında",

		and_seperator = "ve",

		toggle_phone_gps_off = "Telefon GPS'si kapalı.",
		toggle_phone_gps_on = "Telefon GPS'si açık.",

		advanced_hud_on = "Gelişmiş HUD açık.",
		advanced_hud_off = "Gelişmiş HUD kapalı.",

		hud_gauges_on = "Araç göstergeleri açıldı.",
		hud_gauges_off = "Araç göstergeleri kapatıldı."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Deriyi yüzmek için basılı tutun",
		skinning_animal = "Ölü hayvanın derisi yüzülüyor",
		meat_too_damaged = "Bu hayvanın eti çok hasarlı.",
		animal_is_being_skinned = "Hayvanın derisi yüzülüyor."
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Vatandaşlık Kartı",
		first_name = "İsim",
		last_name = "Soyisim",
		gender = "Cinsiyet",
		gender_male = "Erkek",
		gender_female = "Kadın",
		date_of_birth = "Doğum Tarihi",
		citizen_id = "Vatandaş ID",

		citizenship = "Vatandaşlık",
		citizenship_value = "ABD",
		surname = "Soyadı",
		issued_on = "Veriliş Tarihi",
		expires_on = "Son Kullanma Tarihi",

		month_1 = "Oca",
		month_2 = "Şub",
		month_3 = "Mar",
		month_4 = "Nis",
		month_5 = "May",
		month_6 = "Haz",
		month_7 = "Tem",
		month_8 = "Ağu",
		month_9 = "Eyl",
		month_10 = "Eki",
		month_11 = "Kas",
		month_12 = "Ara",

		citizen_card_details = "${firstName} ${lastName} | Doğum Tarihi: ${dateOfBirth} | Cinsiyet: ${gender} | Vatandaş ID: ${characterId}",
		just_showed_citizen_card = "Vatandaş Kartınızı gösterdiniz. Lütfen biraz bekleyin.",

		hunting_license = "Avcılık Lisansı",
		hunting_license_details = "Avcılık Lisansı | ${firstName} ${lastName} | Vatandaş Kimliği: ${characterId}",
		fishing_license = "Balıkçılık Lisansı",
		fishing_license_details = "Balıkçılık Lisansı | ${firstName} ${lastName} | Vatandaş Kimliği: ${characterId}",
		pilot_license = "Pilot Lisansı",
		pilot_license_details = "Pilot Lisansı | ${firstName} ${lastName} | Vatandaş Kimliği: ${characterId}",
		weapon_license = "Silah Lisansı",
		weapon_license_details = "Silah Lisansı | ${firstName} ${lastName} | Vatandaş Kimliği: ${characterId}",
		just_showed_license = "Bir lisans gösterdin. Lütfen biraz bekleyin.",

		just_showed_badge = "Bir rozet gösterdin. Lütfen biraz bekleyin.",
		sasp_badge = "SASP Rozeti",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		bcso_badge = "BCSO Rozeti",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		sahp_badge = "SAHP Rozeti",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		iaa_badge = "IAA Rozeti",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		fib_badge = "FIB Rozeti",
		fib_badge_details = "FIB | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		swat_badge = "SWAT Rozeti",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		management_badge = "Yönetim Rozeti",
		management_badge_details = "Yönetim | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		ems_badge = "EMS Kimliği",
		ems_badge_details = "EMS | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		doctor_badge = "Doktor Kimliği",
		doctor_badge_details = "Doktor | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		bcfd_badge = "BCFD Rozeti",
		bcfd_badge_details = "BCFD | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		state_security_badge = "Devlet Güvenliği Kimliği",
		state_security_badge_details = "Devlet Güvenliği Departmanı | ${firstName} ${lastName}",
		doj_badge = "DOJ Kimliği",
		doj_badge_details = "DOJ | ${firstName} ${lastName} | Pozisyon: ${positionName}",
		doc_badge = "DOK Rozeti",
		doc_badge_details = "DOK | ${firstName} ${lastName} | Pozisyon: ${positionName}",

		badge_type_sasp = "San Andreas Eyalet Polisi",
		badge_type_bcso = "Blaine İlçesi Şerif Ofisi",
		badge_type_sahp = "San Andreas Otoyol Devriyesi",
		badge_type_iaa = "Dahili İşler Ajansı",
		badge_type_fib = "Federal Soruşturma Bürosu",
		badge_type_swat = "Özel Silah ve Taktikler",
		badge_type_management = "SASP Yönetimi",
		badge_type_ems = "Acil Tıp Hizmetleri",
		badge_type_doctor = "Tıp Residansı",
		badge_type_bcfd = "Blaine İlçe İtfaiye Departmanı",
		badge_type_state_security = "Devlet Güvenlik Departmanı",
		badge_type_doj = "Adalet Bakanlığı",
		badge_type_doc = "Ceza ve Tevkifevleri Genel Müdürlüğü",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "Özel Harekat",
		badge_type_short_management = "Yönetim",
		badge_type_short_ems = "SAĞLIK",
		badge_type_short_doctor = "Doktor",
		badge_type_short_bcfd = "BCFD",
		badge_type_short_state_security = "SSD",
		badge_type_short_doc = "DOK"
	},

	import_export = {
		press_to_access = "İçeri girmek için ~INPUT_CONTEXT~ tuşuna basın.",

		pound = "lbs",
		pounds = "lbs",
		minutes = "dakika",

		total = "Toplam",
		header = "Cayo Perico - İthalat / İhracat",
		header_small = "Cayo Perico'dan hızlı ve kolay bir şekilde gönderin ve alın.",

		loading = "Yükleniyor...",

		order_arrived = "Vardı",
		claim = "Talep Et",

		claim_cayo = "Cayo'da Talep Et",
		claim_lsia = "LSIA'da Talep Et",

		big_goods = "Büyük Mallar",
		go_postal = "Go Postal",
		caipira = "Caipira Havayolları",

		no_items = "Gönderilecek ürün yok.",

		confirm_dialog = "${total}lbs'lık gönderi için $${price} göndermek istediğimize emin misiniz? Bu gönderi iptal edilemez.",
		confirm = "Evet",

		no_active_order = "Aktif bir gönderiniz yok.",
		order_not_completed = "Gönderiniz henüz gelmedi.",

		order_claimed = "Gönderinizi talep ettiniz.",

		not_enough_items = "Gönderim yapmak için yeterli ürününüz yok.",
		not_enough_money = "Gönderi oluşturmak için yeterli paranız yok.",
		already_has_order = "Zaten aktif bir gönderiniz var.",
		something_went_wrong = "Bir şeyler yanlış gitti.",

		order_success = "Gönderiniz yolda! ${minutes} dakika içerisinde varış yapacak.",

		created_shipment_title = "Gönderi Oluşturuldu",
		created_shipment_details = "${consoleName}, ${company} birliğine ${weight}lbs üzeri bir gönderi oluşturdu. Fiyatı $${price}.",

		claimed_shipment_title = "Gönderi Talep Edildi",
		claimed_shipment_details = "${consoleName} ${company} şirketi ile ${weight}lb'lik bir sevkiyatı talep etmiştir.",

		blip_label = "İthalat / İhracat"
	},

	injuries = {
		inspect_no_player = "İnceleyebileceğiniz oyuncu yakınınızda değil.",
		already_inspecting = "Zaten bir oyuncuyu inceliyorsunuz.",
		inspect_failed = "Oyuncuyu incelemekte başarısız oldunuz.",
		inspecting = "Oyuncu İnceleniyor",
		no_injuries = "Yaralanma ya da kanama yok",
		patient_bleeding = "Hasta kanıyor.",
		injury = "${label} Yaralanması"
	},

	instances = {
		instance_created_added = "IDsi `${instanceId}` olan bir örnek oluşturuldu. (Eklenen oyuncular: ${serverIds}).",
		instance_created = "ID'si `${instanceId}` olan bir örnek oluşturuldu.",
		instance_creation_failed = "Örnek oluşturma başarısız oldu.",
		instance_destroyed = "ID'si `${instanceId}` olan örnek yok edildi.",
		instance_destruction_failed = "Örnek yok etme başarısız oldu.",
		instance_id_parameter_invalid = "Örnek ID parametresi geçersiz.",
		added_player_to_instance = "${consoleName} oyuncusu ID'si `${instanceId}` olan örneğe eklendi.",
		failed_to_add_player_to_instance = "Oyuncu örneğe eklenirken hata oluştu.",
		server_id_parameter_invalid = "Sunucu ID parametresi geçersiz.",
		removed_player_from_instance = "${consoleName} oyuncusu, ID'si `${instanceId}` olan durumdan çıkarıldı.",
		failed_to_remove_player_from_instance = "Oyuncunun durumundan çıkarma işlemi başarısız oldu.",
		instance_players = "ID'si `${instanceId}` olan durumdaki oyuncular: `${players}`.",
		failed_to_get_instance_players = "Durumdaki oyuncular alınamadı.",
		no_players = "Oyuncu yok.",

		instance_hud = "Durum ID'si: ${instanceId}",

		create_instance_not_developer = "Oyuncu, bir durum oluşturma denemesinde bulundu ama bir geliştirici değil.",
		destroy_instance_not_developer = "Oyuncu bir örneği yok etmeye çalıştı ancak geliştirici değil.",
		add_player_to_instance_not_developer = "Oyuncu bir oyuncuyu bir örneğe eklemeye çalıştı ancak geliştirici değil.",
		remove_player_from_instance_not_developer = "Oyuncu bir oyuncuyu örnekten çıkarmaya çalıştı ancak geliştirici değil.",
		get_players_from_instance_not_developer = "Oyuncu bir örneğin oyuncularını almayı denedi ancak geliştirici değil."
	},

	interiors = {
		in_interior = "İçeride: ${interiorId} (${portals} kapı).",
		in_room_id = "Odadaki: ${roomId} (${roomName}).",
		total_interiors = "Toplam Binalar: ${totalInteriors} (${totalInteriorPortals} toplam kapı).",
		total_unloaded_interiors = "Yüklenmemiş Binalar: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} toplam kapı).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "Bagaja erişmek için buraya git",

		used = "Kullanıldı",
		added = "Eklendi",

		pounds = "lb",

		store = "Depolama",
		gas_station = "Benzin İstasyonu",
		gas_station_backdoor = "Benzin İstasyonu Arka Kapısı",
		cleaning_station = "Temizlik İstasyonu",
		grocery_store = "Bakkal",
		penthouse_fridge = "Buzdolabı",
		mug_shots = "Mugshot Pozları",
		prison_store = "Hapishane Dükkanı",
		fruit_vendor = "Meyve Satıcısı",
		supermarket = "Süpermarket",
		island_store = "Ada Dükkanı",
		travel_agency = "Seyahat Acentesi",
		island_bar = "Ada Barı",
		burger_bar = "Burger Barı",
		tool_store = "Alet Dükkanı",
		gun_store = "Silah Dükkanı",
		discount_store = "İndirimli Mağaza",
		gun_store_with_shooting_range = "Atış Menzilli Silah Dükkanı",
		green_wonderland = "Yeşil Harikalar Diyarı",
		irish_pub = "İrlanda Pubı",
		bar = "Bar",
		midnight = "Geceyarısı Araç Dükkanı",
		cinema = "Sinema",
		strip_club = "Strip Kulübü",
		police_store = "Polis Mağazası",
		fib_store = "FIB Mağazası",
		police_badge_store = "Polis Rozet Bankosu",
		doc_badge_store = "DOK Rozet Masası",
		flower_store = "Stacey'nin Çiçek Emporiumu",
		gift_store = "Del Perro Hediyelik Eşya",
		ems_store = "EMS Mağazası",
		drug_store = "İlaç Dolabı",
		ems_badge_store = "EMS Rozet Bankosu",
		doj_badge_store = "DOJ Rozet Bankosu",
		state_security_store = "Devlet Güvenlik Mağazası",
		pharmacy = "Eczane",
		chop_shop = "Hurdacı Dükkanı",
		courthouse = "Adliye Sarayı",
		burger_shot = "Burger Shot",
		burger_shot_fridge = "Burger Shot Buzdolabı",
		erp_shop = "ERP Dükkanı",
		pet_shop = "Evcil Hayvan Dükkanı",
		bean_machine = "Kahve Dükkanı",
		hunting_store = "Avcılık Dükkanı",
		fishing_store = "Balıkçılık Dükkanı",
		los_santos_golf_club = "Los Santos Golf Kulübü",
		arcade_bar = "Arcade Bar",
		japanese_restaurant = "Japon Restoranı",
		["945_studios"] = "945 Studios",
		grain_mill = "Tahıl Değirmeni",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		government_prefix = "Gov",
		wonderland_prefix = "WL",
		br_prefix = "BR",
		inventory_overweight = "Envanteriniz fazla yüklü!",
		vehicle_locked = "Araç kilitli.",
		press_to_access_store = "Mağazaya erişmek için ~INPUT_REPLAY_SHOWHOTKEY~ tuşuna basın.",
		press_to_access_locker = "Özel dolabınıza erişmek için ~INPUT_REPLAY_SHOWHOTKEY~ tuşuna basın.",
		press_to_access_shared_storage = "Paylaşılan depoya erişmek için ~INPUT_REPLAY_SHOWHOTKEY~ tuşuna basın.",

		inspect_weapon = "Bu ${itemName} adlı silahın seri numarası `${itemId}` gibi görünüyor.",
		inspect_weapon_broken = "Bu ${itemName} adlı silahın seri numarası `${itemId}` gibi görünüyor ve tamamen kırılmış görünüyor.",

		searching_dumpster = "Çöp kutusu aranıyor",

		nameable_title = "İsimlendirilebilir öğe adı:",

		locker_restricted = "Bu öğe dolabınıza uymuyor gibi görünüyor.",

		press_to_access_shredder = "[${InteractionKey}] Parçalayıcıya erişmek için tıklayın.",

		invalid_item_id = "Geçersiz öğe Kimliği.",
		item_not_found = "ID `${itemId}` ile öğe bulunamadı.",
		item_lookup = "${label} (${itemId}) şu anda ${inventoryName}:${inventorySlot} içinde.",

		big_inventory_disabled = "Karakter envanteri yuvalarını varsayılan ayarlarına sıfırla.",
		big_inventory_enabled = "Geçici olarak karakterinin envanter yuvalarını arttırıldı.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ ${label}'e Erişmek İçin Tuşa Basın",

		burgershot_counter = "Burgershot Tezgahı",

		inventory_name_missing = "Envanter ismi belirtilmemiş.",

		shredder_title = "Kağıt İmha Makinesi",
		shredder_description = "Uyarı: Herhangi bir öğe buraya taşındığında hemen silinecek ve kurtarılamayacak.",

		npc_vehicle_inventory = "NPC Envanteri",

		store_help = "Bir şey satın almak için, bir öğeyi ikincil envanterden kendi envanterinize sürükleyin.",
		store_tax = "Mağaza Vergisi",
		store_tax_percentage = "${tax}%",

		missing_job = "Bu envanteri kullanmak için gerekli işe sahip değilsiniz.",

		item_is_broken = "Bu öğe bozuk.",
		battle_royale_item = "Bu öğe yalnızca Battle Royale maçlarında kullanılabilir.",
		battle_royale_item_disallowed = "Bu öğe Battle Royale maçlarında kullanılamaz.",

		broken_food = "Bu yiyecek bozulmuş.",
		broken_drugs = "Bu öğe süresi geçmiş.",
		vape_empty = "Bu vape boş.",

		craft_combine = "<i>${output}</i> üretmek için işle.",
		combining = "Üretim",

		carve_jack_o_lantern = "<i>Jack-o-lantern</i> oymak",
		crush_cocoa_beans = "Kakao Fasulyesi <i>Ezme</i>",
		mix_hot_chocolate = "Sıcak Çikolata <i>Karıştırma</i>",
		crush_raw_ruby = "Ham Yakut <i>Ezme</i>",
		crush_raw_sapphire = "Ham Safir <i>Ezme</i>",

		search = "Arama",
		amount = "Miktar",
		use = "Kullan",
		close = "Kapat",

		done = "TAMAM",
		burnt = "YANMIŞ",
		danger = "TEHLİKE",
		fuel = "Yakıt: ${fuel}",

		item_does_stack = "Bu öge yığına uyar.",
		item_does_not_stack = "Bu öğe yığına uymaz.",
		individual_weight = "Bireysel Ağırlık",
		stack_amount = "Yığın Miktarı",

		logs_secondary_inventory_title = "İkincil Envanter Açıldı",
		logs_secondary_inventory_details = "${consoleName} ${inventoryName} adlı ikincil envanteri açtı.",
		logs_ground_inventory_created_title = "Yerde Envanter Oluşturuldu",
		logs_ground_inventory_created_details = "${consoleName} ${inventoryName} adlı bir yer envanteri oluşturdu.",

		logs_item_moved_title = "Eşya Taşındı",
		logs_item_moved_details = "${consoleName}, ${itemLabel} öğesinden ${moveAmount} adetini ${startInventory}:${startSlot} envanterinden ${endInventory}:${endSlot} envanterine taşıdı.",

		logs_item_purchased_title = "Eşya(lar) Satın Alındı",
		logs_item_purchased_no_tax_details = "${consoleName} ${purchaseAmount} adet `${itemLabel}` ürününü $${purchaseCost} karşılığında satın aldı.",
		logs_item_purchased_tax_details = "${consoleName}, ${salesTaxPercentage}% satış vergisi nedeniyle ${taxCost} $ ek ücret ödeyerek ${purchaseAmount} adet `${itemLabel}` ürününü $${purchaseCost} karşılığında satın aldı.",

		radius_invalid = "${radius} yarıçapı geçersiz bir değerdir.",
		wiped_all_ground_inventories = "${inventoriesWiped} yerden envanter temizlendi.",
		wiped_nearby_ground_inventories = "${radius}` yarıçapı içindeki ${inventoriesWiped} yerden envanter temizlendi.",
		failed_to_wipe_ground_inventories = "Yerdeki envanterleri temizleme başarısız oldu.",
		no_ground_inventories = "Temizlenecek yerde envanter yok.",
		no_ground_inventories_within_radius = "Temizleme yarıçapı içinde temizlenecek yerde envanter yok: `${radius}`.",

		wipe_inventories_not_staff = "Oyuncu envanterleri temizlemeyi denedi ancak buna yetkisi yoktu.",

		logs_wiped_all_ground_inventories_title = "Tüm İkinci El Dükkanlarının Envanteri Temizlendi",
		logs_wiped_all_ground_inventories_details = "${consoleName}, tüm ikinci el dükkanlarının envanterini temizledi.",

		logs_wiped_nearby_ground_inventories_title = "Yakındaki Yerdeki Eşyalar Silindi",
		logs_wiped_nearby_ground_inventories_details = "${consoleName}, ${radius} yarıçapındaki tüm yerdeki envanterleri sildi.",

		logs_combined_title = "Eşyalar Birleştirildi",
		logs_combined_details = "${consoleName} ${inputs} adet eşyayı birleştirerek 1 adet ${output} elde etti.",

		press_use_campfire = "[${InteractionKey}] Kamp Ateşini Kullan",
		use_campfire = "Kamp Ateşi Kullan",

		dumpster_sandwich = "Küflü Sandviç",
		dumpster_beer = "Bayat Bira",
		dumpster_milk = "Bozuk Güvercin Sütü",
		dumpster_meat = "Tozlu Et (Biraz Küflemiş)",
		dumpster_fries = "Eski Patates Kızartması",
		dumpster_brownies = "Kurumuş Kahverengi Kurabiyeler",
		dumpster_pizza_slice = "Küflü Pizza Dilimi",
		dumpster_banana = "Kıllı Muz (Çok Çürük)",

		-- items & item descriptions
		body_armor = "Vücut Zırhı",
		body_armor_description = "Savaşa hazırlan ve sadece LS sokaklarında geçen diğer günlere karşı korun,",
		first_aid_kit = "İlk Yardım Kiti",
		first_aid_kit_description = "Kendin yap doktor kiti.",
		bandages = "Bandaj",
		bandages_description = "Tüm çizikler ve kesikler için.",
		oxygen_tank = "Oksijen Tankı",
		oxygen_tank_description = "Bir akciğer genişletme paketi.",
		ifak = "IFAK",
		ifak_description = "\"Uygulandığında W'leri güvence altına alan PD güç paketi. Birden fazla almak, yere düşen suçlu için katılım ödülleri dağıtmakla birlikte EZ clapping hissi yaratacaktır.\"<br><br>-Joe, 2020",

		citizen_card = "Vatandaşlık Kartı",
		citizen_card_description = "Kimlik, silah taşıma izni ve ehliyet olarak işlev görür.",
		phone = "Telefon",
		phone_description = "asla:b:",
		radio = "Radyo",
		radio_description = "Tüm metagamerlar için yararlı bir varlık!",
		smart_watch = "Akıllı Saat",
		smart_watch_description = "Her yerde nakit ödeme yapmaktan nefret mi ediyorsunuz? Sadece akıllı saatinizi kullanın! Ayrıca dahili pusula, saat, GPS ve adım takipçisi ile birlikte geliyor! Sadece 2'de koşuya çıkmayın.",
		tablet = "Tablet",
		tablet_description = "Çok büyük telefon.",

		gps = "GPS",
		gps_description = "Tüm cihaz ihtiyaçlarınızı karşılayın.",

		gps_collar = "GPS Yaka",
		gps_collar_description = "Evcil hayvanlarınızı izlemek için bir GPS yaka.",

		boosting_tablet = "Güçlendirme Tableti",
		boosting_tablet_description = "Tamamen yasal sözleşmeler elde etmek için kullanılır.",

		hunting_license = "Avcılık Lisansı",
		hunting_license_description = "Avcılık için bir lisans.",
		fishing_license = "Balıkçılık Lisansı",
		fishing_license_description = "Balık tutmak için bir lisans.",
		pilot_license = "Pilot Lisansı",
		pilot_license_description = "Uçaklar ve benzeri şeyleri uçurmak için bir pilot lisansı.",
		weapon_license = "Silah Lisansı",
		weapon_license_description = "Daha yüksek sınıf silahları sahip olmak ve taşımak için bir silah lisansı.",

		sasp_badge = "SASP Rozeti",
		sasp_badge_description = "San Andreas Polis Departmanı memurları için bir rozet.",
		sahp_badge = "SAHP Rozeti",
		sahp_badge_description = "San Andreas Karayolu Devriyesi memurları için bir rozet.",
		bcso_badge = "BCSO Rozeti",
		bcso_badge_description = "Blaine County Şerif Ofisi yardımcıları için bir rozet.",
		iaa_badge = "IAA Rozeti",
		iaa_badge_description = "İçişleri Ajansı ajanları için bir rozet.",
		fib_badge = "FIB Rozeti",
		fib_badge_description = "Federal Soruşturma Bürosu ajanları için bir rozet.",
		swat_badge = "Özel Silah ve Taktik Departmanı (SWAT) Rozeti",
		swat_badge_description = "SWAT bölümü memurları için bir rozet.",
		management_badge = "Yönetim Rozeti",
		management_badge_description = "SASP Yönetim Bölümü'nde çalışanlar için bir rozet.",
		ems_badge = "EMS Kimlik",
		ems_badge_description = "EMS Paramedikleri için bir kimlik belgesi.",
		doctor_badge = "Doktor Kimliği",
		doctor_badge_description = "Doktorlar için bir kimlik belgesi.",
		bcfd_badge = "Blain County İtfaiyesi (BCFD)",
		bcfd_badge_description = "BCFD itfaiye erleri için bir rozet.",
		state_security_badge = "Devlet Güvenliği Kimliği",
		state_security_badge_description = "Devlet Güvenliği ajentleri için bir kimlik.",
		doj_badge = "ADA Rozeti",
		doj_badge_description = "Adalet Bakanlığı çalışanları için bir rozet.",
		doc_badge = "DOK Rozeti",
		doc_badge_description = "Ceza ve Tevkifevleri Genel Müdürlüğü personeli için bir rozet.",

		radio_chop_shop = "Chop Shop Radyo",
		radio_chop_shop_description = "Var olmayan kişilerden 'sıcak' araçlar hakkında bilgi almak için kullanılan bir radyo.",

		binoculars = "Dürbün",
		binoculars_description = "Los Santos'ta pusuda bekleyen herkes için sahip olunması gereken bir cihaz!",
		photo_camera = "Fotoğraf Makinesi",
		photo_camera_description = "Nikon ve Igna tarafından piyasada bulunan en son profesyonel kamera geliştirildi. Gelişmiş lensi (70-300mm f/4.5-5.6E) sayesinde, hatta yerdeki küçük detayları bile yakalayabilirsiniz.",

		remote_camera = "Uzaktan Kamera",
		remote_camera_description = "Herhangi bir yere yerleştirilebilen ve uzaktan görüntülenebilen bir kamera.",
		remote_monitor = "Uzaktan Monitör",
		remote_monitor_description = "Uzaktan kameraları görüntülemek için kullanılabilen taşınabilir bir monitör.",

		handcuffs = "Kelepçe",
		handcuffs_description = "Tamamen rol oynamak için.",
		bolt_cutter = "Cımbız",
		bolt_cutter_description = "Rol oynamak beklenildiği kadar eğlenceli değildi...",
		drill = "Matkap",
		drill_description = "Buradaki birçok kişinin bunu kullanmak için bir nedeni olduğuna bahse girerim... Düşünceleri sağlam çivileri çakılması gerektiği yönünde.",
		umbrella = "Şemsiye",
		umbrella_description = "İçindeki Mary Poppins'i ortaya çıkar.",
		watch = "Saat",
		watch_description = "Dikkatsizlik için zaman yok.",
		compass = "Pusula",
		compass_description = "43.3068 K 0.7668 D",
		map = "Harita",
		map_description = "Gideceğiniz yeri ve geldiğiniz yeri gösterir. Veya belki oradaydınız?",
		glass_breaker = "Acil Cam Kırıcı",
		glass_breaker_description = "Acil durumlarda araba camlarını kırmak için kullanılır.",

		picture = "Resim",
		picture_description = "Arkadaşlarınızla olan tüm anıları toplayın.",

		brochure = "Broşür",
		brochure_description = "Şehirde başlamanıza yardımcı olacak yararlı bir broşür.",

		basic_repair_kit = "Temel Tamir Kiti",
		basic_repair_kit_description = "İşleri çalışır hale getirir, ama sadece zorlukla.",
		advanced_repair_kit = "Gelişmiş Tamir Seti",
		advanced_repair_kit_description = "Kırık ruhları tamir etmek için kullanılır.",
		basic_lockpick = "Temel Kilit Açıcı",
		basic_lockpick_description = "Kilitleri açmak için kullanılır.",
		advanced_lockpick = "Gelişmiş Kilit Açıcı",
		advanced_lockpick_description = "Çocuklarınızı saklayın, karınızı saklayın.",
		cleaning_kit = "Temizlik Kiti",
		cleaning_kit_description = "Araç temizliği ve arka bagajda kurumaya bıraktığınız kan lekelerini temizlemek için mükemmeldir.",

		microphone_bug = "Mikrofon Böceği",
		microphone_bug_description = "Konuşmaları gizlice dinlemek için kullanılır.",
		vehicle_tracker = "Araç Takip Cihazı",
		vehicle_tracker_description = "Bu takip cihazı, karısının tenis antrenörü ile aldatıldığından şüphelenen Michael için tam da ihtiyacı olan şeydir.",
		device_scanner = "Cihaz Tarayıcısı",
		device_scanner_description = "Yakındaki casus cihazlarını tarayarak bulmaya yarar.",
		radio_decryptor = "Radyo Şifre Çözücü",
		radio_decryptor_description = "Bağlı olduğu radyo frekanslarını şifreler.",

		paper_bag = "Kağıt Torba",
		paper_bag_description = "Market alışverişi yapmak ya da birinin başını, ölü ya da diri, saklamak için mükemmeldir.",
		burger_shot_delivery = "Burger Shot Menüsü",
		burger_shot_delivery_description = "Sunulan tüm sloppy ve etli harikaların harika bir koleksiyonu.",
		bean_machine_delivery = "Bean Machine Teslimatı",
		bean_machine_delivery_description = "Uptown'daki küçük bir kafeden muhteşem lezzetlerle dolu bir çanta.",

		ear_defenders = "Kulak Koruyucuları",
		ear_defenders_description = "Yüksek seslerden kulaklarınızı korumak için kullanılır.",

		clothing_bag = "Giyim Çantası",
		clothing_bag_description = "Artık moda ile ilgili acil durumlarla ilgili endişelenmeyin! Giyim çantası, favori kıyafetlerinizi depolamanıza ve herhangi bir yerde hızlıca giyinmenize olanak tanır. Bu çanta, bir peri nin yağmur bazıları ile aynı büyüye sahiptir ama bibbidi-bobbidi-boo olmadan.",

		raw_morganite = "Ham Morganit",
		raw_morganite_description = "Doğal haliyle, madenden yeni çıkmış Morganit.",
		raw_ruby = "Ham Yakut",
		raw_ruby_description = "Doğal haliyle, madenden yeni çıkmış Yakut.",
		raw_sapphire = "Ham Safir",
		raw_sapphire_description = "Doğal haliyle, madenden yeni çıkmış Safir.",
		raw_emerald = "Ham Zümrüt",
		raw_emerald_description = "Doğal haliyle, madenden yeni çıkmış Zümrüt.",

		ruby_dust = "Yakut Tozu",
		ruby_dust_description = "Bir Yakut'tan gelen toz.",
		sapphire_dust = "Safir Tozu",
		sapphire_dust_description = "Bir Safir'den gelen toz.",

		morganite = "Morganit",
		morganite_description = "Kesilmiş ve cilalanmış Morganit.",
		ruby = "Yakut",
		ruby_description = "Kesilmiş ve cilalanmış Yakut.",
		sapphire = "Safir",
		sapphire_description = "Kesilmiş ve cilalanmış Safir.",
		emerald = "Zümrüt",
		emerald_description = "Kesilmiş ve cilalanmış Zümrüt.",

		ring = "Yüzük",
		ring_description = "Sadece boş bir yüzük.",

		morganite_ring = "Morganit Yüzük",
		morganite_ring_description = "Ortasında büyük bir Morganit olan güzel bir yüzük. Düğünler, en iyi arkadaşlar veya tanımadığınız kişiler için mükemmeldir.",
		ruby_ring = "Kırmızı Yakut Yüzük",
		ruby_ring_description = "Orta kısmında büyük bir kırmızı yakut olan güzel bir yüzük. Düğünler, en iyi arkadaşlar veya tamamen yabancılar için mükemmel.",
		sapphire_ring = "Mavi Safir Yüzük",
		sapphire_ring_description = "Orta kısmında büyük bir mavi safir olan güzel bir yüzük. Düğünler, en iyi arkadaşlar veya tamamen yabancılar için mükemmel.",
		emerald_ring = "Zümrüt Yüzük",
		emerald_ring_description = "Orta kısmında büyük bir zümrüt olan güzel bir yüzük. Düğünler, en iyi arkadaşlar veya tamamen yabancılar için mükemmel.",
		diamond_ring = "Elmas Yüzük",
		diamond_ring_description = "Ortağız, en iyi arkadaşlar veya tamamen yabancılar için mükemmel bir büyük elmaslı güzel bir yüzük.",

		gemstone_scanner = "Değerli Taş Tarayıcısı",
		gemstone_scanner_description = "Değerli taşları tarayan faydalı bir araç.",

		extended_clip = "Uzatılmış Şarjör",
		extended_clip_description = "Daha az şarjör değiştirme ihtiyacı.",
		grip = "Kavrama",
		grip_description = "Namluyu tutmak için bir kavrama.",
		sight = "Holografik Nişangah",
		sight_description = "Daha iyi nişan almanızı sağlar.",
		scope = "Dürbün",
		scope_description = "Mesafe bonusunu alabilmeniz için.",
		suppressor = "Susturucu",
		suppressor_description = "Bang bang yerine pew pew.",
		flashlight = "Fener",
		flashlight_description = "Karanlıkta görme imkanı sağlar.",
		extended_pistol_clip = "Uzatılmış Şarjör (Pistol)",
		extended_pistol_clip_description = "Daha az şarjör değiştirme.",
		extended_smg_clip = "Uzatılmış Şarjör (SMG)",
		extended_smg_clip_description = "Daha az şarjör değiştirme.",
		extended_shotgun_clip = "Uzatılmış Şarjör (Shotgun)",
		extended_shotgun_clip_description = "Daha az şarjör değiştirme.",
		drum = "Tambur Şarjör",
		drum_description = "Daha asla şarjör değiştirmenize gerek yok.",
		pistol_sight = "Tabanca Namluşı",
		pistol_sight_description = "Kötü nişanı nasıl düzeltebilirsiniz?",

		aluminium_plate = "Alüminyum Levha",
		aluminium_plate_description = "Uyarı: Kurşunlara karşı koruma sağlamaz... uyuşturucu bağımlısı.",
		aluminium_rod = "Alüminyum Çubuk",
		aluminium_rod_description = "Bu çubukla arkadaşlarınıza çok sert vurmayın.",
		copper_nugget = "Bakır Parçası",
		copper_nugget_description = "Küçük parçalar halinde muhteşem bakır madeni.",
		copper_wire = "Bakır Tel",
		copper_wire_description = "Neredeyse tüm elektronik için kullanılabilen çok yönlü bir tel.",
		lens = "Lens",
		lens_description = "Gözlük ve Mikroskoplar için kullanılır, sen deha sensin.",
		polymer_resin = "Polimer Reçine",
		polymer_resin_description = "İçilmeyen türden, ama yine de güzel.",
		screws = "Vidalar",
		screws_description = "Ne yapıyorsunuz? Vida mı çeviriyorsunuz?",
		spring = "Yay",
		spring_description = "Nedenini bilmiyorum ama insanlar bunları temizlemeyi severler.",

		grenade_shell = "Bombanın Kabuğu",
		grenade_shell_description = "Bir bombanın kabuğu.",
		grenade_pin = "Grenat Pimi",
		grenade_pin_description = "Bir bombanın pimi.",

		paint = "Boya",
		paint_description = "Çitler ve evler için faydalı, sadece koklama.",
		paint_brush = "Boya Fırçası",
		paint_brush_description = "Boya yapmak için faydalı.",

		skin_patriotic = "Milliyetçi Cilt",
		skin_patriotic_description = "Tüm kırmızı kanlı Amerikalılar için.",
		skin_brushstroke = "Fırça darbesi Cilt",
		skin_brushstroke_description = "Tüm sanatseverler için.",
		skin_skull = "Kafatası Cilt",
		skin_skull_description = "Tüm asi çocuklar için.",
		skin_leopard = "Leopar Cilt",
		skin_leopard_description = "Hayvan severler için.",
		skin_zebra = "Zebra Derisi",
		skin_zebra_description = "Hayvan severler için.",
		skin_geometric = "Geometrik Desen",
		skin_geometric_description = "Matematik meraklıları için.",

		refillable_bottle = "Doldurulabilir Şişe",
		refillable_bottle_description = "Gerçekten gerçekten deniz kaplumbağalarını koruyun.",

		capri_sun = "Capri Sun",
		capri_sun_description = "Çocukluk yıllarınızdan lezzetli bir atıştırma.",

		gumball = "Sakız Topu",
		gumball_description = "Bir sakız topu, başka ne söyleyebilirim ki?",

		water = "Su",
		water_description = "Tehlike! Dihidrojen monoksit renksiz ve kokusuzdur. DHM'nin kazara solunması ölümcül olabilir. Katı formuyla uzun süre maruz kalma ciddi doku hasarına neden olur. DHMO tüketiminin belirtileri aşırı terleme ve idrara çıkma, gaz şişkinliği, bulantı, kusma ve vücut elektrolit dengesizliği olabilir.",
		hamburger = "Hamburger",
		hamburger_description = "Amerika tadı!",
		belgian_fries = "Belçika Patates Kızartması",
		belgian_fries_description = "Daha iyi bir tat için, DM @Giv3n#0753'e \"fritas\" yazarak mesaj gönderin.",
		coke = "Kola",
		coke_description = "Pablo mu?",
		wonder_waffle = "Harika Waffle",
		wonder_waffle_description = "Vegan, laktozsuz, süt ürünleri içermeyen, yumurta içermeyen, glütensiz, organik, antibiyotiksiz, soya içermeyen, fruktoz olmayan, fındık içermeyen, GDO içermeyen, şekersiz, yağsız ve düşük karbonhidrat",
		cheeseburger = "Peynirli Hamburger",
		cheeseburger_description = "yağlı, yağlı, lastik gibi, çifte lüks, sulu çift, yağlı çift, iyi çift, büyük, yağlı, soğuk ve yağlı, normal çift, büyük yağlı, en sulu, kral boy, lüks, harika, çift, yağlı, sade çift, üçlü, lastik gibi, sulu, yağlı, pek iyi olmayan, büyük yağlı, parasız",
		donut = "Donut",
		donut_description = "Ortasında delik neden var ki bwo",
		green_apple = "Yeşil Elma",
		green_apple_description = "Kırmızı boğa gibi ama oyunda kırmızı boğa kutusuna benzeyen birşey yok.",
		sandwich = "Sandviç",
		sandwich_description = "Vegan.",
		taco = "Taco",
		taco_description = "El Brayan'ın özelitesi.",
		smores = "S'mores",
		smores_description = "Evet",
		tic_tac = "Tic Tac",
		tic_tac_description = "Oksijen mi? Hayır memur, sadece tic tac yiyorum!",
		pizza_slice = "Pizza Dilimi",
		pizza_slice_description = "Bir dilim Za senin için.",
		hot_dog = "Sosisli sandviç",
		hot_dog_description = "Bu sosisliyi en son sandviçin olacakmış gibi yut.",
		nachos = "Nachos",
		nachos_description = "Encarnación için yeterince iyi nachos!!",
		vanilla_ice_cream = "Vanilyalı Dondurma",
		vanilla_ice_cream_description = "Hayatında lezzet aramayan kişilere.",
		chocolate_ice_cream = "Çikolatalı Dondurma",
		chocolate_ice_cream_description = "Saygın bir tat, çok yaygın değil.",
		vanilla_milkshake = "Vanilyalı Milkshake",
		vanilla_milkshake_description = "Bir restoran klasigi, hamburger ve patates kizartmasiyla harika gider!",
		chocolate_milkshake = "Cikolata Milkshake",
		chocolate_milkshake_description = "Harika gorunen bir sut karisimi, icmeden once CIA sizi takip etmiyorsa daha iyi...",

		dog_food = "Kopek Mamasi",
		dog_food_description = "Kopek mami, ozellikle kopekler ve diger benzeri k9lar tarafindan tuketim icin formule edilmis mamalardir.",
		cat_food = "Kedi Mamasi",
		cat_food_description = "Kedi mami, kedi tuketimi icin hazirlanan mamalardir. Kediler icin besin gereksinimleri ozeldir.",
		dog_treats = "Köpek Ödülleri",
		dog_treats_description = "En sevdiğiniz iyi çocuğunuz için lezzetli ödüller.",
		cat_treats = "Kedi Ödülleri",
		cat_treats_description = "Yerel kediniz için lezzetli ödüller.",

		burger_buns = "Burger Ekmekleri",
		burger_buns_description = "Bu kötü çocuklar arasına bir et dilimi kaydırın.",
		cheese = "Peynir",
		cheese_description = "Laktoz intoleransı olan biri olduğunuzu hayal edin, kaybeden.",
		lettuce = "Marul",
		lettuce_description = "Sokakta satılmayan yeşil şeyler.",
		patty = "Burger Köftesi",
		patty_description = "Bir gün, bu etin gizli formülünü keşfedecek bir adam çıkacak, o zamana kadar kızartmaya devam edin, kızartıcı.",
		potato = "Patates",
		potato_description = "AK-47 veya posta siparişi gelininden başka Rusya'dan gelen tek şey.",
		raw_fries = "Çiğ Patates Kızartması",
		raw_fries_description = "Gerçekten sadece bir patates, ancak birisi onu bir şey haline getirmek için yeterince çaba harcamamış.",
		raw_patty = "Çiğ Köfte",
		raw_patty_description = " %90 Gerçek Et, diğer %10'u paketleme sırasında kaybolmuş.",

		apple = "Elma",
		apple_description = "Kötü Doktorları Uzak Tutun!",
		banana = "Muz",
		banana_description = "şüpheli",
		cherry = "Kiraz",
		cherry_description = "Üzerinde (eğer tercihiniz buysa).",
		kiwi = "Kivi",
		kiwi_description = "Hayvan değil, meyve. (A-32 ile karıştırmayın)",
		mango = "Mango",
		mango_description = "Lütfen vurma! Sadece mango...",
		orange = "Portakal",
		orange_description = "Muz demediğim için şanslısın.",
		peach = "Şeftali",
		peach_description = "Popo değil.",
		pineapple = "Ananas",
		pineapple_description = "Kalem ananas elma kalem.",
		pomegranate = "Nar",
		pomegranate_description = "Doğru yazdığımıza sevinin.",
		strawberry = "Çilek",
		strawberry_description = "Genellikle tarlalarda... sonsuza kadar.",
		watermelon = "Karpuz",
		watermelon_description = "Su mu, karpuz mu? Asla bilemezsiniz.",

		banana_peel = "Muz Kabuğu",
		banana_peel_description = "Oldukça kaygan, üzerine basarken dikkatli olun.",

		beer = "Bira",
		beer_description = "Kızgın su.",
		vodka = "Votka",
		vodka_description = "Русский стиль, cука ебать.",
		tequila = "Tekila",
		tequila_description = "Endişelenmeyin, içeceğinize hiçbir şey katılmadı. ( ͡° ͜ʖ ͡°)",
		whiskey = "Viski",
		whiskey_description = "Sadece en iyi alkolikler için.",
		cider = "Elma Şarabı",
		cider_description = "Yetişkinler için elma suyu.",
		rum = "Rom",
		rum_description = "Karayip Korsanları filmini yeniden izlemek için zaman!",
		absinthe = "Absinthe",
		absinthe_description = "Uyarı: Alkol içerir. Sadece çocukların orta derecede tüketmesine izin verin.",
		wine = "Şarap",
		wine_description = "Üzüm suyu.",

		moonshine = "Köpüklü İçki",
		moonshine_description = "Hükümetin bunu bilmeden sarhoş olmanın en iyi yolu.",
		yeast_packet = "Maya Paketi",
		yeast_packet_description = "Alkol yapmak için kullanılan bir maya paketi.",

		kimchi = "Kimchi",
		kimchi_description = "Fermente sebzelerle yapılan baharatlı bir Kore yan yemeği.",
		fish_sauce = "Balık Sosu",
		fish_sauce_description = "Balıkların fermantasyonundan yapılan bir sos.",

		pumpkin = "Kabak",
		pumpkin_description = "Halloween için kullanılan büyük turuncu bir sebze.",
		cabbage = "Lahana",
		cabbage_description = "Ev yapımı kimchi yapmak için mükemmel.",

		smoothie = "Smoothie",
		smoothie_description = "En kötü oyun sonrası kafanızı dağıtan etkileri tedavi etmek için meyve, sebze ve elektrolitlerin mükemmel karışımı.",
		blender = "Mikser",
		blender_description = "Mükemmel Smoothie Mikseri: Dengeli bir kahvaltı başarının anahtarıdır (ve lezzetli bir smoothie de hiç fena olmaz).",

		cocoa_beans = "Kakao Fasulyesi",
		cocoa_beans_description = "Çikolata yapımında kullanılan küçük fasulyeler.",
		cocoa_powder = "Kakao Tozu",
		cocoa_powder_description = "Kakao fasulyelerinden yapılan toz.",
		hot_chocolate = "Sıcak Çikolata",
		hot_chocolate_description = "Süt ve kakao tozundan yapılan sıcak bir içecek.",

		jack_o_lantern = "Cadılar Bayramı Kabağı",
		jack_o_lantern_description = "Yüzü oyulmuş bir kabak.",

		cigarette = "Sigara",
		cigarette_description = "Eğer sigara içmiyorsanız sen bir öpücükten kaçan birisin dostum.",
		cigarette_pack = "Sigara Paketi",
		cigarette_pack_description = "Baba için, umarım sigara bağımlılığından sonra geri döner (umarım almak için çıkıp gitmez).",

		cocaine_bag = "Kokain Poşeti",
		cocaine_bag_description = "Küçük parçalardan oluşan kolombiyalı tarih.",
		cocaine_brick = "Kokain Tuğlası",
		cocaine_brick_description = "Kolombiyalı tarihin bir parçası.",
		joint = "Sigara",
		joint_description = "420 yanar it, kanka",
		oxy = "Oksijen",
		oxy_description = "Biraz uyuşturucun var mı? Sırt ağrısına iyi gelir.",
		antibiotics = "Antibiyotikler",
		antibiotics_description = "Enfeksiyon ve parazitlerden kurtulmanıza yardımcı olur.",
		pain_killers = "Ağrı Kesiciler",
		pain_killers_description = "Zirve satış zamanı, ihtiyacım var lanet olsun.",
		weed_seeds = "Esrar Tohumları",
		weed_seeds_description = "420'i büyütür, dostum",
		weed_1q = "Esrar 1q",
		weed_1q_description = "420 dostum",
		weed_1oz = "Esrar 1oz",
		weed_1oz_description = "1680 abi",

		oxy_prescription = "Oksijen Reçetesi",
		oxy_prescription_description = "Şüpheli oksijen reçetesi.",

		brownies = "Kahverengi Kurabiyeler",
		brownies_description = "Köpüklü ve çift miktarda çikolata, gerçekten oturup hayatın tümünü sorgulamanız için ekstra bir dokunuş ile.",

		ejector_seat = "Ejector Koltuğu",
		ejector_seat_description = "Ejecto Seato Yani!",
		tuner_chip = "Tuner Çipi",
		tuner_chip_description = "Ben hızım.",

		chip = "Çip",
		chip_description = "Güzel görünümlü bir hacker çipi.",
		decryption_key_red = "Kırmızı Şifre Çözme Anahtarı",
		decryption_key_red_description = "BİLİYOR MUYDUNUZ? Kırmızı mafya aslında sadece bir avuç korkaktan ibarettir.",
		decryption_key_green = "Yeşil Şifre Çözme Anahtarı",
		decryption_key_green_description = "BİLİYOR MUYDUNUZ? Koka ilk olarak yeşil renkteydi.",
		decryption_key_blue = "Mavi Şifre Çözme Anahtarı",
		decryption_key_blue_description = "BİLİYOR MUYDUNUZ? Mavi ayaklı bir kuş türü var? Kaynak: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "Balistik Kalkan",
		ballistic_shield_description = "Bu kalkan RP'nin çete bölgelerine girerken kullanılmalıdır.",

		pet_porg = "Porg Arkadaşı",
		pet_porg_description = "Omzuna konacak sevimli bir Porg Arkadaşı ve sana eşlik edecek. Sevimli ve oyuncu, bu küçük yaratık seninle gittiğin her yerde yüzünü güldürecek.",
		pet_duck = "Vakvaklı Yan Arkadaş",
		pet_duck_description = "Neşeli vakvakları ve tüylü tüyleriyle bu ördek, her macera için mükemmel bir yardımcıdır. Omzuna keyifle konacak ve seninle birlikte dünyayı keşfetmeye hazır olacak.",
		pet_cat = "Omuz Sıcaklığı Sağlayan Kedi",
		pet_cat_description = "Bu tüylü evcil hayvan her zaman hazır bir uykunun kollarına yatabilir. Omzunuzda uyuyarak size eşlik ederken mutlu bir şekilde kıvrılıp mırıldanacaktır.",
		pet_cat_grey = "Tembel Gizmo",
		pet_cat_grey_description = "Bu küçük, gri kedi, tembelliğin zirvesidir. Sadece tembel bir esneme çıkarmak için bile neredeyse hareketsiz bir şekilde omzunuzun üzerinde konumlanır.",
		pet_chicken = "Tüylü Arkadaş",
		pet_chicken_description = "Bu sevimli tavşan size herhangi bir macera için mükemmel bir arkadaşlık eden yumuşak tüyleri ve meraklı kişiliği nedeniyle omzunuzda mutlu bir şekilde gagalayarak dolaşacaktır.",
		pet_shiba = "Patili Devriyesi",
		pet_shiba_description = "Oynak kişiliği ve yumuşak tüyleriyle bu küçük shiba köpeği her macera için mükemmel bir yoldaştır. Mutlu kuyruk sallayarak size her yerde mutluluk katarak takip edecektir.",
		pet_mouse = "Yuvarlak Arkadaş",
		pet_mouse_description = "Bu yuvarlak ve tüylü küçük şincila her macera için mükemmel bir arkadaştır. Yumuşak tüyleri ve oyunbaz kişiliği onu mükemmel bir yastık arkadaşı yapar ve gün boyunca omzunuzda mutlu bir şekilde duracaktır.",
		pet_raccoon = "Rascal, Rakunum",
		pet_raccoon_description = "Tanışın Rascal, maceraya her zaman hazır tüylü rakun. Tombul fiziği ve yaramaz kişiliğiyle omzunuzda oturarak size hazineleri aramanıza yardımcı olacak. Hazır mısınız maceraya?",

		hotwheels_mcqueen = "Sürat Şimşek",
		hotwheels_mcqueen_description = "Ben hızım, Cadillac gibi yüzer ama BMW gibi sokarım. KATCHOW KATCHOW KATCHOW",
		hotwheels_towmater = "Çekici",
		hotwheels_towmater_description = "Adım Çekici, tomater gibi ama T harfi olmadan.",

		boxing_gloves = "Boks Eldivenleri",
		boxing_gloves_description = "Rocky'e dönüşmeni sağlar, ama muhtemelen bir devam filmi alamayacaksın...",
		leash = "Tasma",
		leash_description = "Neden aldığını kimse bilemeyecek, ama sahip olduğun için kesinlikle seni yargılayacaklar.",

		shrooms = "Mantarlar",
		shrooms_description = "Bunları pizzanın üzerine koymamı söylediler, ama şimdi pizza üzerimde kendini koyuyor... bekle, ben kimim?",

		bucket = "Kova",
		bucket_description = "Geçici bir kask gibi kullanılabilir.",
		fertilizer = "Gübre",
		fertilizer_description = "Daha yeşil bir dünya için.",

		aluminium_powder = "Alüminyum Tozu",
		aluminium_powder_description = "Sanayi ve kimyasal uygulamalarda yaygın olarak kullanılan çok yönlü bir toz. Belirli bileşenlerle birleştirildiğinde, yoğun ısı ve ışık oluşturarak, yüksek reaktiviteye sahip termite reaksiyonları oluşturabilir.",
		iron_oxide = "Demir Oksit Tozu",
		iron_oxide_description = "Çeşitli endüstriyel süreçlerde kullanılan demir ve oksijen moleküllerinden oluşan yaygın bir toz. Belirli maddelerle karıştırıldığında, yüksek exotermik reaksiyonlara katılabilir ve ısı ve enerji açığa çıkarabilir.",

		gold_bar = "Altın Çubuk",
		gold_bar_description = "Tamir ve el işi için kullanılır.",

		aluminium = "Ham Alüminyum",
		aluminium_description = "Tamir ve el işi için kullanılır.",
		glass = "Kaba Cam",
		glass_description = "Tamir ve el işi için kullanılır.",
		rubber = "Ham Kauçuk",
		rubber_description = "Tamir ve el işi için kullanılır.",
		scrap_metal = "Hurda Metal",
		scrap_metal_description = "Tamir ve el işi için kullanılır.",
		steel = "Ham Çelik",
		steel_description = "Tamir ve el işi için kullanılır.",

		purified_aluminium = "Arıtılmış Alüminyum",
		purified_aluminium_description = "Profesyonel tamirlerde kullanılır.",
		tempered_glass = "Güvenlik Camı",
		tempered_glass_description = "Profesyonel tamirlerde kullanılır.",
		vulcanized_rubber = "Vulkanize Kauçuk",
		vulcanized_rubber_description = "Profesyonel tamirlerde kullanılır.",
		processed_metal = "İşlenmiş Metal",
		processed_metal_description = "Profesyonel tamirlerde kullanılır.",
		refined_steel = "İşlenmiş Çelik",
		refined_steel_description = "Profesyonel tamirlerde kullanılır.",

		power_saw = "Elektrikli Testere",
		power_saw_description = "Şeyleri kesmek için kullanılır.",

		thermite = "Termite",
		thermite_description = "Yüksek derecede patlayıcı bir toz, koklanmamalı.",
		fake_plate = "Sahte Plaka",
		fake_plate_description = "Haha, polislere güzel bir sürpriz yapacağım.",
		evidence_bag_empty = "Boş Delil Torbası",
		evidence_bag_empty_description = "Şunu geliştirebilir misiniz?",
		evidence_bag = "Delil Torbası",
		evidence_bag_description = "Mühürlenmiş bir suç, ileride kullanım için torbada saklanır.",
		fingerprint_evidence = "Parmak İzi Delili",
		fingerprint_evidence_description = "Seni suçluları yakalamanda yardımcı olacak.",

		ammo_box = "Büyük Mühimmat Kutusu",
		ammo_box_description = "Çok ateş etmek istediğinizde ideal. Her mühimmat türünden 60 mermi içerir.",

		stungun_ammo = "Tazer Kartuşu",
		stungun_ammo_description = "Öldürücü olmayan bir seçenek.",
		pistol_ammo = "Tabanca Mühimmatı",
		pistol_ammo_description = "Günlük kullanım için idealdir. Hemen hemen tüm elde taşınabilir tabancalar için uygundur.",
		sub_ammo = "Yarı Otomatik Silah Mühimmatı",
		sub_ammo_description = "Rakip bir gruba fazla mermi harcamak istiyorsanız, uygun bir seçenektir. Tam etki için yarı otomatik bir silah önerilir.",
		rifle_ammo = "Tüfek Mermisi",
		rifle_ammo_description = "Bu, yol boyunca bazı polisleri öldürmek isteyen sert banka soyguncuları için.",
		sniper_ammo = "Keskin Nişancı Mermisi",
		sniper_ammo_description = "Acele et!",
		shotgun_ammo = "Yivli Tüfek Mermisi",
		shotgun_ammo_description = "İnsanlar bunların içinde barut olduğunu düşünüyorlar! Palyaçolar... onlar sevgi ve neşeyle dolu.",

		silver_watches = "Gümüş Saatler",
		silver_watches_description = "Dikkatli ol!",
		necklaces = "Kolyeler",
		necklaces_description = "Kıyafetinize ekstra ışıltı ekleyin!",
		gold_watches = "Altın Saatler",
		gold_watches_description = "Ve... bunları nereden aldın, tam olarak?",
		diamonds = "Elmaslar",
		diamonds_description = "Tam zırh yapmak için 24'e ihtiyacın var. Ama kendine bir kazma da alabilmek için 27 tavsiye ederim.",

		weather_spell_snow = "Hava Büyüsü (Kar)",
		weather_spell_snow_description = "Bu öğeyi kullanarak geçici olarak hava durumunu kontrol edebilir ve kar yağdırabilirsin! Tek kullanımlıktır, dikkatli kullanın. Eğer aynı anda iki hava büyüsü kullanırsan, ikinci olan sadece sıraya girecektir.",
		weather_spell_rain = "Hava Büyüsü (Yağmur)",
		weather_spell_rain_description = "Bu öğe kullanarak hava durumunu geçici olarak kontrol edip yağmur yağdırabilirsiniz! Bir defaya mahsus kullanılabilir, dikkatli kullanın. Eş zamanlı olarak iki hava büyüsü kullanırsanız, ikincisi sıraya alınacaktır.",
		weather_spell_thunder = "Hava Büyüsü (Şimşek)",
		weather_spell_thunder_description = "Bu öğe kullanarak hava durumunu geçici olarak kontrol edip şimşekli bir fırtına yapabilirsiniz! Bir defaya mahsus kullanılabilir, dikkatli kullanın. Eş zamanlı olarak iki hava büyüsü kullanırsanız, ikincisi sıraya alınacaktır.",

		zombie_pill = "Zombi Hapı",
		zombie_pill_description = "Garip şeyler yapan garip bir hap... Kendi riskinize yutun. Şiddetli rüyalardan korunmak için bir silah taşımak akıllıca olabilir.",

		acid = "Asit",
		acid_description = "Kalıcı olarak yüksek olmanızı sağlar. Kaçış yok.",

		rose = "Gül",
		rose_description = "Bilmiyorum, erp sanırım.",

		teddy_bear = "Ayuşku",
		teddy_bear_description = "Sizi gerçekten dinleyecek bir arkadaş.",

		self_driving_chip = "Kendi kendine sürüş yongası",
		self_driving_chip_description = "Her yerde ölü geyikler... ne kadar komik.",

		ticket_50 = "$50 Loto Bileti",
		ticket_50_description = "Kazanca küçük bir katkı yapın.",
		ticket_250 = "$250 Loto Bileti",
		ticket_250_description = "Artık biraz ilerliyoruz, risk almaya hazır olun.",
		ticket_500 = "$500 Loto Bileti",
		ticket_500_description = "Harika gidiyorsunuz, tüm haftalık maaşınız bu bilete gidiyor!",

		avocado = "Avokado",
		avocado_description = "Küçük yeşil bir nesne, bir dip yapmak için harika olur.",
		avocado_smoothie = "Avokado Smoothie",
		avocado_smoothie_description = "Sağlıklı yeşil bir içecek, pürelenecek parçaları umursamayın.",

		raspberry = "Ahududu",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "Anten",
		antenna_description = "Tüm frekansları yakalayın.",
		battery_pack = "Pil Paketi",
		battery_pack_description = "Tüm elektroniklerinizi çalıştırın.",
		cpu = "CPU",
		cpu_description = "Her bilgisayarın kalbi.",
		knob = "Düğme",
		knob_description = "Çevir, döndür.",
		pcb_board = "PCB Kartı",
		pcb_board_description = "Bir sonraki icadınızı prototiplemek için.",
		screen = "Ekran",
		screen_description = "Yaptığınızı görün.",
		sd_card = "SD Kartı",
		sd_card_description = "Tüm depolama ihtiyaçlarınız için.",
		wires = "Kablolar",
		wires_description = "Her şeyi bir arada tutar.",

		note = "Not",
		note_description = "Bazı notlar, bilemiyorum ki.",

		pigeon_milk = "Güvercin Sütü",
		pigeon_milk_description = "\"Pigeon milk içseydin, seni hemen uyuturdu\"\nVedder tarafından sevgiyle elde edilmiş süt.",

		bandana = "Bandana",
		bandana_description = "Çete malzemeleri. (Bloods kazanır)",

		battering_ram = "Girme Demirleri",
		battering_ram_description = "Kapıları patlatmak için!",

		trading_card = "Takas Kartı",
		trading_card_description = "Bir koleksiyonluk takas kartı, hepsini toplamalısın!",

		trading_card_pack = "Takas Kartları Paketi",
		trading_card_pack_description = "Rastgele takas kartları paketi, iyi çekilişler alalım.",

		boombox = "Boombox",
		boombox_description = "Müzik çalın ve her yerde sinir bozucu olun, her zaman!",

		lighter = "Çakmak",
		lighter_description = "Bazı adamlar sadece dünyaların yanmasını istiyor",

		nitro_tank = "Nitro Tankı",
		nitro_tank_description = "Ihtiyacın olan hız için mükemmel.",

		empty_nitro_tank = "Boş Nitro Tankı",
		empty_nitro_tank_description = "Boş bir fasulye kutusu kadar kullanışsız.",

		sheet_metal = "Sac Metal",
		sheet_metal_description = "2x2'nizi yükseltmek için mükemmel.",

		valve = "Vana",
		valve_description = "Half Life 3 Ne Zaman?",

		empty_tank = "Boş Tank",
		empty_tank_description = "Artık propan veya propan aksesuarları içermiyor.",

		pepper_spray = "Biber Gazı",
		pepper_spray_description = "GÖZLERİM!",

		jail_card = "Hapishane Kartı",
		jail_card_description = "Hapisten çıkma kartı!",

		vape = "Geek Bar",
		vape_description = "Havalı görünmeye çalışıyor musun? Korkak olmaktan yoruldun mu? Bir çekiş al bwo!",

		acetone = "Aseton",
		acetone_description = "Boyayı çıkarmak veya Cooper tarzı nefes almak için mükemmel.",

		bleach = "Çamaşır Suyu",
		bleach_description = "Bu içilemez.",

		ammonia = "Amonyak",
		ammonia_description = "Bir sihirli sürpriz için çamaşır suyu ile karıştırın.",

		lithium_batteries = "Lityum Pilleri",
		lithium_batteries_description = "Ticari uçaklara izin verilmez, çünkü patlama riski var.",

		meth_bag = "Meth Çantası",
		meth_bag_description = "\"Cooper'in Baharatı\" lakaplıdır. Alamo Denizi'nin gördüğü en saf kristal bazılarıdır.",

		meth_table = "Meth Masası",
		meth_table_description = "Meth pişirme hakkında eğlenceli bir Breaking Bad referansı.",

		campfire = "Kamp ateşi",
		campfire_description = "Dünya genelinde herhangi bir yere yerleştirilebilir. Kamp, avlanma ve balıkçılık için idealdir! Bu öğe tekrar alınamaz.",
		tent = "Çadır",
		tent_description = "Dünya genelinde herhangi bir yere yerleştirilebilir. Kamp, avlanma ve balıkçılık için idealdir!",
		cloth_tent = "Kumaş Çadır",
		cloth_tent_description = "Dünya genelinde herhangi bir yere yerleştirilebilir. Kamp yapmak, avlanmak ve balık tutmak için mükemmel!",
		canvas_tent = "Kanvas Çadır",
		canvas_tent_description = "Dünya genelinde herhangi bir yere yerleştirilebilir. Kamp yapmak, avlanmak ve balık tutmak için mükemmel!",
		plastic_chair = "Plastik Sandalye",
		plastic_chair_description = "Dünya genelinde herhangi bir yere yerleştirilebilir. Kamp yapmak, avlanmak ve balık tutmak için mükemmel!",
		fishing_chair = "Balıkçı Sandalyesi",
		fishing_chair_description = "Dünya genelinde herhangi bir yere yerleştirilebilir. Kamp yapmak, avlanmak ve balık tutmak için mükemmel!",
		yoga_mat = "Yoga Matı",
		yoga_mat_description = "Dünyanın herhangi bir yerinde yerleştirilebilir. Kamp, avcılık ve balıkçılık için mükemmeldir!",
		cooler_box = "Soğutucu Kutu",
		cooler_box_description = "Dünyanın herhangi bir yerinde yerleştirilebilir. Kamp, avcılık ve balıkçılık için mükemmeldir!",
		parasol = "Şemsiye",
		parasol_description = "Dünyanın herhangi bir yerinde yerleştirilebilir. Kamp, avcılık ve balıkçılık için mükemmeldir!",
		parasol_table = "Şemsiyeli Masa",
		parasol_table_description = "Dünyanın herhangi bir yerinde yerleştirilebilir. Kamp, avcılık ve balıkçılık için mükemmeldir!",
		table = "Masa",
		table_description = "Herhangi bir yere yerleştirilebilir. Kamp, avlanma ve balıkçılık için mükemmel!",
		towel = "Havlu",
		towel_description = "Herhangi bir yere yerleştirilebilir. Kamp, avlanma ve balıkçılık için mükemmel!",
		disposable_grill = "Tek Kullanımlık Izgara",
		disposable_grill_description = "Herhangi bir yere yerleştirilebilir. Kamp, avlanma ve balıkçılık için mükemmel! Bu öğe tekrar toplanamaz.",
		grill = "Izgara",
		grill_description = "Herhangi bir yere yerleştirilebilir. Kamp, avlanma ve balıkçılık için mükemmel!",
		police_barrier = "Polis Barikatı",
		police_barrier_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		dummy = "Atış Eğitimi Hedefi",
		dummy_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		target = "Hedef",
		target_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		large_target = "Büyük Hedef",
		large_target_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		cone = "Koni",
		cone_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		spike_strips = "Motosiklet Lastiği Durdurma Barikatı",
		spike_strips_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		floodlight = "Fener Aygıtı",
		floodlight_description = "Dünya genelinde herhangi bir yere yerleştirilebilir.",
		left_diversion_sign = "Sol Yönlendirme İşareti",
		left_diversion_sign_description = "Dünya genelinde herhangi bir yere yerleştirilebilir.",
		right_diversion_sign = "Sağ Yönlendirme İşareti",
		right_diversion_sign_description = "Dünya genelinde herhangi bir yere yerleştirilebilir.",
		stop_sign = "Dur İşareti",
		stop_sign_description = "Dünya genelinde herhangi bir yere yerleştirilebilir.",
		bear_trap = "Ayı Tuzak",
		bear_trap_description = "Dünya genelinde herhangi bir yere yerleştirilebilir.",
		barrier = "Bariyer",
		barrier_description = "Standart inşaat bariyeri.",
		traffic_barrier = "Trafik Bariyeri",
		traffic_barrier_description = "Trafik'in ne olduğunu bilmesi için bir bariyer.",
		small_barrier = "Küçük Bariyer",
		small_barrier_description = "Berbat küçük bebek barikatı.",
		traffic_barrel = "Trafik Barili",
		traffic_barrel_description = "Vurulabilir gibi görünüyor, ama... neden risk alıyorsunuz?",
		pedestrian_barrier = "Yaya Bariyeri",
		pedestrian_barrier_description = "Travis Scott konserinde olmadığı sürece harika bir şey...",

		bandit_1 = "Haydut 1",
		bandit_1_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		bandit_2 = "Haydut 2",
		bandit_2_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		hostage_1 = "Rehine 1",
		hostage_1_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",
		hostage_2 = "Rehine 2",
		hostage_2_description = "Dünyanın herhangi bir yerine yerleştirilebilir.",

		director_chair = "Yönetmen Koltuğu",
		director_chair_description = "Dünyanın herhangi bir yerine yerleştirilebilir. Taşınabilir oturma alanı.",
		beach_chair = "Plaj Sandalyesi",
		beach_chair_description = "Dilediğiniz her yerde yerleştirilebilir. Hareket halinde rahat bir şekilde oturun.",
		green_fishing_chair = "Yeşil Balıkçılık Sandalyesi",
		green_fishing_chair_description = "Dilediğiniz her yerde yerleştirilebilir. Hareket halinde rahat bir şekilde oturun.",
		blue_fishing_chair = "Mavi Balıkçılık Sandalyesi",
		blue_fishing_chair_description = "Dilediğiniz her yerde yerleştirilebilir. Hareket halinde rahat bir şekilde oturun.",

		tire_wall = "Lastik Duvarı",
		tire_wall_description = "Güvenlik sağlamanız gerektiğinde, ama hiçbir şey yokken.",

		claymore = "Kırkmerak",
		claymore_description = "Son derece etkili anti-personel mayını.",

		tv_stand = "Televizyon Standı",
		tv_stand_description = "Televizyonu istediğiniz herhangi bir yere sabitlemek için kullanılır.",
		tv_remote = "Televizyon Kumandası",
		tv_remote_description = "Universal kumanda (Kuantum piller dahil değildir).",

		firework_rocket = "Havai Fişek Roketi",
		firework_rocket_description = "Basit bir havai fişek roketi. 4 Temmuz için harika.",
		firework_battery = "Havai Fişek Bataryası",
		firework_battery_description = "Bir havai fişek bataryası. Aynı anda 4 havai fişek atar.",

		pole = "Sarı Direk",
		pole_description = "Herkesi etkisiz hale getirmek için mükemmel.",

		gasoline_bottle = "Benzin Şişesi",
		gasoline_bottle_description = "Aracınızın ya da kendinizin hızlı bir şekilde yeniden doldurulması için.",

		radio_jammer = "Radyo Kesici",
		radio_jammer_description = "Gelen ve giden her türlü iletişimi kesmek için mükemmel.",

		winner_trophy = "Birincilik Kupası",
		winner_trophy_description = "Sen en iyisisin!",

		treasure_map = "Hazine Haritası",
		treasure_map_description = "Esmer ve yıpranmış bir harita, şifreli ipuçlarını çözebilenlere söz verilen sonsuz zenginlikleri vaat ediyor. X noktası yerini belirlerken, hazineye olan yolculuk tehlikeli ve zorlu olabilir.",
		treasure_map_piece = "Hazine Haritası Parçası",
		treasure_map_piece_description = "Büyük bir hazine haritasının koparılmış parçası, kaybolmuş veya kasıtlı olarak gizlenmiş olabilir. Bir sır parçası, çözülmesi bekleyen bir bulmaca taşır. Tüm parçaları toplayın, haritayı birleştirin ve kayıp bir hazinenin sırlarını açın. Rakip hazine avcılarından ve beklenmedik engellerden sakının!",

		flag = "Bayrak",
		flag_description = "Sıkıca tutun!",

		black_dildo = "Siyah Dildo",
		black_dildo_description = "İtirafı ya da yağları alacağız, her türlü yolla.",
		pink_dildo = "Pembe Dildo",
		pink_dildo_description = "Bugsy Middleman tarafından el yapımı olarak oyma ve test edilmiştir.",

		bean_coffee = "Fasulye Kahvesi",
		bean_coffee_description = "Fasulye suyu... aslında ne olduğu.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Süt köpüğü ile servis edilen espresso, yani süt köpüğü deyip geçmeyin...",
		espresso = "Espresso",
		espresso_description = "Evlerinizi besleyecek kadar enerji, hepsi düzenli bir bardakta.",
		cream_cookie = "Kremalı Kurabiye",
		cream_cookie_description = "Kremalı, tam da sevdiğiniz gibi.",
		cheesecake = "Cheesecake",
		cheesecake_description = "Peynirli kek ile karıştırılmaması gereken bir kek.",
		chocolate_cake = "Çikolata Keki",
		chocolate_cake_description = "En kaliteli kakao çekirdeklerinden yapılan lezzetli bir kek.",
		cupcake = "Muffin",
		cupcake_description = "Sihirli tek boynuzlu at kreması ile süslenmiş kabarmış bir kek.",
		pink_lemonade = "Pembe Limonata",
		pink_lemonade_description = "Sadece limonatayı pembe boyayarak iki katına satmak için yapılmış değil, tamamen farklı bir lezzet.",

		irish_coffee = "İrlanda Kahvesi",
		irish_coffee_description = "Taze yapılmış kahveye biraz orijinal İrlanda viskisi eklenerek yapılan bir içecek.",

		chip_10 = "$10 Cip",
		chip_10_description = "Bir kumar cipi. Kumar oynamak için kullanılabilir. Öğe, kumarhanede paraya dönüştürülebilir.",
		chip_50 = "$50 Cip",
		chip_50_description = "Bir kumar cipi. Kumar oynamak için kullanılabilir. Öğe, kumarhanede paraya dönüştürülebilir.",
		chip_100 = "$100 Cip",
		chip_100_description = "Bir kumar cipi. Kumar oynamak için kullanılabilir. Öğe, kumarhanede paraya dönüştürülebilir.",
		chip_500 = "$500 Cip",
		chip_500_description = "Bir kumar cipi. Kumar oynamak için kullanılabilir. Öğe, kumarhanede paraya dönüştürülebilir.",
		chip_1000 = "1000 TL'lik fiş",
		chip_1000_description = "Bir kumar fişi. Kumar oynamak için kullanılabilir. Madeni para şeklinde kumarhanede paraya çevrilebilir.",
		chip_5000 = "5000 TL'lik fiş",
		chip_5000_description = "Bir kumar fişi. Kumar oynamak için kullanılabilir. Madeni para şeklinde kumarhanede paraya çevrilebilir.",
		chip_10000 = "10000 TL'lik fiş",
		chip_10000_description = "Bir kumar fişi. Kumar oynamak için kullanılabilir. Madeni para şeklinde kumarhanede paraya çevrilebilir.",

		grubs = "Solucanlar",
		grubs_description = "Balık tutmak için mükemmel.",
		leeches = "Sülükler",
		leeches_description = "Balık avı için mükemmel.",
		earthworms = "Solucanlar",
		earthworms_description = "Balık avı için mükemmel.",
		fishing_rod = "Olta",
		fishing_rod_description = "Balık avı için mükemmel",
		raw_meat = "Çiğ Et",
		raw_meat_description = "Taze et parçası.",
		cooked_meat = "Pişmiş Et",
		cooked_meat_description = "Just cooked meat.",
		burnt_meat = "Yanmış Et",
		burnt_meat_description = "Yanmış et.",
		leather = "Deri",
		leather_description = "Geyikten yeni alınmış bir güzel post.",
		wood = "Odun",
		wood_description = "Bir ağaçtan yeni kesilmiş bir odun parçası.",
		charcoal = "Kömür",
		charcoal_description = "Normal kömürden daha üstün.",

		beef_jerky = "Sığır Jirki/Kurutulmuş Et",
		beef_jerky_description = "Bir parça güzel sığır jirki.",
		oreos = "Doğumgünü Pasta Oreo'ları",
		oreos_description = "Doğumgünü pastası tadı veren güzel bisküviler.",
		nerds_chunks = "Nerds Şekerli Küpler",
		nerds_chunks_description = "Bir torba nerds şekerli kütleler, lezzetli!",
		reeses_pieces = "Reese'in Parçacıkları",
		reeses_pieces_description = "Hafif acıkmış hissettiğinizde mükemmel bir atıştırmalık, ama tam bir öğün yemek için yeterince aç değilsiniz.",
		kettle_chips = "Kettle Cips (Bal-BBQ)",
		kettle_chips_description = "Dünyanın en iyi çipsleri.",
		cheetos = "Cheetos",
		cheetos_description = "Oyun seanslarınız için en iyi atıştırmalık.",
		peanuts = "Tuzlu Fıstık",
		peanuts_description = "Atıştırmalık için mükemmel olan bir fıstık kutusu.",

		rice = "Pirinç",
		rice_description = "Dolu, hafifçe kabaran taneleri var.",
		nori = "Nori",
		nori_description = "Bu yosun ama biraz şık.",
		soy_sauce = "Soya Sosu",
		soy_sauce_description = "Soya sosu, deniz ürünleri, et ve sebzeler için harika bir harç ve daldırma sosu olan zengin bir umami lezzetine sahip tuzlu bir baharatlama sosudur ve düşük kalorili ve yüksek protein içeriğiyle mükemmeldir.",
		eggs = "Yumurta",
		eggs_description = "Çok yönlü ve besleyici, yumurtalar omletler, kişler ve pişmiş ürünler için mükemmeldir.",
		lime = "Limon",
		lime_description = "Ekşimsi ve vitamin C açısından zengin olan limonlar, içecekler, marine edilmiş yiyecekler ve soslara lezzet katar.",
		coconut = "Hindistan Cevizi",
		coconut_description = "Tatlı ve kremamsı, hindistan cevizi tatlıları, köriler ve smoothielerin tadını artırır.",
		sugar = "Şeker",
		sugar_description = "Yasadışı olmayan birçok kişi tarafından kokain olarak kabul edilir ve diyabet yapabilir.",

		golf_ball = "Golf Topu",
		golf_ball_description = "Golf oyununda kullanılır.",
		golf_ball_yellow = "Sarı Golf Topu",
		golf_ball_yellow_description = "Golf oynamak için kullanılır.",
		golf_ball_orange = "Turuncu Golf Topu",
		golf_ball_orange_description = "Golf oynamak için kullanılır.",
		golf_ball_pink = "Pembe Golf Topu",
		golf_ball_pink_description = "Golf oynamak için kullanılır.",

		gas_mask = "Gaz Maskesi",
		gas_mask_description = "Her türlü gazdan sizi korur, hatta büyükanneler kadar kötü olanlarından bile.",
		nv_goggles = "Gece Görüş Gözlüğü",
		nv_goggles_description = "Karanlıkta görmeye yardımcı olur.",
		thermal_goggles = "Termal Görüntü Gözlüğü",
		thermal_goggles_description = "Duvarların içinden görebilmenize yardımcı olacak (gerçekte değil xD).",

		green_rolls = "Yeşil Rulolar",
		green_rolls_description = "Ortalamanın üzerinde ihtiyacı olanlara.",
		rolling_paper = "Sarma Kağıdı",
		rolling_paper_description = "Ağrınızı azaltıp rahatlamak için hızlı bir şekilde sigara sarmak için ihtiyacınız olan kağıt.",

		arena_pill = "Arena İlacı",
		arena_pill_description = "Oldukça tuhaf şeyler yapan tuhaf bir hap... Kendi riskinizde yutun. Şiddetli rüyalardan korunmak için yanınızda bir silah bulundurmak akıllıca olabilir.",

		shovel = "Kazma",
		shovel_description = "Saklanmış zenginlikleri ortaya çıkarmak ve her ortamda sırları açığa çıkarmak için sağlam bir kazma, tutkulu hazin avcıları için değerli bir varlıktır.",

		electric_fuse = "Elektrik Sigortası",
		electric_fuse_description = "Elektrik Sigortası, soygun odaları için gereken bir öğedir. Anahtar kart kilidini çalıştırmak için sigorta kutusuna yerleştirilmelidir.",
		keycard_green = "Yeşil Anahtar Kart",
		keycard_green_description = "Tıbbi malzemelerle dolu depoları açmak için kullanılır.",
		keycard_blue = "Mavi Anahtar Kart",
		keycard_blue_description = "Teknik malzemelerin dolu depolarını açmak için kullanılır.",
		keycard_red = "Kırmızı Anahtar Kartı",
		keycard_red_description = "Bir cephaneliği açmak için kullanılır.",

		magazine = "Şarjör",
		magazine_description = "Bir şarjör.",

		bank_rockfish = "Banka Balığı",
		black_and_yellow_rockfish = "Siyah ve Sarı Benekli Kayabalığı",
		black_rockfish = "Siyah Kayabalığı",
		blackgill_rockfish = "Siyah Solungaçlı Kayabalığı",
		blackspotted_rockfish = "Siyah Benekli Kayabalığı",
		blue_rockfish = "Mavi Kayabalığı",
		bocaccio = "Bocaccio",
		bronzespotted_rockfish = "Bronz Benekli Kayabalığı",
		brown_rockfish = "Kahverengi Kayabalığı",
		cabezon = "Kabezon Balığı",
		calico_rockfish = "Kırmızı Benekli Kayabalığı",
		california_scorpionfish = "Kaliforniya Akrep Balığı",
		canary_rockfish_variant_1 = "Kanarya Kayabalığı (Varyant 1)",
		canary_rockfish_variant_2 = "Kanarya Kayabalığı (Varyant 2)",
		chilipepper_rockfish = "Acı Biber Kayabalığı",
		china_rockfish = "Çin Kayabalığı",
		copper_rockfish_variant_1 = "Bakır Kayabalığı (Varyant 1)",
		copper_rockfish_variant_2 = "Bakır Kayabalığı (Varyant 2)",
		cowcod = "Köpek Balığı",
		darkblotched_rockfish = "Koyu Leke Kayabalığı",
		deacon_rockfish = "Deacon Rockfish",
		dusky_rockfish_dark_version = "Çizgili Sini Balığı (Koyu Renk Versiyonu)",
		dusky_rockfish_light_version = "Çizgili Sini Balığı (Açık Renk Versiyonu)",
		flag_rockfish = "Bayraklı Sini Balığı",
		gopher_rockfish = "Tavşan Sini Balığı",
		grass_rockfish_dark_version = "Çimen Sini Balığı (Koyu Renk Versiyonu)",
		grass_rockfish_light_version = "Çimen Sini Balığı (Açık Renk Versiyonu)",
		greenblotched_rockfish = "Yeşil Benekli Sini Balığı",
		greenspotted_rockfish = "Yeşil Leke Sini Balığı",
		greenstriped_rockfish = "Yeşil Çizgili Sini Balığı",
		halfbanded_rockfish = "Yarım bantlı kaya levreği",
		honeycomb_rockfish = "Bal peteği kaya levreği",
		kelp_greenling_female = "Deniz patlıcanı balığı (dişi)",
		kelp_greenling_male = "Deniz patlıcanı balığı (erkek)",
		kelp_rockfish = "Deniz yosunu kaya levreği",
		lingcod = "Kuzeyden kelligrambalığı",
		olive_rockfish = "Zeytin kaya levreği",
		pacific_ocean_perch = "Pasifik okyanusu kızılımsı",
		pacific_sand_sole = "Pasifik denizi kum dilimi",
		pacific_sanddab = "Pasifik kum dilimi",
		quillback_rockfish_variant_1 = "Kuş tüyü kaya levreği (Varyant 1)",
		quillback_rockfish_variant_2 = "Kuş tüyü kaya levreği (Varyant 2)",
		redbanded_rockfish = "Kızılçizgili Kayabalığı",
		rock_sole = "Kaya Dilbalığı",
		rosy_rockfish = "Pembe Kayabalığı",
		rougheye_rockfish = "Kaba Göz Kayabalığı",
		shortraker_rockfish = "Kısa Pullu Kayabalığı",
		silvergray_rockfish = "Gümüş Gri Kayabalığı",
		speckled_rockfish = "Noktalı Kayabalığı",
		squarespot_rockfish = "Kare Leke Kayabalığı",
		starry_flounder = "Yıldızlı Karina Balığı",
		starry_rockfish = "Yıldızlı Kayabalığı",
		tiger_rockfish_dark_version = "Tiger Kayabalığı (Koyu Versiyon)",
		tiger_rockfish_pink_version = "Tiger Kayabalığı (Pembe Versiyon)",
		treefish = "Ağaç balığı",
		vermilion_rockfish = "Kırmızı Mercan Balığı",
		widow_rockfish = "Dul Mercan Balığı",
		yelloweye_rockfish_adult = "Sarıgöz Balığı (Yetişkin)",
		yelloweye_rockfish_juvenile = "Sarıgöz Balığı (Genç)",
		yellowtail_rockfish = "Sarıkuyruk Mercan Balığı",

		bank_rockfish_description = "Banka Mercan Balığı oval şekilli balıklardır ve küçük bir başları ve dikenleri vardır. Boz-kırmızı veya kahverengi-kırmızıdırlar, genellikle yan çizgi boyunca açık pembe-turuncu bir bölge ve vücutta ve sırt yüzgecinin dikenli bölümünde siyah beneklemeler ile birlikte gelirler.",
		black_and_yellow_rockfish_description = "Sebastes chrysomelas, aile Sebastidae'nin bir deniz balığı türü olarak bilinen siyah-sarı kayabalığıdır. Kaliforniya ve Baja California açıklarındaki kayalık bölgelerde bulunur.",
		black_rockfish_description = "Siyah kayabalığı veya siyah deniz çipurası olarak da bilinen siyah balık, subfamily Sebastinae'ye ait bir deniz yüzgeçli balık türü olup, Scorpaenidae ailesinin bir parçası olan kayabalıkları içermektedir.",
		blackgill_rockfish_description = "Washington kıyıları açıklarında nadiren yakalanır ve köpek balığı ağı ve uzun olta ile ticari avcılar tarafından kullanılır. Kaliforniya kıyılarında eskiden sıkça yakalanan türlerdendi. <br><br> Küçük versiyonları açık denizlerde bulunabilir ancak daha yaşlı olanları derin sulara göç eder.",
		blackspotted_rockfish_description = "Sebastes melanostictus, siyah benekli kayabalığı, kayabalığı alt familyasına ait deniz altı pullu balık türlerinden Scorpaenidae ailesinin bir türüdür. Kuzey Pasifik Okyanusu'nda bulunur.",
		blue_rockfish_description = "Mavi kaya balığı veya mavi deniz çipurası, Scorpaenidae ailesinin bir parçası olan taş balıkları alt familyasına, Sebastinae alt familyasına ait bir tür denizden çıkan kemikli bir balıktır. Kuzeydoğu Pasifik Okyanusu'nda bulunur ve Kuzey Baja California'dan Oregon'a kadar uzanır. Sadece nehir ağızlarında bulunur, nehirlerde doğrudan görülmez.",
		bocaccio_description = "Bocaccio taş balığı, Scorpaenidae ailesinin bir parçası olan Sebastianinae alt familyasına ait bir tür denizden çıkan kemikli balığın adıdır. Kuzeydoğu Pasifik Okyanusu'nda bulunur.<br><br> Ayrıca \"kırmızı levrek\" olarak da bilinir.",
		bronzespotted_rockfish_description = "Bronze benekli kayabalığı olarak da bilinen Sebastes gilli, Scorpaenidae ailesine ait Sebastinae alt familyasına ait bir balık türüdür ve doğu orta Pasifik Okyanusu'nda bulunur.",
		brown_rockfish_description = "Çikolata dip balığı, kahverengi deniz levreği veya kahverengi bomber olarak da bilinen kahverengi kayabalığı, Scorpaenidae familyasına ait Sebastinae alt familyasındaki bir tatlısu balık türüdür ve kuzeydoğu Pasifik Okyanusu'nda bulunur.",
		cabezon_description = "Cabezon, Kuzey Amerika'nın Pasifik sahilinde doğal olarak bulunan büyük bir balık türüdür. Tür adı kelime kelime çevrildiğinde \"akrep balığı\" anlamına gelse de gerçek akrep balıkları akraba familya Scorpaenidae'ye aittir.",
		calico_rockfish_description = "Sebastes dallii, çiftlikbalığı olarak da bilinen kaliko kayabalığı, kayabalıkları altfamilyasına dahil olan bir deniz balığı türüdür. Scorpaenidae ailesinin bir parçasıdır ve doğu merkezi Pasifik Okyanusu'nda bulunur.<br><br>Erkek Kaliko kayabalıkları yedi yaşındayken ilk kez cinsel olgunluğa erişirken, dişiler dokuz yaşında cinsel olgunluğa erişir.",
		california_scorpionfish_description = "Scorpaena guttata, California akrep balığı olarak bilinen skorpen balık familyasındaki bir balık türüdür. Kaliforniya ve Baja California kıyılarında bulunur ve doğu Pasifik Okyanusu'na özgüdür.",
		canary_rockfish_variant_1_description = "Canary rockfish, ayrıca turuncu kaya balığı olarak da bilinen Sebastinae alt ailesine ait Scorpaenidae ailesinin deniz alt familyasına ait bir deniz kaya balığı türüdür. Batı Kuzey Amerika'nın Pasifik Okyanusu sularına özgüdür.",
		canary_rockfish_variant_2_description = "Kanarya kayabalığı, aynı zamanda turuncu kayabalığı olarak da bilinir, Scorpaenidae ailesine ait Sebastinae alt familyasına ait denizde omurgalı balık türüdür. Batı Kuzey Amerika'nın Pasifik Okyanusu sularına özgüdür.",
		chilipepper_rockfish_description = "Sebastes goodei, chilipepper kayabalığı ve chilipepper olarak bilinen deniz omurgalı balık türü, Scorpaenidae ailesinin Sebastinae alt familyasına aittir. Bu tür, genellikle Baja California'dan Vancouver'a kadar olan Batı Kuzey Amerika kıyılarında yaşamaktadır.",
		china_rockfish_description = "Çin kayabalığı, sarı şeritli kayabalığı veya sarı noktalı kayabalığı, Scorpaenidae familyasına ait kayabalıkları alt familyası Sebastinae'ye ait bir deniz ray yüzgeçli balık türüdür. Batı Kuzey Amerika açıklarındaki Pasifik Okyanusu sularına özgüdür.",
		copper_rockfish_variant_1_description = "Bakır kayabalığı, aynı zamanda bakır deniz bölgecikleri olarak da bilinir, Sebastinae alt familyasına ait kayabalıkları içeren, Scorpaenidae familyasına ait bir deniz yüzgeçli balık türüdür. Doğu Pasifik'te bulunur.<br><br>Genel okyanuslarda asla görülmeyecektir, çünkü sadece yüzeyde yakın veya dibinde olmak isterler.",
		copper_rockfish_variant_2_description = "Bakır kayabalığı veya bakır deniz bölgesi, kayabalıkları alt familyası Sebastinae'ye ve Scorpaenidae familyasına ait deniz kıkırdağı yüzgeçli bir balık türüdür. Doğu Pasifik'te bulunur.<br><br>Genel okyanuslarda asla görülmeyeceklerdir, çünkü sadece üstte veya dibin yakınında yaşarlar.",
		cowcod_description = "Sebastes levis, sığır kayabalığı veya sığır kayası balığı, kayabalıkları alt familyası Sebastinae'ye ve Scorpaenidae familyasına ait deniz kıkırdağı yüzgeçli bir balık türüdür. Doğu Pasifik Okyanusu'nda bulunur.<br><br>Boyut aralığı rekabet avantajı yaratır.",
		darkblotched_rockfish_description = "Kara noktalı kaya balığı, aynı zamanda siyah noktalı kaya balığı, siyah ağızlı kaya balığı ve lekeli olarak da bilinir, derin gövdeli bir balıktır.",
		deacon_rockfish_description = "Sebastes diaconus, papaz kaya balığı olarak da bilinen bir deniz balığı türüdür ve ailesi Scorpaenidae'nin bir parçası olan Sebastianinae alt familyasına aittir. Doğu Pasifik Okyanusu'nda bulunur. Erkekler her zaman dişilerden daha uzun yaşar.",
		dusky_rockfish_dark_version_description = "Sebastes ciliatus genellikle Kuzey Pasifik Okyanusu'nda bulunan bir kaya balığı türüdür ve genellikle puslu kaya balığı olarak da bilinir.",
		dusky_rockfish_light_version_description = "Sebastes ciliatus, genellikle Kuzey Pasifik Okyanusu'nda bulunan bir kaya balığı türü olan dumanlı kayabalığı olarak da bilinir.",
		flag_rockfish_description = "Sebastes rubrivinctus, ayrıca İspanyol bayrağı, kırmızı bantlı kayabalığı veya berber direği olarak da bilinen, Sebastinae alt familyasına ait deniz kırlangıç balığı türüdür ve Scorpaenidae ailesinin bir parçasıdır. Doğu Pasifik'te bulunur.",
		gopher_rockfish_description = "Gopher kaya balığı, ayrıca gopher deniz levreği olarak da bilinen bir deniz kırlangıç balığı türüdür ve Sebastinae alt familyasına aittir. Scorpaenidae ailesinin bir parçası olan bu balık, çoğunlukla Kaliforniya açıklarında doğu Pasifik'te bulunur.",
		grass_rockfish_dark_version_description = "Sebastes rastrelliger, çim kaya balığı olarak da bilinen, Scorpaenidae ailesine ait Sebastinae alt familyasına ait denizel yassı-kuyruklu balık türlerinden biridir. Doğal yaşam alanı Pasifik Okyanusu'nun doğu sularıdır.<br><br>En yaygın kullanımı, olta ve takım elbise ile rekreasyonel balıkçılar tarafından gerçekleştirilir.",
		grass_rockfish_light_version_description = "Sebastes rastrelliger, çim kaya balığı olarak da bilinen, Scorpaenidae ailesine ait Sebastinae alt familyasına ait denizel yassı-kuyruklu balık türlerinden biridir. Doğal yaşam alanı Pasifik Okyanusu'nun doğu sularıdır.<br><br>En yaygın kullanımı, olta ve takım elbise ile rekreasyonel balıkçılar tarafından gerçekleştirilir.",
		greenblotched_rockfish_description = "Yeşil benekli kayakarı balığı, demersal bir türdür ve 55 m (180 fit) ile 490 m (1610 fit) arasındaki derinliklerde kaya yapıları içinde yalnız bireyler veya küçük gruplar halinde bulunur. Dişiler erkeklerden daha büyük olmakla birlikte en fazla 54 cm (21 inç) uzunluğa ulaşırlar. <br><br>Yeşil benekli, yeşil bürünlü ve yeşil çizgili tüm özellikleri ve davranışları paylaşırlar.",
		greenspotted_rockfish_description = "Sebastes chlorostictus, yeşil benekli kayakarı balığı, kayıtbalıkları alt familyasına ait denizde yaşayan bir türdür. Aile Scorpaenidae'nin bir parçasıdır ve doğu Pasifik'te bulunur. <br><br>Yeşil benekli, yeşil bürünlü ve yeşil çizgili tüm özellikleri ve davranışları paylaşırlar.",
		greenstriped_rockfish_description = "Sebastes elongatus, çizgili kayabalığı, çilek kayabalığı, ponssettas, Reina veya Serena olarak da bilinen deniz altı ailesi Sebastinae'nin (kayabalıkları) ve Scorpaenidae ailesinin bir üyesi olan bir deniz kırlangıcı balığı türüdür. Kuzeydoğu Pasifik Okyanusu'nda bulunur.<br><br>Yeşil lekeli, yeşil benekli ve çizgili tüm özellikleri ve davranışları paylaşırlar.",
		halfbanded_rockfish_description = "Sebastes semicinctus, yarı bantlı kayabalığı, Sebastinae altfamilyasına, Scorpaenidae ailesinin bir parçası olan bir deniz kırlangıcı balığı türüdür. Doğu Pasifik'te bulunur.",
		honeycomb_rockfish_description = "Honeycomb Rockfish küçük ve geniş bir gövdeye sahiptir ve genişlikleri standart uzunluğunun %35 ila %39'u kadardır. Dikenlerle kaplıdırlar. Yan hatlarının üzerinde rastgele yerleştirilmiş 4 ila 6 beyaz leke ile kahverengi veya kırmızımtırak kahverengi renkte olurlar.",
		kelp_greenling_female_description = "Kelp Greenling dişi balıklar, griye kahverengiye kadar değişen arka planda küçük, kırmızımsı kahverengi ile altın rengi beneklerle kaplıdır. Yüzgeçleri çoğunlukla sarımsı turuncudur. Erkekler genellikle vücutlarının ön yarısına iki üçte birine kadar düzensiz mavi beneklerle gri-kahverengi olma eğilimindedir.<br><br>En yaygın olarak 328 fit'ten daha sığ sularda bulunurlar.",
		kelp_greenling_male_description = "Erkek kelp yeşilbalığı, sırt ve kafasındaki siyah çizgilerle çevrili mavi benekleri olan kahverengi-zeytin yeşili renklidir. Dişi ve erkeğin her ikisi de gözünün üzerinde küçük bir çalı şeklinde çıkıntısı vardır. Bu tür 60 cm'ye kadar uzanabilir.<br><br>En yaygın olarak 328 feet'ten daha az suda bulunur.",
		kelp_rockfish_description = "Sebastes atrovirens, kelp levreği olarak da bilinen, Scorpaenidae ailesinin bir üyesi olan Sebastinae alt familyasına ait bir deniz balığı türüdür. Amerika Birleşik Devletleri'nin Kaliforniya kıyıları ile Meksika'nın Baja California kıyılarında bulunur ve Pasifik Okyanusu'na özgüdür.",
		lingcod_description = "Lingcod, yırtıcı balıklar olarak bilinirler ve 80 pound (35 kilogram) ağırlığa ve 60 inç (150 cm) uzunluğa kadar büyüyebilirler. Büyük ağızları 18 keskin dişle karakterizedir. Renkleri değişkendir, genellikle koyu kahverengi veya bakır lekeleri kümelendirilmiş halde görülürler.",
		olive_rockfish_description = "Zeytin kayabalığı, Plesiopidae familyasına ait bir uzun yüzgeçlidir. Sadece Yeni Zelanda'nın aralıklı bölgesinde ve düşük gelgitte kayalık havuzlarda bulunur ve balık, uzunluğu 30 cm'ye kadar erişebilir.",
		pacific_ocean_perch_description = "Pasifik okyanus çuprası, Pasifik kayabalığı, Gül balığı, Kırmızı çupra veya Kırmızı levrek olarak da bilinen bir balıktır. Aralığı Kuzey Pasifik'e uzanır: Güney Kaliforniya'dan Kuzey Honshū, Japonya'ya, Bering Denizi dahil Pasifik çevresi boyunca yayılır.",
		pacific_sand_sole_description = "Pasifik kum tabanı, sadece kum tabanında yaşadığı kuzeydoğu Pasifik sularını işgal eden bir düz balık türüdür. Tek cins olan Psettichthys'in türleri, Bering Denizi'nden Kuzey Kaliforniya'ya kadar yayılır.",
		pacific_sanddab_description = "Pasifik kum balığı, bir çeşit düz balıktır. Uzun kanatlı kumbalığı ve benekli kum balığı ile ortak yaşama alanını paylaşır. Açık kahverengi renkte, siyah lekelerle beneklenmiş ya da siyah-beyaz veya turuncu lekelerle süslenmiştir.",
		quillback_rockfish_variant_1_description = "Kılgerdan kayabalığı, aynı zamanda kılgerdan denatlısı olarak da bilinir, deniz altı ailesi Scorpaenidae'nin bir alt familyası olan Sebastinae'ye ait bir tür deniz kıkırdağı-sırtlı balığıdır. Bu tür, genellikle tuzlu su kayalıklarında bulunur. Ortalama yetişkin ağırlığı 2-7 pound arasında olup, 1 metre uzunluğa kadar ulaşabilir.<br><br> Kaliforniya'da bu balıklar 15 yıl yaşarlar. Kanada'da ise en az 95 yıl yaşarlar. Bu, Kanada'nın ABD'den daha üstün olduğunu kanıtlar.",
		quillback_rockfish_variant_2_description = "Quillback rockfish, ayrıca quillback seaperch olarak da bilinir, Scorpaenidae ailesine ait Sebastinae alt familyası, kayalık balıkları alt familyasına ait deniz türlerinden biridir. Bu tür çoğunlukla tuzlu su resiflerinde yaşar. Ortalama yetişkin ağırlığı 2-7 pound'dur ve 1 metre uzunluğa kadar ulaşabilir. <br><br>Cali civarında, bu türler 15 yıl yaşar. Kanada'da ise bu süre en az 95 yıldır. Buna göre, CA> US.",
		redbanded_rockfish_description = "Redbanded rockfish, ayrıca bandit, barber pole, flag rockfish, Spanish flag, Hollywood, convict ve canary olarak da bilinir, Scorpaenidae ailesine ait Sebastinae alt familyası, kayalık balıkları alt familyasına ait deniz türlerinden biridir. Kuzey Pasifik Okyanusu'nda bulunur.",
		rock_sole_description = "Kayık dilinin (Lepidopsetta bilineata) Pleuronectidae ailesine ait bir çiftlik balığıdır. 575 metre (1.886 fit) derinliğe kadar kumlu ve çakıllı tabanlarda yaşayan demersal bir balıktır, ancak genellikle 0 ile 183 metre (0 ve 600 fit) arasında bulunur.",
		rosy_rockfish_description = "Sebastes rosaceus, pembemsi kaya balığı olarak da bilinen, kayabalığı altfamilyası Sebastinae'ye, Skorpenidae ailesinin bir parçası olan denizlerde yaşayan bir türdür. Doğu Pasifik'te bulunur.",
		rougheye_rockfish_description = "Rougheye rockfish, Sebastes ciliatus, bir kaya balığıdır. Aynı zamanda blackthroat kaya balığı veya blacktip kaya balığı olarak da bilinir. En fazla 97 cm uzunluğunda büyüyebilir ve IGFA rekor ağırlığı 14 lb 12 oz'dur.",
		shortraker_rockfish_description = "Yetişkinleri arasında en büyük kaya balığı türlerinden biri olan shortraker rockfish su altında açık pembe, pembe-turuncu veya kırmızı renkte benekli veya muntazam zarlara sahiptir. Bütün yüzgeçlerde bir miktar siyah ve dorsal yüzgeç beyaz uçludur. Ağız kırmızı ve siyah lekelerle kaplı olabilir.<br><br>Shortraker rockfish, dünyanın en uzun ömürlü deniz canlılarından biridir ve 157 yaşına kadar yaşamıştır.",
		silvergray_rockfish_description = "Gümüş grisi kayabalığı, azalmış baş dikenleri bulunan bir kayabalığı türüdür. Koyu dudakları vardır ve alt çenesi uzun ve üst çenenin ötesine taşar. Alt çene ucu yakınında belirgin bir simfizal yumruya sahiptir.",
		speckled_rockfish_description = "Sebastes ovalis, benekli kayabalığı, Sebastinae altfamilyasına ait denizaltı kemikli bir balık türüdür ve Scorpaenidae familyasının bir parçasıdır. Doğu Pasifik'in derin kayalık bölgelerinde bulunur.",
		squarespot_rockfish_description = "Sebastes hopkinsi, kare noktalı kayabalığı, Scorpaenidae ailesine ait Sebastinae alt familyasına ait bir deniz süneği türüdür. Bu tür Doğu Pasifik'te bulunur.",
		starry_flounder_description = "Starry flounder, aynı zamanda öğüt taşı, zımpara taşı ve uzun burunlu solungaçlı balık olarak bilinen yaygın bir düz balık türüdür ve Kuzey Pasifik'in kenarlarında bulunur.",
		starry_rockfish_description = "Starry rockfish, aynı zamanda spotted corsair, spotted rockfish, chinafish ve red rock cod olarak da bilinen bir deniz süneği türüdür. Scorpaenidae ailesine ait Sebastinae alt familyasına ait bir türdür. Doğu Pasifik Okyanusu'nda bulunur.",
		tiger_rockfish_dark_version_description = "Kaplan kayabalığı, ayrıca kaplan çipurası, bantlı kayabalığı ve siyah bantlı kayabalığı olarak da bilinir, Scorpaenidae ailesine ait bir alt familya olan Sebastinae'ye ait denizdişi balık türüdür. Batı Kuzey Amerika'nın Pasifik okyanusu sularına özgüdür.",
		tiger_rockfish_pink_version_description = "Kaplan kayabalığı, ayrıca kaplan çipurası, bantlı kayabalığı ve siyah bantlı kayabalığı olarak da bilinir, Scorpaenidae ailesine ait bir alt familya olan Sebastinae'ye ait denizdişi balık türüdür. Batı Kuzey Amerika'nın Pasifik okyanusu sularına özgüdür.",
		treefish_description = "Ağaç balığı, Scorpaenidae familyasına ait bir alt familya olan Sebastinae alt familyasına ait deniz kırlangıç balığı türlerinden biridir. Doğu Pasifik Okyanusu'na özgüdür.",
		vermilion_rockfish_description = "Sebastes miniatus, vermilion rockfish, vermilion seaperch, red snapper, red rock cod ve rasher olarak da bilinen, Scorpaenidae familyasına ait bir alt familya olan Sebastinae alt familyasına ait deniz kırlangıç balığı türlerinden biridir.",
		widow_rockfish_description = "Dul kırlangıçbalığı veya kahverengi bombalıyıcı olarak da bilinen deniz kırlangıç balığı türlerinden biri, Scorpaenidae familyasına ait bir alt familya olan Sebastinae alt familyasına aittir. Kuzeydoğu Pasifik Okyanusu'nda bulunur.",
		yelloweye_rockfish_adult_description = "Sarı gözlü kayabalığı, Sebastes cinsinin en büyük üyelerinden biri olup Scorpaenidae familyasına bağlı rock balığı alt familyasına ait bir deniz balığı türüdür. Adı, renginden kaynaklanmaktadır.",
		yelloweye_rockfish_juvenile_description = "Sarı gözlü kayabalığı, Sebastes cinsinin en büyük üyelerinden biri olup Scorpaenidae familyasına bağlı rock balığı alt familyasına ait bir deniz balığı türüdür. Adı, renginden kaynaklanmaktadır.",
		yellowtail_rockfish_description = "Sebastes flavidus, sarı kuyruklu kayabalığı veya sarı kuyruklu levrekler familyasına ait bir türdür. Kayabalıkları alt familyası Sicaniinae'ye, Scorpaenidae familyasına bağlıdır. Bu tür genellikle Kaliforniya'dan Alaska'ya kadar olan Batı Kuzey Amerika kıyılarında yaşar. <br><br> Larvalar ve yavrular yüzey yakınlarında yaşarken, yetişkinler kayalık resifler üzerinde daha derin sularda yaşar.",

		weapon_dagger = "Antika Süvari Hançeri",
		weapon_bat = "Beyzbol Sopası",
		weapon_bottle = "Kırık Şişe",
		weapon_crowbar = "Levye",
		weapon_unarmed = "Boş Eller",
		weapon_flashlight = "El Feneri",
		weapon_golfclub = "Golf Sopası",
		weapon_hammer = "Çekiç",
		weapon_hatchet = "Balta",
		weapon_knuckle = "Brass Nuckle",
		weapon_knife = "Bıçak",
		weapon_machete = "Machete",
		weapon_switchblade = "Çakı",
		weapon_nightstick = "Gece Copu",
		weapon_wrench = "Boru Anahtarı",
		weapon_battleaxe = "Savaş Balta",
		weapon_poolcue = "Bilardo Sopası",
		weapon_stone_hatchet = "Taş Balta",
		weapon_candycane = "Şeker Kamışı",

		weapon_pistol = "Tabanca",
		weapon_pistol_mk2 = "Pistol Mk II",
		weapon_combatpistol = "Savaş Tabancası",
		weapon_appistol = "AP Tabancası",
		weapon_stungun = "Elektro Şok Tabancası",
		weapon_pistol50 = "Pistol .50",
		weapon_snspistol = "SNS Tabancası",
		weapon_snspistol_mk2 = "SNS Tabancası Mk II",
		weapon_heavypistol = "Ağır Tabanca",
		weapon_vintagepistol = "Vintage Tabanca",
		weapon_flaregun = "Parlak Tabanca",
		weapon_marksmanpistol = "Keskin Nişancı Tabancası",
		weapon_revolver = "Ağır Silah Tabancası",
		weapon_revolver_mk2 = "Ağır Silah Tabancası Mk II",
		weapon_doubleaction = "Çift Hareketli Silah Tabancası",
		weapon_raypistol = "Up-n-Atomizer",
		weapon_ceramicpistol = "Seramik Tabanca",
		weapon_navyrevolver = "Navy Revolver",
		weapon_gadgetpistol = "Perico Tabancası",
		weapon_stungun_mp = "Elektrikli Şok Tabancası (MP)",
		weapon_pistolxm3 = "WM 29 Tabanca",

		weapon_microsmg = "Micro SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "Assault SMG",
		weapon_combatpdw = "Combat PDW",
		weapon_machinepistol = "Makine Tabancası",
		weapon_minismg = "Mini SMG",
		weapon_raycarbine = "Unholy Hellbringer",

		weapon_pumpshotgun = "Pompalı Tüfek",
		weapon_pumpshotgun_mk2 = "Pompalı Tüfek Mk II",
		weapon_sawnoffshotgun = "Kısaltılmış Pompalı Tüfek",
		weapon_assaultshotgun = "Saldırı Pompalı Tüfek",
		weapon_bullpupshotgun = "Bullpup Pompalı Tüfek",
		weapon_musket = "Muskalı Tüfek",
		weapon_heavyshotgun = "Ağır Pompalı Tüfek",
		weapon_dbshotgun = "Çift Namlulu Pompalı Tüfek",
		weapon_autoshotgun = "Süpürücü Pompalı Tüfek",
		weapon_combatshotgun = "Muharebe Pompalı Tüfek",

		weapon_assaultrifle = "Saldırı Tüfeği",
		weapon_assaultrifle_mk2 = "Saldırı Tüfeği Mk II",
		weapon_carbinerifle = "Karabin Tüfeği",
		weapon_carbinerifle_mk2 = "Karabin Tüfeği Mk II",
		weapon_advancedrifle = "Gelişmiş Tüfek",
		weapon_specialcarbine = "Özel Kılıf",
		weapon_specialcarbine_mk2 = "Özel Kılıf Mk II",
		weapon_bullpuprifle = "Bullpup Tüfek",
		weapon_bullpuprifle_mk2 = "Bullpup Tüfek Mk II",
		weapon_compactrifle = "Kompakt Tüfek",
		weapon_militaryrifle = "Askeri Tüfek",
		weapon_heavyrifle = "Ağır Tüfek",
		weapon_tacticalrifle = "Hizmet Tüfeği",

		weapon_mg = "MG",
		weapon_combatmg = "Savaş MG'si",
		weapon_combatmg_mk2 = "Savaş MG'si Mk II",
		weapon_gusenberg = "Gusenberg Toz Süpürgeci",

		weapon_sniperrifle = "Sıyırıcı Tüfek",
		weapon_heavysniper = "Ağır Sıyırıcı Tüfek",
		weapon_heavysniper_mk2 = "Ağır Sıyırıcı Tüfek Mk II",
		weapon_marksmanrifle = "Keskin Nişancı Tüfeği",
		weapon_marksmanrifle_mk2 = "Keskin Nişancı Tüfeği Mk II",
		weapon_precisionrifle = "Hassas Tüfek",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Grenatatar",
		weapon_grenadelauncher_smoke = "Dumanlı Grenatatar",
		weapon_minigun = "Mini Gun",
		weapon_firework = "Havai Fişek Atar",
		weapon_railgun = "Ray Tüfeği",
		weapon_hominglauncher = "Yakın Hedefli Füzeatar",
		weapon_compactlauncher = "Kompakt Bombaatar",
		weapon_rayminigun = "Dul Kader",
		weapon_emplauncher = "Kompakt EMP Atar",
		weapon_stinger = "Roketatar",
		weapon_railgunxm3 = "Bobinli Ray Tüfeği",

		weapon_grenade = "El Bombası",
		weapon_bzgas = "BZ Gazı",
		weapon_molotov = "Molotof Kokteyli",
		weapon_stickybomb = "Yapışkan Bomba",
		weapon_proxmine = "Yakınlık Mayını",
		weapon_snowball = "Kardan Top",
		weapon_pipebomb = "Boru Bombası",
		weapon_ball = "Beyzbol Topu",
		weapon_smokegrenade = "Duman Bombası", -- NOT: bu "Gözyaşı Gazı",
		weapon_flare = "Flare (Işık fişeği)",
		weapon_acidpackage = "Asit Paketi",

		weapon_petrolcan = "Jerry Can (Benzin kutusu)",
		gadget_parachute = "Paraşüt",
		weapon_fireextinguisher = "Yangın Söndürücüsü",
		weapon_hazardcan = "Tehlikeli Madde Jerry Canı",
		weapon_fertilizercan = "Gübre Kutusu",

		red_parachute = "Kırmızı Paraşüt",
		blue_parachute = "Mavi Paraşüt",
		black_parachute = "Siyah Paraşüt",

		weapon_dagger_description = "Uzun süredir korsan-şık görünüşü tercih ediyorsun ama bu görünümü tamamlayacak bir silahın yok mu? Bu korumalı kulp ile bir hançer alın.",
		weapon_bat_description = "Deri kaplı hafif alüminyum beyzbol sopasıyla güçlü bir vuruş yapabilirsiniz.",
		weapon_bottle_description = "Akıllıca değil ve hoş görünmüyor ancak çoğu zaman, size bıçakla saldıran adam da öyle değil. Her şey başarısız olduğunda, işi halledebilirsiniz.",
		weapon_crowbar_description = "Yüksek kaliteli, sertleştirilmiş çelikten dövülmüş ağır hizmet çekiçi ile ekstra kaldıraç için ihtiyacınız olanı alın.",
		weapon_unarmed_description = "Her şey başarısız olduğunda, çömelip elinizdekilerle çalışın.",
		weapon_flashlight_description = "Kısa menzilli, pil ile çalışan ışık kaynağı ile karanlıktan korkunuzu artırın. Künt güç travmaları için kullanışlı.",
		weapon_golfclub_description = "Lethal kısa oyun için kauçuk kaplı standart uzunlukta bir golf sopası.",
		weapon_hammer_description = "Ahşap saplı ve kıvrımlı pençesi olan sağlam ve çok amaçlı bir çekiç olan bu eski klasik, hala rakipleri eziyor.",
		weapon_hatchet_description = "Kolay kullanımı ve saklaması olan bu balta ile arkadaşlarınızı yakacak odunlara çevirebilirsiniz.",
		weapon_knuckle_description = "Altın dişleri çıkarmak veya her şeye sahip olan kupa eşine hediye olarak mükemmel.",
		weapon_knife_description = "Bu karbon çeliğinden yapılmış 7\" bıçaklı bıçak, çift taraflı ve testereli omurgası ile daha iyi bıçaklama ve saplama özellikleri sunar.",
		weapon_machete_description = "Amerika'nın Batı Afrika silah ticareti sadece vermekle ilgili değildir. Paslı bu kılıçla basit yaşamı keşfedin.",
		weapon_switchblade_description = "Cebinizden anında diğer adamın kaburgalarına kadar: katlanır bıçaklar asla modası geçmeyecek.",
		weapon_nightstick_description = "24\" polikarbon yan tutamaklı cop.",
		weapon_wrench_description = "Apokaliptik hayatta kalma uzmanlarının ve şiddet dolu babaların favorisi, aynı zamanda bir araç gereci olarak da kullanılıyor.",
		weapon_battleaxe_description = "Ortaçağ piyadeleri, modern sınır muhafızları ve müdahaleci futbol anneleri için yeterince iyi ise, senin için de yeterince iyidir.",
		weapon_poolcue_description = "Ah, özellikle diğer adamın omurgasıysa, kırılmaz bir mükemmel kırılma sesi kadar tatmin edici bir ses yoktur.",
		weapon_stone_hatchet_description = "2.5 milyon yıllık AR-GE ve hala buradayız.",
		weapon_candycane_description = "Festive bir şeker çubuğu. Biraz yapışkan.",

		weapon_pistol_description = "Standart tabanca. 12 mermi kapasiteli bir .45 kalibre çatışma tabancasıdır ve 16'ya kadar uzatılabilir.",
		weapon_pistol_mk2_description = "Denge, basitlik, hassasiyet: Hiçbir şey uzatılmış bir namlunun diğer adamın ağzında olduğundan emin değil.İç huzuru korur.",
		weapon_combatpistol_description = "Kolluk güçleri ve kişisel savunma için tasarlanmış hafif yarı otomatik tabanca. 12 mermilik bir magazin ile 16 merminin uzatılma seçeneği bulunur.",
		weapon_appistol_description = "Yüksek geçirgenlikli, tam otomatik tabanca. Şarjöründe 18 mermi tutar ve opsiyonel olarak 36 mermiye çıkartılabilir.",
		weapon_stungun_description = "Ailece çıktığınız etkinliklerde eğlenceniz için tasarlanmış şaşırtıcı bir alet!",
		weapon_pistol50_description = "Küçük bir kalibreli mermiyle büyük bir adamı asla vurma.",
		weapon_snspistol_description = "Prezervatif veya saç spreyi gibi, bu gece kulübünde cebine sığar. Bir şişe fiyatında bir kulüpte, Şampanya mantarından yarısı kadar doğru, iki kat daha ölümcül.",
		weapon_snspistol_mk2_description = "Cumartesi gecesi gerçekten özel yapmak istiyorsanız, bu silah size yardımcı olacak olan son moda çanta dolumu tabancadır.",
		weapon_heavypistol_description = "Şarjörlü, yarı otomatik tabanca dünyasının ağır siklet şampiyonu. Her zaman doğruluk ve ciddi bir ön kol antrenmanı sağlar.",
		weapon_vintagepistol_description = "Gerçekten ihtiyacınız olan şey daha tanınabilir bir silahtır. Kazıma işlemeli bu tabancayla soygunlarda kalabalıktan ayrılın.",
		weapon_flaregun_description = "S.O.S işareti vermek veya sarhoş coşku belirtmek için kullanabileceğiniz bir silah. Uyarı: Kişilere doğrudan yönlendirmek, aniden yanmaya neden olabilir. Heists'in bir parçasıdır.",
		weapon_marksmanpistol_description = "Riskten kaçınanlar için değil. Şarjörü nefes kadar kısa sürede bitireceğinizi unutmayın.",
		weapon_revolver_description = "Delirmiş bir gergedanı durduracak kadar etkili bir el silahı. Mermi biterse öldürmek için bile yeterince ağırdır.",
		weapon_revolver_mk2_description = "Kaldırabilirseniz, bir yük treniyle birini vurmanın en yakın yöntemi budur.",
		weapon_doubleaction_description = "Çünkü bazen intikam en iyi şekilde altı kez hızlıca ard arda gözlerin arasına sıkılarak alınabilir.",
		weapon_raypistol_description = "Cumhuriyetçi Uzay Korucusu özel silahı, sosyalizmle savaştan yeni çıktı: mermi yok, şarjör yok, sadece birbirinin ardına gelen acımasız enerji atışları.",
		weapon_ceramicpistol_description = "Büyükannenizin tabancası değil. Bu küçük tabanca, büyükannenizin çantasına sığacak kadar küçük ve bir metal dedektörünü tetiklemez.",
		weapon_navyrevolver_description = "Gerçek bir müze parçası. Batının nasıl kazanıldığını öğrenmek istiyorsan - yavaş yeniden yükleme hızları ve bir dolu kan dökülmesi var.",
		weapon_gadgetpistol_description = "Öldürücü bir atış. Pahalı olduğunuzdan endişelenmeyin. Titanyum nitrid kaplamayı çizmezsiniz.",
		weapon_stungun_mp_description = "Tüm aile için zaptedici eğlence!",
		weapon_pistolxm3_description = "9 mm mermi atan hafif ve kompakt bir tabanca. Yakın mesafeli çatışmalarda çok etkilidir.",

		weapon_microsmg_description = "Yaklaşık 700-900 atış hızıyla hafif tasarımını yüksek ateş hızı ile birleştirir.",
		weapon_smg_description = "Bu, iyi bir genel amaçlı makineli tüfektir. Hafif, hassas bir nişangah ve 30 mermi kapasitesine sahiptir.",
		weapon_smg_mk2_description = "Hafif ve kompakt, ölümcül bir atış oranına sahip: iyi yağlanmış bir tetik ile herhangi bir sınırlı alanı öldürücü bir katliam yerine dönüştürün.",
		weapon_assaultsmg_description = "Hafif ve kompakt yüksek kapasiteli bir alt makineli tüfek. Bir dergide 30 mermi kapasitesine sahiptir.",
		weapon_combatpdw_description = "Kişisel silahların askeri personel için uygunsuz olduğunu kim söylemişti? Kongre değil, lobici olduğumuz için teşekkürler. Dahili susturucu.",
		weapon_machinepistol_description = "Bu tam otomatik silah, çift motorlu V8 basların kalabalklıkla birlikte yaptığı snare davulu gibidir: yanından geçerken hiçbir ses doğru değildir.",
		weapon_minismg_description = "Pazarlama ekibi spec ops birimlerinin ötesine bakmaya ve düşük gelirli bölgelerdeki kısa boylulara bakmaya başladığından beri giderek popüler hale geldi.",
		weapon_raycarbine_description = "Cumhuriyetçi Uzay Askeri Özel. Eğer küçük bir yeşil adamı küçük yeşil bir doğrayıcıya dönüştürmek istiyorsanız, bu yalnızca Amerikan yoludur.",

		weapon_pumpshotgun_description = "Kısa menzilli savaş için ideal standart av tüfeği. Yüksek projeksiyonlu yayılım, uzun menzildeki düşük hassasiyetini telafi eder.",
		weapon_pumpshotgun_mk2_description = "Pompalama aksiyonundan daha fazla şeyi sadece bir şey pompalar: dikkatli olun, geri tepmesi atış kadar ölümcül olabilir.",
		weapon_sawnoffshotgun_description = "Bu tek namlulu, kesilmiş av tüfeği, düşük menzil ve cephane kapasitesini yakın dövüşte yıkıcı verimlilikle telafi eder.",
		weapon_assaultshotgun_description = "Tam otomatik, 8 mermili yüksek atış hızına sahip bir av tüfeği.",
		weapon_bullpupshotgun_description = "Yavaş, pompalı atış hızını menzili ve yayılımıyla telafi eden bir av tüfeği. Projektil yolu boyunca her şeyi imha eder.",
		weapon_musket_description = "Sadece musketler ve bir üstünlük kompleksiyle silahlandılar ve İngilizler dünyanın yarısını ele geçirdi. Bu silahla imparatorluk inşa edildi.",
		weapon_heavyshotgun_description = "Odada kötü bir kargaşa çıkarmanız kesinlikle gerektiğinde elinize alabileceğiniz silah. Sadece kolay temizlenebilir yüzeylere yakın kullanılması önerilir.",
		weapon_dbshotgun_description = "Bir şeyi yap, iyi yap. İlk atışınız diğer kişiyi toz haline getirdiğinde yüksek ateş hızına neden ihtiyaç duyarsınız?",
		weapon_autoshotgun_description = "Pantolonunuza kaç etkili ayaklanma kontrol aracı sıkıştırabilirsiniz? Tamam, ikisi. Ama bu da diğeri.",
		weapon_combatshotgun_description = "LSFD alarm çanlarını çalan bir ateş hızına sahip tek yarı-otomatik av tüfeği var, ve şu anda ona bakıyorsunuz.",

		weapon_assaultrifle_description = "Bu standart saldırı tüfeği büyük kapasiteli bir şarjör ve uzun menzilli hassasiyet sunar.",
		weapon_assaultrifle_mk2_description = "Tüm zamanların klasik silahının kesin revizyonu: küçük bir işlem yapmanız yeterli, görünüşler her şeyi öldürebilir.",
		weapon_carbinerifle_description = "Uzun mesafe hassasiyetini yüksek kapasiteli bir dergiyle birleştirerek, Carbine Rifle vuruş yapmak için güvenilir olabilir.",
		weapon_carbinerifle_mk2_description = "Bu benzersiz, el yapımı bir silah: elinizle yerleştirseler daha çok sevgi ve özenle bir doğanın yağmuruna dönüştüremezsiniz.",
		weapon_advancedrifle_description = "Tüm saldırı tüfeklerinin en hafif ve kompakt olanı, doğruluktan veya ateş oranından ödün vermeden.",
		weapon_specialcarbine_description = "Hassasiyet, manevra kabiliyeti, ateş gücü ve geri tepmesinin azlığını birleştirerek, bu, herhangi bir savaş durumu için son derece çok yönlü bir saldırı tüfeğidir.",
		weapon_specialcarbine_mk2_description = "Her şeyi yapabilen yükseltme aldı: ustaya boyun eğin.",
		weapon_bullpuprifle_description = "Amerika'da ün kazanmış son Çin ithalatı, bu tüfek dengeli tutuşuyla bilinir. Hafif ve otomatik ateşte çok kontrol edilebilir.",
		weapon_bullpuprifle_mk2_description = "O kadar hassas, o kadar zarif ki, bu bir mermi yağmuru kadar değil, bir senfoni gibi.",
		weapon_compactrifle_description = "Boyutunun yarısı, gücünün tamamı, tepkisi iki katı: \"Bir şeyi telafi etmeye çalışıyorum\" demenin daha tehlikeli bir yolu yok.",
		weapon_militaryrifle_description = "Bu son derece güçlü saldırı tüfeği yüksek nitelikli, istisnai derecede yetenekli askerler için tasarlandı. Evet, satın alabilirsiniz.",
		weapon_heavyrifle_description = "Daha ağırolduğu için daha iyi mi? Evet, hadi öyle diyelim.",
		weapon_tacticalrifle_description = "Yasal yaptırım gücü olanların, askeri personelin ve yasal yaptırım gücü olanlarla ya da askeri personel ile ölüm kalım savaşı yapan herkesin bu sezonun olmazsa olmaz donanımı.",

		weapon_mg_description = "Sağlam tasarımı ile güvenilir performansı birleştiren genel amaçlı makineli tüfek. Uzun menzilli penetrasyon gücü. Büyük gruplara karşı çok etkilidir.",
		weapon_combatmg_description = "Mükemmel manevra kabiliyetini yüksek atış hızıyla birleştiren hafif ve kompakt bir makineli tüfek. Yıkıcı etkiye sahiptir.",
		weapon_combatmg_mk2_description = "İyinin çokluğu eksik olmaz: sonuçta ilk atış önemliyse, sonraki yüz atış ya da daha fazlası iki kat etkili olmalıdır.",
		weapon_gusenberg_description = "Yasak döneme özgü bir silahla tarzınızı tamamlayın. Roosevelt'in penceresinden sarkarak ya da pin-stripe bir takım elbiseyle kullanıldığında harika görünür.",

		weapon_sniperrifle_description = "Standart keskin nişancı tüfeği. Uzun menzillerde kullanılması gereken hassasiyet isteyen durumlar için uygun bir silahtır. Sınırlamaları arasında yavaş şarjör değiştirme hızı ve çok düşük bir ateşleme hızı vardır.",
		weapon_heavysniper_description = "Ağır hasar için zırh delici mermilerle donatılmıştır. Standart olarak lazer dürbünlü olarak gelir.",
		weapon_heavysniper_mk2_description = "Uzaktan, ancak her zaman samimi: uzak mesafeli ilişkiniz için güvenli bir temel arıyorsanız, işte bu silah burada.",
		weapon_marksmanrifle_description = "Yakın veya ürkütücü uzaklıklarda olsanız da, bu silah işi halledecektir. Ara çoklu bir araçtır.",
		weapon_marksmanrifle_mk2_description = "Askeri çevrelerde \"Dislocator\" olarak bilinen bu mod seti, hedefi ve omzunuzu sırayla yok edecektir.",
		weapon_precisionrifle_description = "Mükemmeliyetçiler için bir tüfek. Neden doğrudan gözlerinin arasına yerleşsin ki, sensörimotor korteks boyunca doğrudan ilerlediğinde olsun?",

		weapon_rpg_description = "Patlayıcı savaş başlıkları ateşleyen portatif, omzuna takılabilen bir anti-tan mermisi. Araçları veya büyük grupları etkili bir şekilde yok etmek için idealdir.",
		weapon_grenadelauncher_description = "Yarı otomatik işlevselliğe sahip, hafif ve kompakt bir bombaatar. 10 mermi kapasitelidir.",
		weapon_grenadelauncher_smoke_description = "\"Duman bombası senin, duman bombası senin, hepinize duman bombası!\" - Oprah",
		weapon_minigun_description = "6 namlulu, Gatling tarzı dönen namlulara sahip yıkıcı bir makineli tüfek. Çok yüksek bir atış hızına sahiptir (dakikada 2000 ila 6000 mermi).",
		weapon_firework_description = "İzleyicilerden coşkulu tepkiler alacağı kesin olan, havai fişek fırlatıcısı ile gösterişlilik geri döndü.",
		weapon_railgun_description = "Bilmeniz gereken tek şey - mıknatıslar, ve hedef gösterilen şeylere korkunç şeyler yapar.",
		weapon_hominglauncher_description = "Infrared ve güdümlü ateş ve unut füzeatarı. Hareketli hedefleriniz için gereklidir.",
		weapon_compactlauncher_description = "Odak grupları, düzenli modeli kullandıklarında çok hassas olduğunu ve gaz kavrama eliyle kullanmakta zorlandıklarını belirttiler. Kolay bir çözüm.",
		weapon_rayminigun_description = "Cumhuriyetçi Uzay Ranger Özel. HADİ, BİR ŞEYLERİ TELAFİ ETMİŞ KÖTÜ ŞEYLER SÖYLE. CESARET EDİN.",
		weapon_emplauncher_description = "Onları uyutmak için insansız hava araçlarına ve helikopterlere ateş edin.",
		weapon_stinger_description = "Düşman uçaklarını düşürmek için omuzdan fırlatılan yüzey-hava füzeatarı.",
		weapon_railgunxm3_description = "Bilmeniz gereken tek şey - mıknatıslar ve hedefi gösterilen şeylere korkunç şeyler yapıyor.",

		weapon_grenade_description = "Standart parçalama el bombası. Pimi çek, at, sonra sığınacak yer bul. Yoğun saldırganları ortadan kaldırmak için ideal.",
		weapon_bzgas_description = "Sevmediğiniz kişileri doğru muamele yapmak için kullanın.",
		weapon_molotov_description = "Hamur gibi ancak oldukça etkili bir ateşli silah. Bu kokteylle mutlu saat yok.",
		weapon_stickybomb_description = "Uzaktan kumandalı bir patlayıcı yüklü plastik bir şarj. Atılabilir ve sonra patlatılabilir veya bir araca bağlanabilir ve sonra patlatılabilir.",
		weapon_proxmine_description = "Arkadaşlarına bu hareket sensörlü yer mayınları hediye bırak. Aktivasyondan kısa bir süre sonra tetiklenir.",
		weapon_snowball_description = "Arkadaş grubunuza için bir kar topu savaşı için hazır olun, ancak bu buzlu küçük şeylerin ciddi hasar verebileceğinden önceden uyarı yapalım.",
		weapon_pipebomb_description = "Unutmayın, bir mağazadan satın aldığınız ve birinci dünya ülkesinde kullandığınızda IED olarak sayılmaz.",
		weapon_ball_description = "Babe Ruth tarafından imzalandı, kesinlikle sahte değil.",
		weapon_smokegrenade_description = "Tear gas grenade, özellikle birden fazla saldırganı etkisiz hale getirmede etkilidir. Sürekli maruz kalmak ölümcül olabilir.",
		weapon_flare_description = "Hava indirmiti atmak için atın.",
		weapon_acidpackage_description = "Bir asit paketi. Karışıklık yapmak için kullanın.",

		weapon_petrolcan_description = "Yakıt izi bırakan bir benzin bidonu.<br><br>Kalan benzin miktarı: ${petrolAmount}%.",
		gadget_parachute_description = "Bu naylon spor paraşütü, yön ve hız üzerinde daha fazla kontrol sağlamak için ram havaşılı paraşüt tasarımına sahiptir.",
		weapon_fireextinguisher_description = "Yangın söndürücü ya da 'Duman makinesi'.",
		weapon_hazardcan_description = "Bir benzin kovası gibi, ama kullanışsız.",
		weapon_fertilizercan_description = "Köpek pisliği dolu bir kova, tarlalarınız için daha iyisi yoktur.",

		red_parachute_description = "Normal paraşüt gibi sadece kırmızı renkte.",
		blue_parachute_description = "Normal paraşüt gibi sadece mavi renkte.",
		black_parachute_description = "Normal paraşütle aynı sadece siyah renkte.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Avcılık Tüfeği",
		weapon_addon_huntingrifle_description = "Avcılık için tercih edebileceğiniz tüfek.",

		weapon_addon_vfcombatpistol = "VF Savaş Tabancası",
		weapon_addon_vfcombatpistol_description = "Gülümseyin ve flaşı bekleyin.",

		weapon_addon_dp9 = "D&P 9 Tabanca",
		weapon_addon_dp9_description = "Dub'ı yakalamak için 12 şansınız var.",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "Orijinal kablosuz ev koruma sistemi.",

		weapon_addon_gardonepistol = "Gardone Tabanca",
		weapon_addon_gardonepistol_description = "Şüphedeysen, şarjörü boşalt.",

		weapon_addon_endurancepistol = "Dayanıklılık Tabancası",
		weapon_addon_endurancepistol_description = "Tabancaların Viagrası",

		weapon_addon_sentinelshotgun = "Sentinel Av Tüfeği",
		weapon_addon_sentinelshotgun_description = "Tek yönlü Cinayet Dağıtıcısı.",

		weapon_addon_sentinelbbshotgun = "Beanbag Av Tüfeği",
		weapon_addon_sentinelbbshotgun_description = "Eğlenceli torbalar.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "Bobinli Şok Tabancası",
		weapon_addon_stungun_description = "Herkesin keyif alabileceği bir zapt aracı!",

		weapon_addon_mp9 = "B&T MP9",
		weapon_addon_mp9_description = "Küçük ve hızlı, tutan kişi gibi...",

		weapon_addon_rc4 = "Remington R4-C",
		weapon_addon_rc4_description = "Kavgacı ve hızlı, ekibinizde sahip olmak için mükemmel bir ortak. Kırmızı saçlı tutan kişi olmadığı sürece.",

		weapon_addon_pp19 = "PP-19 Vityaz",
		weapon_addon_pp19_description = "Rus mükemmelliğinin zirvesi, her türlü \"Baskın\" için mükemmel.",

		weapon_addon_m9a3 = "Beretta M9A3",
		weapon_addon_m9a3_description = "Kirli işlerinizi ucuz yoldan halletmeniz için ihtiyacınız olan her şey.",

		weapon_addon_357mag = "357 Magnum",
		weapon_addon_357mag_description = "Trafik durdurmalardan zombilere kadar, bu silah sheriflerin en iyi arkadaşı.",

		weapon_addon_m870 = "Remington M870",
		weapon_addon_m870_description = "Mükemmel bir spor ve av tüfeği, ancak Danny'leri vurmak gerçekten bir spor mu... değil mi?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "Var olmuş en mükemmel makineli tüfek, sadece eşofman takımını unutmayın.",

		weapon_addon_tacknife = "Ultimate Taktik Bıçak",
		weapon_addon_tacknife_description = "Sonunda seviye 100'e ulaştınız. Albay gurur duyardı.",

		weapon_addon_reaper = "Grimreaper",
		weapon_addon_reaper_description = "Machete ama daha şık.",

		weapon_addon_berserker = "Berserker",
		weapon_addon_berserker_description = "Harika bir balta.",

		weapon_addon_katana = "Katana",
		weapon_addon_katana_description = "Ninja, evet.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "Gelecek artık burada, yaşlı adam; sadece daha küçük bir kalibrede...",

		weapon_addon_g36c = "Heckler & Koch G36C",
		weapon_addon_g36c_description = "Polis ve askeri özel kuvvetler tarafından özel taktik uygulamaları için geliştirilen 5.56 mm NATO mermisinin nihai balistikleriyle bir submachine tüfeğinin boyutlarına sahiptir.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant harika.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "оставайся привязанным или хлопай в ладоши.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "Artık Londra'da değiliz dostum.",

		weapon_addon_mk18 = "MK18",
		weapon_addon_mk18_description = "\"Hazırlıklı ol ya da başın belaya girer\" - George Washington (Büyük ihtimalle)",

		weapon_addon_glock = "Glock 17",
		weapon_addon_glock_description = "Dünyada en popüler tek atımlık tabanca.",

		weapon_addon_colt = "Colt 1851 Navy",
		weapon_addon_colt_description = "Tüm revolverlere örnek olan, başlangıcı sağlayan orijinal revolver.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "H&K 433, Heckler & Koch tarafından 2009 yılında geliştirilen bir Alman saldırı tüfeğidir.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "Mükemmel kişi için mükemmel silah, sadece eşofmanını unutma.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "H&K 416, ateşli silahların Ferrari'si - zarif, güçlü ve başı döndürecek kadar çarpıcı. Tetik parmağınız için bir kişisel antrenör gibi, düşmanlarınızın kıskanacağı sonuçlar sunar. Yeni en iyi arkadaşınızla (Best Firearm Forever) tanışın!"
	},

	items = {
		move_to_repair = "Araç tamir etmek için buraya gelin.",
		repairing_vehicle = "Araç Tamir Ediliyor",
		using_first_aid_kit = "Ilk Yardim Cantasi Kullanılıyor",
		using_bandages = "Sargı Kullanılıyor",
		using_ifak = "IFAK Kullanılıyor",
		move_to_wash = "Aracı yıkamak için buraya gelin",
		vehicle_too_clean = "Araba çok temiz, yıkanamaz.",
		move_to_put_fake_plate = "Sahte plakayı takmak için buraya gelin.",
		unable_to_repair = "Aracın içinde oyuncular olduğu sürece tamir edemezsiniz.",
		failed_lockpicking = "Kilit açma başarısız oldu",
		lockpicking_succeeded = "Kilit açma başarılı oldu.",
		hotwiring_vehicle = "Aracı Saldırarak Çalıştırma",
		lockpick_broke = "Çilingir Kırıldı",
		failed_hotwire = "Aracı Saldırarak Çalıştırma Başarısız",
		unpacking_green_rolls = "Yeşiil Ruloları Açma",
		you_do_not_have_enough_rolling_paper = "Yeterli kadar sigara kâğıdın yok.",
		rolling_joint = "Sigara Sarma",
		rolling_joints = "Sigaraları Sarma",
		changing_license_plate = "Plaka Değiştirme",
		equipping_parachute = "${itemName} Ekipmanını Takıyor",
		lockpicking_vehicle = "Araçları Çilingirlemek",
		illegal_weather_name = "Yasadışı Hava Adı İle Hava Büyüsü Yapılması",
		equipping_body_armor = "Vücut Zırhı Giyiliyor",
		illegal_burger_shot_delivery_item_id = "Yasal olmayan bir ürün kimliği ile burger shot teslimat ürünü kullanmaya çalışılıyor.",
		illegal_lighter_item_id = "Yasal olmayan bir ürün kimliği ile çakmak kullanılmaya çalışılıyor.",
		unable_to_use_lighter_in_vehicle = "Araçta çakmak kullanamazsınız.",
		not_possible_in_a_vehicle = "Bu eylem araçta mümkün değildir.",
		just_used_bandage = "Yeni bir ilk yardım kiti kullanmadan önce biraz bekle.",
		drank_gasoline_death = "Benzin Zehirlenmesi",
		drank_bleach_death = "Bleach Zehirlenmesi",

		failed_burger_shot_delivery = "Burger Shot yemeği açılamadı.",
		failed_bean_machine_delivery = "Bean Machine teslimatı açılamadı.",

		burger_shot_delivery_empty = "O burgershot yemeği boş gibi görünüyor.",
		bean_machine_delivery_empty = "O bean machine teslimatı boş gibi görünüyor.",

		logs_used_weather_spell_title = "Hava Büyüsü Kullanıldı",
		logs_used_weather_spell_details = "${consoleName}, `${itemName}` hava büyüsünü kullandı.",

		you_have_used_jail_card = "Bir 'hapisten çıkma kartı' kullandınız!",
		you_are_not_in_jail = "Sen hapiste değilsin.",

		stored_map_location = "Harita konumu başarıyla güncellendi.",
		failed_location_map = "Harita konumu güncellenemedi.",
		updated_waypoint = "Haritada konum için yol noktası ayarlandı.",

		cleared_map = "Depolanan harita konumu temizlendi.",
		failed_clear_map = "Depolanan harita konumu temizlenemedi.",
		clear_map_invalid_slot = "Geçersiz envanter yuvası."
	},

	jackpot = {
		press_to_deposit = "Online jackpot'a öğeleri yatırmak için ~INPUT_REPLAY_SHOWHOTKEY~ düğmesine basın.",
		can_only_withdraw_at_casino = "Sadece casinoda para çekebilirsiniz.",

		jackpot = "Piyango",
		inventory = "Envanter",
		history = "Geçmiş",
		no_items_in_inventory = "Sanal envanterinde hiçbir öğe görünmüyor.",
		you_can_deposit_at_the_casino = "Öğelerini casinoya yatırabilirsin.",
		close = "Kapat",
		bet = "Bahis",
		your_chance = "Şansın: ${chance}%",
		character_bet = "${characterName} ${itemAmount} adet ögeyi $${itemWorth} değerinde bahis yaptı",
		pot = "Kazanç: $${jackpotWorth}",
		items = "Öğeler: ${jackpotItemAmount}",
		withdraw = "Para Çek (${withdrawAmount})",
		quick_sell = "Hızlı Satış ($${quickSellWorth})",
		inventory_value = "Değer: $${inventoryWorth}",
		inventory_total_items = "Toplam Öğe: ${inventoryTotalItems}",
		daily_fee_information = "Her gün saat 6'da UTC'de, değeri toplam envanter değerinizin >=% 5 olan öğeler, bir 'depolama ücreti' olarak kaldırılacaktır.",

		take_fee_no_permissions = "Oyuncu uygun izin olmadan jackpot ücretlerini almaya çalıştı.",
		took_jackpot_fees = "Jackpot ücretleri alındı. ${inventories} envanterlerinden $${removedTotalWorth} değerinde ${removedTotalItems} öğe çıkarıldı."
	},

	jail = {
		press_to_leave_jail = "Hapisten çıkmak için ~INPUT_CONTEXT~ tuşuna basın.",

		menu_title = "Cezaevi Menüsü",
		check_remaining_time = "Kalan süreyi kontrol et",
		leave_city = "Şehirden ayrıl",
		leave_jail = "Cezaevinden ayrıl",
		close_menu = "Menüyü kapat",

		sentence_reduced = "Cezan ${amount} ay azaltıldı, ${remaining} ayın kaldı.",
		sentence_over = "Cezan bitti.",
		remaining_time = "Kalan süre: ${remaining} ay.",
		jailed = "Seni ${amount} ay hapis cezasına mahkum ettik.",

		mission_help_1 = "Zemin temizlemek için ~INPUT_CONTEXT~ tuşuna basın.",
		mission_help_2 = "Bir şeyler yemek için ~INPUT_CONTEXT~ tuşuna basın.",
		mission_help_3 = "Çalışmak için ~INPUT_CONTEXT~ tuşuna basın.",

		mission_1 = "Zemini temizleme.",
		mission_2 = "Sandviç yeme.",
		mission_3 = "Spor yapma.",

		mission_blip = "Hapishane Görevi"
	},

	kiosks = {
		read_catalog = "Kataloğu okumak için ~g~${InteractionKey} ~w~tuşuna basın"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] Tasma kullan",
		putting_leash_on = "Tasma takılıyor",
		press_to_take_leash_off = "[${InteractionKey}] Tasmayı çıkar",
		takeing_leash_off = "Tasma çıkartılıyor."
	},

	letterboxes = {
		press_to_access = "${SeatEjectKey} ~ tuşuna basarak ${type} erişebilirsiniz",
		letterbox_broken = "${type} çalışmıyor.",

		type_letterbox = "posta kutusu",
		type_newsdisp = "haberler dağıtıcısı",
		type_postbox = "mektup kutusu"
	},

	locate = {
		invalid_filter_value = "Geçersiz filtre değeri.",
		locate_failed = "`${filter}` ile eşleşen varlık bulunamadı.",
		something_went_wrong = "Varlık bulunamadı.",
		locate_success = "Filtrenizi karşılayan varlık başarıyla bulundu: (${x}, ${y}, ${z}) (instances = ${instance}).",

		locate_entity_no_permissions = "Oyuncu uygun izin olmadan bir varlık bulmayı denedi.",

		locate_entity_logs_title = "Varlık Konumu Bulundu",
		locate_entity_logs_details = "${consoleName}, '${filterType}' türünde ve değeri '${filterValue}' olan bir varlık bulmayı denedi."
	},

	login = {
		exit_city = "Şehirden çık.",
		press_to_exit_city = "Şehirden çıkmak için ${InteractionKey} tuşuna basın.",
		bad_words_in_character_creation = "${badWords}\" adı veya hikayede olabilecek kötü bir kelime ile karakter oluşturma girişiminde bulunuldu.",
		disallowed_words_in_character_name = "\"${characterName}\" adı ile karakter oluşturma girişiminde bulunuldu, bu mümkün kötü bir kelime içeriyor olabilir.",
		disallowed_birthday_ban = "\"${birthday}\" tarihi ile karakter oluşturulamadı, bu mümkün kötü bir tarih olabilir.",

		welcome_to = "Hoş geldiniz",
		press = "Basın",
		enter = "GİRİŞ",
		to_join = "katılmak için",
		changelogs = "Değişiklik Kayıtları",
		fetching_character_data = "Karakter Verileri Alınıyor...",
		yes = "Evet",
		no = "Hayır",
		exit_game = "Oyundan Çık",
		are_you_sure_you_want_to_exit = "Oyundan çıkmak istediğiniz emin misiniz?",
		exiting_game = "Oyundan çıkılıyor...",
		delete_character = "Sil",
		select_character = "Seç",
		new_character = "Yeni Karakter",
		empty_slot = "Boş Yer",
		male = "Erkek",
		female = "Kadın",
		name = "Adı",
		dob = "Doğum Tarihi",
		born = "Doğum Tarihi: ${dob}",
		gender = "Cinsiyet",
		cash = "Nakit",
		bank = "Banka",
		story = "Hikaye",
		loading_character = "Karakter Yükleniyor...",
		deleting_character = "Karakter Siliniyor...",
		create_character = "Karakter Oluştur",
		first_name = "İsim",
		last_name = "Soyisim",
		date_of_birth = "Doğum Tarihi",
		character_backstory = "Karakter Öyküsü",
		cancel = "İptal",
		complete = "Tamamla",
		creating_character = "Karakter Oluşturuluyor...",
		are_you_sure_you_want_to_delete = "Bu karakteri silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.",
		stop_download = "İndirmeyi Durdur",
		start_download = "İndirmeyi Başlat",
		slow_download = "Yavaş İndirme",
		regular_download = "Normal İndirme",
		back = "Geri",
		copy_license = "Lisans Kimliği",
		copy_license_success = "Kopyalandı!",
		cache_assets = "Varlıkları Önbelleğe Al",
		download_assets = "Sunucunun çoğu varlığını indirip önbelleğe almak istiyor musunuz? Bunu yapmanın birkaç sonucu olabilir:",
		cache_assets_less_lag = "Oynanış sırasında daha az gecikme artışı, düşük kaliteli donanım veya yavaş bağlantı durumunda daha az kesinti yaşama olasılığı.",
		cache_assets_crashes = "Bu işlem sırasında oyununuz çökebilir. Bu durumda, 'yavaş indirme' seçeneğini kullanın.",
		cache_assets_restart = "Tamamlandığında, bu oturumun geri kalanı için lag'a neden olabileceğinden oyununuzu yeniden başlatmanızı öneririz.",
		cache_assets_disk = "Biraz disk depolama alanı kaplayacak, bu yüzden kullanılabilir boş alanınızın olduğundan emin olun. Güncellemeden sonra eski önbelleği temizlemek de yer açmak için faydalı olabilir.",
		vehicles = "Araçlar",
		objects = "Nesneler",
		peds = "NPC'ler",
		clothing = "Kıyafetler",
		main_menu = "Ana Menü",
		gta_settings = "GTA Ayarları",
		discord = "Discord",
		framework = "Framework",
		rules = "Sunucu Kuralları",
		notice = "Duyuru",
		language = "Dil",
		support_the_server = "Sunucuya Destek Ol",
		battle_royale = "Savaş Royale",
		arena = "Arena",
		queue = "Sıra",
		queue_position_with_priority = "🐌 ${queuePriorityName} önceliğiyle ${queuePosition}/${queueTotal} kişi sırasındasın. 🕐${queueTime}",
		queue_position_without_priority = "🐌 ${queuePosition}/${queueTotal} kişi sırasındasın. 🕐${queueTime}",
		you_are_through = "Sıran bitti!",
		join_server = "Sunucuya Katıl",
		tired_of_queueing = "Sırada beklemekten yoruldun mu? Sıra önceliği için bize destek olun!",
		joining_battle_royale = "Battle Royale'a katılıyor...",
		joining_arena = "Arena'ya katılıyor...",
		refresh = "Yenile",
		refreshing = "Yenileniyor...",

		missing_character_creation_data = "Karakter oluşturma verileri eksik.",
		invalid_first_name = "Geçersiz veya eksik ad (2 ila 100 karakter).",
		invalid_last_name = "Geçersiz veya eksik soyadı (2 ila 100 karakter).",
		invalid_date_of_birth = "Geçersiz veya eksik doğum tarihi.",
		invalid_backstory = "Geçersiz veya eksik arkayüz (1 ila 5.000 karakter).",

		bad_words = "Karakter adınızda veya arkayüzünüzde bazı kötü kelimeler var.",
		disallowed_name = "Karakter adınızda bazı yasaklı kelimeler var.",
		disallowed_birthday = "Doğum tarihiniz izin verilmiyor.",
		numbers_not_allowed = "Karakter adında sayılar izin verilmiyor.",
		something_went_wrong = "Karakter oluşturulurken bir şeyler yanlış gitti.",
		character_slot_occupied = "Bu karakter yuvası hali hazırda dolu.",
		name_already_taken = "Bu isim zaten alınmış.",
		illegal_character_slot = "Bu yuvada karakter oluşturamazsınız.",
		character_already_loaded = "Zaten bir karakter yüklediniz.",

		new_citizen = "Yeni Vatandaş",
		los_santos_police_dept = "LOS SANTOS POLİS DEPARTMANI",

		welcome_msg_title = "${communityName}'a Hoş Geldiniz!",
		welcome_msg = "Başlamak için size bazı öğeler verildi. Öğeleri 1-5 tuşları kullanarak sıcak çubuğunuzda kullanabilirsiniz.\n\n*Broşürünüzü okumak için 1 tuşuna basın.*",

		press_to_go_back_to_menu = "Menüye dönmek için ~g~${InteractionKey}~w~ tuşuna basın.",
		go_back_to_menu = "Menüye geri dön.",

		developer = "Geliştirici",
		super_admin = "Süper Yönetici",
		staff = "Personel",
		reconnect = "Yeniden bağlan",
		christmas = "Noel",
		casino = "Kumarhane",
		random = "Rastgele",
		beginner = "Acemi",
		custom = "Özel",

		appreciated_tier = "Takdir Edilen Seviye",
		respected_tier = "Saygın Seviye",
		heroic_tier = "Kahramanca Seviye",
		legendary_tier = "Efsanevi Seviye",
		godlike_tier = "Tanrısal Seviye"
	},

	loot = {
		press_to_pick_up = "${itemLabel}'ı toplamak için ~INPUT_CONTEXT~ tuşuna basın."
	},

	lottery = {
		lottery_announcement = "Lotarya Duyurusu",
		lottery_about_to_roll = "Bugünkü lotaryada 5 dakika içinde bir kazanan seçilecek. Toplam ödül $${totalPot} ve siz $${betAmount} yatırdınız. Kazanma şansınız ${odds} %.",
		current_lottery_pot = "Toplam kazanç havuzu şu an ${totalPot} dolar ve siz ${betAmount} dolar yatırdınız. Kazanma şansınız ${odds}%",
		drew_a_lottery_winner = "Şans oyununun kazananı belirlendi.",
		roll_lottery_no_permission = "Oyuncu şans oyununu oynamaya izni olmadığı halde denedi.",
		winner_has_been_picked = "${fullName} ${odds}% şansıyla ${betAmount} dolar bahis yaptığı şans oyununu kazandı. Toplam kazanç havuzu ${totalPot} dolar.",
		claimed_lottery_winnings = "Kazancınızı topladınız.",
		no_lottery_winnings = "Kazanılmamış herhangi bir piyango ödülünüz yok.",
		internal_server_error = "Bir iç sunucu hatası oluştu.",
		use_disabled_animal = "Piyango olarak bir hayvan karakteri kullanamazsınız.",

		lottery_log_title = "Piyango Kazandı",
		lottery_log_description = "${fullName} (#${characterId}) toplam $${totalPot} kazançlı piyango havuzunu kazandı. ${betAmount}$ bahis koydu."
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "Şanslı Çarkı çevirmek için basılı tutun: ~INPUT_CONTEXT~. Ücreti $${cost} dir.",
		hold_to_spin_lucky_wheel_free_one_left = "Şanslı Çarkı çevirmek için basılı tutun: ~INPUT_CONTEXT~. Bugün 1 ücretsiz çevirme hakkınız kaldı.",
		hold_to_spin_lucky_wheel_free_multiple_left = "Şanslı Çarkı çevirmek için basılı tutun: ~INPUT_CONTEXT~. Bugün ${spins} adet ücretsiz çevirme hakkınız kaldı.",
		continue_holding_to_spin_lucky_wheel = "Şanslı Çarkı çevirmeye devam etmek için ~INPUT_CONTEXT~ tuşuna basılı tutun.",
		unable_to_spin_lucky_wheel = "Bugün izin verilen kadar Lucky Wheel'i zaten çevirdiniz. Bir sonraki spin ${time} sonra müsait olacaktır.",
		not_enough_balance_to_spin = "Çarkı çevirmek için yeterli paranız yok. Maliyeti $${cost}.",
		lucky_wheel_is_occupied = "Lucky Wheel şu anda meşgul. Lütfen bekleyin.",

		logs_lucky_wheel_reward_title = "Lucky Wheel Ödülü",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} çarkı döndürdü ve bir araç kazandı.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} '${modelName}' model isimli bir araç başarıyla verildi.",
		logs_lucky_wheel_reward_money_details = "${consoleName} çarkı döndürdü ve $${amount} kazandı.",
		logs_lucky_wheel_reward_chips_details = "${consoleName} çarkı çevirdi ve $${amount} değerinde çip kazandı.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} çarkı döndürdü ve '${itemName}' isimli mücevher kazandı.",
		logs_lucky_wheel_reward_item_details = "${consoleName} çarkı döndürdü ve '${itemName}' isimli bir eşya kazandı.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} çarkı döndürdü ve bir hafta kuyruk önceliği kazandı."
	},

	magazines = {
		issue_id = "Sorun #${issueId}",
		releases_updated = "Yayınlar güncellendi.",
		no_release_changes = "Yayın değişiklikleri yoktu.",
		refresh_magazines_no_permissions = "Oyuncu uygun izinler olmadan dergileri yenilemeye çalıştı."
	},

	mdt = {
		mdt_title = "Mobil Veri Terminali",
		loading_reports = "Raporlar Yükleniyor...",
		failed_report_load = "Raporlar yüklenemedi.",
		no_reports = "Rapor yok.",
		loading = "Yükleniyor...",

		title_placeholder = "Başlık",
		body_placeholder = "Şikayetim..."
	},

	mechanics = {
		move_here_check = "Güncelleme kontrolü için buraya gelin",
		checking_upgrades = "Araç yükseltmeleri kontrol ediliyor",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} ve ${turbo}.",

		has_no_turbo = "turbo yükseltmesi yok",
		has_turbo = "turbo yükseltmesi var",

		armor_0 = "Zırh yok",
		armor_1 = "Zırh Yükseltmesi %20",
		armor_2 = "Zırh Yükseltmesi %40",
		armor_3 = "Zırh Yükseltmesi %60",
		armor_4 = "Zırh Yükseltmesi %80",
		armor_5 = "Zırh Yükseltmesi %100",

		brakes_0 = "Stok Frenler",
		brakes_1 = "Sokak Frenleri",
		brakes_2 = "Spor Frenleri",
		brakes_3 = "Yarış Frenleri",

		transmission_0 = "Stok Şanzıman",
		transmission_1 = "Sokak Şanzımanı",
		transmission_2 = "Spor Şanzıman",
		transmission_3 = "Yarış Şanzımanı",

		engine_0 = "Stok Motor",
		engine_1 = "Motor EMS Seviye 2",
		engine_2 = "Motor EMS Seviye 3",
		engine_3 = "Motor EMS Seviye 4",
		engine_4 = "Motor EMS Seviye 5",

		no_nearby_vehicle = "Yakında araç yok.",
		already_checking_upgrades = "Zaten bir aracın ekipmanlarını kontrol ediyorsunuz.",
		engine_is_running = "Araç motoru çalışıyor."
	},

	meth = {
		press_to_sell_meth = "Met satmak için ~INPUT_CONTEXT~ tuşuna basınız.",
		local_not_interested = "Yerli şu anda ilgilenmiyor gibi görünüyor.",
		selling_meth = "Met satılıyor."
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] Taşı del, [${SeatEjectKey}] Taşı tara",
		scan_stone = "[${SeatEjectKey}] Taşı tara",
		drill_stone = "[${InteractionKey}] Taşı del",
		scanning_stone = "Tarama",
		drilling = "Delme",
		failed_drill_stone = "Taşı delme başarısız oldu.",
		drill_no_drops = "Bu taştan hiçbir mücevher bulamadınız.",
		drill_drops = "Bu kayada bazı mücevherler buldunuz.",
		used_drill = "Matkap kırıldı.",
		still_shook = "Hala patlama sarsıntısı yaşıyorsunuz ve bu kayada hiçbir mücevher bulamadınız.",

		recharging_scanner = "Tarayıcı şarj oluyor ${percentage}%",
		scanning = "Taranıyor ${percentage}%",

		refine_gemstones = "[${InteractionKey}] Silmek için Gem Taşları",
		refinery = "Rafineri Masası",
		exit_refinery = "Rafineriden Çık",
		no_gemstones = "Ham mücevheriniz yok.",
		refining = "1x ${gemstone} işleniyor",
		refine_success = "1x ${gemstone} işlendi.",
		failed_refine = "Madeni taşları rafine etme başarısız oldu.",

		craft_rings = "[${InteractionKey}] Yüzüklerin İşlenmesi",
		no_crafting_items = "Burada bir şeyler üretmek için yeterli eşyanız yok.",
		crafting = "1 adet ${item} üretiliyor",
		crafting_table = "Üretim Masası",
		crafting_success = "1 adet ${gemstone} üretilmiştir.",
		failed_crafting = "Üretim başarısız oldu.",
		exit_crafting = "Üretim Masasından Çık",

		engrave_ring = "[${InteractionKey}] Yüzükleri Oyma",
		no_engrave_items = "Oy vermek için hiç yüzüğünüz yok.",
		exit_engraving = "Oyma Masasından Çık",
		engraving_table = "Gravür Masası",
		engraving = "${itemName} için Gravür",
		engrave_message = "Gravür Mesajı (maksimum 100 karakter)",
		engrave_success = "${itemName}'e başarıyla mesaj gravürlendi.",
		failed_engrave = "Mesaj gravürleme başarısız oldu.",

		no_sellable_items = "Satış yapabileceğiniz hiçbir şeyiniz yok.",
		exit_shop = "Çıkış",
		shop = "Mücevher Dükkanı",
		sell_gemstones = "[${InteractionKey}] Mücevheratı Sat",
		local_price = "Yerel Fiyatı: $${price}",

		sold_gemstone = "${gemstone}'den 1 adet $${price} fiyatla satıldı.",
		failed_sell_gemstone = "Değerli taşı satamadınız.",
		failed_sell_no_item = "Satmaya çalıştığınız öğeniz yok.",
		failed_sell_cap = "Satıcı daha fazla öğe satın almak istemiyor.",

		mining_sold_item_title = "Değerli taşlar Satıldı",
		mining_sold_item_details = "${consoleName}, ${itemName}'yi 1 adet satarak ${price}$ kazandı.",

		mining_crafted_item_title = "Öğe İşlendi",
		mining_crafted_item_details = "${consoleName}, ${itemName}'yi 1 adet işledi.",

		mining_refined_item_title = "Değerli Taş İşlendi",
		mining_refined_item_details = "${consoleName}, ${itemName}'yi 1 adet işleyerek değerli taşa dönüştürdü.",

		mining_mined_title = "Değerli Taş Bulundu",
		mining_mined_details = "${consoleName} ${output} değerli taşı buldu.",

		mining_exploded_title = "Patlama Meydana Geldi",
		mining_exploded_details = "${consoleName} değerli taşın çıkarılması sırasında patlama meydana geldi.",

		instability_0 = "Bu değerli taş stabil.",
		instability_1 = "Bu değerli taş hafif dengesizdir.",
		instability_2 = "Bu değerli taş dengesizdir.",
		instability_3 = "Bu değerli taş çok dengesizdir.",

		exhausted = "Uzun süre madende kaldığınız için yorgunsunuz.",
		very_exhausted = "Uzun süre madende kalmaktan çok yorgunsunuz."
	},

	miscellaneous = {
		language_unavailable = "Dil `${languageCode}` henüz mevcut değil. Eğer bu dil için yerelleştirme oluşturmak isterseniz, ${frameworkDiscord} adresindeki OP-FW geliştirme discord sunucusuna katılmaktan çekinmeyin!",
		same_language = "${languageCode} zaten seçili dil olarak ayarlanmış.",
		language_set = "Tercih ettiğiniz dil şimdi ${languageCode} olarak ayarlandı.",
		current_language = "Mevcut Dil",
		available_language_codes = "Mevcut Diller",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (geri çağırma zamanı: ${callbackTime}ms)",
		ooc_first_time = "/ooc komutunu henüz kullanmadığınızı fark ettik! Önce sizi uyararak başlamak istiyoruz. /ooc komutu sadece acil durumlar için kullanılmalıdır ve tüm acil olmayan sorular veya mesajlar ${communityDiscord} adresindeki discord sunucumuza yönlendirilmelidir. Hepsi bu kadar! /ooc kullanmaya başlamak için /ooc_on yazın. Tekrar kapatmak için /ooc_off yazabilirsiniz.",
		ooc_not_logged_in = "Giriş yapmadınız.",
		ooc_timed_out = "Şu anda OOC sohbetinden zaman aşımına uğradınız. Lütfen bekleyin.",
		ooc_muted_no_reason = "Belirtilmemiş bir sebeple küresel OOC sohbetinden susturuldunuz.",
		ooc_muted = "Belirtilen nedenle küresel OOC sohbetinden susturuldunuz: `${reason}`.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "LOKAL OOC ${playerDescriptor}",
		ooc_is_disabled = "Küresel OOC sohbetini devre dışı bıraktınız.",
		ooc_enabled = "Küresel OOC artık etkinleştirildi.",
		ooc_already_enabled = "Küresel OOC zaten etkinleştirilmiş durumda.",
		ooc_disabled = "Küresel OOC artık devre dışı bırakıldı.",
		ooc_already_disabled = "Küresel OOC zaten devre dışı bırakılmış durumda.",
		ooc_local_logs_title = "Yerel OOC mesajı",
		ooc_local_logs_details = "${consoleName} yerel OOC sohbetinde şu mesajı gönderdi: `${oocMessage}`.",
		ooc_global_logs_title = "Genel OOC mesajı",
		ooc_global_logs_details = "${consoleName} genel OOC sohbetinde şu mesajı gönderdi: `${oocMessage}`.",
		bad_ooc_message = "OOC sohbetinde olası kötü bir mesaj yayınlamaya çalışıldı: \"${oocMessage}\"",
		bad_ped_message = "Olası kötü bir ped mesajı oluşturmaya çalışıldı: \"${pedMessage}\"",
		bad_twitter_post = "Olası kötü bir Twitter gönderisi oluşturmaya çalışıldı: \"${twitterPost}\"",
		bad_phone_message = "Potansiyel olarak kötü bir twitter mesajı oluşturulmaya çalışıldı: \"${message}\"",
		mute_toggle_not_staff = "Oyuncu bir oyuncuyu susturmaya çalıştı, ancak bunu yapmak için gerekli izinlere sahip değil.",
		unmute_toggle_not_staff = "Oyuncu bir oyuncunun susturmasını kaldırmaya çalıştı, ancak bunu yapmak için gerekli izinlere sahip değil.",
		user_not_found = "Sunucu kimliği `${serverId}` olan bir kullanıcı bulamadık.",
		player_already_muted = "${consoleName} zaten susturulmuş durumda.",
		player_has_been_muted_no_reason = "${consoleName} şimdi belirtilen bir neden olmadan susturuldu.",
		player_has_been_muted = "${consoleName} artık susturuldu. Sebep: `${reason}`.",
		player_not_muted = "${consoleName} susturulmamış.",
		player_has_been_unmuted = "${consoleName} artık konuşabilir durumda.",
		clear_chat_not_admin = "Oyuncu, tüm oyuncuların sohbetini temizlemeye çalıştı, ancak buna yetkisi yok.",
		ooc_clear_chat_title = "Sohbet Temizlendi",
		ooc_clear_chat_details = "${consoleName} herkesin sohbetini temizledi.",
		muted_player = "Susturulmuş Oyuncu",
		muted_player_no_reason_details = "${consoleName}, ${targetConsoleName} adlı oyuncuyu belirtilen herhangi bir neden olmaksızın susturdu.",
		muted_player_details = "${consoleName} '${targetConsoleName}' kişisini '${muteReason}' sebebiyle susturdu.",
		player_muted = "Oyuncu Susturuldu",
		player_muted_no_reason_details = "${consoleName}, ${targetConsoleName}'i belirtilen bir sebep olmaksızın susturdu.",
		player_muted_details = "${consoleName}, ${targetConsoleName}'i '${muteReason}' sebebiyle susturdu.",
		muted_self = "Kendi Kendini Susturdu",
		muted_self_no_reason_details = "${consoleName}, belirtilen bir sebep olmaksızın kendini susturdu.",
		muted_self_details = "${consoleName}, '${muteReason}' sebebiyle kendini susturdu.",
		unmuted_self = "Kendi Susturulması Kaldırıldı",
		unmuted_self_details = "${consoleName} kendi susturulmasını kaldırdı.",
		unmuted_player = "Oyuncunun Susturulması Kaldırıldı",
		unmuted_player_details = "${consoleName} ${targetConsoleName}'in susturulmasını kaldırdı.",
		player_unmuted = "Oyuncunun Susturulması Kaldırıldı",
		player_unmuted_details = "${consoleName} tarafından ${targetConsoleName}'in susturulması kaldırılmıştır.",
		ooc_cancelled_same_as_last = "Önceki mesajınızla aynı olan bir başka OOC mesajı denemeleriniz iptal edildi.",
		use_measurement_metric = "Tercih ettiğiniz ölçü sistemi metrik olarak ayarlandı.",
		use_measurement_imperial = "Tercih ettiğiniz ölçü sistemi imperial olarak ayarlandı.",
		use_measurement_default = "Artık kullanıcı yerelinin varsayılan ölçü sistemi kullanılacak.",
		already_using_metric_measurement = "Metrik ölçü sistemini zaten tercih etmişsiniz.",
		already_using_imperial_measurement = "İmperial ölçü sistemini zaten tercih etmişsiniz.",
		already_using_default_measurement = "Zaten kullanıcı yerelinin varsayılan ölçü sistemi kullanılıyor.",
		no_copyright = "Telif hakkı yok",
		no_copyright_warning = "Merhaba! DMCA ve telif hakları ihlalleri yaşadığınız bir yayıncı ya da içerik oluşturucu musunuz? Eğer öyleyse, `${noCopyrightCommand}` komutunu açmanızı öneriyoruz, böylece oyununuzda belirli telif hakkı olan materyallerin görüntülenmesi ve çalınması durdurulabilir. Bu özellik açıldığında çalışmaya başlar.",
		no_copyright_enabled = "Telif hakkı özelliği etkinleştirildi.",
		no_copyright_disabled = "Telif hakkı özelliği devre dışı.",
		server_tps = "Sunucu TPS",
		server_tps_response = "${tps}",
		license_copied = "Lisans başarıyla panoya kopyalandı.",
		uptime = "Çalışma süresi: ${uptime}",

		picture_no_url = "URL bulunamadı",
		picture_invalid_url = "Geçersiz URL, https:// ile başlamalıdır.",
		picture_no_description = "Açıklama bulunamadı.",
		picture_failed = "Resim oluşturulamadı.",

		auto_run_already_set_to = "Otomatik çalıştırma zaten ${controlId} kontrolüne ayarlanmış.",
		auto_run_already_unset = "Otomatik koşu zaten kapatılmış.",
		auto_run_set_to = "Otomatik koşu ${controlId} tuşuna atanmış.",
		auto_run_unset = "Otomatik koşu kapatıldı.",

		invalid_server_id = "Geçersiz sunucu ID'si.",
		walk_forwards_success = "${displayName} için ileri yürüme başarıyla açıldı.",
		walk_forwards_failed = "${displayName} için ileri yürüme açılamadı."
	},

	money = {
		invalid_server_id = "Geçersiz sunucu ID'si.",
		invalid_amount = "Geçersiz miktar.",
		something_went_wrong = "Bir şeyler yanlış gitti.",
		not_enough_cash = "Yeterli nakit paranız yok.",
		not_close_enough = "Yakınlarda değilsiniz.",
		user_not_available = "Kullanıcı mevcut değil.",

		bill_received = "${displayName} size ${amount}$ 'lık bir fatura gönderdi. Kabul etmek için `/yes` veya reddetmek için `/no` yazın.",
		bill_expired = "${displayName} tarafından gönderilen faturanızın süresi doldu.",
		bill_declined = "${displayName} tarafından gönderilen faturayı reddettiniz.",
		failed_bill_payment = "Fatura ödemesi başarısız oldu.",
		bill_success = "${displayName} tarafından gönderilen $${amount} faturayı başarıyla ödediniz.",
		bill_created = "${displayName} için $${amount} tutarında bir fatura oluşturdunuz.",

		givecash_success = "${displayName} kişisine $${amount} işlemi başarılı şekilde gerçekleştirildi.",

		give_cash_title = "Nakit Transferi",
		give_cash_details = "${consoleName} ${targetConsoleName} kullanıcısına $${amount} tutarında nakit transferi gerçekleştirdi.",
		paid_bill_title = "Fatura Ödendi",
		paid_bill_details = "${consoleName}, ${targetConsoleName} tarafından kesilen ${amount}$ tutarındaki faturayı ödedi.",
		bill_created_title = "Fatura Oluşturuldu",
		bill_created_details = "${consoleName}, ${targetConsoleName} için ${amount}$ tutarında bir fatura oluşturdu."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] Hazneyi Doldur",
		collect_moonshine = "[${InteractionKey}] Meşe Palamudu Topla",
		fermenting = "Fermentasyon ${percentage}%",
		filling_chamber = "Hazneyi Dolduruluyor",

		not_enough_items = "Hazneyi doldurmak için yeterli malzemen yok.",
		something_went_wrong = "Bir şeyler yanlış gitti.",
		failed_fill = "Hazneyi doldurma başarısız oldu.",
		failed_empty = "İçkiliği toplama başarısız oldu.",

		press_to_sell_moonshine = "Ayran satmak için ~INPUT_CONTEXT~ tuşuna basın.",
		local_not_interested = "Yerli şu anda ilgilenmiyor gibi görünmüyor.",
		selling_moonshine = "Ayran Satıyor."
	},

	nos = {
		press_to_install_nitro_tank = "Nitro Tankı kurmak için ~INPUT_CONTEXT~ tuşuna basın.",
		installing_nitro_tank = "Nitro Tankı Kurma",
		press_to_remove_nitro_tank = "Nitro Tankını kaldırmak için ~INPUT_CONTEXT~ tuşuna basın.",
		removing_nitro_tank = "Nitro Tankı Çıkartılıyor"
	},

	notepads = {
		take_notes = "Notlar al...",
		press_to_open = "Bu not defterini açmak için ~INPUT_DETONATE~ tuşuna basın.",
		notepad_busy = "Başkası bu not defterini kullanıyor.",
		dropped_notepad_title = "Not Defteri Düşürüldü",
		dropped_notepad_text_title_details = "${consoleName} metin `${text}` içeren bir not defteri düşürdü.",
		updated_notepad_title = "Not Defteri Güncellendi",
		updated_notepad_text_title_details = "${consoleName} metin `${text}` içeren bir not defterini güncelledi.",
		picked_up_notepad_title = "Not Defteri Toplandı",
		picked_up_notepad_text_title_details = "${consoleName} ${text} isimli defteri aldı.",
		invalid_notepad_id = "Geçersiz defter ID'si.",
		failed_notepad_info = "Defter bilgisi alınamadı.",
		notepad_info = "${droppedBy} kullanıcısı tarafından düşürülen Defter ${notepadId}.",
		failed_notepad_wipe = "Defterler silinirken hata oluştu.",
		invalid_notepad_wipe_radius = "Geçersiz yarıçap (Min = 1, Max = 100).",
		notepad_wipe_success = "${amount} adet defter başarıyla silindi.",
		sign_invalid_slot = "Geçersiz envanter slotu.",
		signed_notepad = "Slot `${slotId}`'teki defter başarıyla imzalandı.",
		failed_sign_notepad = "Not defterini imzalama başarısız oldu.",
		sign_already_signed = "Bu not defterini zaten imzalayamazsınız.",

		notepad_info_missing_permissions = "Oyuncu yeterli izin olmadan not defteri bilgisini almaya çalıştı.",
		wipe_notepads_missing_permissions = "Oyuncu yeterli izin olmadan not defterlerini silmeye çalıştı."
	},

	notices = {
		message_too_long = "Mesaj çok fazla karakter veya satır içeriyor!",
		invalid_notice_id = "Geçersiz bildirim kimliği.",
		successfully_removed_notice = "Bildirim başarıyla kaldırıldı.",
		failed_remove_notice = "Bildirimi kaldırma başarısız oldu.",

		add_notice_missing_permissions = "Oyuncu, uygun izinlere sahip olmadan bir bildirim eklemeye çalıştı.",
		remove_notice_missing_permissions = "Oyuncu, uygun izinlere sahip olmadan bir bildirimi kaldırmaya çalıştı."
	},

	objects = {
		saved_found_objects = "Bulunan `${foundObjectsAmount}` nesne, `${modelName}` modeli ile birlikte sunucuda bulunan bir dosyaya kaydedildi.",
		no_nearby_objects_with_model_found = "`${modelName}` modeline sahip yakındaki nesne bulunamadı.",
		invalid_model_name = "`${modelName}` modeli geçersiz bir model değildir.",
		missing_model_name = "Eksik model adı."
	},

	orbitcam = {
		enabled_orbitcam = "Orbitcam etkinleştirildi.",
		disabled_orbitcam = "Orbitcam devre dışı bırakıldı.",
		orbitcam_failed = "Orbitcam etkinleştirilemedi. Noclip veya benzeri bir yetkiniz var mı?",

		orbitcam_logs_title = "Orbitcam Değiştirildi",
		orbitcam_on_logs_details = "${consoleName} orbitcam'ını etkinleştirdi.",
		orbitcam_off_logs_details = "${consoleName} orbitcam'ını devre dışı bıraktı.",

		orbitcam_no_permission = "Gerekli izinlere sahip olmadan orbitcam'i değiştirmeye çalıştı."
	},

	overview = {
		header_title = "OP Framework - Genel Bakış UI",
		select_information = "Bilgi",
		select_activity_points = "Etkinlik Puanları",
		select_staff_points = "Personel Puanları",
		select_moderation = "Moderasyon",
		select_handling_overrides = "Taşıma Ayarları",
		select_settings = "Ayarlar",
		about_title = "Genel Bakış UI Hakkında",

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

		about_activity_points_title = "Etkinlik Puanları Hakkında",

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

		activity_points_this_week = "Bu Hafta",
		activity_points_last_week = "Geçen Hafta",
		activity_points_current = "Etkinlik Puanları: <b>${activityPoints} + ${gainAmount}/dakika</b>",
		activity_points_current_no_gain = "Etkinlik Puanları: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Şu anda Düşük Görev Önceliği için 400 puanlık bir aktivite hedefiniz var, <b>${remainingPoints} puan kaldı</b>!",
		activity_points_goal_medium = "<br><br>Orta Görev Önceliği için 700 puanlık bir aktivite hedefiniz var, <b>${remainingPoints} puan kaldı</b>!",
		activity_points_goal_high = "<br><br>Yüksek Görev Önceliği için 1000 puanlık bir aktivite hedefiniz var, <b>${remainingPoints} puan kaldı</b>!",
		activity_points_goal_none = "<br><br>Şu anda hiçbir aktivite hedefiniz yok.",
		activity_points_not_enough = "Geçen hafta kuyruk önceliği için yeterli aktivite puanınız yoktu.",
		activity_points_last_week_low = "Etkileyici, geçen hafta düşük iş önceliği için yeterli aktivite puanınız vardı!",
		activity_points_last_week_medium = "Harika, geçen hafta orta iş önceliği için yeterli aktivite puanınız vardı!",
		activity_points_last_week_high = "İnanılmaz, geçen hafta yüksek iş önceliği için yeterli aktivite puanınız vardı!",

		about_staff_points_title = "Personel Puanları Hakkında",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "Bu Hafta",
		staff_points_current = "Personel Puanları: <b>${staffPoints} + ${gainAmount}/dakika</b>",
		staff_points_current_no_gain = "Personel Puanları: <b>${staffPoints}</b>",
		staff_points_table = "Personel Puanları Tablosu",
		this_week = "Bu Hafta",
		one_week_ago = "1 Hafta Önce",
		two_weeks_ago = "2 Hafta Önce",
		three_weeks_ago = "3 Hafta Önce",
		four_weeks_ago = "4 Hafta Önce",
		five_weeks_ago = "5 Hafta Önce",
		six_weeks_ago = "6 Hafta Önce",
		seven_weeks_ago = "7 Hafta Önce",
		eight_weeks_ago = "8 Hafta Önce",
		previous_weeks_average = "Geçen Haftaların Ortalaması",

		about_detection_areas_title = "Algılama Alanları",
		about_detection_areas_text = "Algılama alanları, istenmeyen araçlar veya karakterler üreten hile yapmaya çalışan kişileri tespit etmek için personel üyelerine faydalı bir araç olabilir. Algılama alanı oluşturmak için `/detection_area_add` komutunu kullanın. Bir bölge oluşturduktan sonra burada görünecektir. Her bölgede yalnızca en son 100 varlık kaydedilir.",
		detection_area_title = "Algılama Alanı #${detectionAreaId}",

		about_sound_effects_title = "Ses Efektleri",
		about_sound_effects_text = "Bu alanlar bazı ses efektlerini geçersiz kılmak için kullanılır. Doğru çalışması için bir .oog dosyasının bir https:// URL'sine ihtiyacı vardır ve http://değil. Dosya yükleme işlemini kolaylaştırmak için dosyayı discord'a yükleyip, bağlantısını buraya kopyalamak yeterlidir.",
		radio_mic_click_on = "Radyo Mikrofon Tıklaması (Açık)",
		radio_mic_click_off = "Radyo Mikrofon Tıklaması (Kapalı)",
		clipboard_animation = "Pano Animasyonu",
		sound_effect_placeholder = "Ses efekti URL'si...",
		sound_effect_save = "Kaydet",
		sound_effect_reset = "Sıfırla",

		staff_notifications_reports = "Rapor Bildirimleri",
		staff_notifications_staff_chat = "Yetkili Sohbet Bildirimleri",
		staff_notifications_general = "Genel Bildirimler",
		staff_notifications_anti_cheat = "Hile Önleme Bildirimleri",

		december_1 = "1 Aralık",
		december_2 = "2 Aralık",
		december_3 = "3 Aralık",
		december_4 = "4 Aralık",
		december_5 = "5 Aralık",
		december_6 = "6 Aralık",
		december_7 = "7 Aralık",
		december_8 = "8 Aralık",
		december_9 = "9 Aralık",
		december_10 = "10 Aralık",
		december_11 = "11 Aralık",
		december_12 = "12 Aralık",
		december_13 = "13 Aralık",
		december_14 = "14 Aralık",
		december_15 = "15 Aralık",
		december_16 = "16 Aralık",
		december_17 = "17 Aralık",
		december_18 = "18 Aralık",
		december_19 = "19 Aralık",
		december_20 = "20 Aralık",
		december_21 = "21 Aralık",
		december_22 = "22 Aralık",
		december_23 = "23 Aralık",
		december_24 = "24 Aralık",
		hatch_closed = "KAPALI",
		hatch_open = "AÇIK",
		hatch_claim = "AL",
		hatch_opened = "ALINDI",
		hatch_waiting = "BEKLEMEDE",

		about_advent_calendar_title = "Advent Takvimi Hakkında",

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

		unlocks_in_days_hours_minutes_seconds = "${days} gün, ${hours} saat, ${minutes} dakika ve ${seconds} saniye sonra açılacak",
		unlocks_in_hours_minutes_seconds = "${hours} saat, ${minutes} dakika ve ${seconds} saniye sonra açılacak",
		unlocks_in_minutes_seconds = "${minutes} dakika ve ${seconds} saniye sonra açılacak",
		unlocks_in_seconds = "${seconds} saniye sonra açılacak",
		unlocks_in_an_unknown_amount_of_time = "bilinmeyen bir süre sonra açılacak",

		unopened_hatch = "Açılmamış Gözük",
		won_money = "$${amount} Nakit Kazandın",
		won_vehicle = "Araç (Yılbaşı Özel)",
		won_queue_priority = "Bir Hafta Sıra Önceliği Kazandın!",

		about_handling_overrides_title = "Yönlendirme Geçersiz Kılma Hakkında",
		about_handling_overrides_text = "Yönlendirme sınıfları için geçici yönlendirme geçersiz kılma oluşturun. Geçersiz kılma, kaldırılana veya sunucu yeniden başlatıldığına kadar kalır ve tüm oyuncular için ayarlanır.",
		add_override = "Override Ekle",
		add = "Ekle",
		model_name = "Model ismi...",
		field_name = "Alan...",
		value = "Değer...",
		current_overrides = "Mevcut Override'lar",

		about_explosion_events_title = "Patlama Olayları",
		about_explosion_events_about = "Burada son 500 patlama olayı hakkında bilgi kaydedilir. Bu, yetkililerin modifiye yapanları bulmasına yardımcı olmalıdır.",
		about_unusual_explosions = "Normal olarak meydana gelmeyen olağandışı patlama olayları.",
		explosions_by_type_title = "Patlama Türlerine Göre",
		players_causing_explosions_title = "Patlamalara Sebep Olan Oyuncular",
		show_common_events_off = "Ortak olayları göster: KAPALI",
		show_common_events_on = "Ortak olayları göster: AÇIK",

		explosion_events_type = "Tip",
		explosion_events_amount = "Miktar",
		explosion_events_nearby = "Yakınlarda",
		explosion_events_distance = "Mesafe",
		explosion_events_player = "Oyuncu Adı",

		illegal_weapons_title = "Oluşturulmuş Silahlar",
		illegal_weapons_about = "Sistem tarafından tespit edilen son 500 oluşturulmuş silah olayı burada kaydedilir. Birisi oluşturulmuş silaha sahip olduğunda, bunun mod yapmak anlamına gelmediğini unutmayın, çünkü modcular diğer oyuncuların silahlarını da oluşturabilir ve bu nedenle başka oyuncular da burada görünebilir.",
		illegal_weapons_by_type = "Türüne Göre Yasaklı Silahlar",
		players_with_spawned_weapons = "Çıkarılmış Silahlara Sahip Oyuncular",

		ped_models_title = "Oyuncu Karakter Modeli",
		ped_models_about = "Burada freemode karakter modeli kullanmayan her oyuncu listelenir. Bu, troll veya potansiyel modder olan oyuncuları bulmada yardımcı olabilir.",
		local_ped_models_title = "Yerel Karakter Modelleri",
		animal_ped_models_title = "Hayvan Karakter Modelleri",

		fast_movement_title = "Hızlı Hareket",
		fast_movement_about = "Burada, çok hızlı hareket eden oyuncular listelenir. Bu, potansiyel modder olan oyuncuları bulmaya yardımcı olabilir.",

		damage_modifier_title = "Hasar Modifikatörleri",
		damage_modifier_about = "Burada, hasar modifikatörü değiştirdiği tespit edilen her oyuncu listelenir. Bu, potansiyel modder oyuncuları bulmaya yardımcı olmalıdır.",

		bad_screen_word_title = "Kötü Ekran Kelimeleri",
		bad_screen_word_about = "Burada, ekranlarında belirli kelimelerin bulunduğu tespit edilen her oyuncu listelenir. Bu, potansiyel modder oyuncuları bulmaya yardımcı olmalıdır.",

		freecam_detections_title = "Freecam Tespitleri",
		freecam_detections_about = "Burada, freecam kullanan tespit edilen her oyuncu listelenir. Bu, potansiyel modder oyuncuları bulmaya yardımcı olmalıdır.",

		damage_modifier_name = "Oyuncu İsmi",
		damage_modifier_expected = "Beklenen",
		damage_modifier_actual = "Gerçekleşen",

		bad_words_name = "Oyuncu İsmi",
		bad_words_words = "Tetikleyici Kelimeler",

		freecam_detections_name = "Oyuncu İsmi",
		freecam_detections_distance = "Maksimum Mesafe",

		hotwire_driving_detections_name = "Oyuncu İsmi",

		model = "Model",
		label = "Etiket",
		amount = "Miktar",
		console_name = "Oyuncu",
		expected = "Beklenen",
		actual = "Gerçekleşen",
		words = "Kelimeler",
		distance = "Mesafe",
		weapon = "Silah",
		type = "Tür",
		nearby = "Yakında",

		no_entries = "Girdi yok"
	},

	oxy = {
		press_to_talk_to_jc = "JC ile konuşmak için ~g~${InteractionKey} ~w~tuşuna basın.",
		tutorial_will_play_next_time = "Oksijen tutoriali bir sonraki oyun başladığında oynatılacak.",
		prescription_pick_up = "Reçete Toplama: ${label}",

		pick_up_the_prescriptions = "Sahte reçeteleri haritanızda işaretlenmiş olan yerlerden alın.",
		redeem_them_at_the_city = "Bunu yaptıktan sonra, şehirde bunları kullanmanız gerekecek.",
		jc_will_be_expecting_some_back = "~y~JC ~w~, ${pickUpAmount} Oxy'den 6 adet döner bekliyor olacak.",
		you_have_limited_time = "Sınırlı bir süreniz var. ${time} içinde hapları geri getirmeniz gerekiyor.",
		press_to_hide_unimportant_blips_in_map = "Duraklatma Menüsünde iken önemli olmayan blipleri gizlemek için ~INPUT_SPRINT~ tuşuna basın.",
		consider_getting_a_smart_watch = "GPS'ınızı her zaman görebilmek için bir akıllı saat almayı düşünün.",

		press_to_pick_up_prescription = "Reçeteyi almak için ~g~${InteractionKey}~w~ tuşuna basın.",

		redeem_oxy_prescription = "Oksijenli Reçete Bozdur",
		press_to_redeem_prescription = "Reçeteyi bozdurmak için ~g~${InteractionKey}~w~ tuşuna basın.",

		check_your_map_to_redeem_prescriptions = "Haritaya bakarak reçeteleri bozdurabileceksiniz. Şu kadar süreniz kaldı: ${time}.",
		go_to_jc_to_finish_run = "Harika iş! Yarışmayı bitirmek için ~y~JC'ye~w~ gitmelisiniz. Şu kadar süreniz kaldı: ${time}.",

		oxy_run_started_title = "Oksijen Satma Yarışması Başlatıldı",
		oxy_run_started_details = "${consoleName} oksijen satma yarışmasını başlattı.",

		oxy_run_ended_title = "Oksijen Taşını Bitti",
		oxy_run_ended_details = "${consoleName} oksijen taşınmayı ${time} içinde tamamladı ve $${payout} kazandı.",

		oxy_run_failed_title = "Oksijen Taşını Başarısız Oldu",
		oxy_run_failed_details = "${consoleName} oksijen taşınmayı yapamadı.",

		you_failed_the_run = "Taşımayı başarısız oldunuz. ~y~JC ~w~bir süre seninle memnun olmayacak.",

		time_left = "Sana ${time} kaldı.",

		accidental_call_1_part_1 = "Merhaba, ne haber?",
		accidental_call_1_part_2 = "Tamam, şu an şöyle bir şey yapacağız çünkü birileri oksijen taşıyor.",
		accidental_call_1_part_3 = "Evet, plakasını, arabasını ve tüm bunları not aldım.",
		accidental_call_1_part_4 = "Ve aslında, arabasından inip şeyi teslim etmek için adama yaklaştığında, senin atlayıp onu almanı istiyorum.",
		accidental_call_1_part_5 = "Hayır, adam bizim olduğumuzu bilmiyor, onu şehir merkezine gönderdim, muhtemelen çete olduğunu düşünecek.",
		accidental_call_1_part_6 = "Bana güven, çok kolay.",
		accidental_call_1_part_7 = "Ooohh! Yoo, ne diyorsun kardeşim?! Sen değil, diğer adam! Ben iki adam gönderdim! Sen değilsin!",
		accidental_call_1_part_8 = "Sadece takılıyorsun! Yanlış adam ama başka biri abi. Sen değildin.",
		accidental_call_1_part_9 = "Sen değildin. Anlıyor musun? Asla sen değildin!",
		accidental_call_1_part_10 = "Ama dikkatli ol, çünkü oynarsan kesinlikle arabana binerim.",
		accidental_call_1_part_11 = "Sevgiler.",

		accidental_call_2_part_1 = "Selam, ne haber?",
		accidental_call_2_part_2 = "Evet, yalan söyleyemem, sadece hardalı ayaklarına sürmek ve sosis gibi yalamak istiyorum.",
		accidental_call_2_part_3 = "Selam tatlım.",
		accidental_call_2_part_4 = "Bir dakika..",
		accidental_call_2_part_5 = "Aman Allah'ım, benim hatam.",

		accidental_call_3_part_1 = "Selaaam, n'aber kanka?",
		accidental_call_3_part_2 = "Evet evet, istediğin yeni hip-hop şarkısını tamamladım kanka.",
		accidental_call_3_part_3 = "Evet, şöyle gidiyor biraz..",
		accidental_call_3_part_4 = "Seni sevmek istiyorumm bebişş, seni öpmek istiyorum, seni öpmek istiyorum, ayaklarının altından bile öpmek istiyorum, ben ööle sevdim",
		accidental_call_3_part_5 = "Wooooah, dur dur dur.. Yani, demem o ki... O ben değildim..",
		accidental_call_3_part_6 = "Tamam, yanlış numara, kardeşim benim, benim hatam..",

		accidental_call_4_part_1 = "Yooo kardeşim, ne zaman benim evime gelip benimle benim küçük midillimle oyun oynayacaksın?",
		accidental_call_4_part_2 = "Çok uzun zaman oldu ve ihtiyacım var, bruv sen benim pırıltılı olanını sevdiğimi bilirsin ve-",
		accidental_call_4_part_3 = "Taaam.. yo yanlış numara kardeşim, özür dilerim, sen duymadın ama.",
		accidental_call_4_part_4 = "Çünkü eğer duysaydın, ölürdün, anlattığımı anlıyorsun değil mi?",

		accidental_call_5_part_1 = "Yo anne, şu anda biraz korkmuş durumdayım..",
		accidental_call_5_part_2 = "Evet, kapımın dışında bazı adamlar vardı ve ne yapacağımı bilmiyorum anne.",
		accidental_call_5_part_3 = "Biraz korkuyorum, çünkü derin uçta olduğumu düşünüyorum, bilirsin..",
		accidental_call_5_part_4 = "Anne.. oh, ohh.. oh, ne oluyor abi?",
		accidental_call_5_part_5 = "Evet, hayır, oyunculuk yeteneklerimden hoşlandın mı?",
		accidental_call_5_part_6 = "Ama bana güven, bu konuşmayı bir daha asla kaydetme yoksa seni öldürürüm.",
		accidental_call_5_part_7 = "Ne söylediğimi anlıyorsun değil mi? Yanına gider ve seni başka türlü parçalarım abi.",
		accidental_call_5_part_8 = "Anlıyorsun abi, biliyorsun?",
		accidental_call_5_part_9 = "Bana güven, s..tir et abi.",

		accidental_call_6_part_1 = "Yo yo küçük abi, gel buraya, evet.",
		accidental_call_6_part_2 = "Baban telefonu açtı abi, baban telefonu açtı.",
		accidental_call_6_part_3 = "Biliyorum onu görmedin, al bakalım, al bakalım, al bakalım abi, al bakalım, al bakalım.",
		accidental_call_6_part_4 = "Merhaba? Baba sen misin?",
		accidental_call_6_part_5 = "Baba?!",
		accidental_call_6_part_6 = ".. bekle hayır, o baba değil, başkası! Hayır!",
		accidental_call_6_part_7 = "Sen aptalsın, bunun için düşüp kaldığınıza inanamıyorum kanka!",
		accidental_call_6_part_8 = "Ohh Tanrım..",

		maxed_out_runs_part_1 = "Kanka biliyorum ekmek seversin ama diğer adamların da biraz almasına izin vermen lazım.",
		maxed_out_runs_part_2 = "Artık bunu yapmayı bırak kanka.",
		maxed_out_runs_part_3 = "Çöp HQ'da bazı aptallarla sohbet et ya da böyle bir şeyler yap kanka.",

		mission_completed_1_part_1 = "Selam kanka, işte o iyi işti ama sana güvenebileceğimi biliyordum.",
		mission_completed_1_part_2 = "Kanka, daha fazla para kazanman gerektiğinde nerede olduğumu biliyorsun. ",
		mission_completed_1_part_3 = "Endişelenme, yakında iyi stoklanacağım.",

		mission_completed_2_part_1 = "Ne diyorsun dostum?",
		mission_completed_2_part_2 = "Yalan söyleyemem, bu iş iyi bir işti.",
		mission_completed_2_part_3 = "Evet, müşteriler de seni çok sevdiler ve ben de seni sevdim. Neden mi?",
		mission_completed_2_part_4 = "Benim için para kazandın; Sen de para kazandın.",
		mission_completed_2_part_5 = "Al bunu, biraz sonra geri gel, çünkü sana tekrar ihtiyacım olacak.",

		mission_completed_3_part_1 = "Ne diyorsun bro.",
		mission_completed_3_part_2 = "Ay, yalan söyleyemem, oradaki şey.. MÜKEMMEL bro.",
		mission_completed_3_part_3 = "Daha iyisini yapamazdın bro.",
		mission_completed_3_part_4 = "Son adam sikti etti, bu yüzden seni aldığıma sevindim.",
		mission_completed_3_part_5 = "Daha sonra geri gel bro, bana güven, sana daha fazla şeyim var bro.",

		mission_completed_4_part_1 = "Yoooo, satmanın yolunu biliyorsun değil mi?",
		mission_completed_4_part_2 = "Burada iş adamı olman gerekebilir, ama bana güven bro.",
		mission_completed_4_part_3 = "Bu adamlara sattığın şekil harikaydı abi.",
		mission_completed_4_part_4 = "Evet evet, vay be, için için sevindim.",
		mission_completed_4_part_5 = "Ama seni farklı seviyorum, sonra yine gel haplarla sana yardımcı olurum abi.",
		mission_completed_4_part_6 = "Daha fazlası var, evet evet, bana güven.",

		mission_completed_5_part_1 = "Ne yapıyorsun burada abi?",
		mission_completed_5_part_2 = "Ohh, sen misin! Yo, nasılsın abi?",
		mission_completed_5_part_3 = "Evet, ay, için için sevindim- ay, için için sevindim abi.",
		mission_completed_5_part_4 = "Çok büyük bir iyilik yaptın bana! Şimdi bolca Nakit'im var, kendime güzel bir araba alıcam zaten.",
		mission_completed_5_part_5 = "Dinka Blista'yı alacam. Ama sonra gelmeni istiyorum, gerçekten legit yani.",
		mission_completed_5_part_6 = "Çünkü sana daha fazla işim var bro.",

		mission_completed_6_part_1 = "Bro, önceden Gogginschmiel'in suratını görmelisin.",
		mission_completed_6_part_2 = "Bir salak gibi görünüyordu, yalan söyleyemem.",
		mission_completed_6_part_3 = "Arkanda olduğunu bilmiyor muydun?!",
		mission_completed_6_part_4 = "O kadar zorladın ama sonunda oynadığın iyi oldu.",
		mission_completed_6_part_5 = "Yalan söyleyemem, bunda sen çok iyisin abi.",
		mission_completed_6_part_6 = "Daha sonra gel, sana daha fazlasını getireceğim abi.",

		mission_completed_7_part_1 = "Naber kardeş?",
		mission_completed_7_part_2 = "Vay be, orada arkada olan olay.. Harika lan.",
		mission_completed_7_part_3 = "Daha iyi yapamazdın kardeşim.",
		mission_completed_7_part_4 = "Son adam hata yaptı, o yüzden seni aldığıma sevindim.",
		mission_completed_7_part_5 = "Daha sonra geri gel kardeşim, bana güven, sana daha fazla eşya var.",

		mission_completed_8_part_1 = "Bu patron adam hakkında bahsettiğim kişi bro. Evet, bana güven bu adam çok harika bro.",
		mission_completed_8_part_2 = "Bu adam çok harika.",
		mission_completed_8_part_3 = "Her zaman zamanında teslimat yapar.",
		mission_completed_8_part_4 = "Müşteriler bu adamı seviyor.",
		mission_completed_8_part_5 = "Bana güven, bu adam dünya çapında yükselişe geçiyor ama sen beni asla yenemeyeceksin.",
		mission_completed_8_part_6 = "'çünkü sen bir salaksın, ne demek istediğimi anlıyorsun değil mi?",
		mission_completed_8_part_7 = "Ama aşk işte, daha sonra tekrar gel bro, sana daha fazla hap getiririm.",

		mission_failed_1_part_1 = "Evet bro, inkar edemem, müşteri beni aradı ve sen adamıma bile teslim etmedin.",
		mission_failed_1_part_2 = "Ne oluyor bro?",
		mission_failed_1_part_3 = "Büyük bir hata yaptın.",
		mission_failed_1_part_4 = "Gözümün önünden kaybol bro.",
		mission_failed_1_part_5 = "Eğer tekrar görürsem seni bro, senin için bitmiştir.",

		mission_failed_2_part_1 = "Şu anda büyük bir sorunumuz var.",
		mission_failed_2_part_2 = "Yalan söyleyemem, sen çok geç kaldın, neler oluyor?",
		mission_failed_2_part_3 = "Evet kardeşim, elbette müşterilerim sinirli!",
		mission_failed_2_part_4 = "Ey, benimden bir şey almaya çalışmayı bırakın kardeşim.",
		mission_failed_2_part_5 = "Sana söylüyorum, işin bitti kardeşim.",

		mission_failed_3_part_1 = "Evet, evet, evet, evet, hey, hey..",
		mission_failed_3_part_2 = "Ama yalan söyleyemem.",
		mission_failed_3_part_3 = "Söyleyeceğim ilk kişi sensin.",
		mission_failed_3_part_4 = "Sen aptalsın.",
		mission_failed_3_part_5 = "Bunu biliyor musun? Evet mi? Sen aptalsın.",
		mission_failed_3_part_6 = "Nedenini biliyor musun?",
		mission_failed_3_part_7 = "'Çünkü hiçbir şeyimi teslim etmedin bro.",
		mission_failed_3_part_8 = "Defol bro. Tekrar etrafımda seni görmek istemiyorum bro.",
		mission_failed_3_part_9 = "Sana karşı görüşürüz, Allah şahidim olsun bro.",
		mission_failed_3_part_10 = "Silahımı aldım, hazırım, senin için bro.",
		mission_failed_3_part_11 = "Senin işin bitti bro.",
		mission_failed_3_part_12 = "Evet, işte o.. defol bro.",

		mission_failed_4_part_1 = "Ne diyorsun bro?",
		mission_failed_4_part_2 = "Hızlı bir şey söyleyeceğim.",
		mission_failed_4_part_3 = "Eğer tekrar yaklaşırsan ölürsün.",
		mission_failed_4_part_4 = "Evet, nedenini biliyor musun?",
		mission_failed_4_part_5 = "Sen aptalsın, benim işimi sürekli başarısız kılıyorsun bro.",
		mission_failed_4_part_6 = "Bunun nedeni nedir?",
		mission_failed_4_part_7 = "Müşteriler sinirlendi, bana senin yüzünden kızgınlar bro.",
		mission_failed_4_part_8 = "Sana geldiğime inanamıyorum.",
		mission_failed_4_part_9 = "Adamım sandım, ama sen sadece bir pislikmişsin be kardeşim.",
		mission_failed_4_part_10 = "Yani seni sikerim be kardeşim. ",
		mission_failed_4_part_11 = "Gözümün önünden kaybol artık.",

		mission_failed_5_part_1 = "Eh, son görevde pek başarılı olamadın.",
		mission_failed_5_part_2 = "Yalan söyleyemem be kardeşim, büyük bir hata yaptın.",
		mission_failed_5_part_3 = "Artık benim bölgeye asla gelme!",
		mission_failed_5_part_4 = "'Çünkü Tanrı'ya yemin ederim, seni sikerim.",

		mission_failed_6_part_1 = "Ne diyorsun lan, abi?",
		mission_failed_6_part_2 = "Eğer bir daha mekanıma gelirsen abi,",
		mission_failed_6_part_3 = "Rambo'yu alıp başına sıkacağım, söylüyorum abi!",
		mission_failed_6_part_4 = "Allah şahidim olsun! Beni batırdın abi!",
		mission_failed_6_part_5 = "Müşteriler beni arıyor, çok ÖFKELİ olduklarını söylüyorlar şimdi.",
		mission_failed_6_part_6 = "Her şey senin yüzünden abi, her şey senin yüzünden..",

		mission_failed_7_part_1 = "Mekanıma gelme daha abi, sana kızgınım abi.",

		mission_failed_8_part_1 = "Hey dostum, paketlerimi temizleyene kadar başımdan defol.",

		mission_failed_9_part_1 = "Hey dostum, paketimi temizleyene kadar başımdan defol.",
		mission_failed_9_part_2 = "Hayır dostum, takiyemi düzenlenene kadar bir daha asla geri dönme.",
		mission_failed_9_part_3 = "Sen büyük hata yaptın, buradan defol.",

		mission_failed_10_part_1 = "Hey dostum, bu gece eve sağ salim dönmek için dua etmeliydin.",
		mission_failed_10_part_2 = "Çünkü seni takibe alacağım.",
		mission_failed_10_part_3 = "Hey dostum, bir daha beni hayal kırıklığına uğratma, Allah'a yemin ederim.",

		no_pills_1_part_1 = "Selam bro, aslında işler biraz karışık.",
		no_pills_1_part_2 = "Şu anda bir şeyim yok.",
		no_pills_1_part_3 = "Yani, ne diyebilirim..",
		no_pills_1_part_4 = "Gidip bir başka zaman dönmen daha iyi olur.",

		no_pills_2_part_1 = "Evet, naber bro. Aslında durum biraz kötü şu anda..",
		no_pills_2_part_2 = "Hiçbir şeyim yok bro! Hiç hapım yok!",
		no_pills_2_part_3 = "Evet, sırf beni siktiler! Hiçbir şeyim yok bro!",
		no_pills_2_part_4 = "Ay, Benim bu adamları aramama rağmen, dedim ki.. Yo ne haber, haplar nerede?..",
		no_pills_2_part_5 = "Adamım onlar bile burada değil.",
		no_pills_2_part_6 = "Bu adamlar bazı Özgürlük Şehri triplerinde geziyorlar veya başka bir şey, bro.",
		no_pills_2_part_7 = "Çok uzun sürüyorlar bro.",
		no_pills_2_part_8 = "Ama bana daha fazla gelince, sana mutlaka ulaşacağım bro.",

		no_pills_3_part_1 = "Yo, ne diyorsun abi?",
		no_pills_3_part_2 = "Şu an elimizde hap yok bro, o yüzden defolup gitmekle kalmaz mısın?",
		no_pills_3_part_3 = "Kızdığımı söylemeden önce, ne demek istediğimi biliyorsun değil mi?",

		no_pills_4_part_1 = "Selam, ne haber dostum? Şu anda hap yok, yani bence.. Bence sen de..",
		no_pills_4_part_2 = ".. sen de bittin dostum, defol gidersin sen de.",
		no_pills_4_part_3 = "Haydi, git buradan dostum, sen bittin.",

		no_pills_5_part_1 = "Selaaam!",
		no_pills_5_part_2 = "Ne haber dostum? Aman Allah'ım, şu anda hiçbir şeyimiz yok.",
		no_pills_5_part_3 = "Şu an için senin için zor durumda dostum.",
		no_pills_5_part_4 = "Ama işte, biraz sonra geri gel, senin için bir şeyler ayarlarım.",
		no_pills_5_part_5 = "Kardeşim, sevgiler.",

		no_pills_6_part_1 = "Kardeşim.. Senden önce 2 kişiye söyledim, şu anda yok bir şeyim..",
		no_pills_6_part_2 = "O zaman dinle küçük oğlanlarını ve topluca kendinize gidin adamım.",
		no_pills_6_part_3 = "Anlıyor musun? Bu kadar, sen burada bitti kardeşim, sana çıkış yok.",

		no_pills_7_part_1 = "Evet, burada BEN büyük şeyim, anlıyor musun?",
		no_pills_7_part_2 = "Ama büyük şey şu anda büyük haplarım yok.. yani temel olarak senin küçük şeyin defolmalı.",
		no_pills_7_part_3 = "Ne demek istediğimi anlıyorsun mu?",

		no_pills_8_part_1 = "Yo, yo, ne diyorsun?",
		no_pills_8_part_2 = "Ey, ey, ey, ben- Ben düşük profil tutmalıyım kardeş.",
		no_pills_8_part_3 = "Evet, ay yalan söyleyemem.. Görevli ekipleri önceden geldi..",
		no_pills_8_part_4 = "Şu anda hapımız yok. Ne demek istediğimi anlıyorsun.",
		no_pills_8_part_5 = "Benim için şimdilik kapandı. Ama daha sonra gel, kardeşim, sıcaklık düştüğünde tekrar görüşürüz.",

		no_pills_9_part_1 = "Evet, ay yalan söyleyemem , bazı manyaklar önceden yanıma geldiler ve eşyalarımı aldılar kardeşim.",
		no_pills_9_part_2 = "Ama endişelenme, hemen onları takipteyim.",
		no_pills_9_part_3 = "İlacı alınca kesinlikle geri gel, seni kurtaracağım.",

		no_pills_10_part_1 = "Ne diyorsun bro?",
		no_pills_10_part_2 = "Evet, şimdi kuzeyde bir çete varmış ya da ne işte.",
		no_pills_10_part_3 = "Bir şeyi soydular, biz birlikte oraya gideceğiz, geri alacağız ve seni kurtaracağım bro.",
		no_pills_10_part_4 = "Teşekkürler bro.",

		no_pills_11_part_1 = "Ne diyorsun bro? Şu anda hiçbir şey yok bro... hiçbir şey yok.",
		no_pills_11_part_2 = "Şu anda biraz yoğunum. Şu anda hiçbir şeyim yok.",
		no_pills_11_part_3 = "Ama genellikle herkese söylediğim gibi sana da söyleyeceğim..",
		no_pills_11_part_4 = "Neden o zaman şimdi siktir git ve daha sonra geri gelirsin. Sevgiler.",

		no_pills_12_part_1 = "Hayır, şu anda hiçbir şeyim yok dostum.",
		no_pills_12_part_2 = "Daha sonra gel, daha sonra..",

		no_pills_13_part_1 = "Dostum! Defol be! Hiçbir şeyim yok dostum!",
		no_pills_13_part_2 = "Hiçbir şeyim yok dostum! Ah, sakin ol dostum!",

		no_pills_14_part_1 = "Bak kardeşim, sana söyledim, şu anda hiç hapım yok.",
		no_pills_14_part_2 = "Yani eğer ching yapmaya çalışıyorsan kardeşim, bir kez daha bana gel, yalvarırım sana.",

		no_pills_15_part_1 = "Hayır, beni dinle kardeşim.. şu anda çok sinirlendiriyorsun beni.",
		no_pills_15_part_2 = "Buna yalan söyleyemem.",
		no_pills_15_part_3 = "O yüzden, uzaklaşmazsan adamı chinglemeye başlayacağım kardeşim.",

		not_leaving_1_muffled_part_1 = "Tamam, neden hala orada duruyor kardeşim?",
		not_leaving_1_muffled_part_2 = "O bir polis mi?",
		not_leaving_1_muffled_part_3 = "Ey, işte.. polis midir diye kontrol et bro, polis midir diye kontrol et bro.",

		not_leaving_2_part_1 = "Ey siktir git bro, buradan defol bro.",

		not_leaving_3_part_1 = "Bro, şu an burada olmak bırakabilir misin..",
		not_leaving_3_part_2 = "Bir şey yapmaya çalışıyorum. Anlıyor musun. ",
		not_leaving_3_part_3 = "Birdemi öpüyor. Sende burada mal mal bakakalmışsın, bro.",
		not_leaving_3_part_4 = "Siktir git bro.",

		not_leaving_4_part_1 = "Lütfen bro, buradan defol.",
		not_leaving_4_part_2 = "Ah- Tanrı aşkına dostum.",

		not_leaving_5_part_1 = "Dostum, şimdi ayarını kaçırıyorsun, yalan söyleyemem..",
		not_leaving_5_part_2 = "Gerçekten senin yanına gelip seni ıslatacağım dostum.",
		not_leaving_5_part_3 = "Bro hemen kaybolman iyi olur.",

		not_leaving_6_part_1 = "Dostum.. Buradaki büyük patron benim dostum.",
		not_leaving_6_part_2 = "Yer sahibi gibi davranmayı bırak, kendi işimi yapmak için kaybol dostum.",

		not_leaving_7_part_1 = "Şey, Tanrı aşkına, yine yaparsan destek dansçıları arayacağım dostum.",
		not_leaving_7_part_2 = "Onlar sana farklı bir şey yapacaklar, kardeşim.",

		not_leaving_8_muffled_part_1 = "Tamam, ıslat onu kardeşim, ıslat.. çok uzun sürüyor.",

		not_leaving_9_part_1 = "Kardeşim, seni büyük bir bıçakla getirtmemi isteme.",
		not_leaving_9_part_2 = "Benim bloğumda ayak basmayı kes orada kardeşim.",
		not_leaving_9_part_3 = "Kendine gelip işine bakman gerekiyor, çok uzun sürüyorsun kardeşim.",
		not_leaving_9_part_4 = "Sen benim evimdesin ve benim yerimdesin, büyük bir adam olduğunu mu sanıyorsun kardeşim?",
		not_leaving_9_part_5 = "Bekle dostum, seni yarrağım gibi sikerim.",

		not_leaving_10_muffled_part_1 = "Evet, bu adam köşede kendi mahallemdeymiş gibi bir şeyler yapıyor gibi, lanet olsun.",

		not_leaving_11_part_1 = "Hadi, yoluna git dostum, ilerle..",
		not_leaving_11_part_2 = "Sen burada bittiğin için bro.",

		not_leaving_12_muffled_part_1 = "Hey, bu adam için zor bir durum.",
		not_leaving_12_muffled_part_2 = "Çok uzun sürüyor dostum, hadi siktir git bro!",
		not_leaving_12_muffled_part_3 = "Seni şu anda görüyorum, hayatımdan çık bro!",

		not_leaving_13_muffled_part_1 = "Kanka! Bu adam bir şeyler için çok uzun süre alıyor gibi görünüyor..",
		not_leaving_13_muffled_part_2 = "O bir orospu çocuğu.. kesinlikle bir orospu çocuğu ya da bir şeyler var kanki..",
		not_leaving_13_muffled_part_3 = "Kesinlikle bir orospu çocuğu.",

		start_1_part_1 = "Kardeşim, buraya gel, buraya gel..",
		start_1_part_2 = "Yo, ay ay.. Daha fazla oxy'ye mi çalışıyorsun kanki?",
		start_1_part_3 = "Ayy, kanki sağol, sağol..",
		start_1_part_4 = "Ey, yapman gerekeni biliyorsun değil mi?",
		start_1_part_5 = "Ey, pingle sana göndereceğim şimdi kanka.",
		start_1_part_6 = "Ama sev işte.",

		start_2_part_1 = "Ay, naber bro! Gel buraya gerçek hızlı abi!",
		start_2_part_2 = "Evet evet.. yeniden oksijeni mi sürmeye çalışıyorsun bro?",
		start_2_part_3 = "Helal olsun abi senin için.",
		start_2_part_4 = "Ama tamam, ne yapacağını biliyorsun zaten, tabii ki biliyorsun bro.",

		start_3_part_1 = "Ay.. ay bro, gel bakayım bro, gel.",
		start_3_part_2 = "Yeniden oksijen mi sürmeye çalışıyorsun bro?",
		start_3_part_3 = "Gerçek mi? Oi, gel.. gel.. sen bir federasyon görevlisi değilsin değil mi?",
		start_3_part_4 = "Tamam.. tamam.. Ama sev işte, ay, ay, ne yapacağını biliyorsun zaten, sana ping'i ve diğerlerini göndereceğim bro.",

		start_4_part_1 = "Ay! Sen geçen seferki salak mısın?!",
		start_4_part_2 = "Oi, buraya gel kardeşim! Geçen sefer iyi bir iş çıkardın, yalan söyleyemem.",
		start_4_part_3 = "Yani işte, hadi tekrar yap kardeşim, ne yapacağını biliyorsun, sana ping'i gönderiyorum dostum.",
		start_4_part_4 = "Onun için teşekkürler.",

		start_5_part_1 = "Ay buraya gel sen küçük salak kardeşim!",
		start_5_part_2 = "Evet, evet, evet.. sen kimsin biliyorum - biliyordum kardeşim..",
		start_5_part_3 = "Bana anlatma, kim olduğunu umursamıyorum ama seni tanıyorum.",
		start_5_part_4 = "Ama aslında ne yapmanı istediğim, oxy haplarını tekrar çalıştırman gerekiyor.",
		start_5_part_5 = "Geçen seferki şeyler biliyorsun değil mi, bro? Ama talimatı biliyorsun değil mi?",
		start_5_part_6 = "Telefondan şeyi sana göndereceğim bro. Sağol.",

		start_6_part_1 = "Yooo, oradaki adamım geldi mi! Ne dersin, bro!",
		start_6_part_2 = "Ayy, nasılsın ve her şey.. adamım.",
		start_6_part_3 = "Yani, temel olarak, yine bir görev için sana ihtiyacım var..",
		start_6_part_4 = "Evet evet, ne söylediğimi biliyorsun, ne söylediğimi biliyorsun...",
		start_6_part_5 = "Oksi, evet evet, tabii ki biliyorsun. Ay, temel olarak telefonuna şeyi göndereceğim.",
		start_6_part_6 = "Ne yapman gerekiyorsa yap büyük kardeşim, bunun için teşekkürler.",

		start_7_part_1 = "Evet, evet, evet, evet, evet, bu öncedenki mal arkadaş!",
		start_7_part_2 = "Bu adamı hatırlıyorum! Evet, ay, sen eğlenceli bir adamsın kardeşim, seni seviyorum, seni seviyorum...",
		start_7_part_3 = "Oi, yeniden oksiyi getirmeni istiyorum, yalan söyleyemem. Bu yüzden hızlı ol büyük adam.",
		start_7_part_4 = "Sana ping'i göndereceğim, detayları göndereceğim.. Evet, evet..",
		start_7_part_5 = "Ve aklında bulunsun..",
		start_7_part_6 = "Yarısı benim olan şeylerden hiçbirini almaya kalkma yoksa seni burada vururum, tamam mı?",

		start_8_look_to_sides_part_1 = "Ey adam, Gogginschmiel'i oradan geçerken gördüğüme yemin edebilirim..",
		start_8_look_to_sides_part_2 = "Gel buraya, buraya, buraya adamım, kendini kurban etme.",
		start_8_look_to_sides_part_3 = "Şimdi yapman gereken şey, o hapları benim için almak.",
		start_8_look_to_sides_part_4 = "Patron, senin için ilaçları çalıştırmanı istiyorum tamam mı?",
		start_8_look_to_sides_part_5 = "Sana ayrıntıları göndereceğim, beni anladın mı?",
		start_8_look_to_sides_part_6 = "Ama kafanı aşağı tut, çünkü çok sayıda polis görüyorum, tamam mı?",
		start_8_look_to_sides_part_7 = "Ama yakalanırsan! Beni ihbar etme, yoksa sen de ölüsün kardeşim!",
		start_8_look_to_sides_part_8 = "Anladın mı? Teşekkürler.",

		start_9_look_to_sides_part_1 = "Hey, oradan bir polis geçtiğini gördüm!",
		start_9_look_to_sides_part_2 = "Emin misin takip edilmediğinden veya hiçbir şeyden haberdar değil misin?",
		start_9_look_to_sides_part_3 = "Çünkü ben- ay FIB şu anda bir sonraki seviye işler yapıyorlar dostum.",
		start_9_look_to_sides_part_4 = "Havada çılgınca helikopterleri var ve filan dostum.",
		start_9_look_to_sides_part_5 = "Ben her şeyi görüyor ve biliyorum dostum. Bana güven.",
		start_9_look_to_sides_part_6 = "Evet evet.. o daha önce senin üzerindeydi dostum, hatırlıyor musun- o charger'ı geçtiğin hatırlıyor musun dostum?",
		start_9_look_to_sides_part_7 = "Ama ışıkları açmadı mı? Ama güven bana..",
		start_9_look_to_sides_part_8 = "Evet, onu biliyorum, onu biliyorum.",

		start_burger_shot_part_1 = "Yo, bir keresinde Burger Shot'ta seni gördüm.. köfteleri çeviriyor musun?",
		start_burger_shot_part_2 = "Evet, yalan söyleyemem, kesinlikle paraya ihtiyacın var.",

		start_cop_1_part_1 = "Yo, Maze Bank'ten bir polisi kokluyorum bro..",
		start_cop_1_part_2 = "Bir polis olduğunu söyleyebilirim.",
		start_cop_1_part_3 = "Küçük erkek polis arabana kadar havalanmadan önce destek çağırmalısın bro.",

		start_cop_2_part_1 = "Merhaba memur, Blaine County'in hasta insanlarına yardım ediyoruz.",
		start_cop_2_part_2 = "Burada hiçbir yasa dışı şey yapmıyoruz dostum.",

		start_gang_member_part_1 = "O çetelerden birinin sizi tekmelediğini gördüm yemin ederim..",
		start_gang_member_part_2 = "Evet evet, kesinlikle sana çok sert vurdular, o aptal yüz boyasıyla durumun ortada.",

		start_group_part_1 = "Ey bu aralar biraz oxy satıp para kazanmak isteyen adamların olduğunu duydum.",
		start_group_part_2 = "Yalan söyleyemem, şu an ne kadar çok insan o kadar iyi ama hapları sadece birinize verebilirim.",
		start_group_part_3 = "Öyleyse güzelce yap, küçük takımınla git ve bu işi halledin dostum.",
		start_group_part_4 = "'Çünkü zaman şu anda para demek dostum, ne demek istediğimi anlıyor musun?'",
		start_group_part_5 = "Burada durarak fazla zaman kaybediyorsun dostum, acele et lan, defol dostum.",

		start_knife_part_1 = "Tamam, bu senin belindeki büyük bir Rambo mu bro!",
		start_knife_part_2 = "Burada o şeyi savurman iyi olmaz çünkü kardeşim sana zor gelebilir!",

		start_last_fail_part_1 = "Yooo, oradan benim adamım mı geldin, neyse ne yapıyorsun dostum? Selam nasılsın hepsi, adamım!",
		start_last_fail_part_2 = "Ama temel olarak.. Yalan söyleyemem tekrar senin yardımına ihtiyacım var bir küçük misyon için...",
		start_last_fail_part_3 = "Evet evet.. Ne demek istediğimi biliyorsun, oksijen, evet, tabii ki biliyorsun.",
		start_last_fail_part_4 = "Ama, temel olarak telefonundan sana şeyi göndereceğim.",
		start_last_fail_part_5 = "Büyük abi, yapman gerekeni yap, bu için teşekkürler.",

		start_legendary_tier_part_1 = "Aa, yani sen böyle büyük top mu oldun?",
		start_legendary_tier_part_2 = "Efsanevi seviye, Tamam, EDM partisi için bütün katı satın alman gerekebilir kardeşim!",
		start_legendary_tier_part_3 = "Hadi ama.",

		start_mechanic_part_1 = "Selam, arabaları tamir ediyor musun?",
		start_mechanic_part_2 = "Yo kardeşim, bundan sonra Asbo'umun ayarını yapman gerekecek çünkü çok fazla ezik mevcut bro.",

		start_mercedes_part_1 = "Yo bu Mercedes'e bayılıyorum dostum!",
		start_mercedes_part_2 = "Yalan söyleyemem, buradaki küçük şeyle işin bittikten sonra onu bana vereceksin bro.",

		start_no_gun_part_1 = "Kardeşim, buraya arkadaş ziyaretinde gelip soyulmayacağını düşünüyorsun.",
		start_no_gun_part_2 = "Ooter'ler şu anda dışarıda olman şanslısın ama..",
		start_no_gun_part_3 = "Bir dahaki sefere silahını yanında tutman iyi olur.",

		start_on_timer_1_part_1 = "Sana yalan söyleyemem, son seferinde başarısız oldun, şimdi burada ne yapıyorsun?",
		start_on_timer_1_part_2 = "Hayır dostum, kendine gelene kadar başka bir zaman gel.",

		start_on_timer_2_part_1 = "Hayır dostum, daha önce bana başarısız oldun..",
		start_on_timer_2_part_2 = "Başka bir şey yap ve uğraşma adamım.",

		start_on_timer_3_part_1 = "Öyle mi? Böyle hatalar yaptıktan sonra buraya gelip ne yapmayı planlıyorsun dostum?",
		start_on_timer_3_part_2 = "Hayır, sen iyi olmadan önce uzaklaşman daha iyi, kardeşim!",

		start_on_timer_4_part_1 = "Evet, yalan söyleyemem son seferinde fazlasıyla hatalar yaptın kardeşim...",
		start_on_timer_4_part_2 = "Yalan söyleyemem, birkaç saniye daha burada kalırsan senin için biraz zor görüneceğini söyleyebilirim..",

		start_on_timer_5_part_1 = "Selam, ne haber?",
		start_on_timer_5_part_2 = "Yalan söyleyemem, sen son seferinde fazlasıyla hatalar yaptın kardeşim, ilaçları bile alamadın.",
		start_on_timer_5_part_3 = "Yani büyük bir hata yaptın kardeşim, gerçekten..",
		start_on_timer_5_part_4 = "Hiçbir zaman buraya gelme 'bro'! Ne demek istediğimi biliyorsun değil mi?",
		start_on_timer_5_part_5 = "Adını biliyorum, yüzünü gördüm. Burada bitmişsin 'bro'.",

		start_on_timer_6_part_1 = "Evet, bu adam kendini kötü çocuk sanıyor mu? Beni sıkıntıya sokuyor ve geri dönüp üzgün gibi davranıyor..",
		start_on_timer_6_part_2 = "Hayır 'bro', burada işler böyle yürümüyor.",
		start_on_timer_6_part_3 = "Hemen uzaklaşman daha iyi arkadaşım!",

		start_on_timer_7_part_1 = "Evet, yalan söyleyemem, bu adam çok büyük bir yanlış yaptı..",
		start_on_timer_7_part_2 = "Bu adama bak, görüyor musun? Bu salak burada, evet mi?",
		start_on_timer_7_part_3 = "Orospu çocuğu işini şaşırdı, haydi buraya gel!",
		start_on_timer_7_part_4 = "Evet, yalan söyleyemem, sen bir salaksın, haydi buradan çık, sonra geri gel.",

		start_on_timer_8_part_1 = "Sen bir çeşit adamsın dostum..",
		start_on_timer_8_part_2 = "Bu adam benim işime bulaşıyor dostum.. Malesef benim insanlarımı da öfkelendiriyor dostum.",
		start_on_timer_8_part_3 = "Sonra geri gelip ödeme bekliyor, ama ödeme yapmayı bekleme dostum!",
		start_on_timer_8_part_4 = "Ekmek beklemene gerek yok abi.. ekmek istemiyorsun abi..",
		start_on_timer_8_part_5 = "Sana bazı kırıntılar veriyorum abi.. benim sokağımdan defol!",
		start_on_timer_8_part_6 = "Buradan git abi, işin bitti.",
		start_on_timer_8_part_7 = "Telefonda bir sinyal daha var abi, sen bittin abi! Bunu başka birine devrediyorum.",

		start_over_31d_part_1 = "Yok artık abi! Sen burada çok uzun süredir..",
		start_over_31d_part_2 = "Beynimden bir şeyler parçalayıp geri gel abi.",

		start_over_100k_part_1 = "Niye bu kadar bok satarak uğraşıyorsun? Adamlar senin adına 100 çanta varken!",
		start_over_100k_part_2 = "Bunlar nakit paralar mı? Yoksa seni soymak için adamlarımı göndermem gerekiyor mu abi?",

		start_revving_part_1 = "Tamam kardeşim, sen bu berbat arabayı it küt diye çalıştırmaya devam edersen sorun olacak.",
		start_revving_part_2 = "Ayaklarını hafifletmeden önce seni hafifletirim, sakın deneme canım!",

		start_staff_1_part_1 = "Ey bro... Senin işin salakları yasaklamak ve benimle konuşmak değil miydi?",
		start_staff_1_part_2 = "Kafayı verdim, ekmek lazım ama siz yöneticileri izliyorum.",

		start_staff_2_part_1 = "Broo, bugün oksijen satan ikinci moderatörsün gibi görünüyorsun..",
		start_staff_2_part_2 = "İşinizde olmalısınız, ancak bu işte değil.",

		start_streamer_part_1 = "Yoooo, bu büyük olarak tanınan yayıncı zanneden çocuk!",
		start_streamer_part_2 = "Chat'e Ls akın edin, bu adamı sikin bro!",

		start_stressed_part_1 = "Bro! Neden ellerin titriyor?!",
		start_stressed_part_2 = "Bir sigara molası ver ya da bir şeyler iç çünkü çok stresli hareket ediyorsun şu anda.",

		start_subaru_part_1 = "Ey, bu Subaru iyi bir arazi aracı mı dostum!",
		start_subaru_part_2 = "'Çünkü seni götüreceğim iz bambaşka bir iz!",

		start_under_10k_part_1 = "Dostum, adın kadar paran yok biliyorum!",
		start_under_10k_part_2 = "Bu yüzden hadi hemen yerine bu hapları al ve git.. acele et kardeşim.",

		start_under_24h_part_1 = "Harikasın dostum! Devam et.",

		start_zombie_pills_part_1 = "Tamam, şimdi Z haplarını kullanarak ve ardından Oxy haplarını kullanmak istiyorsun..",
		start_zombie_pills_part_2 = "Hayır, kesinlikle uyuşturucu bağımlısısın!",

		still_pressing_e_1_part_1 = "Tamam kardeş, neden yaşıyorsun kardeşim?",
		still_pressing_e_1_part_2 = "Sürüş alanına geri gitmeyi bırakın. Sana ping attım, telefonunu kontrol et adamım.",
		still_pressing_e_1_part_3 = "Evet evet, şunu kontrol et.. şunu kontrol et..",

		still_pressing_e_2_part_1 = "Kardeşim, sen bi aptal mısın nedir?",
		still_pressing_e_2_part_2 = "Az önce sana ping attım kardeşim, kör müsün sen kardeşim?",
		still_pressing_e_2_part_3 = "Telefonunu kontrol et kardeşim, defol git kardeşim!",

		still_pressing_e_3_part_1 = "Aman Tanrım, yalan söyleyemem, sen bunu bana bir daha yaparsan, sana çok defa söyledim adamlığını kaybedersin dostum..",
		still_pressing_e_3_part_2 = "Bir kez daha yaparsan, sana kesinlikle ootersı gönderirim bro.",

		still_pressing_e_4_part_1 = "Şimdi dalga geçiyorsun, defol bro!",

		still_pressing_e_5_part_1 = "Brooo, aptal mısın ya da bir şey mi?",
		still_pressing_e_5_part_2 = "Böyle büyük çocuk sesinle benimle konuşmaya devam etmek için geri mi gelirsin?",
		still_pressing_e_5_part_3 = "Dostum, şu anda geri çekilmen daha iyi olur yoksa senin belanı veririm, Allah aşkına!",

		still_pressing_e_6_muffled_part_1 = "Bu adam gerçek bir mal.",

		still_pressing_e_7_muffled_part_1 = "Bu adam gerçek bir mal abi.",
		still_pressing_e_7_muffled_part_2 = "Gerçekten bir mal, sürekli geri dönüyor!",
		still_pressing_e_7_muffled_part_3 = "Daha da sinirleneceğimi sanıyor ama artık sinirlenmiyorum abi!",

		still_pressing_e_8_part_1 = "Şu an çok sinirli olduğumu saklayamam.",
		still_pressing_e_8_part_2 = "O yüzden artık E'ye basmayı bırak.",

		still_pressing_e_9_part_1 = "E'ye basmaya devam edersen gerçekten sinirleneceğim.",
		still_pressing_e_9_part_2 = "Meta yapacağım ve seni patlatacağım, sana çüküm.",

		taking_too_long_1_part_1 = "Hey dostum, biraz fazla uzun süredir bekliyorsun, ne demek istediğimi anlıyorsun değil mi..",
		taking_too_long_1_part_2 = "Acele etmen gerekiyor.",

		taking_too_long_2_part_1 = "Hey, bu kadar uzun süre beklersen, senin için büyük sorunlarımız olacak, ne demek istediğimi anlıyorsun değil mi?",
		taking_too_long_2_part_2 = "Artık çok geç dostum, artık çok geç.. acele et dostum.",

		taking_too_long_3_part_1 = "Hey dostum, çok uzun sürüyor, benim işimi mi çalacaksın yoksa?",

		taking_too_long_5_part_1 = "Ne kadar komik olduğunu mu sanıyorsun, büyük adam? Bu bir şaka mı senin için?",
		taking_too_long_5_part_2 = "Gel, şimdi hemen yanıma gel, ne olacağını gör bro.",

		taking_too_long_6_part_1 = "Şaka mı yapıyorsun lan? Şimdi hemen istediğim şeyi vermelisin.",
		taking_too_long_6_part_2 = "Acelem var lan!",

		taking_too_long_7_part_1 = "Hangi arabayla gittiğini biliyorum..",
		taking_too_long_7_part_2 = "Gittiğinde seni gördüm, güvende olduğunu sanma bro.",

		taking_too_long_8_part_1 = "Tamam, yeter artık.. Bu son şansın kardeşim.",
		taking_too_long_8_part_2 = "Eğer tekrar uzun sürersen, oooterları arayacağım ve senin için sıkıntılı olacak.",
		taking_too_long_8_part_3 = "Bunu hızlı bir şekilde halletmen daha iyi olacak... saat tık tık tikliyor kardeşim.",

		too_many_people_1_part_1 = "Hey, yalan söyleyemem, şu anda etrafımda bir sürü insan var kardeşim!",
		too_many_people_1_part_2 = "Neden buradasınız? Yerimi mi ele geçirmeye çalışıyorsunuz kardeşim?",
		too_many_people_1_part_3 = "Çünkü Tanrı'ya yemin ederim ki, birilerini öldürmek için hazır davul vurma ve makinelerim var.",
		too_many_people_1_part_4 = "Anlayacağın abi ben ne demek istediğimi söylüyorum..",
		too_many_people_1_part_5 = "Hepiniz geri gidin, hepiniz dedim, evet bu sen demek, sana d.mn ç..k bro!",

		too_many_people_2_part_1 = "Yo yalan söyleyemem, şu anda çok fazla insan var abi..",
		too_many_people_2_part_2 = "Sen şu anda tüm bu adamların yanında hareket ediyorsun ve hepsi de tehlikeli görünüyor abi.",
		too_many_people_2_part_3 = "Sen buranın etrafında sadece 1 kişi olduğunu söyledin abi, ama burada 4 kişi gibi davranıyorsun abi.",
		too_many_people_2_part_4 = "Umurumda değil sen bir çete üyesi olursan ne olursun kardeşim, umrumda değil. Hayır kardeşim umrumda değil..",
		too_many_people_2_part_5 = "Hemen sen ve adamlarını geri çekme zamanı geldi, yoksa ciddiye almak zorunda kalacağız kardeşim.",

		tutorial_1_part_1 = "Selam kardeşim, oxy yapmak istiyor musun?",
		tutorial_1_part_2 = "Harika! Şu anda sana ihtiyacım olduğunu inkar edemem. ",
		tutorial_1_part_3 = "Şimdi dinle...",
		tutorial_1_part_4 = "Sana kuzeyde benim adım için hazırlanmış birçok reçete var.",
		tutorial_1_part_5 = "Evet ama yalana ihtiyacım yok, ama bunları benim yerime alman gerekecek - ",
		tutorial_1_part_6 = "Ve sonra sana ne yapman gerektiğini söyleyeceğim - Dinle beni dostum, söylediğim zaman benimle konuştuğunu biliyorsun!",
		tutorial_1_part_7 = "Şehre indir onları.. ve onları değiştir!",
		tutorial_1_part_8 = "Evet.. evet.. değiştirmen lazım dostum.",
		tutorial_1_part_9 = "Evet, sana tüm ayrıntıları telefonda göndereceğim, GPS'ini kontrol etmen yeterli dostum, senin için yapacağım.",
		tutorial_1_part_10 = "Ama dostum, çok uzun sürdürme, aksi takdirde arkandan gelecekler.",
		tutorial_1_part_11 = "Ve inan bana, bu senin için iyi görünmüyor, yalan söyleyemem.",
		tutorial_1_part_12 = "Evet hadi gidelim abi.. benimle konuşma, yüzüme bakma ve acele et lan.",

		tutorial_2_part_1 = "Ey ne haber abi? Benim için bazı oksijen koşturmak istiyor musun abi?",
		tutorial_2_part_2 = "Yoo, tamamdır! Ay, şimdi sana yalan söyleyemem, hepsinde yardıma ihtiyacım var abi.",
		tutorial_2_part_3 = "Yo abi, üst taraflarda bana yönelik bir sürü sahte reçete var.",
		tutorial_2_part_4 = "Sana ihtiyacım olan şey, bu reçeteleri alıp getirmen, kardeşim-",
		tutorial_2_part_5 = "Evet, ve şimdi dinle- dinle kardeşim, onları şehre götür ve eczanelerde kullan.",
		tutorial_2_part_6 = "Evet, evet, evet, evet..",
		tutorial_2_part_7 = "Evet, sana detayları telefonda göndereceğim, GPS'ini kontrol etmen yeter, sana yardımcı olacağım.",
		tutorial_2_part_8 = "Ama acele etmen gerekiyor, aksi takdirde seni arayarak sıkıntı yaratabilirim, kardeşim.",
		tutorial_2_part_9 = "Ve bana güvenin, o senin için iyi görünmüyor, yalan söyleyemem.",
		tutorial_2_part_10 = "Evet, hadi gidelim kardeşim, benimle konuşmayı bırak, yüzüme bakmayı bırak ve acele et kardeşim.",

		tutorial_3_part_1 = "Selam kardeşim. Şu an için benimle biraz oksijen çalıştırmak ister misin?",
		tutorial_3_part_2 = "Evet... evet... bu iyi ama söyleyebilirim ki, bütün bunlarda yardıma ihtiyacım var.",
		tutorial_3_part_3 = "Evet, evet, evet... kuzeyde bana özgü reçete yaptırdığım bir sürü sahtekarlık var. Bana güvenin.",
		tutorial_3_part_4 = "Evet, ama yalan söyleyemem, REÇETELERİNİ benim için ALMAN gerekiyor.",
		tutorial_3_part_5 = "Ve sonra temel olarak, şehire gidip farklı eczanelerde bunları REÇETELERİNİ bozdurman gerekiyor, kardeşim.",
		tutorial_3_part_6 = "Evet senin için halledeceğim çünkü şu anda ne yapacağım",
		tutorial_3_part_7 = "Gördün mü, kardeşim? Rota sana gönderildi, GPS'ini kontrol et.",
		tutorial_3_part_8 = "Ama çok uzun sürme, çünkü seni takip eden kişiler gelirse başın belaya girer. Acele et, büyük adam.",
		tutorial_3_part_9 = "Hadi büyük kardeşim, başla bana konuşmaktan ve yüzüme bakmaktan vazgeç ve acele et lan.",
		tutorial_3_part_10 = "Aşk kardeşim, aşk."
	},

	panel = {
		loading_title = "Yükleniyor",
		error_title = "Bir şeyler yanlış gitti",

		was_banned = "Yasaklanmış",
		loading = "Oyuncu verileri yükleniyor...",
		no_warnings = "Uyarı yok",
		not_shown_warnings = "${count} uyarı daha gösterilmedi",
		system_issuer = "Sistem",
		add_warning_title = "Uyarı Ekle",
		message_placeholder = "${playerName} bir hata yaptı...",

		type_note = "Not",
		type_warning = "Uyarı",
		type_strike = "Ceza",
		type_system = "Sistem",

		button_cancel = "İptal",
		button_add = "Ekle",
		button_close = "Kapat",
		button_new = "Yeni",

		invalid_server_id = "Geçersiz sunucu id'si.",

		failed_load_player = "Oyuncu verileri yüklenemedi. Geçerli bir sunucu id'si girdiniz mi?",
		failed_add_warning = "Uyarı eklenemedi.",

		get_info_no_permissions = "Oyuncu, yeterli izinlere sahip olmadan bir oyuncu hakkında bilgi almaya çalıştı.",

		user_indefinitely_banned_warning_no_reason = "Bu kişiyi belirtilen bir neden olmadan süresiz yasakladım. Bu uyarı yasağın bir sonucu olarak otomatik olarak oluştu.",
		user_indefinitely_banned_warning = "Bu kişiyi sebep olarak `${reason}` göstererek süresiz olarak banladım. Bu uyarı ban sonucu otomatik olarak oluşturuldu.",
		user_temporarily_banned_warning_no_reason = "Bu kişiyi belirtilen bir sebep olmadan ${displayTime} kadar süreyle banladım. Bu uyarı ban sonucu otomatik olarak oluşturuldu.",
		user_temporarily_banned_warning = "Bu kişiyi `${reason}` sebebi ile ${displayTime} süreyle banladım. Bu uyarı ban sonucu otomatik olarak oluşturuldu."
	},

	panic = {
		press_panic_button = "Panik butonunu (X) kullanmak için 5 saniyeniz var.",
		panic_button_timeout = "Zamanında panik butonuna basmadınız.",

		panic_button_title = "[Merkez]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} yerde.",
		panic_button_no_unit = "10-14, ${lastName} ${label} yerde.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "polis memuru",
		label_paramedic = "paramedik"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] Kağıt torba doldur",
		no_bags = "Hiç kağıt torbanız yok.",
		no_bag_items = "Kağıt torbaya koyabileceğiniz hiçbir öğeniz yok.",
		close_bag = "Çanta Kapat",
		cancel_bag = "İptal",
		title = "Kağıt Çanta",
		failed_fill = "Kağıt çantayı doldurma başarısız oldu.",
		filled_bag = "Kağıt çanta başarıyla dolduruldu."
	},

	parking_meters = {
		not_paid = "Ödenmedi",
		insert_dollar = "[${InteractionKey}] $${amount} ekle",

		no_cash = "Dolarınız yok.",
		max_time = "Bu parkmetre zaten maksimumda.",
		failed_pay = "Parkmetreye ödeme yapılamadı."
	},

	pawn_shops = {
		sell_items = "${itemLabel} sat",
		press_to_sell_items = "[${InteractionKey}] ${itemLabel} sat",
		sold_items = "${sellAmount}x ${itemLabel} satıldı, fiyat: $${sellPrice}.",
		no_items_to_sell = "${itemLabel} satacak hiçbir şeyiniz yok.",
		daily_limit_reached = "Günlük sınırınıza ulaştınız, satıcı daha fazla ürün almıyor.",
		illegal_pawn_shop_id = "Var olmayan bir rehinciye değerler aktarmaya çalışıyorsunuz.",
		used_pawn_shop_title = "Kullanılan Rehinci",
		used_pawn_shop_details = "${consoleName} bir rehinci kullandı ve ${sellAmount} `${itemLabel}` sattı ve $${sellPrice} aldı."
	},

	ped_messages = {
		attempt_succeeded = "${attemptMessage} denendi ve başarılı oldu",
		attempt_failed = "${attemptMessage} denendi ancak başarısız oldu",
		dice_message = "zar attı ve ${diceNumber} geldi",
		roll_message = "özel ayarlarla ${rolls}d${max} zar attı ve ${totalValue} geldi",
		citizen_card_message = "bir kimlik kartı gösterdi (${characterId})",
		badge_message = "bir rozet gösterdi (${characterId})",
		license_message = "bir lisans gösterdi (${characterId})",
		ped_message_logs_title = "Ped Mesajı",
		ped_message_logs_details = "${consoleName} şu mesajı ile bir ped mesajı gönderdi: `${pedMessage}`",
		attached_ped_message_logs_title = "Bağlı Ped Mesajı",
		attached_ped_message_logs_details = "${consoleName} şu mesajıyla bir ped mesajı ekledi: `${pedMessage}`",
		chat_ped_messages_enabled = "Ped mesajları artık sohbet penceresinde görüntülenecek.",
		chat_ped_messages_disabled = "Ped mesajları artık sohbet penceresinde görüntülenmeyecek.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/incele [${serverId}]",
		frisk_chat_title = "/arama [${serverId}]",
		do_message_chat_title = "/yap [${serverId}]",
		attempt_message_chat_title = "/teşebbüs [${serverId}]",
		dice_message_chat_title = "/zar [${serverId}]",
		roll_message_chat_title = "/at [${serverId}]",
		description_message_chat_title = "/açıklama [${serverId}]",
		message_too_long = "Mesaj çok fazla karakter veya satır içeriyor!",
		card_command_wait = "Bir kart çektiniz, başka bir kart çekmeden önce biraz bekleyin.",
		ped_message_timeout = "Yavaşlayın, başka bir mesaj göndermeden önce biraz bekleyin."
	},

	ped_objects = {
		illegal_ped_object = "'İzin verilen' ped nesnesi listesinde olmayan bir ped nesnesi eklenmeye çalışıldı.",
		illegal_ped_weapon_object = "Silah listesinde olmayan bir ped silah nesnesi eklenmeye çalışıldı."
	},

	ped_task = {
		network_id_invalid = "Geçersiz ağ kimliği.",
		ped_not_found = "Ağ kimliği `${networkId}` olan karakter bulunamadı.",
		tracked_ped = "İzlenen Karakter",
		tracked_ped_is = "Karakter (${entity}) şu şekildedir:"
	},

	ped_spawn = {
		ped_missing_model = "Eksik model parametresi.",
		ped_spawn_success = "Karakter başarıyla doğuruldu.",
		ped_failed_spawn = "Karakter doğurma başarısız oldu.",
		invalid_weapon = "Geçersiz silah.",
		ped_remove_success = "Doğurulmuş karakterler başarıyla kaldırıldı.",
		ped_failed_remove = "Doğurulmuş karakterleri kaldırma başarısız oldu.",
		ped_task_success = "Doğurulan karakterlere '${task}' görevi başarıyla atandı.",
		ped_failed_task = "Oluşturulan yaya karaktere '${task}' görevi atanamadı.",
		invalid_target = "Geçersiz hedef sunucu ID'si.",
		missing_task = "Görev parametresi eksik.",
		invalid_task = "Geçersiz yaya karakter görevi '${task}'.",
		target_required = "Bu yaya karakter görevi geçerli bir hedef gerektirir.",
		ped_emote_success = "Oluşturulan yaya karakterler başarıyla '${emote}' emotesini yaptılar.",
		ped_failed_emote = "Oluşturulan yaya karakterlere '${emote}' emotesini yaptırmak başarısız oldu.",
		invalid_emote = "Geçersiz '${emote}' emote.",
		missing_emote = "Emote parametresi eksik.",

		emote_list = "Mevcut yaya karakter emote'leri: ${list}.",
		task_list = "Mevcut ped görevleri: ${list}.",

		spawn_ped_missing_perms = "Gereken izinlere sahip olmadan bir ped oluşturulmaya çalışıldı.",
		remove_peds_missing_perms = "Gereken izinlere sahip olmadan oluşturulmuş pedler kaldırılmaya çalışıldı.",
		ped_assign_task_missing_perms = "Gereken izinlere sahip olmadan oluşturulmuş pedlere görev atandı."
	},

	ped_steal = {
		ped_steal_reset = "Oyuncu pedi sıfırlandı.",
		ped_steal_success = "Ped kostümü başarıyla çalındı.",
		ped_steal_failed = "Ped kostümü çalınamadı.",
		ped_not_found = "Oyuncu pedi bulunamadı.",
		invalid_server_id = "Geçersiz sunucu kimliği."
	},

	ped_takeover = {
		failed_reset = "Orijinal pede geri dönüş başarısız oldu.",
		failed_reset_not_exist = "Orijinal pediniz yok veya yakınınızda değil.",
		failed_takeover = "Ped ele geçirme başarısız oldu.",
		invalid_network_id = "Geçersiz ag kimliği."
	},

	peds = {
		ped_robbing_injection = "Aşırı ped soygunu! (Sunucu zaman aşımı atlatıldı, muhtemelen bir enjektör kullanılarak gerçekleştirildi.)",
		robbed_ped_logs_title = "Soyulan Ped",
		robbed_ped_logs_details = "${consoleName} bir pedi soydu ve $${payout} aldı."
	},

	pepper_spray = {
		press_to_pepper_spray = "Biber Gazı kullanmak için ~INPUT_ATTACK~ tuşuna basın.",
		using_pepper_spray = "Biber Gazı kullanılıyor."
	},

	phone = {
		app_settings = "Ayarlar",
		app_contacts = "Kişiler",
		app_calls = "Arama",
		app_messages = "Mesajlar"
	},

	phone_numbers = {
		no_phone_number_set = "Telefon numarası belirtilmedi.",
		invalid_format = "Belirtilen telefon numarası geçersiz format.",
		invalid_length = "Belirtilen telefon numarası geçersiz uzunluk.",
		invalid_characters = "Belirtilen telefon numarası geçersiz karakterler içeriyor.",
		phone_number_changed_to = "Telefon numaranız `phoneNumber` olarak değiştirildi.",
		phone_number_taken = "Telefon numarası `${phoneNumber}` başkası tarafından kullanılmaktadır.",
		database_error = "Arka plandaki veritabanında bir hata oluştu.",
		no_packages = "Bu için herhangi bir paketiniz yok.",
		api_error = "Arka plandaki API'miz bir hata döndürdü.",
		api_not_available = "Arka plandaki API'miz mevcut değil.",
		phone_number_is_available = "Telefon numarası `${phoneNumber}` kullanılabilir durumda.",
		phone_number_is_not_available = "Telefon numarası `${phoneNumber}` kullanılamaz durumda."
	},

	pictures = {
		selfie_description = "${firstName} ${lastName}'nin fotoğrafı."
	},

	player_control = {
		unable_to_drive_for_yourself = "Kendinizi yönlendiremezsiniz.",
		drive_for_player_no_permissions = "Oyuncu, başka bir oyuncu için sürmek için gerekli izne sahip değil.",
		player_is_not_nearby = "Sunucu Kimliği ${serverId} olan oyuncu yakında değil.",
		player_is_not_the_drive_of_a_vehicle = "Sunucu Kimliği ${serverId} olan oyuncu aracın sürücüsü değil.",
		press_to_stop_drive_for = "Oyuncu için sürmeyi durdurmak için ~INPUT_FRONTEND_CANCEL~ tuşuna basın."
	},

	player_scales = {
		reset_player_scale_for = "${consoleName} oyuncusunun ölçeğini sıfırla.",
		set_player_scale_to_for = "${consoleName} için oyuncu ölçeği `${scale}` olarak ayarlandı.",
		reset_player_scale = "Oyuncu ölçeği sıfırlandı.",
		set_player_scale_to = "Oyuncu ölçeği `${scale}` olarak ayarlandı.",
		set_player_scale_no_permission = "Oyuncu, bir oyuncunun ölçeğini ayarlamak için gerekli izne sahip değil.",
		player_is_already_set_to_scale = "${consoleName}, zaten `${scale}` ölçeğinde ayarlandı.",
		you_are_already_set_to_scale = "Zaten `${scale}` ölçeğinde ayarlandın.",
		player_is_not_scaled = "${consoleName}, ölçeksiz.",
		you_are_not_scaled = "Boyutunuz ölçeklendirilmemiş."
	},

	player_stats = {
		hp = "Sağlık",
		armor = "Zırh",
		toggle_player_stats_no_permissions = "Oyuncu, uygun izinlere sahip olmadan oyuncu istatistiklerini açmaya çalıştı.",
		updated_render_range = "Görüntüleme mesafesi ${renderRange} olarak güncellendi.",
		turned_player_stats_on = "Oyuncu istatistikleri açıldı.",
		turned_player_stats_off = "Oyuncu istatistikleri kapatıldı."
	},

	players = {
		player_left = "Oyuncu ayrıldı [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "Soyunma dansı için ~INPUT_CONTEXT~ tuşuna bas.",
		this_pole_is_occupied = "Bu direk meşgul.",
		stop_dancing = "Dansı Durdur",
		change_dance = "Dans Değiştir (${animationId})",

		no_model_name_set = "Model adı belirtilmemiş.",
		invalid_model = "Geçersiz model '${modelName}'.",
		pole_dancing_offset = "Model '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "Havuzlar taşıyor: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "Oyuncu yasaklı bir öğe kimliği ile bir özellik öğesi kullanmaya çalıştı.",
		spawn_prop_not_staff = "Oyuncu bir özellik oluşturmaya çalıştı ancak buna yapma izni yoktu.",
		managing_props_help = "Mevcut olarak props yönetiyorsun. Bir prop'a yaklaşın ve almak için ~INPUT_CONTEXT~ tuşuna basın.",
		total_props = "Toplam Prop: ${count}",
		active_props = "Aktif Prop: ${count}",
		press_to_pick_up = "[${InteractionKey}] Topla",
		pick_up = "Topla",
		picking_up = "Toplanıyor",
		press_to_destroy = "[${InteractionKey}] Yık",
		destroy = "Yık",
		destroying = "Yıkılıyor",
		prop = "Prop",
		model_parameter_missing = "`model` parametresi eksik.",
		model_parameter_invalid = "Model `${model}` geçersiz bir model.",
		model_parameter_is_not_an_object = "Model '${model}' bir nesne değil.",
		spawned_prop_non_networked = "Ağ ile bağlantısı olmayan '${model}' modeli ile bir nesne spawn edildi.",
		spawned_prop_networked = "Ağ ile bağlantılı '${model}' modeli ile bir nesne spawn edildi.",
		spawned_exact_prop = "Tam olarak belirtilen nesne spawn edildi.",
		failed_to_spawn_prop = "'${model}' modeli ile nesne spawn etme başarısız oldu.",
		not_able_to_spawn_in_vehicle = "Bir araçta iken nesne spawn edemezsiniz.",
		not_able_to_spawn_while_dead = "Ölü iken nesne spawn edemezsiniz.",
		not_able_to_spawn_while_moving = "Bir prop yerleştirirken durmanız gerekiyor.",
		stand_still_to_place_prop = "Bir prop yerleştirmek için durmanız gerekiyor.",
		prop_no_interior = "Sadece bu prop dışarıda yerleştirilebilir.",

		invalid_prop_id = "Geçersiz prop idsi.",
		prop_deleted = "${propId} kimliğiyle prop silindi.",

		invalid_wipe_radius = "Geçersiz silme yarıçapı (1 ile 100 arasında).",
		wipe_successful = "Prop'lar başarıyla silindi.",
		wipe_props_missing_permissions = "Oyuncu, prop'ları silmeye çalıştı ama bunu yapmak için gerekli izinlere sahip değildi.",

		placing_prop = "Eşya Yerleştiriliyor",
		pickup_prop = "Eşya Toplanıyor",
		setting_up_tire_wall = "Lastik Duvarı Kuruluyor",
		destroying_tire_wall = "Lastik Duvarı Yıkılıyor"
	},

	radio = {
		frequency = "Frekans",
		switch = "Anahtar",
		radio_turned_off = "Radyo kapatıldı.",
		radio_removed = "Radyonuzu kaybettiniz.",
		no_radio = "Radyonuz yok.",
		unable_to_use_radio_while_cuffed = "Kelepçeliyken radyo kullanamazsınız.",
		unable_to_use_radio_while_down = "Yere düşmüşken radyo kullanamazsınız.",
		unable_to_use_radio_as_animal = "Hayvan olarak radyo kullanamazsın.",
		frequency_set_to_streamer = "Frekans ayarlandı.",
		frequency_set_to = "Frekans ${frequency} olarak set edildi.",
		frequency_already_set_to = "Frekans zaten ${frequency}.",
		radio_volume_same = "Radyo hacmi zaten `${radioVolume}` olarak ayarlanmış.",
		radio_volume_reset = "Radyo hacmi sıfırlandı.",
		radio_volume_set = "Radyo hacmi `${radioVolume}` olarak ayarlandı.",
		radio_volume_current = "Şu an kullanmakta olduğun radyo hacmi `${radioVolume}`.",
		radio_volume_current_default = "Şu anki radyo sesi varsayılan durumunda.",
		radio_sound_effects_same = "Radyo ses efektlerinin ses seviyesi zaten `${radioSoundEffects}` olarak ayarlanmış.",
		radio_sound_effects_reset = "Radyo ses efektlerinin ses seviyesi sıfırlandı.",
		radio_sound_effects_set = "Radyo ses efektlerinin ses seviyesi `${radioSoundEffects}` olarak ayarlandı.",
		radio_sound_effects_current = "Radyo ses efektlerinin ses seviyesi şu anda `${radioSoundEffects}` olarak ayarlanmış.",
		radio_sound_effects_current_default = "Radyo ses efektlerinin ses seviyesi varsayılan durumunda.",

		radio_missing_last_freq = "Son frekansa katılmak için radyonuz yok.",

		radio_debug_failed = "Radyo hata ayıklamayı değiştirme başarısız oldu.",
		radio_debug_off = "Radyo hata ayıklama başarıyla kapatıldı.",
		radio_debug_on = "Radyo hata ayıklama başarıyla açıldı.",

		radio_debug_no_permissions = "Radyo hata ayıklama izniniz yok.",

		decrypt_frequency = "[${InteractionKey}] Frekans Şifre Çözme",
		decrypting_frequency = "Frekans şifresi çözülüyor",
		decrypting_frequency_failed = "Frekans şifresini çözme başarısız oldu.",
		decrypter_jammed = "Çözücü tıkanmış gibi görünüyor.",
		decrypted_frequency = "Frekans yaklaşık olarak `${frequency}`.",
		no_frequency_detected = "Frekans tespit edilemedi."
	},

	remote_camera = {
		connected_to_camera = "Kameraya bağlandı #${id}",

		camera_distance = "Mesafe: ${distance}m",
		out_of_range = "Menzil dışı",

		disconnect = "Bağlantı kopar",
		view_feed = "Görüntüyü Görüntüle",

		no_nearby_cameras = "Yakınınızda kamera yok",
		nearby_cameras = "${amount} yakındaki kamera",
		no_nearby_cameras_description = "Sizin yakınlarınızda herhangi bir kamera bulunmamaktadır.",

		camera_operator = "Operatör: ${fullName}",

		camera_label = "Kamera #${id}",
		camera_distance = "Mesafe: ${distance}m",
		connect = "Bağlan",

		something_went_wrong = "Bir şeyler yanlış gitti.",
		error_out_of_range = "Kamera menzil dışında.",
		error_not_found = "Kamera bulunamadı."
	},

	reskin = {
		plastic_surgery = "Plastik Cerrahi",
		los_santos_police_dept = "LOS SANTOS POLİS BİRİMİ",

		reskin_player_no_permissions = "Oyuncu, uygun izin olmadan radyo hata ayıklamayı açmaya çalıştı.",

		triggered_reskin_for_player = "${consoleName} için reskin tetiklendi.",

		triggered_reskin_for_player_logs_title = "Oyuncu İçin Yeniden Tasarım Tetiklendi",
		triggered_reskin_for_player_logs_details = "${consoleName} ${targetConsoleName} adlı kişinin yeniden tasarımını tetikledi.",

		triggered_reskin_for_self_logs_title = "Kendi İçin Yeniden Tasarım Tetiklendi",
		triggered_reskin_for_self_logs_details = "${consoleName} kendi yeniden tasarımını tetikledi.",

		no_reskin_packages = "Yeniden tasarım paketiniz yok.",
		redeemed_reskin_package = "Yeniden tasarım paketi başarılı bir şekilde alındı."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] Masaya Basın",

		table_title = "Masa ${tableId}",
		seat = "${seatId} Numaralı Koltuk",
		close_menu = "Menüyü Kapat",
		loading = "Yükleniyor...",

		leave_seat = "Koltuktan Kalk",
		view_menu = "Menüyü Görüntüle",
		change_seating_position = "Koltuk Pozisyonunu Değiştir (${animationId})",

		sushi = "Suşi",
		drinks = "İçecekler",
		desserts = "Tatlılar",

		aka = "Aka",
		kuro = "Kuro",
		shiro = "Shiro",
		midori = "Midori",
		nigiri = "Nigiri",
		sex_on_the_beach = "Sex on the beach",
		mojito = "Mojito",
		pina_colada = "Pina Colada",
		tiramisu = "Tiramisu",
		chocolate_mousse = "Çikolata Mousse",

		food_replenish = "${amount}% oranında açlık ve susuzluğunuz yenilenecektir.",
		thirst_replenish = "${amount}% oranında susuzluğunuz yenilenecektir.",
		hunger_replenish = "${amount}% oranında açlığınız yenilenecektir.",
		diving_drop_boost = "Deniz dalışlarından ${duration} dakika boyunca ${amount} kat fazla elde edeceksiniz.",
		hunting_drop_boost = "Avcılık gezilerinden ${duration} dakika boyunca ${amount} kat fazla elde edeceksiniz.",
		garbage_drop_boost = "Çöp koşularından ${duration} dakika boyunca ${amount} kat fazla elde edeceksiniz.",
		faster_progress_bars = "${duration} dakika boyunca ilerleme çubuklarınız ${amount} kat daha hızlı olacak.",
		weapon_damage_multiplier = "${duration} dakika boyunca ${amount} kat daha yüksek hasar verin.",
		local_sales_multiplier = "Yerel halka satılan ürünlerden ${amount} kat daha fazla satış çarpanı elde edin.",
		shorter_boosting_cooldown = "Boostlama işlemleri arasındaki bekleme süresini ${amount} kat kısaltın.",
		swim_faster = "${duration} dakika boyunca ${amount} kat daha hızlı yüzün.",
		walk_faster = "${duration} dakika boyunca yürüyüş ve koşu hızınızı ${amount} kat artırın.",
		health_generation = "${duration} dakika boyunca yavaş yavaş sağlık yenilenmesine sahip olun.",
		better_stamina = "${duration} dakika boyunca koşu sırasında dayanıklılık tükenmeden koşabilin.",
		more_inventory_space = "${duration} dakika boyunca ekstra ${amount} envanter yuvasına sahip olun.",

		buffs_note = "Buff'lar, binanın yakınından uzaklaştığınızda yalnızca etkinleştirilecektir."
	},

	riot_mode = {
		riot_mode_enabled = "İsyan modu başarıyla etkinleştirildi.",
		riot_mode_disabled = "İsyan modu başarıyla devre dışı bırakıldı. Zaten saldırgan olan NPC'ler, öldürene kadar savaşmaya devam edecek.",
		riot_mode_failed = "İsyan modu açılırken bir hatayla karşılaşıldı.",
		riot_mode_missing_perms = "Düzgün izin olmadan isyan modunu açmaya çalışıldı.",

		riot_mode_enabled_help = "Ayaklanma modu etkinleştirildi.",
		riot_mode_disabled_help = "Ayaklanma modu devre dışı bırakıldı.",

		add_riot_player_no_permissions = "Bir oyuncuyu ayaklanma listesine ekleme izniniz yok.",
		remove_riot_player_no_permissions = "Bir oyuncuyu ayaklanma listesinden çıkarma izniniz yok.",

		player_already_in_riot_list = "${consoleName} zaten ayaklanma listesinde.",
		player_not_in_riot_list = "${consoleName} ayaklanma listesinde değil.",
		added_riot_player = "${consoleName} ayaklanma listesine eklendi.",
		failed_to_add_riot_player = "${consoleName} ismi göstericisi, isyancı listesine eklenemedi.",
		removed_riot_player = "${consoleName} ismi göstericisi, isyancı listesinden çıkarıldı.",
		failed_to_remove_riot_player = "${consoleName} ismi göstericisi, isyancı listesinden çıkarılamadı."
	},

	safes = {
		how_to_use = "Kasanın doğru kombinasyonunu bulmak için \"A\" ve \"D\" tuşlarını kullanın. İlk olarak \"D\" tuşuna basarak başlayın.",
		lock_open = "Açık",
		lock_closed = "Kapalı"
	},

	scoreboard = {
		player_list = "Oyuncu Listesi",
		players = "Oyuncular",
		total = "Toplam",
		recent_disconnections = "Son Bağlantı Kopmaları",
		disconnected_player = "Bağlantısı kesilen oyuncu",
		id = "Kimlik",
		name = "İsim",
		identifier = "Tanımlayıcı",
		reason = "Nedeni",
		time_since_disconnection = "Bağlantının kesilmesinden sonra geçen süre",

		you_are_now_metagaming = "Artık Metagaming yapıyorsunuz.",
		you_are_no_longer_metagaming = "Artık Metagaming yapmıyorsunuz."
	},

	screenshots = {
		screenshot_created = "Bir ekran görüntüsü başarıyla oluşturuldu.",
		screenshot_failed = "Belirtilen kullanıcının ekran görüntüsü alınamadı.",
		screencapture_created = "Bir ekran kaydı başarıyla oluşturuldu.",
		user_not_found_with_server_id = "Verilen sunucu ID'si ile kullanıcı bulunamadı.",
		invalid_lifespan_parameter = "Geçersiz ömür parametresi.",
		invalid_server_id_parameter = "Geçersiz sunucu ID'si parametresi.",
		invalid_duration_parameter = "Geçersiz süre parametresi.",
		invalid_fps_parameter = "Geçersiz FPS parametresi.",
		missing_server_id_parameter = "Sunucu ID'si parametresi eksik.",

		screenshot_error_client_false = "Ekran görüntüsü oluşturulamadı.",
		screenshot_error_user_not_found = "Kullanıcı bulunamadı.",
		screenshot_error_user_developer = "Kullanıcı bir geliştiricidir.",
		screenshot_error_no_token = "Opfw token alınamadı.",
		screenshot_timeout = "Ekran görüntüsü isteği zaman aşımına uğradı."
	},

	scuba = {
		sunken_ship = "Batık Gemi",
		gather_item = "Topla (${distance}m)",

		collected_junk = "Çöp Toplandı.",
		collected_item = "${itemLabel} Toplandı.",
		collected_broken_item = "Kırık ${itemLabel} Toplandı.",

		collected_scuba_item_logs_title = "Tüple Dalış Ekipmanı Toplandı",
		collected_scuba_item_logs_details = "${consoleName} tüple dalış ekipmanı topladı ve `${itemName}` aldı."
	},

	scuba_gear = {
		equipping_scuba_tank = "Scuba Tank giyiliyor",
		equipping_scuba_mask = "Scuba Maske giyiliyor"
	},

	security_cameras = {
		illegal_security_camera = "Kaçak güvenlik kamerasıyla oynamaya çalışılıyor.",
		saved_security_cameras_to_file = "Sunucuda `${amount}` adet güvenlik kamerası dosyaya kaydedildi.",
		no_nearby_security_cameras = "Kaydedilecek yakındaki güvenlik kamerası yok.",
		no_city_ping = "Şehir kameralarına ping atılamadı.",
		offline = "Çevrimdışı",
		camera_list = "Kamera Listesi",
		camera = "Kamera ${cameraId}",
		mission_row_pd = "Mission Row PD",
		pillbox_hospital = "Pillbox Hastanesi",
		jewelry_store = "Rockford Hills Mücevher Dükkanı",
		principal_bank = "Principal Bankası",
		bolingbroke_penitentiary = "Bolingbroke Cezaevi",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Del Perro Iskelesi",
		flywheels_garage = "Flywheels Garajı",
		sandy_shores_pd = "Sandy Shores Polis Merkezi",
		sandy_shores_hospital = "Sandy Shores Hastanesi",
		davis_sheriffs_station = "Davis Şerif İstasyonu",
		vespucci_pd = "Vespucci Polis Merkezi",
		rockford_hills_pd = "Rockford Hills Polis Merkezi",
		la_mesa_pd = "La Mesa Polis Merkezi",
		beaver_bush_ranger_station = "Kunduz Çalılığı Koruma İstasyonu",
		cinema = "Sinema",
		st_fiacre_hospital = "St. Fiacre Hastanesi",
		weazel_news = "Weazel Haberler",
		palomino_fib_facility = "Palomino FIB Tesisi",
		bank_1 = "Legion Square Bankası",
		bank_2 = "Rockford Hills Bankası",
		bank_3 = "Alta Bankası",
		bank_4 = "Burton Bankası",
		bank_5 = "Banham Canyon Bankası",
		bank_6 = "Grand Senora Bankası",
		bank_7 = "Paleto Bay Bankası",
		grocery_store_1 = "Davis LTD Benzin İstasyonu",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Murrieta Heights Rob'un Şarapçılığı",
		grocery_store_4 = "Little Seoul LTD Benzin İstasyonu",
		grocery_store_5 = "Vespucci Kanalları Rob'un Alkolleri",
		grocery_store_6 = "Morningwood Rob'un Alkolleri",
		grocery_store_7 = "Mirror Park LTD Benzin İstasyonu",
		grocery_store_8 = "Downtown Vinewood 24/7",
		grocery_store_9 = "Tataviam Dağları 24/7",
		grocery_store_10 = "Banham Kanyonu Rob'un Alkolleri",
		grocery_store_11 = "Banham Kanyonu 24/7",
		grocery_store_12 = "Richman Glen LTD Benzin İstasyonu",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Rob'un Alkolleri",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Sandy Shores Liquor Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Benzinci",
		grocery_store_20 = "Mount Chiliad 24/7",

		-- NOTE: add-on
		paleto_247 = "Paleto Bay 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "Şu anda bir araç kullanmıyorsunuz.",
		not_a_self_driving_vehicle = "Kullandığınız araç otomatik sürüş sistemini desteklemiyor.",
		no_waypoint_set = "Lütfen varış noktanızı işaretlemeden önce bir rota belirleyin.",
		invalid_waypoint_set = "Belirlediğiniz rota otomatik olarak gidilemez.",
		self_driving_engaged = "Otomatik pilot etkinleştirildi. Sezgileri  kullanarak seyahat hızını kontrol etmek için ~INPUT_SPRINT~ ve ~INPUT_DUCK~ tuşlarına basın.",
		self_driving_disengaged = "Otomatik pilot devre dışı bırakıldı.",
		destination_too_close = "İşaretlenen hedef çok yakın.",
		self_driving_could_not_be_engaged = "Otomatik pilot etkinleştirilemedi."
	},

	shield = {
		no_weapon_equipped = "Balistik kalkanı takmak için silahınızı donatmalısınız.",
		no_shield = "Envanterinizde balistik kalkan yok."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "Bir oyuncu şok dalgası oluşturmayı denedi ancak gerekli izinlere sahip değil.",
		push_player_missing_permissions = "Bir oyuncu diğer bir oyuncuyu itmek istedi ancak gerekli izinlere sahip değildi.",
		shockwave_success = "Şok dalgası başarıyla yaratıldı.",
		shockwave_failed = "Şok dalgası oluşturulamadı.",

		invalid_server_id = "Geçersiz sunucu ID'si.",
		push_player_success = "Oyuncu başarıyla itildi.",
		push_player_failed = "Oyuncunun itilmesi başarısız oldu."
	},

	shooting_ranges = {
		turn_on = "Aç ($${cost})",
		turn_off = "Kapat",
		toggle_through_targets = "Hedefler Arasında Geçiş Yap (${modelId})",
		speed = "Hız (${speedLevel})",
		rotation = "Döndürme (${rotationLevel})",
		clear_bullet_impacts = "Mermi İzlerini Temizle",
		illegal_shooting_spot_value = "Hatalı atış noktası değerleri geçmeye çalışılıyor.",
		illegal_shooting_spot_id = "Mevcut olmayan bir atış noktası için geçerli olmayan değerler verilmeye çalışılıyor.",
		not_enough_cash = "Yeterli nakit paranız yok."
	},

	shrooms = {
		press_to_pick_up_shrooms = "Mantarları toplamak için ~INPUT_CONTEXT~ tuşuna basın.",
		picking_up_shrooms = "Mantarları topluyorsunuz.",
		press_to_sell_shrooms = "Mantarları satmak için ~INPUT_CONTEXT~ tuşuna basın.",
		local_not_interested = "Yerli şu anda ilgili görünmüyor.",
		not_interested = "Bu yerli şu anda mantarlarınıza ilgili görünmüyor.",
		selling_shrooms = "Mantarları satıyorsunuz.",
		shrooms_not_ripe = "Bu mantarlar henüz olgunlaşmamış gibi görünüyor, belki biraz daha bekletin.",
		shroom_id = "mantar-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "Manyetiği açmak/kapatmak için ~INPUT_CONTEXT~ tuşuna basın.",
		skylift_magnet_turned_off_logs_title = "Skylift Manyetiği Kapatıldı",
		skylift_magnet_turned_off_logs_details = "${consoleName}, Skylift manyetik kaldırıcısını kapattı.",
		skylift_magnet_turned_on_logs_title = "Skylift Manyetiği Açıldı",
		skylift_magnet_turned_on_logs_details = "${consoleName}, Skylift manyetik kaldırıcısını açtı.",
		skylift_attached_vehicle_logs_title = "Skylift'e Araç Bağlandı",
		skylift_attached_vehicle_logs_details = "${consoleName}, Skylift'e araç bağladı."
	},

	smoothies = {
		blend = "Karıştır",
		close = "Kapat",

		use_blender = "[${InteractionKey}] Blender'ı kullan",
		blending = "Karıştırılıyor",

		smoothie_label = "Smoothie (${flavors})",
		seperator = "ve"
	},

	snow = {
		hold_to_pick_up_snowballs = "Kardan adam yapmak için ~INPUT_CONTEXT~ tuşunu basılı tut"
	},

	spawn = {
		spawn_now = "Şimdi oyuna ekle",
		last_position = "Son Konum",

		train_station = "Tren İstasyonu",
		city_bus_station = "Şehir Otobüsü Durağı",
		paleto_bay_bus_station = "Paleto Körfezi Otobüs Durağı",

		mission_row_police_station = "Mission Row Polis Merkezi",
		sandy_police_station = "Sandy Shores Polis Merkezi",
		paleto_police_station = "Paleto Körfezi Polis Merkezi",

		mount_zonah = "Zonah Dağı",
		sandy_hospital = "Sandy Shores Hastanesi",
		paleto_hospital = "Paleto Körfezi Hastanesi",

		battle_royale = "Savaş Royale"
	},

	special_imports = {
		special_imports_blip = "Özel İthalat",

		purchased_vehicle = "${label} aracını başarıyla $${price} fiyatına satın aldınız. Araç garajınıza eklenmiştir.",

		something_went_wrong = "Bir şeyler yanlış gitti.",
		not_enough_money = "Yeterli paranız yok.",
		invalid_package = "Geçersiz paket seviyesi. (Tanrısal seviyesine ihtiyacınız var)",

		dealership_closed = "Bayi şu anda kapalıdır.",

		purchased_vehicle_logs_title = "Özel İthalatlar",
		purchased_vehicle_logs_details = "${consoleName} adlı kullanıcı, ${price} fiyat karşılığında '${modelName}' adlı özel ithalat aracını satın aldı. (Plaka: '${plate}')",

		marker_label = "${label} | $${price} | Stok: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] ${label} adlı aracı $${price} karşılığında satın al",
		marker_label_purchase_timer = "[${timer}s] ${label} adlı aracı $${price} karşılığında satın almak için ${SeatEjectKey}' tuşunu basılı tutun",

		vehicle_sold_out = "${label} | Stokta kalan yok"
	},

	spectating = {
		cannot_spectate_self = "Kendinizi izleyemezsiniz.",
		failed_spectate = "Oyuncunun izlenmesi başarısız oldu.",
		player_not_exist = "Oyuncu çevrimdışı.",
		no_character_loaded = "Oyuncunun yüklenmiş bir karakteri yok.",
		not_same_instance = "Oyuncu sizinle aynı örnekte değil.",

		loading_coords = "Koordinatlar yükleniyor",
		preloading_area = "Ön yükleme alanı",
		finding_player = "Oyuncu bulunuyor",

		invincibility_active = "Ölümsüzlük: ~r~Aktif~w~",
		invincibility_inactive_dead = "Ölümsüzlük: ~g~Etkisiz~w~ (ölü)",
		invincibility_inactive = "Ölümsüzlük: ~g~Etkisiz~w~",

		health_ok = "Sağlık: ~g~${health} / ${maxHealth}~w~",
		health_bad = "Sağlık: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "Zırh: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "Zırh: ~r~${armor} / ${maxArmor}~w~",

		speed = "Hız: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "km/s",

		exit_spectate = "İzleyici modundan çıkmak için ~g~${InteractionKey}~w~ tuşuna basın",

		spectate_logs_title = "İzleme Moduna Geçti",
		spectate_logs_details = "${consoleName}, ${targetUser}'ı izleme moduna geçirdi",

		spectate_stopped_logs_title = "İzleme Modundan Çıktı",
		spectate_stopped_logs_details = "${consoleName}, izleme modundan çıktı."
	},

	spying = {
		microphone_bug_not_activated = "Bu hata etkinleştirilmedi.",
		vehicle_tracker_not_activated = "Bu izleyici etkinleştirilmedi.",
		microphone_bug_active_with_battery = "Bu mikrofon hatası şu anda etkin. Pil yüzdesi ${batteryPercentage}%. \"Kullan\" diyerek, algılayabileceği herhangi bir konuşmayı dinleyebilirsiniz.<br><br>Cihaz Kimliği: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "Bu mikrofon hatası şarjı bitmiştir. Fiziksel mikrofon hatası bir hafta sonra bozulacaktır.<br><br>Cihaz Kimliği: ${deviceId}.",
		vehicle_tracker_active_with_battery = "Bu araç takip cihazı şu anda aktif. Pil yüzdesi ${batteryPercentage}%. Bu takip cihazı bağlı araç mevcut olduğu sürece haritanızda görüntülenir.<br><br>Cihaz Kimliği: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "Bu araç takip cihazının pil ömrü tükendi. Fiziksel takip cihazı bir hafta sonra kaybolur.<br><br>Cihaz Kimliği: ${deviceId}",
		scanning_for_devices = "Cihazlar Taranıyor",
		searching_for_devices = "Cihazlar Aranıyor",
		no_nearby_vehicle = "Yakınında araç yok.",
		placing_vehicle_tracker = "Araç Takip Cihazı yerleştiriliyor.",
		error_using_vehicle_tracker = "Araç takip cihazı yerleştirme işlemi sırasında bir hata oluştu.",
		vehicle_tracker_placed = "Araç takip cihazı başarıyla yerleştirildi.",
		error_using_microphone_bug = "Mikrofon cihazı yerleştirme işlemi sırasında bir hata oluştu.",
		microphone_bug_placed = "Mikrofon cihazı başarıyla yerleştirildi.",
		placing_microphone_bug_on_vehicle = "Araç Üzerinde Mikrofon Cihazı Yerleştiriliyor.",
		placing_microphone_bug_on_player = "Oyuncu Üzerinde Mikrofon Cihazı Yerleştiriliyor.",
		placing_microphone_bug_on_ground = "Yerleştiriliyor: Mikrofon Böceği",
		error_using_device_scanner = "Cihaz tarayıcısı kullanılırken bir hata oluştu.",
		error_searching_for_devices = "Cihaz aranırken bir hata oluştu.",
		found_devices = "${totalDevices} cihaz bulundu.",
		no_nearby_devices_found = "Yakınınızda cihaz bulunamadı.",
		microphone_bug = "Mikrofon Böceği",
		microphone_bug_destroy = "Mikrofon Böceği\n[${InteractionKey}] Yok Et",
		vehicle_tracker = "Araç Takip Cihazı",
		vehicle_tracker_destroy = "Araç Takip Cihazı\n[${InteractionKey}] Yok Et",
		destroying_device = "Cihazı Yok Etme",
		tracker_will_appear_on_map = "Bu takip cihazı zaten etkinleştirildi. Cihazın pilleri dolu olduğu sürece araç mevcut olduğunda haritanızda görünecektir.",
		spy_ui_info = "Mikrofon Bugini Dinleme Yapılıyor (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Mikrofon Bugini kapatmak için ESC tuşuna basın",
		spy_ui_connecting = "Mikrofon Bugini ile bağlantı kuruluyor (#${deviceId})",
		spy_ui_connection_failed = "Mikrofon Bugini ile bağlantı kurulamadı (#${deviceId})",
		spy_ui_awaiting_data = "Veriler bekleniyor...",
		spy_ui_data_failed = "Veriler alınamadı"
	},

	starter_car = {
		your_vehicle_is_nearby = "Kişisel aracınız yakınlarda park edildi.",
		would_you_like_directions = "Yön tarifi istiyor musunuz?",
		press_to_respond = "Kabul etmek için ~INPUT_FRONTEND_ACCEPT~, reddetmek için ~INPUT_FRONTEND_CANCEL~ tuşuna basın.",
		follow_the_checkpoints = "Kontrol noktalarını takip edin.",

		received_logs_title = "Araç Başlatma İsteği Alındı",
		received_logs_details = "${consoleName} bir başlatma isteği aldı (Model: ${modelName})."
	},

	status = {
		status_reset = "${consoleName}'ın durumu başarıyla sıfırlandı.",
		status_reset_failed = "`${serverId}` ID'li bir kullanıcı bulunamadı.",
		reset_status_not_staff = "Gerekli izin olmadan bir oyuncunun durumunu sıfırlamaya çalışıldı.",
		status_reset_for_all = "Herkesin durumu başarıyla sıfırlandı.",
		status_disabled = "Durumlar devre dışı bırakıldı (stres, açlık ve susuzluk).",
		status_enabled = "Durumlar etkinleştirildi (stres, açlık ve susuzluk).",
		failed_to_set_body_armor_level = "/set_body_armor komutu doğru bir şekilde uygulanamadı.",
		set_body_armor_level_player = "${consoleName}'nin vücut zırhı seviyesi başarıyla `${bodyArmorLevel}` olarak ayarlandı.",
		set_body_armor_level_everyone = "Herkese vücut zırhı seviyesi başarıyla `${bodyArmorLevel}` olarak ayarlandı.",
		set_body_armor_level_self_title = "Kendi Vücut Zırhı Seviyesini Ayarlama",
		set_body_armor_level_self_details = "${consoleName} kendi vücut zırhı seviyesini başarıyla `${bodyArmorLevel}` olarak ayarladı.",
		set_body_armor_level_everyone_title = "Herkesin Vücut Zırhı Seviyesini Ayarlama",
		set_body_armor_level_everyone_details = "${consoleName} herkesin vücut zırhı seviyesini başarıyla `${bodyArmorLevel}` olarak ayarladı.",
		set_body_armor_level_player_title = "Oyuncu İçin Zırh Seviyesi Ayarla",
		set_body_armor_level_player_details = "${consoleName} ${targetConsoleName} için zırh seviyesini `${bodyArmorLevel}` olarak güncelledi.",
		set_body_armor_level_player_not_staff = "Bir oyuncu başka bir oyuncunun zırh seviyesini ayarlamaya çalıştı ancak buna izinleri yoktu.",
		set_body_armor_level_self_not_staff = "Bir oyuncu kendi zırh seviyesini ayarlamaya çalıştı ancak buna izinleri yoktu.",
		stress_level_warning = "Streslisiniz! Stresinizi azaltmak için sigara, joint veya yoga gibi aktiviteler yapabilirsiniz."
	},

	streamer_mode = {
		enabled_streamer_mode = "Yayıncı modu etkinleştirildi.",
		disabled_streamer_mode = "Yayıncı modu devre dışı bırakıldı."
	},

	sync = {
		missing_hour = "Saat belirtilmedi.",
		invalid_hour = "Yerel zaman geçersiz. Değer 0:00 ile 23:59 arasında bir saat olmalıdır.",
		hour_changed = "Saat şimdi ${hour} olarak ayarlandı.",
		set_hour_not_staff = "Saat ayarlama izniniz yok.",

		local_time_override_enabled = "Yerel saat ${hour}:${minute} olarak ayarlandı.",
		local_time_override_disabled = "Yerel saat varsayılana sıfırlandı.",
		local_weather_override_enabled = "Yerel hava durumu `${weatherName}` olarak ayarlandı.",
		local_weather_override_disabled = "Yerel hava durumu varsayılana sıfırlandı.",

		missing_minute = "Dakika girilmedi.",
		invalid_minute = "Dakika `${minute}` geçersiz. Değer 0 ile 59 arasında olmalıdır.",
		minute_changed = "Dakika şimdi `${minute}` olarak ayarlandı.",
		set_minute_not_staff = "Dakikayı ayarlamak için gerekli izinler verilmemiş.",

		missing_weather = "Hava durumu girilmedi.",
		invalid_weather = "${weatherName} hava durumu geçerli değil. Geçerli hava durumu değerleri: CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT ve BLIZZARD.",
		weather_changed = "Hava durumu artık `${weatherName}` olarak ayarlandı.",
		weather_advanced = "Hava durumu `${weatherName}` olarak ilerletildi.",
		weather_advance_fail = "Doğal olarak hava durumu ilerletilemedi.",
		set_weather_not_staff = "Gerekli izinlere sahip olmadan hava durumu ayarlaması yapmaya çalışıldı.",
		advance_weather_not_staff = "Gerekli izinlere sahip olmadan hava durumu ilerletilmeye çalışıldı.",

		time_frozen = "Saat artık donmuştur.",
		time_unfrozen = "Saat artık donmuş değil.",
		freeze_time_not_staff = "Gerekli izinler olmadan saati dondurmaya çalışıldı.",

		weather_frozen = "Hava şimdi donmuş durumda.",
		weather_unfrozen = "Hava artık donmuş değil.",
		freeze_weather_not_staff = "Gerekli izinler olmadan hava durumunu dondurmaya çalışıldı.",

		blackout_enabled = "Şehirde şimdi elektrik kesintisi var.",
		blackout_disabled = "Şehirde elektrik kesintisi yok artık.",
		blackout_not_staff = "Gerekli izinler olmadan elektrik kesintisi açık/kapalı duruma getirilmeye çalışıldı.",

		weather_changed_title = "Hava Değiştirildi",
		weather_changed_details = "${consoleName} hava durumunu `${weatherName}` olarak değiştirdi.",

		weather_changed_success = "Hava durumu başarıyla `${weatherName}` olarak değiştirildi.",
		weather_change_failed = "Hava durumu değiştirilemedi.",
		weather_parameter_invalid = "Geçersiz weatherName parametresi.",
		weather_parameter_missing = "weatherName parametresi eksik.",

		time_parameters_invalid = "Geçersiz saat veya dakika parametresi.",
		time_currently_transitioning = "Zaman şu anda geçiş yapıyor, lütfen bekleyin.",
		time_successfully_transitioned = "${hour}:${minute} saatleri başarıyla geçiş yapıldı.",
		time_successfully_set = "${hour}:${minute} saatleri başarıyla ayarlandı."
	},

	tablet = {
		you_dont_have_a_tablet = "Tabletin yok.",

		app_snake = "Yılan Oyunu",
		app_tetris = "Tetris Oyunu",
		app_chess = "Satranç Oyunu",
		app_minesweeper = "Mayın Tarlası Oyunu",
		app_flappy_bird = "Flappy Kuş Oyunu",
		app_geoguesser = "Geo-Tahmin Oyunu",
		app_pdm = "PDM Kataloğu",
		app_edm = "EDM Kataloğu",
		app_cat_pictures = "Kedi Resimleri",

		folder_games = "Oyunlar",
		folder_productivity = "Üretkenlik",

		snake_title = "Yılan",
		snake_description = "Yukarı, aşağı, sol ve sağ tuşları ile hareket edin.",
		snake_start_game = "Oyuna Başla",
		snake_difficulty = "Zorluk:",
		snake_difficulty_easy = "Kolay",
		snake_difficulty_medium = "Orta",
		snake_difficulty_hard = "Zor",

		snake_game_over = "Oyun Bitti!",
		snake_over_description = "Son puan: ${score}.",
		snake_new_game = "Yeni Oyun",

		tetris_description = "Sol ve sağ tuşları ile hareket edin.",
		tetris_play = "Yeni Oyun",
		tetris_game_over = "Oyun Bitti",
		tetris_restart = "Tekrar Başla",
		tetris_score = "Skor",

		chess_title = "Satranç",
		chess_your_turn = "Sıranız",
		chess_ai_turn = "Bilgisayar düşünüyor",
		chess_you_lost = "Kaybettiniz",
		chess_you_won = "Kazandınız",
		chess_draw = "Berabere",

		chess_play_as = "Oynayın:",
		chess_play_as_b = "Siyah",
		chess_play_as_w = "Beyaz",
		chess_difficulty = "Zorluk:",
		chess_difficulty_level = "Seviye ${level}",
		chess_start = "Oyunu Başlat",

		minesweeper_title = "Mayın Tarlası",
		minesweeper_win = "Kazandınız",
		minesweeper_loose = "Kaybettiniz",
		minesweeper_difficulty = "Zorluk:",
		minesweeper_start = "Oyunu Başlat",
		minesweeper_flags_used = "${used}/${total} Bayrak Kullanıldı",

		flappy_bird_title = "Uçan Kuş",
		flappy_bird_score = "Son Skorunuz:",
		flappy_bird_game_over = "Oyun Bitti",
		flappy_bird_start = "Başlamak için tuvala dokunun"
	},

	tattoos = {
		tattoos_refreshed = "Dövmeler yenilendi.",
		something_went_wrong = "Bir şeyler yanlış gitti.",
		user_does_not_have_sent_character_loaded = "Kullanıcının yüklenmiş karakteri yok.",
		user_has_no_character_loaded = "Kullanıcının yüklenmiş herhangi bir karakteri yok.",
		user_not_found = "Sunulan kullanıcı sunucuda bulunamadı.",
		invalid_character_id = "Geçersiz karakter ID'si parametresi gönderildi.",
		invalid_license_identifier = "Geçersiz lisans tanımlayıcı parametresi gönderildi."
	},

	teleporters = {
		enter_mechanic_shop = "Tamirci Dükkanına Giriniz",
		enter_mechanic_shop_interact = "[${InteractionKey}] Tamirci Dükkanına Giriniz",

		exit_mechanic_shop = "Tamirci Dükkanından Çıkınız",
		exit_mechanic_shop_interact = "[${InteractionKey}] Tamirci Dükkanından Çıkınız",

		enter_coroner = "Morga Giriniz",
		enter_coroner_interact = "[${InteractionKey}] Morga Giriniz",

		exit_coroner = "Morgdan Çık",
		exit_coroner_interact = "[${InteractionKey}] Morgdan Çık",

		enter_fib = "FIB'e Gir",
		enter_fib_interact = "[${InteractionKey}] FIB'e Gir",

		exit_fib = "FIB'den Çık",
		exit_fib_interact = "[${InteractionKey}] FIB'den Çık",

		enter_iaa_base = "IAA Üssüne Gir",
		enter_iaa_base_interact = "[${InteractionKey}] IAA Üssüne Gir",

		exit_iaa_base = "IAA Üssünden Çık",
		exit_iaa_base_interact = "[${InteractionKey}] IAA Üssünden Çık",

		enter_server_room = "Sunucu Odasına Gir",
		enter_server_room_interact = "[${InteractionKey}] Sunucu Odasına Gir",

		exit_server_room = "Sunucu Odasından Çık",
		exit_server_room_interact = "[${InteractionKey}] Sunucu Odasından Çık",

		enter_warehouse_shop = "Depoya Gir",
		enter_warehouse_shop_interact = "[${InteractionKey}] Depoya Gir",

		exit_warehouse_shop = "Depodan Çık",
		exit_warehouse_shop_interact = "[${InteractionKey}] Depodan Çık",

		enter_office_shop = "Ofise Gir",
		enter_office_shop_interact = "[${InteractionKey}] Ofise Gir",

		exit_office_shop = "Ofisten Çık",
		exit_office_shop_interact = "[${InteractionKey}] Ofisten Çık",

		enter_cocaine_lab = "Kokain Lab'ine Giriş",
		enter_cocaine_lab_interact = "[${InteractionKey}] Kokain Lab'ine Giriş",

		exit_cocaine_lab = "Kokain Lab'inden Çıkış",
		exit_cocaine_lab_interact = "[${InteractionKey}] Kokain Lab'inden Çıkış",

		enter_mayor_office = "Belediye Başkanının Ofisine Giriş",
		enter_mayor_office_interact = "[${InteractionKey}] Belediye Başkanının Ofisine Giriş",

		exit_mayor_office = "Belediye Başkanının Ofisinden Çıkış",
		exit_mayor_office_interact = "[${InteractionKey}] Belediye Başkanının Ofisinden Çıkış",

		enter_exclusive_dealership = "Özel Satış Bayisine Giriş",
		enter_exclusive_dealership_interact = "[${InteractionKey}] Özel Bayiye Girmek İçin",

		exit_exclusive_dealership = "Özel Bayiden Çıkmak İçin",
		exit_exclusive_dealership_interact = "[${InteractionKey}] Özel Bayiden Çıkmak İçin",

		enter_casino = "Kumarhaneye Girmek İçin",
		enter_casino_interact = "[${InteractionKey}] Kumarhaneye Girmek İçin",

		exit_casino = "Kumarhaneden Çıkmak İçin",
		exit_casino_interact = "[${InteractionKey}] Kumarhaneden Çıkmak İçin",

		enter_roof = "Çatıya Girmek İçin",
		enter_roof_interact = "[${InteractionKey}] Çatıya Girmek İçin",

		exit_roof = "Çatıdan Çıkmak İçin",
		exit_roof_interact = "[${InteractionKey}] Çatıdan İn",

		enter_penthouse = "Penthouse'a Gir",
		enter_penthouse_interact = "[${InteractionKey}] Penthouse'a Gir",

		exit_penthouse = "Penthouse'dan Çık",
		exit_penthouse_interact = "[${InteractionKey}] Penthouse'dan Çık",

		enter_parking_garage = "Otopark'a Gir",
		enter_parking_garage_interact = "[${InteractionKey}] Otopark'a Gir",

		exit_parking_garage = "Otopark'tan Çık",
		exit_parking_garage_interact = "[${InteractionKey}] Otopark'tan Çık",

		enter_surgery = "Ameliyathane'ye Gir",
		enter_surgery_interact = "[${InteractionKey}] Ameliyat Odasına Gir",

		exit_surgery = "Ameliyat Odasından Çık",
		exit_surgery_interact = "[${InteractionKey}] Ameliyat Odasından Çık",

		enter_icu = "Yoğun Bakım Ünitesine Giriş",
		enter_icu_interact = "[${InteractionKey}] Yoğun Bakım Ünitesine Gir",

		exit_icu = "Yoğun Bakım Ünitesinden Çıkış",
		exit_icu_interact = "[${InteractionKey}] Yoğun Bakım Ünitesinden Çık",

		enter_underground_tunnel = "Yeraltı Tüneline Gir",
		enter_underground_tunnel_interact = "[${InteractionKey}] Yeraltı Tüneline Gir",

		exit_underground_tunnel = "Yeraltı Tünelinden Çık",
		exit_underground_tunnel_interact = "[${InteractionKey}] Yeraltı Tünelinden Çık",

		use_secret_tunnel_exit = "Gizli çıkışı kullan",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] Gizli çıkışı kullan",

		enter_hangar = "Hangara gir",
		enter_hangar_interact = "[${InteractionKey}] Hangara gir",

		exit_hangar = "Hangardan çık",
		exit_hangar_interact = "[${InteractionKey}] Hangardan çık",

		enter_loading_bay = "Yükleme alanına gir",
		enter_loading_bay_interact = "[${InteractionKey}] Yükleme alanına gir",

		exit_loading_bay = "Yükleme alanından çık",
		exit_loading_bay_interact = "[${InteractionKey}] Yükleme alanından çık"
	},

	test_server = {
		you_are_not_in_a_vehicle = "Araçta değilsiniz.",
		you_are_in_a_vehicle = "Şu anda araçtasınız.",
		invalid_vehicle_preset = "Geçersiz araç ayarı.",
		fully_upgraded = "Araç başarıyla yükseltildi.",
		applied_preset = "Araç ayarı başarıyla uygulandı.",
		spawned_car = "${modelName} aracı doğuruldu.",
		just_spawned_a_car = "Yeni bir araç doğurdunuz, ${time} sonra tekrar doğurabilirsiniz."
	},

	time_scale = {
		invalid_time_scale = "${timeScale} geçersiz bir zaman ölçeğidir.",
		set_time_scale_missing_permissions = "Oyuncu zaman ölçeğini ayarlamaya çalıştı ama gerekli izinlere sahip değiller.",
		time_scale_set_to = "${timeScale} oranında zaman ölçeği ayarlandı.",
		time_scale_disabled = "Zaman ölçeği iptal edildi.",
		time_scale_already_set_to = "Zaman ölçeği zaten ${timeScale} oranında ayarlı.",
		time_scale_is_already_disabled = "Zaman ölçeği iptal edilmiş durumda."
	},

	titanic = {
		created_titanic = "${sinkTime} dakika batış süresiyle Titanic oluşturuldu.",
		failed_to_create_titanic = "Titanic oluşturulamadı.",
		create_titanic_missing_permissions = "Bir oyuncu Titanic oluşturmayı denedi ancak gerekli izinlere sahip değil."
	},

	top_down = {
		not_in_valid_vehicle = "Geçerli bir araçta değilsiniz (sadece arabalar/motorlar).",
		top_down_on = "Üstten bakış modu etkinleştirildi.",
		top_down_off = "Üstten bakış modu devre dışı bırakıldı."
	},

	trackers = {
		error_finding_tracker = "İzleyicinizi bulurken bir hata oluştu.",
		tracker_visible = "İzleyiciniz şimdi görünür durumda.",
		tracker_hidden = "İzleyiciniz şimdi gizli durumda.",
		tracker = "İzleyici",
		trackers = "İzleyiciler",
		stockade_robbery_tracker = "Stokade Kamyonu (10-78)",
		tracked_vehicle = "Takip Edilen Araç (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "İzleyiciler artık haritada kategorilerine göre saklanacak.",
		trackers_split = "İzleyiciler artık bireysel göstergeler halinde bölünecek.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Ranger",
		department_medical = "EMS",
		department_doctor = "Doktor",
		department_bcfd = "BCFD",

		department_police_undercover = "Gizli Çevik Kuvvet",

		department_police_training = "Polis Eğitimi",
		department_ems_training = "EMS Eğitimi"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] Mağazaya Eriş",

		buy_pack = "${packName} Satın Al",
		store_title = "Kart Mağazası",

		successfully_bought_pack = "Başarılı bir şekilde kart paketi satın aldınız.",
		failed_buy_pack = "Paket satın alınamadı. Yeterli miktarda paranız var mı?",

		just_showed_trading_cards = "Bir trading kart gösterdiniz. Lütfen biraz bekleyin.",

		unpack_successfull = "Paket başarıyla açıldı.",
		failed_unpack = "Paket açılırken bir hata oluştu.",
		failed_unpack_no_cards = "Paket açılırken bir hata oluştu. Herhangi bir takas kartı yok.",

		edition = "Baskı",
		rarity = "Nadirlik",

		rarity_bronze = "Bronz",
		rarity_silver = "Gümüş",
		rarity_gold = "Altın",
		rarity_holo = "Holo",
		rarity_foil = "Foil",
		rarity_relic = "Relik",
		rarity_headache = "Başağrısı",
		rarity_missprint = "Yanlış Baskı",
		rarity_ethereal = "Eteryal",
		rarity_promotional = "Promosyon",

		rarity_custom = "Özel",

		press_to_access_buyback = "Kart geri alma menüsüne erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		buyback_title = "Takas Kartı Geri Alma",
		close_menu = "Menüyü Kapat",
		sell_cards = "${rarity} kartlarının hepsini sat",

		failed_selling = "Kartları satarken hata oluştu.",
		no_cards_of_type = "Hiç ${rarity} kartınız yok.",
		successfully_sold_cards = "${amount} adet ${rarity} kartı $${earned} karşılığında başarıyla sattınız.",

		studio_blip = "945 Stüdyoları"
	},

	training = {
		on_team_attackers = "Bir saldırgan olarak görevlendirildiniz!\nKalan süre: ${time}",
		on_team_defenders = "Bir savunmacı olarak görevlendirildiniz!\nKalan süre: ${time}",
		attackers = "Saldırganlar:",
		defenders = "Savunucular:",
		waiting_for_players = "Daha fazla oyuncu bekleniyor.\nHer takımda en az bir oyuncu olmalıdır.",
		none = "Yok",
		match_starting_in = "Maç ${seconds} saniye içinde başlayacak.",
		loading_match = "Oyuncuların yüklenmesi bekleniyor. Maç ${seconds} saniye içinde başlayacak.",
		attackers_help_text = "Kazanmak için cooldown bitmeden önce tüm savunucuları öldürün!",
		defenders_help_text = "Kazanmak için tüm saldırganları öldürün veya cooldown bitene kadar bekleyin!",
		attacker = "SALDIRGAN",
		defender = "SAVUNAN",
		attackers_won = "Saldirganlar kazandi!",
		defenders_won = "Savunanlar kazandi!"
	},

	trains = {
		spawn_train_missing_permissions = "Oyuncu tren spawnlamaya calisti ancak bunu yapmak icin gerekli izinleri yoktu.",

		invalid_track_id = "Gecersiz tren yol ID'si verildi.",
		spawned_train_on_track = "${trackId} numarali yola tren spawnlandi.",
		failed_to_spawn_train = "Tren spawnlama basarisiz oldu."
	},

	traps = {
		rearming = "Yeniden Doldurma",
		press_to_rearm = "[${InteractionKey}] Yeniden Doldur",
		rearm = "Yeniden Doldur",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "${mapTier} seviyesinde bir hazine haritası yok.",
		treasure_map_does_not_have_piece = "${mapTier} seviyesindeki hazine haritasında ${pieceNumber} numaralı parça yok.",
		spawn_map_piece_missing_permissions = "Oyuncu, gerekli izinlere sahip olmadan bir harita parçası oluşturmayı denedi.",

		sketchy_map = "Basit Harita",
		worn_map = "Eski Harita",
		fancy_map = "Süslü Harita",
		exquisite_map = "İhtişamlı Harita",

		map_piece_tier_1_description = "Çirkin bir sakız parçasının altında yazı yazıyor gibi görünüyor.",
		map_piece_tier_2_description = "Oldukça otantik görünen bir harita parçası. Mürekkep biraz akısa da.",
		map_piece_tier_3_description = "Bu harita parçası güneş ışığında biraz parlıyor.",
		map_piece_tier_4_description = "Bu karmaşık, güzel harita parçası para kokuyor.",

		map_tier_1_description = "Napkin üzerine el ile çizilmiş gibi görünüyor. Meraklı lekeyi görmezden gelin.",
		map_tier_2_description = "Bu harita oldukça eskimiş ama iyi bir yerlere götürebileceğine benziyor.",
		map_tier_3_description = "Çok güzel \"parıltılı\" bir harita, alt sağ köşede \"%100 Gerçek\" Mührü bulunuyor.",
		map_tier_4_description = "Bu harita çoğu hazineden daha pahalı görünüyor. Haydi gidelim!!!!",

		press_to_combine_pieces = "Harita ${mapTier} parçalarını birleştirmek için ~INPUT_CONTEXT~ tuşuna basın.",

		treasure_map = "Hazine Haritası (Seviye ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "Okyanus ölçek çarpanı yoğunluğu zaten '${intensity}' olarak ayarlandı.",
		no_ocean_scaler_intensity_set = "Zaten herhangi bir okyanus ölçek çarpanı yoğunluğu ayarlanmadı.",
		set_ocean_scaler_to = "Okyanus ölçek çarpanı yoğunluğunu '${intensity}' olarak ayarla.",
		reset_ocean_scaler = "Okyanus ölçek çarpanı yoğunluğunu sıfırla.",
		set_ocean_scaler_no_permission = "Oyuncunun okyanus ölçek çarpanını ayarlamak için gerekli izni yok."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] ${label} satın alın | $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} satın alın | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] ${label} satın alın | $${price} (-${discount}%)",
		purchase_label_sale_far = "İndirimde | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} satın alın | $${price} (-${discount}%)",

		failed_vehicle_spawn = "Aracın spawn edilmesi başarısız oldu.",
		not_enough_funds = "Satın alımı tamamlamak için yeterli bakiye yok.",
		area_not_clear = "Yerleşim alanı temiz değil.",
		something_went_wrong = "Aracı satın alma işlemi sırasında bir hata oluştu.",

		purchased_vehicle = "${label} satın alındı, fiyatı: $${price}.",

		tuner_shop_blip = "Geceyarısı Tuner Dükkanı",

		log_title = "Tuner Dükkanı Satın Alma",
		log_description = "${label} satın alındı, fiyatı: $${price}.",
		log_description_discount = "${discount}% indirimli olarak ${label} satın alındı, fiyatı: $${price}."
	},

	vape = {
		press_to_use = "Hit almak için ~INPUT_CONTEXT~ tuşuna basın. Vape'i kapatmak için ~INPUT_FRONTEND_CANCEL~ tuşuna basın."
	},

	vdm = {
		failed_vdm = "Oyuncunun VDM'si başarısız oldu.",
		invalid_entity = "Araba veya sürücü bulunamadı.",
		invalid_network_id = "Geçersiz ağ kimliği.",
		invalid_target = "Geçersiz hedef.",
		cleared_vdm = "${amount} vdm hedefi temizlendi.",
		failed_vdm_clear = "Vdm hedefleri temizlenemedi.",
		added_vdm_target = "Ağ kimliği ${networkId}'li NPC artık ${target} hedefini takip ediyor.",

		vdm_no_permissions = "Oyuncu, uygun izin olmadan vdm komutunu çalıştırmaya çalıştı."
	},

	vending_machines = {
		vending_coffee = "Kahve satın almak için ~INPUT_CONTEXT~ tuşuna basın. Maliyet $${cost}.",
		vending_coffee_not_enough_cash = "Yeterli nakit paranız yok. Bir kahve satın almak için gereken ücret $${cost}.",
		vending_snack = "Atıştırmalık satın almak için ~INPUT_CONTEXT~ tuşuna basın. Ücret $${cost}.",
		vending_snack_not_enough_cash = "Yeterli nakit paranız yok. Bir atıştırmalık satın almak için gereken ücret $${cost}.",
		vending_soda = "Gazoz satın almak için ~INPUT_CONTEXT~ tuşuna basın. Ücret $${cost}.",
		vending_soda_not_enough_cash = "Yeterli nakit paranız yok. Bir gazoz satın almak için gereken ücret $${cost}.",
		vending_water = "Su şişesi satın almak için ~INPUT_CONTEXT~ tuşuna basın. Ücret $${cost}.",
		vending_water_not_enough_cash = "Su şişesi satın almak için yeterli paranız yok. Maliyeti $${cost}.",
		vending_machine_damaged = "Bu Otomat hasarlı. Lütfen daha sonra kontrol edin.",
		vending_water_cooler = "Bir bardak su almak için ~INPUT_CONTEXT~ tuşuna basın.",

		refill_bottle = "Şişeyi yeniden doldurmak için ~INPUT_CONTEXT~ tuşuna basın.",
		refilling_bottle = "Şişe Dolduruluyor"
	},

	voice = {
		illegal_radio_frequency = "Yasadışı radyo frekanslarına erişmeye çalışıyorsunuz.",
		voice_chat = "Sesli Sohbet",
		voice_server_connected = "Ses destekleyici sunucuya bağlandı. İlgili oyunculara ses veri gönderiliyor.",
		voice_server_disconnected = "Ses sunucusundan koparıldı. Bağlantı bekleniyor.",
		voice_muted = "Sesli sohbet sessize alındı.",
		voice_unmuted = "Sesli sohbet açıldı.",
		broadcasting_voice_to_players = "Oyunculara Yayınlanıyor:",
		listening_to_virtual_players = "Sanal Oyuncular Dinleniyor:",
		radio = "Radyo",
		phone = "Telefon",
		muted_players = "Sessize Alınan Oyuncular:",
		connected = "Bağlı: ${connected}",
		muted = "Sessize Alınan: ${muted}",
		boolean_true = "Doğru",
		boolean_false = "Yanlış",
		target_channel = "Hedef Kanal: ${targetChannel}",
		actual_channel = "Gerçek Kanal: ${actualChannel}",
		target_radius = "Hedef Yarıçapı: ${targetRadius}",
		actual_radius = "Gerçek Yarıçap: ${actualRadius}",

		invalid_server_id = "Geçersiz sunucu ID'si.",
		failed_toggle_listen = "Dinleme durumu değiştirilemedi.",
		listeners = "Dinleyiciler:",
		listening_to = "Dinlenenler:",

		failed_toggle_muted = "Sessiz durumuna geçiş yapılamadı.",
		toggle_muted_on = "${consoleName} artık sesli sohbetten sessiz kaldı.",
		toggle_muted_off = "${consoleName} artık sesli sohbetten çıkarıldı.",

		affected_by_jammer = "Radyonuz bir sinyal karıştırıcısı veya benzeri bir cihazdan etkileniyor gibi görünüyor.",

		listening_missing_permissions = "Oyuncu dinleme durumunu açıp kapamayı denedi ancak gerekli izinlere sahip değil.",
		voice_mute_missing_permissions = "Oyuncu başka bir oyuncunun susturulma durumunu açıp kapamayı denedi ancak gerekli izinlere sahip değil."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] Lavaboyu Kullan",
		using_sink = "Lavaboyu Kullanıyorsun"
	},

	weed_field = {
		pick_weed = "Ekin toplamak için ~INPUT_CONTEXT~ tuşuna basın.",
		picking_weed = "Ekin Toplanıyor"
	},

	wizard = {
		action_missing_permissions = "Oyuncunun uygun izinleri olmadan bir büyücü hareketi yapmaya çalışıldı.",
		action_radius_missing_permissions = "Belirli bir yarıçap içindeki oyunculara uygun izinleri olmadan büyücü işlemleri yapmaya çalışıldı.",
		run_as_missing_permissions = "Başka bir oyuncu olarak bir komut çalıştırmaya uygun izinleri olmadan çalışıldı.",

		menu_title = "Büyücü",

		ragdoll_player = "Yere Düşür",
		ragdoll_player_force = "Yere Düşür (Zorla)",
		punch_player = "Zorla Tekmele",
		taze_player = "Tazer ile Sarhoş Et",
		exit_vehicle_player = "Araçtan Çık",
		yank_steering_wheel_player = "Direksiyon Simidini Çek",
		flashbang_player = "Flashbang",
		paper_bag_player = "Kağıt Torba",
		ignite_player = "Ateşe Ver",
		explode_player = "Patlat",
		quietly_revive_player = "Sessizce Canlandır",
		play_sound = "Ses Çal",

		play_sound_knocking = "Vurma",
		play_sound_discord = "Discord",
		play_sound_phone_call = "Telefon Çağrısı",
		play_sound_message = "Mesaj",
		play_sound_twitter = "Twitter",

		invalid_radius = "Geçersiz yarıçap",
		invalid_server_id = "Geçersiz sunucu kimliği.",

		ragdoll_failed = "Oyuncuyu yere düşürme başarısız oldu.",
		ragdoll_success = "${consoleName} başarıyla yere düşürüldü.",

		punch_success = "${consoleName} başarıyla yumruklandı.",
		punch_failed = "Oyuncunun yumruklanması başarısız oldu.",

		explode_success = "${consoleName} başarıyla patlatıldı.",
		explode_failed = "Oyuncunun patlatılması başarısız oldu.",

		ignite_success = "${consoleName} başarıyla ateşe verildi.",
		ignite_failed = "Oyuncunun ateşe verilmesi başarısız oldu.",

		punch_radius_failed = "Yarıçap içindeki oyuncuların yumruk atan başarısız oldu.",
		punch_radius_success = "Başarıyla ${radius} yarıçapındaki oyuncuları yumruk attırdı.",

		ragdoll_radius_success = "${radius} mesafe içindeki oyuncular başarıyla ragdoll yapıldı.",
		ragdoll_radius_failed = "Mesafedeki oyuncuların ragdoll yapılması başarısız oldu.",

		flashbang_success = "${consoleName} başarıyla flashbang yapıldı.",
		flashbang_failed = "Oyuncuya flashbang yapma başarısız oldu.",

		flashbang_radius_success = "${radius} mesafe içindeki oyuncular başarıyla flashbang yapıldı.",
		flashbang_radius_failed = "Mesafedeki oyunculara flashbang yapma başarısız oldu.",

		missing_command = "Komut eksik.",
		run_as_success = "${consoleName} olarak komut başarıyla yürütüldü.",
		run_as_failed = "${consoleName} olarak komut çalıştırılamadı.",

		no_nearby_vehicle = "Yakınlarda araç yok.",
		reversing_failed = "Ped geri gitmekte başarısız oldu.",
		driving_forwards_failed = "Ped ileri gitmekte başarısız oldu.",
		reversing_success = "Ped geri gitme işlemi başarıyla gerçekleştirildi.",
		driving_forwards_success = "Ped ileri gitme işlemi başarıyla gerçekleştirildi.",

		vehicle_temp_action_missing_permissions = "Oyuncu geçerli izinlere sahip olmadan geçici araç işlemi yapmaya çalıştı."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] Yoga Mat", --I couldn't find a proper translation for "yoga mat". If "yoga mat",
		yoga_mat = "Yoga Mat",
		press_to_stop_yoga = "Yoga yapmayı durdurmak için ~INPUT_CONTEXT~ tuşuna basın."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Zombi Soyuyor",
		press_to_loot_zombie = "[${InteractionKey}] Soy Zombi",
		looting_zombie = "Zombi Soyuyor",
		zombie_looting_injection = "Aşırı zombi soyma! (Sunucu zaman aşımını atladı, muhtemelen bir enjektör kullanarak başarıldı.)",

		zombie_trip_limit = "Zombileri soymaya devam etmek için çok yorgunsunuz. Belki yarın tekrar deneyin."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "'No ped population area' bölgesindesiniz.",
		not_in_no_ped_population_area = "'No ped population area' bölgesi içinde değilsiniz."
	},

	explosions = {
		invalid_explosion_type = "Patlama türü `${explosionType}` geçersiz.",
		invalid_camera_shake = "Kamera sarsıntısı `${cameraShake}` geçersiz.",
		invalid_damage_scale = "Hasar ölçeği `${damageScale}` geçersiz.",
		created_explosion = "`${explosionTypeName}` patlaması oluşturuldu. Hasar ölçeği `${damageScale}`, kamera sarsıntısı `${cameraShake}` olarak ayarlandı.",
		create_explosion_not_developer = "Oyuncu patlama oluşturmaya çalıştı, ancak bir geliştirici değil."
	},

	functions = {
		year = "yıl",
		years = "yıl",
		month = "ay",
		months = "ay",
		day = "gün",
		days = "gün",
		hour = "saat",
		hours = "saat",
		minute = "dakika",
		minutes = "dakika",
		second = "saniye",
		seconds = "saniye",
		just_now = "şimdi",
		unknown = "Bilinmiyor",
		flipped_vehicle_logs_title = "Araç Devrildi",
		flipped_vehicle_logs_details = "${consoleName} bir aracı devirdi.",
		failed_to_find_ground = "Yerde uygun nokta bulunamadı, en yakın yola teleport edildiniz.",

		time_in = "${unit} içinde ${time}",
		time_ago = "${time} ${unit} önce"
	},

	states = {
		invalid_network_id = "Geçersiz ağ kimliği.",
		debug_states_failed = "Bu varlığın durumlarını hata ayıklama başarısız oldu.",
		no_states = "Bu varlığın belirlenmiş durumu yok.",
		printed_states = "${networkId} kimliğine sahip varlığın durumları yazdırıldı.",

		get_entity_states_missing_permissions = "Oyuncu, uygun izinlere sahip olmadan belirli bir varlığın durumlarını almayı denedi."
	},

	-- illegal/*
	corner = {
		corner_ped = "Köşe Ped - ${cornerPedDistance}m (${cornerPedTimer})",
		corner_ped_title = "Köşe Ped",
		corner_ped_already_active = "Zaten seni bekleyen bir köşe pedi var.",
		no_node_found = "Yakındaki yürüyen kişiler için düğüme basılmış düğümler bulunamadı.",
		no_sell_area = "Uyuşturucu satmakla ilgilenecek yürüyen kişilerin bulunduğu bir bölgede değilsiniz.",
		inside_areas_none = "İç Alanlar: Yok",
		inside_areas = "İç Alanlar: ${insideAreas}",
		not_able_to_sell = "Şu anda satış yapamıyorsunuz. Tekrar satmaya çalışmadan önce biraz gezin."
	},

	stockade = {
		dispatch = "[Mesaj]",
		status_1a = "10-78, bir Stockade ${streetName} adresinde acil düğmeye bastı ve destek istiyor.",
		status_1b = "10-78, bir Stockade ${crossingRoad} yakınlarındaki ${streetName} adresinde acil düğmeye bastı ve destek istiyor.",
		status_2a = "10-78, Bir alarm sistemi, Stockade'in kapılarının tamir edildiğini tespit etti ve ${streetName} adresinde destek istiyor.",
		status_2b = "10-78, Bir alarm sistemi, Stockade'in kapılarının tamir edildiğini tespit etti ve ${streetName} adresinde ${crossingRoad} yakınlarında destek istiyor.",
		status_3a = "10-78, Bir alarm sistemi, Stockade'in kapılarının yanlışlıkla açıldığını tespit etti ve ${streetName} adresinde destek istiyor.",
		status_3b = "10-78, Bir alarm sistemi, Stockade'in kapılarının yanlışlıkla açıldığını tespit etti ve ${streetName} adresinde ${crossingRoad} yakınlarında destek istiyor.",
		grab_valuables = "[${InteractionKey}] Değerli Eşyaları Al (${valuablesRemaining} kaldı)",
		grabbing_valuables = "Değerli Eşyalar Alınıyor",
		use_advanced_lockpick = "[${InteractionKey}] Gelişmiş Kilit Açıcı Kullan",
		lockpicking_stockade = "Stockade Kilit Açılıyor",

		status_blip = "Stockade",

		stockade_reward_logs_title = "Stockade Ödülü",
		cash_pickup_logs_details = "${consoleName} ${cashAmount}$ nakit alındı.",
		item_pickup_logs_details = "${consoleName} 1x ${itemName} alındı.",

		reward_diamonds = "Bir elmas aldınız.",
		reward_gold_bar = "Bir altın barı aldınız.",
		reward_cash = "Bir miktar nakit aldınız.",
		reward_keycard_red = "Kırmızı bir Anahtar Kartı aldınız.",

		stockade_logs_title = "Stockade Etkinleştirildi",
		stockade_logs_details = "${consoleName} bir stockade etkinleştirdi."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "Odaklanılmış bir arayüz yok.",
		interfaces_focused = "Odaklanılmış Arayüzler:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "Bir teslimat başlatın.",
		press_to_start_delivery = "Teslimatı başlatmak için ~g~${InteractionKey} ~w~tuşuna basın.",
		already_in_delivery = "Zaten aktif bir teslimatınız var.",
		not_bean_machine_employee = "Bir teslimat yapabilmek için Bean Machine çalışanı olmanız gerekiyor.",
		finish_delivery = "Teslimatı tamamla.",
		press_to_finish_delivery = "Teslimatı tamamlamak için ~g~${InteractionKey} ~w~tuşuna basın.",
		started_delivery = "${deliveryName} teslimatına başlandı. Konum haritanızda işaretlendi.",
		finished_delivery = "${deliveryName} teslimatı tamamlandı. ${totalPrice} toplam kazanç (Teslimat fiyatı: $${deliveryPrice}, İpucu: $${distanceBonus}).",
		error_finishing_delivery = "Teslimatı tamamlarken bir hata oluştu.",
		finished_delivery_title = "Bean Machine Teslimatı Tamamlandı",
		finished_delivery_details = "${consoleName} bir Bean Machine teslimatı tamamladı ve $${deliveryPrice} teslimat ücretiyle birlikte $${distanceBonus} bahşiş aldı, toplamda $${totalPrice} kazandı.",
		delivery_blip = "Bean Machine Teslimatı"
	},

	burger_shot = {
		start_delivery = "Bir teslimat başlat.",
		press_to_start_delivery = "Başlatmak için ~g~${InteractionKey} ~w~tuşuna basın.",
		already_in_delivery = "Zaten aktif bir teslimatınız bulunuyor.",
		not_burger_shot_employee = "Bir Bean Machine çalışanı olmadan teslimat başlatamazsınız.",
		finish_delivery = "Teslimatı bitirin.",
		press_to_finish_delivery = "Teslimatı bitirmek için ~g~${InteractionKey} ~w~tuşuna basın.",
		started_delivery = "${deliveryName} adlı kişiye teslimat yapmaya başladınız. Konum haritanızda işaretlenmiştir.",
		finished_delivery = "${deliveryName} adlı kişiye teslimat tamamlandı. ${deliveryPrice} TL ödeme ve ${distanceBonus} TL bahşiş aldınız, ${totalPrice} TL kazandınız.",
		error_finishing_delivery = "Teslimatı bitirirken bir hata oluştu.",
		finished_delivery_title = "Burger Shot Teslimatı Tamamlandı",
		finished_delivery_details = "${consoleName} Burger Shot teslimatını tamamladı ve ${deliveryPrice} dolar ve ${distanceBonus} dolar bahşiş aldı, toplamda ${totalPrice} dolar kazandı.",
		delivery_blip = "Burger Shot Teslimatı"
	},

	duty = {
		toggle_duty_status_no_permissions = "Oyuncu, uygun izinlere sahip olmadan görev durumunu komut yoluyla açmaya çalıştı",

		duty_status_on = "Görev durumu başarıyla açıldı.",
		duty_status_off = "Görev durumu başarıyla kapatıldı.",
		duty_status_failed = "Görev durumu açılamadı.",

		training_status_on = "Eğitim modu başarıyla açıldı.",
		training_status_off = "Eğitim modu başarıyla kapatıldı.",
		training_status_failed = "Eğitim modunu açmak başarısız oldu.",

		emergency_call = "Acil durum çağrısı var. Almak için ENTER tuşuna basın.",

		toggled_operator_status_on = "Operatör durumu açıldı.",
		toggled_operator_status_off = "Operatör durumu kapatıldı."
	},

	job_center = {
		life_invader = "Hayat İstilacısı",
		life_invader_blip = "İş Başvurusu Yapın",
		ui_close_menu = "Menüyü Kapat",
		press_to_browse_jobs = "İşleri görüntülemek için ~INPUT_CONTEXT~ tuşuna basın.",
		change_job = "İş Değiştir: ${jobName}",
		job_unemployed = "İşsiz",
		job_transportation = "Kamyon Şoförü",
		job_taxi = "Taksi Şoförü",
		job_journalist = "Gazeteci",
		job_government = "Atık Toplayıcı",
		job_mechanic = "Çekici Şoförü",
		job_delivery = "Kargo İşi",
		changed_job_already_set_to_job = "İşiniz zaten ${jobName} olarak ayarlanmış durumda.",
		changed_job_success = "İşiniz başarıyla ${jobName} olarak ayarlandı.",
		changed_job_success_go_to_coords = "${jobName} göreviniz başarıyla ayarlandı. Başlamak için haritanızda gösterilen rotayı takip edin.",
		changed_job_failure = "${jobName} görevinizi ayarlamaya çalışırken bir hata oluştu.",
		changed_job_title = "İş Değiştirildi",
		changed_job_details = "${consoleName} ${jobName} olarak işini değiştirdi."
	},

	jobs = {
		job_refreshed = "İş yenilendi.",
		something_went_wrong = "Bir şeyler yanlış gitti.",
		user_does_not_have_sent_character_loaded = "Kullanıcının yüklenmiş karakteri yok.",
		user_has_no_character_loaded = "Kullanıcının yüklenmiş bir karakteri yok.",
		user_not_found = "Gönderilen kullanıcı sunucuda bulunamadı.",
		invalid_character_id = "Geçersiz karakter kimliği gönderildi.",
		invalid_license_identifier = "Geçersiz lisans tanımlandırıcısı gönderildi."
	},

	police = {
		aim_assist_enabled = "Amenizin artık büyük yeteneklerle dolu olduğu.",
		aim_assist_disabled = "Artık suçlulardan/düşük kişiliklerden daha kötü nişan alacaksınız. Hemen nişan yardımını yeniden etkinleştirmeniz önerilir.",
		you_are_not_police = "Bu özellik sadece polisler için ayrılmıştır, suçlular/düşük kişilikler için değil.",

		undercover_enabled = "Artık gizli görevdesiniz.",
		undercover_disabled = "Artık gizli görevde değilsiniz.",

		npc_vehicle = "Bu araç bir oyuncuya ait değil.",
		not_in_a_vehicle = "Şu anda bir araç kullanmıyorsunuz.",
		invalid_minutes = "Geçersiz zaman (1 dakika ile 12 saat arasında olmalıdır).",

		not_on_duty = "Görevde değilsiniz.",
		failed_impound = "Araç haciz işlemi başarısız oldu.",
		not_near_impound = "PD haciz alanına yakın değilsiniz.",
		impound_success = "Araç başarıyla haczedildi, plaka: `${plate}`, süre: ${minutes} dakika.",

		access_impound = "[${InteractionKey}] Haciz Alanına Erişim",
		impound_lot = "Haciz Alanı",
		exit_impound = "Haciz Alanından Çıkış",
		no_impounded_vehicles = "Şu anda açıkta bekleyen araç yok.",
		failed_impound_list = "Haciz edilen araç listesi alınamadı.",
		impound_owner = "Sahibi: #${cid}",
		withdraw_success = "Araç başarıyla geri alındı.",
		failed_withdraw = "Araç geri alınamadı.",
		vehicle_not_impounded = "Araç şu anda bekletilmiyor.",

		impound_logs_title = "Polis Depo Kayıtları",
		impound_logs_details = "${consoleName}, ${minutes} dakika boyunca ${plate} plakalı aracı polis bekletme depoya koydu.",

		impound_withdraw_logs_title = "PD Geri Alma Kayıtları",
		impound_withdraw_logs_details = "${consoleName}, ${timeLeft} kalan sürece ${plate} plakalı aracı polis bekletme depodan geri aldı.",

		none = "Hiçbiri",
		active = "Aktif",
		not_active = "Aktif Değil",
		active_robberies = "\nAktif Mağaza: ${store}.\nAktif Banka: ${bank}\nAktif Mücevher: ${jewelry}",

		failed_dispatch = "Dağıtım mesajı gönderilemedi.",
		dispatch_title = "[Dağıtım]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Geçersiz dağıtım mesajı (Maksimum 255 karakter).",
		in_training = "Şu anda eğitim modundasınız.",
		cannot_use_dispatch = "Şu anda dağıtım kullanamazsınız.",

		dispatch_message_logs_title = "Dağıtım Mesajı Kayıtları",
		dispatch_message_logs_details = "${consoleName} bir iletişim mesajı gönderdi: `${message}`.",

		no_keys = "Bu aracın anahtarlarına sahip değilsiniz.",
		invalid_drive_mode = "Geçersiz sürüş modu.",
		not_in_police_vehicle = "Bir polis aracında değilsiniz.",
		drive_mode_too_fast = "Sürüş modunu değiştirmek için çok hızlısınız.",
		drive_mode_already_set = "Sürüş modunuz zaten `${mode}` olarak ayarlanmış.",
		drive_mode_failed = "Sürüş modu ayarlanamadı.",
		drive_mode_set = "Sürüş modu başarıyla `${mode}` olarak ayarlandı.",

		mode_s = "Spor Modu",
		mode_d = "Sürüş Modu",

		drive_mode_logs_title = "Sürüş Modu Değiştirildi",
		drive_mode_logs_details = "${consoleName} sürüş modunu `${mode}` olarak değiştirdi."
	},

	state = {
		license_heli = "Helikopter",
		license_fw = "Sabit Kanatlı",
		license_cfi = "Sertifikalı Uçuş Eğitmeni",
		license_hw = "Ağır",
		license_hwh = "Ağır Helikopter",
		license_perf = "Performans",
		license_utility = "Hizmet",
		license_commercial = "Ticari",
		license_management = "Yönetim",
		license_military = "Askeri",
		license_special = "Özel Uçak",
		license_hunting = "Avcılık Lisansı",
		license_fishing = "Balıkçılık Lisansı",
		license_weapon = "Silah Taşıma Lisansı",
		gave_character_license = "${characterName}'ye `${licenseLabel}` lisansı verildi.",
		character_already_has_license = "${characterName} zaten `${licenseLabel}` lisansına sahip.",
		removed_character_license = "${characterName}'nin `${licenseLabel}` lisansı kaldırıldı.",
		character_does_not_have_license = "${characterName}'nin `${licenseLabel}` lisansı yok.",
		license_not_found = "`${licenseName}` lisansı bulunamadı.",
		user_not_found_with_character_id = "Karakter kimliği `${characterId}` ile kullanıcı bulunamadı.",
		no_license_added = "Lisans eklenmedi.",
		invalid_character_id = "Eklenen karakter ID'si geçersiz.",
		no_character_id_added = "Karakter ID'si eklenmedi.",
		your_licenses_are = "Lisanslarınız şu şekildedir: ${licenses}",
		player_licenses_are = "${characterName} adlı kişinin sahip olduğu lisanslar şunlardır: ${licenses}",
		you_have_no_licenses = "Hiç lisansınız yok.",
		player_has_no_licenses = "${characterName} adlı kişinin hiç lisansı yok.",
		failed_to_get_licenses = "Lisanslar alınamadı.",
		license_list = "Mevcut lisanslar: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "Araç spawner'ına erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		tow_vehicles = "Araçları Çek",
		vehicle_list = "Araç Listesi",
		park_vehicle = "Araç Park Et",
		parked_vehicle = "Araç park edildi.",
		no_vehicle_to_park = "Park edilecek araç yok.",
		close_menu = "Menüyü Kapat",
		purchased_vehicle = "Araç satın alındı.",
		shop_on_timeout = "Araç dükkanı bir süreliğine kapalıdır. Lütfen tekrar deneyin.",
		spawn_area_not_clear = "Doğma noktasında engel var.",
		purchase_funds = "Yetersiz bakiye.",
		return_button = "Geri Dön",

		toggled_messages_on = "Mesajlar açıldı.",
		toggled_messages_off = "Mesajlar kapatıldı."
	},

	weazel_news = {
		press_to_access_spawner = "Araç çıkarma menüsüne erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		weazel_news = "Weazel Haber",
		vehicle_list = "Araç Listesi",
		close_menu = "Menüyü Kapat",
		return_button = "Geri Dön",
		park_vehicle = "Araç Park Et",
		parked_vehicle = "Aracınız park edildi.",
		no_vehicle_to_park = "Park edilecek araç yok.",
		spawned_vehicle = "Aracınız çıkarıldı.",
		spawner_on_timeout = "Araç çıkarma menüsü kullanıma kapatıldı. Lütfen daha sonra tekrar deneyin.",
		spawn_area_not_clear = "Doğuş alanı açık değil."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number2} içinde ${number1}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "${plateText} plakalı araç için ${locationLabel} konumunda Araç Uyarısı tetiklendi.",
		vehicle_alert_blip = "Araç Uyarısı"
	},

	boats = {
		anchor_disconnected = "Salmastrası başarıyla bağlantısı kesildi.",
		anchored_successfully = "Salmastranız başarıyla kullanıma hazır.",
		removing_anchor = "Salmastra Bağlantısı Kesiliyor.",
		deploying_anchor = "Salmastra Kullanıma Hazır.",
		no_vehicle_nearby = "Daha önce bağlayabileceğiniz herhangi bir bot yok."
	},

	car_wash = {
		use_car_wash = "Araç Yıkama hizmetini kullanmak için ~INPUT_CONTEXT~ tuşuna basın. Ücreti $${cost}.",
		stop_car_to_wash = "Araç Yıkama hizmetini kullanmak için aracınızı durdurun.",
		vehicle_already_clean = "Bu araç zaten yıkanmaya ihtiyaç duymuyor.",
		car_wash = "Araç Yıkama",
		air_unit_damaged = "Bu Hava Ünitesi hasarlı.",
		air_unit_not_enough_cash = "Hava Ünitesi'ni kullanmak için yeterli paranız yok.",
		air_unit_exit_vehicle = "Hava Ünitesi'ni kullanmak için araçtan inin.",
		air_unit_press_to_use = "Hava Ünitesi'ni kullanmak için ~g~${SeatEjectKey} ~w~tuşuna basarak $${cost} ödeyin.",
		air_unit_purchase_cleaning_kit = "Temizlik kiti satın almak için ~g~${InventoryKey} ~w~tuşuna basınız.",
		cleaning_vehicle = "Araç Temizliği",
		not_enough_money = "Hava ünitesini kullanmak için yeterli paranız yok.",
		vehicle_not_in_range = "Araç, temizlenebilecek mesafeden çok uzakta."
	},

	carrier = {
		use_catapult = "Kötüye kullanımdan kaçınmak için hava yastığına bağlanmak için ~INPUT_CONTEXT~ tuşuna basın.",
		use_launch = "Füze fırlatmak için ~INPUT_VEH_HANDBRAKE~ tuşunu kullanın."
	},

	damage = {
		vehicle = "Araç Kimliği: ${entity}",
		general = "Genel: ${value}",
		body = "Kasa: ${value}",
		engine = "Motor: ${value}",
		petrol_tank = "Tank: ${value}",
		temperature = "Sıcaklık: ${value}",
		tracked_vehicle = "Paletli Araç",

		debug_vehicle_on = "Araç hata ayıklama açık.",
		debug_vehicle_off = "Araç hata ayıklama kapalı."
	},

	fuel = {
		exit_to_fuel = "Yakıt almak için araçtan çıkın.",
		press_to_fuel = "Araç yakıtını almak için ~g~${InteractionKey} ~w~tuşuna basın.",
		fuel_pump_text = "Yakıt Bedeli: $${fuelCost}~n~Yakıt almayı durdurmak için ~g~E ~w~tuşuna basın.",
		vehicle_text = "Yakıt Seviyesi: ${fuelLevel}%",
		tank_full = "Depo dolu.",
		vehicle_busy = "Yakındaki araç meşgul.",
		purchase_jerry_can = "Jerry Can satın almak için ~g~${InventoryKey} ~w~tuşuna basın.",
		gas_station = "Benzin İstasyonu",
		petrolcan_fuel_text = "Kalan Benzin Miktarı: ${petrolAmount}%~n~Durdurmak için ~g~E ~w~tuşuna basın.",
		player_busy = "Başka bir işle meşgulsünüz.",
		fuel_level_set_to = "Yakıt seviyesi `${fuelLevel}` olarak ayarlandı.",
		not_in_a_vehicle = "Araçta değilsiniz.",
		vehicle_engine_on = "Motor hala çalışıyor.",

		set_fuel_no_permissions = "Oyuncu, araçların yakıt seviyesini uygun izinler olmadan ayarlamaya çalıştı.",

		vehicle_exploded_logs_title = "Araç Patladı",
		vehicle_exploded_logs_details = "${consoleName}, çalışan bir motordan dolayı bir aracın yakıtını doldurdu ve bir patlamaya neden oldu."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "Hız: ${speed} km/s\nModel: ${model}\nPlaka: ${plate}",
		helicopter_camera_vehicle_info_imperial = "Hız: ${speed} mp/s\nModel: ${model}\nPlaka: ${plate}",
		helicopter_camera_altitude = "${altitude}ft AGL",
		helicopter_camera_altitude_asl = "${altitude}ft ASL",
		unknown = "Bilinmeyen"
	},

	garages = {
		garage_empty = "Garajınız boş!",
		impound_lot = "Çekme Alanı",
		police_impound = "Polis Çekme Alanı",
		engine = "Motor",
		body = "Gövde",
		vehicle_in = "İçinde",
		vehicle_out = "Dışında",
		vehicle_at_police_impound = "Aracınız şu an polis kontrolünde.",
		vehicle_at_impound = "Aracınız Çekme Alanı'nda bulunuyor.",
		waypoint_to_impound = "GPS'inize Çekme Alanı için bir yol tarifi belirlendi.",
		unable_to_withdraw = " ${location} konumunda bulunduğu için aracınızı geri alamıyorsunuz.",
		waypoint_to_vehicle = "GPS'inize aracınız için bir yol tarifi belirlendi.",
		vehicle_currently_at = "Aracınız şu an ${location} konumunda bulunuyor.",
		vehicle_in_garage = "Aracınız ${garageName} garajında bulunuyor.",
		insufficient_funds = "Bu aracı çekmek için yeterli paranız yok.",
		error_withdrawing = "Aracınızı çekerken bir hata oluştu.",
		withdraw_timeout = "Başka bir araç çekmeden önce lütfen biraz bekleyin.",
		garage_in_use = "Bu garaj şu anda kullanımda, lütfen biraz bekleyin.",
		invalid_model = "Geçersiz veya bilinmeyen araç modeli.",
		vehicle_in_the_way = "Spawn noktasını engelleyen bir araç var.",
		vehicle_is_out = "Aracınız zaten dışarıda.",
		vehicle_stored = "Aracınız depolandı.",
		error_storing = "Araç depolanırken bir hata meydana geldi. Yöneticilerle iletişim kurun.",
		no_nearby_vehicle = "Yakınınızda araç bulunmuyor.",
		no_vehicles_to_retrieve = "Kurtaracak aracınız yok!",
		vehicle_retrieved = "Araç başarıyla kurtarıldı.",
		error_retrieving = "Aracınızı kurtarma işlemi sırasında bir hata meydana geldi.",
		not_enough_balance_to_retrieve = "Aracınızı kurtarmak için yeterli miktarda bakiyeniz yok.",
		press_to_access = "Garaja erişmek için ~INPUT_CONTEXT~ tuşuna basın.",
		ui_return = "Geri Dön",
		ui_vehicle_list = "Araç Listesi",
		ui_store_vehicle = "Araç Sakla",
		ui_vehicle_sell = "Araçları Sat",
		ui_retrieve_vehicle = "Araçları Geri Al",
		ui_close_menu = "Menüyü Kapat",
		garage_letter = "${letter} Garajı",
		garage_emergency = "${type} Garajı",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "Hiçbir aracınız el konulmadı!",
		you_must_retrieve_this_vehicle = "Bu araca erişmek için önce onu geri almanız gerekiyor.",
		garage = "Garaj",
		retrieved_vehicle_logs_title = "Araç Geri Alındı",
		retrieved_vehicle_logs_details = "${consoleName} ${price} karşılığında plakası `${plate}` olan aracı geri aldı.",

		state_loading_model = "Model Yükleniyor...",
		state_withdrawing = "Çekiliyor...",

		state_retrieve_searching = "Aranıyor...",
		state_retrieving = "Geri Alınıyor...",

		state_storing = "Saklanıyor...",

		state_loading = "Yükleniyor...",

		vehicle_weight = "Ağırlık: ${weight}",
		last_garage_letter = "Son - Garage ${letter}",
		last_garage_impound = "Son - Çekici Alanı",
		no_last_garage_letter = "Son Garaj Yok",

		purchase_vehicle = "Mağazaya erişmek için ~INPUT_CONTEXT~ tuşuna basın",
		emergency_shop = "Araç Dükkanı",
		exit_shop = "Dükkanı Kapat",
		purchase_success = "Satın aldığınız ${label} araç, garajınıza eklenmiştir.",
		purchase_failed = "Araç satın alma işlemi başarısız oldu.",
		already_owned = "Bu araç modeline zaten sahipsiniz.",
		maximum_owned = "6 araçtan fazlasına sahip olamazsınız.",
		not_enough_money = "Bu aracı satın almak için yeterli paranız yok.",

		sold_vehicle = "${label} aracı ${price}$ karşılığında satıldı.",
		failed_sell_vehicle = "Araç satışı başarısız oldu.",

		sold_vehicle_logs_title = "Araç Satıldı",
		sold_vehicle_logs_details = "${consoleName}, plakası ${plate} olan bir `${modelName}` acil durum aracını ${price} fiyatıyla sattı.",

		purchased_vehicle_logs_title = "Araç Satın Alındı",
		purchased_vehicle_logs_details = "${consoleName}, plakası ${plate} olan bir `${modelName}` acil durum aracını ${price} fiyatıyla satın aldı.",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Garaj hata ayıklama açıldı.",
		toggle_garage_debug_toggled_off = "Garaj hata ayıklama kapatıldı."
	},

	handlings = {
		set_handling_override_not_super_admin = "Oyuncu uygun izin olmadan bir araç özelliği değiştirmeye çalıştı.",
		remove_handling_override_not_super_admin = "Oyuncu uygun izin olmadan bir araç özelliği değiştirmeyi kaldırmaya çalıştı."
	},

	keys = {
		no_nearby_player = "Yakınınızda oyuncu bulunamadı.",
		no_nearby_vehicle = "Yakınınızda araç bulunamadı.",
		no_keys_for_vehicle = "Bu aracın anahtarlarına sahip değilsiniz.",
		vehicle_locked = "Araç Kilitlendi",
		vehicle_unlocked = "Araç Açıldı",
		h_to_hotwire = "[H] Direksiyon kilidini açmak için",
		received_keys = "${plate} plakalı araç için anahtarlar alındı.",
		received_keys_no_plate = "Araç için anahtarlar alındı.",
		you_are_not_in_a_vehicle = "Araçta değilsiniz.",
		you_are_in_a_vehicle = "Şu anda bir araçtasınız.",
		hotwired_vehicle_with_plate_number = "${plateNumber} plakalı araç bağlanmıştır.",
		unable_to_hotwire_vehicle = "Araç bağlanamadı.",
		picked_up_keys = "${plate} plakalı aracın anahtarları alındı.",
		invalid_server_id = "Geçersiz sunucu numarası.",
		hotwired_vehicle_for_player = "${displayName} araçlarını zorla çalıştırmaları için teşvik edildi."
	},

	modifications = {
		wheels_reset = "Tekerlekler sıfırlanıyor.",
		wheels_already_reset = "Tekerlekler zaten varsayılan konumunda.",
		wheels_modified = "Tekerlekler değiştirildi.",
		wheels_none_specified = "Tekerlek belirtilmedi.",
		wheels_none_valid_specified = "Geçerli tekerlek belirtilmedi.",
		not_in_a_car = "Arabanın içinde değilsin.",
		invalid_value = "Geçersiz değer."
	},

	plates = {
		plate_number_is_available = "Plaka numarası `${plateNumber}` uygun.",
		plate_number_is_not_available = "Plaka numarası `${plateNumber}` uygun değil.",
		missing_valid_plate_number = "Geçerli 'plaka numarası' parametresi eksik.",
		missing_valid_vehicle_id = "Geçerli 'araç kimliği' parametresi eksik.",
		database_error = "Arka plan veritabanı hatası meydana geldi.",
		no_custom_plate_package = "Özel plaka paketiniz yok. Daha fazla bilgi için web sitemize göz atın!",
		api_error = "Arka plan API'mızda bir hata oluştu.",
		api_not_available = "Arka plan API'mız kullanılamıyor.",
		vehicle_does_not_belong_to_player = "Araç ID `${vehicleId}` size ait değil.",
		vehicle_id_does_not_exist = "Araç ID `${vehicleId}` mevcut değil.",
		you_have_no_character_loaded = "Yüklenmiş bir karakteriniz yok.",
		vehicle_plate_changed = "${vehicleId} ID'li aracın plaka numarası '${plateNumber}' olarak değiştirildi.",

		you_are_not_in_a_vehicle = "Araçta değilsiniz.",
		fake_plate_active = "Aracınız için başarıyla sahte bir plaka oluşturuldu.",
		fake_plate_inactive = "Araç plakası varsayılana geri döndürüldü.",

		fake_plate_missing_permissions = "Oyuncu, uygun izin olmadan komutla sahte bir plaka ayarlamaya çalıştı."
	},

	runways = {
		you_are_not_in_a_plane = "Uçakta değilsiniz.",
		ifr_disabled = "IFR devre dışı bırakıldı.",
		ifr_enabled = "IFR etkinleştirildi."
	},

	sirens = {
		sirens_muted_on = "Tüm sirenler şimdi sessize alındı.",
		sirens_muted_off = "Tüm sirenler şimdi açık."
	},

	spawner = {
		press_to_access_spawner = "Araç spawner'ına erişmek için ~INPUT_CONTEXT~ tuşuna basın.",

		parked_vehicle = "Araç başarıyla park edildi.",

		spawner_burger_shot = "Burger Shot Teslimat Araçları",
		spawner_bean_machine = "Bean Machine Teslimat Araçları",
		spawner_weazel_news = "Weazel News Araçları",
		close_menu = "Menüyü Kapat",
		vehicle_list = "Araç Listesi",
		park_vehicle = "Araç Park Et",
		return_button = "Geri Dön",

		failed_spawn = "Araç oluşturma başarısız oldu.",
		failed_area = "Bölge temiz değil.",
		failed_job = "Doğru işe sahip değilsin.",
		failed_generic = "Bir şeyler yanlış gitti."
	},

	vehicles = {
		flip_flipping = "Araç Devirme",
		flip_unable = "Araçta insan varken aracı deviremezsin.",
		vehicle_busy = "Lütfen bekleyin, araç meşgul!",
		hold_to_eject = "Çıkarmak için basılı tut",
		taking_keys = "Anahtar alınıyor",
		belt_on = "Kemer takılı",
		belt_off = "Kemer çıkarıldı",
		mileage = "Kilometre",
		vehicle_mileage_amount = "Bu araç ${miles} mile sahip.",
		not_in_driver_seat = "Arazi uzunluğunu kontrol etmek için sürücü koltuğunda olmalısınız.",
		not_driving_vehicle = "Araç sürmüyorsunuz.",
		vehicle_locked = "Araç kilitli.",
		gear_animation_enabled = "Vites animasyonu (ve sesleri) artık etkinleştirildi.",
		gear_animation_disabled = "Vites animasyonu (ve sesleri) artık devre dışı bırakıldı.",
		manual_gears_enabled = "Manuel vites kullanımı artık etkinleştirildi.",
		manual_gears_disabled = "Manuel vites kullanımı artık devre dışı bırakıldı.",
		manual_gear_set_to = "Vites ${gearId} olarak ayarlandı.",
		speed_limiter_set_to_metric = "Hız sınırlayıcı şimdi hızı ${speed} km/s'e sınırlayacak.",
		speed_limiter_set_to_imperial = "Hız sınırlayıcı şimdi hızı ${speed} mp/h'e sınırlayacak.",
		speed_limiter_reset = "Hız sınırlayıcı araç durumu değiştiğindeki hıza göre sınırlama yapacak.",
		speed_limiter_on_metric = "Hız sınırlayıcı ${speed} km/s'e ayarlandı.",
		speed_limiter_on_imperial = "Hız sınırlayıcı ${speed} mp/h'e ayarlandı.",
		speed_limiter_on_plane_metric = "Hız sınırlayıcı ${speed} km/s'e ve ${altitude} metre yüksekliğe ayarlandı.",
		speed_limiter_on_plane_imperial = "Hız sınırlayıcı ${speed} mp/h ve ${altitude} ft değerlerine ayarlandı.",
		speed_limiter_on_helicopter_metric = "Hız sınırlayıcı ${altitude} metre (yerinde) değerine ayarlandı.",
		speed_limiter_on_helicopter_imperial = "Hız sınırlayıcı ${altitude} ft (yerinde) değerine ayarlandı.",
		autopilot_metric = "~g~Otomatik pilot~s~: ${altitude}m ~c~/~s~ ${speed}km/s",
		autopilot_imperial = "~g~Otomatik pilot~s~: ${altitude}ft ~c~/~s~ ${speed}deniz mili/s",
		you_are_cuffed = "Kelepçelendiniz.",
		belt_is_on_and_vehicle_is_locked = "Kemeriniz takılı ve araç kilitli.",
		belt_is_on = "Kemeriniz takılı.",
		vehicle_is_locked = "Araç kilitli.",

		nearest_player_not_vehicle = "En yakın oyuncu araçta değil.",
		no_dead_player_nearby = "Yakınınızda ölmüş bir oyuncu araçta değil.",
		dragging_out_player = "Oyuncu araçtan çıkarılıyor.",
		vehicle_too_fast = "Araç çok hızlı hareket ediyor.",

		modifying_brakes = "Frenler düzenleniyor.",
		toggle_brakes_on = "Frenler kapalı.",
		toggle_brakes_off = "Frenler açık.",
		failed_modify_brakes = "Frenler düzenlenemedi.",

		toggle_disabled_brakes_no_permissions = "Oyuncu, uygun izinlere sahip olmadan komut aracılığıyla etkisizleştirilmiş frenleri açmaya çalıştı.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "Oyuncu, uygun izinlere sahip olmadan bir aracı birinin garajına eklemeye çalıştı.",
		add_vehicle_added_vehicle_for_everyone = "Herkes için ${modelName} model adlı araç eklendi.",
		add_vehicle_added_vehicle_for_player = "${consoleName} için ${modelName} model adlı araç eklendi.",
		add_vehicle_added_vehicle = "${modelName} model adlı araç eklendi.",
		add_vehicle_character_not_loaded = "Hedef oyuncunun yüklenmiş karakteri yok.",
		add_vehicle_target_user_not_found = "Hedef kullanıcı bulunamadı.",
		add_vehicle_invalid_input = "Geçersiz girdi.",
		add_vehicle_no_permissions = "İzin yok.",
		add_vehicle_user_not_found = "Kullanıcı bulunamadı.",
		add_vehicle_invalid_player = "Sunucu ID'si `${serverId}` olan oyuncu bulunamadı.",
		add_vehicle_invalid_model_name = "Model adı `${modelName}` geçerli bir model değil.",
		add_vehicle_no_model_name = "Model adı eklenmedi.",

		added_vehicle_for_everyone_logs_title = "Herkes İçin Araç Eklendi",
		added_vehicle_for_everyone_logs_details = "${consoleName}, herkesin garajına `${modelName}` model isimli bir araç ekledi.",
		added_vehicle_for_player_logs_title = "Oyuncuya Araç Eklendi",
		added_vehicle_for_player_logs_details = "${consoleName}, ${targetConsoleName}'in garajına `${modelName}` model isimli bir araç ekledi.",
		added_vehicle_logs_title = "Araç Eklendi",
		added_vehicle_logs_details = "${consoleName}, kendi garajına `${modelName}` model isimli bir araç ekledi.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "Oyuncu, gereken izinlere sahip olmadan bir araçtaki araç silahlarını açmaya çalıştı.",
		toggled_vehicle_weapons_on = "Araç silahları açıldı.",
		toggled_vehicle_weapons_off = "Araç silahları kapatıldı.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "Bulunduğunuz araç ağda değil.",
		toggled_vehicle_weapons_not_in_a_vehicle = "Araçta değilsiniz.",
		toggled_vehicle_weapons_target_user_not_found = "Hedef kullanıcı bulunamadı.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Hedef oyuncu bir araçta değil.",
		toggled_vehicle_weapons_for_player_on = "${consoleName} için araç silahları açıldı.",
		toggled_vehicle_weapons_for_player_off = "${consoleName} için araç silahları kapatıldı.",
		toggled_vehicle_weapons_for_everyone = "Araç silahları herkes için açıldı.",

		toggled_vehicle_weapons_on_logs_title = "Araç Silahları Açıldı",
		toggled_vehicle_weapons_on_logs_details = "${consoleName}, bir aracın silahlarını açtı.",
		toggled_vehicle_weapons_off_logs_title = "Araç Silahları Kapatıldı",
		toggled_vehicle_weapons_off_logs_details = "${consoleName}, bir aracın silahlarını kapattı.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Oyuncunun Aracının Silahları Açıldı",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName}, ${targetConsoleName}'nin aracının silahlarını açtı.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Oyuncunun Aracının Silahları Kapandı",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName}, ${targetConsoleName}'nin aracının silahlarını kapattı.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Herkes için Araç Silahları Açıldı",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} araç silahlarını herkes için açtı.",

		breaking_window = "Cam Kırma",
		not_near_window = "Bir pencereye yeterince yakın değilsiniz.",
		not_near_vehicle = "Yakınızda araç yok.",

		wheelie_no_vehicle = "Araç Yok",
		wheelie_engine_off = "Motor Kapalı",
		wheelie_idling = "Bekleme",
		wheelie_ready = "Hazır",
		wheelie_boosting = "Hızlandırma",

		invalid_power_level = "Geçersiz güç seviyesi (1-5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "VIN kontrol ediliyor",
		not_driver = "Şu anda araç kullanmıyorsunuz.",
		failed_vin_get = "VIN alınamadı.",
		vin_checked = "Bu aracın VIN numarası `${vin}`.",
		vin_scratched = "VIN numarası çizildi.",

		looking_up_vin = "VIN aranıyor",
		invalid_vin = "Geçersiz veya eksik VIN numarası.",
		failed_vin_lookup = "VIN numarası araması başarısız oldu.",
		vin_lookup_details = "VIN `${vin}`, `${fullName}` sahibi, `${plate}` plakalı araca kayıtlıdır.",
		vin_lookup_unregistered = "VIN `${vin}` hiçbir araca kayıtlı değil."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] Kesmek için basılı tutun",
		hold_to_slash = "Kesmek için basılı tutun",
		slashing_tire = "Lastiği kesmek"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "Cephane kutusunu açmak",
		failed_unbox = "Cephane kutusunu açarken hata oluştu.",
		failed_unbox_full = "Daha fazla bu tür cephane taşıyamazsınız.",
		unbox_success = "Başarıyla ${amount}x ${ammoType} çıkardınız.",
		unbox_success_box = "Başarıyla bir cephane kutusu çıkardınız.",

		type_pistol = "tabanca mermisi",
		type_smg = "sub makinalı tüfek mermisi",
		type_rifle = "tüfek mermisi",
		type_sniper = "nişancı tüfeği mermisi",
		type_shotgun = "12 kalibrelik tüfek mermisi",
		type_stungun = "elektrikli taser kartuşu",

		fill_ammo_success = "Mermiler başarıyla dolduruldu.",
		fill_ammo_failed = "Mermiler doldurulamadı."
	},

	weapons = {
		pick_up_fire_extinguisher = "Yangın söndürücüyü almak için ~INPUT_CONTEXT~ tuşuna basın.",
		press_to_drop_fire_extinguisher = "Yangın söndürücüyü bırakmak için ~INPUT_FRONTEND_RRIGHT~ tuşuna basın.",
		illegal_fire_extinguisher_model = "Yangın söndürücüsü olarak tanımlanmayan bir model silindiği için tüm istemcilere silme işlemi başarısız oldu.",

		airsoft_mode_on = "Airsoft modu açıldı.",
		airsoft_mode_off = "Airsoft modu kapatıldı.",
		airsoft_mode_failed = "Airsoft modu değiştirilemedi.",

		no_weapon_equipped = "Hiçbir silahınız yok.",
		no_ammo = "Bu silah için mermi yok.",
		infinite_ammo = "Bu silah için sonsuz mermiye sahipsiniz.",
		ammo_count = "${clips} tam şarjörünüz var (${total} toplam mermi).",
		ammo_count_loose = "${clips} tam şarjörünüz ve ${loose} mermili 1 şarjörünüz var (${total} toplam mermi).",

		firing_mode_0 = "Ateşleme modu varsayılan olarak ayarlandı.",
		firing_mode_1 = "Atış modu Tek Atış olarak ayarlandı.",
		firing_mode_2 = "Silah emniyeti açıldı.",

		safety_is_on = "Silah emniyeti açık.",

		firing_mode_set_1 = "Atış modu Tek Atış olarak ayarlandı.",
		firing_mode_set_2 = "Silah emniyeti açık.",

		folded_stock = "Katlanmış Dipçik",
		unfolded_stock = "Açılmış Dipçik",
		failed_to_toggle_stock = "Dipçik değiştirilemedi.",
		weapon_has_no_stock = "Bu silahın dipçiği yok."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Kayıt Ol",
		check_in_timer = "[${remaining}s] Kayıt Ol",
		check_in_escorted = "Eşlik ediliyorsunuz",
		checking_in = "Checked in",
		doctor_notified = "Bir doktor çağrıldı, lütfen bekleyin.",
		leave_bed = "Çıkmak için ~INPUT_CONTEXT~ tuşuna basın.",
		you_have_been_charged = "Yaralanmalarınız için $${cost} ücret alınmıştır.",
		beds_occupied = "Tüm yataklar dolu.",
		patient_checked_in = "Hasta ${bed} numaralı yatağa yerleştirildi.",
		stop_bleeding = "[E] Kanamayı Durdur",
		stopping_bleeding = "Kanama Durduruluyor",
		bleeding_stopped = "Kanama Durdu",
		overdose_effects = "Aşırı doz etkileri yaşıyorsunuz.",
		you_have_parasite = "Parazitiniz var.",
		you_have_multiple_parasite = "Çoklu parazitiniz var",
		bandage = "[E] Yaraları bandajla",
		bandaging = "Yaraları bandajlama",
		wounds_bandaged = "Yaralar bandajlandı",
		treat_injury = "[E] ${label} yaralanmasını tedavi et",
		treating_injury = "${label} yaralanması tedavi ediliyor",
		injury = "${label} yaralanması",
		cpr_done = "CPR başarılı oldu",
		cpr_fail = "Kişi bulunamadı",
		went_on_duty = "Göreve başladı",
		went_off_duty = "Görevden ayrıldı",
		on_duty = "görevde",
		off_duty = "görevden ayrı",
		press_to_sign = "İmzalamak için ~g~E ~w~tuşuna basın ",
		open_vehicle_spawner = "Araç spawner'ını açmak için ~g~E ~w~tuşuna basın",
		open_heli_spawner = "Helikopter menüsünü açmak için ~g~E ~w~tuşuna basın",
		open_boat_spawner = "Tekne menüsünü açmak için ~g~E ~w~tuşuna basın",
		on = "açık",
		off = "kapalı",
		sign_as_doctor = "${status} olarak doktor olarak kayıt olmak için ~g~E ~w~tuşuna basın",
		close_menu = "Menüyü Kapat",
		vehicle_list = "Araç Listesi",
		park_vehicle = "Araç Parkı",
		clear_area = "Araç çıkarmadan önce garajı boşaltın",
		unable_to_extra = "Bu araçta 'ekstralar' değiştirilemiyor!",
		warning = "Uyarı",
		invalid_input = "Geçersiz Giriş.",
		unable_to_extra_on_vehicle = "Bu araçta 'ekstralar' değiştirilemiyor!",
		heli_here_already = "Helikopter zaten helipad'de",
		ems_air_hq = "EMS Hava Merkezi",
		ems_boat_hq = "EMS Bot Merkezi",
		ems_garage = "EMS Garajı",
		e_to_get_treated = "[E] Tedavi Ol - $1250",
		get_treated = "Tedavi Ol - $1250",
		you_are_being_treated = "Tedavi oluyorsunuz",
		being_treated = "Tedavi ediliyorsunuz",
		minute = "dakika",
		minutes = "dakika",
		second = "saniye",
		seconds = "saniye",
		kurwa_and = "ve",
		wait_for_paramedic = "Lütfen bir sağlık görevlisinin gelmesini bekleyin veya ${zaman} sonra yeniden doğabilirsiniz",
		cannot_respawn_currently = "Şu anda yeniden doğamazsınız",
		hold_to_respawn = "Yeniden doğmak için ~b~ENTER ~w~tuşuna basılı tutun veya bir paramedik gelmesini bekleyin",
		hold_to_respawn_secondslol = "Yeniden doğmak için ~b~ENTER (${seconds}) ~w~saniye tuşuna basılı tutun veya bir paramedik gelmesini bekleyin",
		passed_out = "Bayıldın",
		light = "Hafif",
		moderate = "Orta",
		heavy = "Ağır",
		severe = "Ciddi",
		arms_injured = "Kollarınız çok yaralı, ateş edemiyorsunuz",
		injuryb = "Yaralanma",
		bleeding_multiple_injuries = "çoklu yaralanmalı kanama",
		feels_irritated = "rahatsız hissediyor",
		feels_painful = "acılı hissediyor",
		feels_extremely_painful = "çok ağrılı hissediyorsun",
		multiple_injuries = "Çok sayıda yaralanman var",
		bleeding = "kanama",
		bleeding_with_injury = "${label} yaralanması ile kanıyorsun",
		bleeding_reduced = "Kanama azaltıldı",
		bleeding_self_stopped = "Kanama kendiliğinden durdu",
		thanks_for_loot = "Baygınken soyuldun. Bazı eşyalar kayıp olabilir.",
		serial_number = "Seri Numarası: ${serialNumber}<br>Bu silah ${fullName} (#${characterId}) tarafından kayıt edilmiştir.",
		serial_number_unknown = "Seri Numarası: Bilinmiyor.",
		badge_owner = "<i>Bu rozet <b>${fullName} (${positionName})</b> tarafından kullanılıyor.</i>",
		badge_owner_unknown = "Rozet sahibi bilinmiyor.",
		citizen_card_owner = "<i>Bu kimlik <b>${fullName} (#${characterId})</b>'ye ait.</i>",
		citizen_card_has_portrait = "<i>Resmi var.</i>",
		picture_pending = "<i>Resim hala işleniyor...</i>",
		picture_selfie_owner = "<i>Bu bir <b>${fullName}</b> fotoğrafı.</i>",
		bought_by = "${buyerName} (${buyerCid}) tarafından satın alındı.",
		bought_by_unknown = "Bu öğenin satın alanı bilinmiyor.",
		cigarette_pack = "${cigarettes} sigara kaldı.",
		evidence_incomplete = "Bu delil torbası eksik.",
		evidence_type = "Delil Türü",
		processed_picked_up = "<i>${pickupName} tarafından alındı ve ${processName} tarafından işlendi.</i>",
		picked_up = "<i>${pickupName} tarafından alındı.</i>",
		processed_by = "<i>${processName} tarafından işlendi.</i>",
		evidence_casings = "Mermi kovanları seri numarasına geri döndü: ${serialNumber} ve bu zamanda kullanım sırasında ${buyerName} (${buyerCid}) tarafından tutuluyordu.",
		evidence_bullets = "Mermi etkileri ${bulletLabel} tarafından oluşturulmuş gibi görünüyor.",
		evidence_clothing = "${clothingType} bir giysi parçası.",
		evidence_car_dna = "DNA, ${plateNumber} plakalı araçtan toplandı ve ${DNAOwnerName} (${DNAOwner}) a ait çıktı.",
		evidence_dna = "${fullName} #${characterId}'dan toplanan DNA.",
		evidence_fingerprint = "${fullName} #${characterId}'nin parmak izi.",
		evidence_not_processed = "Bu delil torbası henüz işlenmemiş.",
		additional_information = "Ek Bilgi:",
		picked_up_at_location = "Şurada toplandı:",
		clothing_dna_trace = "DNA izleri ${fullName} (#${cid}) ile ilişkilendirildi.",
		clothing_dna_trace_unprocessed = "Kıyafetlerde işlenmemiş DNA izleri",
		timestamp_of_pickup = "Toplanma zaman damgası:",
		weapon_name = "Silah Adı:",
		casings_picked_up = "Toplanan kovan sayısı:",
		bullet_label = "Mermi Etiketi:",
		impacts_found = "Bölgedeki bulunan etki sayısı:",
		right_foot = "Sağ Ayak",
		left_foot = "Sol Ayak",
		right_hand = "Sağ El",
		left_hand = "Sol El",
		right_knee = "Sağ Diz",
		left_knee = "Sol Diz",
		head = "Baş",
		neck = "Boyun",
		right_arm = "Sağ Kol",
		left_arm = "Sol Kol",
		chest = "Göğüs",
		pelvis = "Kalça",
		right_shoulder = "Sağ Omuz",
		left_shoulder = "Sol Omuz",
		right_wrist = "Sağ El Bileği",
		left_wrist = "Sol El Bileği",
		tounge = "Dil",
		upper_lip = "Üst Dudak",
		lower_lip = "Alt Dudak",
		right_thigh = "Sağ Uyluk",
		left_thigh = "Sol Uyluk",
		lower_spine = "Alt Omurga",
		center_spine = "Merkez Omurga",
		upper_spine = "Üst Omurga",
		root_spine = "Kök Omurga",
		right_clavicle = "Sağ Klavikula",
		left_clavicle = "Sol Klavikula",
		note_signed_by = "<b>İmzalayan:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>İşaretlenen konum:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>Bu akıllı saat <b>${name} (#${cid})</b>'a aittir. <b>${stepsWalked}</b> adım izlemiştir.</i>",
		item_contains = "<b>İçeriği:</b> <i>${contents}</i>.",
		item_engraving = "<b>Kazıma:</b> <i>${message}</i>.",
		evidence_incomplete = "Bu delil torbası eksik."
	}
}
