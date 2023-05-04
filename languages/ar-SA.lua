if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 4 (do not change)

OP.Global.Locales.Languages["ar-SA"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "النظام",
		warning = "تحذير",
		invalid_input = "إدخال غير صالح.",
		missing_input = "إدخال مفقود.",
		player_not_found = "لا يمكن العثور على اللاعب برقم التعريف الخاص بالخادم `${serverId}`.",
		something_went_wrong = "حدث خطأ ما. يرجى المحاولة مرة أخرى.",
		yes = "نعم",
		no = "لا"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "اضغط ~INPUT_ENTER~ للدخول إلى صندوق السيارة.",
		put_boombox_in_trunk = "اضغط ~INPUT_ENTER~ لوضع الصندوق الصوتي في صندوق السيارة.",
		put_player_in_trunk = "اضغط ~INPUT_ENTER~ لوضع اللاعب في صندوق السيارة.",
		put_player_in_seat = "[${VehicleEnterKey}] وضعه في المقعد",
		trunk_interaction_display = "[${VehicleEnterKey}] الخروج من السيارة [${InteractionKey}] فتح/إغلاق الجذع",
		trunk_open_close_display = "[${InteractionKey}] فتح/إغلاق الجذع",
		boombox_already_in_trunk = "يوجد بومبوكس بالفعل في الجذع.",
		the_trunk_is_occupied = "الجذع مشغول.",
		unable_to_toggle_carry = "يرجى الانتظار قليلاً قبل تبديل التحمل.",
		carry_disabled_animal = "لا يمكن لحيوانات العبور أن تحمل.",

		cancel_piggyback = "اضغط على ~INPUT_FRONTEND_RRIGHT~ لإلغاء النقل على الظهر.",
		piggyback_hop_on = "[${InteractionKey}] الصعود",
		stop_piggyback = "اضغط على ~INPUT_VEH_HEADLIGHT~ لإيقاف التحمل.",

		lockpicking_cuffs = "فتح الأصفاد",
		lockpick_cuffs_too_fast = "لقد تحركت بسرعة كبيرة جدًا.",
		success_lockpick_cuffs = "تم فتح الأصفاد بنجاح.",
		failed_lockpick_cuffs = "فشل في فتح الأصفاد.",
		lockpick_lost = "لقد فقدت القفل لفتح الأصفاد.",

		not_cuffed = "أنت غير مقيد.",
		unable_to_lockpick = "غير قادر على فتح الأصفاد بالقفل.",

		lockpick_cuffs_logs_title = "تم فتح الأصفاد بالقفل",
		lockpick_cuffs_logs_details = "${consoleName} تمكن من فتح الأصفاد باستخدام `${itemName}`.",

		you_are_not_being_carried = "لا يتم حملك حاليًا.",
		successfully_uncarried = "تم إيقاف الحمل بنجاح.",
		failed_uncarried = "فشل إيقاف الحمل.",
		uncarry_missing_permissions = "تم محاولة إيقاف الحمل بدون صلاحيات كافية.",

		uncarry_logs_title = "إيقاف الحمل القسري",
		uncarry_logs_details = "${consoleName} قام بإيقاف حمل ${targetName} الخاص به/ بها.",

		failed_carry_npc = "فشل في حمل الكائن الغير قابل للعب.",
		carry_npc_something_wrong = "حدث خطأ ما أثناء محاولة حمل الشخصية الغير قابلة للعب.",

		e_to_struggle = "اضغط E للتصارع",
		cant_struggle_dead = "لا يمكنك التصارع عندما تكون ميتًا.",
		struggle_to_quick = "أنت تشعر بالإرهاق بعد محاولة التصارع السابقة، انتظر قليلاً وحاول مرة أخرى.",
		struggle_logs_title = "تصارع مجاني",
		struggle_logs_details = "${consoleName} تصارع مجانًا من ${targetName} الذي يحملونه."
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "محاولة لتفعيل/إلغاء تفعيل '${featureName}' الخاصة بالمستخدم أو الشخص الآخر، ولكن ليس لديه الصلاحيات المناسبة للقيام بذلك.",
		feature_toggle_activated_logs_title = "تبديل ميزة عن بعد",
		feature_toggle_activated_logs_details_state = "${consoleName} قام بتشغيل/إيقاف `${featureName}` ${newState} للاعب ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "تم تبديل خاصية الجميع عن بعد",
		feature_toggle_activated_all_logs_details = "${consoleName} قام بتبديل `${featureName}` للجميع.",
		feature_toggle_activated_self_logs_title = "تم تبديل الخاصية",
		feature_toggle_activated_self_on_logs_details = "${consoleName} قام بتشغيل `${featureName}` لنفسه.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} قام بإيقاف `${featureName}` لنفسه.",
		feature_toggle_success = "تم تبديل `${featureName}` ل ${consoleName}.",
		feature_toggle_success_all = "تم تبديل `${featureName}` للجميع.",
		feature_toggle_failed = "فشل في تبديل `${featureName}` لمعرف الخادم ${serverId}.",
		feature_toggle_success_on = "تم تبديل `${featureName}` على لـ ${consoleName}.",
		feature_toggle_success_off = "تم تبديل `${featureName}` قبالة لـ ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "تبديل الانتقال دون جاذبية تم",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} قام بتبديل الانتقال دون جاذبية على في الموضع `الإحداثيات: x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (في السيارة: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} قام بإيقاف تشغيل الوضع عديم الكتابة في المكان التالي `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "لم يتم تمرير اسم النموذج.",
		model_name_invalid = "اسم النموذج `${modelName}` غير صالح.",
		failed_to_spawn_vehicle = "فشل تنفيذ أمر `/spawn_vehicle` بشكل صحيح.",
		spawned_vehicle_for_player = "تم إنشاء `${modelName}` بنجاح لـ ${consoleName}.",
		spawned_vehicle_for_everyone = "تم إنشاء `${modelName}` بنجاح للجميع.",
		spawn_vehicle_for_player_not_staff = "حاول اللاعب إنشاء مركبة لشخص آخر لكنه لم يمتلك الصلاحيات المطلوبة للقيام بذلك.",
		spawn_vehicle_for_self_not_staff = "حاول اللاعب إنشاء مركبة لنفسه ولكنه لم يمتلك الصلاحيات المطلوبة للقيام بذلك.",
		replace_vehicle_no_permissions = "حاول اللاعب استبدال مركبته ولكنه لم يمتلك الصلاحيات المطلوبة للقيام بذلك.",
		create_vehicle_no_permissions = "حاول اللاعب إنشاء مركبة ولكنه لم يمتلك الصلاحيات المطلوبة للقيام بذلك.",
		spawned_vehicle_for_self_title = "تم إنشاء مركبة",
		spawned_vehicle_for_self_details = "${consoleName} قام بإنشاء مركبة باسم ${modelName}.",
		spawned_vehicle_for_player_title = "تم إنشاء مركبة للاعب",
		spawned_vehicle_for_player_details = "${consoleName} قام بإنشاء مركبة باسم ${modelName} للاعب ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "تم إنشاء مركبة للجميع",
		spawned_vehicle_for_everyone_details = "${consoleName} قام بإنشاء مركبة باسم ${modelName} للجميع.",

		vehicle_created = "تم إنشاء المركبة بنجاح.",
		failed_vehicle_creation = "فشل إنشاء المركبة.",

		invalid_amount = "المبلغ غير صالح.",

		added_cash_title = "تمت إضافة النقود",
		added_cash_details = "${consoleName} قام بإضافة $${amount} من النقود.",
		added_cash_to_player_title = "تمت إضافة النقود للاعب",
		added_cash_to_player_details = "${consoleName} قام بإضافة $${amount} من النقود لـ ${targetConsoleName}.",
		added_cash_to_everyone_title = "تمت إضافة النقود للجميع",
		added_cash_to_everyone_details = "${consoleName} قام بإضافة $${amount} من النقود للجميع.",

		removed_cash_title = "تمت إزالة النقد",
		removed_cash_details = "${consoleName} قام بإزالة ${amount}$ نقدًا.",
		removed_cash_from_player_title = "تمت إزالة النقد من لاعب",
		removed_cash_from_player_details = "${consoleName} قام بإزالة ${amount}$ نقدًا من ${targetConsoleName}.",
		removed_cash_from_everyone_title = "تمت إزالة النقد من الجميع",
		removed_cash_from_everyone_details = "${consoleName} قام بإزالة ${amount}$ نقدًا من الجميع.",

		added_bank_title = "تمت إضافة الوديعة",
		added_bank_details = "${consoleName} أضاف ${amount}$ وديعة.",
		added_bank_to_player_title = "تمت إضافة البنك للاعب",
		added_bank_to_player_details = "${consoleName} قام بإضافة $${amount} إلى البنك الخاص بـ ${targetConsoleName}.",
		added_bank_to_everyone_title = "تمت إضافة البنك للجميع",
		added_bank_to_everyone_details = "${consoleName} قام بإضافة $${amount} إلى بنوك الجميع.",

		removed_bank_title = "تم حذف البنك",
		removed_bank_details = "${consoleName} قام بحذف $${amount} من البنك.",
		removed_bank_from_player_title = "تم حذف البنك من اللاعب",
		removed_bank_from_player_details = "${consoleName} قام بحذف $${amount} من البنك الخاص بـ ${targetConsoleName}.",
		removed_bank_from_everyone_title = "تمت إزالة المصرف من الجميع",
		removed_bank_from_everyone_details = "${consoleName} قام بإزالة _${amount}_ من المصرف من جميع اللاعبين.",

		added_cash = "تمت إضافة _${amount}_ من النقود.",
		added_cash_to_player = "تمت إضافة _${amount}_ من النقود لـ ${targetConsoleName}.",
		added_cash_to_everyone = "تمت إضافة _${amount}_ من النقود للجميع.",

		removed_cash = "تمت إزالة _${amount}_ من النقود.",
		removed_cash_from_player = "تمت إزالة _${amount}_ من النقود من ${targetConsoleName}.",
		removed_cash_from_everyone = "تمت إزالة _${amount}_ من النقود من الجميع.",

		added_bank = "تمت إضافة ${amount} دولار إلى البنك.",
		added_bank_to_player = "تمت إضافة ${amount} دولار إلى ${targetConsoleName} في البنك.",
		added_bank_to_everyone = "تمت إضافة ${amount} دولار إلى جميع اللاعبين في البنك.",

		removed_bank = "تمت إزالة ${amount} دولار من البنك.",
		removed_bank_from_player = "تمت إزالة ${amount} دولار من ${targetConsoleName} في البنك.",
		removed_bank_from_everyone = "تمت إزالة ${amount} دولار من جميع اللاعبين في البنك.",

		money_event_not_admin = "حاولت تبديل تفعيل حدث النقود `${moneyEvent}`، لكن ليس لديك الصلاحيات.",

		spawned_item_title = "تم إنشاء العنصر",
		spawned_item_details = "${consoleName} قام بإنشاء ${amount} من `${itemName}` لنفسه.",
		spawned_item_for_player_title = "تم إنشاء عنصر للاعب",
		spawned_item_for_player_details = "${consoleName} قام بإنشاء ${amount}x `${itemName}` ل ${targetConsoleName}.",
		spawned_item_for_everyone_title = "تم إنشاء عنصر للجميع",
		spawned_item_for_everyone_details = "${consoleName} قام بإنشاء ${amount}x `${itemName}` للجميع.",

		report_title = "تقرير-${reportId} ${reporterName}",
		report_logs_title = "التقرير",
		report_logs_details = "${consoleName} قام بإنشاء تقرير ${reportId} بالرسالة التالية: `${reportMessage}`",

		announcement_staff_title = "إعلان الطاقم",
		announcement_server_title = "إعلان الخادم",

		announcement_logs_title = "إعلان عام على الخادم",
		announcement_logs_details = "${consoleName} قام ببث الرسالة التالية لجميع اللاعبين: `${announcementMessage}`",
		announcement_not_admin = "حاولت نشر إعلان طاقم.",

		announcement_maintenance = "سيتم إغلاق الخادم خلال ${minutes} دقائق للصيانة.",
		announcement_update = "سيتم إغلاق الخادم خلال ${minutes} دقائق للتحديث.",
		announcement_restart = "سيتم اغلاق السيرفر في غضون ${minutes} دقيقة لاجراء اعادة تشغيل.",

		posted_announcement = "تم نشر رسالة الاعلان.",
		posted_announcement_locale = "تم نشر رسالة الاعلان من اللغة.",
		failed_to_post_announcement = "فشل نشر رسالة الاعلان لعدم اضافة رسالة.",
		failed_to_post_announcement_locale = "فشل نشر رسالة الاعلان لعدم دعم اللغة المضافة.",

		staff_title = "المرشدين ${staffName}",
		staff_message_logs_title = "سجل رسائل المرشدين",
		staff_message_logs_details = "${consoleName} أرسل الرسالة التالية في دردشة الموظفين: `${staffMessage}`",
		staff_message_illegal = "حاول اللاعب إرسال رسالة في دردشة الموظفين ، ولكنه ليس موظفًا.",

		staff_pm_title = "STAFF PM ${transmissionTitle}",
		staff_pm_logs_title = "المحادثات الخاصة للموظفين",
		staff_pm_logs_details = "${senderConsoleName} أرسل الرسالة التالية إلى ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "أنت غير مسجل الدخول.",
		staff_pm_not_user_not_found = "لم يتم العثور على مستخدم بمعرف الخادم ${serverId}.",
		staff_pm_not_recipient_not_staff = "اللاعب الذي تحاول إرسال رسالة إليه ليس موظفًا.",
		staff_pm_unable_to_message_self = "لا يمكنك إرسال رسالة لنفسك.",
		staff_pm_warning = "تحذير: رسائل الدعم الفني",
		staff_pm_first_time = "نرى أنك لم تستخدم رسائل الدعم الفني من قبل. للرد على رسالة الدعم الفني، استخدم الأمر /staffpm.",

		external_staff_message = "رسالة الدعم الفني الخارجية",
		external_staff_message_from_player = "رسالة دعم فني خارجية من ${playerName}",
		external_staff_message_content = "${staffMessage} (لا يمكنك الرد على هذه الرسالة.)",

		unable_to_staff_message_yourself = "غير قادر على إرسال الرسائل لنفسك كموظف.",
		message_sent = "تم إرسال الرسالة.",
		player_not_found = "لم يتم العثور على اللاعب.",
		missing_valid_target_source_parameter = "مفقود معامل ' target source ' صالح.",
		missing_valid_message_parameter = "مفقود معامل ' message ' صالح.",

		invalid_coordinates = "إحداثيات غير صحيحة تم ارسالها.",
		player_not_loaded_character = "لا يتمتع اللاعب بشخصية محملة.",
		teleport_successful = "تم تحويل موقع اللاعب بنجاح.",

		player_revived_success = "تم إحياء اللاعب بنجاح.",

		missing_valid_license_identifier_parameter = "معلمة 'licenseIdentifier' غير صالحة.",

		illegal_entity_wipe = "حاول اللاعب مسح الكائنات ولكنه لم يمتلك الصلاحيات الكافية.",
		wiped_entities = "تم مسح الكائنات",
		wipe_entities_logs_title = "تم مسح الكائنات",
		wipe_entities_logs_details = "${consoleName} قام بإصدار طلب لمسح الكائنات بالتالي: المسافة = `${distance}`، تجاهل الكائنات المحلية = `${ignoreLocalEntities}`، اسم النموذج = `${modelName}`",

		wipe_awaiting_confirmation = "تم تفعيل عملية المسح وانتظار التأكيد الآن. أكتب `نعم` أو `لا` لتأكيد أو إلغاء العملية (ينتهي الوقت خلال 60 ثانية).\n\nالبيانات المدخلة:\n- المسافة: `${distance}`\n- تجاهل الكائنات المحلية: `${ignoreLocalEntities}`\n- اسم النموذج: `${modelName}`",
		wipe_awaiting_big_title = "تحذير المسافة الكبيرة للمسح",
		wipe_awaiting_confirmation_big = "**مرحبًا، أنت على وشك مسح منطقة كبيرة جدًا، يرجى التأكد من أن هذا ما كنت تنوي القيام به!**\nاكتب `نعم` أو `لا` لتأكيد أو إلغاء العملية (ينتهي الوقت خلال 60 ثانية).\n\n- المسافة: `${distance}`\n- تجاهل الكائنات المحلية: `${ignoreLocalEntities}`\n- اسم النموذج: `${modelName}`",
		cancelled_wipe = "تم إلغاء المحو.",

		there_is_people_nearby = "هناك لاعبون بالقرب منك الذين يمكنهم رؤيتك وأنت تستخدم النوكليب!",

		cant_while_spectating = "لا يمكنك القيام بذلك أثناء المشاهدة.",

		you_have_been_kicked = "تم طردك من قبل ${kicker} لسبب `${reason}`.",
		you_have_been_kicked_no_reason = "لقد تم طردك بدون ذكر سبب من ${kicker}.",

		logs_player_kicked_title = "تم طرد اللاعب",
		logs_player_kicked_details = "تم طرد ${consoleName} من الخادم بواسطة ${kicker} لسبب `${reason}`.",
		logs_player_kicked_no_reason_details = "تم طرد ${consoleName} من الخادم بواسطة ${kicker} بدون ذكر سبب.",

		you_have_been_banned = "لقد تم حظرك من قبل ${banner} بسبب `${reason}`.",
		you_have_been_banned_no_reason = "لقد تم حظرك بدون ذكر سبب من قبل ${banner}.",

		banner_name_generic = "أحد أعضاء الفريق",

		ban_alert_title = "تم حظرك من النظام",
		ban_alert_description = "لقد تم حظرك تلقائيًا من قبل النظام بسبب `${reason}`.",

		logs_player_banned_title = "حظر اللاعب",
		logs_player_banned_system_title = "تم حظر اللاعب بواسطة النظام",
		logs_player_banned_details = "لقد تم حظر ${consoleName} من الخادم بواسطة ${banner} بسبب `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} تم حظره من السيرفر بواسطة ${banner} بدون ذكر سبب.",

		player_kicked = "${consoleName} تم طرده من السيرفر.",
		player_banned = "${consoleName} تم حظره من السيرفر.",

		ban_double_kill = "!قتلت اثنين",
		ban_triple_kill = "😧 قتلت ثلاثة!!!",
		ban_quadrouple_kill = "😨 قتلت أربعةاتاتاتاتات!!!!!!",
		ban_killing_spree = "🤯 إستمرارية في القتل (${count})!!!!!!",

		kick_player_not_staff = "تم محاولة طرد لاعب بدون صلاحيات كافية.",
		ban_player_not_staff = "محاولة حظر لاعب بدون الصلاحيات اللازمة.",

		hide_staff_not_staff = "محاولة إخفاء حالة الموظف بدون الصلاحيات اللازمة.",
		toggle_staff_not_staff = "محاولة تبديل توفّر الموظف بدون الصلاحيات اللازمة.",

		logs_hide_staff_title = "تم إخفاء الموظفين.",
		logs_hide_staff_hidden_details = "قام ${consoleName} بإخفاء حالته كموظف.",
		logs_hide_staff_shown_details = "قام ${consoleName} بإظهار حالته كموظف.",

		logs_toggle_staff_title = "تبديل توافر الموظفين.",
		logs_toggle_staff_off_details = "${consoleName} قام بإيقاف توفره كأحد الموظفين.",
		logs_toggle_staff_on_details = "${consoleName} قام بتفعيل توفره كأحد الموظفين.",

		staff_hidden = "تم إخفاء حالة توفرك كموظف.",
		staff_shown = "تم عرض حالة توفرك كموظف.",
		staff_toggled_on = "تم تفعيل توفرك كموظف.",
		staff_toggled_off = "تم إيقاف توفرك كموظف.",

		staff_feature_unavailable = "هذه الميزة غير متاحة عند إيقاف توفرك كموظف.",

		failed_toggle_tracker = "فشل في تبديل تتبع اللاعب.",
		unable_track_player = "لا يمكن تتبع اللاعب.",
		success_enable_tracker = "تم تفعيل تتبع اللاعب بنجاح لـ `${playerName}`.",
		success_disable_tracker = "تم تعطيل تتبع اللاعب بنجاح.",
		not_tracking_player = "أنت لا تتبع أي لاعب.",
		already_tracking_player = "أنت تتبع لاعب ما بالفعل.",

		toggle_player_track_no_permissions = "حاول تبديل تتبع اللاعب بدون أذونات كافية.",
		set_job_no_permissions = "حاول تحديد وظيفة بدون أذونات كافية.",

		protective_mode_not_staff = "تم محاولة تبديل وضع حماية الخادم بدون الصلاحيات المناسبة.",
		protective_mode_toggled_on = "تم تمكين وضع الحماية للخادم. تم تعيين الوقت المطلوب للعب للانضمام إلى الخادم إلى `${playtime}`.",
		protective_mode_toggled_off = "تم إلغاء وضع الحماية للخادم.",
		protective_mode_already_on = "تم تمكين وضع الحماية للخادم بالفعل وتم تعيين الوقت المطلوب للعب إلى `${playtime}`.",
		protective_mode_already_off = "وضع الحماية للخادم معطل بالفعل.",
		logs_protective_mode = "نظام الحماية من الخادم",
		logs_protective_mode_on = "${consoleName} قام بتفعيل نظام الحماية بوضع الوقت المطلوب `${playtime}`.",
		logs_protective_mode_off = "${consoleName} قام بإيقاف تفعيل نظام الحماية.",

		spawn_item_not_staff = "تم محاولة إنشاء عنصر دون الصلاحيات المناسبة.",
		no_item_name = "لم يتم توفير اسم عنصر.",
		invalid_item_name = "${itemName} ليس اسم عنصر صالح.",
		item_spawned = "تم إنشاء ${amount}x `${itemName}` لـ ${consoleName}.",
		item_spawned_for_everyone = "تم إنشاء ${amount}x `${itemName}` للجميع.",

		set_warning_message_not_staff = "محاولة تعيين رسالة تحذير للخادم بدون الصلاحيات اللازمة.",
		warning_message_set_to = "تم تعيين رسالة التحذير إلى `${warningMessage}`.",
		warning_message_removed = "تمت إزالة رسالة التحذير.",
		warning_message_error = "حدث خطأ أثناء محاولة تعيين رسالة التحذير.",
		warning_message_identical = "لا يمكنك تعيين رسالة التحذير كما هي بالفعل.",
		warning_message_set_to_title = "تم تعيين رسالة تحذير",
		warning_message_set_to_details = "${consoleName} قام بتعيين رسالة التحذير إلى `${warningMessage}`.",
		warning_message_removed_title = "تمت إزالة رسالة التحذير",
		warning_message_removed_details = "${consoleName} قام بإزالة رسالة التحذير.",

		indestructibility_on = "تم تفعيل 'العدم للتدمير'.",
		indestructibility_off = "تم إيقاف 'العدم للتدمير'.",
		speed_boost_on = "تم تفعيل 'تسريع السيارة'.",
		speed_boost_off = "تم إيقاف 'تسريع السيارة'.",
		nitro_boost_on = "تم تشغيل 'زيادة النيترو'.",
		nitro_boost_off = "تم إيقاف 'زيادة النيترو'.",
		no_nearby_vehicles_on = "تم تشغيل 'عدم وجود مركبات قريبة'.",
		no_nearby_vehicles_off = "تم إيقاف 'عدم وجود مركبات قريبة'.",
		speed_up_progress_bar_on = "تم تشغيل 'تسريع شريط الإنجاز'.",
		speed_up_progress_bar_off = "تم إيقاف 'تسريع شريط الإنجاز'.",
		invisibility_on = "تم تشغيل 'الخفاء'.",
		invisibility_off = "تم إيقاف 'الخفاء'.",
		wallhack_on = "تم تشغيل 'والهاك'.",
		wallhack_off = "تم إيقاف 'والهاك'.",
		aimbot_on = "تم تبديل 'Aimbot' للتشغيل.",
		aimbot_off = "تم تبديل 'Aimbot' للإيقاف.",
		player_bones_on = "تم تبديل 'Player Bones' للتشغيل.",
		player_bones_off = "تم تبديل 'Player Bones' للإيقاف.",
		vehicle_smoke_on = "تم تبديل 'Vehicle Smoke' للتشغيل.",
		vehicle_smoke_off = "تم تبديل 'Vehicle Smoke' للإيقاف.",

		peeking_on = "تم تبديل وضع التجسس للتشغيل.",
		peeking_off = "تم تبديل وضع التجسس للإيقاف.",

		watching_on = "تم تشغيل وضع المشاهدة.",
		watching_off = "تم إيقاف وضع المشاهدة.",
		watching_label = "المشاهدة: ${nearby}",

		evidence_view_on = "تم تشغيل وضع عرض الأدلة.",
		evidence_view_off = "تم تبديل عرض الأدلة الجنائية إلى الوضع العادي.",
		evidence_view_title = "تبديل عرض الأدلة الجنائية",
		evidence_view_details_on = "${consoleName} قام بتبديل عرض الأدلة الجنائية المتقدم.",
		evidence_view_details_off = "${consoleName} قام بتبديل عرض الأدلة الجنائية العادي.",

		report_muted_no_reason = "تم كتم صوتك عن استخدام لأمر البلاغ بدون تحديد سبب.",
		report_muted = "تم كتم صوتك عن استخدام البلاغ بسبب `${reason}`.",

		already_sending_report = "أنت في عملية إرسال بلاغ مسبقة. يرجى الانتظار.",
		unable_to_send_identical_report = "لا يمكنك إرسال تقريرين مطابقين متتاليين.",

		already_sending_staff_message = "أنت ترسل رسالة للموظفين حاليا. الرجاء الانتظار.",
		unable_to_send_identical_staff_message = "لا يمكنك إرسال رسالتين للموظفين مطابقتين متتاليتين في غضون 30 ثانية.",

		tp_coords_invalid_coordinates = "إحداثيات غير صالحة.",
		tp_coords_teleported_to_coordinates = "تم نقلك إلى الإحداثيات X: ${x}، Y: ${y}، Z: ${z}.",

		teleported_to_waypoint = "تم نقلك إلى نقطة الوجهة عند ${locationLabel}.",
		no_waypoint_set = "يجب عليك وضع نقطة معينة.",

		teleported_to_coordinates_logs_title = "تم النقل إلى إحداثيات",
		teleported_to_coordinates_logs_details = "تم تحويل ${consoleName} إلى الإحداثيات X: ${x}، Y: ${y}، Z: ${z}.",
		teleported_to_waypoint_logs_title = "تم النقل إلى النقطة المعينة",
		teleported_to_waypoint_logs_details = "تم نقل ${consoleName} إلى النقطة المعينة ${locationLabel}.",

		teleport_to_coordinates_not_staff = "حاول اللاعب الانتقال إلى بعض الإحداثيات ولكنه ليس موظفاً.",
		teleport_to_waypoint_not_staff = "عذرًا، لا يمكن للعبي المسحلين الذين ليسوا من فريق العمل الانتقال إلى نقطة معينة.",

		failed_isolate = "لا يمكن فصل اللاعب.",
		invalid_server_id = "رقم خادم غير صحيح.",
		isolate_success_on = "تم عزل ${consoleName} بنجاح.",
		isolate_success_off = "تم إيقاف العزل عن ${consoleName} بنجاح.",

		isolate_missing_permissions = "حاول اللاعب فصل لاعب آخر بدون الصلاحيات اللازمة",

		population_density_set_to = "تم ضبط ضعف كثافة السكان على ${multiplierLabel}%.",
		population_density_set_off = "تم إيقاف تشغيل تضاعف كثافة السكان.",
		population_density_is_not_on = "تضاعف كثافة السكان غير مفعل.",
		population_density_already_set_to = "تم تعيين تضاعف كثافة السكان بالفعل على ${multiplierLabel}%.",

		population_density_not_super_admin = "حاول اللاعب تعيين كثافة السكان دون الحصول على الأذونات المناسبة.",

		enabled_features_list = "قائمة الميزات المفعلة:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "التصاميم تم تعطيلها",
		disabled_recoil_feature = "تعطيل الإرتداد",
		evidence_view_feature = "عرض الأدلة",
		hit_indicator_feature = "مؤشر الضربات",
		indestructibility_feature = "عدم التدمير",
		infinite_ammo_feature = "ذخيرة غير محدودة",
		invisibility_feature = "التخفي",
		muted_sirens_feature = "كتم صفارات الإنذار",
		nitro_boost_feature = "زيادة النترو",
		no_nearby_vehicles_feature = "لا توجد مركبات قريبة",
		peeking_feature = "التطلع ",
		roll_control_feature = "التحكم بالإنقلاب",
		speed_boost_feature = "زيادة السرعة",
		speed_up_progress_bar_feature = "تسريع شريط التقدم",
		sticky_feet_feature = "الأقدام اللزجة",
		wallhack_feature = "والهاك",
		watching_feature = "مشاهدة",
		fortnite_feature = "فورت نايت",

		you_are_not_in_a_vehicle = "أنت لست في مركبة.",
		repaired_vehicle = "تم إصلاح المركبة.",

		success_nos_refill = "تم إعادة ملء NOS بنجاح.",
		failed_nos_refill = "فشلت عملية إعادة ملء NOS.",

		refill_nitro_missing_permissions = "حاول اللاعب إعادة ملء NOS بدون الأذونات الملائمة.",

		register_invalid_character_id = "معرف شخصية غير صالح.",
		register_invalid_slot = "مكان فارغ غير صالح.",
		register_weapon_success = "تم تسجيل السلاح بنجاح في الفتحة ${slotId} للشخصية ذات الهوية ${cid}.",
		register_weapon_failed = "فشل في تسجيل السلاح.",

		register_weapon_missing_permissions = "حاول اللاعب تسجيل سلاح دون الحصول على الأذونات المناسبة.",

		vehicle_smoke_invalid_class = "لا يمكن تمكين دخان المركبة لفئة المركبة هذه.",

		repair_vehicle_not_super_admin = "حاول اللاعب إصلاح مركبة دون الحصول على الأذونات المناسبة.",

		repaired_vehicle_logs_title = "إصلاح المركبة",
		repaired_vehicle_logs_details = "${consoleName} قام بإصلاح السيارة التي كان يستقلها.",

		unable_to_enter_vehicle_while_dead = "لا يمكنك دخول السيارة بينما أنت ميت.",
		the_closest_vehicle_had_no_free_seats = "أقرب سيارة لا يوجد بها مقاعد فارغة.",
		there_are_no_nearby_vehicles = "لا توجد سيارات قريبة.",
		entered_vehicle = "تم محاولة دخول السيارة ${vehicleName} المجاورة.",

		set_vehicle_modifications_logs_title = "ضبط تعديلات السيارة",
		set_vehicle_modifications_logs_details = "${consoleName} ضبط تعديلات لسيارة بلوحة ${vehiclePlate}. التعديلات التي تم ضبطها هي: نوع التعديل-${modType}، مؤشر التعديل-${modIndex}، إطارات مخصصة-${customTires}.",

		set_vehicle_livery_logs_title = "تعيين زخرفة المركبة",
		set_vehicle_livery_logs_details = "${consoleName} قام بتعيين زخرفة المركبة ذات لوحة الترخيص `${vehiclePlate}` إلى `${liveryIndex}`.",

		set_livery_missing_permissions = "حاول اللاعب تعيين زخرفة المركبة بدون الأذونات اللازمة.",
		set_modifications_missing_permissions = "حاول اللاعب تعيين تعديل على المركبة بدون الأذونات اللازمة.",

		set_vehicle_modification = "تم تعيين تعديل ${modType} ذو الفهرس ${modIndex} للمركبة. (إطارات مخصصة: ${customTires})",
		mod_index_invalid_for_type = "مؤشر الوحدة `${modIndex}` غير صالح لنوع الوحدة `${modType}`.",
		mod_type_invalid = "نوع الوحدة `${modType}` غير صالح.",
		no_mod_type_set = "لم يتم تعيين نوع الوحدة.",

		set_vehicle_livery = "تعيين رسم العربة إلى `${liveryIndex}`.",
		no_livery_index_set = "لم يتم تعيين مؤشر رسم العربة (الحد الأدنى: 1).",
		you_are_not_the_driver = "أنت لست السائق للمركبة.",
		vehicle_is_not_a_plane_or_heli = "المركبة ليست طائرة أو هليكوبتر.",
		livery_index_invalid = "مؤشر رسم العربة غير صالح (الحد الأقصى: ${maxLiveries}).",
		vehicle_has_no_liveries = "المركبة لا تحتوي على تصميمات.",

		invalid_plate_number = "رقم اللوحة غير صالح.",
		set_fake_plate_number = "تم تعيين رقم لوحة المركبة `${plateNumber}`.",

		invalid_dirt_level = "مستوى الاتساخ غير صالح.",
		set_dirt_level = "تم تعيين مستوى الاتساخ على المركبة `${dirtLevel}`.",

		set_dirt_level_not_super_admin = "حاول اللاعب تعيين مستوى الاتساخ في المركبة دون الحصول على الصلاحيات الكافية.",

		set_fake_plate_not_super_admin = "حاول اللاعب تعيين رقم لوحة وهمي في المركبة دون الحصول على الصلاحيات الكافية.",

		already_fake_disconnecting = "أنت بالفعل تحاول الانفصال بشكل مزيف. يرجى الانتظار.",
		started_fake_disconnect = "تم بدء الانفصال المزيف. كرر الأمر للتوقف.",
		stopped_fake_disconnect = "تم إيقاف الانفصال المزيف.",

		fake_disconnect_not_super_admin = "لا يمتلك اللاعب الصلاحيات الكافية للانفصال بشكل مزيف.",

		disabled_idle_cam = "تم تعطيل كاميرا الخمول.",
		enabled_idle_cam = "تم تمكين كاميرا الخمول مرة أخرى.",

		created_vehicle_smoke_for_player_logs_title = "خلق دخان للسيارة",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} قام بخلق دخان للسيارة.",

		player_info_not_staff = "لقد تم محاولة الحصول على معلومات شخصية لاعب بدون الحصول على الإذن المناسب",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\nلديه ${playtime} من اللعب.\n${jobName}، ${departmentName}، ${positionName}\n\n${backstory}",

		inventory_name_missing = "معلمة اسم المخزن المفقودة",
		force_inventory_missing_perms = "لقد تم محاولة فتح مخزن بدون الإذن المناسب.",

		auto_driving_engaged = "تم تفعيل القيادة التلقائية (النمط: ${style}).",
		auto_driving_updated = "تم تحديث سرعة / موقع القيادة التلقائية.",
		auto_driving_disengaged = "تم إلغاء القيادة التلقائية.",
		not_auto_driving = "أنت لا تقود تلقائيًا.",
		invalid_auto_drive_speed = "سرعة القيادة التلقائية غير صالحة أو مفقودة.",
		reset_auto_drive_speed = "إعادة تعيين سرعة القيادة التلقائية إلى الإعداد الافتراضي.",
		set_auto_drive_speed = "تعيين سرعة القيادة التلقائية على ${speed} ميل في الساعة.",

		disable_collisions_on = "تم تعطيل الاصطدامات الخاصة بك الآن.",
		disable_collisions_off = "أصبحت الاصطدامات الخاصة بك ممكّنة الآن.",
		failed_toggle_collisions = "فشل في تبديل الاصطدامات المعطلة.",

		disabled_recoil_on = "تم تعطيل إثارة السلاح.",
		disabled_recoil_off = "تم تفعيل إثارة السلاح.",

		attachment_missing = "معلمة المرفق مفقودة.",
		no_weapon_equipped = "لا يوجد سلاح مجهز.",
		attachment_invalid = "المرفق غير صالح أو غير متاح لهذا السلاح.",
		attachment_failed_toggle = "فشل في تمكين تبديل المرفق على هذا السلاح.",
		attachment_on = "تم تفعيل المرفق '${attachment}' بنجاح.",
		attachment_off = "تم تعطيل المرفق '${attachment}' بنجاح.",

		tint_invalid = "صبغة السلاح غير صالحة.",
		tint_range_invalid = "نطاق صبغة السلاح غير صالح (يجب أن يكون بين 0 و ${max}).",
		tint_failed_set = "فشل في تعيين صبغة السلاح.",
		tint_removed = "تم إزالة صبغة السلاح بنجاح.",
		tint_set = "تم تعيين صبغة السلاح بنجاح إلى `${tint}` (${tintIndex}).",
		no_weapon_tint = "هذا السلاح لا يحتوي على صبغات.",

		weapon_attachment_missing_perms = "تم محاولة تبديل ملحق السلاح بدون الإذن المناسب.",
		weapon_tint_missing_perms = "تم محاولة تعيين صبغة السلاح بدون الإذن المناسب.",

		no_attachments = "لا يوجد ملحقات",
		available_attachments = "المرفقات المتاحة",
		current_attachments = "المرفقات الحالية",
		no_attachments = "لا يوجد ملحقات",
		attachments_list = "قائمة المرفقات:",
		tint_label = "الصبغة: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "فشل تغيير اسم العنصر.",
		item_name_removed = "تمت إزالة تغيير اسم العنصر بنجاح.",
		item_name_set = "تم تغيير اسم العنصر بنجاح إلى '${itemName}'.",
		item_name_invalid_slot = "فتحة العنصر غير صالحة أو مفقودة.",

		cleaned_ped = "تم تنظيف الـ ped الخاص بـ ${consoleName} بنجاح.",
		cleaned_ped_self = "تم تنظيف شخصيتك بنجاح.",
		clean_ped_failed = "فشل تنظيف الشخصية.",
		cleaned_ped_for_all = "تم تنظيف شخصيات الجميع بنجاح.",
		clean_ped_no_permission = "تم محاولة تنظيف شخصية لاعب بدون الأذونات اللازمة.",

		item_durability_set_success = "تم ضبط المتانة على ${amount}% بنجاح للعناصر في فتحة ${slotId}.",
		item_durability_set_failed = "فشل ضبط المتانة.",
		item_durability_invalid_amount = "مبلغ المتانة غير صالح (0<>100).",
		item_durability_set_no_permission = "تم محاولة ضبط متانة عنصر دون الأذونات اللازمة.",

		item_metadata_set_no_permission = "تم محاولة تعيين بيانات عنصر بدون الصلاحيات المطلوبة.",
		item_metadata_invalid_metadata = "بيانات عنصر غير صالحة.",
		item_metadata_set_success = "تم تعيين البيانات بنجاح للعناصر في الفتحة ${slotId}.",
		item_metadata_set_failed = "فشل في تعيين البيانات.",

		advanced_metagame_on = "تحويل التركيز على التفاصيل المتقدمة تم تشغيله.",
		advanced_metagame_off = "تحويل التركيز على التفاصيل المتقدمة تم إيقافه.",

		identity_set = "تم تعيين الهوية الخاصة بك على نحو ${name} بنجاح.",
		identity_reset = "تم إعادة تعيين الهوية الخاصة بك بنجاح.",
		identity_set_failed = "فشل في تعيين هويتك.",
		identity_hud = "الهوية: ${playerName}",

		set_identity_no_permission = "حاول اللاعب تعيين اسم اللاعب الخاص به دون التصاريح اللازمة.",

		invalid_range_parameter = "معلمة المدى غير صالحة.",
		wipe_first_owned_success = "تم حذف جميع العناصر ${amount} التي تمتلكها أولاً اللاعب بمعرف الخادم `${serverId}` بنجاح.",
		wipe_first_owned_success_range = "تم حذف جميع ${amount} العناصر التي تمتلكها أولاً اللاعب بمعرف الخادم `${serverId}` بنجاح في نطاق ${range} مترًا.",
		wipe_first_owned_failed = "فشل في حذف الكائنات المملوكة أولًا من قبل اللاعب بمعرف الخادم `${serverId}`.",

		invalid_radius_parameter = "نصف القطر غير صالح (يجب أن يكون بين 1 و 500).",
		scooped_up_players = "تم رفع ${amount} لاعب (لاعبين).",
		scoop_invalid = "لم تقم برفع أي لاعب.",
		unscooped_players = "تم إفلات ${amount} من إجمالي ${total} لاعب (لاعبين).",
		unscoop_failed = "فشل في إفلات اللاعبين.",

		unscoop_missing_permissions = "حاول اللاعب إفلات اللاعبين بدون صلاحيات كافية.",

		toggle_collisions_missing_permissions = "حاول اللاعب تبديل اصطداماتهم دون صلاحيات كافية.",
		wipe_first_owned_missing_permissions = "حاول اللاعب محو الكائنات الخاصة به الأولى دون الأذونات المناسبة.",

		freeze_missing_permissions = "حاول اللاعب تجميد أو إلغاء تجميد لاعب آخر بدون الأذونات المناسبة.",

		freeze_success = "تم تجميد ${consoleName} بنجاح.",
		failed_freeze = "فشل تجميد اللاعب.",
		unfreeze_success = "تم إلغاء تجميد ${consoleName} بنجاح.",
		failed_unfreeze = "فشل إلغاء تجميد اللاعب.",

		freeze_logs_title = "تجميد اللاعب",
		freeze_logs_details = "${consoleName} قام بتجميد ${targetName}.",
		unfreeze_logs_title = "تم إلغاء تجميد اللاعب",
		unfreeze_logs_details = "${consoleName} قام بإلغاء تجميد ${targetName}.",

		slap_kill_reason = "تم الضرب",
		slap_success = "تم الضرب بنجاح ${consoleName}.",
		slap_failed = "فشل الضرب.",
		slap_logs_title = "تم الضرب في اللاعب",
		slap_logs_details = "${consoleName} قام بالضرب في ${targetName}.",
		slap_missing_permissions = "حاول اللاعب ضرب لاعب آخر بدون الصلاحيات المناسبة.",

		damaged_player = "تم الإضرار ب${consoleName} بنجاح بمقدار ${damage} من الضرر.",
		damage_player_failed = "فشل الإضرار باللاعب.",
		damage_player_logs_title = "تعرّض اللاعب للضرر",
		damage_player_logs_details = "${consoleName} قام بتعريض ${targetConsoleName} للضرر بمقدار ${damage} نقطة.",
		damage_player_missing_permissions = "حاول اللاعب تعريض لاعب آخر للضرر دون الحصول على الصلاحيات المناسبة.",

		refill_nitro_logs_title = "إعادة تعبئة النيترو",
		refill_nitro_logs_details = "${consoleName} قام بإعادة تعبئة النيترو الخاص به.",

		isolated_logs_title = "عزل اللاعب",
		isolated_off_logs_details = "${consoleName} قام بإيقاف عزل ${targetName}.",
		isolated_on_logs_details = "${consoleName} قام بتفعيل عزل ${targetName}.",

		character_data_logs_title = "بيانات الشخصية",
		character_data_logs_details = "${consoleName} فحص بيانات شخصية ${targetName} (رقم التعريف: ${characterId}).",

		item_name_logs_title = "تغيير الاسم",
		item_name_logs_details = "${consoleName} قام بإعادة تسمية الأدوات في الفتحة ${slot} إلى `${nameOverride}`.",

		toggle_attachment_logs_title = "تبديل المرفق",
		toggle_attachment_logs_details = "${consoleName} قام بتبديل المرفق `${attachment}`.",

		tint_logs_title = "تعيين الصبغة",
		tint_logs_details = "${consoleName} قام بتعيين فهرس الصبغة على سلاحه إلى ${tintIndex}.",

		population_multiplier_logs_title = "معامل عدد السكان",
		population_multiplier_logs_details = "${consoleName} قام بتعيين معامل عدد السكان على ${populationMultiplier}.",

		fake_disconnect_logs_title = "فصل وهمي",
		fake_disconnect_on_logs_details = "${consoleName} قام بتبديل فصل وهمي على \"مفعل\".",
		fake_disconnect_off_logs_details = "${consoleName} قام بتبديل فصل وهمي على \"معطل\".",

		identity_logs_title = "تجاوز الهوية",
		identity_on_logs_details = "${consoleName} قام بتعيين هويته إلى `${playerName}`.",
		identity_off_logs_details = "${consoleName} قام بإعادة تعيين هويتهم.",

		clean_ped_logs_title = "تنظيف الشخصية",
		clean_ped_logs_details = "${consoleName} قام بتنظيف شخصية ${targetName}.",

		collisions_logs_title = "التصادمات",
		collisions_off_logs_details = "${consoleName} قام بتعطيل التصادمات.",
		collisions_on_logs_details = "${consoleName} قام بتفعيل التصادمات.",

		invalid_job_search = "بحث عمل غير صالح (يجب أن يكون ثلاثة أحرف على الأقل).",
		failed_job_search = "فشل البحث عن الوظائف.",
		job_search_no_results = "لم يتم العثور على وظائف.",
		job_search_results = "تم تعيين وظيفة ${consoleName} إلى \"${jobName}, ${departmentName}, ${positionName}\" (النتيجة: ${score}).",

		job_reset_success = "تم إعادة تعيين وظيفة ${consoleName} بنجاح.",
		failed_job_reset = "فشل إعادة تعيين الوظيفة."
	},

	anti_cheat = {
		illegal_client_event = "توجّه مباشرة إلى السجن. لا تمر من هناك. لا تجمّع 200 دولار.",
		illegal_server_event = "توجّه مباشرة إلى السجن. لا تمر من هناك. لا تجمّع 200 دولار.",
		bad_entity_spawn = "تم إنشاء كيان بإسم ${modelName} بشكل غير قانوني.",
		bad_entity_title = "تم إنشاء كيان سيء",
		bad_entity_message = "${consoleName} قام بإنشاء كيان بإسم الموديل `${modelName}`.",
		detected_entity_title = "تم اكتشاف كيان",
		detected_entity_message = "${consoleName} قام بإنشاء كيان بإسم الموديل `${modelName}`.",
		added_model_to_list = "تمت إضافة الموديل `${modelName}` (${modelHash}) إلى قائمة الكشف.",
		model_already_added_to_list = "يتم إضافة الموديل `${modelName}` (${modelHash}) إلى قائمة الكشف بالفعل.",
		removed_model_to_list = "تمت إزالة الموديل `${modelName}` (${modelHash}) من قائمة الكشف.",
		model_not_in_list = "الموديل '${modelName}' (${modelHash}) غير موجود في قائمة الكشف.",
		set_model_detected_not_staff = "حاول اللاعب إضافة موديل لقائمة الكشف، لكن لا يملك الصلاحيات الصحيحة لفعل ذلك.",
		set_model_undetected_not_staff = "حاول اللاعب إزالة موديل من قائمة الكشف، لكن لا يملك الصلاحيات الصحيحة لفعل ذلك.",
		add_detection_area_not_staff = "حاول اللاعب إضافة منطقة كشف، لكن لا يملك الصلاحيات الصحيحة لفعل ذلك.",
		remove_detection_area_not_staff = "حاول اللاعب إزالة منطقة كشف، لكن لا يملك الصلاحيات الصحيحة لفعل ذلك.",
		detection_area_close = "[${InteractionKey}] إزالة منطقة الكشف (${areaId})",
		detection_area = "منطقة الكشف (${areaId})",

		ban_notification_title = "منع الغش",
		ban_notification = "تم حظر ${consoleName} بسبب `${banReason}`.",

		bad_screen_word_ban = "لقد سمعنا عن الامتحانات المفتوحة، ولكن هذا أمر مثير للاشمئزاز.",
		blacklisted_command_ban = "نأسف، لكن ليس لديك الصلاحيات الكافية لأداء هذا الأمر. يرجى الاتصال بمسؤولي الخادم إذا كنت تعتقد أن هذا خطأ.",
		damage_modifier_ban = "لا يمكن أن يكون مستوى قوتك أكثر من 9000.",
		distance_taze_ban = "لم يتم تقدير أدائك الرائع بإصابة بعيدة المدى.",
		fast_movement_ban = "الطيران لا يعمل في هذا الخادم.",
		freecam_ban = "يبدو أنك خرجت خارج جسدك.",
		honeypot_ban = "حاولت تشغيل وضع الإبداع الخاص بك، ولكن لم تكن لديك الصلاحيات اللازمة لذلك.",
		hotwire_driving_ban = "فروم فروم، أنا في سيارة أمي.",
		illegal_freeze_ban = "هل تعلم أن الأطعمة الدافئة أفضل من الأطعمة المجمدة؟",
		illegal_ped_change_ban = "من المؤذي أن تجري عمليات التجميل بنفسك.",
		illegal_spectating_ban = "يجب أن تكون عميل FIB لمشاهدة اللاعبين الآخرين أو استخدام /gamemode spectator قبل المشاهدة.",
		illegal_vehicle_modifier_ban = "على عكس دوم توريتو من فيلم السرعة والغضب، نحن لسنا عائلة.",
		invincibility_ban = "أنت لست الفارس الأسود، ولا يمكنك أن تكون لا يمكن إيذائك.",
		ped_spawn_ban = "حاولت القيام بالانقسام الاختزالي، ولكن لم يكن هناك ما يكفي من الشمس للتمثيل الضوئي.",
		player_blips_ban = "المجال الجوي ممتلئ، UAV غير متاح.",
		runtime_texture_ban = "قائمة الوضع الخاصة بك تحتوي على برامج تعديل، يمنع استخدامها.",
		spiked_resource_ban = "محاولة تغيير النص البرمجي بدون إذن تشبه محاولة تغيير نهاية قصة فقط لأنك لا تحبها.",
		text_entry_ban = "عدم السماح بفحص عنصر على هذا المتصفح.",
		thermal_night_vision_ban = "لا يُسمح باستخدام Brighter Nights.",
		vehicle_modification_ban = "لم تجد سائل إضاءة الأضواء الأمامية لسيارتك.",
		vehicle_spam_ban = "فوز مضاد للإرهابيين.",
		vehicle_spawn_ban = "قمت بتجربة استخدام الريدستون في عربة التعدين ولكن لم تكن هناك قضبان طاقة.",
		weapon_spawn_ban = "لقد حاولت استخدام \"خيار دفع للفوز\" في FiveM، حيث دفعت فعلاً لتحصل على حظر.",

		mp_f_freemode_01_label = "Freemode (أنثى)",
		mp_m_freemode_01_label = "Freemode (ذكر)",
		player_one_label = "فرانكلين",
		player_two_label = "تريفور",
		player_zero_label = "مايكل",

		notification_distance_taze = "Anti-Cheat: ${displayName} قام بإطلاق الرصاص بالتايزر على شخص على بعد مسافة كبيرة للغاية (${distance} متر).",
		notification_bad_screen_word = "Anti-Cheat: ${displayName} لديه كلمة كلامية/صورة غير مقبولة على شاشته (${count} كلمات/صور).",

		notification_freecam_detected = "مكافحة الغش: كشف تشغيل Freecam",
		notification_illegal_vehicle_modifier = "مكافحة الغش: تعديل مركبة غير قانوني",
		notification_illegal_vehicle_spawn = "مكافحة الغش: تم إنشاء المركبة.",
		notification_fast_movement = "مكافحة الغش: تحرك سريع",
		notification_illegal_freeze = "مكافحة الغش: تجمد غير قانوني",
		notification_invincibility = "مكافحة الغش: اللا قابلية للهجوم",
		notification_vehicle_modification = "مكافحة الغش: تعديل المركبة",
		notification_damage_modifier = "مكافحة الغش: تعديل الضرر",
		notification_illegal_weapon = "مكافحة الغش: سلاح غير قانوني",
		notification_spawned_object = "المضاد للغش: تم إنشاء عنصر",
		notification_driving_hotwire = "المضاد للغش: القيادة أثناء السرقة",

		ig_orleans_label = "الساسكواتش",
		u_m_m_jesus_01_label = "يسوع",
		u_m_y_babyd_label = "رياضي بناء الجسم",
		u_m_y_imporage_label = "بطل خارق",
		a_m_m_bevhills_02_label = "رجل أبيض",
		a_m_m_fatlatin_01_label = "رجل سمين",
		a_m_m_hasjew_01_label = "رجل يهودي معاق",
		a_m_m_beach_01_label = "رجل عاري الصدر (أسود، ذكر)",
		a_m_m_beach_02_label = "رجل عاري الصدر (أبيض، ذكر)",
		a_m_m_afriamer_01_label = "رجل أسود سمين",
		ig_jimmydisanto_label = "جيمي",
		ig_jimmydisanto2_label = "جيمي 2",
		a_m_y_musclbeac_01_label = "رجل شاطئ نصف عاري",
		csb_ramp_marine_label = "رجل مشاة البحرية",
		s_f_y_stripperlite_label = "متمردة بيد",
		mp_f_stripperlite_label = "متمردة بيد 2",
		mp_m_marston_01_label = "مفقود الذراعين والأرجل",
		mp_m_niko_01_label = "نيكو (GTA IV)",

		high_fov_warning = "عرض الزاوية مرتفع بشكل غير عادي",
		high_fov_description = "غالبًا ما يحدث هذا بسبب تعديل عرض الزاوية.",
		high_fov_debug = "الحالي: ${fov}",

		illegal_oxy_run = "أكمل اللاعب جولة الأوكسي بشكل أسرع مما يمكن بشراسة بشرية.",

		fast_movement_warning = "لقد تم تمييزك للحركة السريعة! يرجى إعلام المطور وإخباره بما كنت تفعله لتحريك نفسك بسرعة كبيرة حتى لا تتلقى هذه الرسالة.",
		invincibility_warning = "لقد تم تمييزك للكونكريت! يرجى إعلام المطور وإخباره بما كنت تفعله لجعل نفسك عديم الأذى حتى لا تتلقى هذه الرسالة.",
		damage_modifier_warning = "لقد تم تمييزك لوجود معدل ضرر غير صالح! يرجى إعلام المطور وإخباره بما كنت تفعله لجعل ذلك يحدث حتى لا تتلقى هذه الرسالة.",
		freeze_warning = "لقد تم الإشارة إليك لأنك تم تجميدك ولا يجب أن يحدث هذا! يرجى إبلاغ المطورين وإخبارهم بما كنت تفعل لحدوث هذا وسيتم التعامل مع هذه المشكلة.",

		distance_taze_screenshot = "المكافحة ضد الغش: تصوير المسافة التي تم استخدامها في التازر (${distance} متر)",
		spectating_screenshot = "المكافحة ضد الغش: التتبع",
		fast_movement_screenshot = "المكافحة ضد الغش: الحركة السريعة",
		illegal_freeze_screenshot = "المكافحة ضد الغش: التجميد غير القانوني",
		illegal_vehicle_modifier_screenshot = "المكافحة ضد الغش: تعديل المركبات الغير قانوني (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "منع الغش: قيمة تعديل الضرر غير صحيحة (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "منع الغش: تم إنشاء سلاح غير مسموح به (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "منع الغش: تم إنشاء مركبة غير مسموح بها (${modelName})",
		vehicle_modification_screenshot = "منع الغش: تم تعديل المركبة (${types})",
		thermal_night_vision_screenshot = "منع الغش: تصوير حراري/رؤية ليلية (${nativeName})",
		text_entry_screenshot = "منع الغش: إدخال نص (${textEntry})",
		player_blips_screenshot = "منع الغش: مواقع اللاعبين",
		modified_fov_screenshot = "منع الغش: عدم جاحة الرؤية المعدلة (${fov})",
		ped_change_screenshot = "منع الغش: تغيير شخصية غير مصرح به",
		invincibility_screenshot = "منع الغش: اللا يحتمل",
		runtime_texture_screenshot = "منع الغش: تكستر معدل أثناء اللعب (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "منع الغش: كلمات غير لائقة في الشاشة (${words})",
		freecam_detected_screenshot = "منع الغش: الكشف عن وجود Freecam (${distance}m)",
		driving_hotwire_screenshot = "منع الغش: القيادة أثناء عملية فتح السيارة"
	},

	authentication = {
		ip_not_found = "لم نتمكن من جلب عنوان الآي بي الخاص بك.",
		authenticating_local_server = "جاري المصادقة على الخادم المحلي...",
		authenticating_global_server = "جاري المصادقة على خوادم OP-FW العالمية...",
		error_fetching_data = "حدث خطأ أثناء جلب بياناتك.",
		region_blocked = "هذا الخادم قام بحظر المنطقة التي تقوم بالاتصال منها.",
		server_config_not_loaded = "لم يتم تحميل تكوين الخادم.",
		something_went_horribly_wrong = "حدث خطأ مروع. يرجى المحاولة مرة أخرى.",
		local_firewall_enabled = "جدار الحماية المحلي ممكّن.",

		local_firewall_on = "تم تمكين جدار الحماية المحلي مع رسالة الحظر `${blockMessage}`.",
		local_firewall_re_enabled = "تم تفعيل جدار الحماية المحلي مع الرسالة المحظورة `${blockMessage}`.",
		local_firewall_off = "تم تعطيل جدار الحماية المحلي.",
		local_firewall_blocked = "جدار الحماية المحلي: تم حظر ${playerName} (${licenseIdentifier})",

		developer = "مطور",
		super_admin = "مشرف عام",
		staff = "موظف",
		reconnect = "إعادة الاتصال",
		random = "عشوائي",
		beginner = "مبتدئ",
		custom = "مخصص",
		christmas = "عيد الميلاد",
		casino = "كازينو",

		job_low = "وظيفة منخفضة",
		job_medium = "وظيفة متوسطة",
		job_high = "وظيفة عالية",

		banned_globally = "لقد تم حظرك عالميًا من جميع خوادم OP-FW.\n\nتفاصيل الحظر: ${banHash}\nسبب الحظر: ${banReason}\n\nإذا كنت تعتقد أن هذا الحظر غير صحيح ، فيرجى الانضمام إلى مجموعة discord OP-FW للحصول على معلومات حول كيفية الاستئناف على ${frameworkDiscord}",
		banned_locally = "لقد تم حظرك من ${communityName}.\n\nتفاصيل الحظر: ${banHash}\n تم حظرك من قبل: ${creatorName}\n سبب الحظر: ${banReason}\n وقت الحظر: ${timestamp}\n\n${indefiniteOrExpires}\n\nتفضل بالانضمام إلى مجموعة discord الخاصة بنا للحصول على المزيد من المعلومات حول كيفية الاستئناف على ${communityDiscord}.",
		banned_locally_no_creator = "لقد تم حظرك من ${communityName}.\n\nهاش الحظر: ${banHash}\nسبب الحظر: ${banReason}\nالوقت: ${timestamp}\n\n${indefiniteOrExpires}\n\nانضم إلى Discord guild الخاص بنا للحصول على معلومات حول كيفية الاعتراض على الحظر ${communityDiscord}.",
		ban_indefinite = "هذا الحظر غير مؤقت.",
		ban_expires = "سينتهي هذا الحظر خلال ${timeLeft}.",
		not_whitelisted = "لم تتم إدراجك ضمن القائمة البيضاء في هذا السيرفر. للحصول على معلومات حول كيفية التقدم بطلب الانضمام، يرجى الانضمام إلى Discord guild الخاص بنا.\n\n${communityDiscord}",
		api_error = "حدث خطأ أثناء جلب بياناتك. (رمز الخطأ ${errorCode})",
		pepega_moderate = "تم حظرك على مستوى العالم من جميع خوادم OP-FW دون أي أسباب محددة.",
		pepega_ultimate = "لقد تم حظرك من هذا الخادم.",
		ban_code_not_found = "لقد تم حظرك على مستوى العالم من جميع خوادم OP-FW. لم نتمكن من العثور على أي بيانات لرمز الحظر الخاص بك.",
		fraud_chargeback = "الاحتيال / الشحن المرتجع",
		threatening_ddos = "تهديد بمهاجمة بنية البنية التحتية الخاصة بنا.",
		unknown = "غير معروف",
		api_offline = "خدمة الخلفية الخاصة بنا غير متوفرة حاليًا ولذلك لا يمكن جلب بياناتك. يرجى المحاولة مرة أخرى قريبًا.",
		protective_mode_on = "وضع الحماية للخادم مفعل حاليًا على هذا الخادم ، مما يعني أن اللاعبين الذين لديهم مدة لعب معينة فقط يمكنهم الاتصال بالخادم. هذا مؤقت فقط ، ويجب أن يستأنف الخادم الوضع الطبيعي قريبًا.\n\nانضم إلى Discord لمزيد من المعلومات حول هذا الحدث على ${communityDiscord}.",
		server_restarting = "يتم إعادة تشغيل الخادم حاليا. يرجى المحاولة مرة أخرى في غضون بضع دقائق.",
		connection_cancelled = "تم إلغاء هذه الاتصال لوجود اتصال آخر قيد التشغيل مسبقاً.",
		no_reason_provided = "لم يتم تقديم سبب.",
		discord_whitelist_id_not_found = "لم نتمكن من العثور على معرف Discord الخاص بك. تأكد من وجود Discord مفتوح في الخلفية، وأنك قد سمحت لـ FiveM بجلب البيانات من عميل Discord الخاص بك.\n\n${communityDiscord}"
	},

	chat = {
		default = "الافتراضي",

		chat_group_information = "تمت إضافتك إلى مجموعة دردشة. اضغط **TAB** للتحويل بين مجموعات الدردشة المتاحة لديك.\n\nالرسائل التي تم إرسالها بدون '/' كبادئة سيتم بثها لأعضاء هذه المجموعة."
	},

	commands = {
		command_unavailable = "هذا الأمر غير متاح!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "هذا هو الأمر البديل لـ `${command}`.",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "carry",
		carry_command_help = "تبديل الحمل.",
		carry_command_substitutes = "",

		uncarry_command = "uncarry",
		uncarry_command_help = "اجبار اللاعب الذي يحملك على التوقف عن حملك.",
		uncarry_command_substitutes = "",

		piggyback_command = "piggyback",
		piggyback_command_help = "حمّل مع لاعب آخر.",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "pick_cuffs",
		pick_cuffs_command_help = "فتح الأصفاد بواسطة الشفرة.",
		pick_cuffs_command_substitutes = "",

		struggle_command = "تمرد",
		struggle_command_help = "حاول الخروج بعنف من شخص يحملك.",
		struggle_command_substitutes = "",

		handsup_command = "رفع اليدين",
		handsup_command_help = "رفع اليدين (أو إعادتها إلى أسفلها).",
		handsup_command_substitutes = "الاستسلام, ارفع يديك, هاندز آب",

		-- animations/chairs
		sit_command = "جلس",
		sit_command_help = "حاول الجلوس على كرسي قريب.",
		sit_command_parameter_variation = "التنوع",
		sit_command_parameter_variation_help = " ما هو تنوع الحركة عند الجلوس (1 - 6)",
		sit_command_substitutes = "الكرسي",

		-- animations/emotes
		ragdoll_command = "راجدول",
		ragdoll_command_help = "تبديل حالة الراجْدول (السقوط المتدحرج).",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "report",
		report_command_help = "إرسال رسالة لجميع أعضاء الفريق الإداري المتصلين.",
		report_command_parameter_message = "رسالة",
		report_command_parameter_message_help = "الرسالة التي تود إرسالها.",
		report_command_substitutes = "",

		announce_command = "announce",
		announce_command_help = "إرسال إعلان لجميع اللاعبين.",
		announce_command_parameter_message = "رسالة",
		announce_command_parameter_message_help = "الرسالة التي تود إعلانها.",
		announce_command_substitutes = "",

		staff_pm_command = "staff_pm",
		staff_pm_command_help = "أرسل رسالة لأحد أعضاء الطاقم أو للاعب كعضو في الطاقم.",
		staff_pm_command_parameter_server_id = "معرّف الخادم",
		staff_pm_command_parameter_server_id_help = "معرّف اللاعب الذي تحاول التواصل معه.",
		staff_pm_command_parameter_message = "الرسالة",
		staff_pm_command_parameter_message_help = "الرسالة التي تريد إرسالها.",
		staff_pm_command_substitutes = "staffpm",

		staff_command = "الطاقم",
		staff_command_help = "إذاعة رسالة لجميع أعضاء الطاقم النشطين.",
		staff_command_parameter_message = "الرسالة",
		staff_command_parameter_message_help = "الرسالة التي تريد إرسالها.",
		staff_command_substitutes = "",

		wipe_command = "محو",
		wipe_command_help = "امسح الكيانات غير المرغوب فيها من الخريطة.",
		wipe_command_parameter_distance = "المسافة",
		wipe_command_parameter_distance_help = "إذا كنت تريد فقط حذف الكيانات في نطاق معين ، يرجى إدخال مسافة هنا. تركها `false` أو` 0` للخريطة بأكملها.",
		wipe_command_parameter_ignore_local_entities = "تجاهل الكيانات المحلية",
		wipe_command_parameter_ignore_local_entities_help = "هل تريد تجاهل الكيانات غير المتصلة بالشبكة؟ إذا كنت تنظف من المخادعين ، فمن المستحسن وضع هذا على `true` أو  `1`.",
		wipe_command_parameter_model_name = "اسم النموذج",
		wipe_command_parameter_model_name_help = "إذا كنت تريد حذف الكيانات ذات الاسم النموذجي المحدد، فأدخل اسم النموذج هنا. وإلا، اتركه فارغًا، أو ضع `false` أو `0`. يمكنك أيضًا ضبط هذا على `vehicles` أو `peds`.",
		wipe_command_substitutes = "",

		noclip_command = "التحوم في الهواء",
		noclip_command_help = "تبديل التحوم في الهواء.",
		noclip_command_parameter_server_id = "معرف الخادم",
		noclip_command_parameter_server_id_help = "إذا كنت تريد تبديل التحوم في الهواء لشخص آخر، فأدخل معرف خادمه هنا.",
		noclip_command_substitutes = "",

		safe_noclip_command = "تبديل الطيران",
		safe_noclip_command_help = "يقوم بتبديل الطيران, ولكن فقط إذا لم يكن هناك أحد بالقرب الذي يستطيع رؤيتك (موظفوا الإدارة مستثنون).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "حذف السيارة",
		delete_vehicle_command_help = "قم بحذف السيارة المجاورة.",
		delete_vehicle_command_parameter_ignore_heading = "نعم",
		delete_vehicle_command_parameter_ignore_heading_help = "هل تريد تجاهل الاتجاه الذي تنظر إليه؟ عدم تعبئة هذا الحقل سيعمل ك 'لا'.",
		delete_vehicle_command_substitutes = "حذف_السيارة",

		delete_vehicle_interactively_command = "حذف_السيارة_بشكل_تفاعلي",
		delete_vehicle_interactively_command_help = "يقوم بتبديل الحذف التفاعلي للمركبات.",
		delete_vehicle_interactively_command_substitutes = "حذف_السيارة_بشكل_تفاعلي",

		kick_command = "طرد",
		kick_command_help = "يقوم بطرد اللاعب من الخادم.",
		kick_command_parameter_server_id = "معرف_اللاعب",
		kick_command_parameter_server_id_help = "معرف اللاعب الذي تريد طرده من الخادم.",
		kick_command_parameter_reason = "السبب",
		kick_command_parameter_reason_help = "سبب طرد اللاعب. يمكنك تركه فارغًا.",
		kick_command_substitutes = "",

		ban_command = "حظر",
		ban_command_help = "حظر لاعب من الخادم.",
		ban_command_parameter_server_id = "معرف الخادم",
		ban_command_parameter_server_id_help = "معرف اللاعب في الخادم الذي تحاول حظره.",
		ban_command_parameter_expire = "انتهاء",
		ban_command_parameter_expire_help = "مدة حظر اللاعب. يمكن تركه فارغًا، ويمكن استخدام 0 أو false للحظر غير المحدود. يمكن استخدام w/d/h لتحديد المدة. (مثال: `3d2h` -> 3 أيام، 2 ساعات)",
		ban_command_parameter_reason = "السبب",
		ban_command_parameter_reason_help = "السبب وراء حظر اللاعب. يمكن ترك هذا الحقل فارغاً.",
		ban_command_substitutes = "",

		staff_hidden_command = "اخفاء_الموظفين",
		staff_hidden_command_help = "تبديل قدرة اللاعبين على رؤية حالة الموظفين. يمكنك اختيار عرضها للاعبين أو عدم عرضها.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "التبديل_لحالة_الموظف",
		staff_toggle_command_help = "تغيير حالة توفرك كموظف على الخادم. الغاء تفعيلها يمنع ظهور تقارير المستخدمين و رسائل الموظفين في خاصك.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "وضع_الحماية",
		protective_mode_command_help = "تبديل وضع حماية الخادم. سيتم الغاء قبول الاتصال من اللاعبين الذين لعبوا اقل من المدة المطلوبة. الموظفين والداعمون للخادم يستثنون من هذا الفحص.",
		protective_mode_command_parameter_enabled = "تم التمكين",
		protective_mode_command_parameter_enabled_help = "هل يجب تمكين الفحص؟ القيم الصحيحة هي: `true`، `false`، `1` و `0`.",
		protective_mode_command_parameter_playtime = "وقت اللعب",
		protective_mode_command_parameter_playtime_help = "الوقت المطلوب من اللعب (بالثواني) لقبول اتصال جديد.",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "توليد مركبة",
		spawn_vehicle_command_help = "توليد مركبة.",
		spawn_vehicle_command_parameter_model_name = "اسم الموديل",
		spawn_vehicle_command_parameter_model_name_help = "اسم النموذج للمركبة التي تريد إنشائها.",
		spawn_vehicle_command_parameter_server_id = "معرف الخادم",
		spawn_vehicle_command_parameter_server_id_help = "معرف الخادم للعبة الذي تريد إنشاء هذه المركبة له. يمكنك ترك هذا الحقل فارغًا أو وضعه على الرقم `0` لتحديد نفسك.",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "create_vehicle",
		create_vehicle_command_help = "ينشئ مركبة على الأرض في موقعك الحالي دون نقلك داخل المركبة.",
		create_vehicle_command_parameter_model_name = "اسم النموذج",
		create_vehicle_command_parameter_model_name_help = "اسم النموذج للمركبة التي تريد إنشاؤها.",
		create_vehicle_command_parameter_ground = "الأرض",
		create_vehicle_command_parameter_ground_help = "هل تريد أن تنشأ المركبة على الأرض؟",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "استبدال_المركبة",
		replace_vehicle_command_help = "استبدل مركبتك الحالية بأخرى مختلفة.",
		replace_vehicle_command_parameter_model_name = "اسم النموذج",
		replace_vehicle_command_parameter_model_name_help = "اسم نوع السيارة التي تريد أن تظهر.",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "التصويب التلقائي",
		aimbot_command_help = "تبديل 'التصويب التلقائي'.",
		aimbot_command_parameter_server_id = "معرف الخادم",
		aimbot_command_parameter_server_id_help = "إذا كنت ترغب في تبديل 'التصويب التلقائي' لشخص آخر ، أدخل معرف خادمهم هنا.",
		aimbot_command_parameter_targets = "أهداف",
		aimbot_command_parameter_targets_help = "معرفات أهداف اللاعبين (يعمل فقط عندما تبديلها بنفسك). (سيتم تصفية الأهداف لتكون فقط اللاعبين الذين لديهم هذه المعرفات)",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "تصحيح_عظام_اللاعب",
		player_bones_debug_command_help = "تبديل وضع تصحيح عظام اللاعب.",
		player_bones_debug_command_parameter_server_id = "معرف الخادم",
		player_bones_debug_command_parameter_server_id_help = "إذا كنت تريد تبديل وضع تصحيح عظام اللاعب لشخص آخر ، فأدخل معرف خادمهم هنا.",
		player_bones_debug_command_substitutes = "تصحيح_عظام_اللاعب",

		wallhack_command = "كشف_الجدران",
		wallhack_command_help = "تبديل وضع 'كشف الجدران'.",
		wallhack_command_parameter_server_id = "معرف الخادم",
		wallhack_command_parameter_server_id_help = "إذا كنت ترغب في تبديل تفعيل ' wallhack ' لشخص آخر ، فأدخل معرف الخادم الخاص بهم هنا.",
		wallhack_command_substitutes = "",

		speed_boost_command = "speed_boost",
		speed_boost_command_help = "تبديل 'زيادة السرعة'.",
		speed_boost_command_parameter_server_id = "معرف الخادم",
		speed_boost_command_parameter_server_id_help = "إذا كنت ترغب في تبديل تفعيل 'زيادة السرعة' لشخص آخر ، فأدخل معرف الخادم الخاص بهم هنا.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_boost",
		nitro_boost_command_help = "تبديل 'زيادة النترو'.",
		nitro_boost_command_parameter_server_id = "مُعرِّف الخادم",
		nitro_boost_command_parameter_server_id_help = "إذا كنت ترغب في تبديل 'نيترو بوست' لشخص آخر، ضع معرف خادمهم هنا.",
		nitro_boost_command_substitutes = "نيترو",

		indestructibility_command = "عدم القابلية للتدمير",
		indestructibility_command_help = "تبديل 'عدم القابلية للتدمير'.",
		indestructibility_command_parameter_server_id = "مُعرِّف الخادم",
		indestructibility_command_parameter_server_id_help = "إذا كنت ترغب في تبديل 'عدم القابلية للتدمير' لشخص آخر، ضع معرف خادمهم هنا.",
		indestructibility_command_substitutes = "ind, god, god_mode, godmode",

		no_nearby_vehicles_command = "no_nearby_vehicles", -- أمر لتبديل حالة "لا توجد سيارات قريبة",
		no_nearby_vehicles_command_help = "تبديل حالة 'لا توجد سيارات قريبة'", -- نص التعليمات لأمر "no_nearby_vehicles",
		no_nearby_vehicles_command_parameter_server_id = "server id",
		no_nearby_vehicles_command_parameter_server_id_help = "إذا كنت تريد تبديل حالة 'لا توجد سيارات قريبة' لشخص آخر ، أدخل معرف الخادم هنا.", -- نص التعليمات للمعامل "server id",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "disable_collisions",
		disable_collisions_command_help = "تعطيل التصادم مع المركبات والأفراد في نطاق 10 مترًا.", -- نص التعليمات لأمر "disable_collisions",
		disable_collisions_command_substitutes = "collisions",

		ghost_command = "ghost",
		ghost_command_help = "هذا الأمر سيتيح /peek، الاختفاء، و/disable_collisions.",
		ghost_command_substitutes = "",

		job_command = "job",
		job_command_help = "تحديث وظيفة شخص بناءً على البحث.",
		job_command_parameter_server_id = "معرف الملقم",
		job_command_parameter_server_id_help = "معرف الملقم للاعب أو 0 لتحديد نفسك.",
		job_command_parameter_search = "البحث",
		job_command_parameter_search_help = "اسم الوظيفة / القسم / المنصب أو جزء منه للبحث عنه أو `لا شيء` لإزالة الوظيفة.",
		job_command_substitutes = "",

		reset_job_command = "reset_job",
		reset_job_command_help = "يعيد وظيفة شخص ما إلى البطالة.",
		reset_job_command_parameter_server_id = "معرف الخادم",
		reset_job_command_parameter_server_id_help = "معرف اللاعب في الخادم أو 0 لاختيار نفسك.",
		reset_job_command_substitutes = "",

		watching_command = "مشاهدة",
		watching_command_help = "يعرض لك جميع اللاعبين المشاهدين القريبين.",
		watching_command_substitutes = "",

		disable_recoil_command = "تعطيل_الارتداد",
		disable_recoil_command_help = "يعطل جميع انحراف السلاح.",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "ذخيرة_لا_نهائية",
		infinite_ammo_command_help = "يتبديل ذخيرة لا نهاية.",
		infinite_ammo_command_substitutes = "",

		track_player_command = "تعقب_لاعب",
		track_player_command_help = "يقوم بتشغيل تعقب للاعب معين.",
		track_player_command_parameter_server_id = "معرف الخادم",
		track_player_command_parameter_server_id_help = "معرف الخادم الخاص باللاعب الذي ترغب في تتبعه. اتركه فارغًا للتعطيل.",
		track_player_command_substitutes = "",

		stick_command = "التصاق",
		stick_command_help = "يتم الالتصاق بالسيارة التي تمتلكها.",
		stick_command_substitutes = "",

		unstick_command = "الافتكاك",
		unstick_command_help = "يتم الافتكاك من السيارة التي كنت تتصاق بها.",
		unstick_command_substitutes = "",

		clean_ped_command = "تنظيف_اللاعب",
		clean_ped_command_help = "يقوم بتنظيف دم الشخصية، وآثار الرصاص، والأوساخ، إلخ.",
		clean_ped_command_parameter_server_id = "معرّف الخادم",
		clean_ped_command_parameter_server_id_help = "معرّف اللاعب الذي تريد تنظيف شخصيّته. إذا تركته فارغاً، فسيتم اختيارك تلقائياً.",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "تبديل_الدخان_عن_المركبة",
		toggle_vehicle_smoke_command_help = "تبديل حالة 'دخان المركبة'.",
		toggle_vehicle_smoke_command_parameter_server_id = "معرّف الخادم",
		toggle_vehicle_smoke_command_parameter_server_id_help = "إذا كنت تريد تبديل حالة 'دخان المركبة' لشخص آخر، أدخل معرّفه في هذا المكان.",
		toggle_vehicle_smoke_command_parameter_color_r = "القيمة الحمراء للدخان (0-255)",
		toggle_vehicle_smoke_command_parameter_color_r_help = "القيمة الحمراء لللون الذي يراد تطبيقه على الدخان.",
		toggle_vehicle_smoke_command_parameter_color_g = "القيمة الخضراء للدخان (0-255)",
		toggle_vehicle_smoke_command_parameter_color_g_help = "القيمة الخضراء لللون الذي يراد تطبيقه على الدخان.",
		toggle_vehicle_smoke_command_parameter_color_b = "القيمة الزرقاء للدخان (0-255)",
		toggle_vehicle_smoke_command_parameter_color_b_help = "القيمة الزرقاء لللون الذي يراد تطبيقه على الدخان.",
		toggle_vehicle_smoke_command_substitutes = "الدخان_المركبات، الدخان",

		speed_up_progress_bar_command = "تسريع_شريط_التقدم",
		speed_up_progress_bar_command_help = "تشغيل / إيقاف 'تسريع شريط التقدم'.",
		speed_up_progress_bar_command_parameter_server_id = "معرف الخادم",
		speed_up_progress_bar_command_parameter_server_id_help = "إذا كنت تريد تشغيل / إيقاف 'تسريع شريط التقدم' لشخص آخر ، فأدخل معرف الخادم الخاص بهم هنا.",
		speed_up_progress_bar_command_substitutes = "تسريع",

		invisibility_command = "الاختفاء",
		invisibility_command_help = "تشغيل / إيقاف 'الاختفاء'.",
		invisibility_command_parameter_server_id = "معرّف الخادم",
		invisibility_command_parameter_server_id_help = "إذا كنت تريد تبديل 'الإختفاء' لشخص آخر، يرجى إدخال معرّف الخادم الخاص بهنا.",
		invisibility_command_substitutes = "تبويب، غير مرئي، غير مرئيّة",

		add_cash_command = "أضف_نقود",
		add_cash_command_help = "أضف نقود إلى حساب اللاعب.",
		add_cash_command_parameter_amount = "الكمية",
		add_cash_command_parameter_amount_help = "المبلغ الذي تريد إعطائه للعبّة.",
		add_cash_command_parameter_server_id = "معرّف الخادم",
		add_cash_command_parameter_server_id_help = "رقم التعريف الخاص باللاعب على الخادم. إذا تم تركه فارغًا، سيتم تحديد نفسك تلقائيًا.",
		add_cash_command_substitutes = "",

		remove_cash_command = "remove_cash",
		remove_cash_command_help = "إزالة نقود من شخصية شخص ما.",
		remove_cash_command_parameter_amount = "المبلغ",
		remove_cash_command_parameter_amount_help = "المبلغ الذي تريد إزالته من نقود اللاعب.",
		remove_cash_command_parameter_server_id = "رقم التعريف على الخادم",
		remove_cash_command_parameter_server_id_help = "رقم التعريف الخاص باللاعب على الخادم. إذا تم تركه فارغًا، سيتم تحديد نفسك تلقائيًا.",
		remove_cash_command_substitutes = "",

		add_bank_command = "add_bank",
		add_bank_command_help = "إضافة رصيد بنكي إلى حساب الشخص.",
		add_bank_command_parameter_amount = "المبلغ",
		add_bank_command_parameter_amount_help = "المبلغ الذي تريد إضافته إلى حساب اللاعب.",
		add_bank_command_parameter_server_id = "معرف الخادم",
		add_bank_command_parameter_server_id_help = "معرف الخادم للاعب. إذا تركته فارغًا ، سيتم اختيار نفسك تلقائيًا.",
		add_bank_command_substitutes = "",

		remove_bank_command = "remove_bank",
		remove_bank_command_help = "إزالة رصيد بنكي من حساب الشخص.",
		remove_bank_command_parameter_amount = "الكمية",
		remove_bank_command_parameter_amount_help = "الكمية التي تريد إزالتها من رصيد اللاعب في البنك.",
		remove_bank_command_parameter_server_id = "رقم المعرف الخاص باللاعب",
		remove_bank_command_parameter_server_id_help = "رقم المعرف الخاص بلاعب الذي تريد إجراء التعديل على رصيده في البنك. إذا تم تركه فارغًا، سيتم تحديد نفسك تلقائيًا.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "spawn_item",
		spawn_item_command_help = "يستخدم لإنشاء العناصر.",
		spawn_item_command_parameter_item_name = "اسم العنصر",
		spawn_item_command_parameter_item_name_help = "اسم العنصر الذي ترغب في إنشائه. يجب أن يكون هذا *اسم العنصر* وليس التسميات الخاصة به.",
		spawn_item_command_parameter_amount = "الكمية",
		spawn_item_command_parameter_amount_help = "كمية العنصر الذي ترغب في إنشائه. إذا تم تركه فارغًا، سيتم اختيار واحد.",
		spawn_item_command_parameter_server_id = "معرّف الخادم",
		spawn_item_command_parameter_server_id_help = "معرّف اللاعب في الخادم الذي ترغب في إنشاء العنصر من أجله. إذا تم تركه فارغًا، سيتم اختيار حسابك الشخصي.",
		spawn_item_command_parameter_battle_royale_only = "فقط في باتل رويال",
		spawn_item_command_parameter_battle_royale_only_help = "جعل هذا العنصر عنصرًا مخصصًا فقط لـ باتل رويال.",
		spawn_item_command_substitutes = "si",

		warning_message_command = "warning_message",
		warning_message_command_help = "إضافة رسالة تحذير عامة لجميع اللاعبين",
		warning_message_command_parameter_message = "الرسالة",
		warning_message_command_parameter_message_help = "الرسالة التي تريد عرضها للاعبين. يمكنك ترك هذا المعامل فارغًا لإزالة الرسالة التحذيرية",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_coords",
		tp_coords_command_help = "الانتقال إلى إحداثيات معينة",
		tp_coords_command_parameter_x = "س",
		tp_coords_command_parameter_x_help = "إحداثيات الفاصلة المنقولة لها التي تريد الانتقال إليها في الاتجاه العرضي (X).",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "إحداثيات الفاصلة المنقولة لها التي تريد الانتقال إليها في الاتجاه الطولي (Y).",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "إحداثيات الفاصلة المنقولة لها التي تريد الانتقال إليها في الاتجاه الارتفاعي (Z). إذا ترك هذا المعامل فارغًا، سيتم البحث عن إحداثيات الأرض تلقائيًا.",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "الانتقال لموقع الوايبوينت الذي قمت بتعيينه من قبل.",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "isolate_player",
		isolate_player_command_help = "يعزل اللاعب، ورفض أي شيء يحاول القيام به.",
		isolate_player_command_parameter_server_id = "معرف السيرفر",
		isolate_player_command_parameter_server_id_help = "اللاعب المستهدف.",
		isolate_player_command_substitutes = "عزل",

		show_all_evidence_command = "show_all_evidence",
		show_all_evidence_command_help = "يظهر جميع الأدلة القريبة من بقايا الطلقات.",
		show_all_evidence_command_substitutes = "جميع_الأدلة، أظهر_الأدلة، الأدلة",

		population_density_command = "كثافة_السكان",
		population_density_command_help = "تجاوز مضاعف كثافة السكان العالمي.",
		population_density_command_parameter_multiplier = "مضاعف",
		population_density_command_parameter_multiplier_help = "مضاعف كثافة السكان الذي تريد تعيينه. ترك هذا الحقل فارغًا سيقوم بإيقافه. القيم الصحيحة تتراوح من 0.0 إلى 1.0.",
		population_density_command_substitutes = "الكثافة, انخفاض الكثافة, السكان",

		repair_vehicle_command = "اصلاح_المركبة",
		repair_vehicle_command_help = "إصلاح السيارة التي تقودها.",
		repair_vehicle_command_substitutes = "اصلح",

		enter_vehicle_command = "ادخل_المركبة",
		enter_vehicle_command_help = "اجبر شخصيتك على الدخول إلى المركبة الأقرب إليك (يجعلك تخرج من المركبة إذا كنت في واحدة).",
		enter_vehicle_command_substitutes = "دخل_المركبة",

		set_modification_command = "تعيين_تعديل",
		set_modification_command_help = "تعيين تعديلات المركبة التي تستخدمها.",
		set_modification_command_parameter_mod_type = "نوع التعديل",
		set_modification_command_parameter_mod_type_help = "معرف نوع التعديل الذي تريد تعيينه.",
		set_modification_command_parameter_mod_index = "رقم التعديل",
		set_modification_command_parameter_mod_index_help = "معرف التعديل الذي ترغب في تعيينه.",
		set_modification_command_parameter_custom_tires = "إطارات مخصصة",
		set_modification_command_parameter_custom_tires_help = "إطارات مخصصة؟",
		set_modification_command_substitutes = "sm",

		set_livery_command = "set_livery",
		set_livery_command_help = "تعيين تصميم المركبة التي تقودها.",
		set_livery_command_parameter_livery_index = "رقم التصميم",
		set_livery_command_parameter_livery_index_help = "الرقم المعرف للتصميم الذي تريد تعيينه.",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "تعيين_رقم_لوحة_مزيف",
		set_fake_plate_command_help = "تعيين رقم لوحة مزيف للمركبة التي تقودها.",
		set_fake_plate_command_parameter_plate_number = "رقم اللوحة",
		set_fake_plate_command_parameter_plate_number_help = "الرقم الذي ترغب في تعيينه كرقم لوحة مزيفة.",
		set_fake_plate_command_substitutes = "لوحة",

		set_dirt_level_command = "تعيين_مستوى_الأتربة",
		set_dirt_level_command_help = "تنظيف المركبة التي تقودها.",
		set_dirt_level_command_parameter_dirt_level = "مستوى الأتربة",
		set_dirt_level_command_parameter_dirt_level_help = "المستوى الذي تريد تعيينه للأتربة (بين 0 و 15).",
		set_dirt_level_command_substitutes = "تغيير_مستوى_الأتربة",

		player_info_command = "معلومات_اللاعب",
		player_info_command_help = "يقوم بإظهار بعض المعلومات حول اللاعب المحدد.",
		player_info_command_parameter_server_id = "معرّف الخادم",
		player_info_command_parameter_server_id_help = "معرّف الخادم لللاعب الذي تود الحصول على معلومات حوله، في حال تركتها فارغة، سيتم اختيارك.",
		player_info_command_substitutes = "اللاعب, معلومات",

		inventory_command = "المخزون",
		inventory_command_help = "يقوم بفتح المخزن المحدد.",
		inventory_command_parameter_inventory_name = "اسم المخزون",
		inventory_command_parameter_inventory_name_help = "اسم المخزن الذي تريد فتحه.",
		inventory_command_substitutes = "",

		character_inventory_command = "character_inventory",
		character_inventory_command_help = "يعرض لك محتويات المخزن الخاص بلاعب آخر.",
		character_inventory_command_parameter_server_id = "server id",
		character_inventory_command_parameter_server_id_help = "server id الخاص باللاعب.",
		character_inventory_command_substitutes = "pockets",

		fake_disconnect_command = "fake_disconnect",
		fake_disconnect_command_help = "يقوم بتشغيل سلسلة من الأحداث لتبدو وكأنه تم فصل اتصالك بالخادم. هذا سوف يمكنك من استخدام noclip في حال لم يتم تفعيله بعد.",
		fake_disconnect_command_substitutes = "fake_leave, dc",

		set_identity_command = "set_identity",
		set_identity_command_help = "يغير اسم اللاعب.",
		set_identity_command_parameter_player_name = "اسم اللاعب",
		set_identity_command_parameter_player_name_help = "الاسم الذي ترغب في تغييره أو تركه فارغًا لإعادته.",
		set_identity_command_substitutes = "identity",

		disable_idle_cam_command = "disable_idle_cam",
		disable_idle_cam_command_help = "يعطل كاميرا الخمول من التفعيل.",
		disable_idle_cam_command_substitutes = "disable_idle, idle",

		auto_drive_command = "تشغيل_القيادة_الآلية",
		auto_drive_command_help = "تقودك تلقائياً إلى الوجهة المحددة أو تقود حولياً إذا لم تتم تحديدها.",
		auto_drive_command_parameter_style = "نمط_القيادة",
		auto_drive_command_parameter_style_help = "نمط القيادة (عادي، مستعجل، متهور، رجوع).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "سرعة_القيادة",
		drive_speed_command_help = "تعيين سرعة الرحلة الثابتة لأمر القيادة الآلية.",
		drive_speed_command_parameter_speed = "السرعة",
		drive_speed_command_parameter_speed_help = "السرعة المراد تعيينها (بالأميال في الساعة).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "تبديل_مرفق_السلاح",
		toggle_weapon_attachment_command_help = "يتبديل مرفق السلاح للسلاح الذي تحمله حاليًا.",
		toggle_weapon_attachment_command_parameter_attachment = "المرفق",
		toggle_weapon_attachment_command_parameter_attachment_help = "المرفق الذي تريد تبديله.",
		toggle_weapon_attachment_command_substitutes = "مرفق_السلاح, المرفق",

		set_weapon_tint_command = "تعيين_صبغة_السلاح",
		set_weapon_tint_command_help = "يضبط أو يزيل صبغة السلاح الذي تحمله حاليًا.",
		set_weapon_tint_command_parameter_tint = "الصبغة",
		set_weapon_tint_command_parameter_tint_help = "الصبغة التي تريد تعيينها (اتركه فارغاً للإزالة).",
		set_weapon_tint_command_substitutes = "صبغة_السلاح, صبغة",

		set_item_name_override_command = "set_item_name_override_command",
		set_item_name_override_command_help = "يضبط أو يزيل استبدال اسم العنصر للعنصر المحدد",
		set_item_name_override_command_parameter_slot = "الفتحة",
		set_item_name_override_command_parameter_slot_help = "رقم الفتحة للعنصر الذي تريد استبدال اسمه.",
		set_item_name_override_command_parameter_item_name = "اسم العنصر",
		set_item_name_override_command_parameter_item_name_help = "الاسم الجديد الذي تريد تعيينه للعنصر (اتركه فارغا لإزالته).",
		set_item_name_override_command_substitutes = "ضبط_تجاوز_الاسم, تجاوز_الاسم",

		set_durability_command = "ضبط_الصلابة",
		set_durability_command_help = "تعيين صلابة كل العناصر في فتحة محددة.",
		set_durability_command_parameter_slot = "فتحة العناصر",
		set_durability_command_parameter_slot_help = "الفتحة التي تريد تعيين صلابتها.",
		set_durability_command_parameter_amount = "المبلغ",
		set_durability_command_parameter_amount_help = "كمية التحمل لتعيينها (الافتراضي هو 100).",
		set_durability_command_substitutes = "التحمل",

		set_metadata_command = "تعيين_البيانات",
		set_metadata_command_help = "يعين جميع بيانات العناصر في فتحة محددة.",
		set_metadata_command_parameter_slot = "الفتحة",
		set_metadata_command_parameter_slot_help = "أي فتحة لتعيين تحمل العناصر فيها.",
		set_metadata_command_parameter_metadata = "البيانات",
		set_metadata_command_parameter_metadata_help = "الـ json الخاص بالبيانات لتعيينها.",
		set_metadata_command_substitutes = "بيانات_السيارة",

		refill_nitro_command = "املأ_خزان_نترو",
		refill_nitro_command_help = "يملأ خزان النترو في السيارة الخاصة بك.",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "تسجيل_سلاح",
		register_weapon_command_help = "يسجل سلاحًا في فتحة معينة لمعرف شخصية معينة.",
		register_weapon_command_parameter_slot = "الفتحة",
		register_weapon_command_parameter_slot_help = "الفتحة التي يوجد السلاح فيها.",
		register_weapon_command_parameter_character_id = "معرف_الشخصية",
		register_weapon_command_parameter_character_id_help = "معرف الشخصية التي تريد تسجيل السلاح عليها.",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "advanced_metagame",
		advanced_metagame_command_help = "أمر سوبر أدمن لمساعدتك في الوصول إلى مستوى أعلى من الميتاغيمنج.",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "list_weapon_attachments",
		list_weapon_attachments_command_help = "يضيف أو يزيل اكسسوارات السلاح الذي تحمله حاليًا.",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "wipe_first_owned",
		wipe_first_owned_command_help = "يزيل كل الكائنات التي تمتلكها أول لاعبينا.",
		wipe_first_owned_command_parameter_server_id = "معرف الخادم",
		wipe_first_owned_command_parameter_server_id_help = "معرف اللاعب في الخادم.",
		wipe_first_owned_command_parameter_range = "المدى",
		wipe_first_owned_command_parameter_range_help = "المدى الذي تريد حذف الجسم به، أو اتركه فارغًا لحذف الجميع.",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "تجميد",
		freeze_command_help = "تجميد اللاعب.",
		freeze_command_parameter_server_id = "معرف الخادم",
		freeze_command_parameter_server_id_help = "معرف اللاعب الذي تريد تجميده.",
		freeze_command_substitutes = "",

		unfreeze_command = "إلغاء التجمد",
		unfreeze_command_help = "تقوم بإلغاء تجميد اللاعب.",
		unfreeze_command_parameter_server_id = "معرّف الخادم",
		unfreeze_command_parameter_server_id_help = "معرّف الخادم للاعب الذي تريد إلغاء تجمده.",
		unfreeze_command_substitutes = "",

		slap_command = "صفع",
		slap_command_help = "تقوم بصفع اللاعب (وقتله).",
		slap_command_parameter_server_id = "معرّف الخادم",
		slap_command_parameter_server_id_help = "معرّف الخادم للاعب الذي تريد صفعه.",
		slap_command_substitutes = "",

		damage_player_command = "تضرر_اللاعب",
		damage_player_command_help = "تضرر صحة اللاعب.",
		damage_player_command_parameter_server_id = "معرّف الخادم",
		damage_player_command_parameter_server_id_help = "معرف اللاعب في الخادم الذي تريد إصابته.",
		damage_player_command_parameter_health = "الضرر",
		damage_player_command_parameter_health_help = "كمية الضرر الذي ترغب في تسببه.",
		damage_player_command_substitutes = "damage",

		scoop_command = "جرف",
		scoop_command_help = "يجرف كل اللاعبين في نطاق محدد. (لاستخدامه مع /unscoop)",
		scoop_command_parameter_radius = "نصف القطر",
		scoop_command_parameter_radius_help = "نطاق جرف اللاعبين (2D).",
		scoop_command_substitutes = "",

		unscoop_command = "فك الرفع",
		unscoop_command_help = "يقوم بنقل جميع اللاعبين الذين قمت برفعهم من قبل إلى موقعك الحالي.",
		unscoop_command_parameter_revive = "إحياء",
		unscoop_command_parameter_revive_help = "يقوم بإحياء اللاعبين الذين قمت برفعهم إذا كانوا مصابين.",
		unscoop_command_substitutes = "",

		peek_command = "التجسس",
		peek_command_help = "يظهر جميع اللاعبين غير المرئيين حولك (بما في ذلك نفسك).",
		peek_command_substitutes = "",

		hit_indicator_command = "مؤشر الإصابة",
		hit_indicator_command_help = "يقوم بتبديل مؤشر الإصابة إذا كنت تستخدم المؤشر المخصص.",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "تشغيل_استدعاء_خدمة_الطوارئ",
		trigger_ems_call_command_help = "يقوم بإرسال استدعاء خدمة الطوارئ المحلية من موقعك.",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "إضافة_النموذج_للاكتشاف",
		model_detect_add_command_help = "يقوم باضافة نموذج مؤقتًا إلى قائمة الكشف. يتم إعادة تعيين القائمة عند إعادة تشغيل الخادم.",
		model_detect_add_command_parameter_model = "النموذج",
		model_detect_add_command_parameter_model_help = "النموذج الذي تريد الكشف عنه. يمكن أن يكون اسم النموذج أو هاش النموذج.",
		model_detect_add_command_substitutes = "الكشف",

		model_detect_remove_command = "حذف_كشف_النموذج",
		model_detect_remove_command_help = "إزالة نموذج من قائمة الكشف.",
		model_detect_remove_command_parameter_model = "model",
		model_detect_remove_command_parameter_model_help = "النموذج الذي تريد إزالته. يمكن أن يكون اسم النموذج أو تجزئة النموذج.",
		model_detect_remove_command_substitutes = "إلغاء_الكشف",

		detection_area_add_command = "إضافة_منطقة_الكشف",
		detection_area_add_command_help = "إنشاء منطقة حيث سيتم إرسال كل الكائنات التي تم إنشاؤها داخل تلك المنطقة إليك مع بعض المعلومات. يمكن العثور على المعلومات في واجهة المستخدم للنظرة العامة.",
		detection_area_add_command_parameter_radius = "نصف القطر",
		detection_area_add_command_parameter_radius_help = "نصف قطر الدائرة التي يتم اكتشاف الكائنات فيها. القيمة الدنيا لهذا النصف هي 10 والقيمة العليا هي 5000. ترك هذا الحقل فارغًا سيؤدي إلى القيمة الافتراضية وهي 100.",
		detection_area_add_command_substitutes = "اضافة_منطقة",

		detection_area_remove_command = "ازالة_منطقة_الكشف",
		detection_area_remove_command_help = "ازالة منطقة الكشف.",
		detection_area_remove_command_parameter_area_id = "معرف منطقة الكشف",
		detection_area_remove_command_parameter_area_id_help = "رقم تعريف منطقة الكشف التي تريد إزالتها.",
		detection_area_remove_command_substitutes = "area_remove",

		-- base/commands
		help_command = "help",
		help_command_help = "عرض كل الأوامر المتاحة.",
		help_command_substitutes = "",

		substitutes_command = "substitutes",
		substitutes_command_help = "عرض جميع البدائل المتاحة.",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "richer_presence",
		richer_presence_command_help = "تبديل 'richer presence' والذي يضيف مزيدًا من المعلومات إلى الوظيفة الغنية، مثل الشخصية المحمّلة.",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "قائمة_الرموز_التعبيرية",
		emojis_list_command_help = "عرض قائمة بجميع الرموز التعبيرية المتاحة.",
		emojis_list_command_substitutes = "الرموز",

		emojis_refresh_command = "تحديث_الرموز_التعبيرية",
		emojis_refresh_command_help = "تحديث الرموز التعبيرية المتاحة. سيتم الحصول على أحدث قائمة من خادم ديسكورد.",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "الحصول_على_سرعة_الاتصال",
		get_pings_command_help = "الحصول على المتوسط ​​لسرعة الاتصال إلى مضيفين مختلفين حول العالم للعثور على أفضل موقع للخادم للاعبين الحاليين.",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "تصحيح_الملف_الشخصي",
		profile_debug_command_help = "تبديل مُصحِح الأخطاء الخاص بالملف الشخصي.",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "الوقت باللعب",
		playtime_command_help = "معرفة إجمالي وقت اللعب على الخادم وكذلك وقت اللعب في هذه الجلسة.",
		playtime_command_parameter_server_id = "مُعرِّف الخادم",
		playtime_command_parameter_server_id_help = "مُعرِّف اللاعب في الخادم التي تريد الحصول على الوقت الذي قضاه في اللعب. يمكنك ترك هذا الحقل فارغًا أو وضع `0` لاختيار نفسك.",
		playtime_command_substitutes = "",

		leaderboard_command = "جدول الصدارة",
		leaderboard_command_help = "مشاهدة جدول الصدارة لوقت اللعب.",
		leaderboard_command_substitutes = "",

		package_command = "الحزمة",
		package_command_help = "تحقق وتحديث حزمتك.",
		package_command_substitutes = "تحديث_حزمة",

		player_packages_command = "حزم_اللاعب",
		player_packages_command_help = "الحصول على جميع حزم اللاعب الغير المستخدمة الخاصة بك.",
		player_packages_command_substitutes = "",

		unload_character_command = "تحميل_الشخصية",
		unload_character_command_help = "إلغاء تحميل شخصية اللاعب.",
		unload_character_command_parameter_server_id = "هوية_الخادم",
		unload_character_command_parameter_server_id_help = "معرف الخادم الخاص باللاعب الذي تريد إلغاء تحميل شخصيته. يمكنك ترك هذا الخيار فارغًا أو ضعه على الرقم `0` لتحديد نفسك.",
		unload_character_command_parameter_message = "الرسالة",
		unload_character_command_parameter_message_help = "إذا كنت تريد عرض رسالة للعبة ليراها اللاعبون في قائمة تسجيل الدخول، فاكتبها هنا.",
		unload_character_command_substitutes = "تحميل",

		-- game/admin_menu
		admin_command = "المدير",
		admin_command_help = "يفتح قائمة المدير.",
		admin_command_substitutes = "",

		tp_player_command = "نقل_اللاعب",
		tp_player_command_help = "ينقلك إلى لاعب محدد.",
		tp_player_command_parameter_server_id = "معرف_الخادم",
		tp_player_command_parameter_server_id_help = "معرف الخادم للاعب الذي تريد الانتقال إليه.",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_here",
		tp_here_command_help = "ينقل لاعب إليك.",
		tp_here_command_parameter_server_id = "معرف الخادم",
		tp_here_command_parameter_server_id_help = "معرّف اللاعب الذي تريد نقله.",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_to",
		tp_to_command_help = "ينقل لاعبًا إلى لاعب آخر.",
		tp_to_command_parameter_source_id = "معرف المصدر",
		tp_to_command_parameter_source_id_help = "اللاعب الذي تريد نقله.",
		tp_to_command_parameter_destination_id = "معرف الوجهة",
		tp_to_command_parameter_destination_id_help = "اللاعب الذي تريد نقل اللاعب له.",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "انشاء_إسقاط_جوي",
		create_airdrop_command_help = "انشاء إسقاط جوي.",
		create_airdrop_command_parameter_airdrop_type = "نوع الإسقاط الجوي",
		create_airdrop_command_parameter_airdrop_type_help = "نوع الايتمات التي تريد وضعها في الإسقاط الجوي. (اسلحة، مخدرات، طبية، لوازم، ملحقات، قيمة، طعام)",
		create_airdrop_command_parameter_item_amount = "عدد الايتمات",
		create_airdrop_command_parameter_item_amount_help = "عدد الايتمات التي يجب أن يحتوي عليها الإسقاط الجوي.",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "استدعاء_ضربة_جوية",
		call_airstrike_command_help = "يستدعي غارة جوية على موقعك الحالي.",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "دعم جوي",
		airsupport_command_help = "يستدعي دعمًا جويًا.",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "عرض التنبيه",
		show_alert_command_help = "يعرض تنبيهًا للاعب المحدد (أو الجميع).",
		show_alert_command_parameter_server_id = "معرف الخادم",
		show_alert_command_parameter_server_id_help = "معرف الخادم للاعب الذي ترغب في عرض التنبيه له.",
		show_alert_command_parameter_content = "المحتوى",
		show_alert_command_parameter_content_help = "محتوى التنبيه.",
		show_alert_command_substitutes = "تنبيه",

		-- game/archives
		create_archive_command = "إنشاء_أرشيف",
		create_archive_command_help = "ينشئ قضية جديدة في الأرشيف الذي تقف بجانبه حاليًا.",
		create_archive_command_parameter_case_number = "رقم_الحالة",
		create_archive_command_parameter_case_number_help = "رقم الحالة (عدد صحيح بين 1 و 99،999).",
		create_archive_command_substitutes = "",

		destroy_archive_command = "حذف_أرشيف",
		destroy_archive_command_help = "يحذف حالة موجودة في الأرشيف الذي تقف بجانبه حاليًا.",
		destroy_archive_command_parameter_case_number = "رقم القضية",
		destroy_archive_command_parameter_case_number_help = "رقم القضية. (يمكنك فقط تدمير القضايا الفارغة)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "إعادة الولادة",
		respawn_command_help = "اقتل نفسك. (للأرينا)",
		respawn_command_substitutes = "الانتحال",

		-- game/audio
		audio_debug_command = "تصحيح الصوت",
		audio_debug_command_help = "تبديل تصحيح الصوت.",
		audio_debug_command_substitutes = "",

		play_audio_command = "تشغيل الصوت",
		play_audio_command_help = "شغل صوت للاعب أو لجميع اللاعبين.",
		play_audio_command_parameter_url = "رابط",
		play_audio_command_parameter_url_help = "عنوان URL المستخدَم لتنزيل الملف الصوتي.",
		play_audio_command_parameter_volume = "المستوى الصوتي",
		play_audio_command_parameter_volume_help = "مستوى الصوت الذي يجب على الملف الصوتي العمل عليه. تتراوح القيم الصحيحة من `0` إلى `1`. سيتم تعيين هذه القيمة إلى `0.1` في حالة عدم تحديدها.",
		play_audio_command_parameter_server_id = "معرّف الخادم",
		play_audio_command_parameter_server_id_help = "معرّف الخادم الذي تريد تشغيل الملف الصوتي عليه. يمكنك إدخال `-1` لتشغيل الملف الصوتي على جميع اللاعبين.",
		play_audio_command_substitutes = "",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "قم بتبديل ميزة Battle Royale.",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "بدء_battle_royale",
		battle_royale_start_command_help = "ابدأ مباراة Battle Royale.",
		battle_royale_start_command_parameter_no_vehicles = "بدون مركبات",
		battle_royale_start_command_parameter_no_vehicles_help = "إنشاء مباراة بدون مركبات.",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "دعوة_battle_royale",
		battle_royale_invite_command_help = "دعوة لاعب إلى لوبي باتل رويال الخاص بك.",
		battle_royale_invite_command_parameter_server_id = "معرف الخادم",
		battle_royale_invite_command_parameter_server_id_help = "معرف الخادم للاعب الذي ترغب في دعوته.",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "الانضمام إلى لوبي باتل رويال للاعب.",
		battle_royale_join_command_parameter_server_id = "معرف الخادم",
		battle_royale_join_command_parameter_server_id_help = "معرف الخادم الذي تريد الانضمام إليه.",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "ترك صالة Battle Royale التي تم الانضمام إليها.",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "الانضمام إلى مثيل Battle Royale لاعب ما.",
		battle_royale_join_instance_command_parameter_server_id = "معرف الخادم",
		battle_royale_join_instance_command_parameter_server_id_help = "معرّف خادم اللاعب الذي تريد الانضمام إلى نسخته الخاصة.",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "مغادرة النسخة التي انضممت إليها.",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "bed",
		bed_command_help = "محاولة الاستلقاء في السرير الأقرب.",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "toggle_bombs",
		toggle_bombs_command_help = "تقوم بتفعيل أو إلغاء تفعيل القنابل على الطائرة الخاصة بك حاليًا.",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "تفعيل أو إلغاء تفعيل قنبلة الإشعال للمركبة التي تقودها حاليًا (سيتم انفجار المركبة عند تشغيل المحرك).",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "مسح صناديق الصوت.",
		wipe_boomboxes_command_parameter_radius = "نصف القطر",
		wipe_boomboxes_command_parameter_radius_help = "نصف القطر لعملية المسح. إذا تركتها فارغة، سيتم اختيار `100` تلقائيًا. القيم المقبولة هي الأرقام أعلى من `0`، بالإضافة إلى القيم `0` و `-1` التي ستحدد جميع صناديق الصوت.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "draw_boomboxes",
		draw_boomboxes_command_help = "رسم صناديق الصوت",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "spawn_contract",
		spawn_contract_command_help = "إنشاء عقد تعزيز.",
		spawn_contract_command_parameter_server_id = "رقم السيرفر",
		spawn_contract_command_parameter_server_id_help = "رقم السيرفر الذي تريد إنشاء العقد له. سيتم اختيار خادمك تلقائيًا إذا تركته فارغًا.",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "cache_assets",
		cache_assets_command_help = "طلب وتحميل الأصول الأكثر تدفقًا بالقوة (المركبات والأجسام والملابس). هذا ليس مستحسنًا إلا إذا كانت لديك اتصال بطيء ولا تتم تنزيل الأصول بما يكفي عند الطلب لتكون سلسة. قد يؤدي هذا أيضًا إلى تعطل العميل بينما يعمل. ",
		cache_assets_command_parameter_slow_download = "تحميل بطيء",
		cache_assets_command_parameter_slow_download_help = "هل تريد تخزين الأصول ببطء؟ سيستغرق ذلك وقتًا أطول ، ولكنه سيقلل من فرصة التعطلات.",
		cache_assets_command_substitutes = "تحميل_التخزين، تحميل_مسبق_للتخزين، تحميل_التحميل",

		-- game/cargo
		cargo_start_command = "بدء_الشحن",
		cargo_start_command_help = "بدء سرقة الشحن العالمية.",
		cargo_start_command_substitutes = "شحن_بدء",

		cargo_end_command = "نهاية_الشحن",
		cargo_end_command_help = "إنهاء سرقة البضائع عالمياً.",
		cargo_end_command_substitutes = "end_cargo",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "تبديل تفعيل/تعطيل وضع تصحيح أخطاء البضائع.",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "تبديل تفعيل/تعطيل وضع تصحيح أخطاء مشاة البضائع.",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "تعيين شاشات الكازينو.",
		set_casino_screens_command_parameter_screen_label = "تسمية الشاشة",
		set_casino_screens_command_parameter_screen_label_help = "تسمية الشاشة التي ترغب بتعيينها، يتوفر لديك 4 تسميات: الألماس، الجماجم، الثلوج، والفائز.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "تبديل_كايو_بيريكو",
		toggle_cayo_perico_command_help = "تبديل جزيرة كايو بيريكو.",
		toggle_cayo_perico_command_substitutes = "تبديل_الجزيرة, الجزيرة",

		-- game/cayo_perico_world
		cayo_perico_command = "كايو_بيريكو",
		cayo_perico_command_help = "تبديل المساعدة لدخول وخروج من 'عالم' كايو بيريكو.",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "إضافة_قائمة_الأفلام_السوداء",
		cinema_blacklist_add_command_help = "إضافة فيديو إلى قائمة الأفلام السوداء المحلية.",
		cinema_blacklist_add_command_parameter_video_key = "مفتاح_الفيديو",
		cinema_blacklist_add_command_parameter_video_key_help = "مفتاح الفيديو للفيديو الذي تريد حظره. مثال: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "تصحيح أخطاء الشاشات السينمائية.",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "التركيز على أقرب شاشة سينما لتحسين تجربة المشاهدة.",
		cinema_focus_command_substitutes = "focus_cinema",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "تبديل الشريط الأسود التشويقي.",
		cinematic_command_parameter_bar_height = "ارتفاع الشريط",
		cinematic_command_parameter_bar_height_help = "ارتفاع الأشرطة. يجب أن يكون بين 0 و 50 (نسبة مئوية). الافتراضي هو 10. تركه فارغًا سيعيد تعيينه إلى القيمة التي استخدمتها في المرة السابقة.",
		cinematic_command_substitutes = "سينمائي، سين",

		-- game/clothing_menu
		clothing_command = "الملابس",
		clothing_command_help = "يفتح قائمة الملابس لك أو للاعب آخر.",
		clothing_command_parameter_server_id = "معرف الخادم",
		clothing_command_parameter_server_id_help = "معرف الخادم للاعب الذي تريد فتح قائمة الملابس الخاصة به.",
		clothing_command_substitutes = "",

		barber_command = "الحلاق",
		barber_command_help = "يفتح قائمة متجر الحلاقة لك أو للاعب آخر.",
		barber_command_parameter_server_id = "معرف الخادم",
		barber_command_parameter_server_id_help = "معرف الخادم الخاص باللاعب الذي تريد فتح قائمة متجر الحلاقة له.",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "حفظ المظهر",
		save_outfit_command_help = "يحفظ ملابسك الحالية كمظهر.",
		save_outfit_command_parameter_name = "الاسم",
		save_outfit_command_parameter_name_help = "اسم المظهر المراد حفظه.",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "حذف_الزي",
		delete_outfit_command_help = "يحذف الزي المحدد.",
		delete_outfit_command_parameter_name = "الاسم",
		delete_outfit_command_parameter_name_help = "اسم الزي.",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "مشاركة_الزي",
		share_outfit_command_help = "يشارك الزي مع لاعب آخر (إذا كنت بالقرب من متجر الملابس).",
		share_outfit_command_parameter_server_id = "رقم السيرفر",
		share_outfit_command_parameter_server_id_help = "اللاعب الذي تريد مشاركة الزي معه. ",
		share_outfit_command_parameter_hairstyle = "تسريحة الشعر",
		share_outfit_command_parameter_hairstyle_help = "إذا كنت تريد تضمين تسريحة الشعر واللون (`0` أو` false` لا تضمينه).",
		share_outfit_command_parameter_makeup = "المكياج",
		share_outfit_command_parameter_makeup_help = "إذا كنت تريد تضمين مستحضرات التجميل (`0` أو` false` لا تضمينه).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "سرقة الملابس",
		steal_outfit_command_help = "يسرق أزياء لاعب آخر.",
		steal_outfit_command_parameter_server_id = "معرّف الخادم",
		steal_outfit_command_parameter_server_id_help = "معرف اللاعب في الخادم.",
		steal_outfit_command_parameter_hairstyle = "تسرق_مظهر_الأمر_الإضافي_للشعر",
		steal_outfit_command_parameter_hairstyle_help = "إذا كنت تريد نسخ مظهر شعر اللاعب.",
		steal_outfit_command_parameter_makeup = "تسرق_مظهر_الأمر_الإضافي_للمكياج",
		steal_outfit_command_parameter_makeup_help = "إذا كنت تريد نسخ مظهر ماكياج اللاعب.",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "تسرق_الأحذية",
		steal_shoes_command_help = "تسرق الأحذية الأقرب إلى اللاعب المتوفي.",
		steal_shoes_command_substitutes = "",

		outfit_command = "مظهر",
		outfit_command_help = "تغيير المظهر عندما تكون بالقرب من مكان الملابس. ",
		outfit_command_parameter_outfit = "ملابس",
		outfit_command_parameter_outfit_help = "اسم الملابس.",
		outfit_command_parameter_force = "قوة",
		outfit_command_parameter_force_help = "تجاهل فحص موقع الملابس، وعدم تشغيل الرسم البياني.",
		outfit_command_substitutes = "",

		outfits_command = "الملابس",
		outfits_command_help = "عرض جميع الملابس المحفوظة الخاصة بك.",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "إعادة الاتصال بمقبس الأمر",
		reconnect_command_socket_command_help = "محاولة إعادة الاتصال بمقبس الأمر.",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "دعم الحرفة",
		crafting_debug_command_help = "تصحيح أماكن الصنع.",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "crash",
		crash_command_help = "تسبب تعطلًا اصطناعيًا.",
		crash_command_parameter_server_id = "مُعرف الخادم",
		crash_command_parameter_server_id_help = "مُعرف اللاعب الذي ترغب في إحداث تعطل اصطناعي له. ترك هذا الخيار فارغًا سيقوم باختيار نفسك تلقائيًا.",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "customize_crosshair",
		customize_crosshair_command_help = "فتح قائمة تخصيص العلامة المرجعية.",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "copy_crosshair",
		copy_crosshair_command_help = "ينسخ إعدادات المقصورة الحالية إلى الحافظة.",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "استيراد تكوين المقصورة أو تعطيل المقصورة المخصصة.",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "تكوين أو فارغ لتعطيل المقصورة المخصصة.",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "تبديل تصحيح العرض الديناميكي للكائنات (Culling) والتصحيح الزمني للالعاب الارضية.",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "إعادة تعيين نشاطاتك اليومية.",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "رقم_الوحدة",
		unit_id_command_help = "تعيين رقم وحدتك.",
		unit_id_command_parameter_unit_id = "رقم الوحدة",
		unit_id_command_parameter_unit_id_help = "رقم وحدتك. يجب أن يكون عدد صحيح بين 1 و 999.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "تصحيح_أخطاء",
		debug_command_help = "تبديل مصحح أخطاء الكيان. سيظهر هذا بعض المعلومات العامة حول الكائنات القريبة.",
		debug_command_substitutes = "",

		npc_debug_command = "تصحيح_أخطاء_ الني-بي-سي",
		npc_debug_command_help = "تصحيح أخطاء جميع الشخصيات الاصطناعية غير الحيوانية حولك.",
		npc_debug_command_substitutes = "حرفيين",

		network_debug_command = "تصحيح_الشبكة",
		network_debug_command_help = "تبديل مصحح إعادة الشبكة الكيان. يظهر هذا بعض المعلومات حول الشبكة للكيان الذي تنظر إليه.",
		network_debug_command_substitutes = "تصحيح_الشبكة, تصحيح_الشبكة, تصحيح_شبكي",

		attach_command = "المرفق",
		attach_command_help = "تبديل أداة ربط الأجسام. ستساعدك هذه الأداة على تحديد موضع الجسم المربوط على طرف الشخص.",
		attach_command_parameter_model_name = "اسم النموذج",
		attach_command_parameter_model_name_help = "اسم النموذج الذي تريد إرفاقه.",
		attach_command_parameter_bone_id = "معرف العظمة",
		attach_command_parameter_bone_id_help = "معرف العظمة التي تريد استخدامها أثناء إرفاق الكائن. يمكن ترك هذا الحقل فارغًا للاستخدام الافتراضي.",
		attach_command_substitutes = "",

		position_command = "الموضع",
		position_command_help = "حفظ موضعك الحالي في ملف نصي.",
		position_command_parameter_label = "تصنيف",
		position_command_parameter_label_help = "تصنيف اختياري يتم تخزينه مع الموضع.",
		position_command_substitutes = "موقع, إحداثيات",

		save_commands_list_command = "حفظ_قائمة_الأوامر",
		save_commands_list_command_help = "يحفظ قائمة بجميع أوامر op-fw المتاحة.",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "حفظ_بيانات_المركبة",
		save_vehicle_data_command_help = "يحفظ العديد من البيانات المتعلقة بالمركبات.",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "رسم_نصف_القطر",
		draw_radius_command_help = "يرسم نصف القطر.",
		draw_radius_command_parameter_radius = "نصف_القطر",
		draw_radius_command_parameter_radius_help = "النصف الذي تريد رسمه.",
		draw_radius_command_substitutes = "",

		inject_code_command = "إدخال_كود",
		inject_code_command_help = "إدخال كود على نظام شخص آخر.",
		inject_code_command_parameter_url = "رابط",
		inject_code_command_parameter_url_help = "رابط نصي RAW يحتوي على الكود الذي سيتم حقنه.",
		inject_code_command_parameter_server_id = "معرف_الخادم",
		inject_code_command_parameter_server_id_help = "معرف الخادم الخاص باللاعب الذي تريد حقن الكود فيه. يتم اختيار النفس تلقائيًا إذا تركته فارغًا.",
		inject_code_command_parameter_otm = "OTM",
		inject_code_command_parameter_otm_help = "رسالة مرة واحدة. إذا تم تعيينها على صحيح، يمكنك استخدام _sendResponse() للحصول على رد من زبون اللاعب",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "حقن الكود في عملاء اللاعبين في نطاق معين.",
		inject_code_radius_command_parameter_url = "عنوان (URL)",
		inject_code_radius_command_parameter_url_help = "عنوان URL لملف نصي خام يحتوي على الكود الذي يجب حقنه.",
		inject_code_radius_command_parameter_radius = "نصف القطر",
		inject_code_radius_command_parameter_radius_help = "نصف القطر الذي تريد أن يكون اللاعبون ضمنه لحقن الكود.",
		inject_code_radius_command_substitutes = "حقن",

		run_code_command = "تشغيل_الكود",
		run_code_command_help = "يشغل جزءًا من الكود.",
		run_code_command_parameter_code = "الكود",
		run_code_command_parameter_code_help = "الجزء المراد تشغيله.",
		run_code_command_substitutes = "تشغيل_جزء",

		print_code_command = "طباعة_الكود",
		print_code_command_help = "تشغيل مقتطفات صغيرة من الرمز وطباعة النتيجة.",
		print_code_command_parameter_code = "الرمز",
		print_code_command_parameter_code_help = "مقتطف الرمز الذي تريد تشغيله.",
		print_code_command_substitutes = "طباعة",

		vehicle_bones_command = "bones_المركبة",
		vehicle_bones_command_help = "رسم جميع عظام المركبة الحالية على أقرب مركبة.",
		vehicle_bones_command_parameter_bone_name = "اسم العظمة",
		vehicle_bones_command_parameter_bone_name_help = "عرض موقع عظمة واحدة فقط.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "معلومات_المركبة",
		vehicle_info_command_help = "تقوم بطباعة معلومات تتعلق بالمركبة التي تستخدمها لمساعدة في تصحيح المشكلات.",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "حذف_الكيان",
		delete_entity_command_help = "تقوم بحذف كائن معين بمعرّف الشبكة.",
		delete_entity_command_parameter_network_id = "معرّف الشبكة",
		delete_entity_command_parameter_network_id_help = "معرّف الشبكة للكائن الذي تريد حذفه.",
		delete_entity_command_substitutes = "حذف",

		move_entity_command = "نقل_الكيان",
		move_entity_command_help = "يقوم بنقل كيان بمعرف الشبكة معين إلى موقعك الحالي.",
		move_entity_command_parameter_network_id = "معرف الشبكة",
		move_entity_command_parameter_network_id_help = "معرف شبكة الكيان الذي تريد نقله.",
		move_entity_command_parameter_ground = "الأرض",
		move_entity_command_parameter_ground_help = "إذا كان يجب وضع الكيان على الأرض بشكل صحيح (مركبات فقط).",
		move_entity_command_substitutes = "نقل",

		fake_lag_command = "fake_lag",
		fake_lag_command_help = "ينشئ تأخيرًا وهميًا.",
		fake_lag_command_parameter_counter = "العداد",
		fake_lag_command_parameter_counter_help = "العداد المستخدم لإنشاء التأخير. كلما زادت قيمة هذا العداد، زادت بطئية التأخير. لإلغاء التأخير، اترك هذا الحقل فارغًا أو اكتب `0`.",
		fake_lag_command_substitutes = "تقليد",

		view_weapon_command = "عرض_سلاح",
		view_weapon_command_help = "ينشئ جسمًا ثلاثي الأبعاد بنموذج السلاح المحدد ويوضع في مكان مناسب للتقاط الصور.",
		view_weapon_command_parameter_weapon_name = "اسم السلاح",
		view_weapon_command_parameter_weapon_name_help = "اسم السلاح الذي تريد عرضه.",
		view_weapon_command_parameter_component_names = "أسماء المكونات",
		view_weapon_command_parameter_component_names_help = "قائمة بأسماء المكونات (مفصولة بفاصلة) التي تريد تثبيتها على السلاح.",
		view_weapon_command_substitutes = "رؤية",

		view_model_command = "view_model",
		view_model_command_help = "ينشئ عنصرًا بالاسم النموذجي الذي تحدده ويضعه في موضع مثالي للتقاط الصور.",
		view_model_command_parameter_model_name = "اسم النموذج",
		view_model_command_parameter_model_name_help = "اسم النموذج الذي تريد الاطلاع عليه.",
		view_model_command_substitutes = "",

		play_animation_command = "تشغيل_الرسوم_المتحركة",
		play_animation_command_help = "يشغل الرسوم المتحركة المحددة.",
		play_animation_command_parameter_animation_dict = "مجلد_الرسوم_المتحركة",
		play_animation_command_parameter_animation_dict_help = "مجلد الرسوم المتحركة للرسوم المتحركة التي تريد تشغيلها.",
		play_animation_command_parameter_animation_name = "اسم_الرسوم_المتحركة",
		play_animation_command_parameter_animation_name_help = "اسم الرسوم المتحركة للرسوم المتحركة التي تريد تشغيلها.",
		play_animation_command_parameter_flags = "علامات",
		play_animation_command_parameter_flags_help = "أعلام الرسوم المتحركة التي ترغب في تشغيلها.",
		play_animation_command_substitutes = "الرسوم المتحركة",

		draw_coords_command = "ارسم_الإحداثيات",
		draw_coords_command_help = "ارسم الإحداثيات في العالم.",
		draw_coords_command_parameter_x = "س",
		draw_coords_command_parameter_x_help = "إحداثي X.",
		draw_coords_command_parameter_y = "ص",
		draw_coords_command_parameter_y_help = "إحداثي Y.",
		draw_coords_command_parameter_z = "ع",
		draw_coords_command_parameter_z_help = "إحداثي Z.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "حذف_رسم_الإحداثيات",
		draw_coords_destroy_command_help = "يقوم بحذف جميع رسم الإحداثيات في العالم.",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "تصحيح_الضرر_المصاب",
		damage_debug_command_help = "تصحيح الضرر المصاب كل إطار في وحدة التحكم F8 الخاصة بك.",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "تصحيح_ipl",
		ipl_debug_command_help = "يقوم برسم جميع IPLs في العالم.",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "تمكين_ipl",
		enable_ipl_command_help = "يقوم بتمكين IPL معين.",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "الـ IPL الذي تريد تفعيله.",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "disable_ipl",
		disable_ipl_command_help = "يعطل IPL محدد.",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "الـ IPL الذي تريد تعطيله.",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "enable_ipl_globally",
		enable_ipl_globally_command_help = "يفعل IPL محدد لجميع اللاعبين على الخادم.",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "الـ IPL الذي تريد تفعيله.",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "قائمة_ipls_المفعلة_عالميًا",
		enabled_ipls_command_help = "يعرض جميع ipls المفعلة عالميًا.",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "تعطيل_ipl_عالميًا",
		disable_ipl_globally_command_help = "تعطيل IPL معين لجميع اللاعبين على الخادم.",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "IPL الذي تريد تعطيله.",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "صورة_شخصية",
		selfie_command_help = "تبديل كاميرا الصور الشخصية.",
		selfie_command_substitutes = "",

		search_world_command = "بحث_في_العالم",
		search_world_command_help = "البحث في العالم عن نماذج معينة.",
		search_world_command_parameter_model_name = "اسم النموذج",
		search_world_command_parameter_model_name_help = "الاسم الذي تريد البحث عنه.",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "save_valid_ped_component_variations",
		save_valid_ped_component_variations_command_help = "حفظ جميع الأشكال الصالحة لمكونات اللاعب الحالي.",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "toggle_vehicle_test",
		toggle_vehicle_test_command_help = "تبديل اختبار السيارة. (تتبع السرعة القصوى ، وما إلى ذلك.)",
		toggle_vehicle_test_command_substitutes = "test_vehicle, vehicle_test",

		create_vehicle_model_lists_command = "create_vehicle_model_lists",
		create_vehicle_model_lists_command_help = "إنشاء قوائم النماذج الخاصة بالمركبات، مصنفة حسب (المستخدمة) الأصلية و(غير المستخدمة) الأصلية و(الإضافة). ",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "draw_vehicle_nodes",
		draw_vehicle_nodes_command_help = "تبديل رسم مقاطع السيارات القريبة. ",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "distance",
		distance_command_help = "حساب المسافة بين نقطتين. ",
		distance_command_parameter_groundify = "groundify",
		distance_command_parameter_groundify_help = "يجعل النقطة على الأرض.",
		distance_command_substitutes = "dist",

		get_command = "احصل",
		get_command_help = "يطبع نتيجة الاستعلامات التي تحتوي على الكلمة المدخلة.",
		get_command_parameter_search = "بحث",
		get_command_parameter_search_help = "اسم الاستعلام أو جزء منه.",
		get_command_substitutes = "استعلام",

		ped_bone_command = "عظمة_شخصية",
		ped_bone_command_help = "تصحيح لعظم معين في شخصية.",
		ped_bone_command_parameter_bone_name = "اسم العظم",
		ped_bone_command_parameter_bone_name_help = "العظم الذي تريد تصحيحه.",
		ped_bone_command_substitutes = "",

		edit_marker_command = "تعديل_العلامة",
		edit_marker_command_help = "تحرير موقع علامة أو وضع علامة جديدة.",
		edit_marker_command_parameter_marker_name = "اسم العلامة",
		edit_marker_command_parameter_marker_name_help = "العلامة التي تريد تحريرها (اتركها فارغة لوضع علامة جديدة).",
		edit_marker_command_substitutes = "",

		rectangle_command = "مستطيل",
		rectangle_command_help = "إنشاء مستطيل في الفضاء ثلاثي الأبعاد.",
		rectangle_command_substitutes = "rect",

		-- game/debug_menu
		debug_menu_command = "قائمة التصحيح",
		debug_menu_command_help = "يفتح/يغلق قائمة الإصلاح.",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "take_dna_sample",
		take_dna_sample_command_help = "يأخذ عينة الحمض النووي (DNA) لأقرب لاعب.",
		take_dna_sample_command_substitutes = "dna_sample, dna",

		-- game/doors
		door_offset_command = "door_offset",
		door_offset_command_help = "يفتح/يغلق خاصية إعدادات الأبواب.",
		door_offset_command_parameter_model_name = "اسم النموذج",
		door_offset_command_parameter_model_name_help = "النموذج الذي تود إنشاء إعدادات أبواب له.",
		door_offset_command_substitutes = "",

		doors_scan_command = "أبواب_مسح",
		doors_scan_command_help = "البحث عن الأبواب القريبة وحفظها في ملف نصي.",
		doors_scan_command_parameter_clear_file = "مسح الملف",
		doors_scan_command_parameter_clear_file_help = "هل تريد مسح محتوى الملف قبل الكتابة عليه؟",
		doors_scan_command_parameter_save_distance = "حفظ المسافة",
		doors_scan_command_parameter_save_distance_help = "هل تريد حفظ المسافة إلى المداخل؟",
		doors_scan_command_substitutes = "الأبواب",

		door_debug_command = "تفاصيل_الأبواب",
		door_debug_command_help = "تصحيح معلومات بالنسبة للأبواب القريبة",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "يقوم بتشغيل أقرب مصعد.",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "يقوم بإيقاف أقرب مصعد.",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "يقوم بتشغيل جميع المصاعد.",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "بصمة",
		fingerprint_command_help = "التقاط بصمة الشخص الأقرب.",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "فشل_المحرك_فرصة",
		engine_failure_chance_command_help = "تعديل فرص فشل الطائرات الافتراضية.",
		engine_failure_chance_command_parameter_chance = "فرصة",
		engine_failure_chance_command_parameter_chance_help = "فرصة فشل المحرك أو استخدام الأمر فقط لإعادة التعيين.",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "هوية_مزيفة",
		fake_id_command_help = "إنتاج بطاقة هوية مزيفة.",
		fake_id_command_parameter_female = "أنثى",
		fake_id_command_parameter_female_help = "تعيين القيمة true إذا كنت تريد بطاقة مواطن أنثى بدلاً من ذكرى.",
		fake_id_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "انشاء_حقل_قوة",
		create_forcefield_command_help = "ينشئ حقل قوة في موقعك الحالي.",
		create_forcefield_command_parameter_radius = "نصف القطر",
		create_forcefield_command_parameter_radius_help = "نصف قطر حقل القوّة.",
		create_forcefield_command_parameter_deny_players = "منع اللاعبين",
		create_forcefield_command_parameter_deny_players_help = "هل يجب منع دخول اللاعبين إلى حقل القوّة؟",
		create_forcefield_command_substitutes = "حقل-قوة",

		destroy_forcefield_command = "تدمير-حقل-قوة",
		destroy_forcefield_command_help = "يقوم بتدمير حقل القوة المحدد.",
		destroy_forcefield_command_parameter_id = "معرف",
		destroy_forcefield_command_parameter_id_help = "معرف حقل القوة الذي تريد تدميره.",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "فورتنايت",
		fortnite_command_help = "تبديل خاصية بناء فورتنايت.",
		fortnite_command_substitutes = "فن",

		fortnite_debug_command = "تصحيح-فورتنايت",
		fortnite_debug_command_help = "تبديل مصحح بناء فورتنايت.",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "مسح_فورتنايت",
		fortnite_wipe_command_help = "مسح مباني فورتنايت",
		fortnite_wipe_command_parameter_radius = "نصف_القطر",
		fortnite_wipe_command_parameter_radius_help = "نصف القطر الذي تريد مسحه. إذا تركته فارغاً أو ضبطته على 0، فستتم عملية المسح لكل شيء.",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "فري_كام",
		freecam_command_help = "تبديل الكاميرا الحرة.",
		freecam_command_parameter_track = "تعقب",
		freecam_command_parameter_track_help = "تعقب شخصيتك باستخدام الكاميرا الحرة.",
		freecam_command_substitutes = "",

		cam_point_command = "نقطة_الكام",
		cam_point_command_help = "تسجيل نقطة للكاميرا.",
		cam_point_command_parameter_time = "الوقت",
		cam_point_command_parameter_time_help = "وقت الانتقال من النقطة السابقة بالملي ثانية (الحد الأدنى: 100 ، الحد الأقصى: 30,000).",
		cam_point_command_parameter_index = "الفهرس",
		cam_point_command_parameter_index_help = "فهرس النقطة التي ترغب في الذهاب إليها.",
		cam_point_command_parameter_override = "تجاوز",
		cam_point_command_parameter_override_help = "استبدال النقطة في ذلك الفهرس.",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "تفريغ جميع نقاط الكاميرا المعرفة مسبقاً.",
		cam_clear_command_substitutes = "",

		cam_play_command = "تشغيل_الكاميرا",
		cam_play_command_help = "تشغيل جميع نقاط الكاميرا المعينة.",
		cam_play_command_parameter_ease = "تموج",
		cam_play_command_parameter_ease_help = "التموج بين نقاط الكاميرا.",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "تفتيش",
		frisk_command_help = "تفتيش الشخص الأقرب له بحثاً عن الأسلحة.",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "تصحيح_شجرة",
		tree_debug_command_help = "تصحيح جميع الأشجار في العالم.",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "تصحيح_تجار_الأسلحة",
		gun_trader_debug_command_help = "رسم نص على موقع تجار الأسلحة الحالي.",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "تصحيح_الغاز",
		gas_debug_command_help = "تبديل تشغيل تصحيح الغاز.",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "هدف_الملاحة",
		gps_target_command_help = "يحدد هدف لجهاز الملاحة.",
		gps_target_command_parameter_x = "الإحداثيات_الأفقية",
		gps_target_command_parameter_x_help = "الإحداثيات الأفقية للهدف.",
		gps_target_command_parameter_y = "الإحداثيات_الرأسية",
		gps_target_command_parameter_y_help = "الإحداثيات الرأسية للهدف.",
		gps_target_command_substitutes = "هدف",

		-- game/graphics
		toggle_noir_command = "تبديل_نوار",
		toggle_noir_command_help = "تبديل تسجيل الفيديو والصوت.",
		toggle_noir_command_parameter_timecycle_id = "معرّف دورة الزمن",
		toggle_noir_command_parameter_timecycle_id_help = "معرّف دورة الزمن. هناك فقط اثنين.",
		toggle_noir_command_substitutes = "نوار",

		-- game/gravity
		toggle_vehicle_gravity_command = "تبديل ثقل المركبة",
		toggle_vehicle_gravity_command_help = "يعكس ثقل المركبة للاعب المحدد.",
		toggle_vehicle_gravity_command_parameter_server_id = "معرّف الخادم",
		toggle_vehicle_gravity_command_parameter_server_id_help = "معرّف الخادم للاعب الذي تريد تبديل ثقل المركبة الخاص به.",
		toggle_vehicle_gravity_command_substitutes = "vehicle_gravity, gravity",

		-- game/gravity_gun
		gravity_gun_command = "gravity_gun",
		gravity_gun_command_help = "توليد مسدس الجاذبية لك.",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "halloween_debug",
		halloween_debug_command_help = "تبديل تصحيح عطلة الهالوين.",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "halloween_start_escape_room",
		halloween_start_escape_room_command_help = "بدء غرفة هروب الهالوين بالقوة.",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "revive",
		revive_command_help = "إحياء شخص ميت.",
		revive_command_parameter_server_id = "رقم الخادم",
		revive_command_parameter_server_id_help = "رقم اللاعب الذي تريد إحيائه. يمكنك ترك هذا الحقل فارغًا أو تعيينه إلى الرقم 0 إذا كنت تريد إحياء نفسك. يمكنك أيضًا استخدام -1 لإحياء جميع اللاعبين.",
		revive_command_parameter_remove_injuries = "إزالة الإصابات",
		revive_command_parameter_remove_injuries_help = "عيّن أي قيمة ما عدا صفر أو false لإزالة جميع الإصابات.",
		revive_command_substitutes = "",

		range_revive_command = "مدى الإحياء",
		range_revive_command_help = "إحياء جميع اللاعبين في نطاق معين.",
		range_revive_command_parameter_distance = "المسافة",
		range_revive_command_parameter_distance_help = "المدى الذي تريد إحياء اللاعبين به (بين 1 و 200).",
		range_revive_command_substitutes = "نطاق_الإحياء",

		recent_deaths_command = "الموتى_الأخيرة",
		recent_deaths_command_help = "احصل على أحدث الوفيات.",
		recent_deaths_command_parameter_amount = "عدد",
		recent_deaths_command_parameter_amount_help = "عدد الوفيات التي تريد الحصول عليها. القيم الصالحة بين `1` و `100`. ترك هذا بدون تحديد سيحدد تلقائيًا `20`.",
		recent_deaths_command_substitutes = "تحقق_من_الوفيات",

		player_death_command = "تفاصيل_وفاة_اللاعب",
		player_death_command_help = "احصل على تفاصيل وفاة اللاعب.",
		player_death_command_parameter_server_id = "معرف اللاعب في الخادم",
		player_death_command_parameter_server_id_help = "معرف اللاعب في الخادم. ترك هذا الحقل فارغًا سيقوم بتحديد معرف الخادم التلقائي للاعب الخاص بك.",
		player_death_command_substitutes = "تحقق_من_وفاة",

		death_timer_command = "تغيير_وقت_انتظار_الوفاة",
		death_timer_command_help = "تغيير وقت الانتظار لإعادة الوفاة.",
		death_timer_command_parameter_time = "الوقت",
		death_timer_command_parameter_time_help = "الحد الزمني المطلوب بالثواني. لإلغاء الإعداد، أترك الخانة فارغة.",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "hitmarkers",
		hitmarkers_command_help = "تفعيل أو إيقاف صوت الإشارة عند الإصابة.",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "watermark",
		watermark_command_help = "تفعيل أو إيقاف عرض العلامة المائية في المنتصف العلوي.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "metrics_toggle",
		metrics_toggle_command_help = "تفعيل أو إيقاف عرض الإحصائيات في المنتصف العلوي.",
		metrics_toggle_command_substitutes = "metrics, metrics_display",

		toggle_small_metrics_command = "تبديل_عرض_المقاييس_الصغيرة",
		toggle_small_metrics_command_help = "تبديل عرض المقاييس الصغيرة (إذا تم تفعيل /metrics أيضًا).",
		toggle_small_metrics_command_substitutes = "المقاييس_الصغيرة",

		toggle_phone_gps_command = "تبديل_خريطة_الهاتف",
		toggle_phone_gps_command_help = "تبديل الخريطة الصغيرة التي تظهر عند فتح الهاتف أثناء المشي.",
		toggle_phone_gps_command_substitutes = "خريطة_الهاتف",

		toggle_advanced_hud_command = "تبديل_عرض_واجهة_مستخدم_السيارة_المتقدم",
		toggle_advanced_hud_command_help = "تبديل عرض واجهة مستخدم السيارة المتقدمة. (دورات المحرك، عدد السرعات، إلخ.)",
		toggle_advanced_hud_command_substitutes = "hud_متقدم",

		toggle_hud_gauges_command = "تبديل_قياسات_العرض_الرئيسي",
		toggle_hud_gauges_command_help = "تبديل قياسات العرض الرئيسي. (السرعة ودورات المحرك)",
		toggle_hud_gauges_command_substitutes = "قياسات_العرض_الرئيسي",

		set_gauge_needle_command = "تحديد_إبرة_قياس",
		set_gauge_needle_command_help = "تحديد نمط إبرة قياس العرض الرئيسي. (السرعة ودورات المحرك)",
		set_gauge_needle_command_parameter_needle = "إبرة",
		set_gauge_needle_command_parameter_needle_help = "نمط الإبرة (سهم/خط).",
		set_gauge_needle_command_substitutes = "مؤشر_القياس_إبرة",

		-- game/hunting
		animal_debug_command = "تصحيح_حيوانات",
		animal_debug_command_help = "تبديل تصحيح الحيوانات.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "تفتيش",
		inspect_command_help = "يفحص اللاعب الأقرب عن الإصابات.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "إنشاء_مثيل",
		instance_create_command_help = "إنشاء مثيل.",
		instance_create_command_substitutes = "i_create",

		instance_destroy_command = "تدمير_مثيل",
		instance_destroy_command_help = "يدمر مثيلًا.",
		instance_destroy_command_parameter_instance_id = "معرف_المثيل",
		instance_destroy_command_parameter_instance_id_help = "معرّف النسخة التي ترغب في تدميرها.",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "إضافة لاعب إلى نسخة.",
		instance_add_player_command_parameter_instance_id = "معرّف النسخة",
		instance_add_player_command_parameter_instance_id_help = "معرّف النسخة التي ترغب في إضافة اللاعب.",
		instance_add_player_command_parameter_server_id = "معرّف الخادم",
		instance_add_player_command_parameter_server_id_help = "معرّف الخادم للاعب الذي تريد إضافته إلى المثال. هذا الإجراء اختياري وسيتم اختيار حسابك في حال ترك حقل الإدخال فارغًا.",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "إزالة لاعب من المثال.",
		instance_remove_player_command_parameter_instance_id = "معرّف المثال",
		instance_remove_player_command_parameter_instance_id_help = "معرف المثال الذي تريد إزالة لاعب منه.",
		instance_remove_player_command_parameter_server_id = "مُعرّف الخادم",
		instance_remove_player_command_parameter_server_id_help = "مُعرّف الخادم للاعب الذي ترغب في إزالته من النسخة. هذا الباراميتر اختياري وسيتم اختيار نفسك تلقائياً إذا تُرك فارغاً.",
		instance_remove_player_command_substitutes = "i_remove",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "الحصول على جميع اللاعبين داخل النسخة.",
		instance_get_players_command_parameter_instance_id = "مُعرّف النسخة",
		instance_get_players_command_parameter_instance_id_help = "رقم المثيل الذي تريد الحصول على اللاعبين منه.",
		instance_get_players_command_substitutes = "i_players",

		quick_instance_command = "quick_instance",
		quick_instance_command_help = "إنشاء مثيل وإضافتك وقائمة من اللاعبين إليه.",
		quick_instance_command_parameter_server_ids = "معرفات الخادم",
		quick_instance_command_parameter_server_ids_help = "قائمة مفصولة بفواصل من معرفات الخادم التي تريد إضافتها إلى المثيل.",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interior_debug",
		interior_debug_command_help = "قم بتبديل نص التصحيحات الداخلية.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "draw_interiors",
		draw_interiors_command_help = "تبديل رسم الكائنات الداخلية.",
		draw_interiors_command_substitutes = "interiors",

		draw_interior_portals_command = "draw_interior_portals",
		draw_interior_portals_command_help = "تبديل رسم مداخل الداخلية.",
		draw_interior_portals_command_substitutes = "interior_portals, portals",

		random_interior_command = "random_interior",
		random_interior_command_help = "الانتقال إلى مدخل داخلي عشوائي.",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "الصندوق الخلفي",
		trunk_command_help = "محاولة الوصول إلى جراب الأمتعة القريب.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "مسح مخزون الأرض",
		wipe_ground_inventories_command_help = "مسح مخزون الأرض.",
		wipe_ground_inventories_command_parameter_radius = "نصف القطر",
		wipe_ground_inventories_command_parameter_radius_help = "نصف القطر المراد المسح. ترك هذا الحقل فارغًا سيقوم بتحديد `100` تلقائيًا. القيم الصحيحة تبدأ من `0` إلى ` -1`  وتشمل `1` فأعلى و `0` و `-1` لتحديد كافة المخازن.",
		wipe_ground_inventories_command_substitutes = "مسح_مستودعات_الأرض, مسح_مخازن_الأرض",

		refresh_inventory_command = "تحديث_المخزون",
		refresh_inventory_command_help = "تحديث المخزون بالقوة للمستودع المعين.",
		refresh_inventory_command_parameter_inventory_name = "اسم المستودع",
		refresh_inventory_command_parameter_inventory_name_help = "المستودع الذي تريد تحديثه.",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "تبديل_المخزون_الكبير",
		toggle_big_inventory_command_help = "زيادة المساحة المؤقتة لـ 250 خانة في المخزون.",
		toggle_big_inventory_command_substitutes = "big_inventory",

		item_lookup_command = "lookup_item",
		item_lookup_command_help = "البحث عن عنصر باستخدام معرفه",
		item_lookup_command_parameter_item_id = "معرف العنصر",
		item_lookup_command_parameter_item_id_help = "معرف العنصر الذي تريد البحث عنه.",
		item_lookup_command_substitutes = "عنصر",

		-- game/items
		clear_map_command = "مسح_الخريطة",
		clear_map_command_help = "يمسح الموقع المخزن لخريطة",
		clear_map_command_parameter_slot = "الفتحة",
		clear_map_command_parameter_slot_help = "فتحه الخزنة التي توجد بها الخريطة",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "السحب_الكبير",
		jackpot_command_help = "تبديل واجهة مستخدم الجائزة الكبرى.",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "استخراج رسوم من جميع مخزونات الجائزة الكبرى.",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "locate_entity",
		locate_entity_command_help = "تحديد موقع كيان معين على الخريطة.",
		locate_entity_command_parameter_filter = "تصفية",
		locate_entity_command_parameter_filter_help = "ما هو تصفية الكيان المطابق (المعرف: 12345 ، اللوحة: 90FMK072 ، إلخ.)",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "قم بتبديل تفعيل تصحيح مشاكل الغنائم.",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "سحب اليانصيب",
		lottery_command_help = "احصل على حالة اليانصيب الحالية.",
		lottery_command_substitutes = "",

		claim_lottery_command = "إستلام الجوائز في اليانصيب",
		claim_lottery_command_help = "استلام جوائز اليانصيب الخاصة بك.",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "دوران اليانصيب يدويًا",
		roll_lottery_command_help = "دردشة المشرفين وادخال الأرقام ودوران اليانصيب يدويًا.",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "تحديث المجلات",
		refresh_magazines_command_help = "تحديث المجلات وفقًا لأي تغييرات في قاعدة البيانات.",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "نظام توثيق المركبات",
		mdt_command_help = "تبديل واجهة استخدام MDT.",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "يفحص ما إذا كانت السيارة القريبة لديها ترقية المحرك 5.",
		check_vehicle_upgrades_command_substitutes = "check_upgrades، upgrades",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "تبديل تعديل المناجم.",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "language",
		language_command_help = "تعيين اللغة المفضلة لديك. هذا التغيير سيحفظ للجلسات المستقبلية، وهو فوري التغيير.",
		language_command_parameter_language = "رمز اللغة",
		language_command_parameter_language_help = "رمز اللغة التي ترغب في تفعيلها. لمعرفة لغتك الحالية وجميع اللغات الأخرى المتاحة ، اكتب /languages. للغة الافتراضية ، اترك هذا الوسيط فارغًا.",
		language_command_substitutes = "لغة",

		languages_command = "اللغات",
		languages_command_help = "تحقق من لغتك الحالية وجميع اللغات الأخرى المتاحة.",
		languages_command_substitutes = "لغات",

		ping_command = "ping",
		ping_command_help = "احصل على تأخير الاتصال الحالي الخاص بك إلى الخادم.",
		ping_command_substitutes = "",

		ooc_command = "وضع خارج الشخصية",
		ooc_command_help = "بث رسالة خارج الشخصية لجميع اللاعبين في الخادم.",
		ooc_command_parameter_message = "رسالة وضع خارج الشخصية",
		ooc_command_parameter_message_help = "الرسالة التي ترغب في إرسالها.",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "بث رسالة خارج الشخصية للاعبين القريبين.",
		ooc_local_command_parameter_message = "رسالة وضع خارج الشخصية",
		ooc_local_command_parameter_message_help = "الرسالة التي ترغب في إرسالها.",
		ooc_local_command_substitutes = "لوك، اووكل، اووكلوكال",

		ooc_on_command = "ooc_on",
		ooc_on_command_help = "تمكين المحادثة الخارجية إذا كانت معطلة.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_off",
		ooc_off_command_help = "تعطيل المحادثة الخارجية إذا كانت ممكّنة.",
		ooc_off_command_substitutes = "",

		copy_license_command = "copy_license",
		copy_license_command_help = "ينسخ معرّف ترخيص Rockstar الخاص بك إلى الحافظة. (تستخدمها الفريق لتحديد هويتك)",
		copy_license_command_substitutes = "",

		clear_chat_command = "clear_chat",
		clear_chat_command_help = "امسح الدردشة.",
		clear_chat_command_substitutes = "cls، مسح",

		clear_chat_all_command = "مسح_المحادثة_للجميع",
		clear_chat_all_command_help = "يمسح المحادثة للجميع.",
		clear_chat_all_command_substitutes = "clsall, clearall",

		mute_command = "كتم",
		mute_command_help = "يقوم بكتم لاعب من المحادثة العامة وأمر البلاغات.",
		mute_command_parameter_server_id = "server id",
		mute_command_parameter_server_id_help = "هوية اللاعب الذي تريد كتم أصواته.",
		mute_command_parameter_expire = "انتهاء الوقت",
		mute_command_parameter_expire_help = "طول فترة الكتم المرادة. يمكنك ترك هذا الحقل فارغًا، مع قيمة `0` أو  `false` لكتم غير محدد المدة. يمكنك استخدام الحروف التالية لتحديد الوقت بالأيام، الساعات، الدقائق والثواني: d/h/m/s. (مثال: `3d2h` -> 3 أيام، 2 ساعات).",
		mute_command_parameter_reason = "السبب",
		mute_command_parameter_reason_help = "السبب وراء كتم اللاعب.",
		mute_command_substitutes = "",

		unmute_command = "إلغاء الكتم عن اللاعب",
		unmute_command_help = "إلغاء كتم اللاعب من الدردشة الخارجية وأمر البلاغات.",
		unmute_command_parameter_server_id = "معرّف الخادم",
		unmute_command_parameter_server_id_help = "معرّف الخادم للاعب الذي تريد إلغاء كتمه.",
		unmute_command_substitutes = "",

		use_measurement_command = "استخدام الوحدات",
		use_measurement_command_help = "تجاوز النظام المفضل للوحدات في التطبيق.",
		use_measurement_command_parameter_measurement = "الوحدة",
		use_measurement_command_parameter_measurement_help = "نظام القياس الذي تود استخدامه. القيم المقبولة هي `النظام الإمبراطوري` و `النظام المتري`. يمكنك ترك هذا المعامل فارغًا أو ملئه بقيمة غير صالحة لاستخدام الإعدادات الافتراضية.",
		use_measurement_command_substitutes = "measurement, meas",

		no_copyright_command = "no_copyright",
		no_copyright_command_help = "هذا الأمر سيعطّل جميع الأصوات المحتملة المحمية بحقوق النشر التي تأتي من الإطار عند تمكينه.",
		no_copyright_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "احصل على TPS الخادم الحالي.",
		tps_command_substitutes = "",

		uptime_command = "التشغيل",
		uptime_command_help = "فحص وقت تشغيل السيرفر.",
		uptime_command_substitutes = "",

		-- game/money
		cash_command = "النقد",
		cash_command_help = "عرض رصيدك النقدي.",
		cash_command_substitutes = "",

		bank_command = "البنك",
		bank_command_help = "عرض رصيدك البنكي.",
		bank_command_substitutes = "",

		give_cash_command = "إعطاء_نقد",
		give_cash_command_help = "إعطاء مبلغ معين من النقود للاعب الآخر.",
		give_cash_command_parameter_server_id = "رقم السيرفر",
		give_cash_command_parameter_server_id_help = "رقم السيرفر للاعب الذي تريد إعطائه النقود.",
		give_cash_command_parameter_amount = "المبلغ",
		give_cash_command_parameter_amount_help = "مقدار النقود التي تريد إعطائها للاعب.",
		give_cash_command_substitutes = "",

		bill_player_command = "bill_player",
		bill_player_command_help = "فوترة مبلغ معين من المال لاعب آخر.",
		bill_player_command_parameter_server_id = "معرف الخادم",
		bill_player_command_parameter_server_id_help = "معرف الخادم للاعب الذي تريد إرسال الفاتورة إليه.",
		bill_player_command_parameter_amount = "المبلغ",
		bill_player_command_parameter_amount_help = "مقدار النقود التي تريد فوترتها للاعب.",
		bill_player_command_substitutes = "bill",

		-- game/notepads
		notepad_command = "مفكرة",
		notepad_command_help = "تفعيل / إيقاف مفكرة اليد.",
		notepad_command_substitutes = "",

		notepad_debug_command = "تصحيح_المفكرة",
		notepad_debug_command_help = "يظهر جميع معرفات المفكرة القريبة.",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "معلومات_المفكرة",
		notepad_info_command_help = "يوفر معلومات حول مفكرة معينة.",
		notepad_info_command_parameter_notepad_id = "معرف المفكرة",
		notepad_info_command_parameter_notepad_id_help = "معرف المفكرة التي تريد الحصول على معلومات حولها.",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "محو_المفكرات",
		wipe_notepads_command_help = "تمسح جميع الدفاتر الملاحظات في نطاق معيّن.",
		wipe_notepads_command_parameter_radius = "نطاق",
		wipe_notepads_command_parameter_radius_help = "نطاق محيد تريد مسح الدفاتر الملاحظات فيه (الحد الأقصى = 100).",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "توقيع_دفتر_الملاحظات",
		sign_notepad_command_help = "يوقع دفتر يحتوي على ملاحظات (يضع اسمك في الأسفل ويمنع التعديل في المستقبل)",
		sign_notepad_command_parameter_slot = "فتحة",
		sign_notepad_command_parameter_slot_help = "فتحة التخزين التي يوجد بها دفتر الملاحظات.",
		sign_notepad_command_substitutes = "توقيع",

		-- game/notices
		add_notice_command = "add_notice",
		add_notice_command_help = "يضيف رسالة عائمة في موقعك الحالي.",
		add_notice_command_parameter_message = "الرسالة",
		add_notice_command_parameter_message_help = "الرسالة التي تريد إضافتها.",
		add_notice_command_substitutes = "",

		remove_notice_command = "remove_notice",
		remove_notice_command_help = "يزيل رسالة معينة تمت إضافتها من خلال /add_notice.",
		remove_notice_command_parameter_message_id = "معرف الرسالة",
		remove_notice_command_parameter_message_id_help = "معرف الرسالة التي تريد إزالتها.",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "امر_فحص_اﻻشياء_المتجمدة",
		frozen_objects_scan_command_help = "فحص الأشياء المتجمدة التي تحمل نموذج هاش وكتابتها في ملف على الخادم.",
		frozen_objects_scan_command_parameter_model_name = "اسم النموذج",
		frozen_objects_scan_command_parameter_model_name_help = "اسم النموذج للكائن الذي ترغب في فحصه.",
		frozen_objects_scan_command_substitutes = "الاشياء_المتجمدة",

		-- game/orbitcam
		orbitcam_command = "امر_التحكم_بالكاميرا",
		orbitcam_command_help = "تبديل وضع التحكم بالكاميرا.",
		orbitcam_command_substitutes = "التحكم_بالكاميرا",

		-- game/overview
		overview_command = "نظرة عامة",
		overview_command_help = "تبديل واجهة نظرة عامة. واجهة نظرة عامة هي قائمة تفاعلية بين اللاعبين في الخارج من اللعبة، ومركز معلومات ومشاهد داتا.",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "تعليم الأوكسجين",
		oxy_tutorial_command_help = "تشغيل دليل تعليمي للأوكسجين في الوقت القادم تبدأ فيه جولة.",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "لوحة التحكم",
		panel_command_help = "عرض لوحة تحكم مصغرة تتيح لك مشاهدة ملاحظات اللاعبين وإضافة محتويات جديدة.",
		panel_command_parameter_server_id = "معرف الخادم",
		panel_command_parameter_server_id_help = "معرف اللاعب الخاص بالخادم الذي تريد مشاهدة لوحة التحكم الخاصة به (يجب أن يكون على الإنترنت أو قطع الاتصال مؤخرًا).",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "يقوم",
		me_command_help = "صف ما يقوم به شخصيتك.",
		me_command_parameter_message = "الرسالة",
		me_command_parameter_message_help = "الرسالة التي تود إرسالها لوصف الإجراءات التي يقوم بها شخصيتك.",
		me_command_substitutes = "",

		do_command = "يفعل",
		do_command_help = "تصور بشكل أفضل مشهد اللعب الحي.",
		do_command_parameter_message = "الرسالة",
		do_command_parameter_message_help = "الرسالة التي تود إرسالها لمساعدة التصور الحي لمشهد اللعب.",
		do_command_substitutes = "",

		description_command = "الوصف",
		description_command_help = "إرفاق رسالة بشخصيتك لوصف ملامحها.",
		description_command_parameter_message = "الرسالة",
		description_command_parameter_message_help = "الرسالة التي تريد إرفاقها بـالشخصيات الخاصة بك.",
		description_command_substitutes = "",

		attempt_command = "محاولة",
		attempt_command_help = "محاولة شيء ما بنسبة نجاح 50%.",
		attempt_command_parameter_message = "الرسالة",
		attempt_command_parameter_message_help = "رسالة عن ما تحاول القيام به.",
		attempt_command_substitutes = "",

		dice_command = "زمن",
		dice_command_help = "قم بلعب لعبة الزمن.",
		dice_command_substitutes = "",

		roll_command = "القرعة",
		roll_command_help = "البدء في لعبة القرعة المعقدة والمتقدمة مع إعدادات مخصصة.",
		roll_command_parameter_rolls = "عدد القرعات",
		roll_command_parameter_rolls_help = "عدد القرعات التي تريد القيام بها. أنت محدود بـ 20 قرعة.",
		roll_command_parameter_max = "الحد الأقصى",
		roll_command_parameter_max_help = "أعلى قيمة يمكنك الحصول عليها في جولة واحدة. أعلى قيمة هنا هي 100،000.",
		roll_command_substitutes = "",

		card_command = "الورقة",
		card_command_help = "ارسم بطاقة عشوائية.",
		card_command_substitutes = "",

		ped_messages_command = "رسائل المشاة",
		ped_messages_command_help = "تبديل بين عرض أو عدم عرض رسائل المشاة في الدردشة.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "إنشاء شخصية",
		ped_spawn_command_help = "يقوم بإنشاء NPC.",
		ped_spawn_command_parameter_model = "النموذج",
		ped_spawn_command_parameter_model_help = "نوع النموذج الذي تريد إنشاءه.",
		ped_spawn_command_parameter_weapon = "سلاح",
		ped_spawn_command_parameter_weapon_help = "أي سلاح تريد أن يحمل NPC (اختياري، \"false\" للتخطي).",
		ped_spawn_command_parameter_fearless = "لا يخشى",
		ped_spawn_command_parameter_fearless_help = "هل يجب على الNPC أن يخاف من الأسلحة إلخ. (الافتراضي: لا).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "مهمة NPC",
		ped_task_command_help = "يعين مهمة لأشخاصك الذين تم توليدهم.",
		ped_task_command_parameter_task = "المهمة",
		ped_task_command_parameter_task_help = "المهمة التي يجب على أشخاصك الذين تم توليدهم القيام بها.",
		ped_task_command_parameter_target = "الهدف",
		ped_task_command_parameter_target_help = "معرف الخادم الذي يجب على أشخاصك الذين تم توليدهم استهدافه (اختياري).",
		ped_task_command_substitutes = "",

		ped_emote_command = "emote_أشخاصك الذين تم توليدهم",
		ped_emote_command_help = "يجعل أشخاصك الذين تم توليدهم يعرضون حركة معينة.",
		ped_emote_command_parameter_emote = "الحركة",
		ped_emote_command_parameter_emote_help = "الحركة التي يجب على أشخاصك الذين تم توليدهم عرضها.",
		ped_emote_command_substitutes = "",

		ped_remove_command = "حذف_المشاة",
		ped_remove_command_help = "تزيل جميع المشاة التي قمت بإنشائها.",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "قائمة_حركات_المشاة",
		list_ped_emotes_command_help = "يعرض قائمة بجميع حركات المشاة المتاحة.",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "قائمة_مهام_المشاة",
		list_ped_tasks_command_help = "يعرض قائمة بجميع مهام المشاة المتاحة.",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "سرقة_مشاة",
		ped_steal_command_help = "يسرق المشاة الخاصة بشخص ما.",
		ped_steal_command_parameter_server_id = "رقم_الخادم",
		ped_steal_command_parameter_server_id_help = "رقم اللاعب المتعلق بالخادم.",
		ped_steal_command_substitutes = "سرقة_البيد",

		-- game/ped_takeover
		takeover_ped_command = "استيلاء_على_البيد",
		takeover_ped_command_help = "يجعلك تتحكم في بيد معين.",
		takeover_ped_command_parameter_network_id = "معرّف الشبكة",
		takeover_ped_command_parameter_network_id_help = "معرّف شبكة البيد الذي تريد السيطرة عليه.",
		takeover_ped_command_substitutes = "الاستيلاء",

		-- game/ped_tasks
		ped_debug_command = "تصحيح_البيد",
		ped_debug_command_help = "تصحيح معلومات حول البيد.",
		ped_debug_command_parameter_network_id = "معرّف الشبكة",
		ped_debug_command_parameter_network_id_help = "معرّف شبكة البيد.",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "تغيير_رقم_الهاتف",
		custom_phone_number_command_help = "قم بتغيير رقم هاتفك.",
		custom_phone_number_command_parameter_phone_number = "رقم الهاتف",
		custom_phone_number_command_parameter_phone_number_help = "الرقم الذي تريد تغييره إليه. تأكد من أنه يتبع التنسيق XXX-XXXX.",
		custom_phone_number_command_substitutes = "custom_number",

		phone_number_available_command = "التحقق_من_توافر_رقم_الهاتف",
		phone_number_available_command_help = "تحقق من توافر رقم الهاتف.",
		phone_number_available_command_parameter_phone_number = "رقم الهاتف",
		phone_number_available_command_parameter_phone_number_help = "الرقم الذي ترغب في التحقق ما إذا كان متاحًا. تأكد من اتباع صيغة XXX-XXXX.",
		phone_number_available_command_substitutes = "الرقم_المتاح",

		-- game/player_control
		drive_for_command = "قود_بدلا_من",
		drive_for_command_help = "قود سيارة اللاعب بدلاً منه.",
		drive_for_command_parameter_server_id = "رقم الملقم",
		drive_for_command_parameter_server_id_help = "رقم خادم اللاعب الذي تريد التحكم بسيارته.",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "تعيين_مقياس_اللاعب",
		set_player_scale_command_help = "تعيين مقياس اللاعب.",
		set_player_scale_command_parameter_scale = "المقياس",
		set_player_scale_command_parameter_scale_help = "المقاس الذي تريد تعيينه للشخص.",
		set_player_scale_command_parameter_server_id = "معرف الخادم",
		set_player_scale_command_parameter_server_id_help = "معرف الخادم الذي تريد تعيين المقياس له. ترك هذا الحقل فارغاً يختار اللاعب نفسه.",
		set_player_scale_command_substitutes = "مقياس_اللاعب, تعيين_حجم_اللاعب, حجم_اللاعب",

		-- game/player_stats
		player_stats_command = "معلومات_اللاعب",
		player_stats_command_help = "تبديل ميزة معلومات اللاعب.",
		player_stats_command_parameter_render_range = "نطاق_العرض",
		player_stats_command_parameter_render_range_help = "تغيير نطاق العرض للاعبين. الافتراضي هو 200.",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "إزاحة_رقص_القطب",
		pole_dancing_offset_command_help = "تبديل أداة التصحيح لإزاحة رقص القطب.",
		pole_dancing_offset_command_parameter_model_name = "اسم_النموذج",
		pole_dancing_offset_command_parameter_model_name_help = "اسم النموذج الذي تريد إجراء التعديل عليه.",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "تصحيح_الخصائص",
		properties_debug_command_help = "تبديل تصحيح الخصائص.",
		properties_debug_command_substitutes = "الخصائص",

		-- game/props
		props_manage_command = "إدارة_المتعلقات",
		props_manage_command_help = "إدارة المتعلقات القريبة.",
		props_manage_command_substitutes = "إدارة_المتعلقات, م.م",

		spawn_prop_command = "توليد_المتعلق",
		spawn_prop_command_help = "توليد متعلق.",
		spawn_prop_command_parameter_model_hash = "النموذج",
		spawn_prop_command_parameter_model_hash_help = "نموذج المتعلق الذي تريد التوليد به.",
		spawn_prop_command_parameter_network = "الشبكة",
		spawn_prop_command_parameter_network_help = "هل ترغب في توصيل الـPROP بالشبكة؟ نوصي بتمكين هذه الميزة فقط للـPROP القابل للحركة.",
		spawn_prop_command_parameter_no_pickup = "عدم الالتقاط",
		spawn_prop_command_parameter_no_pickup_help = "هل يجب أن يتم الالتقاط من قبل المشرفين الرئيسيين فقط؟",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "ظهور الـPROP بالتحديد",
		spawn_exact_prop_command_help = "ظهور PROP في موقعك بالتحديد.",
		spawn_exact_prop_command_parameter_model_name = "اسم الموديل",
		spawn_exact_prop_command_parameter_model_name_help = "اسم النموذج الذي تريد أن تظهره.",
		spawn_exact_prop_command_parameter_ground = "الأرض",
		spawn_exact_prop_command_parameter_ground_help = "إذا كان النموذج يجب أن يظهر على الأرض أم لا.",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "تصحيح الموديلات",
		props_debug_command_help = "تصحيح جميع النماذج المحيطة بك.",
		props_debug_command_substitutes = "",

		delete_prop_command = "حذف نموذج",
		delete_prop_command_help = "يحذف نموذجًا محددًا باستخدام معرّف النموذج.",
		delete_prop_command_parameter_prop_id = "معرّف النموذج",
		delete_prop_command_parameter_prop_id_help = "معرف العنصر الذي تحاول حذفه.",
		delete_prop_command_substitutes = "",

		wipe_props_command = "مسح_العناصر",
		wipe_props_command_help = "يقوم بمسح العناصر حولك.",
		wipe_props_command_parameter_radius = "نصف_القطر",
		wipe_props_command_parameter_radius_help = "نطاق المسح (1-250).",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "الراديو",
		radio_command_help = "لتبديل واجهة راديو.",
		radio_command_substitutes = "",

		radio_debug_command = "تصحيح_الراديو",
		radio_debug_command_help = "لتبديل واجهة تصحيح الراديو.",
		radio_debug_command_substitutes = "",

		frequency_command = "التردد",
		frequency_command_help = "لتعيين التردد الخاص بالراديو.",
		frequency_command_parameter_frequency = "التردد",
		frequency_command_parameter_frequency_help = "التردد الذي ترغب في الانتقال إليه.",
		frequency_command_substitutes = "التردد",

		force_frequency_command = "force_frequency",
		force_frequency_command_help = "الانضمام إلى تردد إذا لم يكن لديك جهاز اتصالات أو إذا لم تكن في الخدمة.",
		force_frequency_command_parameter_frequency = "التردد",
		force_frequency_command_parameter_frequency_help = "التردد الذي ترغب في الانتقال إليه.",
		force_frequency_command_substitutes = "",

		random_frequency_command = "تردد_عشوائي",
		random_frequency_command_help = "يضبط الراديو الخاص بك على تردد عشوائي.",
		random_frequency_command_substitutes = "random_freq, rfreq",

		radio_sounds_command = "radio_sounds",
		radio_sounds_command_help = "يعدل صوت الراديو وتأثيراته.",
		radio_sounds_command_parameter_volume = "مستوى الصوت",
		radio_sounds_command_parameter_volume_help = "مستوى الصوت لتأثيرات الراديو. يجب أن يكون القيمة بين 0 و 1. القيمة الافتراضية هي 0.1. ترك هذا الحقل فارغًا سيعيد مستوى الصوت الحالي.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volume",
		radio_volume_command_help = "تعديل مستوى الصوت للراديو.",
		radio_volume_command_parameter_volume = "مستوى الصوت",
		radio_volume_command_parameter_volume_help = "مستوى الصوت للراديو. يجب أن يكون القيمة بين 0 و 1. الوضع الافتراضي هو 0.5. ترك هذا الحقل فارغًا سيعيد مستوى الصوت الحالي.",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "علاقات_تصحيح_الأخطاء",
		relationships_debug_command_help = "تبديل تصحيح الأخطاء لعلاقات الـPed.",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "تغيير_المظهر",
		reskin_command_help = "تغيير مظهر اللاعب.",
		reskin_command_parameter_server_id = "معرّف الخادم",
		reskin_command_parameter_server_id_help = "معرّف الخادم الخاص باللاعب الذي تريد تغيير مظهره. اتركه فارغًا للاختيار التلقائي لنفسك.",
		reskin_command_substitutes = "",

		redeem_reskin_command = "استبدال_المظهر",
		redeem_reskin_command_help = "استرداد مظهر تم شراؤه.",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "وضع_الشغب",
		toggle_riot_mode_command_help = "تبديل وضع الشغب لجميع اللاعبين.",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "إضافة_لاعب_إلى_قائمة_الشغب",
		add_riot_player_command_help = "إضافة لاعب إلى قائمة 'قائمة الشغب' والتي ستتعرض لهجوم أشخاص روتينيين.",
		add_riot_player_command_parameter_server_id = "معرّف الخادم",
		add_riot_player_command_parameter_server_id_help = "معرّف الخادم الذي تريد إضافة اللاعب إليه. اترك هذا الحقل فارغًا لتحديد نفسك أوتوماتيكياً.",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "إزالة لاعب من \"قائمة الشغب\".",
		remove_riot_player_command_parameter_server_id = "معرّف الخادم",
		remove_riot_player_command_parameter_server_id_help = "معرّف الخادم الذي تريد إزالة اللاعب منه. اترك هذا الحقل فارغًا لتحديد نفسك أوتوماتيكياً.",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "تشغيل_النظام",
		metagame_command_help = "تبديل عرض مستمر لمعرفات اللاعبين في الخادم.",
		metagame_command_substitutes = "تنشيط_النظام, ن",

		-- game/security_cameras
		security_cameras_command = "كاميرات_الامن",
		security_cameras_command_help = "تبديل كاميرات الأمن.",
		security_cameras_command_substitutes = "كاميرات_الحماية, أمن, أم_كام, كاميرات_الأمن, كاميرات_الحماية, كاميرات_أمن, كاميرات_الأم_المراقبة, كاميرات_المراقبة_الأمنية, كاميرات_المراقبة_الحماية",

		security_cameras_scan_command = "مسح_كاميرات_الامن",
		security_cameras_scan_command_help = "الحصول على جميع كائنات كاميرات الأمن المعروفة وتخزينها في ملف نصي.",
		security_cameras_scan_command_substitutes = "فحص, فحص_الكاميرات, فحص_كاميرات",

		security_cameras_health_command = "صحة_الكاميرات_الأمنية",
		security_cameras_health_command_help = "تبديل أداة تشخيص صحة كاميرات الأمن.",
		security_cameras_health_command_substitutes = "صحة_الكاميرات",

		-- game/shield
		shield_command = "درع",
		shield_command_help = "تبديل الدرع الواقي للرصاص.",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "انشاء_موجة_صدمة",
		create_shockwave_command_help = "إنشاء موجة صدمة في موقعك الحالي.",
		create_shockwave_command_parameter_force = "القوة",
		create_shockwave_command_parameter_force_help = "قوة الصدمة التي تحدثها الصدمة (1 - 1000).",
		create_shockwave_command_parameter_radius = "النصف القطر",
		create_shockwave_command_parameter_radius_help = "نصف قطر الصدمة (1 - 100).",
		create_shockwave_command_substitutes = "صدمة",

		-- game/shrooms
		draw_shroom_areas_command = "رسم_مناطق_الفطر",
		draw_shroom_areas_command_help = "رسم كل مناطق الفطر وإضافة المزيد.",
		draw_shroom_areas_command_substitutes = "مناطق_الفطر",

		-- game/spying
		search_for_devices_command = "البحث_عن_الأجهزة",
		search_for_devices_command_help = "البحث عن الأجهزة القريبة.",
		search_for_devices_command_substitutes = "بحث_عن_الأجهزة، بحثأجهزة، s4d",

		-- game/spectating
		spectate_command = "مشاهدة",
		spectate_command_help = "مشاهدة لاعب معين.",
		spectate_command_parameter_server_id = "معرف الخادم",
		spectate_command_parameter_server_id_help = "معرف الخادم للعبة الذي ترغب في مشاهدته.",
		spectate_command_substitutes = "مشاهدة_مباشرة",

		-- game/status
		status_reset_command = "إعادة ضبط_الحالة",
		status_reset_command_help = "إعادة ضبط مستويات الحالة.",
		status_reset_command_parameter_server_id = "معرّف الخادم",
		status_reset_command_parameter_server_id_help = "معرّف اللاعب الذي تريد إعادة تعيين الحالة له. إذا تركته فارغاً، سيتم اختيارك تلقائياً.",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "تفعيل/تعطيل_الحالة",
		toggle_status_command_help = "يعطل (أو يمكّن) بعض الحالات مثل الجوع، العطش والإجهاد.",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "تعيين_درع_الجسم",
		set_body_armor_command_help = "تعيين مستوى درع جسم شخص ما.",
		set_body_armor_command_parameter_server_id = "رقم الخادم",
		set_body_armor_command_parameter_server_id_help = "رقم خادم اللاعب الذي تريد تعيين مستوى درع الجسم له. يمكنك ترك هذا الحقل فارغًا أو جعله يساوي  `0`  لتحديد نفسك. يمكنك أيضًا جعله يساوي `-1` لتعيين مستوى درع الجسم للجميع.",
		set_body_armor_command_parameter_body_armor_level = "مستوى درع الجسم",
		set_body_armor_command_parameter_body_armor_level_help = "المستوى الذي تريد تعيينه لدرع الجسم. يمكن أن يكون هذا الرقم في نطاق من `0` إلى `100`. إذا تم ترك هذا الحقل فارغًا أو إذا كان الرقم غير صالح ، سيتم ضبطه على القيمة الافتراضية `100`.",
		set_body_armor_command_substitutes = "درع_الجسم, درع",

		-- game/streamer_mode
		toggle_streamer_mode_command = "تبديل_وضع_المذيع",
		toggle_streamer_mode_command_help = "تبديل وضع المذيع. سيمنع هذا اللاعبين من عرض الوجوه الايحائية '18+' عند وجودك بالقرب منهم وزيادة الخصوصية.",
		toggle_streamer_mode_command_substitutes = "وضع_المذيع, مذيع",

		-- game/sync
		time_hour_command = "ساعة_الوقت",
		time_hour_command_help = "تحديد ساعة الساعة الحالية.",
		time_hour_command_parameter_hour = "الساعة",
		time_hour_command_parameter_hour_help = "الساعة التي تريد تعيينها للساعة. يجب أن تكون القيمة بين 0 و 23.",
		time_hour_command_parameter_transition = "تداول",
		time_hour_command_parameter_transition_help = "إذا كان يجب تغيير الوقت بانتقال سلس (نعم / لا ، الافتراضي هو لا).",
		time_hour_command_substitutes = "ساعة",

		time_minute_command = "time_minute",
		time_minute_command_help = "تعيين الدقيقة الحالية للساعة.",
		time_minute_command_parameter_minute = "دقيقة",
		time_minute_command_parameter_minute_help = "الدقيقة التي ترغب في تعيين الساعة عليها. يجب أن تكون القيمة بين 0 و 59.",
		time_minute_command_substitutes = "دقيقة",

		local_time_command = "الوقت_المحلي",
		local_time_command_help = "يقوم بتعيين الوقت فقط لك.",
		local_time_command_parameter_time = "الوقت",
		local_time_command_parameter_time_help = "الوقت الذي تريد تعيينه على ساعتك المحلية، القيمة يجب أن تكون بين 0:00 و 23:59.",
		local_time_command_substitutes = "",

		local_weather_command = "الطقس_المحلي",
		local_weather_command_help = "يقوم بتعيين الطقس فقط لك.",
		local_weather_command_parameter_weather = "الطقس",
		local_weather_command_parameter_weather_help = "الطقس الذي تريد تعيينه المحلياً، يتطابق القيم بين هذا الأمر والأمر /weather.",
		local_weather_command_substitutes = "",

		brighter_nights_command = "أضواء_مشرقة",
		brighter_nights_command_help = "يضبط الوقت على الساعة 12:00 ظهرًا والطقس على 'extra sunny'، لكن هذا ينطبق فقط عليك.",
		brighter_nights_command_substitutes = "",

		weather_command = "الطقس",
		weather_command_help = "يغير الطقس.",
		weather_command_parameter_weather = "اسم الطقس",
		weather_command_parameter_weather_help = "اسم الطقس الذي ترغب في تعيينه. تحقق من الأسماء الصحيحة وهي EXTRASUNNY و CLEAR و CLOUDS و SMOG و FOGGY و OVERCAST و RAIN و THUNDER و CLEARING و NEUTRAL و SNOW و BLIZZARD و SNOWLIGHT و XMAS و HALLOWEEN.",
		weather_command_substitutes = "",

		advance_weather_command = "الطقس_التقدم",
		advance_weather_command_help = "التقدم بشكل طبيعي إلى الطقس التالي.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "تجمد_الوقت",
		freeze_time_command_help = "تبديل تجمد الوقت (متوفر/غير متوفر).",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "تجمد_الطقس",
		freeze_weather_command_help = "تبديل تجمد الطقس (متوفر/غير متوفر).",
		freeze_weather_command_substitutes = "",

		blackout_command = "انقطاع_الكهرباء",
		blackout_command_help = "تبديل انقطاع الكهرباء(متوفر/غير متوفر).",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "جهاز_اللوحي",
		tablet_command_help = "فتح واجهة جهاز اللوحي (إن وجد).",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "set_vehicle_preset",
		set_vehicle_preset_command_help = "يطور المركبة التي أنت فيها حاليًا بالكامل ويطبق الألوان باستخدام الإعداد المحدد.",
		set_vehicle_preset_command_parameter_preset = "preset",
		set_vehicle_preset_command_parameter_preset_help = "الإعداد اللوني الذي تريد تطبيقه (أحمر، أزرق، أخضر، أصفر، برتقالي، أبيض، أسود).",
		set_vehicle_preset_command_substitutes = "vehicle_preset",

		detach_all_doors_command = "detach_all_doors",
		detach_all_doors_command_help = "يفصل جميع الأبواب عن المركبة التي أنت فيها حاليًا.",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "فجر_جميع_الإطارات",
		pop_all_tires_command_help = "يفجر جميع الإطارات للمركبة التي تستقلها حاليًا.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "ترقية_المركبة_بالكامل",
		upgrade_vehicle_fully_command_help = "يقوم بترقية المركبة التي تستقلها بالكامل.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "تلوين_عشوائي_للمركبة",
		random_vehicle_colors_command_help = "يقوم بتغيير ألوان المركبة التي تستقلها بشكل عشوائي.",
		random_vehicle_colors_command_parameter_lights = "الأنوار",
		random_vehicle_colors_command_parameter_lights_help = "إذا كان يجب عشوائية الإضاءة (الزينون والنيون).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "جوع",
		starve_command_help = "يضبط مستوى الطعام والعطش على 0.",
		starve_command_substitutes = "",

		car_command = "سيارة",
		car_command_help = "يظهر سيارة عشوائية.",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "ضبط_سرعة_الوقت",
		set_time_scale_command_help = "يعيد إعداد سرعة الوقت في الخادم.",
		set_time_scale_command_parameter_time_scale = "سرعة الوقت",
		set_time_scale_command_parameter_time_scale_help = "السرعة التي تريد ضبطها. يجب أن تكون القيمة بين 0 و 1.",
		set_time_scale_command_substitutes = "ضبط_خانة_الوقت, slow_motion",

		-- game/titanic
		create_titanic_command = "انشاء_تايتنك",
		create_titanic_command_help = "انشاء سفينة تايتنك الغارقة.",
		create_titanic_command_parameter_sink_time = "وقت_الغرق",
		create_titanic_command_parameter_sink_time_help = "عدد الدقائق التي يستغرقها الغوص قبل أن تختفي السفينة تمامًا.",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "نظرة_عامة",
		top_down_command_help = "تبديل نظرة عامة للمنظر الأعلى.",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "تعقب",
		tracker_command_help = "تبديل رؤية جهاز التعقب.",
		tracker_command_substitutes = "",

		trackers_split_command = "تقسيم_تعقب",
		trackers_split_command_help = "التبديل بين وضع تخزين أجهزة التعقب في فئة على الخريطة وتقسيمها.",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "تفعيل / إيقاف تصحيح الأخطاء للقطارات",
		trains_debug_command_help = "تبديل تحديث تصحيح الأخطاء للقطارات.",
		trains_debug_command_substitutes = "",

		spawn_train_command = "إنشاء قطار",
		spawn_train_command_help = "إنشاء قطار.",
		spawn_train_command_parameter_track_id = "رقم المسار",
		spawn_train_command_parameter_track_id_help = "المسار الذي تريد إنشاء القطار فيه. (1 إلى 12)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "إنشاء قطعة خريطة كنز",
		spawn_map_piece_command_help = "إنشاء قطعة من خريطة الكنز.",
		spawn_map_piece_command_parameter_map_tier = "درجة خريطة الكنز",
		spawn_map_piece_command_parameter_map_tier_help = "الدرجة التي تريد إنشاء قطعة الخريطة لها.",
		spawn_map_piece_command_parameter_piece_number = "رقم القطعة",
		spawn_map_piece_command_parameter_piece_number_help = "رقم القطعة التي تريد أن تظهرها.",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "تعيين_معدل_المحيط",
		set_ocean_scaler_command_help = "تعديل تأثير المقياس العالمي للمحيط.",
		set_ocean_scaler_command_parameter_intensity = "الكثافة",
		set_ocean_scaler_command_parameter_intensity_help = "الكثافة التي ترغب في تعيينها.",
		set_ocean_scaler_command_substitutes = "معدل_المحيط،تعيين_شدة_الموج،شدة_الموج",

		-- game/vdm
		vdm_command = "تصادم",
		vdm_command_help = "يجعل NPC المحدد يحاول تصادم الهدف.",
		vdm_command_parameter_target = "الهدف",
		vdm_command_parameter_target_help = "معرّف الخادم للاعب المستهدف.",
		vdm_command_parameter_network_id = "معرّف الشبكة",
		vdm_command_parameter_network_id_help = "معرّف الشبكة المحلي (أو عربته).",
		vdm_command_substitutes = "",

		vdm_clear_command = "تصفية_التصادم",
		vdm_clear_command_help = "يقوم بمسح جميع أهداف التصادم الخاصة بك.",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "تصحيح_الصوت",
		voice_debug_command_help = "قم بتبديل ميزة تصحيح الصوت.",
		voice_debug_command_parameter_server_id = "معرف الخادم",
		voice_debug_command_parameter_server_id_help = "إذا كنت تريد تبديل حالة 'تصحيح الصوت' لشخص آخر ، فأدخل معرف الخادم الخاص به هنا.",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "تصحيح_مناطق_الصوت_المكتومة",
		muted_areas_debug_command_help = "يقوم برسم جميع مناطق الصوت المكتومة.",
		muted_areas_debug_command_substitutes = "مناطق_الصوت_المكتومة",

		listen_command = "الاستماع",
		listen_command_help = "يقوم بتبديل وضع الاستماع لمستخدم معين. (يمكنك الاستماع لما يقولونه)",
		listen_command_parameter_server_id = "معرف الخادم",
		listen_command_parameter_server_id_help = "المستخدم الذي تريد الاستماع إليه.",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "تبديل_كتم_الصوت",
		toggle_voice_mute_command_help = "يكتم أو يفتح كتم الصوت عن شخص ما في الدردشة الصوتية.",
		toggle_voice_mute_command_parameter_server_id = "معرّف الخادم",
		toggle_voice_mute_command_parameter_server_id_help = "المستخدم الذي تريد كتم/إلغاء كتم صوته.",
		toggle_voice_mute_command_substitutes = "كتم_الصوت",

		-- game/wizard
		wizard_command = "ساحر",
		wizard_command_help = "يفتح قائمة ساحر التخصيص.",
		wizard_command_parameter_server_id = "معرّف الخادم",
		wizard_command_parameter_server_id_help = "اختر لاعبًا معينًا في القائمة (اختياري).",
		wizard_command_substitutes = "",

		ragdoll_player_command = "ragdoll_player",
		ragdoll_player_command_help = "يجعل اللاعب يسقط على الأرض.",
		ragdoll_player_command_parameter_server_id = "معرّف الخادم",
		ragdoll_player_command_parameter_server_id_help = "معرّف الخادم لللاعب الذي تريد جعله يسقط على الأرض.",
		ragdoll_player_command_parameter_force = "القوة",
		ragdoll_player_command_parameter_force_help = "تطبيق قوة عشوائية على اللاعب بعد جعله يسقط على الأرض.",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "امر إستلقاء_عشوائي",
		ragdoll_radius_command_help = "يجعل كل لاعب ضمن نطاق محدد يسقط عشوائيًا.",
		ragdoll_radius_command_parameter_radius = "النطاق",
		ragdoll_radius_command_parameter_radius_help = "النطاق الذي يجب على اللاعبين السقوط عشوائيًا فيه.",
		ragdoll_radius_command_parameter_force = "القوة",
		ragdoll_radius_command_parameter_force_help = "تطبيق القوة العشوائية على اللاعب بعد جعله يسقط عشوائيًا.",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "امر ضرب_عشوائي",
		punch_radius_command_help = "يجعل كل لاعب ضمن نطاق محدد يضرب عشوائيًا.",
		punch_radius_command_parameter_radius = "نصف القطر",
		punch_radius_command_parameter_radius_help = "نصف القطر الذي يجب على اللاعبين اللكم عشوائياً داخله.",
		punch_radius_command_substitutes = "",

		flashbang_command = "قنبلة ومضية",
		flashbang_command_help = "تطلق قنبلة ومضية على لاعب معين.",
		flashbang_command_parameter_server_id = "معرف اللاعب في السيرفر",
		flashbang_command_parameter_server_id_help = "معرف اللاعب المستهدف في السيرفر.",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "قنبلة ومضية نصف القطر",
		flashbang_radius_command_help = "تطلق قنبلة ومضية على كل لاعب داخل نصف القطر المحدد.",
		flashbang_radius_command_parameter_radius = "نصف القطر",
		flashbang_radius_command_parameter_radius_help = "نصف القطر الذي يتم به إصابة اللاعبين بالإنفجار الضوئي.",
		flashbang_radius_command_parameter_include_self = "تضمين الذات",
		flashbang_radius_command_parameter_include_self_help = "تمكين انفجار ضوئي لنفسك كذلك",
		flashbang_radius_command_substitutes = "",

		punch_command = "لكمة",
		punch_command_help = "إجبار لاعب معين على لكمة عشوائياً.",
		punch_command_parameter_server_id = "معرّف الخادم",
		punch_command_parameter_server_id_help = "معرّف الخادم للاعب الهدف.",
		punch_command_substitutes = "",

		explode_command = "تفجير_اللاعب",
		explode_command_help = "تفجير لاعب معين",
		explode_command_parameter_server_id = "معرف الخادم",
		explode_command_parameter_server_id_help = "معرف الخادم للاعب المستهدف.",
		explode_command_substitutes = "",

		ignite_player_command = "اشعال_لاعب",
		ignite_player_command_help = "إشعال النار في اللاعب لفترة قصيرة.",
		ignite_player_command_parameter_server_id = "معرف الخادم",
		ignite_player_command_parameter_server_id_help = "معرف الخادم للاعب المستهدف.",
		ignite_player_command_substitutes = "اشعال، حريق",

		run_command_as_command = "تشغيل_الأمر_كـ",
		run_command_as_command_help = "يجعل لاعباً آخر ينفذ أمرًا.",
		run_command_as_command_parameter_server_id = "معرف الخادم",
		run_command_as_command_parameter_server_id_help = "معرف الخادم للاعب الهدف.",
		run_command_as_command_parameter_command = "الأمر",
		run_command_as_command_parameter_command_help = "الأمر الذي تريد جعل اللاعب ينفذه.",
		run_command_as_command_substitutes = "التشغيل كـ, سودو",

		ped_reverse_command = "عكس_الأجسام",
		ped_reverse_command_help = "يجعل أقرب راكب في سيارة يعكس الاتجاه.",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "تقدم",
		ped_forwards_command_help = "يجعل أقرب بيد في سيارة يقود إلى الأمام.",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "تصحيح_الجهات_المحلية",
		local_entities_debug_command_help = "تبديل تصحيح الجهات المحلية.",
		local_entities_debug_command_substitutes = "الجهات",

		no_ped_population_areas_debug_command = "تصحيح_مناطق_عدم_إنتاج_البيد",
		no_ped_population_areas_debug_command_help = "تبديل تصحيح 'مناطق عدم إنتاج البيد'.",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "إنشاء_انفجار",
		create_explosion_command_help = "أنشئ انفجارًا.",
		create_explosion_command_parameter_explosion_type = "نوع الانفجار",
		create_explosion_command_parameter_explosion_type_help = "نوع الانفجار.",
		create_explosion_command_parameter_damage_scale = "مقياس الأضرار",
		create_explosion_command_parameter_damage_scale_help = "مقياس الأضرار.",
		create_explosion_command_parameter_camera_shake = "هزة الكاميرا",
		create_explosion_command_parameter_camera_shake_help = "هزة الكاميرا.",
		create_explosion_command_substitutes = "exp, explode, explosion",

		-- global/functions
		confirm_yes_command = "نعم",
		confirm_yes_command_help = "تأكيد الإجراء الحالي.",
		confirm_yes_command_substitutes = "تأكيد",

		confirm_no_command = "لا",
		confirm_no_command_help = "إلغاء الإجراء الحالي.",
		confirm_no_command_substitutes = "إلغاء, إحباط",

		-- global/states
		entity_states_command = "حالات_الكيانات",
		entity_states_command_help = "يطبع جميع حالات الكيان المعين.",
		entity_states_command_parameter_network_id = "هوية الشبكة",
		entity_states_command_parameter_network_id_help = "هوية الشبكة للكيان.",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "زاوية",
		corner_command_help = "بيع المخدرات لشخص مجاور. الدواء الذي تبيعه يعتمد على الموقع الذي تتواجد فيه.",
		corner_command_substitutes = "",

		corner_debug_command = "تصحيح زاوية",
		corner_debug_command_help = "عرض جميع مناطق البيع.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "مسح الواجهات",
		clear_uis_command_help = "مسح كل تركيزات واجهات المستخدم.",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "واجهات التركيز",
		interface_focuses_command_help = "التحقق من الواجهات التي تم تعيينها باعتبارها مركز التركيز.",
		interface_focuses_command_substitutes = "واجهة التركيز, تركيز, تركيزات",

		--jobs/duty
		toggle_duty_status_command = "تبديل_حالة_المهام",
		toggle_duty_status_command_help = "يقوم بتبديل حالة الخدمة.",
		toggle_duty_status_command_parameter_server_id = "معرف الخادم",
		toggle_duty_status_command_parameter_server_id_help = "جهة الهدف لمعرف الخادم أو تركها فارغة إذا كنت ترغب في تبديل حالة خدمتك الخاصة.",
		toggle_duty_status_command_substitutes = "حالة_المهام، مهام",

		toggle_training_command = "تبديل_التدريب",
		toggle_training_command_help = "يقوم بتبديل حالة التدريب.",
		toggle_training_command_substitutes = "التدريب",

		toggle_operator_status_command = "تبديل_حالة_المشغل",
		toggle_operator_status_command_help = "تبديل حالتك كمشغل طوارئ. باستخدام هذا الخيار، سوف تحصل على اختيار قبول مكالمات الطوارئ 911.",
		toggle_operator_status_command_substitutes = "مشغل، تبديل_المشغل، حالة_المشغل",

		-- jobs/police
		aim_assist_command = "مساعدة_التصويب",
		aim_assist_command_help = "تبديل مساعدة التصويب لدى الشرطة. (تكريمًا لـ Nathan Spencer.)",
		aim_assist_command_substitutes = "",

		undercover_command = "تحت_الغطاء",
		undercover_command_help = "تبديل ما إذا كنت متخفياً أم لا. سوف يخفي هذا الخيار الأشياء المختلفة التي قد تفضح وضعك كشرطة.",
		undercover_command_substitutes = "",

		active_robberies_command = "السطوات_النشطة",
		active_robberies_command_help = "يعرض جميع المحلات والبنوك ومتاجر المجوهرات التي ما زالت مفتوحة وجاري السطو عليها.",
		active_robberies_command_substitutes = "",

		pd_impound_command = "مصادرة_الشرطة",
		pd_impound_command_help = "يقوم هذا الأمر بمصادرة سيارة اللاعب لفترة محددة من الوقت.",
		pd_impound_command_parameter_minutes = "دقائق",
		pd_impound_command_parameter_minutes_help = "مدة احتجاز السيارة (بين دقيقة و 12 ساعة).",
		pd_impound_command_substitutes = "",

		dispatch_command = "الإرسالية",
		dispatch_command_help = "يمكن للرسائل التي ترسل عن طريق هذا الأمر الوصول إلى قسم الشرطة.",
		dispatch_command_parameter_message = "الرسالة",
		dispatch_command_parameter_message_help = "الرسالة التي تريد إرسالها.",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "police_drive_mode",
		police_drive_mode_command_help = "تبديل وضعية القيادة في سيارتك الشرطية.",
		police_drive_mode_command_parameter_mode = "الوضعية",
		police_drive_mode_command_parameter_mode_help = "الوضعية التي ترغب في تعيينها. \"D\" للقيادة و \"S\" الرياضية (الرياضية هي الإعداد الافتراضي).",
		police_drive_mode_command_substitutes = "drive_mode",

		-- jobs/state
		license_give_command = "license_give",
		license_give_command_help = "منح ترخيص.",
		license_give_command_parameter_character_id = "معرف الشخصية",
		license_give_command_parameter_character_id_help = "معرف الشخصية التي ترغب في منح الترخيص لها.",
		license_give_command_parameter_license = "الترخيص",
		license_give_command_parameter_license_help = "الترخيص الذي ترغب في منحه. يمكنك استعراض التراخيص المتاحة باستخدام '/license_list'.",
		license_give_command_substitutes = "إعطاء_رخصة, أضف_رخصة",

		license_remove_command = "إزالة_رخصة",
		license_remove_command_help = "إزالة رخصة.",
		license_remove_command_parameter_character_id = "معرّف_الشخصية",
		license_remove_command_parameter_character_id_help = "معرّف الشخصية التي ترغب في إزالة الرخصة منها.",
		license_remove_command_parameter_license = "الرخصة",
		license_remove_command_parameter_license_help = "الرخصة التي ترغب في إزالتها. يمكنك عرض الرخص المتاحة باستخدام `/license_list`.",
		license_remove_command_substitutes = "إزالة_الرخصة",

		license_list_command = "قائمة_الرخص",
		license_list_command_help = "تعرض جميع الرخص المتاحة.",
		license_list_command_substitutes = "قائمة_الرخص, قائمة_التصاريح",

		licenses_check_command = "فحص_الرخص",
		licenses_check_command_help = "فحص رخص شخص ما.",
		licenses_check_command_parameter_character_id = "رقم_الشخصية",
		licenses_check_command_parameter_character_id_help = "رقم شخصية الشخص الذي تريد فحص الرخص الخاصة به.",
		licenses_check_command_substitutes = "فحص_التصاريح, فحص_الرخص, التصاريح_الفحص",

		licenses_command = "التراخيص",
		licenses_command_help = "احصل على تراخيصك.",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "تبديل_رسائل_الفني",
		toggle_mechanic_messages_command_help = "يقوم بتبديل تلقيك لرسائل الفني.",
		toggle_mechanic_messages_command_substitutes = "رسائل_الفني",

		-- vehicles/boats
		toggle_anchor_command = "تبديل_المرساة",
		toggle_anchor_command_help = "يقوم بتبديل مرساة القارب القريب.",
		toggle_anchor_command_substitutes = "المرساة",

		-- vehicles/damage
		vehicle_damage_debug_command = "تفحص_تلف_السيارة",
		vehicle_damage_debug_command_help = "يقوم بتصحيح الأضرار الحالية للمركبة.",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "تعيين مستوى الوقود في المركبة التي تستخدمها.",
		set_fuel_command_parameter_fuel_level = "مستوى الوقود",
		set_fuel_command_parameter_fuel_level_help = "المستوى الذي تريد تعيينه لمستوى الوقود. يتم ترك هذا الحقل فارغًا بشكل افتراضي ويختار `100`.",
		set_fuel_command_substitutes = "وقود",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "تبديل تصحيح الأخطاء في الكراج.",
		toggle_garage_debug_command_substitutes = "تفعيل_تصحيح_الأخطاء_في_الكراج",

		-- vehicles/keys
		give_key_command = "اعطاء_المفتاح",
		give_key_command_help = "اعطاء مفتاح للمركبة للشخص القريب.",
		give_key_command_parameter_server_id = "رقم_الخادم",
		give_key_command_parameter_server_id_help = "رقم الخادم للشخص الذي تريد اعطاء المفتاح له. يمكن ترك هذا الحقل فارغاً او يتم وضع 0 لإعطاء المفتاح للشخص القريب.",
		give_key_command_substitutes = "اعطاء_مفتاح",

		hotwire_vehicle_command = "شحن_المركبة",
		hotwire_vehicle_command_help = "شحن السيارة التي تقودها مباشرةً.",
		hotwire_vehicle_command_substitutes = "تشغيل",

		pickup_keys_command = "امسك_المفاتيح",
		pickup_keys_command_help = "يجعلك تلتقط مفاتيح السيارة الأقرب.",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "تعديل_عجلة",
		wheel_offset_command_help = "تعديل إزاحة عجلات السيارة.",
		wheel_offset_command_parameter_wheels = "أمام/خلف",
		wheel_offset_command_parameter_wheels_help = "أي الإطارات ترغب في تعديلها؟",
		wheel_offset_command_parameter_value = "القيمة",
		wheel_offset_command_parameter_value_help = "المبلغ الذي تريد تعديله. يمكن أن يكون أي مكان من -0.15 إلى 0.15 ، حيث تكون 0 هي القيمة الافتراضية.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "تدوير_العجلات",
		wheel_rotation_command_help = "تعديل دوران عجلات السيارة.",
		wheel_rotation_command_parameter_wheels = "أمامية/خلفية",
		wheel_rotation_command_parameter_wheels_help = "أي العجلات تريد تعديلها؟",
		wheel_rotation_command_parameter_value = "القيمة",
		wheel_rotation_command_parameter_value_help = "المقدار الذي ترغب في تعديله، يمكن أن يكون أين من -0.5 إلى 0.5، 0 يكون المقدار الافتراضي.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "لوحة_مزورة",
		fake_plate_command_help = "تبديل لوحة المزورة للسيارة الحالية.",
		fake_plate_command_substitutes = "",

		plate_available_command = "plate_available",
		plate_available_command_help = "تحقق من توفر رقم لوحة لأمر `/custom_plate`.",
		plate_available_command_parameter_plate_number = "رقم اللوحة",
		plate_available_command_parameter_plate_number_help = "الرقم الذي ترغب في التحقق من توفره. يمكن أن يتكون رقم اللوحة فقط من الحروف الكبيرة والأرقام ويصل طوله إلى 8 أحرف.",
		plate_available_command_substitutes = "",

		custom_plate_command = "custom_plate",
		custom_plate_command_help = "تعيين لوحة مخصصة لأحد مركباتك.",
		custom_plate_command_parameter_vehicle_id = "مُعرّف المركبة",
		custom_plate_command_parameter_vehicle_id_help = "هوية المركبة التي تريد وضع لوحتها المُخصّصة عليها. (يمكنك العثور على هذه الهوية في موقف السيارات الخاص بك)",
		custom_plate_command_parameter_plate_number = "رقم اللوحة",
		custom_plate_command_parameter_plate_number_help = "الرقم الذي تريد تعيينه للوحة. يمكن أن يحتوي رقم اللوحة على حروف كبيرة وأرقام، ولا يمكن أن يتجاوز طوله ال8 أحرف.",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "تبديل وضع IFR (عرض المساعدة في الهبوط على المدرجات القريبة).",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "كتم_الصفارات",
		mute_sirens_command_help = "يكتم جميع الصفارات والأبواق.",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "اقلب",
		flip_command_help = "يقلب أي سيارة مقلوبة.",
		flip_command_substitutes = "",

		toggle_roll_control_command = "تبديل_التحكم_الهوائي",
		toggle_roll_control_command_help = "تبديل التحكم الهوائي والدوران.",
		toggle_roll_control_command_substitutes = "تحكم_الدوران",

		enable_ls_customs_command = "تفعيل_مرآب_LS",
		enable_ls_customs_command_help = "تفعيل قائمة مرآب LS.",
		enable_ls_customs_command_substitutes = "مرآب_LS",

		toggle_gear_animation_command = "تبديل_رسم_التحويلات",
		toggle_gear_animation_command_help = "يقوم بتبديل رسم تحويلات السرعة في السيارة والأصوات المصاحبة.",
		toggle_gear_animation_command_substitutes = "تصميم_تحويلات_السرعة, أصوات_التحويلات",

		turtle_vehicle_command = "انقلاب_السيارة",
		turtle_vehicle_command_help = "قلب السيارة على سقفها.",
		turtle_vehicle_command_substitutes = "سلحفاة",

		door_command = "الباب",
		door_command_help = "يقوم بفتح وإغلاق الأبواب في السيارة.",
		door_command_parameter_door_id = "معرف الباب (1-6)",
		door_command_parameter_door_id_help = "أي باب في السيارة ترغب في فتحه؟ سيتم إعادة كتابة هذا المعلم إذا كنت راكبًا. يمكنك أيضًا استخدام هذا الأمر خارج السيارة.",
		door_command_substitutes = "",

		window_command = "نافذة",
		window_command_help = "تبديل نافذة السيارة.",
		window_command_parameter_window_id = "معرف النافذة (1-4)",
		window_command_parameter_window_id_help = "أي نافذة في السيارة ترغب في فتحها؟ سيتم إعادة كتابة هذا المعلم إذا كنت راكبًا.",
		window_command_substitutes = "",

		shuffle_command = "اختلال",
		shuffle_command_help = "التبديل إلى مقعد آخر في السيارة.",
		shuffle_command_substitutes = "shuff",

		seat_command = "seat",
		seat_command_help = "الانتقال إلى مقعد آخر في السيارة.",
		seat_command_parameter_seat_id = "رقم المقعد (1-6)",
		seat_command_parameter_seat_id_help = "إلى أي مقعد ترغب في الانتقال؟",
		seat_command_substitutes = "",

		engine_command = "engine",
		engine_command_help = "تبديل تشغيل محرك السيارة.",
		engine_command_substitutes = "",

		mileage_command = "mileage",
		mileage_command_help = "فحص عداد المسافات للسيارة.",
		mileage_command_substitutes = "",

		drag_out_command = "drag_out",
		drag_out_command_help = "سحب أقرب لاعب ميت خارج السيارة التي يجلس بها.",
		drag_out_command_substitutes = "",

		toggle_disabled_brakes_command = "toggle_disabled_brakes",
		toggle_disabled_brakes_command_help = "يعطّل أو يفعل فِرام أقرب سيارة.",
		toggle_disabled_brakes_command_substitutes = "disable_brakes",

		manual_toggle_command = "manual_toggle",
		manual_toggle_command_help = "يقوم بالتبديل إذا كنت تريد التحكّم يدوياً بتروس السيارات أم لا.",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "speed_limiter",
		speed_limiter_command_parameter_speed = "السرعة",
		speed_limiter_command_parameter_speed_help = "أيّ سرعة تريد استخدامها في تحديد حدّ السرعة؟ يمكنك ترك هذا الحقل فارغاً لإعادته، وستعود الأمور إلى الوضع العادي.",
		speed_limiter_command_help = "تجاوز سلوك المحدد للسرعة الافتراضي لتحديد حد السرعة مسبقًا",
		speed_limiter_command_substitutes = "sl، cc، cruise_control",

		add_vehicle_command = "add_vehicle",
		add_vehicle_command_help = "أضف مركبة إلى كراج شخص ما.",
		add_vehicle_command_parameter_model = "النموذج",
		add_vehicle_command_parameter_model_help = "اسم النموذج أو تجزئة النموذج للمركبة التي ترغب في إضافتها.",
		add_vehicle_command_parameter_server_id = "هوية الخادم",
		add_vehicle_command_parameter_server_id_help = "معرّف الخادم الخاص بلاعب الذي تريد منح مركبة له. ترك هذا الحقل فارغًا سيتم اختيارك تلقائيًا.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "تبديل_اسلحة_المركبات",
		toggle_vehicle_weapons_command_help = "تبديل تفعيل أو تعطيل الأسلحة الموجودة على المركبة.",
		toggle_vehicle_weapons_command_parameter_server_id = "معرف_الخادم",
		toggle_vehicle_weapons_command_parameter_server_id_help = "معرّف اللاعب الذي ترغب بتبديل حالة أسلحة المركبة بالنسبة له. ترك هذا الحقل فارغًا سيحدد حالة نفسك.",
		toggle_vehicle_weapons_command_substitutes = "اسلحة_المركبات",

		wheelie_command = "عجلة",
		wheelie_command_help = "تبديل وضع العجلات الأمامية للمركبة. (اضغط على shift أثناء القيادة)",
		wheelie_command_parameter_power_level = "مستوى القوة",
		wheelie_command_parameter_power_level_help = "مدى قوة الدفع (الإفتراضي هو 2.5، قلل الرقم إذا كانت الدراجة ترفع رفعة شديدة، وزد الرقم إذا كانت الرفعة ضعيفة).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_number",
		vin_number_command_help = "يعيد VIN السيارة التي تُسيّرها.",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_lookup",
		vin_lookup_command_help = "يبحث عن VIN لمركبة معينة.",
		vin_lookup_command_parameter_vin_number = "رقم VIN",
		vin_lookup_command_parameter_vin_number_help = "رقم ال VIN الذي تريد البحث عنه.",
		vin_lookup_command_substitutes = "بحث_vin، lv",

		-- weapons/ammo
		fill_ammo_command = "املأ_الذخيرة",
		fill_ammo_command_help = "يملأ ذخيرة كل الأسلحة الخاصة بك.",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "شعار النقطة المركزية",
		crosshair_command_help = "يقوم بتبديل شعار النقطة المركزية على الشاشة.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "تصويب للأسفل",
		aim_down_sight_command_help = "تصويب للأسفل تلقائيًا عند النقر بالزر الأيمن حتى إذا كنت في وضع الشخص الثالث.",
		aim_down_sight_command_substitutes = "تصويب_للأسفل",

		-- weapons/weapons
		check_ammo_command = "فحص_الذخيرة",
		check_ammo_command_help = "يفحص مقدار الذخيرة الخاصة بالسلاح الذي تحمله حاليا",
		check_ammo_command_substitutes = "ذخيرة",

		toggle_airsoft_mode_command_command = "تغيير_وضع_الأيرسوفت",
		toggle_airsoft_mode_command_command_help = "يغيير وضع الأيرسوفت (على مستوى الخادم)، والذي يجعل كل الاسلحة تسبب قدرة ضرر منخفضة جداً",
		toggle_airsoft_mode_command_command_substitutes = "وضع_الأيرسوفت, أيرسوفت",

		toggle_folded_stock_command_command = "تبديل_المخزن_القابل_للطي",
		toggle_folded_stock_command_command_help = "تغيير حالة السلاح الذي تحمله إما إلى مطوي أو غير مطوي.",
		toggle_folded_stock_command_command_substitutes = "folded_stock, stock"
	},

	connections = {
		your_account_is_connecting = "حسابك قيد الاتصال من جلسة جديدة."
	},

	controls = {
		menu_control_up = "التحكم في القائمة: لأعلى",
		menu_control_down = "التحكم في القائمة: لأسفل",
		menu_control_left = "التحكم في القائمة: لليسار",
		menu_control_right = "التحكم في القائمة: لليمين",

		menu_control_up_alternative = "التحكم البديل في القائمة: لأعلى",
		menu_control_down_alternative = "التحكم البديل في القائمة: لأسفل",
		menu_control_left_alternative = "القائمة البديلة اليسارية",
		menu_control_right_alternative = "القائمة البديلة اليمنى"
	},

	core = {
		version = "الإصدار"
	},

	discord = {
		one_player = "شخص واحد",
		multiple_players = "${playerAmount} لاعبين",
		join_with_fivem = "الانضمام باستخدام فيفم",
		discord_guild = "خادم الديسكورد",
		richer_presence_on = "تم تفعيل الحالة الأكثر تحدثًا.",
		richer_presence_off = "تم تعطيل الحالة الأكثر تحدثًا."
	},

	emojis = {
		emoji_list = "${emojis} قائمة الرموز التعبيرية",
		refresh_emojis_no_permissions = "حاول اللاعب تحديث الرموز التعبيرية دون الأذونات المناسبة.",
		api_reported_no_updates = "لم تتلق الراية الآلية أي تحديثات في قائمة الإيموجي.",
		emojis_added = "تمت إضافة ${added} إيموجي(ات).",
		emojis_removed = "تمت إزالة ${removed} إيموجي(ات).",
		emojis_updated = "تمت إضافة ${added} إيموجي(ات) وإزالة ${removed} إيموجي(ات)."
	},

	errors = {
		script_location = "مكان السكربت",
		additional_information = "معلومات إضافية",
		error_report = "تقرير الخطأ",
		send_report = "إرسال التقرير",
		abort_report = "إيقاف التقرير",
		input_placeholder = "يرجى إبلاغنا بما كنت تفعله عندما تم تشغيل هذا الخطأ...",
		oh_no = "أوه لا،",
		an_error_has_occurred = "حدث خطأ!",
		error_occured_information = "هذا يشير إلى أن هناك شيء لا يعمل بشكل صحيح أو كما هو مخطط له. نرجو منكم مساعدتنا في حل هذه المشكلة عن طريق تقديم بعض التفاصيل الإضافية بشأن ما كنتم تقومون به عندما تم تشغيل هذا الخطأ."
	},

	ping = {
		get_pings_missing_permissions = "حاول اللاعب الحصول على التنبيهات ولكنه لم يكن لديه الصلاحيات اللازمة للقيام بذلك.",
		getting_pings = "جارٍ الحصول على التنبيهات من جميع اللاعبين. قد يستغرق ذلك بضع ثوانٍ.",
		host_data = "${averagePing} متوسط تأخر في الإستجابة (على أساس ${totalPings} عميل) - ${location} ${position} ،10٪ منخفض: ${averagePingLow}، 10٪ مرتفع: ${averagePingHigh}",
		list_hosts = "${listHosts} قائمة المضيفين:"
	},

	profile = {
		profile_debug_enabled = "تم تمكين مُصَحِّح الملف الشخصي. تحقق من وحدة التحكم F8 للحصول على النتائج.",
		profile_debug_disabled = "تم تعطيل المصحح الملف الشخصي."
	},

	queue = {
		joining_the_queue = "جاري الإنضمام لقائمة الانتظار...",
		timed_out_before_joining = "لقد انتهت مهلة الوقت الخاصة بك قبل الانضمام إلى الخادم.",
		server_reload_while_in_loading = "يتم إعادة تشغيل نواة الخادم ونظرا لعدم تحميلك بشكل صحيح ، تم طردك تلقائيًا.",
		server_reload_while_in_queue = "يتم إعادة تشغيل الخادم الأساسي. يرجى إعادة الاتصال بقائمة الانتظار.",
		took_too_long_to_connect = "لقد استغرق الأمر وقتًا طويلاً في الاتصال!",
		queue_position_with_priority = "🐌 أنت الرقم ${queueEntryId}/${queueLength} في قائمة الانتظار بأولوية ${priorityName}. 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 أنت الرقم ${queueEntryId}/${queueLength} في قائمة الانتظار. 🕐${queueTime}\nهل تعبت من الانتظار في القائمة؟ ادعمنا لأولوية الدخول!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nهل أنت ملل؟ تفقد بث الأشخاص التالية!\n${streamers}",
		server_is_starting = "يتم الإنتظار لبدء الخادم...",
		cancelled_before_server_start = "تم إلغاء الإتصال قبل بدء الخادم.",
		kicked_from_queue = "تم طردك من الإنتظار للسبب `${reason}`.",
		kicked_from_queue_no_reason = "تم طردك من الإنتظار لم يحدد السبب.",
		missing_slots_parameter = "المعامل `slots` مفقود.",
		invalid_slots_parameter = "المعامل `slots` غير صالح.",
		slots_parameter_out_of_range = "يجب أن يكون معامل 'slots' بين '0' و '1025'.",
		slots_already_set_to = "تم تعيين مقاعد الخادم مسبقًا إلى `${slots}`.",
		slots_set_to = "تم تعيين مقاعد الخادم الآن إلى `${slots}`.",

		invalid_license_identifier_parameter = "المعلمة 'licenseIdentifier' مفقودة أو غير صالحة.",
		invalid_target_position_parameter = "المعلمة 'targetPosition' مفقودة أو غير صالحة.",
		player_not_found_in_queue = "لم يتم العثور على اللاعب في الطابور.",
		player_queue_moved_success = "تم تحديث موقع اللاعب في الطابور بنجاح.",
		player_queue_skipped_success = "تم تخطي اللاعب في قائمة الانتظار بنجاح.",
		queue_is_not_ready = "قائمة الانتظار غير جاهزة، لا يمكن تخطيها.",

		welcome_to = "مرحبًا في"
	},

	restart = {
		restart_30_minutes = "سيتم إعادة تشغيل الخادم بعد 30 دقيقة!",
		restart_15_minutes = "سيتم إعادة تشغيل الخادم بعد 15 دقيقة!",
		restart_10_minutes = "سيتم إعادة تشغيل الخادم بعد 10 دقائق!",
		restart_5_minutes = "سيتم إعادة تشغيل الخادم بعد 5 دقائق!",
		restart_3_minutes = "سيتم إعادة تشغيل الخادم بعد 3 دقائق!",
		restart_2_minutes = "سيتم إعادة تشغيل الخادم بعد 2 دقيقة!",
		restart_1_minute = "سيتم إعادة تشغيل الخادم في دقيقة واحدة!",
		server_restarting = "جاري إعادة تشغيل الخادم. يمكنك الانضمام مجددًا بعد بضع دقائق.",
		executed_restart_command = "تم تنفيذ أمر إعادة التشغيل.",
		already_executed_restart_command = "تم تنفيذ أمر إعادة التشغيل بالفعل."
	},

	routes = {
		route_not_found = "المسار ${route} غير موجود.",
		route_restricted = "يتم فرض قيود على المسار ${route}.",
		internal_server_error = "خطأ داخلي في الخادم."
	},

	users = {
		playtime = "وقت اللعب",
		player_playtime = "${playerName} (المركز ${position})\nإجمالي وقت اللعب: ${totalPlaytime}\nوقت اللعب في الجلسة: ${sessionPlaytime}",
		leaderboard = "الترتيب العام",
		your_position = "موقعك",
		logs_user_reject_connection_title = "رفض الاتصال",
		logs_user_reject_connection_details = "تم رفض الاتصال من ${consoleName} (${reason}).",
		logs_user_connected_title = "انضمام المستخدم",
		logs_user_connected_details = "انضم ${consoleName} إلى الخادم.",
		logs_user_joined_title = "انضمام المستخدم",
		logs_user_joined_details = "انضم ${consoleName} إلى الخادم.",
		logs_user_dropped_title = "انسحاب المستخدم",
		logs_user_dropped_details = "انسحب ${consoleName} من الخادم بعد اللعب لمدة ${playtime} بسبب: `${reason}`.",
		logs_character_loaded_title = "تم تحميل الشخصية",
		logs_character_loaded_details = "${consoleName} قام بتحميل شخصية ${fullName} (${characterId}).",
		logs_character_unloaded_title = "تم إلغاء تحميل الشخصية",
		logs_character_unloaded_details = "${consoleName} قام بإلغاء تحميل الشخصية ${fullName} (${characterId}).",
		logs_character_unloaded_details_reason = "${consoleName} قام بإلغاء تحميل الشخصية ${fullName} (${characterId}) بسبب `${reason}`.",
		logs_character_created_title = "تم إنشاء الشخصية",
		logs_character_created_details = "${consoleName} قام بإنشاء الشخصية ${fullName} (${characterId}).",
		logs_character_deleted_title = "تم حذف الشخصية",
		logs_character_deleted_details = "${consoleName} قام بحذف الشخصية ${fullName} (${characterId}).",
		server_core_is_restarting = "جاري إعادة تشغيل نواة الخادم.",
		you_timed_out = "انتهت مدة الجلسة الخاصة بك!",
		kicked_for_no_specified_reason = "تم طردك بدون ذكر سبب.",
		kicked_player = "تم طرد اللاعب.",
		kicked_player_and_removed_reconnect_priority = "تم طرد اللاعب وإزالة أولوية الإعادة الاتصال.",
		kicked_player_and_failed_to_remove_reconnect_priority = "تم طرد اللاعب وفشلت إزالة أولوية الإعادة الاتصال.",
		removed_player_from_queue = "تمت إزالة اللاعب من قائمة الانتظار.",
		player_not_found = "اللاعب غير موجود.",
		missing_license_identifier = "المعرف (`licenseIdentifier`) مفقود.",
		package = "الحزمة",
		package_updated = "تم تحديث حزمتك إلى `${packageName}`.",
		package_updated_remaining_time = "تم تحديث حزمتك إلى `${packageName}`، وستنتهي صلاحيتها في ${remainingTime}.",
		package_expired = "انتهت صلاحية حزمتك.",
		package_same = "حزمتك هي `${packageName}`.",
		package_same_remaining_time = "حزمتك هي `${packageName}`، وستنتهي صلاحيتها في ${remainingTime}.",
		no_package = "ليس لديك حزمة.",
		fetching_package_error = "حدث خطأ أثناء محاولة جلب بيانات الحزمة الخاصة بك.",
		check_playtime_not_staff = "حاول اللاعب الاطلاع على وقت اللعب لشخص آخر، ولكن ليس لديه الأذونات الصحيحة للقيام بذلك.",
		reason_unknown = "السبب غير معروف.",

		unloaded_character = "تم تفريغ الشخصية.",
		user_does_not_have_sent_character_loaded = "المستخدم لا يحمل الشخصية المحددة.",
		user_has_no_character_loaded = "المستخدم لا يحمل أي شخصية.",
		user_not_found = "لم يتم العثور على المستخدم المذكور في الخادم.",
		invalid_character_id = "معرف الشخصية المرسل غير صالح.",
		invalid_license_identifier = "معرف الترخيص المرسل غير صالح.",

		unload_character_not_staff = "حاول اللاعب إلغاء تحميل شخصية لاعب ولكنه ليس من طاقم الموظفين.",

		unloaded_character_for_player_logs_title = "إلغاء تحميل شخصية اللاعب",
		unloaded_character_for_player_logs_details = "${consoleName} لاختيار ${targetConsoleName}تم إلغاء تحميل شخصية ${characterFullName} (${characterId}) بسبب `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "تم تفريغ شخصية ${targetConsoleName} (${characterFullName} (${characterId})) بدون أي سبب محدد من قبل ${consoleName}.",
		unloaded_character_self_logs_title = "تم تفريغ الشخصية",
		unloaded_character_self_logs_details = "قام ${consoleName} بتفريغ شخصيته ${characterFullName} (${characterId}) وذلك للسبب `${message}`.",
		unloaded_character_self_no_reason_logs_details = "تم تفريغ شخصية ${characterFullName} (${characterId}) بدون أي سبب محدد من قبل ${consoleName}.",

		unloaded_character_for_user = "تم تفريغ شخصية ${characterFullName} (${characterId}) لحساب ${consoleName}.",
		user_with_server_id_has_no_character_loaded = "الحساب المرتبط برقم السيرفر `${serverId}` لايحمل شخصية حاليًا.",
		user_with_server_id_not_found = "لا يمكن العثور على الحساب المرتبط برقم السيرفر `${serverId}` على الخادم.",

		custom_plate = "نمط اللوحة المخصص",
		custom_character_id = "رقم الشخصية المخصص",
		custom_phone_number = "رقم الهاتف المخصص",
		reskin = "تغيير موقع المحتوى",

		no_player_packages = "لا يوجد حزم خاصة باللاعب.",
		player_packages = "حزم اللاعبين:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "الدرجة الممتنة",
		respected_tier = "الدرجة المحترمة",
		heroic_tier = "الدرجة البطولية",
		legendary_tier = "الدرجة الأسطورية",
		godlike_tier = "الدرجة الإلهية"
	},

	-- game/*
	admin_menu = {
		menu_title = "قائمة الإدارة",
		spectate_player = "مشاهدة اللاعب",
		teleport_player = "الانتقال للاعب",
		teleport_player_here = "الانتقال بلاعب إليك",
		failed_teleport_to_player = "فشل في الانتقال للاعب.",
		failed_teleport_player_here = "فشل في نقل اللاعب إليك.",
		invalid_target_server_id = "مُعرّف خادم الهدف غير صالح.",
		invalid_destination_server_id = "مُعرّف خادم الوجهة غير صالح.",
		invalid_source_server_id = "مُعرّف خادم المصدر غير صالح.",
		failed_teleport_player_to_player = "فشل في تحويل اللاعب إلى لاعب.",
		teleported_player_to_player = "تم تحويل اللاعب إلى لاعب.",

		teleport_player_missing_permissions = "حاول اللاعب تحويل لاعب، ولكنه لا يمتلك الأذونات اللازمة لذلك."
	},

	afk = {
		you_are_afk = "أنت غائب. سيتم إلغاء تفعيل شخصيتك قريبًا.",
		move_mouse = "قُم بتحريك الماوس لتوقف عن الخمول.",
		you_have_been_unloaded_for_being_afk = "لقد كنت خاملاً لفترة طويلة، يُرجى النظر في العودة إلى صفحة اختيار الشخصية في المرة القادمة."
	},

	airdrops = {
		create_airdrop_missing_permissions = "حاول اللاعب إنشاء إسقاط جوي لكنه ليس لديه الصلاحيات اللازمة للقيام بذلك.",
		created_airdrop = "تم إنشاء إسقاط جوي من نوع `${airdropType}` بإجمالي عدد ${itemAmount} من العناصر."
	},

	airports = {
		airport = "مطار",
		press_to_access_spawner = "اضغط ~INPUT_CONTEXT~ للوصول إلى المولد المركبات.",
		no_spawner_licenses = "ليس لديك أي تراخيص لهذا المُفجر للمركبات.",
		vehicle_lists = "قوائم المركبات",
		parked_vehicle = "المركبة متوقفة.",
		press_to_park_vehicle = "اضغط ~INPUT_CONTEXT~ لركن المركبة.",
		no_vehicle_to_park = "لا يوجد مركبات لركنها.",
		park_vehicle = "ركن المركبة",
		park_vehicle_outside = "ركن المركبة في الخارج",
		close_menu = "إغلاق القائمة",
		spawned_vehicle = "تم إنشاء المركبة.",
		spawner_on_timeout = "لا يمكن استخدام جهاز المفجر للمركبات الآن. يرجى المحاولة مرة أخرى لاحقًا.",
		spawn_area_not_clear = "لا يمكن إنشاء المركبة في هذه المنطقة. المنطقة غير صالحة.",
		return_button = "رجوع",
		deposit = "إيداع $$ {amount}",
		no_deposit = "لا يوجد إيداع",
		deposit_not_enough_money = "لا يوجد لديك ما يكفي من المال لدفع الإيداع."
	},

	airstrike = {
		create_airstrike_missing_permissions = "حاول اللاعب إنشاء ضربة جوية ولكنه لم يكن لديه الصلاحيات اللازمة لذلك",

		airstrike_success = "تم إنشاء ضربة جوية بنجاح",
		airstrike_failed = "فشل في إنشاء ضربة جوية"
	},

	airsupport = {
		create_airsupport_missing_permissions = "حاول اللاعب استدعاء الدعم الجوي ولكنه لم يكن لديه الصلاحيات اللازمة لذلك.",

		distance = "المسافة: ${distance}${unit}",
		time_to_impact = "الوقت المتبقي: ${timeToImpact}",

		out_of_range = "~r~خارج المدى",

		km = "كم",
		mi = "ميل",

		airsupport_failed = "فشل في استدعاء الدعم الجوي."
	},

	alcohol = {
		now_sober = "أنت الآن صحيح مرة أخرى.",
		drunk_state_1 = "أنت تشعر بالسكر قليلاً.",
		drunk_state_2 = "أنت في حالة سكر.",
		drunk_state_3 = "أنت في حالة سكر شديدة.",
		drunk_state_4 = "أنت في حالة سكر خطيرة."
	},

	alerts = {
		close = "إغلاق",

		alert_title = "إنذار",

		invalid_server_id = "معرف الخادم غير صالح.",
		missing_content = "المحتوى مفقود.",

		show_alert_success = "تم عرض التنبيه بنجاح للشخص.",
		show_alert_everyone_success = "تم عرض التنبيه بنجاح للجميع.",
		show_alert_failed = "فشل عرض التنبيه للمشترك.",

		show_alert_missing_permissions = "حاول المشترك عرض تنبيه للاعب آخر ولكنه لم يكن لديه الصلاحيات اللازمة للقيام بذلك."
	},

	arcade = {
		use_arcade_machine = "اضغط على ~INPUT_CONTEXT~ لاستخدام جهاز الأركيد. التكلفة هي $${cost}.",
		finished_arcade_logs_title = "لعبة الأركيد الانتهاء",
		finished_arcade_logs_details = "${consoleName} انتهى من لعبة الأركيد بدرجة `${score}`."
	},

	archives = {
		press_to_access_archives = "اضغط ~INPUT_CONTEXT~ للوصول إلى الأرشيفات.",
		archives_title = "الأرشيفات",
		no_archives = "لا توجد أرشيفات هنا.",
		close_menu = "إغلاق القائمة",
		archive_label = "القضية #${case}",

		failed_get_archives = "فشل في الوصول للأرشيفات.",
		failed_not_on_duty = "أنت لست في الخدمة.",

		archive_created = "تم إنشاء الأرشيف بنجاح برقم القضية #${case}.",
		invalid_case_number = "رقم القضية غير صالح (عدد صحيح بين 1 و 99999).",
		not_near_archive = "أنت لست بالقرب من الأرشيف.",
		failed_create_archive = "فشل في إنشاء الأرشيف.",
		archive_already_exists = "رقم القضية موجود مسبقًا في هذا الأرشيف.",
		archive_destroyed = "تم تدمير الأرشيف بنجاح ورقم القضية ${case} تم حذفه.",
		archive_maximum_case_count = "لا يمكنك إنشاء مزيد من الحالات.",
		failed_destroy_archive = "فشل في تدمير الأرشيف.",
		destroy_not_empty = "يمكنك فقط تدمير الأرشيف الفارغ.",

		create_archive_logs_title = "تم إنشاء الأرشيف",
		create_archive_logs_details = "${consoleName} قام بإنشاء قضية جديدة برقم ${caseNumber} في الأرشيف `${archiveName}`.",
		destroy_archive_logs_title = "تم تدمير الأرشيف",
		destroy_archive_logs_details = "${consoleName} قام بتدمير قضية في الأرشيف  `${archiveName}`  برقم القضية  `${caseNumber}`."
	},

	arena = {
		player_died = "توفي ${name}.",
		player_killed = "${killerName} قتل ${name} بـ ${deathCause} (${distance} متر).",
		hud_info = "عدد اللاعبين: ${playerAmount}\n\nالوفيات: ${deaths}\nالقتل: ${kills}",
		press_to_access_menu = "اضغط ~INPUT_INTERACTION_MENU~ للوصول إلى قائمة الملعب.",
		this_command_is_only_for_arena = "هذا الأمر مخصص فقط لـ الملعب.",
		stand_still_to_respawn = "الرجاء الوقوف ثابتاً لمدة 5 ثواني حتى يتم استعادة الشخصية.",
		respawn_cancelled = "تم إلغاء إعادة الشخصية بسبب حركتك.",
		arena_suicide_reason = "الانتحار",
		arena = "المباريات",
		ordered_airdrop = "تم طلب الإسقاط الجوي",

		store = "المتجر",
		team = "الفريق",
		leaderboard = "لائحة المتصدرين",
		search = "البحث",
		add_to_cart = "إضافة إلى عربة التسوق",
		unlocks_at_level = "يفتح عند الوصول للمستوى ${level}",
		show_vehicles = "إظهار السيارات",
		hide_vehicles = "إخفاء السيارات",
		balance = "الرصيد: $${balance}",
		shopping_cart = "${items} عناصر ($${cost})",
		buy_now = "شراء الآن",
		call_airdrop = "استدعاء إسقاط جوي",
		empty = "فارغة",
		clear_cart = "إفراغ العربة التسوق",
		can_not_afford = "لا يمكن التحمل",
		brokie_lol = "بروكي لول",
		confirmation_exit_arena = "هل أنت متأكد أنك تريد الخروج من الساحة؟",
		confirmation_buy_now = "هل أنت متأكد من أنك تريد شراء ${label} مقابل $${cost}؟",
		yes = "نعم",
		no = "لا",
		empty_slot = "فتحة فارغة",
		team_name = "اسم الفريق",
		level = "المستوى",
		arena = "المباريات",
		battle_royale = "معركة ملكية",
		arena_gun_game = "areArena Gun Game",
		lottery = "اليانصيب",
		daily_tasks = "المهام اليومية",
		categories = "الفئات",
		refresh = "تحديث",
		refreshing = "يتم التحديث...",
		not_available = "غير متوفر",

		kill = "قتل",
		headshot = "رأس الأعلى",
		killstreak = "سلسلة القتل",
		assist = "مساعدة",

		level = "المستوى",
		position = "المركز",
		name = "الاسم",
		kills = "القتل",
		deaths = "الوفيات",
		kd = "النسبة بين القتل والوفيات",
		hits = "الإصابات",
		hits_headshots = "الرأس الأعلى",
		headshot_ratio = "نسبة رأس الأعلى",
		damage_dealt = "الضرر الذي تم تحمله",
		damage_taken = "الضرر الذي تم تلقيه",
		matches_played = "الجولات الملعوبة",
		wins = "الفوز",
		win_ratio = "نسبة الفوز",
		xp = "نقاط الخبرة",
		money_won = "المال الذي تم الفوز به",
		average_percentage = "النسبة المتوسطة",
		streak = "السلسلة"
	},

	atms = {
		withdraw = "سحب",
		deposit = "إيداع",
		balance = "الرصيد",
		transfer = "تحويل",
		back = "عودة",

		amount = "المبلغ",
		target = "المستهدف",

		failed_deposit = "فشل إيداع المال",
		failed_withdraw = "فشل سحب المال",
		failed_transfer = "فشل تحويل المال",

		processing = "جاري المعالجة...",
		counting_bills = "جاري عد الفواتير...",

		something_went_wrong = "حدث خطأ ما.",
		error_not_online = "المستهدف غير متواجد.",
		error_not_enough_money = "لا يوجد ما يكفي من المال.",
		deposit_amount_big = "تم تحديد الحد الأعلى للإيداع البنكي في الصراف الآلي عند ٤٠٠٠ دولار.",
		withdraw_amount_big = "تم تحديد الحد الأعلى للسحب من الصراف الآلي عند ٦٠٠٠ دولار.",

		retrieving_card = "جاري سحب البطاقة",
		atm_damaged = "هذا الصراف الآلي تالف",

		press_to_use = "اضغط ~g~${InteractionKey} ~w~لإستخدام الصراف الآلي",
		press_to_interact_bank = "اضغط ~g~${InteractionKey} ~w~للتفاعل مع البنك",

		deposit_log_bank_title = "إيداع في البنك",
		deposit_log_atm_title = "إيداع في الصراف الآلي",
		deposit_log = "قام ${consoleName} بإيداع مبلغ $$amount. ",

		withdraw_log_bank_title = "سحب من البنك",
		withdraw_log_atm_title = "سحب من الصراف الآلي",
		withdraw_log = "${consoleName} قام بسحب مبلغ ${amount} ريال.",

		transfer_log_title = "تحويل الأموال",
		transfer_log = "${consoleName} (#${characterId}) قام بتحويل مبلغ ${amount} ريال لحساب ${targetConsoleName} (#${targetCharacterId})."
	},

	attachments = {
		cancel_attachments = "إلغاء",
		finish_attachments = "تطبيق",

		modifying_attachments = "تعديل ${amount} المرفقات",

		failed_apply = "فشل تطبيق المرفقات.",
		no_item = "لا يوجد هذا السلاح في مخزنك.",
		no_attachment = "لا يوجد المرفق المطلوب.",
		no_paint = "لا يوجد لديك أي طلاء.",
		success = "تم تطبيق المرفقات بنجاح.",

		not_available = "لا يوجد لديك هذه المرفقات في مخزنك.",

		attachment_label_suppressor = "كاشف الصوت",
		attachment_label_flashlight = "مصباح يدوي",
		attachment_label_extended_clip = "مخزن موسع",
		attachment_label_extended_pistol_clip = "مخزن موسع للمسدس",
		attachment_label_extended_smg_clip = "مخزن موسع لرشاش الصغير",
		attachment_label_extended_shotgun_clip = "مخزن موسع للبندقية",
		attachment_label_luxury = "تشطيبٌ فاخر",
		attachment_label_incendiary = "طلقات حارقة",
		attachment_label_tracer = "طلقات مع قاذف الضوء",
		attachment_label_hollow_point = "طلقات نووية فارغة",
		attachment_label_scope = "نقطة",
		attachment_label_grip = "مقبض",
		attachment_label_drum = "مجلة أسطوانية",
		attachment_label_heavy_barrel = "ماسورة ثقيلة",
		attachment_label_armor_piercing = "طلقات ثاقبة للدروع",
		attachment_label_explosive = "طلقات متفجرة",
		attachment_label_sight = "نقطة تصوير هولوغرافية",
		attachment_label_pistol_sight = "نقطة تصوير البندقية",
		attachment_label_fmj = "رصاصة الجاكت الكامل المعدنية",
		attachment_label_scope_nv = "نظارة الرؤية الليلية",
		attachment_label_scope_thermal = "نظارة حرارية",

		attachment_label_luxury1 = "ذا بيمب",
		attachment_label_luxury2 = "ذا بالاس",
		attachment_label_luxury3 = "ذا هاستلر",
		attachment_label_luxury4 = "ذا روك",
		attachment_label_luxury5 = "ذا هيتر",
		attachment_label_luxury6 = "ذا لوفر",
		attachment_label_luxury7 = "ذا بلاير",
		attachment_label_luxury8 = "ذا كنج",
		attachment_label_luxury9 = "ذا فاجوز",

		attachment_label_luxury_knife_1 = "النسخة المميزة",
		attachment_label_luxury_knife_2 = "النسخة الحارسة",

		attachment_label_stock_folded = "المخزن المطوي",
		attachment_label_stock_unfolded = "المخزن المفتوح",

		attachment_label_skin_patriotic = "جلد الوطني",
		attachment_label_skin_brushstroke = "جلد الفرشاة",
		attachment_label_skin_skull = "جلد الجمجمة",
		attachment_label_skin_leopard = "جلد الفهد",
		attachment_label_skin_zebra = "جلد الحمار الوحشي",
		attachment_label_skin_geometric = "جلد هندسي",

		label_no_skin = "لا يوجد جلد",

		no_tint = "لا يوجد تدرج",

		tint_normal_0 = "أسود",
		tint_normal_1 = "أخضر",
		tint_normal_2 = "ذهبي",
		tint_normal_3 = "زهري",
		tint_normal_4 = "عسكري",
		tint_normal_5 = "LSPD",
		tint_normal_6 = "برتقالي",
		tint_normal_7 = "بلاتيني",

		tint_mk2_0 = "أسود كلاسيكي",
		tint_mk2_1 = "رمادي كلاسيكي",
		tint_mk2_2 = "اثنان من الألوان الكلاسيكية",
		tint_mk2_3 = "أبيض كلاسيكي",
		tint_mk2_4 = "بيج كلاسيكي",
		tint_mk2_5 = "أخضر كلاسيكي",
		tint_mk2_6 = "أزرق كلاسيكي",
		tint_mk2_7 = "أرض كلاسيكية",
		tint_mk2_8 = "بني وأسود كلاسيكي",
		tint_mk2_9 = "تباين أحمر",
		tint_mk2_10 = "تباين أزرق",
		tint_mk2_11 = "تباين أصفر",
		tint_mk2_12 = "تباين برتقالي",
		tint_mk2_13 = "زهري جريء",
		tint_mk2_14 = "أرجواني جريء وأصفر",
		tint_mk2_15 = "برتقالي جريء",
		tint_mk2_16 = "أخضر جريء وأرجواني",
		tint_mk2_17 = "مميزات حمراء جريئة",
		tint_mk2_18 = "مميزات خضراء جريئة",
		tint_mk2_19 = "مميزات سماوية جريئة",
		tint_mk2_20 = "مميزات صفراء جريئة",
		tint_mk2_21 = "أحمر وأبيض جريء",
		tint_mk2_22 = "أزرق وأبيض جريء",
		tint_mk2_23 = "ذهبي معدني",
		tint_mk2_24 = "بلاتينيوم معدني",
		tint_mk2_25 = "رمادي معدني وليلكي",
		tint_mk2_26 = "بنفسجي معدني وأخضر ليموني",
		tint_mk2_27 = "أحمر معدني",
		tint_mk2_28 = "أخضر معدني",
		tint_mk2_29 = "أزرق معدني",
		tint_mk2_30 = "أبيض معدني وأزرق شفاف",
		tint_mk2_31 = "أحمر معدني وأصفر",

		tint_ray_0 = "محارب الفضاء",
		tint_ray_1 = "أرجواني",
		tint_ray_2 = "أخضر",
		tint_ray_3 = "برتقالي",
		tint_ray_4 = "وردي",
		tint_ray_5 = "ذهبي",
		tint_ray_6 = "بلاتيني",

		last_concat = "و",

		attachments_logs_title = "المرفقات والألوان",
		attachments_logs_details = "${consoleName} قام بتعديل `${weaponName}`: ${modifications}.",

		removed_attachments = "تم فصل ${removed}",
		added_attachments = "تمت إضافة ${added}",
		tint_changed = "تم تغيير اللون من `${fromTint}` إلي `${toTint}`"
	},

	audio = {
		audio_id = "الصوت ${audioId}",
		illegal_sound_effect = "تم محاولة إخبار أعضاء آخرين في اللعبة بتشغيل صوت خارجي غير مسموح به.",
		url_invalid = "الرابط الذي تم تزويده غير صالح. يجب أن يتم تحميله على اتصال آمن. (https://)",
		url_missing = "يرجى إضافة رابط الصوت الذي تريد تشغيله.",
		play_audio_no_permissions = "حاول اللاعب تشغيل صوت ولكنه لم يمتلك الأذونات المطلوبة للقيام بذلك.",
		played_audio_for_self = "تم تشغيل الصوت لنفسك.",
		played_audio_for_player = "تم تشغيل الصوت لـ ${consoleName}.",
		played_audio_for_everyone = "تم تشغيل الصوت للجميع.",
		played_audio_effect_for_everyone_title = "تم تشغيل تأثير الصوت للجميع",
		played_audio_effect_for_everyone_details = "${consoleName} قام بتشغيل تأثير صوتي للجميع. تم تعيين عنوان URL لتأثير الصوت بـ `${url}` وتم تعيين مستوى الصوت للعب في `${volume}`.",
		played_audio_effect_for_player_title = "تم تشغيل تأثير الصوت للشخص",
		played_audio_effect_for_player_details = "${consoleName} قام بتشغيل تأثير صوتي لـ ${targetConsoleName}. كان الصوت موجود على الرابط: `${url}`، وكان مضبوطًا للعمل عند مستوى صوت `${volume}`."
	},

	balls = {
		press_to_pick_up_ball = "اضغط ~INPUT_CONTEXT~ لالتقاط الكرة."
	},

	banana_peels = {
		slipped_logs_title = "انزلق على قشرة موز",
		slipped_logs_details = "${consoleName} انزلق على قشرة الموز بينما كان يتحرك ${slipForce}.",

		slip_0 = "يمشي",
		slip_1 = "يجري",
		slip_2 = "يسرع"
	},

	bandaids = {
		label = "برنت ${type}",

		baby_yoda = "بيبي يودا",
		batman = "باتمان",
		care_bear = "دُببُُة_الإهتمام",
		hello_kitty = "هيلو_كيتي",
		hotwheels = "العجلات_الساخنة",
		mc_queen = "برق_ماكوين",
		minions = "البلطجية",
		pony = "مهري_الصغير",
		power_puff = "باور_باف",
		spiderman = "سبايدرمان",
		star_wars = "حرب_النجوم",

		received_bandaid_logs_title = "تلقي العلاج بالباند إيد",
		received_bandaid_logs_details = "${consoleName} تلقى 1x ${bandaid} بعد النقل الجوي."
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "فشل في تبديل وضع المعركة الملكية.",
		toggled_battle_royale_on = "قمت بتبديل وضع المعركة الملكية.",
		toggled_battle_royale_off = "تم إيقاف طور 'الباتل رويال' بنجاح.",
		battle_royale_info = "أنت في قائمة الانتظار لطور 'الباتل رويال'!\nيوجد حاليا ${battleRoyaleQueueLength} لاعب في القائمة.",
		toggle_battle_royale_missing_permissions = "لقد حاول اللاعب تفعيل طور 'الباتل رويال'، ولكن ليس لديه الصلاحيات اللازمة لذلك.",
		start_battle_royale_missing_permissions = "لقد حاول اللاعب بدء طور 'الباتل رويال'، ولكن ليس لديه الصلاحيات اللازمة لذلك.",
		unable_to_start_battle_royale_not_active = "غير قادر على بدء طور 'الباتل رويال' حيث أنه غير مفعل.",
		not_enough_players_in_queue = "غير قادر على بدء المعركة الملكية لعدم وجود عدد كافٍ من اللاعبين في قائمة الانتظار.",
		zone_idling = "المنطقة الآن في حالة خمول.",
		zone_advancing = "المنطقة الآن في حالة تقدم.",
		player_died = "${name} توفي: اللاعبون المتبقون ${remainingPlayers}.",
		player_killed = "${name} تم قتله بواسطة ${killerName} بسبب ${deathCause} من مسافة ${distance}م: اللاعبون المتبقون ${remainingPlayers}.",
		player_won = "${name} فاز!",
		your_team = "فريقك:",
		received_lobby_invite = "لقد تلقيت دعوة لوبي من ${serverId}. اكتب `/br_join ${serverId}` للانضمام!",
		unable_to_invite_yourself = "لا يمكنك دعوة نفسك.",
		unable_to_join_yourself = "لا يمكنك الانضمام إلى نفسك.",
		player_already_invited = "تم دعوة اللاعب بالمعرف `${serverId}` سابقًا.",
		sent_player_invite = "تم إرسال الدعوة إلى اللاعب بالمعرف `${serverId}`.",
		joined_lobby = "لقد انضممت إلى الساحة.",
		player_not_invited = "لم تتم دعوتك إلى هذه الساحة.",
		you_are_not_in_a_lobby = "أنت لست في الساحة.",
		left_lobby = "لقد غادرت الساحة.",
		created_match = "تم إنشاء مباراة مع ${playerAmount} لاعبين.",
		created_match_no_vehicles = "تم إنشاء مواجهة بدون مركبات مع ${playerAmount} لاعب.",
		zone_complete = "المنطقة مكتملة.",
		battle_royale_match_info = "المنطقة الحالية: ${zoneId}/${zoneAmount}\nالوقت المتبقي: ${remainingTime} ثانية\nالحالي: ${currentlyLabel}\nاللاعبون المتبقون: ${remainingPlayers}\nالقتل: ${kills}",
		idling = "التشنج",
		advancing = "التقدم",
		battle_royale = "رويال باتل",
		press_to_deploy_parachute = "اضغط ~INPUT_PARACHUTE_DEPLOY~ لإطلاق المظلة.",
		join_battle_royale_instance_missing_permissions = "حاول اللاعب الانضمام إلى مثيل رويال باتل ولكنه لم يمتلك الصلاحيات اللازمة لذلك.",
		no_match_found = "لم يتم العثور على ${consoleName} في أي مباراة.",
		joined_instance = "انضم إلى مثيل ${consoleName}.",
		leave_battle_royale_instance_missing_permissions = "حاول اللاعب مغادرة مثيل Battle Royale ولكن لم يكن لديه الأذونات المطلوبة للقيام بذلك.",
		left_instance = "غادر المثيل.",
		failed_to_leave_instance = "فشلت في الخروج من مثيل لأنك لم تكن في واحد.",
		already_in_match = "فشل في الانضمام إلى المثيل حيث أنك بالفعل في مباراة.",
		lobby_is_full = "الصالة التي حاولت الانضمام إليها ممتلئة.",
		zone_center = "مركز المنطقة",
		team_marker = "علامة الفريق",
		trophy_information_top = "!${name} هو الأفضل",
		trophy_information_bottom = "كان هناك مجموعة من ${playerAmount} لاعبين في المباراة وقتلت ${kills} منهم.",
		not_able_to_join_while_in_match = "لا يمكنك الانضمام إلى لوبي أثناء المباراة."
	},

	bazaar = {
		access_bazaar = "اضغط ~INPUT_CONTEXT~ للوصول إلى هذا المتجر.",

		bazaar_blip = "البازار",

		no_items = "ليس لديك أي شيء لبيعه هنا.",
		price_about = "حوالي $${price}",

		sold_logs_title = "سجل بيع البازار",
		sold_logs_details = "${consoleName} باع ${amount} × `${itemName}` بمقابل $${price}.",

		sold_items = "لقد باعت ${amount} × ${label} بمقابل $${money}.",
		failed_sell_items = "فشل في بيع العناصر.",

		junk_collector = "مجمع المخلفات الصغيرة",
		tool_collector = "مجمع الأدوات",
		waste_collector = "مجمع النفايات",
		ammo_collector = "مجمع الذخائر",

		close_menu = "إغلاق القائمة"
	},

	beds = {
		no_nearby_available_bed_found = "لم يتم العثور على سرير متاح قريب.",
		press_to_leave_bed = "اضغط ~INPUT_CONTEXT~ للخروج من السرير."
	},

	blackjack = {
		play_blackjack = "اضغط ~INPUT_CONTEXT~ للعب لعبة البلاك جاك.",
		play_blackjack_high_limit = "اضغط ~INPUT_CONTEXT~ للعب بلاك جاك ذو الرهان العالي."
	},

	blindfold = {
		blindfolding_player = "وضع كيس ورقي على اللاعب",
		blindfolding_self = "وضع كيس ورقي على الرأس",
		hold_to_take_blindfold_off = "استمر في الضغط على ~INPUT_VEH_HEADLIGHT~ لإزالة الكيس الورقي",
		hold_to_take_blindfold_off_holding = "استمر في الضغط لإزالة الكيس الورقي"
	},

	blips = {
		comedy_club = "نادي الكوميديا",
		bean_machine = "مقهى الفول السوداني",
		arcade_bar = "بار الألعاب",
		japanese_restaurant = "مطعم ياباني",
		luxury_autos = "السيارات الفاخرة",
		rockford_records = "روكفورد ريكوردز",
		dispensary = "الصيدلية",
		haunted_high_school = "المدرسة العليا المسكونة",
		sushi_restaurant = "مطعم سوشي",

		bank = "البنك",
		hospital = "المستشفى",
		bolingbroke = "سجن بولينجبروك",
		police_department = "الإدارة الشرطية",
		motel = "فندق صغير",
		tattoo_parlor = "صالون الوشم",
		repair_shop = "محل إصلاح السيارات",
		material_vendor = "بائع المواد الخام",
		pdm = "بلازا للسيارات الفاخرة",
		ls_customs = "صيانة لوس سانتوس",
		jewelry_store = "محل مجوهرات فانجيليكو",
		pd_air_hq = "مقر الشرطة الجوية",
		pd_sea_hq = "مركز شرطة البحر",
		ems_air_hq = "مركز EMS الجوي",
		ems_boat_hq = "مركز EMS البحري",
		ems_garage = "كراج EMS"
	},

	blockage = {
		restricted_area = "هذه المنطقة مقيدة. من فضلك ارجع!"
	},

	bombs = {
		not_in_plane = "أنت لست في طائرة.",
		not_in_plane_anymore = "لم تعد في طائرة.",
		interaction_menu = "~INPUT_CONTEXT~ إسقاط قنبلة ${name}، ~INPUT_VEH_HEADLIGHT~ تغيير النوع.",
		too_low = "أنت منخفض جدًا لإسقاط القنابل.",

		you_are_not_in_a_vehicle = "أنت لا تقود مركبة حاليًا.",
		ignition_bomb_on = "تم تفعيل تفجير الإشعال.",
		ignition_bomb_off = "تم تفعيل قنبلة الاشتعال بنجاح.",
		failed_ignition_bomb = "فشل في تفعيل قنبلة الاشتعال.",

		recharging_countermeasures = "جارٍ إعادة شحن إجراءات الوقاية ${percentage}%",

		ignition_bomb_triggered_logs_title = "قنبلة الاشتعال",
		ignition_bomb_triggered_logs_details = "${consoleName} قام بتشغيل محرك مركبة لديها قنبلة مثبتة على اشتعالها.",

		toggle_ignition_bomb_missing_permissions = "حاول اللاعب تفعيل قنبلة الإشعال ولكنه لم يكن لديه الصلاحيات المطلوبة."
	},

	boomboxes = {
		boombox = "بوم بوكس",
		play = "تشغيل",
		pause = "إيقاف مؤقت",
		skip_song = "تخطي الأغنية",
		volume = "الصوت",
		music = "الموسيقى",

		store_boombox = "احتفظ بالبوم بوكس في مخزونك",
		put_boombox_down = "ضع البوم بوكس على الأرض",
		use_boombox = "استخدم البوم بوكس",
		hold_to_pick_boombox_up = "استمر في الاستمرار لالتقاط البوم بوكس",
		illegal_boombox_item_id = "محاولة استخدام بوم بوكس غير قانوني.",
		logs_attempted_to_add_song_title = "محاولة إضافة أغنية",
		logs_attempted_to_add_song_details = "${consoleName} حاول إضافة أغنية بعنوان `${url}` إلى البوم بوكس بمعرف `${boomboxId}`.",
		wipe_boomboxes_not_staff = "حاول اللاعب مسح جميع صناديق الصخر ، ولكن لم يكن لديه الأذونات الصحيحة للقيام بذلك.",
		logs_wiped_all_boomboxes_title = "تم مسح جميع صناديق الصخور",
		logs_wiped_all_boomboxes_details = "${consoleName} قام بمسح جميع صناديق الصخور.",
		logs_wiped_nearby_boomboxes_title = "تم مسح صناديق الصخور القريبة",
		logs_wiped_nearby_boomboxes_details = "${consoleName} قام بمسح كل صناديق الصخور ضمن نطاق بلغ`${radius}`.",
		radius_invalid = "النطاق `${radius}` غير صالح.",
		wiped_all_boomboxes = "تم مسح ${boomboxesWiped} صندوق صخر.",
		wiped_nearby_boomboxes = "تم مسح ${boomboxesWiped} صناديق الصوت ضمن نطاق `${radius}`.",
		failed_to_wipe_boomboxes = "فشل في مسح صناديق الصوت.",
		no_boomboxes = "لم توجد أي صناديق صوتية لإزالتها.",
		no_boomboxes_within_radius = "لم يتم العثور على أي صناديق صوتية لإزالتها ضمن نطاق `${radius}`."
	},

	boosting = {
		boosting_contracts = "زيادة العقود",
		join_queue = "الانضمام للطابور",
		leave_queue = "الخروج من الطابور",

		transfer_crypt = "تحويل العملة الرقمية",
		transfer_crypt_info = "أدخل المبلغ ومعرف الخادم الذي تريد تحويله إليه.",

		amount = "المبلغ",
		server_id = "رقم الخادم",

		transfer = "نقل",
		cancel = "إلغاء",

		start_contract = "بدء العقد",
		start_contract_info = "هل أنت متأكد أنك تريد بدء هذا التعاقد؟",

		yes = "نعم",
		no = "لا",

		transfer_contract = "نقل العقد",
		transfer_contract_info = "أدخل رقم الخادم للشخص الذي ترغب في نقل التعاقد إليه.",

		decline_contract = "رفض العقد",
		decline_contract_info = "هل أنت متأكد أنك تريد رفض هذا التعاقد؟",

		cancel_contract = "إلغاء العقد",
		cancel_contract_info = "هل أنت متأكد من أنك تريد إلغاء هذا العقد؟",

		no_contracts = "لا يوجد لديك عقود متاحة. انضم إلى الطابور للحصول على بعض.",

		model = "الموديل",
		plate = "اللوحة",
		buy_in = "رسوم الاشتراك",
		expires_in = "ينتهي بعد",

		start_contract_type = "ماذا تريد أن تفعل؟",
		start_contract_type_info = "هل تريد إيصال أو فحص العلامة التجارية الرقمية VIN scratch؟ يكلف فحص العلامة التجارية الرقمية VIN scratch إضافيًا ${cost} CRYPT.",

		drop_off = "نقل/تسليم",
		vin_scratch = "فحص العلامة التجارية الرقمية VIN scratch",

		start_contract = "بدء العقد",
		transfer_contract = "نقل العقد",
		decline_contract = "رفض العقد",
		mark_pickup = "وضع علامة على المكان",
		cancel_contract = "إلغاء العقد",

		new_contract = "لديك عقد تعزيز جديد. (الفئة: ${className})",
		started_contract = "بدأ العقد.",
		failed_contract = "فشل العقد.",
		completed_contract = "أنجزت العقد. لقد حصلت على ${payout} كوين.",
		completed_contract_vin_scratch = "أنجزت العقد. يمكن العثور على المركبة في المرآب الخاص بك.",
		marked_pickup = "وضع علامة على المكان.",

		vehicle_tracker_is_being_hacked = "يتم قرصنة متعقب المركبة. هناك عدد ${hacksRemaining} من المحاولات المتبقية.",
		use_chip_to_hack_vehicle_tracker = "استخدم رقاقة لاختراق متعقب المركبة. يوجد ${hacksRemaining} اختراق (أو اختراقات) متبقي(ة).",
		vehicle_hacking_is_timed_out = "يجب عليك الانتظار قليلاً قبل القيام بالاختراق مرة أخرى. يوجد ${hacksRemaining} اختراق (أو اختراقات) متبقي(ة).",
		drop_the_vehicle_off = "قُم بتسليم المركبة في الموقع المحدد.",
		drop_off = "نقل/تسليم",
		exit_the_vehicle = "اخرج من المركبة واترك المكان لإكمال المهمة.",

		vehicle_is_being_tampered = "تم تعديل أحد المركبات بالقرب من ${locationLabel}، وهذا نوعها ${modelLabel} (الفئة ${className}) ورقم لوحتها ${plate}.",
		vehicle_tamper = "تلاعب بالمركبة (${plate})",
		vehicle_tracker_alert = "تنبيه جهاز تتبع المركبة (${plate})",

		exit_the_vehicle_to_scratch = "الرجاء الخروج من المركبة لتفتيش الرقم التسلسلي للمركبة",

		scratch = "تفتيش الرقم التسلسلي للمركبة",
		press_to_scratch = "اضغط ~g~E ~w~لتفتيش الرقم التسلسلي للمركبة.",

		scratching_vehicle = "جاري تفتيش المركبة",

		deleted_boosted_vehicle_logs_title = "تم حذف المركبة المسروقة",
		deleted_boosted_vehicle_logs_details = "تم حذف المركبة المسروقة برقم تعريفي ${vehicleId} بواسطة ${consoleName}.",

		spawned_contract = "تم إنشاء العقد بنجاح.",
		spawned_contract_for = "تم إنشاء اتفاق مساعدة لـ ${displayName} بنجاح.",

		spawn_contract_no_permissions = "حاول اللاعب إنشاء اتفاقية تعزيز بدون أذونات صحيحة.",

		already_max_vin_scratched_vehicles = "لديك بالفعل الحد الأقصى لعدد مركبات VIN داخل المرآب.",
		contract_has_expired = "انتهت صلاحية هذا العقد.",
		you_already_have_a_contract_started = "لديك بالفعل عقد قيد التشغيل."
	},

	brochure = {
		welcome_to = "مرحبًا بك في",
		san_andreas = "سان أندرياس",

		getting_started = "بدء العمل",
		getting_started_1 = "لقد وصلت للتو إلى المطار وربما تتساءل عن الخطوة التالية؟ يحصل جميع المواطنين الجدد على سيارة بداية مجانية. قد لا تكون الأفضل، ولكنها ستكون ملكًا لك. يمكنك العثور عليها في موقف السيارات.",
		getting_started_2 = "إذا لم ترغب في القيادة فيمكنك المشي أو طلب صديق ليقلك أو استدعاء تاكسي باستخدام هاتفك، يمكنك الوصول إلى الهاتف باستخدام زر \"P\".",
		getting_started_3 = "معظم المركبات لديها صناديق يمكن وضع الأغراض والأشخاص بها. يمكنك /carry شخص ثم الذهاب إلى الصندوق الخلفي، فتحه (/door) ووضعهم فيه. بالطريقة نفسها يمكنك أيضًا إخراجهم من الصندوق. إذا حدث انقلاب لسيارتك يمكنك /flip لإعادتها إلى وضعها الصحيح على العجلات.",

		where_now = "أين أنت الآن؟",
		where_now_1 = "الآن بعد أن قمت بالحصول على مركبتك الأولى، يمكنك البدء في استكشاف المدينة. نظرًا لأنه يجب عليك البقاء مغذيًا ومرطبًا، فإن متجر البقالة هو مكان جيد للبدء. يمكنك هنا شراء الطعام والمشروبات، وكذلك الضمادات التي ستساعدك على الشفاء من الإصابات.",
		where_now_2 = "بمجرد أن تحصل على الإمدادات اللازمة، يجب عليك التوجه إلى المحكمة والحصول على بطاقة المواطن. ستعمل هذه البطاقة كهوية لك، ورخصة قيادتك ورخصتك لامتلاك الأسلحة.",

		getting_a_job = "الحصول على وظيفة",
		getting_a_job_1 = "كيف تحصل على المال؟ يمكنك البدء بالبحث عن عمل. يمكن العثور على قائمة الوظائف في Life Invader. يمكن العثور على رمز الحقيبة الحمراء على الخريطة. هنا يمكنك العثور على مجموعة من الوظائف التي يمكنك التقدم لها.",
		getting_a_job_2 = "يتطلب عمل الشاحنات منك تسليم البضائع إلى مواقع مختلفة. يجب عليك شراء شاحنة من مقر الشاحنات مقابل 2،000 دولار.",
		getting_a_job_3 = "عند التسجيل في وظيفة التسليم يمكنك استلام مجموعة التسليم مليئة بالطرود في مقر التسليم. يجب عليك ثم تسليم الطرود إلى مواقع مختلفة في المدينة. يمكنك فتح الخلفية الخلفية للشاحنة عن طريق الوقوف بجوارها وفتح الأمر /door.",
		getting_a_job_4 = "يمكنك أيضًا أن تصبح جامع نفايات. في مقر جامع النفايات يمكنك الحصول على شاحنة القمامة والبدء في جمع القمامة.",
		getting_a_job_5 = "عندما تقوم بالتسجيل في إحدى الوظائف ، ستتمكن من رؤية مجموعة متنوعة من العلامات على الخريطة. يوضح المسار الذي يجب اتباعه للبدء.",

		your_appearance = "مظهرك الخارجي",
		your_appearance_1 = "يمكن تغيير الملابس مثل البنطلونات والأحذية والقمصان والمزيد في أي متجر للملابس ، مجانًا. يمكن تغيير شعرك ولحيتك وماكياجك في صالون الحلاقة. يمكنك العثور على كلا متاجر الملابس وصالونات الحلاقة على الخريطة.",
		your_appearance_2 = "بمجرد أن تطير للمرة الأولى لن تتمكن من تغيير مظهرك العام مثل لون البشرة ، والملامح الوجهية ، وما إلى ذلك. إذا أخطأت في المظهر الخاص بك أو انتهيت بسرعة كبيرة ، يمكنك استخدام الأمر /report وطلب إعادة تصميم الشخصية الخاصة بك .",

		medical_care = "العناية الطبية",
		medical_care_1 = "إذا تعرضت لإصابة ، يمكنك الذهاب إلى المستشفى للاستيفاء والعلاج. يمكنك العثور على المستشفى على الخريطة. يمكنك أيضًا استخدام الضمادات أو علب الإسعافات الأولية للشفاء بنفسك.",
		medical_care_2 = "إذا قمت باستعادة مستواك دون أن يتم نقلك إلى المستشفى أو خرجت من اللعبة أثناء السقوط ، فقد تخسر بعض من مستلزماتك الخاصة. عدم الارتباط بالخادم يعد خروجًا من اللعبة.",

		safety_hint = "تلميح: يمكنك إبقاء سلاحك في وضع عدم الأمان عن طريق الضغط على ALT وزر الماوس الأوسط. كن آمنًا!",

		closing_sentence = "هناك الكثير من الأشياء التي يمكن القيام بها في المدينة! اسأل حولك وتعرف على بعض الأصدقاء ;)"
	},

	cache = {
		download_progress = "تقدم التحميل:\n- المركبات: ${vehiclesDone}/${vehiclesTotal}\n- الأشياء: ${objectsDone}/${objectsTotal}\n- الأشخاص: ${pedsDone}/${pedsTotal}\n- الملابس: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "تم تفعيل تحميل البطئ.",
		slow_download_disabled = "تم تعطيل تحميل البطئ."
	},

	capri_sun = {
		capri_sun_name = "كابري سون (${flavor})"
	},

	cargo = {
		start_cargo_no_permissions = "حاول اللاعب بدء سرقة البضائع ولكن لم يكن لديه الصلاحيات لفعل ذلك.",
		end_cargo_no_permissions = "حاول اللاعب إنهاء عملية سرقة البضائع ولكن لم يكن لديه الصلاحيات لفعل ذلك.",
		cargo_already_active = "البضائع تعمل بالفعل.",
		started_cargo = "تم بدء البضائع.",
		cargo_not_active = "البضائع غير مفعّلة.",
		ended_cargo = "تم إنهاء البضائع.",
		cargo_crate = "صندوق البضائع",
		use_chip_to_hack_crate = "استخدم ~g~الشريحة ~w~لاختراق صندوق البضائع.",
		crate_is_being_hacked = "جاري اختراق الصندوق.",
		crate_will_unlock_in = "سوف يفتح الصندوق خلال ~g~${time}~w~.",
		press_k_to_access = "اضغط ~g~K ~w~للوصول."
	},

	casino = {
		set_casino_screen_id_not_staff = "حاول اللاعب تعيين معرّف شاشة الكازينو، لكنه لم يمتلك الصلاحيات الصحيحة للقيام بذلك.",
		successfully_set_screen_label = "تمّ تعيين الشاشات بنجاح على الشاشة التي تحمل العلامة `${screenLabel}`.",
		successfully_queued_screen_label = "تمّ تسجيل الشاشة التي تحمل العلامة `${screenLabel}` في قائمة الانتظار بنجاح.",
		failed_to_set_screen_label = "فشل في تعيين الشاشات على الشاشة التي تحمل العلامة `${screenLabel}`.",
		invalid_screen_label = "تصنيف الشاشة `${screenLabel}` غير صالح.",
		missing_screen_label = "مفقود معلمة `تصنيف الشاشة`.",
		set_screen_label_already_set_to = "لا يمكن تعيين التسمية على الشاشة إلى `${screenLabel}` لأنها مضبوطة بالفعل.",
		only_available_in_the_casino = "لا يمكنك القيام بذلك إلا داخل الكازينو.",
		casino_blip = "كازينو"
	},

	cayo_perico = {
		approaching_out_of_bounds = "أنت على وشك الخروج من حدود الخريطة",
		out_of_bounds = "أنت خارج الحدود"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "تابع الاتجاه ${direction} للوصول إلى كايو بيريكو.\n(تبقى ${distanceToTeleport} متر)",
		keep_heading_in_direction_out = "تابع الاتجاه ${direction} للعودة إلى لوس سانتوس.\n(تبقى ${distanceToTeleport} متر)",

		south = "جنوب",
		south_east = "جنوب شرق",
		east = "شرق",
		north_east = "شمال شرق",
		north = "شمال",
		north_west = "شمال غرب",
		west = "غرب",

		not_the_driver = "يجب أن تكون السائق في السيارة لتطير إلى جزيرة كايو بيريكو.",
		not_a_cayo_vehicle = "يجب أن تكون في قارب أو طائرة أو مروحية للوصول إلى جزيرة كايو بيريكو.",
		entering_cayo_perico_logs_title = "دخول جزيرة كايو بيريكو",
		entering_cayo_perico_logs_details = "${consoleName} يدخل جزيرة كايو بيريكو.",
		exiting_cayo_perico_logs_title = "مغادرة جزيرة كايو بيريكو",
		exiting_cayo_perico_logs_details = "${consoleName} يغادر جزيرة كايو بيريكو.",
		entering_cayo_perico_with_passengers_logs_title = "الدخول إلى جزيرة كايو بيريكو مع ركاب",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} يدخل جزيرة كايو بيريكو مع ${passengersAmount} راكب.",
		exiting_cayo_perico_with_passengers_logs_title = "الخروج من جزيرة كايو بيريكو مع الركاب",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} يغادر جزيرة كايو بيريكو مع ${passengersAmount} راكب."
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "تم تحصيل الباب في تقويم المغامرة",
		claimed_money = "${consoleName} حصل على ${amount} ريال.",
		claimed_item = "${consoleName} حصل على `${itemLabel}`.",
		claimed_vehicle = "${consoleName} حصل على مركبة خاصة بالعيد.",
		claimed_queue_priority = "${consoleName} حصل على أسبوع من الأولوية في قائمة الانتظار للعيد.",

		claimed_advent_calendar_bonus_title = "تم تحصيل مكافأة تقويم المغامرة",
		claimed_advent_calendar_bonus_details = "${consoleName} حصل على مكافأة تقويم المغامرة، وهي مركبة بنموذج `${modelName}`."
	},

	cinema = {
		failed_to_find_cinema_identifier = "فشل العثور على معرف السينما.",

		screen_model_size = "الحجم: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "الإزاحة: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "الدوران: ${rotation}",
		screen_model_volume = "الحجم: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "الموديل: ${modelName}",

		locked = "مغلق",

		add_video_to_queue_title = "إضافة فيديو إلى قائمة الانتظار",
		add_video_to_queue_details = "${consoleName} أضاف فيديو إلى قائمة الانتظار في سينما باستخدام مفتاح الفيديو `${videoType}:${videoId}`.",

		blacklisted_video = "تم إضافة الفيديو المحظور بمفتاح `${videoKey}`.",
		failed_to_blacklist_video = "فشل في إضافة الفيديو المحظور بمفتاح `${videoKey}`.",
		video_is_already_blacklisted = "الفيديو بمفتاح `${videoKey}` محظور بالفعل.",

		blacklist_video_missing_permissions = "حاول اللاعب حظر فيديو ولكن لم يكن لديه الصلاحيات المطلوبة.",

		watching_movie = "يشاهد ${title}",

		cinema = "سينما",
		doppler_cinema = "دوبلر سينما",
		sandy_cinema = "ساندي سينما",
		tv = "تلفاز",
		monitor = "شاشة",
		laptop = "الكمبيوتر المحمول",
		projector = "العارض الضوئي",

		zoom = "تكبير وتصغير الكاميرا",
		slow = "بطيء",
		toggle_lights = "تبديل الأضواء",
		exit = "خروج",

		-- NOTE: UI locales
		title = "العنوان",
		length = "المدة",
		date = "التاريخ",
		author = "الكاتب",
		queue = "الانتظار",
		search_through_library = "البحث في المكتبة ...",
		add_to_library = "إضافة الفيديو إلى المكتبة (رابط) ..."
	},

	cinematic = {
		cinematic = "سينمائي",
		black_bars_set_to = "لقد تم ضبط الشريط الأسود السينمائي على ${blackBarsHeight}%"
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] تسليح",
		disarm_claymore = "[${InteractionKey}] إزالة التسليح",

		disarming = "تفكيك",
		arming = "تركيب"
	},

	clothing = {
		outfit_failed = "فشل في تطبيق الملابس.",
		missing_outfit = "الملابس مفقودة.",
		missing_outfit_name = "اسم الملابس مفقود.",
		no_nearby_clothing_spot = "لا يوجد مكان للملابس القريب.",
		trunk_closed = "الخزانة مغلقة.",
		trunk_too_far = "أنت بعيد جدًا عن الخزانة.",
		moved_too_far_trunk = "تحركت بعيدًا جدًا عن الخزانة.",
		invalid_job = "لا يمكنك استخدام هذا المكان للملابس لأنك لست بالوظيفة المطلوبة.",
		outfit_list = "الملابس",
		no_saved_outfits = "ليس لديك أي ملابس محفوظة.",
		saved_outfit = "تم حفظ الملابس `${name}` بنجاح.",
		replaced_outfit = "تم استبدال الملابس `${name}` بنجاح.",
		failed_save_outfit_exists = "فشل في الحفظ، الملابس `${name}` موجودة بالفعل.",
		failed_save_outfit = "فشل في حفظ الملابس.",
		deleted_outfit = "تم حذف الملابس `${name}` بنجاح.",
		failed_delete_outfit_doesnt_exists = "فشل في الحذف، الملابس `${name}` غير موجودة.",
		failed_delete_outfit = "فشل في حذف الملابس.",

		invalid_server_id = "ID الخادم غير صالح أو مفقود.",
		player_model_missmatch = "لا يمكنك مشاركة ملابسك مع هذا اللاعب.",
		player_too_far = "اللاعب بعيد جدًا.",
		shared_outfit_too_far = "${displayName} قام بمشاركة ملابس معك ولكنك لست قريبًا من مكان الملابس.",
		outfit_shared = "تمت مشاركة الزي بنجاح.",
		outfit_not_shared = "فشل في تحميل الزي.",
		shared_outfit = "${displayName} قام بمشاركة زي معك. اكتب `yes` للموافقة أو `no` للرفض. (ستنتهي هذه الخاصية في غضون 30 ثانية)",
		applied_shared_outfit = "تم تطبيق الزي المشارك بنجاح.",
		declined_shared_outfit = "تم رفض الزي المشارك.",

		no_nearby_dead_player = "لا يوجد لاعب ميت قريب.",
		failed_to_steal_shoes = "فشلت عملية سرقة الأحذية.",

		loading_model = "جارٍ تحميل موديل اللاعب...",
		loading_spawn = "جارٍ إنشاء موديل اللاعب...",
		loading_set_data = "جارٍ ضبط بيانات اللاعب...",
		loading_tattoos = "جارٍ تعيين الوشوم...",
		loading_finalize = "جارٍ إنهاء العملية..."
	},

	clothing_bag = {
		packed_outfit = "تم حزم الملابس بنجاح في الحقيبة.",
		packed_outfit_failed = "فشلت عملية حزم الملابس في الحقيبة.",

		item_description_filled = "لديه ملابس مجمعة \"<i>${outfit}</i>\" في الحقيبة.",
		item_description_empty = "<b>لا يوجد</b> ملابس مجمعة في الحقيبة.",

		bag_empty = "هذه الحقيبة الحالية فارغة.",
		wrong_ped_model = "هذا الملابس لا تبدو مناسبة لك.",
		cant_use_in_vehicle = "لا يمكنك استخدام حقيبة ملابس أثناء القيادة.",
		cant_use_while_moving = "لا يمكنك استخدام حقيبة ملابس أثناء التحرك.",

		opening_bag = "فتح الحقيبة"
	},

	clothing_menu = {
		component = "الجزء",
		texture = "نسيج",
		palette = "لوحة ألوان",

		clothing = "ملابس",
		accessories = "إكسسوارات",
		face = "الوجه",
		outfits = "الملابس الكاملة",

		reset_zoom = "إعادة ضبط التكبير",
		zoom_level = "مستوى التكبير",

		variation = "التغيير",
		color = "اللون الرئيسي",
		secondary_color = "اللون الثانوي",
		opacity = "الشفافية",

		press_to_access = "اضغط ~INPUT_CONTEXT~ للدخول إلى متجر الملابس.",
		press_no_freemode = "هذه الشخصية غير قادرة على الدخول إلى متجر الملابس.",
		press_no_freemode_barber = "هذه الشخصية غير قادرة على الدخول إلى محل الحلاقة.",
		press_to_access_barber = "اضغط ~INPUT_CONTEXT~ للدخول إلى محل الحلاقة.",
		press_to_change_outfit = "اضغط ~INPUT_CONTEXT~ لتغيير ملابسك.",

		clothingstore = "متجر الملابس",
		barbershop = "محل الحلاقة",

		changing_area = "منطقة تغيير الملابس",

		switch_outfit = "تغيير الملابس إلى هذه الملابس.",
		replace_outfit = "ستستبدل هذه الزي.",
		new_outfit = "حفظ الزي",
		no_saved_outfits = "لا يوجد أي أزياء محفوظة.",

		save_outfit_title = "حفظ زي جديد",
		save_outfit_label = "اسم الزي:",
		save_outfit_button = "حفظ",

		replace_outfit_title = "استبدال الزي",
		replace_outfit_description = "هل تريد بالتأكيد استبدال الزي المسمى ${outfit}؟",
		replace_outfit_button = "استبدال",

		delete_outfit_title = "حذف الزي",
		delete_outfit_description = "هل تريد بالتأكيد حذف الزي المسمى ${outfit}؟",
		delete_outfit_button = "حذف",

		packing_outfit_title = "تعبئة الملابس",
		packing_outfit_description = "حدد الفتحة التي بها الحقيبة التي تريد تعبئة الزي \"${outfit}\" فيها.",

		cancel_button = "إلغاء",

		remove_button = "إزالة ${label}",
		menu_description = "اضغط على \"V\" لتبديل الكاميرا. يمكنك سحب المنزلقات بالماوس أو استخدام مفاتيح الأسهم. يمكنك الضغط على \"A\" و \"D\" لضبط موقعك.",

		failed_toggle_clothing_menu = "فشل في تبديل قائمة الملابس.",
		clothing_menu_success = "تم فتح قائمة الملابس لـ ${consoleName}.",
		barber_menu_success = "فشل في تبديل قائمة متجر الحلاقة.",
		failed_toggle_barber_menu = "تم فتح قائمة متجر الحلاقة لـ ${consoleName}.",
		invalid_server_id = "معرف خادم غير صالح.",

		clothing_menu_missing_permissions = "حاول اللاعب فتح قائمة الملابس للاعب آخر ولكن لم يكن لديه الصلاحيات المطلوبة.",

		hats_and_helmets = "القبعات / الخوذات",
		glasses = "النظارات",
		earrings = "الأقراط",
		left_wrist = "المعصم الأيسر",
		right_wrist = "المعصم الأيمن",

		pants = "البناطيل",
		shoes = "الأحذية",
		undershirt = "القميص الداخلي",
		necklaces_and_ties = "القلادات والربطات",
		decals = "اللاصقات",
		shirts = "القمصان",
		arms = "الذراعين",
		masks = "الأقنعة",
		armor = "الدروع",
		parachute_and_bag = "المظلة والحقيبة",

		hair = "الشعر",

		blemishes = "العيوب",
		facial_hair = "الشعر الوجهي",
		eyebrows = "الحواجب",
		ageing = "الشيخوخة",
		makeup = "المكياج",
		blush = "الخدين",
		complexion = "البشرة",
		sun_damage = "أضرار الشمس",
		lipstick = "الأحمر الشفاه",
		moles_and_freckles = "الشامات والنمش",
		chest_hair = "شعر الصدر",
		body_blemishes = "عيوب الجسم",
		add_body_blemish = "إضافة عيب جسدي"
	},

	command_socket = {
		connected = "تم الاتصال بمقبس الأوامر.",
		disconnected = "تم فصل الاتصال من مقبس الأوامر.",
		failed_reconnect = "فشل إعادة الاتصال بمقبس الأوامر."
	},

	crafting = {
		menu_title = "الصنع",
		close_menu = "إغلاق القائمة",

		smelt_glass = "ذوب الزجاج المكسور",
		press_to_smelt_glass = "[${SeatEjectKey}] ذوب الزجاج المكسور",
		smelting_glass = "جاري ذوبان ${usedItems}",
		smelted_glass = "تم ذوبان ${usedItems} إلى زجاج.",
		failed_smelt_glass = "فشل ذوبان الزجاج.",

		craft_steel = "تصنيع الصلب",
		press_to_craft_steel = "[${SeatEjectKey}] تصنيع الصلب",
		crafting_steel = "صنع ${usedItems} مصبوبة",
		crafted_steel = "صنع ${usedItems} إلى فولاذ.",
		failed_craft_steel = "فشل في صنع الفولاذ.",

		scrapping_item = "تدوير ${usedItems}",
		scrapped_item = "استخراج معدن الخردة من ${usedItems}.",

		scrap_knife = "سكاكين الخردة",
		press_to_scrap_knife = "[${SeatEjectKey}] سكاكين الخردة",
		failed_scrap_knife = "فشل في تدوير السكين.",

		scrap_item = "تدوير الأغراض",
		press_to_scrap_item = "[${SeatEjectKey}] تدوير الأغراض",
		failed_scrap_item = "فشل في تدوير الأغراض.",

		cut_item = "قطع البطاطس",
		press_to_cut_item = "[${SeatEjectKey}] قطع البطاطس",
		cutting_item = "قطع 3 بطاطس",
		cut_item_done = "تحويل البطاطس إلى بطاطس مقلية.",
		failed_cut_item = "فشل في قطع البطاطس.",

		fry_item = "قلي البطاطس",
		press_to_fry_item = "[${SeatEjectKey}] قلي البطاطس",
		frying_item = "قلي البطاطس",
		fried_item = "البطاطس المقلية البلجيكية.",
		failed_fry_item = "فشل في قلي البطاطس.",

		grill_item = "شواء اللحم النيء",
		press_to_grill_item = "[${SeatEjectKey}] شواء اللحم النيء",
		grilling_item = "شواء اللحم",
		grilled_item = "البطائح المشوية.",
		failed_grill_item = "فشل في شوي البطائح.",

		hamburger_recipe = "هامبورغر",
		cheeseburger_recipe = "تشيزبورغر",

		assemble_burger = "تركيب برجر",
		press_to_assemble_burger = "[${SeatEjectKey}] تركيب برجر",
		assembling_burger = "تجميع هامبورغر",
		assembled_burger = "هامبورغر مجمع",
		failed_assemble_burger = "فشل في تجميع هامبورغر.",

		assembling_cheeseburger = "تجميع تشيزبورغر",
		assembled_cheeseburger = "تشيزبورغر مجمع",
		failed_assemble_cheeseburger = "فشل في تجميع برجر الجبن.",

		mix_avocado_smoothie = "خلط عصير الأفوكادو",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] خلط عصير الأفوكادو",
		mixing_avocado_smoothie = "جاري خلط عصير الأفوكادو",
		mixed_avocado_smoothie = "تم خلط عصير الأفوكادو",
		failed_mix_avocado_smoothie = "فشل في خلط عصير الأفوكادو.",

		fill_nitro_tank = "تعبئة خزان النيترو",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] تعبئة خزان النيترو",
		filling_nitro_tank = "جاري تعبئة خزان النيترو",
		filled_nitro_tank = "تم تعبئة خزان النيترو",
		failed_fill_nitro_tank = "فشلت عملية ملء خزان النيترو.",

		craft_sheet_metal = "صنع صفيحة معدنية",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] صنع صفيحة معدنية",
		crafting_sheet_metal = "جاري صنع صفيحة معدنية",
		crafted_sheet_metal = "تم صنع صفيحة معدنية.",
		failed_craft_sheet_metal = "فشل صنع الصفيحة المعدنية.",

		craft_empty_tank = "تجميع خزان فارغ",
		press_to_craft_empty_tank = "[${SeatEjectKey}] تجميع خزان فارغ",
		crafting_empty_tank = "جاري تجميع خزان فارغ",
		crafted_empty_tank = "تم تجميع خزان فارغ.",
		failed_craft_empty_tank = "فشل في تجميع خزان فارغ.",

		craft_valve = "تجميع الصمام",
		press_to_craft_valve = "[${SeatEjectKey}] تجميع الصمام",
		crafting_valve = "يتم تجميع الصمام",
		crafted_valve = "تم تجميع الصمام.",
		failed_craft_valve = "فشل في تجميع الصمام.",

		craft_nitro_tank = "تجميع خزان النيترو",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] تجميع خزان النيترو",
		crafting_nitro_tank = "يتم تجميع خزان النيترو",
		crafted_nitro_tank = "تم تجميع خزان النيترو.",
		failed_craft_nitro_tank = "فشل في تجميع خزان النيترو.",

		salvage_meth_table = "إصلاح طاولة الميث",
		press_to_salvage_meth_table = "[${SeatEjectKey}] إصلاح طاولة الميث",
		salvaging_meth_table = "جاري إصلاح طاولة الميث",
		salvaged_meth_table = "تم إصلاح طاولة الميث.",
		failed_salvage_meth_table = "فشل إصلاح طاولة الميث.",

		refill_vape = "إعادة تعبئة الفيب",
		press_to_refill_vape = "[${SeatEjectKey}] إعادة تعبئة الفيب",
		refilling_vape = "جاري إعادة تعبئة الفيب",
		refilled_vape = "تم إعادة تعبئة الفيب.",
		failed_refill_vape = "فشل إعادة تعبئة الفيب.",

		deconstructing_item = "تفكيك ${usedItems}",
		deconstructed_item = "تم تفكيك ${usedItems}.",

		deconstruct_pistol = "تفكيك مسدس",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] تفكيك المسدس",
		failed_deconstruct_pistol = "فشل في تفكيك المسدس.",

		deconstruct_smg = "تفكيك سلاح رشاش",
		press_to_deconstruct_smg = "[${SeatEjectKey}] تفكيك السلاح الرشاش",
		failed_deconstruct_smg = "فشل في تفكيك السلاح الرشاش.",

		deconstruct_shotgun = "تفكيك بندقية صيد",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] تفكيك بندقية الصيد",
		failed_deconstruct_shotgun = "فشل في تفكيك بندقية الصيد.",

		deconstruct_rifle = "تفكيك البندقية",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] تفكيك البندقية",
		failed_deconstruct_rifle = "فشل في تفكيك البندقية.",

		extract_copper = "استخراج النحاس",
		press_extract_copper = "[${SeatEjectKey}] استخراج النحاس",
		extracting_copper = "جاري استخراج النحاس",
		extracted_copper = "تم استخراج النحاس.",
		failed_extract_copper = "فشل في استخراج النحاس.",

		processing_item = "جاري معالجة ${usedItems}",
		processed_item = "تم معالجة ${usedItems}.",

		process_copper = "معالجة كتل النحاس",
		press_process_copper = "[${SeatEjectKey}] معالجة حُبات النحاس",
		failed_process_copper = "فشلت عملية معالجة حُبات النحاس.",

		process_rubber = "معالجة المطاط",
		press_process_rubber = "[${SeatEjectKey}] معالجة المطاط",
		failed_process_rubber = "فشلت عملية معالجة المطاط.",

		process_aluminium = "معالجة الألومنيوم",
		press_process_aluminium = "[${SeatEjectKey}] معالجة الألومنيوم",
		failed_process_aluminium = "فشلت عملية معالجة الألومنيوم.",

		process_steel = "معالجة الصلب",
		press_process_steel = "[${SeatEjectKey}] معالجة الصلب",
		failed_process_steel = "فشل في معالجة الفولاذ.",

		craft_lens = "تصنع العدسة",
		press_craft_lens = "[${SeatEjectKey}] صنع العدسة",
		crafting_lens = "تصنع العدسة",
		crafted_lens = "تم صنع العدسة.",
		failed_craft_lens = "فشل صنع العدسة.",

		craft_sight = "تصنع النظرة",
		press_craft_sight = "[${SeatEjectKey}] صنع النظرة",
		crafting_sight = "تصنع النظرة",
		crafted_sight = "تم صنع النظرة.",
		failed_craft_sight = "فشل صنع النظرة.",

		craft_pistol_sight = "تصنع نظرة المسدس",
		press_craft_pistol_sight = "[${SeatEjectKey}] صنع نظرة المسدس",
		crafting_pistol_sight = "صنع مُشغل البنادق الآليَّة",
		crafted_pistol_sight = "تم صنع مُشغل البنادق الآليَّة.",
		failed_craft_pistol_sight = "فشل في صنع مُشغل البنادق الآليَّة.",

		craft_scope = "صنع التلفاز",
		press_craft_scope = "[${SeatEjectKey}] صنع التلفاز",
		crafting_scope = "صنع التلفاز",
		crafted_scope = "تم صنع التلفاز.",
		failed_craft_scope = "فشل في صنع التلفاز.",

		craft_grip = "صنع المُقبض",
		press_craft_grip = "[${SeatEjectKey}] صنع المُقبض",
		crafting_grip = "صنع المُقبض",
		crafted_grip = "تم صنع المُقبض.",
		failed_craft_grip = "فشل في صنع المُقبض.",

		craft_extended_clip = "صنع ممدد للكليب",
		press_craft_extended_clip = "[${SeatEjectKey}] صنع ممدد للكليب",
		crafting_extended_clip = "جاري صنع ممدد للكليب",
		crafted_extended_clip = "تم صنع ممدد للكليب.",
		failed_craft_extended_clip = "فشل في صنع ممدد للكليب.",

		craft_extended_smg_clip = "صنع ممدد لكليب SMG",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] صنع ممدد لكليب SMG",
		crafting_extended_smg_clip = "جاري صنع ممدد لكليب SMG",
		crafted_extended_smg_clip = "تم صنع ممدد لكليب SMG.",
		failed_craft_extended_smg_clip = "فشل صناعة مشبك الرصاص الموسع للأسلحة الرشاشة.",

		craft_extended_shotgun_clip = "صناعة مشبك الرصاص الموسع للبندقية",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] صناعة مشبك الرصاص الموسع للبندقية",
		crafting_extended_shotgun_clip = "جارٍ صناعة مشبك الرصاص الموسع للبندقية",
		crafted_extended_shotgun_clip = "تم صنع مشبك الرصاص الموسع للبندقية بنجاح.",
		failed_craft_extended_shotgun_clip = "فشل صناعة مشبك الرصاص الموسع للبندقية.",

		craft_extended_pistol_clip = "صناعة مشبك الرصاص الموسع للمسدس",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] صناعة مشبك الرصاص الموسع للمسدس",
		crafting_extended_pistol_clip = "صنع مجمع رصاصات مسدس مطول",
		crafted_extended_pistol_clip = "تم صنع مجمع رصاصات مسدس مطول.",
		failed_craft_extended_pistol_clip = "فشل صنع مجمع رصاصات مسدس مطول.",

		craft_drum = "صنع مجموعة ذخيرة الطبل",
		press_craft_drum = "[${SeatEjectKey}] صنع مجموعة ذخيرة الطبل",
		crafting_drum = "صنع مجموعة ذخيرة الطبل",
		crafted_drum = "تم صنع مجموعة ذخيرة الطبل.",
		failed_craft_drum = "فشل صنع مجموعة ذخيرة الطبل.",

		craft_suppressor = "صنع مُخفِّض صوت",
		press_craft_suppressor = "[${SeatEjectKey}] صنع مُخفِّض صوت",
		crafting_suppressor = "تصنيع مخمد",
		crafted_suppressor = "تم صنع المخمد.",
		failed_craft_suppressor = "فشل في تصنيع المخمد.",

		craft_flashlight = "تصنيع مصباح يدوي",
		press_craft_flashlight = "[${SeatEjectKey}] تصنيع مصباح يدوي",
		crafting_flashlight = "جارٍ تصنيع المصباح اليدوي",
		crafted_flashlight = "تم تصنيع المصباح اليدوي.",
		failed_craft_flashlight = "فشل في تصنيع المصباح اليدوي.",

		mix_paint = "خلط الطلاء",
		press_mix_paint = "[${SeatEjectKey}] خلط الطلاء",
		mixing_paint = "جارٍ خلط الطلاء",
		mixed_paint = "تم خلط الطلاء.",
		failed_mix_paint = "فشلت عملية مزج الطلاء.",

		modify_knuckle = "تعديل المناشف النحاسية",
		press_modify_knuckle = "[${SeatEjectKey}] تعديل المناشف النحاسية",
		modifying_knuckle = "تعديل المناشف النحاسية",
		modified_knuckle = "تم تعديل المناشف النحاسية.",
		failed_modify_knuckle = "فشل تعديل المناشف النحاسية.",

		craft_jammer = "صنع جامر",
		press_craft_jammer = "[${SeatEjectKey}] صنع جامر",
		crafting_jammer = "جاري صنع الجامر",
		crafted_jammer = "تم صنع الجامر.",
		failed_craft_jammer = "فشل صنع الجامر.",

		craft_advanced_repair_kit = "صنع عدة إصلاح متقدمة",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] صنع عدة إصلاح متقدمة",
		crafting_advanced_repair_kit = "يتم صنع عدة إصلاح متقدمة",
		crafted_advanced_repair_kit = "تم صنع عدد إصلاح متقدمة.",
		failed_craft_advanced_repair_kit = "فشل صنع عدة إصلاح متقدمة.",

		pulverize_aluminium = "سحق الألومنيوم",
		press_pulverize_aluminium = "[${SeatEjectKey}] سحق الألومنيوم",
		pulverizing_aluminium = "جاري سحق الألومنيوم",
		pulverized_aluminium = "تم سحق الألومنيوم.",
		failed_pulverize_aluminium = "فشل في تجريد الألمنيوم.",

		pulverize_steel = "تجريد الفولاذ",
		press_pulverize_steel = "[${SeatEjectKey}] تجريد الفولاذ",
		pulverizing_steel = "جارٍ تجريد الفولاذ",
		pulverized_steel = "تم تجريد الفولاذ.",
		failed_pulverize_steel = "فشل في تجريد الفولاذ.",

		mix_thermite = "خلط المواد المتفجرة",
		press_mix_thermite = "[${SeatEjectKey}] خلط المواد المتفجرة",
		mixing_thermite = "جارٍ خلط المواد المتفجرة",
		mixed_thermite = "تم خلط المواد المتفجرة.",
		failed_mix_thermite = "فشل في خلط المواد المتفجرة.",

		deconstruct_phone = "تفكيك الهاتف",
		press_deconstruct_phone = "[${SeatEjectKey}] تفكيك الهاتف",
		failed_deconstruct_phone = "فشل تفكيك الهاتف.",

		deconstruct_radio = "تفكيك الراديو",
		press_deconstruct_radio = "[${SeatEjectKey}] تفكيك الراديو",
		failed_deconstruct_radio = "فشل تفكيك الراديو.",

		deconstruct_raspberry = "تفكيك الرازبيري",
		press_deconstruct_raspberry = "[${SeatEjectKey}] تفكيك الرازبيري",
		failed_deconstruct_raspberry = "فشل تفكيك الرازبيري.",

		deconstruct_chip = "تفكيك الشريحة",
		press_deconstruct_chip = "[${SeatEjectKey}] تفكيك الشريحة",
		failed_deconstruct_chip = "فشل في تفكيك الشريحة.",

		craft_device_scanner = "تصنيع ماسح جهاز",
		press_craft_device_scanner = "[${SeatEjectKey}] تصنيع ماسح جهاز",
		crafting_device_scanner = "تصنيع ماسح جهاز",
		crafted_device_scanner = "تم تصنيع ماسح الجهاز.",
		failed_craft_device_scanner = "فشل في تصنيع ماسح الجهاز.",

		craft_decryption_key = "تصنيع مفتاح فك التشفير",
		press_craft_decryption_key = "[${SeatEjectKey}] تصنيع مفتاح فك التشفير",
		crafting_decryption_key = "صناعة مفتاح فك التشفير",
		crafted_decryption_key = "تم صنع مفتاح فك التشفير.",
		failed_craft_decryption_key = "فشل في صناعة مفتاح فك التشفير.",

		craft_tire_wall = "صناعة حاجز اطار العجلات",
		press_craft_tire_wall = "[${SeatEjectKey}] صناعة حاجز اطار العجلات",
		crafting_tire_wall = "يتم الان صناعة حاجز اطار العجلات",
		crafted_tire_wall = "تم صنع حاجز اطار العجلات.",
		failed_craft_tire_wall = "فشل في صناعة حاجز اطار العجلات.",

		fix_tire_wall = "اصلاح حاجز اطار العجلات",
		press_fix_tire_wall = "[${SeatEjectKey}] اصلاح حاجز اطار العجلات",
		fixing_tire_wall = "يتم الان اصلاح حاجز اطار العجلات",
		fixed_tire_wall = "تم إصلاح حاجز الإطارات.",
		failed_fix_tire_wall = "فشل إصلاح حاجز الإطارات.",

		saw_shotgun = "منشار خرطوشة",
		press_saw_shotgun = "[${SeatEjectKey}] منشار خرطوشة",
		sawing_shotgun = "جاري تقطيع الخرطوشة",
		sawed_shotgun = "تم قطع الخرطوشة.",
		failed_saw_shotgun = "فشل تقطيع الخرطوشة.",

		bake_brownies = "تحضير البطاطا بالفرن",
		press_bake_brownies = "[${SeatEjectKey}] تحضير البطاطا بالفرن",
		baking_brownies = "جاري تحضير البطاطا بالفرن",
		baked_brownies = "تم تحضير البطاطا بالفرن.",
		failed_bake_brownies = "فشل تحضير البطاطا بالفرن.",

		mix_brushstroke_paint = "اخلط صبغة ستروك الفرشاة",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] اخلط صبغة ستروك الفرشاة",
		mixing_brushstroke_paint = "يتم خلط صبغة ستروك الفرشاة",
		mixed_brushstroke_paint = "تم خلط صبغة ستروك الفرشاة.",
		failed_mix_brushstroke_paint = "فشل خلط صبغة ستروك الفرشاة.",

		mix_skull_paint = "اخلط صبغة جمجمة",
		press_mix_skull_paint = "[${SeatEjectKey}] اخلط صبغة جمجمة",
		mixing_skull_paint = "يتم خلط صبغة الجمجمة",
		mixed_skull_paint = "تم خلط صبغة الجمجمة.",
		failed_mix_skull_paint = "فشل خلط صبغة الجمجمة.",

		mix_leopard_paint = "مزج صبغة الفهد المخططة",
		press_mix_leopard_paint = "[${SeatEjectKey}] مزج صبغة الفهد المخططة",
		mixing_leopard_paint = "جارٍ مزج صبغة الفهد المخططة",
		mixed_leopard_paint = "تم مزج صبغة الفهد المخططة.",
		failed_mix_leopard_paint = "فشل مزج صبغة الفهد المخططة.",

		mix_zebra_paint = "مزج صبغة الحمار الوحشي المخطط",
		press_mix_zebra_paint = "[${SeatEjectKey}] مزج صبغة الحمار الوحشي المخطط",
		mixing_zebra_paint = "جارٍ مزج صبغة الحمار الوحشي المخطط",
		mixed_zebra_paint = "تم مزج صبغة الحمار الوحشي المخطط.",
		failed_mix_zebra_paint = "فشل مزج صبغة الحمار الوحشي المخطط.",

		mix_geometric_paint = "مزج صبغ هندسي",
		press_mix_geometric_paint = "[${SeatEjectKey}] مزج صبغة هندسية",
		mixing_geometric_paint = "جاري مزج صبغة هندسية",
		mixed_geometric_paint = "تم مزج الصبغة الهندسية بنجاح.",
		failed_mix_geometric_paint = "فشل مزج الصبغة الهندسية.",

		mix_patriotic_paint = "مزج صبغة وطنية",
		press_mix_patriotic_paint = "[${SeatEjectKey}] مزج صبغة وطنية",
		mixing_patriotic_paint = "جاري مزج صبغة وطنية",
		mixed_patriotic_paint = "تم مزج الصبغة الوطنية بنجاح.",
		failed_mix_patriotic_paint = "فشل مزج الصبغة الوطنية.",

		craft_radio_decrypter = "جهاز فك تشفير راديو يدوي",
		press_craft_radio_decrypter = "[${SeatEjectKey}] صنع جهاز فك تشفير راديو يدوي",
		crafting_radio_decrypter = "...جاري صنع جهاز فك تشفير راديو يدوي",
		crafted_radio_decrypter = "تم صنع جهاز فك تشفير راديو يدوي بنجاح.",
		failed_craft_radio_decrypter = "فشل في صنع جهاز فك تشفير راديو يدوي.",

		craft_grenade_shell = "صنع قذيفة قنبلة",
		press_craft_grenade_shell = "[${SeatEjectKey}] صنع قذيفة قنبلة",
		crafting_grenade_shell = "...جاري صنع قذيفة قنبلة",
		crafted_grenade_shell = "تم صنع قذيفة قنبلة بنجاح.",
		failed_craft_grenade_shell = "فشل صنع قذيفة القنبلة.",

		craft_grenade_pin = "صنع دبوس القنبلة",
		press_craft_grenade_pin = "[${SeatEjectKey}] صنع دبوس القنبلة",
		crafting_grenade_pin = "يتم صنع دبوس القنبلة",
		crafted_grenade_pin = "تم صنع دبوس القنبلة.",
		failed_craft_grenade_pin = "فشل صنع دبوس القنبلة.",

		craft_gas_grenade = "صنع قنبلة الغاز",
		press_craft_gas_grenade = "[${SeatEjectKey}] صنع قنبلة الغاز",
		crafting_gas_grenade = "يتم صنع قنبلة الغاز",
		crafted_gas_grenade = "تم صنع قنبلة الغاز.",
		failed_craft_gas_grenade = "فشل في صنع قنبلة الغاز.",

		no_required_items = "ليس لديك جميع الأدوات المطلوبة.",

		debug_multi = "-إخراج متعدد-",

		used_crafting_station_title = "محطة صناعة",
		used_crafting_station_details = "${consoleName} استخدم محطة صنع لصنع ${amount}x ${itemName}."
	},

	crashes = {
		crash_failed = "فشل في تنشيط الانهيار لـ ${consoleName}.",
		crash_success = "تم تنشيط الانهيار بنجاح لـ ${consoleName}.",
		server_id_invalid = "مُعرّف الخادم غير صالح."
	},

	creation = {
		turn_right = "انحني يمينًا",
		turn_left = "إلتف يساراً"
	},

	creation_menu = {
		character_creation = "إنشاء الشخصية",
		new_character = "شخصية جديدة",

		select_a_model = "حدّد نموذجًا.",

		heritage = "الأصل",
		heritage_description = "اختر لاختيار والديك.",
		mom = "الأم",
		mom_description = "اختر أمك.",
		dad = "الأب",
		dad_description = "اختر أباك.",
		resemblance = "الشبه",
		resemblance_description = "اختر إذا كانت ملامحك تتأثر بشكل أكبر بوالدتك أم والدك.",
		skin_tone = "لون البشرة",
		skin_tone_description = "اختر إذا كان لون بشرتك يتأثر بشكل أكبر بوالدتك أم والدك.",
		divorced = "مطلّق",
		divorced_description = "اختر إذا كان والداك مطلّقين.",

		["in"] = "in",
		out = "خارج",
		up = "أعلى",
		down = "أسفل",
		brow = "حاجب",
		brow_description = "أجعل تغييرات على ملامحك الجسدية.",

		squint = "حدق",
		wide = "واسع",
		eyes = "عين",
		eyes_description = "أجعل تغييرات على ملامحك الجسدية.",

		narrow = "ضيق",
		wide = "واسع",
		nose = "أنف",
		nose_description = "أجعل تغييرات على ملامحك الجسدية.",

		short = "قصير",
		long = "طويل",
		crooked = "معوج",
		curved = "منحني",
		nose_profile = "شكل الأنف",
		nose_profile_description = "قم بإجراء تغييرات على ملامح وجهك الخارجية.",

		broken_left = "كسر يسار",
		broken_right = "كسر يمين",
		tip_up = "طرف الأنف للأعلى",
		tip_down = "طرف الأنف للأسفل",
		nose_tip = "طرف الأنف",
		nose_tip_description = "قم بإجراء تغييرات على ملامح وجهك الخارجية.",

		cheekbones = "عظام الخد",
		cheekbones_description = "قم بإجراء تغييرات على ملامح وجهك الخارجية.",

		gaunt = "نحيل",
		puffed = "منتفخ",
		cheeks = "الخدين",
		cheeks_description = "قم بإجراء تغييرات على ملامح وجهك الخارجية.",

		thin = "نحيف",
		fat = "بدين",
		lips = "الشفاه",
		lips_description = "قم بإجراء تغييرات على ملامح جسمك الخارجية.",

		round = "مستدير",
		square = "مربع",
		jaw = "فك",
		jaw_description = "قم بإجراء تغييرات على ملامح جسمك الخارجية.",

		chin_profile = "ملامح الذقن",
		chin_profile_description = "قم بإجراء تغييرات على ملامح جسمك الخارجية.",

		pointed = "مشرفة",
		rounded = "مدورة",
		bum = "بارزة",
		chin_shape = "شكل الذقن",
		chin_shape_description = "قم بإجراء تغييرات على ملامح جسمك الخارجية.",

		thick = "سميكة",
		neck_thickness = "سمك الرقبة",
		neck_thickness_description = "قم بإجراء تغييرات على ملامح جسمك الخارجية.",

		features = "الميزات",
		appearance = "المظهر",
		save_and_continue = "حفظ والاستمرار",
		components = "المكونات",
		props = "الأدوات",
		ambient_females = "نساء طبيعيات",
		ambient_male = "رجال طبيعيون",
		animals = "الحيوانات",
		cutscene = "مشاهد القصة",
		gang_female = "نساء العصابات",
		gang_male = "رجال العصابات",
		multiplayer = "اللاعبين المتعددون",
		scenario_female = "نساء السيناريو",
		scenario_male = "رجال السيناريو",
		story = "القصة",
		story_scenario_female = "قصة السيناريو للنساء",
		story_scenario_male = "قصة السيناريو للرجال",
		models = "النماذج",

		features_description = "حدد لتغيير ملامح وجهك.",

		unknown_hair = "شعر غير معروف (${hairId})",
		unknown_eyebrow = "حاجب غير معروف (${eyebrowId})",
		unknown_facial_hair = "شعر الوجه غير المعروف (${facialHairId})",
		unknown_skin_blemish = "عيب الجلد غير المعروف (${skinBlemishId})",
		unknown_skin_aging = "شيخوخة الجلد غير المعروفة (${skinAgingId})",
		unknown_skin_complexion = "لون البشرة غير المعروف (${skinComplexionId})",
		unknown_moles_and_freckles = "الشامات والنمش غير المعروفة (${molesAndFrecklesId})",
		unknown_skin_damage = "ضرر البشرة غير معروف (${skinDamageId})",
		unknown_eye_makeup = "مكياج العيون غير معروف (${eyeMakeupId})",
		unknown_blusher = "أحمر الخدين غير معروف (${blusherId})",
		unknown_lipstick = "أحمر الشفاه غير معروف (${lipstickId})",
		unknown_chest_hair = "شعر الصدر غير معروف (${chestHairId})",

		color = "اللون",
		opacity = "الشفافية",

		hair = "الشعر",
		hair_description = "أجرِ تغييرات على مظهرك.",

		eyebrows = "الحواجب",
		eyebrows_description = "أجرِ تغييرات على مظهرك.",

		facial_hair = "شعر الوجه",
		facial_hair_description = "قم بإجراء تغييرات على مظهرك.",

		skin_blemishes = "عيوب البشرة",
		skin_blemishes_description = "قم بإجراء تغييرات على مظهرك.",

		skin_aging = "شيخوخة البشرة",
		skin_aging_description = "قم بإجراء تغييرات على مظهرك.",

		skin_complexion = "لون البشرة",
		skin_complexion_description = "قم بإجراء تغييرات على مظهرك.",

		moles_and_freckles = "الشامات والنمش",
		moles_and_freckles_description = "قم بإجراء تغييرات على مظهرك.",

		skin_damage = "أضرار الجلد",
		skin_damage_description = "قم بإجراء تغييرات على مظهرك.",

		eye_color = "لون العين",
		eye_color_description = "قم بإجراء تغييرات على مظهرك.",

		eye_makeup = "مكياج العين",
		eye_makeup_description = "قم بإجراء تغييرات على مظهرك.",

		blusher = "الخدود",
		blusher_description = "قم بإجراء تغييرات على مظهرك.",

		lipstick = "أحمر الشفاه",
		lipstick_description = "قم بإجراء تغييرات على مظهرك.",

		chesthair = "شعر الصدر",
		chesthair_description = "قم بإجراء تغييرات على مظهرك.",

		ready_to_start_playing = "هل أنت جاهز للعب؟",
		no = "لا",
		go_back = "العودة.",
		yes = "نعم",
		you_will_not_be_able_to_return = "لن تتمكن من العودة.",

		freemode = "وضع حر",
		freemode_description = "حدد إذا كنت تريد استخدام نموذج حر. تتيح نماذج الوضع الحر إمكانية التخصيص بشكل كبير.",

		sex = "الجنس",
		sex_description = "حدد جنس شخصيتك.",
		male = "ذكر",
		female = "أنثى",

		props_description = "حدد الاكسسوارات المفضلة لديك.",

		hat = "قبعة",
		glass = "نظارة",
		ear = "أذن",
		watch = "ساعة",
		bracelet = "سوار",

		appearance_description = "حدد تغيير مظهرك.",
		components_description = "اختر المكونات المفضلة لديك.",

		none = "لا شيء",

		texture = "النقش ${textureId}",
		drawable = "القابل للرسم ${drawableId}",

		clean_shaven = "خالٍ من اللحية",

		face = "الوجه",
		mask = "القناع",
		hair = "الشعر",
		torso = "الجذع",
		leg = "الساق",
		parachute_and_bag = "المظلة / الحقيبة",
		shoes = "الأحذية",
		accessory = "الإكسسوار",
		undershirt = "القميص الداخلي",
		kevlar = "الكيفلار",
		badge = "شارة",
		torso_two = "الجذع 2"
	},

	crosshair = {
		copied_config = "تم نسخ التكوين للحافظة.",
		imported_config = "تم استيراد التكوين.",
		disabled_crosshair = "تم تعطيل نقطة الرصاص المخصصة.",

		invalid_url_title = "رابط الصورة غير صحيح",
		invalid_url_description = "الرابط الذي أدخلته غير صحيح، يجب أن يكون رابطًا مباشرًا للصورة وليس رابطًا لموقع يحتوي على الصورة. يجب أن يبدأ بأحد الروابط التالية:",
		cancel_button = "موافق",

		center = "الوسط",
		main = "الرئيسية",
		outer = "الخارجية",
		kill = "قتل الوهج",

		enabled = "مفعّل",
		size = "الحجم",
		image = "الصورة",
		length = "الطول",
		offset = "الإزاحة",
		secondary_offset = "الإزاحة الثانوية",
		rotation = "الدوران",
		color = "اللون",
		duration = "المدة (مللي ثانية)"
	},

	clip_saver = {
		start_recording = "بدء التسجيل",
		clip_save = "حفظ المقطع",
		clip_discard = "تجاهل المقطع"
	},

	compass = {
		north = "شمال",
		north_east = "شمال شرق",
		east = "شرق",
		south_east = "جنوب شرق",
		south = "جنوب",
		south_West = "SW",
		west = "غرب",
		north_west = "شمال غرب"
	},

	courthouse = {
		press_to_use_gavel = "أضغط ~INPUT_CONTEXT~ للإستخدام"
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] الأنشطة اليومية",
		daily_activities = "الأنشطة اليومية",
		resets_in = "يعيد في ${resetsIn}...",
		complete_the_other_tasks_to_unlock = "أكمل المهام الأخرى للفتح ...",
		remain = "${remain} تبقى",
		remain_money = "${remain} دولار تبقى",
		claimed = "تم الاستلام",
		claim = "استلام",
		streak_reward = "عندما تكون السلسلة الخاصة بك 7 أيام أو أكثر ، ستحصل على دورة مجانية إضافية يوميًا في العجلة الحظوظة.",

		reset_daily_activities_no_permissions = "حاول اللاعب إعادة تعيين نشاطاته اليومية بدون أذونات كافية.",
		reset_daily_activities = "إعادة تعيين النشاطات اليومية.",

		parachute_from_location = "القفز بالمظلة من ${location}.",
		gamble_at_blackjack = "المقامرة على ${amount} الجولات على طاولة البلاك جاك.",
		bring_in_items = "يُرجى إحضار العناصر التالية.",
		kills_in_arena = "احصل على ${amount} قتل في الأرينا.",
		headshot_kills_in_arena = "احصل على ${amount} قتل رأسي في الأرينا.",
		punch_locals = "قم بضرب ${amount} محليين.",
		move_from_place_to_place = "انتقل من ${from} إلى ${to} خلال ${time} ثانية.",
		put_bets_in_jackpot = "ضع رهانات بقيمة $${amount} في جاكبوت.",
		win_bets_in_jackpot = "احصل على مكافآت بقيمة $${amount} من جاكبوت.",
		chop_vehicles = "قم بتفكيك ${amount} مركبات.",
		purchase_ammo = "شراء ${amount} ذخيرة.",
		collect_items_from_diving = "جمع ${amount}x ${itemLabel} من الغطس.",
		take_zombie_pills = "تناول ${amount} حبة زومبي.",
		dig_up_a_treasure = "حفر كنز باستخدام خريطة الكنز.",
		refine_gems = "تصفية ${amount} أحجار كريمة.",
		visit_location = "زيارة ${location}.",
		visit_the_location = "زيارة ${location}."
	},

	dashcam = {
		video = "فيديو",
		time = "الوقت",
		date = "التاريخ",

		unit_id = "معرف الوحدة",
		unit_name = "اسم الوحدة",
		unit_speed = "سرعة الوحدة",

		state_seal_one = "هذه المركبة مرخصة لدى",
		state_seal_two = "ولاية سان أندرياس",
		state_seal_three = ".تخضع أي استخدام غير مصرح به لعقوبات رادعة بموجب المادة 502 (أ) من قانون العقوبات السعودي رقم 13",

		kmh = "كم/س",
		mph = "ميل/س",

		set_unit_id_to = "تم تعيين رقم وحدتك الآن إلى ${unitId}.",
		reset_unit_id = "تمت إعادة تعيين رقم وحدتك الآن.",
		failed_to_set_unit_id = "فشل في تعيين رقم وحدتك.",
		unit_id_already_set_to = "تم تعيين رقم وحدتك بالفعل إلى ${unitId}.",
		unit_id_already_reset = "تمت إعادة تعيين رقم وحدتك بالفعل.",
		invalid_unit_id = "يجب أن يكون رقم وحدة الرفع عددًا صحيحًا بين 1 و 999.",

		unit_id_vehicles_updated = "تم تحديث مركبات الطوارئ الخاصة بك ليعكس وحدة الهوية الجديدة ${unitId}."
	},

	debug = {
		ped = "رجل",
		vehicle = "مركبة",
		object = "جسم ثلاثي الأبعاد",
		network_id = "معرف الشبكة",
		owned_by_us = "مملوكة من قِبلنا",
		owned_by = "مملوكة من قِبل",
		one_state_set = "تم تعيين حالة واحدة",
		many_states_set = "${count} حالة تم تعيينها",
		no_states = "لا يوجد حالات",
		entity_health = "الصحة ${health}/${maxHealth}",
		owned_by_server = "الخادم",
		first_owned_short = "المالك الأول: ${firstOwned}",
		network_id_side = "معرف الشبكة: ${networkId}",
		no_target = "لا يوجد هدف",
		invalid_radius_parameter = "قيمة المعلمة `radius` غير صحيحة.",
		inject_code_not_developer = "حاول اللاعب حقن كود ولكنه ليس مطورًا.",
		inject_code_invalid_player = "لا يوجد لاعبين برقم هوية الخادم `${serverId}`.",
		inject_code_success_for_everyone = "تم حقن الكود بنجاح للجميع.",
		inject_code_success_for_player = "تم حقن الكود بنجاح لـ ${consoleName}.",
		inject_code_success = "تم حقن الكود بنجاح.",
		inject_code_target_user_not_found = "لم يتم العثور على مستخدم الهدف.",
		inject_code_invalid_text = "نص غير صالح.",
		inject_code_invalid_input = "مدخل غير صالح.",
		inject_code_no_permissions = "لا توجد اذونات.",
		inject_code_user_not_found = "المستخدم غير موجود.",
		inject_code_invalid_url = "رابط غير صالح.",
		inject_code_invalid_radius = "نصف قطر غير صالح.",
		game_pools = "حمامات لعبة:",
		ped_config_flags = "علامات تكوين الشخصية:",
		ped_is = "الشخصية هي:",
		vehicle_is = "المركبة هي:",
		native_calls = "استدعاءات أصلية: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "سرعة اللاعب: ${playerSpeed}",
		player_ped = "معرف الشخصية: ${playerPedId}",
		heading = "التوجّه: ${heading}",
		coords = "الإحداثيات: ${coords}",
		rotation = "الدوران: ${rotation}",
		velocity = "السرعة: ${velocity}",
		ground_material = "مادة الأرض: ${material}",
		g_force = "القوة الجاذبية: ${force}",
		debug_print_f8 = "تمّت طباعة معلومات التصحيح في الصفحة F8",
		no_vehicle_bone = "لا يوجد عظمة \"${boneName}\"",

		distance = "المسافة: ${distance}م",
		distance_first = "تمّ حفظ الموقع الأول.",

		get_search_invalid = "بحث غير صالح (على الأقل حرفان).",

		disabled_ped_bone_debug = "تم تعطيل تصحيح عظمة الشخصية.",

		mph = "mph",
		vehicle_speed = "السرعة: ${speed}",
		vehicle_average = "المتوسط: ${speed}",
		vehicle_top_speed = "أقصى سرعة: ${speed}",
		vehicle_acceleration = "من صفر إلى 60: ${time}",
		vehicle_acceleration_120 = "من صفر إلى 120: ${time}",
		vehicle_acceleration_150 = "من صفر إلى 150: ${time}",
		vehicle_acceleration_force = "قوة الانطلاق: ${force}",

		invalid_network_id = "معرف الشبكة غير صالح.",
		delete_entity_success = "تم حذف الكيان بنجاح بمعرف الشبكة ${networkId}.",
		delete_entity_failed = "فشل في حذف الكيان.",
		delete_entity_no_permissions = "حاول اللاعب حذف كيانٍ دون حصوله على الإذن المناسب.",

		move_entity_success = "تم نقل الكيان بشكل ناجح برقم المعرف الشبكي ${networkId}.",
		move_entity_failed = "فشل في نقل الكيان.",
		move_entity_no_permissions = "حاول اللاعب نقل كيانٍ دون حصوله على الإذن المناسب.",

		fake_lag_updated = "تم تحديث العداد المزيف للتأخير إلى `${counter}`.",
		fake_lag_already_set_to = "يتم بالفعل تعيين العداد المزيف للتأخير إلى`${counter}`.",
		fake_lag_enabled = "تم تفعيل تأخير مزيف بعدد `${counter}`.",
		fake_lag_invalid_counter_value = "القيمة `${counter}` غير صالحة كعداد لتأخير مزيف.",
		fake_lag_disabled = "تم إيقاف تفعيل تأخير مزيف.",
		fake_lag_not_enabled = "لم يتم تفعيل تأخير مزيف.",

		weapon_name_missing = "مفقود معلمة اسم السلاح.",
		weapon_name_invalid = "اسم السلاح `${weaponName}` غير صالح.",
		model_name_missing = "مفقود معلمة اسم النموذج.",
		model_name_invalid = "اسم النموذج `${modelName}` غير صالح.",
		model_view_enabled = "تم تفعيل عرض النموذج.",
		model_view_disabled = "تم تعطيل عرض النموذج.",
		invalid_component = "القطعة `${componentName}` غير صالحة.",

		animation_currently_playing = "يتم تشغيل الآن رسم متحرك.",
		invalid_or_missing_animation_dict = "معجم الرسم المتحرك `${animationDict}` غير صالح أو مفقود.",
		missing_animation_name = "اسم الرسم المتحرك `${animationName}` غير صالح أو مفقود.",
		invalid_animation_flags = "العلامات المتحركة غير صالحة.",
		animation_played = "يتم تشغيل الرسم المتحرك `${animationDict}` `${animationName}` (العلامات: ${flags}).",
		no_flags = "لا يوجد",

		invalid_coordinates = "إحداثيات غير صالحة.",
		added_coordinates_draw = "تمت إضافة الإحداثيات `x: ${x}، y: ${y}، z: ${z}` إلى قائمة الرسم برقم التعريف `${drawId}`.",
		no_coordinate_draws_to_destroy = "لم يكن هناك رسومات إحداثيات لتدميرها.",
		destroyed_coordinate_draws = "تم تدمير `${drawingCoordinatesAmount}` رسم إحداثيات.",

		debug_damage_enabled = "تم تمكين تصحيح الأضرار.",
		debug_damage_disabled = "تم تعطيل تصحيح الأضرار.",

		enabled_network_debug = "تم تمكين تصحيح الأخطاء لشبكة Entity.",
		disabled_network_debug = "تم إيقاف تفعيل تصحيح الشبكة للكيانات.",
		failed_network_debug = "فشل تفعيل تصحيح الشبكة للكيانات.",

		network_owner_subscription_no_permissions = "حاول الاشتراك في أصحاب الكيانات على الشبكة بدون الإذن المناسب.",

		missing_ipl = "معلمة ipl مفقودة.",
		enabled_ipl = "تم تمكين ipl `${ipl}` بنجاح.",
		disabled_ipl = "تم تعطيل ipl `${ipl}` بنجاح.",

		enabled_ipl_globally = "تم تمكين ipl `${ipl}` بنجاح على المستوى العالمي.",
		failed_enabled_ipl_globally = "فشل تمكين ipl على المستوى العالمي.",
		disabled_ipl_globally = "تم تعطيل ipl`${ipl}` بنجاح على مستوى الخادم.",
		failed_disabled_ipl_globally = "فشل في تعطيل ipl على مستوى الخادم.",

		enabled_ipls_list = "IPLs المفعل: ${list}.",
		no_ipls_enabled = "لا توجد IPLs مفعلة.",

		missing_code = "مفقود معلمة الكود.",
		run_code_success = "تم تنفيذ مقطع الكود بنجاح.",
		run_code_error = "حدث خطأ في مقطع الكود.",

		searching_world = "البحث في العالم:\n${modelNames}",
		copied_clipboard = "تم نسخ الإحداثيات إلى الحافظة.",

		saved_vehicle_model_lists_to_file = "تم حفظ قوائم نماذج السيارات في ملف على الخادم.",

		network_debug_logs_title = "تبديل تعقب الأخطاء لشبكة Entity",
		network_debug_logs_details_on = "${consoleName} قام بتفعيل تصحيح أخطاء الشبكة الخاص به.",
		network_debug_logs_details_off = "${consoleName} قام بإيقاف تصحيح أخطاء الشبكة الخاص به."
	},

	debug_menu = {
		menu_title = "قائمة الإصلاح",

		timecycles = "دورات الوقت",
		weather = "الطقس",
		reset = "إعادة تعيين",
		refresh_interior = "تحديث الداخلية"
	},

	dna_evidence = {
		taking_sample = "جمع عينة من الحمض النووي",
		already_taking_sample = "أنت بالفعل تقوم بجمع عينة من حمض نووي للاعب.",
		sample_no_player = "لا يوجد لاعب بالقرب منك يمكنك جمع عينة حمض نووي منه.",
		sample_no_bags = "ليس لديك أي حقائب أدلة.",
		dna_evidence_bag = "حقيبة أدلة حمض نووي",

		evidence_failed = "فشل في جمع أدلة من الحمض النووي.",

		evidence_text = "نوع الأدلة: حمض نووي\nجمع حمض نووي من ${fullName} #${characterId}\n\nمعلومات إضافية:\n • وقت جمع العينة: ${time}"
	},

	doors = {
		locked = "مقفول",
		unlocked = "مفتوح",
		locked_press_to_unlock = "[${InteractionKey}] مغلق",
		unlocked_press_to_lock = "[${InteractionKey}] مفتوح",
		locking = "يتم الإغلاق",
		unlocking = "يتم الفتح",
		jewelry_store_closed = "محل المجوهرات مغلق حاليًا. يرجى العودة في وقت لاحق.",
		bank_closed = "البنك مغلق حاليًا. يرجى العودة في وقت لاحق.",
		store_closed = "المتجر مغلق حاليًا. يرجى العودة في وقت لاحق.",
		failed_to_sync_doors = "فشل في مزامنة الأبواب. هناك خلل محتمل. يرجى المحاولة مرة أخرى.",
		saved_doors_to_file = "تم حفظ `${amount}` أبواب في ملف على الخادم.",
		no_nearby_doors = "لا يوجد أبواب قريبة للحفظ.",
		lockpicking_door = "تفتيش الباب",

		debug_doors_on = "تم تفعيل تصحيح الأخطاء للأبواب.",
		debug_doors_off = "تم إيقاف تصحيح الأخطاء للأبواب.",
		doors_no_job = "غير معروف"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] استخدم المصعد",
		elevator_title = "المصعد",
		close_menu = "إغلاق",
		already_on_floor = "أنت بالفعل في هذا الطابق.",

		no_elevator_nearby = "لا يوجد مصعد قريب.",
		elevator_enabled = "تم تفعيل المصعد #${elevatorId} بنجاح.",
		elevator_disabled = "تم تعطيل المصعد رقم #${elevatorId} بنجاح.",
		elevator_toggle_failed = "فشل في تبديل المصعد.",
		elevator_enabled_all = "تم تفعيل جميع المصاعد بنجاح.",

		out_of_service = "خارج الخدمة",
		out_of_service_help = "هذا المصعد غير متاح حاليًا.",

		current = "الحالي",
		up = "صعودا",
		down = "هبوطا",

		floor_tunnel_entrance = "مدخل النفق",
		floor_underground_tunnel = "نفق تحت الأرض",

		floor_lounge = "صالة الاستراحة",

		floor_garage = "المرآب",
		floor_lobby = "اللوبي",
		floor_roof = "السطح",
		floor_helipad = "منصة هليكوبتر",

		floor_shop = "متجر",

		floor_casino = "كازينو",
		floor_security = "الأمن",
		floor_loading_bay = "منصة الشحن",
		floor_vault = "غرفة الخزانة",

		floor_second_floor = "الطابق الثاني",
		floor_icu = "العناية المركزة",
		floor_ground = "الطابق الأرضي",
		floor_surgery = "العمليات الجراحية",

		floor_entrance = "المدخل",
		floor_server_room = "غرفة الخادم",

		floor_50 = "الطابق 50",
		floor_49 = "الطابق 49",
		floor_47 = "الطابق 47",
		floor_basement = "البدروم",

		floor_exclusive_dealership = "وكالة سيارات حصرية",
		floor_mayors_office = "مكتب العمدة",
		floor_mechanic_shop = "ورشة ميكانيك",

		floor_fourth_floor = "الطابق الرابع",
		floor_third_floor = "الطابق الثالث",

		floor_obelisk = "المسلة",
		floor_hangout = "مكان الاجتماع والترفيه",
		floor_penthouse = "الشقة الفاخرة",
		floor_theatre_office = "مكتب المسرح",
		floor_psychiatrists_office = "عيادة الطبيب النفسي",
		floor_nightclub_garage = "كراج نادي الليل",
		floor_submarine = "الغواصة",

		floor_lower_penthouse = "الشقة الفاخرة الدنيا",
		floor_middle_penthouse = "الشقة الفاخرة الوسطية",
		floor_upper_penthouse = "الشقة الفاخرة العليا",

		floor_showroom = "قاعة العرض",
		floor_office = "المكتب",
		floor_doj_office = "مكتب دائرة العدالة الأمريكية",

		floor_penthouse_top = "الشقة الراقية (الطابق العلوي)",
		floor_penthouse_entrance = "الشقة الراقية (المدخل)",

		floor_containment = "غرفة الحجز",

		doj_office = "مكتب دائرة العدالة الأمريكية"
	},

	emails = {
		title = "OP البريد الالكتروني",
		email_domain = "san-andreas.gov",

		app_title = "البريد الالكتروني",

		error_loading_emails = "حدث خطأ أثناء محاولة تحميل بريدك الإلكتروني.",

		new_email_notification = "~o~رسالة جديدة",

		email_label = "البريد الالكتروني",
		password_label = "كلمة المرور",
		set_password = "تعيين كلمة المرور",
		inbox = "صندوق الوارد",
		outbox = "المرسلات",
		new_email = "بريد جديد",

		loading = "جاري التحميل...",
		failed_load_email = "فشل تحميل محتوى البريد الإلكتروني.",

		from_label = "من:",
		to_label = "إلى:",

		send_email = "إرسال",

		no_emails = "لا توجد رسائل.",
		to_email = "إلى ${email}",

		error_no_subject = "الموضوع مفقود.",
		error_invalid_target = "بريد إلكتروني غير صالح.",
		error_subject_too_long = "عنوان البريد الإلكتروني طويل جداً.",
		error_body_too_long = "محتوى البريد الإلكتروني طويل جداً.",
		error_body_missing = "محتوى البريد الإلكتروني مفقود.",
		error_failed_send = "فشل إرسال البريد الإلكتروني.",
		error_password_empty = "لا يجوز أن يكون كلمة المرور فارغة.",
		error_password_update_failed = "فشل تحديث كلمة المرور."
	},

	emote_items = {
		give_item = "[${InteractionKey}] أعطِ ${itemName}",
		received_item = "أعطاك ${firstName} ${itemName}.",
		give_item_success = "تم إعطاء ${itemName} بنجاح للعبة.",
		give_item_failed = "فشل في إعطاء ${itemName} للاعب."
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] شراء ${label} بمبلغ $${price}",

		confirm_purchase = "تأكيد الشراء",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "لا يهمني، لا أريد شرائها",
		accept_purchase = "نعم، أريد شرائها",
		accept_purchase_info = "هل أنت متأكد من شراء هذه السيارة؟ هذا الإجراء لا يمكن التراجع عنه.",

		purchased_vehicle = "تم شراء ${label} بقيمة $${price}.",
		insufficient_funds = "الأموال غير كافية.",
		area_not_clear = "منطقة الإنزال غير واضحة.",
		invalid_package = "دفعة داعمة غير صحيحة.",
		something_went_wrong = "حدث خطأ ما.",

		failed_vehicle_spawn = "فشل في استدعاء السيارة. السيارة ستظهر في جراجك.",

		next_rotation_in = "الدورة التالية في: ${time}",

		exclusive_dealership_blip = "متجر إكسكلوسيف ديلوكس موتورسبورت",

		log_title = "شراء من متجر EDM",
		log_description = "تم شراء `${label}` بقيمة $${price}."
	},

	failures = {
		engine_failure_chance = "تم تحديد فرصة عطل المحرك على `${chance}`.",
		failure_chance_invalid = "يجب أن تكون فرصة عطل المحرك بين 1 و 1500.",
		engine_failure_reset = "تم إعادة تعيين فرصة عطل المحرك إلى الافتراضي."
	},

	fake_ids = {
		press_to_purchase = "أضغط ~INPUT_CONTEXT~ لشراء هوية مزورة.",

		store_title = "متجر هويات مزورة",

		female_id = "هوية مزورة للإناث",
		male_id = "هوية مزورة للذكور",
		close_menu = "إغلاق القائمة",

		logs_purchased_title = "تم شراء الهوية المزورة",
		logs_purchased_details = "${consoleName} قام بشراء ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "حدث خطأ ما.",
		failed_not_on_duty = "يجب أن تكون في الخدمة لشراء الهوية المزورة.",
		failed_not_enough_money = "ليس لديك ما يكفي من المال لشراء الهوية المزورة.",
		purchase_success = "تم شراء الهوية المزورة بنجاح مقابل 3,000 دولار."
	},

	fingerprint = {
		taking_fingerprint = "جارٍ أخذ البصمة",
		already_fingerprinting = "أنت تأخذ بالفعل بصمة إحدى اللاعبين.",
		sample_no_player = "لا يوجد لاعب بالقرب الذي يمكنك أخذ بصمته.",
		sample_no_bags = "ليس لديك أي أكياس أدلة.",
		fingerprint_evidence = "بصمة",

		evidence_failed = "فشل في أخذ بصمة.",

		evidence_text = "نوع الدليل: بصمة\nبصمة ${fullName} #${characterId}\n\nمعلومات إضافية:\n • وقت أخذ البصمة: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] إطلاق الألعاب النارية"
	},

	forcefields = {
		invalid_radius = "نصف القطر غير صحيح (يجب أن يكون بين 1 و 200).",
		failed_create = "فشل إنشاء الحقل القوي.",
		forcefield_marker = "الهوية: ${id}",
		invalid_forcefield_id = "هوية الحقل القوي غير صالحة.",
		failed_destroy = "فشل تدمير الحقل القوي.",

		create_forcefield_no_permissions = "حاول اللاعب إنشاء الحقل القوي ولكن لم يكن لديه الصلاحيات المطلوبة للقيام بذلك.",
		destroy_forcefield_no_permissions = "حاول اللاعب تدمير الحقل القوي ولكن لم يكن لديه الصلاحيات المطلوبة للقيام بذلك."
	},

	fortnite = {
		add_building_no_permissions = "حاول اللاعب إضافة بناء فورتنايت ولكن لم يكن لديه الصلاحيات المطلوبة للقيام بذلك.",
		wipe_buildings_no_permissions = "حاول اللاعب إضافة امسح المباني في فورتنايت، لكنه لم يمتلك الصلاحيات اللازمة للقيام بذلك.",

		no_buildings_in_radius = "لا يوجد مبانٍ ضمن نطاق نصف قطر يبلغ ${radius}.",
		no_buildings = "لا توجد مبانٍ.",
		wiped_buildings_in_radius = "امسح ${removedBuildings} مبنىً ضمن نطاق نصف قطر يبلغ ${radius}.",
		wiped_buildings = "امسح ${removedBuildings} مبنىً."
	},

	freecam = {
		enabled_freecam = "تمكَّنت Freecam.",
		disabled_freecam = "تعطيل Freecam.",
		freecam_failed = "فشل تمكين Freecam. هل أنت تملك Noclip أو أدوات مشابهة؟",

		freecam_logs_title = "تشغيل أو تعطيل Freecam المجانية",
		freecam_on_logs_details = "${consoleName} لقد قام بتشغيل Freecam المجانية.",
		freecam_off_logs_details = "${consoleName} لقد قام بإيقاف Freecam المجانية.",

		track_player_logs_title = "التتبع",
		track_player_logs_details = "${consoleName} قام بوضع ${targetName} كهدف للتتبع باستخدام orbitcam.",

		freecam_no_permission = "حاول تشغيل Freecam المجانية دون الأذونات المطلوبة.",
		track_player_no_permission = "حاول تتبع لاعب باستخدام Freecam المجانية دون الأذونات المطلوبة.",

		freecam_inactive = "أنت لست في وضع Freecam حاليًا.",
		added_point = "تمت إضافة نقطة للكاميرا برقم ${index} (الانتقال: ${transition}ms).",
		disable_freecam = "يرجى إيقاف الـ Freecam لتكرار النقاط.",
		not_enough_points = "تحتاج على الأقل إلى نقطتين للتشغيل.",
		already_replaying = "أنت تكرر بالفعل نقاط الكاميرا.",
		cleared_points = "تم مسح جميع نقاط الكاميرا.",
		replaced_point = "تم استبدال نقطة الكاميرا برقم ${index} (الانتقال: ${transition}ms).",
		moved_to_point = "تم نقل الـ Freecam إلى نقطة الكاميرا ${index} (الانتقال: ${transition}ms).",
		invalid_point_index = "مؤشر نقطة الكاميرا غير صالح."
	},

	frisk = {
		frisk_no_player = "لا يوجد لاعب قريب يمكنك تفتيشه.",
		already_frisking = "أنت تفتش عن لاعب بالفعل.",
		frisk_failed = "فشل تفتيش اللاعب.",
		frisking = "تفتيش اللاعب",

		frisk_category_0 = "يبدو أنه لا يمتلك أي أسلحة.",
		frisk_category_1 = "يبدو أنه ربما يحمل سلاحًا.",
		frisk_category_2 = "يبدو أنه يحمل سلاحًا.",
		frisk_category_3 = "يبدو أنه يحمل سلاحًا كبيرًا بالتأكيد.",
		frisk_category_4 = "يحمل سلاحًا كبيرًا بالتأكيد."
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] انتقل لـ ${fruit}",
		picking_fruit = "جاري الحصاد من ${fruit}",

		shake_tree = "اضغط ~INPUT_CONTEXT~ لهز الشجرة.",
		shaking_tree = "جاري هز الشجرة",

		tree_klonk = "هناك شيء سقط من الشجرة وضرب رأسك."
	},

	gas_masks = {
		gas_grenade = "قنبلة غاز",
		in_gas_circle = "في دائرة الغاز!",
		not_in_gas_circle = "ليس في دائرة الغاز.",
		gas_time_left = "لديك ${gasTime} ثواني متبقية لاستخدام قناع الغاز.",
		hold_to_take_gas_mask_off = "استمر في الضغط على ~INPUT_VEH_HEADLIGHT~ لتلبس القناع.",
		hold_to_take_gas_mask_off_holding = "لازل في الضغط لإزالة القناع."
	},

	gps = {
		altitude = "الإرتفاع",
		latitude = "خط العرض",
		longitude = "خط الطول",
		speed = "السرعة",

		distance = "المسافة",
		heading = "الإتجاه",

		reset_target = "تصفير الهدف في نظام تحديد المواقع.",
		set_gps_target = "تعيين هدف نظام تحديد المواقع إلى ${x}، ${y}.",
		gps_blip = "هدف GPS",
		no_gps_item = "ليس لديك جهاز GPS.",

		collar_no_target = "لا يوجد هاتف مرتبط بهذا الطوق.",
		collar_timeout = "لقد قمت بإرسال إشارة تعقب مؤخراً، يرجى الإنتظار لبعض الوقت قبل إرسال الإشارة مرة أخرى.",
		collar_sent = "تم إرسال تعقب بنجاح لـ ${firstName} ${lastName} (${phoneNumber}).",

		mph = "ميل في الساعة",
		kph = "كيلومتر في الساعة",
		ft = "قدم",
		m = "متر",
		km = "كيلومتر",
		mi = "ميل",
		deg = "درجة"
	},

	gravity = {
		gravity_success_on = "تم تعطيل الجاذبية لـ ${consoleName}.",
		gravity_success_off = "تم تمكين الجاذبية مرة أخرى لـ ${consoleName}.",
		gravity_client_failed = "فشل تبديل الجاذبية لـ ${consoleName}.",
		gravity_failed = "حدث خطأ ما عند محاولة تبديل الجاذبية.",
		invalid_server_id = "معرف الخادم غير صالح.",
		yourself = "نفسك"
	},

	gravity_gun = {
		name_override = "سلاح الجاذبية",

		failed_item_spawn = "فشل إنشاء سلاح الجاذبية."
	},

	grills = {
		campfire = "نار مخيم",
		use_campfire = "[${InteractionKey}] استخدم النار المخيم",
		grill = "شواية",
		use_grill = "[${InteractionKey}] استخدم الشواية"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] أدخل النقود",
		using_gumball_machine = "يتم إدخال النقود",
		not_enough_money = "لا يوجد لديك ما يكفي من النقود لشراء حلوى اللثة.",
		something_went_wrong = "حدث خطأ ما أثناء محاولة شراء حلوى اللثة.",

		flavor = "حلوى اللثة (${flavor})"
	},

	gun_running = {
		insert_key = "أدخل المفتاح: ${key}",
		wrong_key = "لقد استخدمت المفتاح الخاطئ.",
		decrypting = "فك التشفير",
		guns_disabled = "تم تعطيل بيع الأسلحة حالياً.",
		high_level_cooldown = "فشل الاتصال مع خادم النفوذ الفدرالي، حاول مرة أخرى في وقت لاحق.",
		failed_start_run = "فشل بدء توصيل الأسلحة.",
		hack_timeout = "انقطع الاتصال بالخادم، حاول مرة أخرى.",

		drop_blip = "صندوق الأسلحة",

		drill_container = "اضغط ~INPUT_CONTEXT~ لفتح الصندوق بالمثقاب.",

		drilling_container = "جاري فتح الصندوق بالمثقاب.",
		failed_drill = "فشلت في فتح الصندوق بالمثقاب.",
		drill_success = "تم فتح الصندوق بالمثقاب بنجاح، وتم العثور على ${item} بعدد 1.",

		started_run_logs_title = "جريمة تهريب الأسلحة",
		started_run_logs_details = "${consoleName} بدأ عملية تهريب الأسلحة.",
		finished_run_logs_title = "إسقاط شحنة التهريب",
		finished_run_logs_details = "${consoleName} استخرج حاوية الأسلحة بنجاح وحصل على ${item} قطعة واحدة."
	},

	gun_trader = {
		press_e_to_talk = "اضغط ~INPUT_CONTEXT~ للتحدث إلى جيم.",
		trader_closed = "متجر جيم مغلق حاليًا.",

		trader_locked = "يحتاج جيم إلى بعض الأشياء منك حتى يتمكن من فتح متجره.",
		unlock_trader = "قدم العنصر لجيم.",

		purchase = "شراء",
		out_of_stock = "إنتهى المخزون",

		failed_trader_closed = "فشل في شراء السلاح، متجر Jim مغلق.",
		failed_no_stock = "فشل في شراء السلاح، لا يوجد مخزون.",
		failed_no_money = "فشل في شراء السلاح، ليس لديك ما يكفي من المال.",
		failed_something_went_wrong = "فشل في شراء السلاح، هناك خطأ ما.",
		failed_trader_not_locked = "فشل في فتح القفل، متجر Jim مفتوح بالفعل.",
		failed_no_item = "فشل في فتح القفل، جيم لا يحتاج إلى هذا العنصر.",
		failed_no_enough_items = "فشل في فتح القفل، ليس لديك ما يكفي من هذا العنصر.",

		bought_gun_logs_title = "متجر جيم للأسلحة",
		bought_gun_logs_details = "${consoleName} قام بشراء ${itemName} بمبلغ ${price}$ من جيم.",

		trader_active = "تاجر (مفتوح)",
		trader_inactive = "تاجر (مغلق)",

		slogan_1 = "تذكر قاعدة القتال بالأسلحة النارية الأولى...يجب أن يكون لديك سلاح!",
		slogan_2 = "الأسلحة النارية لها عدوان فقط: الصدأ والسياسيين",
		slogan_3 = "عند الشك...أظهر السلاح!",
		slogan_4 = "سلاح في اليد يعتبر أفضل من شرطي على الهاتف.",

		copyright = "حقوق الطبع والنشر © 2009-2016 متجر جيم للأسلحة بولاية كارولاينا الشمالية."
	},

	hacking = {
		local_disk = "القرص المحلي (C:)",
		network = "الشبكة",
		external_device = "الجهاز الخارجي (J:)",
		hack_connect = "HackConnect.exe",
		brute_force = "BruteForce.exe",

		my_computer = "جهازي",
		power_off = "إيقاف التشغيل",

		password_cracked = "تم اختراق كلمة المرور!",
		brute_force_failed = "فشلت عملية الاختراق!",

		writing_data = "يتم كتابة البيانات في الذاكرة المؤقتة...",
		executing_code = "يتم تنفيذ الشفرة الخبيثة...",
		memory_leak_detected = "تم اكتشاف تسرب الذاكرة، يتم إيقاف التشغيل..."
	},

	halloween = {
		is_in_school = "هو في المدرسة: ${isInSchool}",
		yes = "نعم",
		no = "لا",
		press_to_hide_in_locker = "اضغط ~INPUT_CONTEXT~ للاختباء داخل الخزانة.",
		locker_is_occupied = "الخزانة مشغولة.",
		press_to_exit_locker = "اضغط ~INPUT_CONTEXT~ للخروج من الخزانة.",
		failed_to_start_escape_room = "فشل في بدء غرفة الهروب.",
		started_escape_room = "تم بدء غرفة الهروب مع ${playerAmount} لاعبين.",
		start_escape_room_missing_permissions = "حاول اللاعب بدء غرفة الهروب ولكن لم يكن لديه الصلاحيات المطلوبة للقيام بذلك.",
		escape_instructions = "عند الانتهاء، ستفتح الأبواب ويمكنك مغادرة المبنى.",
		answer_the_phone = "الرد على الهاتف.",

		-- NOTE: temp
		none = "لا شيء"
	},

	health = {
		successfully_revived_player = "تم إحياء ${consoleName} بنجاح.",
		successfully_revived_player_removed_injuries = "تم إحياء ${consoleName} بنجاح وإزالة إصابتهم.",
		successfully_revived_everyone = "تم إحياء الجميع بنجاح.",
		successfully_revived_everyone_removed_injuries = "تم إحياء الجميع بنجاح وإزالة إصاباتهم.",
		failed_to_revive = "فشل في تنفيذ أمر `/revive` بشكل صحيح.",
		revive_player_not_staff = "حاول اللاعب إحياء لاعب آخر ولكنه لم يكن لديه الأذونات اللازمة للقيام بذلك.",
		revive_self_not_staff = "لقد حاول اللاعب إحياء نفسه، لكنه ليس لديه الصلاحيات الكافية للقيام بذلك.",
		revived_self_removed_injuries_title = "أحيا نفسه وأزال الإصابات",
		revived_self_removed_injuries_details = "${consoleName} أحيا نفسه وأزال إصاباته.",
		revived_self_title = "أحيا نفسه",
		revived_self_details = "${consoleName} أحيا نفسه.",
		revived_everyone_removed_injuries_title = "أحيا الجميع وأزال الإصابات",
		revived_everyone_removed_injuries_details = "${consoleName} أحيا الجميع وأزال إصاباتهم.",
		revived_everyone_title = "تم إحياء الجميع",
		revived_everyone_details = "${consoleName} قام بإحياء الجميع.",
		revived_player_removed_injuries_title = "إحياء اللاعب وإزالة الإصابات",
		revived_player_removed_injuries_details = "${consoleName} قام بإحياء ${targetConsoleName} وإزالة إصاباتهم.",
		revived_player_title = "إحياء اللاعب",
		revived_player_details = "${consoleName} قام بإحياء ${targetConsoleName}.",
		get_recent_deaths_not_staff = "محاولة الحصول على الوفيات الأخيرة من قبل اللاعب، ولكنه لا يملك الصلاحيات الصحيحة لذلك.",
		get_player_last_death_not_staff = "قام اللاعب بمحاولة الحصول على وفاة اللاعب الأخير، ولكن لم يكن لديه الأذونات الصحيحة للقيام بذلك.",
		recent_deaths = "الوفيات الأخيرة",
		no_recent_deaths = "لا توجد وفيات أخيرة.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} توفي قبل ${timer} ثواني.",
		target_user_not_found = "المستخدم المستهدف غير موجود.",
		no_server_id_sent = "لا يوجد معرف الخادم المرسل.",
		no_permissions = "ليس لديك الأذونات الكافية.",
		user_not_found = "المستخدم غير موجود.",
		player_death = "وفاة اللاعب",
		player_death_recent = "${consoleName} توفي قبل ${timer} ثواني.",
		no_recent_death = "${consoleName} لم يتوفى مؤخرًا.",
		death_alcohol_poisoning = "لقد فقدت الوعي بسبب التسمم بالكحول.",
		character_has_hardcore_died = "${fullName} توفي بالفعل. يمكنك اختيار شخصية أخرى.",

		death_timer_override_already_set_to = "تم بالفعل تعيين تجاوز مؤقت للموت على `${time}`.",
		set_death_timer_override = "تم تعيين تجاوز مؤقت للموت على `${time}`.",
		time_parameter_is_invalid = "المعلمة 'الوقت' غير صالحة.",
		death_timer_override_removed = "تم إزالة تجاوز مؤقت للموت.",
		no_death_timer_override_set = "لم يتم تعيين مؤقت وفاة.",

		invalid_distance = "مدى إحياء غير صالح (يجب أن يكون بين 1 و 50).",
		no_players_in_range = "لا يوجد لاعبون مصابون في نطاق ${distance} مترًا.",
		successfully_revived_range = "تم إحياء ${amount} لاعبًا بنجاح في نطاق ${distance} مترًا.",
		failed_revive_range = "فشل إحياء اللاعبين.",
		range_revive_not_staff = "حاول اللاعب إحياء لاعبين في نطاق معين، ولكن لم يكن لديه الصلاحيات الصحيحة للقيام بذلك."
	},

	hitmarkers = {
		hitmarkers_enabled = "المؤشرات المتحركة مفعلة.",
		hitmarkers_disabled = "المؤشرات المتحركة معطلة."
	},

	hud = {
		mph = "م/س",
		kmh = "كم/س",
		knots = "عقدة",
		ft = "قدم",
		m = "م",
		belt = "حزام الأمان",
		limiter = "الحد الأقصى",
		fuel = "الوقود",
		nitro = "النيترو",
		battery = "البطارية",
		fps = "إطارات/الثانية",
		ping = "تأخير",
		autopilot = "التوجيه الآلي",
		ground_asl = "أعلى سطح الأرض (AGL/ASL (${unit}))",
		heading = "الاتجاه",
		gear = "التروس",
		rpm = "د/دقيقة",
		degrees = "درجة مئوية",
		degrees_f = "درجة فهرنهايت",
		steps_walked_deaths = "${stepsWalked} خطوةً ~t~/~w~ ${deaths} موت",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "الأكسجين المتبقي: ${timer}",

		muted = "مكتوم",

		fps_unit = "إطار في الثانية",
		ping_unit = "مللي ثانية",

		smart_warnings = "تحذير: ${warnings}!",
		dehydrated = "عطشان",
		starving = "جائع",
		injured = "جريح",
		seriously_injured = "جريح بشكل خطير",
		incapacitated = "عاجز",
		stressed = "مضغوط",

		and_seperator = "و",

		toggle_phone_gps_off = "تغيير حالة GPS في الهاتف إلى إيقاف.",
		toggle_phone_gps_on = "تغيير حالة GPS في الهاتف إلى تشغيل.",

		advanced_hud_on = "تفعيل واجهة HUD المتقدمة.",
		advanced_hud_off = "إيقاف تفعيل واجهة HUD المتقدمة.",

		hud_gauges_on = "تم تفعيل قياسات لوحة العرض.",
		hud_gauges_off = "تم إيقاف قياسات لوحة العرض."
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] اضغط واستمر لنزع الجلد",
		skinning_animal = "تنزيع جلد الحيوان الميت",
		meat_too_damaged = "لحم هذا الحيوان تالف للغاية.",
		animal_is_being_skinned = "جاري نزع جلد الحيوان."
	},

	identification = {
		los_santos = "لوس سانتوس",
		citizen_card = "بطاقة المواطن",
		first_name = "الاسم الأول",
		last_name = "اسم العائلة",
		gender = "الجنس",
		gender_male = "ذكر",
		gender_female = "أنثى",
		date_of_birth = "تاريخ الولادة",
		citizen_id = "رقم هوية المواطن",

		citizenship = "الجنسية",
		citizenship_value = "الولايات المتحدة الأمريكية",
		surname = "اللقب",
		issued_on = "تاريخ الإصدار",
		expires_on = "تاريخ الانتهاء",

		month_1 = "ينا",
		month_2 = "فبرا",
		month_3 = "مارس",
		month_4 = "أبريل",
		month_5 = "مايو",
		month_6 = "يونيو",
		month_7 = "يوليو",
		month_8 = "أغسطس",
		month_9 = "سبتمبر",
		month_10 = "أكتوبر",
		month_11 = "نوفمبر",
		month_12 = "ديسمبر",

		citizen_card_details = "${firstName} ${lastName} | تاريخ الميلاد: ${dateOfBirth} | الجنس: ${gender} | رقم هوية المواطن: ${characterId}",
		just_showed_citizen_card = "لقد عرضت بطاقة المواطن. يرجى الانتظار قليلاً.",

		hunting_license = "رخصة الصيد",
		hunting_license_details = "رخصة الصيد | ${firstName} ${lastName} | رقم الهوية: ${characterId}",
		fishing_license = "رخصة الصيد",
		fishing_license_details = "رخصة الصيد | ${firstName} ${lastName} | رقم الهوية: ${characterId}",
		pilot_license = "رخصة الطيران",
		pilot_license_details = "رخصة الطيران | ${firstName} ${lastName} | رقم الهوية: ${characterId}",
		weapon_license = "رخصة الأسلحة",
		weapon_license_details = "رخصة الأسلحة | ${firstName} ${lastName} | رقم الهوية: ${characterId}",
		just_showed_license = "لقد قمت للتو بعرض الترخيص. يرجى الانتظار قليلاً.",

		just_showed_badge = "لقد قمت للتو بعرض شارة الهوية. يرجى الانتظار قليلاً.",
		sasp_badge = "شارة ساسب",
		sasp_badge_details = "ساسب | ${firstName} ${lastName} | المنصب: ${positionName}",
		bcso_badge = "شارة بكسو",
		bcso_badge_details = "بكسو | ${firstName} ${lastName} | المنصب: ${positionName}",
		sahp_badge = "شارة صهب",
		sahp_badge_details = "صهب | ${firstName} ${lastName} | المنصب: ${positionName}",
		iaa_badge = "شارة الوكالة الدولية للتحقيقات",
		iaa_badge_details = "الوكالة الدولية للتحقيقات | ${firstName} ${lastName} | المنصب: ${positionName}",
		fib_badge = "شارة فايب",
		fib_badge_details = "فايب | ${firstName} ${lastName} | المنصب: ${positionName}",
		swat_badge = "شارة SWAT",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | المنصب: ${positionName}",
		management_badge = "شارة الإدارة",
		management_badge_details = "الإدارة | ${firstName} ${lastName} | المنصب: ${positionName}",
		ems_badge = "رقم هوية الإسعاف",
		ems_badge_details = "الإسعاف | ${firstName} ${lastName} | المنصب: ${positionName}",
		doctor_badge = "رقم هوية الطبيب",
		doctor_badge_details = "الطبيب | ${firstName} ${lastName} | المنصب: ${positionName}",
		bcfd_badge = "شارة إطفائية",
		bcfd_badge_details = "إطفاء مقاطعة بلاين | ${firstName} ${lastName} | المنصب: ${positionName}",
		state_security_badge = "هوية أمن الدولة",
		state_security_badge_details = "إدارة أمن الدولة | ${firstName} ${lastName}",
		doj_badge = "هوية وزارة العدل",
		doj_badge_details = "وزارة العدل | ${firstName} ${lastName} | المنصب: ${positionName}",

		badge_type_sasp = "شرطة ولاية سان أندرياس",
		badge_type_bcso = "مكتب شريف مقاطعة بلاين",
		badge_type_sahp = "دوريات الطرق السريعة في سان أندرياس",
		badge_type_iaa = "وكالة الشؤون الداخلية",
		badge_type_fib = "المكتب الفيدرالي للتحقيق",
		badge_type_swat = "الأسلحة الخاصة والتكتيكات الخاصة",
		badge_type_management = "إدارة خدمات الأمن العام",
		badge_type_ems = "الخدمات الطبية الطارئة",
		badge_type_doctor = "الإقامة الطبية",
		badge_type_bcfd = "إدارة الإطفاء في مقاطعة بلاين",
		badge_type_state_security = "إدارة الأمن الحكومي",
		badge_type_doj = "إدارة العدل الحكومي",

		badge_type_short_sasp = "إدارة الأمن العام في سان أندرياس",
		badge_type_short_bcso = "شرطة مقاطعة بلاين",
		badge_type_short_sahp = "شرطة سان أندرياس",
		badge_type_short_iaa = "إدارة الأمن الدولي",
		badge_type_short_fib = "المباحث",
		badge_type_short_swat = "وحدة الطوارئ الخاصة",
		badge_type_short_management = "الإدارة",
		badge_type_short_ems = "الإسعافات الأولية",
		badge_type_short_doctor = "الطبيب",
		badge_type_short_bcfd = "إدارة الحرائق",
		badge_type_short_state_security = "الأمن الوطني"
	},

	import_export = {
		press_to_access = "اضغط ~INPUT_CONTEXT~ للوصول إلى قائمة الاستيراد/التصدير",

		pound = "رطل",
		pounds = "رطل",
		minutes = "دقائق",

		total = "الإجمالي",
		header = "جزيرة كايو بيريكو - الاستيراد / التصدير",
		header_small = "نقل سريع وسهل من وإلى جزيرة كايو بيريكو.",

		loading = "جار التحميل...",

		order_arrived = "وصل",
		claim = "المطالبة",

		claim_cayo = "المطالبة في كايو",
		claim_lsia = "المطالبة في مطار لوس أنجلوس الدولي",

		big_goods = "بضائع كبيرة",
		go_postal = "البريد السريع",
		caipira = "خطوط طيران الكايبيرا",

		no_items = "لا توجد عناصر للتوصيل.",

		confirm_dialog = "هل أنت متأكد من رغبتك في شحن ${total} رطل مقابل $${price}؟ لا يمكن إلغاء هذه الشحنة.",
		confirm = "نعم",

		no_active_order = "ليس لديك شحنة نشطة.",
		order_not_completed = "لم تصل شحنتك بعد.",

		order_claimed = "لقد قمت بالمطالبة بشحنتك.",

		not_enough_items = "ليس لديك عدد كافٍ من العناصر لإرسال الشحنة.",
		not_enough_money = "ليس لديك ما يكفي من المال لإنشاء الشحنة.",
		already_has_order = "لديك شحنة نشطة بالفعل.",
		something_went_wrong = "حدث خطأ ما.",

		order_success = "تم إرسال شحنتك! ستصل خلال ${minutes} دقيقة.",

		created_shipment_title = "تم إنشاء الشحنة",
		created_shipment_details = "${consoleName} قام بإنشاء شحنة بوزن ${weight} رطل بقيمة $${price} مع شركة ${company}.",

		claimed_shipment_title = "تم استلام الشحنة",
		claimed_shipment_details = "${consoleName} قام بالمطالبة بشحنة بوزن ${weight} رطل مع شركة ${company}.",

		blip_label = "استيراد / تصدير"
	},

	injuries = {
		inspect_no_player = "لا يوجد لاعب قريب يمكنك فحصه.",
		already_inspecting = "أنت تفتيش بالفعل لاعبًا.",
		inspect_failed = "فشل في فحص اللاعب.",
		inspecting = "جاري فحص اللاعب.",
		no_injuries = "لا يوجد إصابات أو نزيف",
		patient_bleeding = "المريض يعاني من نزيف.",
		injury = "إصابة ${label}"
	},

	instances = {
		instance_created_added = "أنشئ مثيلًا برقم التعريف الشخصي `${instanceId}` (تمت إضافة اللاعبين: ${serverIds}).",
		instance_created = "تم إنشاء مثيل بمعرف `${instanceId}`.",
		instance_creation_failed = "فشل في إنشاء المثيل.",
		instance_destroyed = "تم تدمير المثيل بمعرف `${instanceId}`.",
		instance_destruction_failed = "فشل في تدمير المثيل.",
		instance_id_parameter_invalid = "معرف المثيل غير صالح.",
		added_player_to_instance = "تمت إضافة ${consoleName} إلى المثيل بمعرف `${instanceId}`.",
		failed_to_add_player_to_instance = "فشل في إضافة اللاعب إلى المثيل.",
		server_id_parameter_invalid = "معرف الخادم غير صالح.",
		removed_player_from_instance = "تمت إزالة ${consoleName} من المثال رقم `${instanceId}`.",
		failed_to_remove_player_from_instance = "فشلت عملية إزالة اللاعب من المثال.",
		instance_players = " اللاعبون الموجودون في المثال رقم `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "فشلت عملية الحصول على اللاعبين الموجودين في المثال.",
		no_players = "لا يوجد لاعبون.",

		instance_hud = "رقم المثال: ${instanceId}",

		create_instance_not_developer = "حاول اللاعب إنشاء مثال ولكنه ليس مطوراً.",
		destroy_instance_not_developer = "حاول اللاعب تدمير عنصر و لكنه ليس مطورًا.",
		add_player_to_instance_not_developer = "حاول اللاعب إضافة لاعب إلى عنصر ولكنه ليس مطورًا.",
		remove_player_from_instance_not_developer = "حاول اللاعب إزالة لاعب من عنصر ولكنه ليس مطورًا.",
		get_players_from_instance_not_developer = "حاول اللاعب الحصول على اللاعبين من عنصر ولكنه ليس مطورًا."
	},

	interiors = {
		in_interior = "في الداخل: ${interiorId} (${portals} بوابات).",
		in_room_id = "في الغرفة: ${roomId} (${roomName}).",
		total_interiors = "مجموع الأماكن الداخلية: ${totalInteriors} (${totalInteriorPortals} مجموع البوابات الداخلية).",
		total_unloaded_interiors = "إجمالي الأماكن الداخلية غير المحملة: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} مجموع بوابات الأماكن الداخلي).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "التحرك إلى هنا للوصول إلى الصندوق الخلفي",

		used = "تم استخدامه",
		added = "تمت الإضافة",

		pounds = "رطل",

		store = "تخزين",
		gas_station = "محطة وقود",
		gas_station_backdoor = "باب خلفي لمحطة الوقود",
		cleaning_station = "محطة تنظيف",
		grocery_store = "متجر بقالة",
		penthouse_fridge = "الثلاجة",
		mug_shots = "صور القلاع",
		prison_store = "متجر السجن",
		fruit_vendor = "بائع الفواكه",
		supermarket = "سوبر ماركت",
		island_store = "متجر الجزيرة",
		travel_agency = "وكالة السفر",
		island_bar = "الحانة على الجزيرة",
		burger_bar = "بار البرغر",
		tool_store = "متجر الأدوات",
		gun_store = "أمو نيشن",
		discount_store = "متجر الخصم",
		gun_store_with_shooting_range = "متجر أمو نيشن مع مدفعية",
		green_wonderland = "عالم جرين",
		irish_pub = "حانة أيرلندية",
		bar = "حانة",
		midnight = "محل تعديل السيارات",
		cinema = "صالة سينما",
		strip_club = "نادي الرقص الشرقي",
		police_store = "متجر الشرطة",
		fib_store = "متجر FBI",
		police_badge_store = "مكتب شارات الشرطة",
		flower_store = "محل زهور ستيسي",
		gift_store = "محل هدايا ديل بيرو",
		ems_store = "متجر EMS",
		drug_store = "صندوق الدواء",
		ems_badge_store = "مكتب شارات EMS",
		doj_badge_store = "مكتب شارات DOJ",
		state_security_store = "متجر الأمن العام",
		pharmacy = "صيدلية",
		chop_shop = "محل تفكيك السيارات",
		courthouse = "قصر العدالة",
		burger_shot = "مطعم برغر شوت",
		burger_shot_fridge = "ثلاجة مطعم برغر شوت",
		erp_shop = "متجر ERP",
		pet_shop = "محل الحيوانات الأليفة",
		bean_machine = "محمصة البن",
		hunting_store = "متجر الصيد",
		fishing_store = "متجر الصيد بالصنارة",
		los_santos_golf_club = "نادي لوس سانتوس للغولف",
		arcade_bar = "مطعم وبار أركيد",
		japanese_restaurant = "مطعم ياباني",
		["945_studios"] = "945 Studios",
		grain_mill = "مطحنة حبوب",
		pd_prefix = "شرطة",
		ems_prefix = "خدمات الطوارئ الطبية",
		government_prefix = "حكومة",
		wonderland_prefix = "بارك وندرلاند",
		br_prefix = "BR",
		inventory_overweight = "!لديك وزن زائد في المخزن",
		vehicle_locked = "!تم قفل السيارة",
		press_to_access_store = "اضغط ~INPUT_REPLAY_SHOWHOTKEY~ للدخول للمتجر",
		press_to_access_locker = "اضغط ~INPUT_REPLAY_SHOWHOTKEY~ للدخول الى الخزانة الخاصة بك",
		press_to_access_shared_storage = "اضغط ~INPUT_REPLAY_SHOWHOTKEY~ للدخول الى المخزن المشترك",

		inspect_weapon = "رقم التسلسلي لـ ${itemName} هو ${itemId}.",
		inspect_weapon_broken = "رقم التسلسلي لـ ${itemName} هو ${itemId}. و يبدو أنه تم تحطيمه بالكامل.",

		searching_dumpster = "جار البحث في صندوق القمامة",

		nameable_title = "اسم العنصر الذي يمكن تسميته:",

		locker_restricted = "يبدو أن هذا العنصر لا يناسب خزانتك.",

		press_to_access_shredder = "[${InteractionKey}] الوصول إلى الجرافة.",

		invalid_item_id = "معرف العنصر غير صالح.",
		item_not_found = "تعذر العثور على العنصر ذو المعرف `${itemId}`.",
		item_lookup = "(${itemId}) ${label} موجود حاليًا في ${inventoryName}:${inventorySlot}.",

		big_inventory_disabled = "إعادة تعيين فتحات العناصر الخاصة بشخصيتك إلى الإعداد الافتراضي.",
		big_inventory_enabled = "زيادة فتحات العناصر الخاصة بشخصيتك مؤقتًا.",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ الوصول إلى ${label}",

		burgershot_counter = "منتجع برغر شوت",

		inventory_name_missing = "معدل الجرد مفقود.",

		shredder_title = "الخردة",
		shredder_description = "تحذير: أي عنصر يتم نقله هنا سيتم حذفه على الفور ولا يمكن استرجاعه.",

		npc_vehicle_inventory = "جرد سيارة NPC",

		store_help = "لشراء شيء ما، اسحب عنصرًا من المخزن الثانوي إلى المخزن الخاص بك.",
		store_tax = "ضريبة المتجر",
		store_tax_percentage = "%${tax} ",

		missing_job = "ليس لديك الوظيفة المطلوبة لاستخدام هذه المخزون.",

		item_is_broken = "هذا العنصر مكسور.",
		battle_royale_item = "يمكن استخدام هذا العنصر فقط في مباريات Battle Royale.",
		battle_royale_item_disallowed = "لا يسمح باستخدام هذا العنصر في مباريات Battle Royale.",

		broken_food = "هذا العنصر فاسد.",
		broken_drugs = "هذا العنصر منتهي الصلاحية.",
		vape_empty = "هذه السجائر الإلكترونية فارغة.",

		craft_combine = "الصنع: <i>${output}</i>",
		combining = "جارٍ الصنع",

		carve_jack_o_lantern = "نحت <i>جاك أو لانترن</i>",
		crush_cocoa_beans = "سحق حبوب <i>الكاكاو</i>",
		mix_hot_chocolate = "خلط الشوكولاتة <i>الساخنة</i>",
		crush_raw_ruby = "سحق الياقوت <i>الخام</i>",
		crush_raw_sapphire = "سحق الياقوت الأزرق <i>الخام</i>",

		search = "بحث",
		amount = "المقدار",
		use = "استخدام",
		close = "إغلاق",

		done = "تم",
		burnt = "حرق",
		danger = "خطر",
		fuel = "الوقود: ${fuel}",

		item_does_stack = "يمكن تراص هذا العنصر.",
		item_does_not_stack = "لا يمكن تراص هذا العنصر.",
		individual_weight = "الوزن الفردي",
		stack_amount = "مقدار التراص",

		logs_secondary_inventory_title = "تم فتح المخزن الثانوي",
		logs_secondary_inventory_details = "${consoleName} فتح مخزن ثانوي بإسم `${inventoryName}`.",
		logs_ground_inventory_created_title = "تم إنشاء مخزن على الأرض",
		logs_ground_inventory_created_details = "${consoleName} أنشأ مخزن على الأرض بإسم `${inventoryName}`.",

		logs_item_moved_title = "تم نقل العنصر",
		logs_item_moved_details = "${consoleName} قام بنقل ${moveAmount} عنصر(أو أكثر) من ${startInventory}:${startSlot} إلى ${endInventory}:${endSlot}. و هو/هي عبارة عن عنصر ${itemLabel}.",

		logs_item_purchased_title = "تم شراء العنصر(أو العناصر)",
		logs_item_purchased_no_tax_details = "${consoleName} قام بشراء ${purchaseAmount}x `${itemLabel}` بقيمة $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} قام بشراء ${purchaseAmount}x `${itemLabel}` بقيمة $${purchaseCost} بمبلغ إضافي يبلغ $${taxCost} بسبب الضريبة على المبيعات بنسبة ${salesTaxPercentage}%. ",

		radius_invalid = "لا يعتبر نصف القطر `${radius}` قيمة صالحة.",
		wiped_all_ground_inventories = "تم مسح ${inventoriesWiped} من المخازن الأرضية.",
		wiped_nearby_ground_inventories = "تم مسح ${inventoriesWiped} من المخازن الأرضية في نصف نصف القطر ${radius}.",
		failed_to_wipe_ground_inventories = "فشل في مسح مخزون الأرض.",
		no_ground_inventories = "لا يوجد مخزون أرضي ليتم مسحه.",
		no_ground_inventories_within_radius = "لا يوجد مخزون أرضي ليتم مسحه ضمن نطاق `${radius}`.",

		wipe_inventories_not_staff = "حاول اللاعب مسح المخزون، لكنه ليس لديه الصلاحيات الكافية للقيام بذلك.",

		logs_wiped_all_ground_inventories_title = "مسح كل مخزون الأرض",
		logs_wiped_all_ground_inventories_details = " ${consoleName} قام بمسح كل مخزون الأرض.",

		logs_wiped_nearby_ground_inventories_title = "تم مسح مخزون الأرض القريبة",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} قام بمسح جميع مخزون الأرض الداخلة في نطاق يبلغ `${radius}`.",

		logs_combined_title = "تم دمج العناصر",
		logs_combined_details = "${consoleName} قام بدمج ${inputs} لإنشاء 1× ${output}.",

		press_use_campfire = "[${InteractionKey}] استخدام حريق المخيم",
		use_campfire = "استخدام حريق المخيم",

		dumpster_sandwich = "شطيرة عفنة",
		dumpster_beer = "بيرة باهتة",
		dumpster_milk = "حليب الحمام منتهي الصلاحية",
		dumpster_meat = "لحم مغبر (معفن قليلاً)",
		dumpster_fries = "بطاطس مقلية قديمة",
		dumpster_brownies = "براونيز جافة",
		dumpster_pizza_slice = "شريحة بيتزا معفنة",
		dumpster_banana = "موز مجعد (ناعم للغاية)",

		-- items & item descriptions
		body_armor = "درع الجسم",
		body_armor_description = "ارتدِ درعًا واستعد للحرب، أو فقط لأي يوم آخر في شوارع LS.",
		first_aid_kit = "علبة الإسعافات الأولية",
		first_aid_kit_description = "صندوق الطبيب الشخصي \"افعلها بنفسك\".",
		bandages = "ضمادات",
		bandages_description = "لجميع الجروح والجروح البسيطة.",
		oxygen_tank = "صندوق أكسجين",
		oxygen_tank_description = "حزمة توسع الرئة.",
		ifak = "IFAK",
		ifak_description = "\"حزمة طاقة PD التي تضمن الفوز عند التطبيق. تناول أكثر من 1 سيؤدي إلى شعور بالفوز المريح بالإضافة إلى تسليم جوائز المشاركة للمجرمين عند الانهيار.\"<br><br>-جو, 2020",

		citizen_card = "بطاقة مواطن",
		citizen_card_description = "تعمل كهوية، ترخيص لحمل السلاح ورخصة قيادة.",
		phone = "الهاتف",
		phone_description = "لا يوجد :tm:",
		radio = "الراديو",
		radio_description = "أداة مفيدة لجميع محترفي ألعاب الفيديو!",
		smart_watch = "ساعة ذكية",
		smart_watch_description = "تكره الدفع نقداً في كل مكان؟ استخدم ساعتك الذكية! بالإضافة إلى بوصلة وساعة وملاحة GPS ومتتبع الخطوات! فقط لا تقم بالجري في الساعة 2 صباحاً.",
		tablet = "لوحي",
		tablet_description = "هاتف ذكي كبير جداً.",

		gps = "ملاحة GPS",
		gps_description = "تلبي جميع احتياجات أجهزتك الإلكترونية.",

		gps_collar = "طوق ملاحة GPS",
		gps_collar_description = "طوق ملاحة GPS لتتبع حيواناتك الأليفة.",

		boosting_tablet = "جهاز تعزيز",
		boosting_tablet_description = "يستخدم للحصول على عقود _تمامًا_ قانونية.",

		hunting_license = "رخصة الصيد",
		hunting_license_description = "رخصة صيد للصيد.",
		fishing_license = "رخصة الصيد البحري",
		fishing_license_description = "رخصة صيد للصيد البحري.",
		pilot_license = "رخصة الطيار",
		pilot_license_description = "رخصة طيار للطيران بالطائرات وما شابه ذلك.",
		weapon_license = "رخصة حمل الأسلحة",
		weapon_license_description = "رخصة لحيازة وحمل الأسلحة ذات درجة عالية من الخطورة.",

		sasp_badge = "شارة قسم شرطة سان أندريس",
		sasp_badge_description = "شارة لضباط قسم شرطة سان أندريس.",
		sahp_badge = "شارة شرطة الطرق السريعة في سان أندريس",
		sahp_badge_description = "شارة لضباط شرطة الطرق السريعة في سان أندريس.",
		bcso_badge = "شارة مقاطعة بلين الشيرفي",
		bcso_badge_description = "شارة لنواب مكتب شريف مقاطعة بلين.",
		iaa_badge = "شارة وكالة الشؤون الداخلية",
		iaa_badge_description = "شارة لوكلاء وكالة الشؤون الداخلية.",
		fib_badge = "شارة مكتب التحقيقات الاتحادية",
		fib_badge_description = "شارة لوكلاء مكتب التحقيقات الاتحادية.",
		swat_badge = "شارة الـSWAT",
		swat_badge_description = "شارة لضباط إدارة الأسلحة الخاصة وتكتيكات الشرطة.",
		management_badge = "شارة الإدارة",
		management_badge_description = "شارة لعملاء إدارة إدارة شرطة Blain County.",
		ems_badge = "هوية الـEMS",
		ems_badge_description = "هوية لمضمدي الإسعافات الأولية (EMS).",
		doctor_badge = "هوية الطبيب",
		doctor_badge_description = "هوية للأطباء.",
		bcfd_badge = "إطفائي BCFD",
		bcfd_badge_description = "شارة لمطافئ إطفائية تابعة لمقاطعة Blain.",
		state_security_badge = "هوية أمن الدولة",
		state_security_badge_description = "هوية لعملاء أمن الدولة.",
		doj_badge = "شارة وزارة العدل",
		doj_badge_description = "شارة لموظفي وزارة العدل.",

		radio_chop_shop = "راديو تقطيع السيارات",
		radio_chop_shop_description = "يستخدم لتلقي معلومات عن السيارات 'الساخنة' من الأشخاص المفترضين الذين يعملون في تقطيع السيارات.",

		binoculars = "نظارات بصرية",
		binoculars_description = "جهاز ضروري لكل متسلل يتجول في لوس سانتوس!",
		photo_camera = "كاميرا الصور",
		photo_camera_description = "طورت نيكون وإغنا أحدث كاميرا احترافية في السوق. بفضل العدسة المتقدمة (70-300 مم f/4.5-5.6E)، يمكنك التقاط حتى أدق التفاصيل، حتى الأشياء الصغيرة على الأرض.",

		remote_camera = "كاميرا عن بعد",
		remote_camera_description = "كاميرا يمكن وضعها في أي مكان والاطلاع عليها عن بعد.",
		remote_monitor = "شاشة عرض عن بعد",
		remote_monitor_description = "شاشة عرض محمولة يمكن استخدامها لعرض الكاميرات البعيدة.",

		handcuffs = "الأصفاد",
		handcuffs_description = "لتجربة تمثيل الادوار بالكامل.",
		bolt_cutter = "قاطع البراغي",
		bolt_cutter_description = "تجربة التمثيل لم تكن ممتعة كما كان متوقعًا...",
		drill = "مثقاب",
		drill_description = "رهاني على أن الكثير من الناس هنا سيستفيدون من هذا ... نظرًا لكيف يبدو أنهم لديهم براغي فارغة في رأسهم.",
		umbrella = "مظلة",
		umbrella_description = "استعيد ذاتك الداخلية لـ بوبينز.",
		watch = "ساعة يد",
		watch_description = "لا وقت للحذر.",
		compass = "بوصلة",
		compass_description = "43.3068 N 0.7668 W",
		map = "الخريطة",
		map_description = "يعرض لك مكان وجهتك والأماكن التي زرتها، أو ربما كنت هناك؟",
		glass_breaker = "كسار النوافذ في حالات الطوارئ",
		glass_breaker_description = "يستخدم لكسر الزجاج في السيارات في حالات الطوارئ.",

		picture = "صورة",
		picture_description = "جمع كل ذكرياتك مع أصدقائك.",

		brochure = "كتيب",
		brochure_description = "دليل مفيد للبدء في المدينة.",

		basic_repair_kit = "عدة إصلاح أساسية",
		basic_repair_kit_description = "تجعل الأشياء تعمل، ولكن بشكل محدود.",
		advanced_repair_kit = "عدة إصلاح متقدمة",
		advanced_repair_kit_description = "تستخدم لإصلاح الأرواح المكسورة.",
		basic_lockpick = "مفتاح إختراق بسيط",
		basic_lockpick_description = "يستخدم لفتح الأقفال",
		advanced_lockpick = "مفتاح إختراق متقدم",
		advanced_lockpick_description = "اخفي أطفالك، وزوجتك",
		cleaning_kit = "عدة تنظيف",
		cleaning_kit_description = "مثالية لتنظيف سيارتك، أو البقع الدموية التي تركتها تجف في خلف صندوق السيارة.",

		microphone_bug = "جهاز تنصت صوتي",
		microphone_bug_description = "يستخدم للتجسس على المحادثات.",
		vehicle_tracker = "جهاز تعقب المركبات",
		vehicle_tracker_description = "هذا الجهاز ما يحتاجه مايكل الذي كان لديه شك منذ أكثر من سبع سنوات أن زوجته أماندا تخونه مع مدرب التنس الذي قام بتوظيفها.",
		device_scanner = "ماسح الأجهزة",
		device_scanner_description = "يستخدم للبحث عن الأجهزة الخبيثة القريبة.",
		radio_decryptor = "فك تشفير الراديو",
		radio_decryptor_description = "يفك تشفير ترددات الراديو إذا كانت موصولة بجهاز الراديو.",

		paper_bag = "الحقيبة الورقية",
		paper_bag_description = "مثالية لتخزين البقالة أو ربما رأس شخص ما، ميتًا أو حيًا.",
		burger_shot_delivery = "وجبة برجر شوت",
		burger_shot_delivery_description = "مجموعة رائعة من جميع المأكولات اللحوية اللزجة التي يقدمونها.",
		bean_machine_delivery = "توصيل بين ماشين",
		bean_machine_delivery_description = "حقيبة مليئة بالأطعمة والمشروبات اللذيذة من مقهى رائع في المدينة العليا.",

		ear_defenders = "حماية الأذنين",
		ear_defenders_description = "تستخدم لحماية الأذنين من الضوضاء العالية.",

		clothing_bag = "حقيبة الملابس",
		clothing_bag_description = "لا تقلق بشأن حالات الطوارئ المتعلقة بالموضة مرة أخرى! تتيح لك حقيبة الملابس تخزين زيك المفضل وتجهيزه على الفور في أي مكان تتواجد فيه. تحتوي هذه الحقيبة على سحر الجنية، باستثناء بيبيدي- بوبيدي-بو.",

		raw_morganite = "مورغانيت خام",
		raw_morganite_description = "مورغانيت بشكله الطبيعي، طازج من المنجم.",
		raw_ruby = "ياقوت خام",
		raw_ruby_description = "ياقوت بشكله الطبيعي، طازج من المنجم.",
		raw_sapphire = "ياقوت أزرق خام",
		raw_sapphire_description = "ياقوت أزرق بشكله الطبيعي، طازج من المنجم.",
		raw_emerald = "زمرد خام",
		raw_emerald_description = "زمرد بشكله الطبيعي، طازج من المنجم.",

		ruby_dust = "غبار الياقوت",
		ruby_dust_description = "غبار الياقوت.",
		sapphire_dust = "غبار الياقوت الأزرق",
		sapphire_dust_description = "غبار من الياقوت الأزرق.",

		morganite = "مورغانيت",
		morganite_description = "مورغانيت مقطع وملمع.",
		ruby = "ياقوت",
		ruby_description = "ياقوت مقطع وملمع.",
		sapphire = "ياقوت أزرق",
		sapphire_description = "ياقوت أزرق مقطع وملمع.",
		emerald = "زمرد",
		emerald_description = "زمرد مقطع وملمع.",

		ring = "خاتم",
		ring_description = "مجرد خاتم.",

		morganite_ring = "خاتم مورغانيت",
		morganite_ring_description = "خاتم جميل مع حجر كبير من مورغانيت في الوسط. مثالي للأفراح والأصدقاء الحميمين وأشخاص غرباء تمامًا.",
		ruby_ring = "خاتم الياقوت",
		ruby_ring_description = "خاتم جميل يحتوي على ياقوت كبير في المنتصف. مثالي للزفاف، الأصدقاء الأوفياء أو الغرباء التامين.",
		sapphire_ring = "خاتم الياقوت الأزرق",
		sapphire_ring_description = "خاتم جميل يحتوي على ياقوت أزرق كبير في المنتصف. مثالي للزفاف، الأصدقاء الأوفياء أو الغرباء التامين.",
		emerald_ring = "خاتم الزمرد",
		emerald_ring_description = "خاتم جميل يحتوي على زمرد كبير في المنتصف. مثالي للزفاف، الأصدقاء الأوفياء أو الغرباء التامين.",
		diamond_ring = "خاتم الماس",
		diamond_ring_description = "خاتم جميل يحتوي على ماسة كبيرة في المنتصف. مثالي للأفراح، أفضل الأصدقاء، أو الغرباء.",

		gemstone_scanner = "جهاز فحص الأحجار الكريمة",
		gemstone_scanner_description = "مفيد لفحص الأحجار الكريمة.",

		extended_clip = "مشبك ممتد",
		extended_clip_description = "أقل عدد من عمليات إعادة التحميل.",
		grip = "قبضة",
		grip_description = "قبضة للبندقية.",
		sight = "رؤية هولوغرافية",
		sight_description = "كيفية تحسين الهدف.",
		scope = "منظار",
		scope_description = "لكي تحصل على مكافآت الضربات من بعيد.",
		suppressor = "كاشف الصوت",
		suppressor_description = "بانج بانج تحوّل إلى بيو بيو.",
		flashlight = "مصباح الإضاءة",
		flashlight_description = "انظر في الظلام.",
		extended_pistol_clip = "مخزن مدمج (مسدّس)",
		extended_pistol_clip_description = "توقف عن إعادة شحن الذخيرة.",
		extended_smg_clip = "مخزن مدمج (رشّاش)",
		extended_smg_clip_description = "توقف عن إعادة شحن الذخيرة.",
		extended_shotgun_clip = "مخزن مدمج (بندقية)",
		extended_shotgun_clip_description = "توقف عن إعادة شحن الذخيرة.",
		drum = "مخزن دوّار",
		drum_description = "لا تعد تعادل الذخيرة.",
		pistol_sight = "تكبيد المسدس",
		pistol_sight_description = "كيفية تصحيح الهدف السيئ.",

		aluminium_plate = "لوح الألمنيوم",
		aluminium_plate_description = "تحذير: لا يحمي ضد الرصاص ... مدمن المخدرات.",
		aluminium_rod = "قضيب الألمنيوم",
		aluminium_rod_description = "حاول عدم ضرب أصدقائك بقضيب الألمنيوم بشكل عنيف.",
		copper_nugget = "قطعة نحاسية",
		copper_nugget_description = "لقطة صغيرة من هذا الشيء العسل الذهبي.",
		copper_wire = "سلك نحاسي",
		copper_wire_description = "أسلاك قابلة للتعديل يمكن استخدامها لأي شيء إلكتروني.",
		lens = "عدسة",
		lens_description = "يستخدم في النظارات والمجاهر، ما الذي يشغلك يا مهووس؟",
		polymer_resin = "راتنج بوليمر",
		polymer_resin_description = "ليس نوعًا من المواد المدخنة، لكن لا تزال مذهلة.",
		screws = "مسامير",
		screws_description = "ماذا تفعلون؟ تثبيت؟",
		spring = "ينابيع",
		spring_description = "لا أعرف لماذا، لكن الناس يحبون تنظيف هذه الأشياء.",

		grenade_shell = "قذيفة قنبلة",
		grenade_shell_description = "جراب للقنبلة.",
		grenade_pin = "دبوس قنبلة",
		grenade_pin_description = "دبوس للقنبلة.",

		paint = "الدهان",
		paint_description = "مفيد للسياج والمنازل ، فقط لا تبدأ في تنفيسه.",
		paint_brush = "فرشاة الرسم",
		paint_brush_description = "مفيدة للرسم.",

		skin_patriotic = "بشرة وطنية",
		skin_patriotic_description = "لجميع الأمريكيين الأحمر الدمويين هناك.",
		skin_brushstroke = "بشرة الفرشاة",
		skin_brushstroke_description = "لجميع عشاق الفن هناك.",
		skin_skull = "بشرة الجمجمة",
		skin_skull_description = "لجميع الأطفال المتمردين هناك.",
		skin_leopard = "بشرة النمر",
		skin_leopard_description = "لجميع محبي الحيوانات البرية.",
		skin_zebra = "جلد الحمار الوحشي",
		skin_zebra_description = "لجميع محبي الحيوانات البرية.",
		skin_geometric = "جلد هندسي",
		skin_geometric_description = "لجميع هواة الرياضيات.",

		refillable_bottle = "زجاجة قابلة لإعادة الاستخدام",
		refillable_bottle_description = "انقذ سلاحف البحر حقيقةً وعلى الإله للأبد.",

		capri_sun = "كابري سان",
		capri_sun_description = "مشروب لذيذ من طفولتك.",

		gumball = "حلوى اللثة",
		gumball_description = "حلوى اللثة، ماذا تريد أن أقول أكثر؟",

		water = "ماء",
		water_description = "خطر! ثنائي أكسيد الهيدروجين عديم اللون والرائحة. يمكن أن يؤدي استنشاق DHMO عن طريق الخطأ إلى الوفاة. يسبب التعرض المطول لشكله الصلب أضراراً جسيمة في الأنسجة. تشمل أعراض استهلاك DHMO التعرق المفرط والتبول، وربما شعور متورم وغثيان وقيء وعدم توازن الكهربوليتات في الجسم.",
		hamburger = "همبرغر",
		hamburger_description = "طعم أمريكا!",
		belgian_fries = "بطاطس فرنسية بلجيكية",
		belgian_fries_description = "لتحسين الطعم، ارسل رسالة إلى @Giv3n#0753 واكتب له 'fritas'.",
		coke = "كوكاكولا",
		coke_description = "بابلو؟",
		wonder_waffle = "وندر وافل",
		wonder_waffle_description = "نباتي، خالٍ من اللاكتوز، خالٍ من المنتجات الألبانية، خالٍ من البيض، خالٍ من الجلوتين، عضوي، خالٍ من المضادات الحيوية، خالٍ من صفار البيض، خالٍ من المكسرات، غير معدل وراثياً، خالٍ من السكر، خالٍ من الدهون، منخفض الكربوهيدرات",
		cheeseburger = "تشيز برغر",
		cheeseburger_description = "جامده فشخ، دهني، مطاطي، ديلوكس مزدوج، مشبعة بالدهون، مزدوج مشبعة بالزيوت، لذيذ، كبير، دهني، بارد و دهني، مزدوج اعتيادي، سمين جداً، المعسل جرس، بدين، عظيم، حجمه كبير، ديلوكس، رائع، مزدوج، دهني، اعتيادي، ثلاثي، مطاطي، لذيذ، مثير، معتدل، رطب، دهني، كبير جداً، مجاني",
		donut = "دونات",
		donut_description = "لماذا يوجد فجوة في الوسط؟",
		green_apple = "تفاح أخضر",
		green_apple_description = "هو مثل ريد بول، ولكن لم يكن هناك أجسام في اللعبة تتطابق مع علبة ريد بول.",
		sandwich = "ساندويتش",
		sandwich_description = "نباتي.",
		taco = "تاكو",
		taco_description = "تخصص إل برايان.",
		smores = "سمورز",
		smores_description = "نعم",
		tic_tac = "تيك تاك",
		tic_tac_description = "أوكسجين؟ لا يا ضابط، أنا فقط أكل تيك تاك!",
		pizza_slice = "شريحة بيتزا",
		pizza_slice_description = "قطعة صغيرة من البيتزا لك.",
		hot_dog = "هوت دوج",
		hot_dog_description = "تناول هذا النقانق وكأنها آخر وجبة لديك.",
		nachos = "ناتشوز",
		nachos_description = "ناتشوز جيده بما يكفي لتجعلك تشعر كأنك في المكسيك!!",
		vanilla_ice_cream = "ايس كريم الفانيليا",
		vanilla_ice_cream_description = "للأشخاص العاديين الذين لا يريدون التجربة بنكهات مختلفة.",
		chocolate_ice_cream = "ايس كريم الشوكولاتة",
		chocolate_ice_cream_description = "نكهة محترمة ليست غير شائعة.",
		vanilla_milkshake = "ميلك شيك الفانيليا",
		vanilla_milkshake_description = "كلاسيكي المقهى ، الرائع مع البرجر والبطاطا المقلية!",
		chocolate_milkshake = "حليب شوكولاتة",
		chocolate_milkshake_description = "إطلالة شكل مدهشة للحليب المخفوق ، فقط تأكد من عدم تعقبك من قبل وكالة الاستخبارات الأمريكية قبل اخذ الشراب...",

		dog_food = "طعام الكلاب",
		dog_food_description = "الطعام المصمم خصيصًا للاستهلاك من قبل الكلاب والحيوانات الكلبية ذات الصلة.",
		cat_food = "طعام القطط",
		cat_food_description = "الطعام المخصص للاستهلاك من قبل القطط. تحتوي القطط على متطلبات خاصة للعناصر الغذائية اللازمة لها.",
		dog_treats = "وجبات للكلاب",
		dog_treats_description = "وجبات شهية لصديقك الجيد.",
		cat_treats = "وجبات للقطط",
		cat_treats_description = "وجبات لذيذة للقطط المحلية.",

		burger_buns = "خبز البرجر",
		burger_buns_description = "ضع بعض اللحم بين هذه الأولاد السيئين.",
		cheese = "جبن",
		cheese_description = "تخيل أن تكون حساسًا لللاكتئاب ، فقدان.",
		lettuce = "خس",
		lettuce_description = "تلك الأشياء الخضراء التي لا يبيعونها في الشوارع.",
		patty = "لحم البرجر",
		patty_description = "سيجد يومًا رجل صغير الصيغة السرية لهذا اللحم ، حتى ذلك الوقت ، استمر في تقليب فراي كوك.",
		potato = "بطاطس",
		potato_description = "الشيء الوحيد القادم من روسيا الذي ليس AK أوعروس من البريد.",
		raw_fries = "بطاطس مقلية نيئة",
		raw_fries_description = "أساسًا مجرد بطاطس ، ولكن شخصًا ما لم يبذل ما يكفي من الجهد لجعله شيئًا مفيدًا.",
		raw_patty = "اللحم الخام",
		raw_patty_description = "90٪ لحم حقيقي والـ 10٪ الأخرى ضاعت في ترجمة التعبئة والتغليف.",

		apple = "تفاح",
		apple_description = "لا تدع الأطباء الشريرين يقتربون!",
		banana = "موز",
		banana_description = "مشبوه",
		cherry = "كرز",
		cherry_description = "على القمة (إذا كان هذا هو اختيارك).",
		kiwi = "كيوي",
		kiwi_description = "الفاكهة ليس الحيوان. (لا يجب الخلط مع A-32)",
		mango = "مانجو",
		mango_description = "يرجى عدم إطلاق النار! فقط دع المانجو ...",
		orange = "برتقالي",
		orange_description = "أنت سعيد لأنني لم أقل الموز.",
		peach = "خوخ",
		peach_description = "ليس مؤخرة.",
		pineapple = "أناناس",
		pineapple_description = "قلم أناناس قلم تفاحة.",
		pomegranate = "رمان",
		pomegranate_description = "كن سعيدًا أننا كتبنا اسمها بشكل صحيح.",
		strawberry = "فراولة",
		strawberry_description = "عادة ما توجد في الحقول ... إلى الأبد.",
		watermelon = "البطيخ",
		watermelon_description = "هل هو ماء أم بطيخ؟ قد لا نعرف أبدًا.",

		banana_peel = "قشر الموز",
		banana_peel_description = "زلق نوعًا ما ، كن حذرًا عند السير عليه.",

		beer = "بيرة",
		beer_description = "الماء الغاضب.",
		vodka = "فودكا",
		vodka_description = "النمط الروسي، يا لها من خبيثة.",
		tequila = "تكيلا",
		tequila_description = "لا تقلق، لم يتم وضع شيء في مشروبك. ( ͡° ͜ʖ ͡°)",
		whiskey = "ويسكي",
		whiskey_description = "فقط لأفضل المدمنين على الكحول.",
		cider = "سيدر",
		cider_description = "عصير تفاح للبالغين.",
		rum = "روم",
		rum_description = "حان وقت إعادة مشاهدة قراصنة الكاريبي!",
		absinthe = "أبسنت",
		absinthe_description = "تحذير: يحتوي على كحول. يجب أن يشربه الأطفال بكميات متوسطة فقط.",
		wine = "نبيذ",
		wine_description = "عصير عنب.",

		moonshine = "مشروب القمر",
		moonshine_description = "أفضل طريقة للحصول على سكر بدون علم الحكومة.",
		yeast_packet = "حزمة الخميرة",
		yeast_packet_description = "حزمة من الخميرة، تستخدم في صنع الكحول.",

		kimchi = "كيمتشي",
		kimchi_description = "طبق جانبي كوري حار مصنوع من الخضار المخمرة.",
		fish_sauce = "صلصة السمك",
		fish_sauce_description = "تتكون من السمك الذي تم تخميره ويستخدم كصلصة.",

		pumpkin = "يقطين",
		pumpkin_description = "خضار برتقالي كبير يستخدم في هالوين.",
		cabbage = "ملفوف",
		cabbage_description = "مثالي لصنع الكيمتشي المنزلية.",

		smoothie = "عصير سلس",
		smoothie_description = "مزيج مثالي من الفواكه والخضروات والكهرليت لعلاج الصداع الناجم عن الألعاب الإلكترونية.",
		blender = "الخلاط",
		blender_description = "الخلاط النهائي للعصير السلس: لأن الفطور المتوازن هو المفتاح للنصر (ولن يؤذيك عصير سلسلذيذ أبداً).",

		cocoa_beans = "حبوب الكاكاو",
		cocoa_beans_description = "حبوب صغيرة يتم استخدامها لصنع الشوكولاتة.",
		cocoa_powder = "مسحوق الكاكاو",
		cocoa_powder_description = "مسحوق مصنوع من حبوب الكاكاو.",
		hot_chocolate = "شوكولاتة ساخنة",
		hot_chocolate_description = "مشروب دافئ مصنوع من مسحوق الكاكاو والحليب.",

		jack_o_lantern = "جاك أو لانترن",
		jack_o_lantern_description = "يتمثل في حبة قرع بوجه محفور عليها.",

		cigarette = "سيجارة",
		cigarette_description = "إذا كنت لا تدخن فأنت جبان، يا رجل!",
		cigarette_pack = "علبة سجائر",
		cigarette_pack_description = "لأبيك الذي يعاني إدماناً على التدخين (نأمل أن يعود بعد أن يحصل عليها).",

		cocaine_bag = "حقيبة كوكايين",
		cocaine_bag_description = "أجزاء صغيرة من تاريخ كولومبيا.",
		cocaine_brick = "لبنة كوكايين",
		cocaine_brick_description = "قطعة من تاريخ كولومبيا.",
		joint = "السجائر المخدرة",
		joint_description = "عالياً حتى النخاع دووووم",
		oxy = "الأوكسجين",
		oxy_description = "هل تمتلك بعض المخدرات؟ يساعد في آلام الظهر.",
		antibiotics = "المضادات الحيوية",
		antibiotics_description = "تساعدك على التخلص من العدوى والطفيليات.",
		pain_killers = "مسكن الألم",
		pain_killers_description = "أخرجت الزمن لتسويق المخدرات!",
		weed_seeds = "بذور الحشيش",
		weed_seeds_description = "ينمو الحشيش، يا رفاق!",
		weed_1q = "سيجار حشيش 1/4",
		weed_1q_description = "جداً عاليًا",
		weed_1oz = "سيجار حشيش 1 أونصة",
		weed_1oz_description = "1680 ريال يا رفيق",

		oxy_prescription = "وصفة الأوكسي",
		oxy_prescription_description = "وصفة أوكسي مشبوهة.",

		brownies = "البراونيز",
		brownies_description = "لاذعة، فوامية، وضعف حجم الشوكولاتة مع لمحة من الركلة الإضافية لجعلك تجلس وتتساءل عن كل شيء في الحياة.",

		ejector_seat = "مقعد الاقتحام",
		ejector_seat_description = "إيجيكتو سيتو كوز!",
		tuner_chip = "رقاقة المعدل",
		tuner_chip_description = "أنا السرعة.",

		chip = "رقاقة",
		chip_description = "رقاقة قراصنة شبيهة بالمعدل.",
		decryption_key_red = "مفتاح فك تشفير اللون الأحمر",
		decryption_key_red_description = "هل تعلم؟ يتكون مافيا اللون الأحمر في الواقع من حزب من الجبناء.",
		decryption_key_green = "مفتاح فك تشفير اللون الأخضر",
		decryption_key_green_description = "هل تعلم؟ كان الكوكايين في الأصل باللون الأخضر.",
		decryption_key_blue = "مفتاح فك تشفير اللون الأزرق",
		decryption_key_blue_description = "هل تعلم؟ يوجد طائر يسمى 'قدمه أزرق' Reference: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "الدرع الواقي",
		ballistic_shield_description = "يجب استخدام هذا الدرع عند المغامرة في أراضي العصابات في RP.",

		pet_porg = "رفيق بورج الساحر",
		pet_porg_description = "رفيق بورج الساحر الجذاب للجلوس على كتفك ومرافقتك. هذه المخلوقات الصغيرة اللطيفة والحنونة ستجلب البسمة على وجهك أينما تذهب.",
		pet_duck = "رفيق البط الملفت",
		pet_duck_description = "مع صراخاته المبتهجة وريشه الناعم ، فإن هذا البط هو الرفيق المثالي لأي رحلة. سيقوم بالجلوس على كتفك بسعادة ، مستعدًا لاستكشاف العالم معك.",
		pet_cat = "كتلة الكتف",
		pet_cat_description = "هذه القطة المخملية دائما ما تكون جاهزة للنوم، وما هو أفضل من الاستلقاء على كتفك؟ إنها ستتمدد وتردد أثناء قيامك بأنشطتك اليومية.",
		pet_cat_grey = "جيزمو المتكاسل",
		pet_cat_grey_description = "هذه القطة الصغيرة والرمادية هي الأفضل في الكسل. فهي تجلس براحة على كتفك، ولا تتحرك سوى ببعض التمددات الكسولة.",
		pet_chicken = "صديق الريش",
		pet_chicken_description = "سوف تسير هذه الدجاجة الصغيرة الجميلة في جميع أنحاء كتفك بسعادة، إذ تتميز بريش ناعم وشخصية فضولية تجعلها الرفيق المثالي لأي مغامرة.",
		pet_shiba = "فرقة الكفوف",
		pet_shiba_description = "مع شخصيته المرحة وفروه الناعم ، فإن هذا الكلب الصغير شيبا هو الرفيق المثالي لأي مغامرة. سيتبعك بسعادة أينما كنت ، وستضفي ذيله المتذبذب وحرارة نباحه لمسة من الفرح على رحلتك.",
		pet_mouse = "الأنين الدبوسي",
		pet_mouse_description = "هذا الهامستر الدائري والممتلئ بالفراء هو الرفيق المثالي لأي مغامرة. فرائه الناعم وشخصيته اللعوب تجعله الرفيق المثالي للعناق ، وسيجلس سعيدًا على كتفك أثناء تنقلاتك اليومية.",
		pet_raccoon = "راسكال الراكون",
		pet_raccoon_description = "اقدم لك راسكال، الراكون الكثيف الذي يحب المغامرات. فهو يتمتع بجسد ممتلئ وشخصية مشاغبة وسيجلس على كتفك بسعادة ويساعدك في البحث عن الكنوز. هل انت مستعد لاضافته لمغامرتك؟",

		hotwheels_mcqueen = "ليتنج ماكوين",
		hotwheels_mcqueen_description = "السرعة، أنا السرعة، وأطفوا كالكاديلاك وأحطم كالبيمر. كاتشاو، كاتشاو، كاتشاو",
		hotwheels_towmater = "مايتر",
		hotwheels_towmater_description = "اسمي مايتر، مثل توماتر ولكن بدون الحرف تاء.",

		boxing_gloves = "قفّازات الملاكمة",
		boxing_gloves_description = "تُحوّلك إلى روكي، لكنّك ربّما لن تحصل على تتمّة...",
		leash = "حبل المشية",
		leash_description = "لا أحد سيعرف لماذا اشتريت هذا، لكنهم بالتأكيد سيحكمون عليك لأنّك تمتلكه.",

		shrooms = "فطر الشيطان",
		shrooms_description = "قال شخص ما أنّه يجب وضع هذه الفطريّات على البيتزا، لكن الآن البيتزا تضع نفسها عليّ... انتظر من أنا؟",

		bucket = "دلو",
		bucket_description = "يمكن استخدامه كخوذة مؤقتة.",
		fertilizer = "سماد",
		fertilizer_description = "من أجل عالم أخضر.",

		aluminium_powder = "مسحوق الألومنيوم",
		aluminium_powder_description = "بودرة متعددة الاستخدامات تستخدم على نطاق واسع في التطبيقات الصناعية والكيميائية. عند مزجها مع مكونات معينة، يمكن أن تنتج ردود فعل ترميت عالية النشاط، مما يخلق حرارة وضوء شديدين.",
		iron_oxide = "مسحوق أكسيد الحديد",
		iron_oxide_description = "بودرة شائعة مكونة من جزيئات الحديد والأكسجين، تستخدم في عدة عمليات صناعية مختلفة. عند مزجها مع بعض المواد، يمكن أن يشارك في ردود فعل حارة جداً، مما يؤدي إلى إطلاق حرارة وطاقة كبيرتين.",

		gold_bar = "قلم ذهبي",
		gold_bar_description = "يستخدم للإصلاحات والصنع",

		aluminium = "ألومنيوم خام",
		aluminium_description = "يستخدم للإصلاحات والصنع",
		glass = "زجاج خام",
		glass_description = "يستخدم للإصلاحات والصنع",
		rubber = "مطاط خام",
		rubber_description = "يستخدم للإصلاحات والصنع",
		scrap_metal = "خردة معدنية",
		scrap_metal_description = "يستخدم للإصلاحات والصنع",
		steel = "صلب خام",
		steel_description = "يستخدم للإصلاحات والصنع",

		purified_aluminium = "ألومنيوم منقى",
		purified_aluminium_description = "يستخدم للإصلاحات المهنية.",
		tempered_glass = "زجاج مقوى",
		tempered_glass_description = "يستخدم للإصلاحات المهنية.",
		vulcanized_rubber = "مطاط مفلكن",
		vulcanized_rubber_description = "يستخدم للإصلاحات المهنية.",
		processed_metal = "معدن مجهز",
		processed_metal_description = "يستخدم للإصلاحات المهنية.",
		refined_steel = "فولاذ مكرر",
		refined_steel_description = "يستخدم للإصلاحات المهنية.",

		power_saw = "منشار كهربائي",
		power_saw_description = "يستخدم للتشذيب.",

		thermite = "ثيرمايت",
		thermite_description = "مسحوق عالي الانفجار، لا تستنشقه.",
		fake_plate = "لوحة مزيفة",
		fake_plate_description = "ههه فلسفة الشرطة، لا يمكنهم القبض علي.",
		evidence_bag_empty = "كيس دليل فارغ",
		evidence_bag_empty_description = "هل من الممكن تحسين ذلك؟",
		evidence_bag = "كيس دليل",
		evidence_bag_description = "جريمة مختومة بكيس للاستخدام لاحقًا.",
		fingerprint_evidence = "دليل بصمة",
		fingerprint_evidence_description = "يساعدك على القبض على تلك المجرمين الغادرين.",

		ammo_box = "صندوق ذخيرة كبير",
		ammo_box_description = "مثالي عندما تحتاج إلى إطلاق النار بكثرة. يحتوي على 60 طلقة من كل نوع من الذخيرة.",

		stungun_ammo = "كرت الشاحنة الكهربائية",
		stungun_ammo_description = "أقل من القاتلة.",
		pistol_ammo = "ذخيرة البندقية",
		pistol_ammo_description = "مثالية للاستخدام العادي. تناسب معظم الأسلحة اليدوية.",
		sub_ammo = "ذخيرة الرشاشة الصغيرة",
		sub_ammo_description = "هل ترغب في استخدام عظمة أسلافك؟ هذا متاح الآن بتكلفة مناسبة، يمكن استخدامه لإطلاق النار العشوائي. لتحقيق التأثير الكامل، يُنصح باستخدام الرشاش الآلي.",
		rifle_ammo = "ذخيرة البندقية",
		rifle_ammo_description = "هذا واحد لجميع اللصوص الذين يريدون الذهاب إلى البنك وذبح بعض الشرطيين على الطريق.",
		sniper_ammo = "ذخيرة القناص",
		sniper_ammo_description = "التحية لأناس تعتقد أن القنص هو الخيار الأفضل!",
		shotgun_ammo = "ذخيرة البندقية القصيرة",
		shotgun_ammo_description = "يعتقد البعض أن هذه تحتوي على البارود! عياشين ... فهي مليئة بالحب والفرح.",

		silver_watches = "ساعات فضية",
		silver_watches_description = "احذر!",
		necklaces = "قلائد",
		necklaces_description = "أضف بعض البريق الإضافي إلى مظهرك!",
		gold_watches = "ساعات ذهبية",
		gold_watches_description = "و ... من أين حصلت عليها بالضبط؟",
		diamonds = "ألماس",
		diamonds_description = "تحتاج 24 ماسة لعمل درع كامل. أنصحك بالحصول على 27 حتى تتمكن من الحصول على مُعول أيضًا.",

		weather_spell_snow = "تعويذة الطقس (ثلج)",
		weather_spell_snow_description = "يمكنك استخدام هذا العنصر للتحكم مؤقتًا في الطقس وجعلها تثلج! إنه عملة واحدة، لذلك استخدمه بحذر. إذا استخدمت تعويذتي طقس بنفس الوقت ، فسيتم تسجيل الثانية ببساطة.",
		weather_spell_rain = "تعويذة الطقس (مطر)",
		weather_spell_rain_description = "استخدام هذا العنصر سيسمح لك بالتحكم مؤقتًا في الطقس وجعله يمطر! إنها عملة واحدة ، لذلك استخدمها بحذر. إذا استخدمت تعويذتين للطقس في وقت واحد ، فستتم إضافة التعويذة الثانية للانتظار.",
		weather_spell_thunder = "تعويذة الطقس (عواصف رعدية)",
		weather_spell_thunder_description = "استخدام هذا العنصر سيتيح لك التحكم مؤقتًا في الطقس وجعل عاصفة رعدية! إنها عملة واحدة ، لذلك استخدمها بحذر. إذا استخدمت تعويذتين للطقس في وقت واحد ، فستتم إضافة التعويذة الثانية للانتظار.",

		zombie_pill = "حبوب الزومبي",
		zombie_pill_description = "حبة غريبة تفعل أشياء غريبة ... ابتلاع الحبوب على مسؤوليتك الخاصة. ربما سيكون من الحكمة حمل سلاح لحماية نفسك من الأحلام العنيفة.",

		acid = "حمض",
		acid_description = "يجعلك مخدر بشكل دائم. لا يوجد مفر منه.",

		rose = "زهرة الورد",
		rose_description = "ما هو الأمر يا رجل، erp أعتقد",

		teddy_bear = "دب اللعبة",
		teddy_bear_description = "صديق يستمع إليك فعلًا.",

		self_driving_chip = "شريحة القيادة الذاتية",
		self_driving_chip_description = "غزلان ميتة في كل مكان ... مضحك للغاية.",

		ticket_50 = "تذكرة اليانصيب بقيمة 50 دولارًا",
		ticket_50_description = "ضع القليل في القدر واحتمال الفوز في صالحك.",
		ticket_250 = "تذكرة اليانصيب بقيمة 250 دولارًا",
		ticket_250_description = "الآن بدأنا نذهب إلى مكان ما، خذ تلك المخاطرة.",
		ticket_500 = "تذكرة اليانصيب بقيمة 500 دولارًا",
		ticket_500_description = "انظر إليك، فقدت كل راتبك لهذا الأسبوع!",

		avocado = "الأفوكادو",
		avocado_description = "كائن أخضر صغير، سيكون رائع لصنع ديب.",
		avocado_smoothie = "عصير الأفوكادو",
		avocado_smoothie_description = "عصير صحي خضراء، تجاهل الشرائح الداخلة به.",

		raspberry = "التوت البري",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "الهوائي",
		antenna_description = "صيد جميع الترددات.",
		battery_pack = "حزمة بطارية",
		battery_pack_description = "تزويد جميع إلكترونياتك بالطاقة.",
		cpu = "المعالج المركزي",
		cpu_description = "قلب كل حاسوب.",
		knob = "مقبض",
		knob_description = "استدره وحرِّكه.",
		pcb_board = "لوحة PCB",
		pcb_board_description = "لتصميم اختراعك التالي.",
		screen = "الشاشة",
		screen_description = "انظر ما تقوم به.",
		sd_card = "بطاقة الذاكرة",
		sd_card_description = "لجميع احتياجات التخزين.",
		wires = "أسلاك",
		wires_description = "تمسك كل شيء معًا.",

		note = "ملاحظة",
		note_description = "بعض الملاحظات.",

		pigeon_milk = "حليب الحمام",
		pigeon_milk_description = "\"كان يجب أن تشرب حليب الحمام، لأن هذا الشيء سيضربك في حالة سكرٍ تام\"",

		bandana = "بندانا",
		bandana_description = "منظمة عصابية (أنصار الدم يفوزون)",

		battering_ram = "مطرقة الهجوم",
		battering_ram_description = "استخدمها لكسر الأبواب",

		trading_card = "بطاقة تداول",
		trading_card_description = "بطاقة تداول جمعوية، يجب الحصول عليها جميعًا!",

		trading_card_pack = "حزمة بطاقات تداول",
		trading_card_pack_description = "حزمة من البطاقات التداولية العشوائية، دعنا نحصل على بعض الفوز الجيد.",

		boombox = "مكبر الصوت",
		boombox_description = "تشغيل الموسيقى وأنت تكون مزعجًا في أي مكان وزمان!",

		lighter = "ولاعة",
		lighter_description = "بعض الرجال يرغبون في رؤية العالم يحترق",

		nitro_tank = "خزان النيترو",
		nitro_tank_description = "مثالي عندما تحتاج إلى السرعة للحصول على ما تحتاجه.",

		empty_nitro_tank = "خزان النترو الفارغ",
		empty_nitro_tank_description = "لا يفيدك كثيراً على نحوٍ مشابه كعلبة فول فارغة.",

		sheet_metal = "حديد صاج",
		sheet_metal_description = "مثالي لترقية مساحة 2x2 الخاصة بك.",

		valve = "صمام",
		valve_description = "الجزء الثالث من اللعبة المحبوبة Half Life في أي وقت؟",

		empty_tank = "خزان فارغ",
		empty_tank_description = "لا يحتوي بعد الآن على مواد البروبان أو ملحقات البروبان.",

		pepper_spray = "رذاذ فلفل",
		pepper_spray_description = "عيناي!",

		jail_card = "بطاقة سجن",
		jail_card_description = "احصل على بطاقة للخروج من السجن!",

		vape = "جيك بار",
		vape_description = "تحاول أن تبدو بارعًا؟ متعب من كونك جبانًا؟ خذ إبرة صغيرة!",

		acetone = "أسيتون",
		acetone_description = "مثالي لإزالة الطلاء أو التنشيف، كوبر ستايل.",

		bleach = "مبيض",
		bleach_description = "لا تشرب هذا المنتج.",

		ammonia = "أمونيا",
		ammonia_description = "اخلطه مع المبيض للحصول على مفاجأة سحرية.",

		lithium_batteries = "بطاريات الليثيوم",
		lithium_batteries_description = "غير مسموح بها على الرحلات الجوية التجارية، إلا إذا كنت تريد أن تنفجر.",

		meth_bag = "حقيبة الميث",
		meth_bag_description = "يُلقب بـ\"توابل كوبر\". يعتبر من أنقى أنواع الكريستال الموجودة في بحيرة الألامو.",

		meth_table = "طاولة صنع الميث",
		meth_table_description = "مزحة مضحكة عن مسلسل Breaking Bad المشهور الذي يتحدث عن صنع الميث.",

		campfire = "نار مخيم",
		campfire_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والصيد! لا يمكن التقاط هذا العنصر مرة أخرى.",
		tent = "خيمة",
		tent_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والصيد!",
		cloth_tent = "خيمة قماشية",
		cloth_tent_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		canvas_tent = "خيمة قماشية",
		canvas_tent_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		plastic_chair = "كرسي بلاستيك",
		plastic_chair_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		fishing_chair = "كرسي صيد",
		fishing_chair_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		yoga_mat = "حصيرة اليوجا",
		yoga_mat_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		cooler_box = "صندوق التبريد",
		cooler_box_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		parasol = "شمسية",
		parasol_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		parasol_table = "طاولة الشمسية",
		parasol_table_description = "يمكن وضعها في أي مكان في العالم. مثالية للتخييم والصيد والأسماك!",
		table = "طاولة",
		table_description = "تستطيع وضعها في أي مكان في العالم. مثالية للتخييم، الصيد والأسماك!",
		towel = "منشفة",
		towel_description = "تستطيع وضعها في أي مكان في العالم. مثالية للتخييم، الصيد والأسماك!",
		disposable_grill = "شواية متنقلة",
		disposable_grill_description = "تستطيع وضعها في أي مكان في العالم. مثالية للتخييم، الصيد والأسماك! لا يمكن التقاط هذا العنصر مرة أخرى.",
		grill = "مشواة للأكل",
		grill_description = "تستطيع وضعها في أي مكان في العالم. مثالية للتخييم، الصيد والأسماك!",
		police_barrier = "حاجز شرطة",
		police_barrier_description = "يمكن وضعه في أي مكان في العالم.",
		dummy = "جسم اختبار",
		dummy_description = "يمكن وضعه في أي مكان في العالم.",
		target = "هدف",
		target_description = "يمكن وضعه في أي مكان في العالم.",
		large_target = "هدف كبير",
		large_target_description = "يمكن وضعه في أي مكان في العالم.",
		cone = "مخروط",
		cone_description = "يمكن وضعه في أي مكان في العالم.",
		spike_strips = "أشرطة الكتف",
		spike_strips_description = "يمكن وضعه في أي مكان في العالم.",
		floodlight = "ضوء فيضي",
		floodlight_description = "يمكن وضعه في أي مكان في العالم.",
		left_diversion_sign = "علامة تحويل اليسار",
		left_diversion_sign_description = "يمكن وضعها في أي مكان في العالم.",
		right_diversion_sign = "علامة تحويل اليمين",
		right_diversion_sign_description = "يمكن وضعها في أي مكان في العالم.",
		stop_sign = "علامة توقف",
		stop_sign_description = "يمكن وضعها في أي مكان في العالم.",
		bear_trap = "فخ الدب",
		bear_trap_description = "يمكن وضعه في أي مكان في العالم.",
		barrier = "حاجز للبناء",
		barrier_description = "حاجز البناء القياسي.",
		traffic_barrier = "حاجز المرور",
		traffic_barrier_description = "حاجز للتأكد من أن حركة المرور تعلم ما يحدث.",
		small_barrier = "حاجز صغير",
		small_barrier_description = "حاجز صغير سيء الصنع.",
		traffic_barrel = "برميل مرور",
		traffic_barrel_description = "يبدو قابلًا للضرب ، لكن لا تفعل ذلك ... ما لم؟",
		pedestrian_barrier = "حاجز مشاة",
		pedestrian_barrier_description = "رائع للحصول عليه ما لم يكن حفل ترافيس سكوت ...",

		bandit_1 = "اللص 1",
		bandit_1_description = "يمكن وضعه في أي مكان في العالم.",
		bandit_2 = "اللص 2",
		bandit_2_description = "يمكن وضعه في أي مكان في العالم.",
		hostage_1 = "الرهينة 1",
		hostage_1_description = "يمكن وضعه في أي مكان في العالم.",
		hostage_2 = "الرهينة 2",
		hostage_2_description = "يمكن وضعه في أي مكان في العالم.",

		director_chair = "كرسي المخرج",
		director_chair_description = "يمكن وضعه في أي مكان في العالم. مقعد مريح للجلوس أثناء التنقل.",
		beach_chair = "كرسي الشاطئ",
		beach_chair_description = "يمكن وضعها في أي مكان في العالم. مقاعد مريحة للذهاب.",
		green_fishing_chair = "كرسي صيد أخضر",
		green_fishing_chair_description = "يمكن وضعها في أي مكان في العالم. مقاعد مريحة للذهاب.",
		blue_fishing_chair = "كرسي صيد أزرق",
		blue_fishing_chair_description = "يمكن وضعها في أي مكان في العالم. مقاعد مريحة للذهاب.",

		tire_wall = "جدار الإطارات",
		tire_wall_description = "عندما تحتاج إلى غطاء ولكنه غير متاح.",

		claymore = "كلايمور",
		claymore_description = "أحدث الألغام المضادة للأفراد.",

		tv_stand = "رف التلفزيون",
		tv_stand_description = "استخدم هذا لتثبيت التلفزيون في أي مكان تريده.",
		tv_remote = "جهاز التحكم عن بعد للتلفزيون",
		tv_remote_description = "جهاز التحكم عن بعد العالمي (البطاريات الكمونية غير مشمولة).",

		firework_rocket = "صاروخ الألعاب النارية",
		firework_rocket_description = "صاروخ الألعاب النارية البسيط، رائع ليوم الرابع من يوليو.",
		firework_battery = "بطارية الألعاب النارية",
		firework_battery_description = "بطارية الألعاب النارية، تطلق 4 ألعاب نارية في وقت واحد.",

		pole = "العامود الأصفر",
		pole_description = "مثالي لإيقاف أي شخص على الفور.",

		gasoline_bottle = "زجاجة وقود",
		gasoline_bottle_description = "لإعادة تعبئة سريعة لسيارتك أو.... أنت؟",

		radio_jammer = "جهاز تشويش الراديو",
		radio_jammer_description = "مثالي لتشويش أي نوع من الإرسالات الواردة والصادرة.",

		winner_trophy = "كأس الفائز",
		winner_trophy_description = "أنت الأفضل!",

		treasure_map = "خريطة الكنز",
		treasure_map_description = "خريطة باهتة ومتعرجة توعد بثروات لا توصف لأولئك الذين يستطيعون فك شفراتها الغامضة. الحرف X تُشير إلى الموقع الذي يجب الوجود فيه، لكن الرحلة إلى الكنز قد تكون خطرة ومليئة بالتحديات.",
		treasure_map_piece = "جزء خريطة الكنز",
		treasure_map_piece_description = "قطعة ممزقة من خريطة كنز أكبر، ربما فُقدت أو تم إخفاءها عمدًا. تحمل جزءًا من الغموض، ولغزًا في انتظار الحل. اجمع جميع الأجزاء، وضع الخريطة، وافتح أسرار الكنز الضائع. احذر من منافسي صائدي الكنوز والمعوقات الغير متوقعة على طريقك!",

		black_dildo = "زب أسود",
		black_dildo_description = "سنحصل على الاعتراف بأي وسيلة كانت.",
		pink_dildo = "زب وردي",
		pink_dildo_description = "من صنع يدوي ، ونحت واختبرها Bugsy Middleman.",

		bean_coffee = "قهوة بذور",
		bean_coffee_description = "الماء المغلي بالبن ، فقط هذا ما هو عليه الأمر.",
		cappuccino = "كابتشينو",
		cappuccino_description = "اسبريسو بحليب الثدي ، يعني حليب الثدي ، يعني حليب الثدي...",
		espresso = "اسبريسو",
		espresso_description = "طاقة كافية لتشغيل منزلك كله ، جميعها في كوب صغير ولطيف.",
		cream_cookie = "كعكة كريم",
		cream_cookie_description = "كريمية ، تمامًا كما تحب.",
		cheesecake = "تشيز كيك",
		cheesecake_description = "لا يجب الخلط بينه وبين كعكة مصنوعة من الجبن.",
		chocolate_cake = "كعكة شوكولاتة",
		chocolate_cake_description = "كعكة شهية مصنوعة من أجود فاصوليا الكاكاو.",
		cupcake = "كب كيك",
		cupcake_description = "كعكة هشة محشوة بكريمة سحرية مزينة بألوان الحورية.",
		pink_lemonade = "ليمونيد وردي",
		pink_lemonade_description = "ليس مجرد ليمونيد عادي صبغناه باللون الوردي لكي نحصل على سعرين...",

		irish_coffee = "قهوة إيرلندية",
		irish_coffee_description = "قهوة طازجة مع نكهة خاصة من ويسكي إيرلندي.",

		chip_10 = "رقاقة 10 دولار",
		chip_10_description = "رقاقة للمقامرة، يمكن استخدامها للمقامرة وأيضًا يمكن تحويل الرقاقة إلى نقود في الكازينو.",
		chip_50 = "رقاقة 50 دولار",
		chip_50_description = "رقاقة للمقامرة، يمكن استخدامها للمقامرة وأيضًا يمكن تحويل الرقاقة إلى نقود في الكازينو.",
		chip_100 = "رقاقة 100 دولار",
		chip_100_description = "رقاقة للمقامرة، يمكن استخدامها للمقامرة وأيضًا يمكن تحويل الرقاقة إلى نقود في الكازينو.",
		chip_500 = "رقاقة 500 دولار",
		chip_500_description = "رقاقة للمقامرة، يمكن استخدامها للمقامرة وأيضًا يمكن تحويل الرقاقة إلى نقود في الكازينو.",
		chip_1000 = "رقاقة بقيمة 1000 دولار",
		chip_1000_description = "رقاقة قمار، يمكن استخدامها للقمار. يمكن تحويل هذا العنصر إلى نقود في الكازينو.",
		chip_5000 = "رقاقة بقيمة 5000 دولار",
		chip_5000_description = "رقاقة قمار، يمكن استخدامها للقمار. يمكن تحويل هذا العنصر إلى نقود في الكازينو.",
		chip_10000 = "رقاقة بقيمة 10000 دولار",
		chip_10000_description = "رقاقة قمار، يمكن استخدامها للقمار. يمكن تحويل هذا العنصر إلى نقود في الكازينو.",

		grubs = "دود الأرض",
		grubs_description = "مثالي للصيد.",
		leeches = "دود الدم",
		leeches_description = "مثاليّة للصيد.",
		earthworms = "دودة الأرض",
		earthworms_description = "مثاليّة للصيد.",
		fishing_rod = "قصبة الصيد",
		fishing_rod_description = "مثالية للصيد.",
		raw_meat = "لحم نيء",
		raw_meat_description = "قطعة لحم جديدة.",
		cooked_meat = "لحم مطبوخ",
		cooked_meat_description = "لحم تم طهيه للتو.",
		burnt_meat = "لحم محترق",
		burnt_meat_description = "لحم تم حرقه.",
		leather = "جلد",
		leather_description = "زيّن جلد الظبي الطازج.",
		wood = "خشب",
		wood_description = "قطعة خشب طازجة من شجرة.",
		charcoal = "فحم",
		charcoal_description = "أفضل من الفحم العادي.",

		beef_jerky = "جيركي اللحم البقري",
		beef_jerky_description = "بعض أجزاء لذيذة من جيركي اللحم البقري.",
		oreos = "أوريوس بنكهة كعكة عيد الميلاد",
		oreos_description = "بعض الكعك اللذيذة بنكهة كعكة عيد الميلاد.",
		nerds_chunks = "حبوب نيردز",
		nerds_chunks_description = "كيس من حبوب اللب المجمعة نيردز، لذيذ!",
		reeses_pieces = "ريسيز بيسز",
		reeses_pieces_description = "الوجبة الخفيفة المثالية عندما تشعر بالجوع قليلاً ، ولكن قليلًا جدًا عندما تأكل وجبة كاملة.",
		kettle_chips = "رقائق المعجونة (Honey-BBQ)",
		kettle_chips_description = "أفضل شرائح البطاطس في العالم.",
		cheetos = "شيتوس",
		cheetos_description = "أفضل وجبة خفيفة لجلسات الألعاب الخاصة بك.",
		peanuts = "فول سوداني مملح",
		peanuts_description = "علبة من فول السودان، مثالي للتناول.",

		rice = "أرز",
		rice_description = "نخالة مطرية وحبوب مرطبة.",
		nori = "نوري",
		nori_description = "هذه تحلية محفوظة من الأعشاب البحرية.",
		soy_sauce = "صوص الصويا",
		soy_sauce_description = "صوص الصويا هو توابل لذيذة بطعم الأومامي الغني الذي يعد مثاليًا للتتبيل والتبغير والأخّاد، كما أنه يحتوي على سعرات حرارية منخفضة وبروتين عالي.",
		eggs = "بيض",
		eggs_description = "البيض متعدد الاستعمالات وغني بالعناصر الغذائية ويستخدم في صنع الأومليت والكيش والمعجنات.",
		lime = "ليمون",
		lime_description = "الليمون حامض وغني بفيتامين سي، يضيف نكهة رائعة للمشروبات والصلصات والتتبيلات.",
		coconut = "جوز الهند",
		coconut_description = "جوز الهند حلو وكريمي ويضيف نكهة رائعة للحلويات والكاري والعصائر. دعها.",
		sugar = "سكر",
		sugar_description = "إنها كوكايين ولكن غير مشروع ويسبب السكري.",

		golf_ball = "كرة الغولف",
		golf_ball_description = "تستخدم للعب الغولف.",
		golf_ball_yellow = "كرة جولف صفراء",
		golf_ball_yellow_description = "تستخدم لرياضة الغولف.",
		golf_ball_orange = "كرة جولف برتقالية",
		golf_ball_orange_description = "تستخدم لرياضة الغولف.",
		golf_ball_pink = "كرة جولف وردية",
		golf_ball_pink_description = "تستخدم لرياضة الغولف.",

		gas_mask = "قناع غازات",
		gas_mask_description = "سوف يحميك من جميع أنواع الغازات، حتى غازات الجدة.",
		nv_goggles = "نظارات رؤية ليلية",
		nv_goggles_description = "سوف تساعدك على الرؤية في الظلام.",
		thermal_goggles = "نظارات حرارية",
		thermal_goggles_description = "تساعدك على رؤية الجدران (ليست حقيقية).",

		green_rolls = "رولز خضراء",
		green_rolls_description = "لأولئك منا الذين يحتاجون إلى ما هو أكثر من المعدل العادي.",
		rolling_paper = "ورق لف",
		rolling_paper_description = "ورق سريع للف وتدخين الألم الخاص بك.",

		arena_pill = "حبة الساحة",
		arena_pill_description = "حبة غريبة تفعل أشياء أغرب ... ابتلاعها على مسؤوليتك الخاصة. قد يكون من الحكمة أن تحمل سلاحًا لحماية نفسك من الأحلام العنيفة.",

		shovel = "مجرفة",
		shovel_description = "أداة حفر قوية لاستخراج الثروات الخفية وكشف الأسرار في أي بيئة، مما يجعلها أداة قيمة بالنسبة لمحبي الكنوز.",

		electric_fuse = "صمام كهربائي",
		electric_fuse_description = "يعد الصمام الكهربائي عنصرًا مطلوبًا في غرف السرقة، حيث يجب وضعه في صندوق الصمام الكهربائي لتشغيل قفل بطاقة المفتاح.",
		keycard_green = "بطاقة مفتاح خضراء",
		keycard_green_description = "تستخدم لفتح الخزائن المليئة باللوازم الطبية.",
		keycard_blue = "بطاقة مفتاح زرقاء",
		keycard_blue_description = "تستخدم لفتح تخزينات مليئة باللوازم التقنية.",
		keycard_red = "البطاقة الحمراء",
		keycard_red_description = "تستخدم لفتح ترسانة.",

		magazine = "المجلة",
		magazine_description = "مجلة.",

		bank_rockfish = "سمك روكفيش في البنك",
		black_and_yellow_rockfish = "سمك روكفيش أسود وأصفر",
		black_rockfish = "سمك روكفيش أسود",
		blackgill_rockfish = "سمك روكفيش ذو الخياشيم السوداء",
		blackspotted_rockfish = "سمك روكفيش ذو النقاط السوداء",
		blue_rockfish = "سمك روكفيش أزرق",
		bocaccio = "بوكاسيو",
		bronzespotted_rockfish = "سمك روكفيش ذو النقاط البرونزية",
		brown_rockfish = "سمك الصخر البني",
		cabezon = "الكابيزون",
		calico_rockfish = "سمك الصخر المطبوع",
		california_scorpionfish = "سمك العقرب الكاليفورني",
		canary_rockfish_variant_1 = "سمك الصخر الكناري (النوع 1)",
		canary_rockfish_variant_2 = "سمك الصخر الكناري (النوع 2)",
		chilipepper_rockfish = "سمك الصخر الفلفل الحار",
		china_rockfish = "سمك الصخر الصيني",
		copper_rockfish_variant_1 = "سمك الصخر النحاس (النوع 1)",
		copper_rockfish_variant_2 = "سمك الصخر النحاس (النوع 2)",
		cowcod = "سمك البقرة",
		darkblotched_rockfish = "سمك الصخر ذو البقع الداكنة",
		deacon_rockfish = "ديكون روكفيش",
		dusky_rockfish_dark_version = "دسكي روكفيش (إصدار داكن)",
		dusky_rockfish_light_version = "دسكي روكفيش (إصدار فاتح)",
		flag_rockfish = "فلاج روكفيش",
		gopher_rockfish = "جوفر روكفيش",
		grass_rockfish_dark_version = "غراس روكفيش (إصدار داكن)",
		grass_rockfish_light_version = "غراس روكفيش (إصدار فاتح)",
		greenblotched_rockfish = "غرينبلوتشد روكفيش",
		greenspotted_rockfish = "غرين سبوت روكفيش",
		greenstriped_rockfish = "غرينسترايبد روكفيش",
		halfbanded_rockfish = "سمك الروكفيش النصف متشقق",
		honeycomb_rockfish = "سمك الروكفيش العسلي",
		kelp_greenling_female = "كيلب جرينلينج (أنثى)",
		kelp_greenling_male = "كيلب جرينلينج (ذكر)",
		kelp_rockfish = "سمك الروكفيش الكيلبي",
		lingcod = "اللينج كود",
		olive_rockfish = "سمك الروكفيش الزيتوني",
		pacific_ocean_perch = "القاروص المحيط الهادي",
		pacific_sand_sole = "سمك الخال أو النفر الرملي المحيط الهادي",
		pacific_sanddab = "سمك السانداب المحيط الهادي",
		quillback_rockfish_variant_1 = "سمك الروكفيش الظهر القلمي (الطراز 1)",
		quillback_rockfish_variant_2 = "سمك الروكفيش الظهر القلمي (الطراز 2)",
		redbanded_rockfish = "سمك الروكفيش الأحمر الشريطي",
		rock_sole = "سمك الروك سول",
		rosy_rockfish = "سمك الروكفيش الوردي",
		rougheye_rockfish = "سمك الروكفيش الأحمر العين",
		shortraker_rockfish = "سمك الراكر الصغير الروكفيش",
		silvergray_rockfish = "سمك الروكفيش الفضي الرمادي",
		speckled_rockfish = "سمك الروكفيش البقعي",
		squarespot_rockfish = "سمك الروكفيش ذو البقع المربعة",
		starry_flounder = "سمك الفلاندر النجمي",
		starry_rockfish = "سمك الروكفيش النجمي",
		tiger_rockfish_dark_version = "سمك الروكفيش النمري (الإصدار الداكن)",
		tiger_rockfish_pink_version = "سمك الروكفيش النمري (الإصدار الوردي)",
		treefish = "سمكة الشجر",
		vermilion_rockfish = "سمكة الصخرة القرمزية",
		widow_rockfish = "سمكة الصخرة الأرملة",
		yelloweye_rockfish_adult = "سمكة الصخرة العين الصفراء (الكبيرة)",
		yelloweye_rockfish_juvenile = "سمكة الصخرة العين الصفراء (الصغيرة)",
		yellowtail_rockfish = "سمكة الصخرة ذات الذيل الأصفر",

		bank_rockfish_description = "يتميز سمك بنك الصخري بشكله البيضوي ورأس صغير وأشواك صغيرة. ولونه أحمر غامق أو بني أحمر، وغالبًا ما يكون لديه شريط واضح باللون البرتقالي الزهري على طول الخط الجانبي ونقاط سوداء على الجسم والجزء الشوكي من الزعانف الظهرية.",
		black_and_yellow_rockfish_description = "يشير \"Sebastes chrysomelas\" ، المعروف باسم black-and-yellow rockfish، إلى نوع من أنواع الأسماك البحرية وهو يتبع عائلة Sebastidae. ويتم العثور عليه في المناطق الصخرية في المحيط الهادئ قبالة كاليفورنيا وباخا كاليفورنيا.",
		black_rockfish_description = "يشير السمك الروك فش، المعروف أيضاً بأسماء متعددة مثل black seaperch و black bass و black rock cod و sea bass و black snapper و Pacific Ocean perch، إلى نوع من أنواع الأسماك البحرية التي تتبع الفصيلة Scorpaenidae، وهو مصنفٌ ضمن فصيلة الأسماك المعروفة باسم Sebastinae.",
		blackgill_rockfish_description = "يتم اصطياد قليلاً منها بشكل منتظم قبالة السواحل الواشنطنية من قبل الصيادين التجاريين باستخدام شباك الكاسور للجر والمعدات الطويلة الخطافية. كانت معتادة مرة واحدة كنوع مصطاد بشكل كبير في عرض سواحل كاليفورنيا. <br> <br> يمكن العثور على الأحجام الصغيرة في عرض البحر ، ولكن الأسماك الأكبر سنًا سوف تنتقل إلى المياه العميقة.",
		blackspotted_rockfish_description = "نوع من أسماك القد موجود في المحيط الهادىء الشمالي، وينتمي إلى فصيلة سكوربينيد؛ وهي ذات سمية شديدة. يتميز هذا النوع بالجسم المشوه والملكم، وبالإضافة إلى ذلك فإنه يحتوي على تموّجات كبيرة على كل جانب من الجسم الذي تدخل في تكوينه تغطيته الصلبة الصدفية.",
		blue_rockfish_description = "الشمروخ الأزرق أو سمك البراهيم الأزرق، هو نوع من الأسماك البحرية ذات الزعانف العظمية يتبع الفصيلة البراهيمية، تنتمي إلى الجنس البراهيم. توجد هذه الأسماك في المحيط الهادئ الشمالي الشرقي، وتنتشر من شمال وسط ولاية كاليفورنيا في الولايات المتحدة إلى ولاية أوريغون في الولايات المتحدة الأمريكية.<br><br>يتم العثور عليها فقط في مداخل الأنهار، وليس مباشرة في الأنهار.",
		bocaccio_description = "سمك بوكاسيو البراهيمي هو نوع من الأسماك البحرية ذات الزعانف العظمية يتبع الفصيلة البراهيمية، تنتمي إلى الجنس البراهيم. يتواجد في المحيط الهادئ الشمالي الشرقي.<br><br>ويعرف أيضا باسم \"سنابر الأحمر\".",
		bronzespotted_rockfish_description = "سيباستس جيلي، السمكة الصخرية ذات النقاط البرونزية، هي نوع من الأسماك ينتمي إلى فصيلة Sebastinae، الصخور السمكية، وهي جزء من عائلة Scorpaenidae. وهي موجودة في شرق المحيط الهادئ الوسطى.",
		brown_rockfish_description = "السمكة الصخرية البنية، التي تشتمل أسماؤها الأخرى على بيرش البحر البني، و الباس الشوكولاتة والبومبر البني ، هي نوع من الأسماك البحرية تنتمي إلى فصيلة Sebastinae، الصخور السمكية، وهي جزء من عائلة Scorpaenidae. وهي موجودة في المحيط الهادئ الشمالي الشرقي.",
		cabezon_description = "الكبيزون هو نوع كبير من أنواع الأسماك البحرية (السكلبين) الموجود في الساحل الهادئ لأمريكا الشمالية. على الرغم من أن اسم الجنس يترجم حرفياً إلى \"سمكة العقرب\" ، إلا أن الأسماك الحقيقية لسمكة العقرب تنتمي إلى العائلة ذات الصلة Scorpaenidae.",
		calico_rockfish_description = "Sebastes dallii، الكاليكو روكفيش، هو نوع من أنواع الأسماك البحرية التي تنتمي إلى الفصيلة Scorpaenidae. تم العثور عليه في المحيط الهادئ الوسطى الشرقية. <br> <br> يصبح الذكور الكاليكو جاهزين جنسيا في سن السابعة ، بينما يصل الإناث إلى النضج الجنسي في سن التاسعة.",
		california_scorpionfish_description = "سمك العقرب كاليفورنيا هو نوع من أنواع الأسماك المنتمية لعائلة سمك العقرب، ويعرف أيضًا باسم العقرب كاليفورنيا. يعيش هذا السمك في المحيط الهادئ الشرقي ويتواجد على طول سواحل ولايتي كاليفورنيا وباجا كاليفورنيا.",
		canary_rockfish_variant_1_description = "سمك الصخر الكناري، المعروف أيضًا باسم سمك الصخر البرتقالي، هو نوع من أنواع الأسماك البحرية المتبعرة يتبع فصيلة سباستيني، أو سمك الصخر. ويعيش عادة في مياه المحيط الهادئ قبالة الساحل الغربي لأمريكا الشمالية.",
		canary_rockfish_variant_2_description = "الأسماك الجبلية الصفراء ، المعروفة أيضًا باسم الأسماك الجبلية البرتقالية ، هي نوع من الأسماك البحرية التي تنتمي إلى فصيلة Sebastinae ، وهي أسماك جبلية ، جزء من عائلة Scorpaenidae. وهي موجودة في المياه المحيطية للمحيط الهادئ قبالة الساحل الغربي لأمريكا الشمالية.",
		chilipepper_rockfish_description = "Sebastes goodei ، والمعروفة أيضًا باسم أسماك الروكفيش تشيليبيبر ، هي نوع من الأسماك البحرية التي تنتمي إلى فصيلة Sebastinae ، وهي أسماك جبلية ، جزء من عائلة Scorpaenidae. تعيش هذه الأنواع في الغالب قبالة الساحل الغربي لأمريكا الشمالية من باجا كاليفورنيا إلى فانكوفر.",
		china_rockfish_description = "سمك الصخر الصيني، الصخر الشريطي الأصفر أو الصخر الأصفر المنقط، هو نوع من الأسماك البحرية ذات زعانف العظام ينتمي إلى فصيلة ساباستيناي، والتي تسمى بسمك الصخور، ويعتبر جزءًا من عائلة سكورابينيد. وهو موطنه مياه المحيط الهادئ على طول الساحل الغربي لأمريكا الشمالية.",
		copper_rockfish_variant_1_description = "سمك الصخر النحاسي، والمعروف أيضًا بسمك الأسماك، هو نوع من الأسماك البحرية ذات زعانف العظام ينتمي إلى فصيلة ساباستيناي، والتي تسمى بسمك الصخور، ويعتبر جزءًا من عائلة سكوربينيد. يُوجد في المحيط الهادئ الشرقي. لن يتم رؤيتهم أبدًا في المحيطات العامة، لأنهم يريدون فقط البقاء بالقرب من القمة أو أسفل البحر.",
		copper_rockfish_variant_2_description = "سمك الحجر النحاسي، المعروف أيضًا باسم البربيط النحاسي، هو نوع من أسماك الأشعة الزعانف البحرية التابعة لفصيلة سيباستيني، و هي فصيلة تنتمي إلى عائلة سكوربينيداي. و يتم العثور عليه في المحيط الهادئ الشرقي.<br><br> لن يتم رؤيته أبدًا في المحيطات العادية، حيث أنها تعيش على القرب من القمة أو في القاع فقط.",
		cowcod_description = "سيباستيس ليفيس ، وتعرف أيضًا باسم البربيط البقري أو سمك الحجر ، هو نوع من أسماك الأشعة الزعانف البحرية التابعة لفصيلة سيباستيني ، وهي فصيلة تنتمي إلى عائلة سكوربينيداي. ويتم العثور عليها في المحيط الهادئ الشرقي. <br><br> تتراوح حجمها ما بين كبير وصغير مما يخلق منافسة قوية.",
		darkblotched_rockfish_description = "السمك الصخري الداكن النقطي، هو أحد أنواع الأسماك ذات الجسم العميق المعروفة أيضًا باسم سمك الصخر الأسود النقطي، وسمك الصخر ذو الفم الأسود، وسمك الصخر المتسطر الأسود.",
		deacon_rockfish_description = "يعد سمك الصخر الدياكون من أنواع الأسماك البحرية ، تتبع الفصيلة سباستيني، ويتميز بوجود طول آذرين ذكورين يفوق طول الإناث.",
		dusky_rockfish_dark_version_description = "يُعد سمك الصخر المعتم من الأنواع الشائعة التي توجد في شمال المحيط الهادئ ويُعرف أيضًا باسم سمك الصخر المدمع.",
		dusky_rockfish_light_version_description = "سمك الصخر الغامق هو نوع من أنواع سمك الصخور يعرف أيضًا باسم (Sebastes ciliatus) وغالبًا ما يتم العثور عليه في المحيط الهادئ الشمالي.",
		flag_rockfish_description = "سمك الصخر المخطط هو نوع من سمك الحيدات التابع للجنس Sebastes rubrivinctus، يعرف أيضًا باسم سمك العلم الإسباني أو سمك الصخر الحمراء أو سمك الصخر المصفّر أو الشامي. يُعد من فصيلة Sebastes ويتبع عائلة الحيدات. ويتم العثور عليه في مياه المحيط الهادئ الشرقي.",
		gopher_rockfish_description = "سمك الصخر (راكون)،يطلق عليه أيضًا سمك البحر الخلد وهو نوع من الأسماك التي تتبع فصيلة حيدات الصخور (Sebastinae). ويتم العثور عليه في المحيط الهادئ الشرقي، وبشكل رئيسي قبالة سواحل كاليفورنيا.",
		grass_rockfish_dark_version_description = "سمك الصخر العشبي الداكن (Sebastes rastrelliger)، يعتبر من أنواع الأسماك البحرية ذات الزعانف الشعاعية المنتمية إلى فصيلة سكوربينايدي Scorpionidae وهو جزء من فرع أسماك القارورة. يوجد طبيعيًا في مياه المحيط الهادىء الشرقي.<br><br>يستخدم عادة من قبل الصيادين الترفيهيين باستخدام الصعادة والخط الصيد.",
		grass_rockfish_light_version_description = "سمك الصخر العشبي الفاتح (Sebastes rastrelliger)، يعتبر من أنواع الأسماك البحرية ذات الزعانف الشعاعية المنتمية إلى فصيلة سكوربينايدي Scorpionidae وهو جزء من فرع أسماك القارورة. يوجد طبيعيًا في مياه المحيط الهادىء الشرقي.<br><br>يستخدم عادة من قبل الصيادين الترفيهيين باستخدام الصعادة والخط الصيد.",
		greenblotched_rockfish_description = "سمكة الحجر الرمادي النقطي الخضراء هي نوع من الأنواع الساكنة القاعية التي تتواجد لاحمردية بمفردها أو في مجموعات صغيرة داخل هياكل الصخور على عمق يتراوح بين 55 مترًا (180 قدمًا) و 490 مترًا (1610 قدمًا). يصل طولها الأقصى إلى 54 سم (21 بوصة) ، ويكون الإناث أكبر من الذكور. <br> <br> تشترك الأصناف الثلاثة الخضراء والنقطية المخضرة والمخططة الخضراء في الخصائص والسلوكيات.",
		greenspotted_rockfish_description = "سيباستيس كلوروستيكتوس، هي نوع من أنواع الأسماك البحرية المنتمية لفصيلة السمك الحجري التابعة للعائلة الصقورية Scorpaenidae. يتم العثور عليه في المحيط الهادئ الشرقي. <br> <br> تشترك الأصناف الثلاثة الخضراء والنقطية المخضرة والمخططة الخضراء في الخصائص والسلوكيات.",
		greenstriped_rockfish_description = "يعد سمك الصخر الخضراء المخططة، والمعروف أيضًا باسم الصخور المخططة، وسمك الفراولة والقلادات، بأنه نوع من الأسماك البحرية التي تنتمي إلى فصيلة سباستيني، وهي الأسماك الصخرية، التي تعد جزءًا من عائلة سكوربينيدي. يتواجد في المحيط الهادئ الشمالي الشرقي.<br><br>يتمتع سمك الصخر الخضراء المخططة، وسمك الصخر الأخضر المنقط وسمك الصخر الخضراء المخططة بنفس الخصائص والسلوكيات.",
		halfbanded_rockfish_description = "يعد سمك الصخر شبه الرباط نوع من أنواع الأسماك البحرية التي ينتمي إلى فصيلة سباستيني، وهي الأسماك الصخرية، التي تعد جزءًا من عائلة سكوربينيدي. يتواجد في المحيط الهادئ الشرقي.",
		honeycomb_rockfish_description = "لديه جسم صغير وعريض مقارنة بالطول العادي، ومغطى بالأشواك، واللون يتراوح بين البني والأحمر الفاتح مع 4 إلى 6 بقع بيضاء موزعة بشكل عشوائي فوق خطهم الجانبي.",
		kelp_greenling_female_description = "إن الإنثى من كلب غرينلينج الذي يعيش بالقرب من الأعشاب البحرية لديها بثور بنية إلى ذهبية صغيرة على خلفية رمادية إلى بنية. والزعانف هي في الغالب باللون البرتقالي الأصفر. بينما يتميز الذكر باللون الرمادي إلى اللون الأخضر، وببقع زرقاء غير منتظمة تغطي نصف الجسم الأمامي إلى ثلثي الجسم. يوجد بشكل شائع في المياه الأقل عمقًا من 328 قدمًا.",
		kelp_greenling_male_description = "السمكة الخضراء البحرية ذات الشعر (الذكر) لونها بني أوليفي إلى رمادي، مع بقع زرقاء غير منتظمة مبطنة باللون الأسود على ظهرها ورأسها. تمتلك كلا الذكر والأنثى ترجيحًا شعريًا صغيرًا فوق كل عين. يصل طول هذا النوع إلى 60 سم.<br><br> تُوجد عادةً في مياه أقل عمقًا من 328 قدمًا. ",
		kelp_rockfish_description = "Sebastes atrovirens ، سمك الصخرة الخضراء البحرية هو نوع من الأسماك البحرية ذات الزعانف الشعرية البحرية التي تنتمي إلى فصيلة Sebastinae ، سمك الصخور ، وهو جزء من عائلة Scorpaenidae. يوجد هذا النوع في المحيط الهادئ على طول الساحل الكاليفورني في الولايات المتحدة الأمريكية وباخا كاليفورنيا في المكسيك. ",
		lingcod_description = "يعتبر اللينجكود من الحيوانات الفتاكة ويمكن أن يصل وزنها إلى أكثر من 80 باوند (35 كيلوجرام) وطولها يصل إلى 60 بوصة (150 سم). يتميزوا بفم كبير به 18 سنًا حادًا. تختلف ألوانهم عادة، وعادة ما يظهر لون بني غامق أو نحاسي في تجمعات.",
		olive_rockfish_description = "يعتبر سمك الصخر الزيتوني ،Acanthoclinus fuscus، من أسماك البليسيوبيداي الطويلة الزعانف. تم العثور عليها فقط في منطقة المد العالي وفي برك الصخور عندما يكون المد منخفضًا، ويصل حجم الأسماك إلى 30 سم.",
		pacific_ocean_perch_description = "يُعرف أيضًا بـالمُقَلَّم الأحمر أو سَمَّكَةُ الرُّوز، ينتشر سمك المقلم الأحمر في مناطق المحيط الهادئ الشمالي حول الحافة الهادئة من جنوب كاليفورنيا إلى شمال هونشو، اليابان، بما في ذلك بحر بيرينغ.",
		pacific_sand_sole_description = "يُعرف سمك الوحيد الرملي في المحيط الهادئ الوسطى، أيضًا باسم سمك الوحيد الرملي البسيط. يعيش هذا النوع من أسماك السمك السطحية على الأسفلت الرملية في مياه المحيط الهادئ الشمالي الشرقي، وهو النوع الوحيد الموجود في الجنس Psettichthys، وينتشر من بحر بيرينغ إلى شمال كاليفورنيا.",
		pacific_sanddab_description = "سمك الهامور الشقيق هو نوع من أنواع الأسماك السطحية. وهو بلا شك أكثر أنواع الهامور شيوعًا ، ويشارك موطنه مع هامور الأخطبوط ذو الزعانف الطويلة وهامور النقاط. وهو سمك مسطح بحجم متوسط، لونه بني فاتح بقع بنية أو سوداء ، في بعض الأحيان مع بقع بيضاء أو برتقالية.",
		quillback_rockfish_variant_1_description = "سمكة الجندريس الخلفي، المعروفة أيضًا باسم سمك الجندريس البحري ، هي نوع من الأسماك البحرية التي تنتمي إلى فئة الأسماك العظمية البحرية أو سمك الصخر. تعيش هذه السمكة أساساً في مراجيح المياه المالحة. يبلغ وزن البالغين المتوسط 2-7 باوند وقد يصل طولها إلى متر واحد. <br> <br> حول Cali ، تعيش هذه الأسماك لمدة 15 عامًا. حول كندا ، تعيش هذه الأسماك لمدة 95 عامًا على الأقل ، مما يثبت أن CA> US.",
		quillback_rockfish_variant_2_description = "سمكة الروك فش انكومبي, المعروفة أيضًا باسم الأفعى الجلدية الأمريكية ، هي نوع من الأسماك البحرية ريشة الزعانف التي تنتمي إلى فصيلة Sebastinae، وهي جزء من عائلة Scorpaenidae. تحتوي هذه السمكة بشكل رئيسي على الشعاب المرجانية للمياه المالحة. ويبلغ متوسط وزن الكبار حوالي 2-7 باوندات وقد يصل بطول متر واحد.<br><br> في منطقة كالي تعيش هذه الأسماك لمدة 15 عامًا أما في كندا تعيش لمدة 95 عامًا على الأقل. لذلك يؤكد ذلك أن كندا أفضل من الولايات المتحدة الأمريكية.",
		redbanded_rockfish_description = "سمكة الروك فش الخطمية الحمراء ، والمعروفة أيضًا باسم اللص ، وسنجة الحمامة ، وعلم إسبانيا ، وهوليوود ، والمحكوم ، والكناري ، وهي نوع من الأسماك البحرية ريشة الزعانف التي تنتمي إلى فصيلة Sebastinae، وهي جزء من عائلة Scorpaenidae. تتواجد في شمال المحيط الهادئ.",
		rock_sole_description = "سمك الروك سول (Lepidopsetta bilineata) هو سمك مسطح من عائلة Pleuronectidae. إنه سمك ديمرزالي يعيش على أسماك الرمال والحصى على عمق يصل إلى 575 مترًا (1,886 قدمًا) ، على الرغم من أنه يتم العثور عليه عادة بين عمق 0 و 183 مترًا (0 و 600 قدم).",
		rosy_rockfish_description = "Sebastes rosaceus ، سمك الروك فِشس الأسْطَح الوردي (rosey rockfish) هو نوع من الأسماك البحرية التي تتعلق بفصيلة Sebastinae ، وهي أسماك صخرية، وهي جزء من عائلة Scorpaenidae. وهو موجود في المحيط الهادئ الشرقي.",
		rougheye_rockfish_description = "سمك السيباستيز الذي يعرف بــ Rougheye Rockfish هو سمك من جنس السيباستيز، يتميز بأنه لونه أسود مع حنجرة سوداء ويصل طوله إلى 97 سم على الأكثر، ويبلغ وزنه في الرقم القياسي للـ IGFA 14 باوندًا و 12 أونصة.",
		shortraker_rockfish_description = "يعتبر سمك السيباستيز الفئران الصغيرة واحدًا من أكبر أنواع سمك السيباستيز. تتميز هذه الأسماك بلون وردي فاتح أو برتقالي وردي أو أحمر مع بقع ظاهرة عليها ومسافات ظهرية. جميع الأحذية الطفيلية بها لون أسود ويمكن أن يكون الجزء العلوي للزعانف الظهرية أبيض مما يجعله مميزًا، ويكون لون الفم أحمر ومعظم الأحيان يحتوي على بقع سوداء. سمك السيباستيز الفئران الصغيرة هو واحد من أطول الأنواع البحرية عمرًا على الأرض حيث تم تسجيله بعمر 157 سنة.",
		silvergray_rockfish_description = "سمك الصخر الرمادي الفضي هو نوع من أنواع سمك الصخر النحيلة وله شوك الرأس مخفضة. لديهم شفاه غامقة اللون وفك سفلي طويل ويبرز بعيدًا عن الفك العلوي. لديهم قطعة عظمية بارزة عند طرف فكهم السفلي.",
		speckled_rockfish_description = "سباستس أوفاليس، سمك الصخر المنقط، هو نوع من الأسماك البحرية التي تنتمي إلى فصيلة أسماك السناري، وهي جزء من عائلة السمك الدائري. يتم العثور على هذا النوع في المناطق الصخرية العميقة في المحيط الهادئ الشرقي.",
		squarespot_rockfish_description = "يعرف أيضًا باسم \"Sebastes hopkinsi\"، وهو نوع من الأسماك البحرية ذات الزعانف العظمية المنتمية إلى فصيلة سيباستين، وهي أسماك الصخور، وجزء من عائلة السكوربيندي. يوجد هذا النوع في المحيط الهادئ الشرقي.",
		starry_flounder_description = "السمكة السلطعونية نجمية معروفة أيضًا باسم الآلة الطحن، والعجلة الصنفرة، والسمك المسطح ذو الأنف الطويل، وهو نوع شائع من الأسماك المسطحة الذي يتواجد حول حواف المحيط الهادئ الشمالية.",
		starry_rockfish_description = "السمكة الصخرية النجمية، التي تُعرف أيضًا باسم المهاجم المنقط، والسمكة الصخرية المنقطة، والسمكة الصينية، و الكود الأحمر، هي نوع من الأسماك البحرية ذات الزعانف العظمية المنتمية إلى فصيلة سيباستين، وهي أسماك الصخور، جزء من عائلة السكوربيندي. يوجد في المحيط الهادئ الشرقي.",
		tiger_rockfish_dark_version_description = "السمك الحجري النمري الداكن، المعروف أيضًا باسم سمك البحر النمري الداكن، سمك البحر الأسود وسمك البحر النمري المجعد وهو نوع من الأسماك البحرية التي تنتمي إلى فصيلة سكوربينيديه، وعائلة سيباستينيه، التي تعيش في مياه المحيط الهادئ قبالة غرب أمريكا الشمالية.",
		tiger_rockfish_pink_version_description = "السمك الحجري النمري الوردي، المعروف أيضًا باسم سمك البحر النمري الوردي، سمك البحر الأسود وسمك البحر النمري المجعد وهو نوع من الأسماك البحرية التي تنتمي إلى فصيلة سكوربينيديه، وعائلة سيباستينيه، التي تعيش في مياه المحيط الهادئ قبالة غرب أمريكا الشمالية.",
		treefish_description = "السمكة الشجرية هي نوع من أسماك المحيطات الراقية التابعة لفصيلة الصخور ، جزء من عائلة Scorpaenidae. وهي موطنها المحيط الهادئ الشرقي.",
		vermilion_rockfish_description = "Sebastes miniatus، وهي سمكة الصخر النارية، وسمك الإمبراطور، والفاخر الأحمر، والمرجان الأحمر ، وتعتبر جزء من عائلة Scorpaenidae.",
		widow_rockfish_description = "سمكة الصخور الأرملة ، أو القنبلة البنية ، وهي نوع من أسماك المحيطات الراقية التابعة لفصيلة الصخور ، جزء من عائلة Scorpaenidae. ويتم العثور عليه في المحيط الهادئ الشمالي الشرقي.",
		yelloweye_rockfish_adult_description = "سمك الصخرة العين الصفراء هو نوع من الأسماك البحرية ذات الزعانف الشعاعية التي تنتمي إلى فصيلة Sebastinae، وهي أسماك صخرية، وهو جزء من عائلة Scorpaenidae، ويعد أحد أكبر أنواع جنس Sebastes. ويستمد اسمه من لونه.",
		yelloweye_rockfish_juvenile_description = "سمك الصخرة العين الصفراء هو نوع من الأسماك البحرية ذات الزعانف الشعاعية التي تنتمي إلى فصيلة Sebastinae، وهي أسماك صخرية، وهو جزء من عائلة Scorpaenidae، ويعد أحد أكبر أنواع جنس Sebastes. ويستمد اسمه من لونه.",
		yellowtail_rockfish_description = "سمك الحجر الأصفر أو سمك الشعري الأصفر (الاسم العلمي: Sebastes flavidus)، هو نوع من الأسماك البحرية يتبع فصيلة الشعريات (الاسم العلمي: Sebastinae)، وجزء من فصيلة السمك الحجري (الاسم العلمي: Scorpaenidae). يعيش هذا النوع أساسًا قبالة ساحل غرب أمريكا الشمالية من كاليفورنيا إلى ألاسكا. <br> <br> يعيش اليرقات والصغار بالقرب من السطح، بينما يعيش الكبار في المياه العميقة فوق الأرصفة الصخرية.",

		weapon_dagger = "سيف الفرسان القديم",
		weapon_bat = "مضرب البيسبول",
		weapon_bottle = "زجاجة مكسورة",
		weapon_crowbar = "عصا كراوبار",
		weapon_unarmed = "لقمة اليد",
		weapon_flashlight = "كشاف يدوي",
		weapon_golfclub = "عصا الغولف",
		weapon_hammer = "مطرقة",
		weapon_hatchet = "ساطور",
		weapon_knuckle = "قبضة نحاسية",
		weapon_knife = "سكين",
		weapon_machete = "ماشيتي",
		weapon_switchblade = "سكين قابل للطي",
		weapon_nightstick = "عصا الليل",
		weapon_wrench = "مفتاح ربط أنابيب",
		weapon_battleaxe = "فاس",
		weapon_poolcue = "عصا البلياردو",
		weapon_stone_hatchet = "ساطور حجري",
		weapon_candycane = "عصا الحلوى",

		weapon_pistol = "مسدس",
		weapon_pistol_mk2 = "مسدس Mk II",
		weapon_combatpistol = "مسدس قتالي",
		weapon_appistol = "مسدس AP",
		weapon_stungun = "مسدس الصاعقة",
		weapon_pistol50 = "مسدس .50",
		weapon_snspistol = "مسدس SNS",
		weapon_snspistol_mk2 = "مسدس SNS Mk II",
		weapon_heavypistol = "مسدس ثقيل",
		weapon_vintagepistol = "مسدس الكلاسيكي",
		weapon_flaregun = "مسدس الإنارة",
		weapon_marksmanpistol = "مسدس الرماية",
		weapon_revolver = "مسدس الزنبرك",
		weapon_revolver_mk2 = "مسدس الزنبرك Mk II",
		weapon_doubleaction = "مسدس الزنبرك ذو الأسلوب المزدوج",
		weapon_raypistol = "مسدس راي آب ن أتومايزر",
		weapon_ceramicpistol = "مسدس سيراميك",
		weapon_navyrevolver = "مسدس البحرية ريفولفر",
		weapon_gadgetpistol = "مسدس بيريكو",
		weapon_stungun_mp = "مسدس إصابة كهربائية (مناسبة للعب الجماعي)",
		weapon_pistolxm3 = "مسدس WM 29",

		weapon_microsmg = "رشاش SMG المصغر",
		weapon_smg = "رشاش SMG",
		weapon_smg_mk2 = "رشاش SMG Mk II",
		weapon_assaultsmg = "رشاش SMG الهجومي",
		weapon_combatpdw = "مسدس PDW المرتبك",
		weapon_machinepistol = "مسدس الرشاشة",
		weapon_minismg = "رشاش Mini SMG",
		weapon_raycarbine = "بندقية راي كاربين",

		weapon_pumpshotgun = "بندقية الزلزال",
		weapon_pumpshotgun_mk2 = "بندقية المضخة Mk II",
		weapon_sawnoffshotgun = "بندقية الصيد القصيرة",
		weapon_assaultshotgun = "بندقية الهجوم",
		weapon_bullpupshotgun = "بندقية الثور الفرنسي",
		weapon_musket = "مسدس",
		weapon_heavyshotgun = "بندقية الثقيلة",
		weapon_dbshotgun = "بندقية الدبل",
		weapon_autoshotgun = "بندقية الاسكاط الآلي",
		weapon_combatshotgun = "بندقية المعارك",

		weapon_assaultrifle = "بندقية الهجوم",
		weapon_assaultrifle_mk2 = "بندقية الهجوم Mk II",
		weapon_carbinerifle = "بندقية الكارباين",
		weapon_carbinerifle_mk2 = "بندقية الكارباين Mk II",
		weapon_advancedrifle = "بندقية متقدمة",
		weapon_specialcarbine = "بندقية خاصة",
		weapon_specialcarbine_mk2 = "بندقية خاصة Mk II",
		weapon_bullpuprifle = "بندقية بولبوب",
		weapon_bullpuprifle_mk2 = "بندقية بولبوب Mk II",
		weapon_compactrifle = "بندقية مدمجة",
		weapon_militaryrifle = "بندقية عسكرية",
		weapon_heavyrifle = "بندقية ثقيلة",
		weapon_tacticalrifle = "بندقية خدمية",

		weapon_mg = "رشاش",
		weapon_combatmg = "رشاش قتالي",
		weapon_combatmg_mk2 = "رشاش قتالي Mk II",
		weapon_gusenberg = "مكنسة جوزنبرج",

		weapon_sniperrifle = "بندقية قنص",
		weapon_heavysniper = "بندقية قنص عيار ثقيل",
		weapon_heavysniper_mk2 = "بندقية قنص عيار ثقيل Mk II",
		weapon_marksmanrifle = "بندقية رماية تكتيكية",
		weapon_marksmanrifle_mk2 = "بندقية رماية تكتيكية Mk II",
		weapon_precisionrifle = "بندقية دقيقة",

		weapon_rpg = "قاذفة صواريخ",
		weapon_grenadelauncher = "قاذفة قنابل",
		weapon_grenadelauncher_smoke = "قاذفة قنابل دخانية",
		weapon_minigun = "رشاشة ميني",
		weapon_firework = "إطلاق الألعاب النارية",
		weapon_railgun = "ريل جان",
		weapon_hominglauncher = "قاذفة صواريخ موجهة",
		weapon_compactlauncher = "قاذف القنابل المدمرة",
		weapon_rayminigun = "مدفع راي ميني",
		weapon_emplauncher = "قاذف النبضات الإلكترومغناطيسية المدمرة",
		weapon_stinger = "قاذف الصواريخ القابلة للتوجيه",
		weapon_railgunxm3 = "مدفع ريل كويل جانبي",

		weapon_grenade = "قنبلة",
		weapon_bzgas = "غاز بي زي",
		weapon_molotov = "زجاجة حارقة",
		weapon_stickybomb = "قنبلة لاصقة",
		weapon_proxmine = "الألغام القريبة",
		weapon_snowball = "كرات الثلج",
		weapon_pipebomb = "قنبلة أنبوبية",
		weapon_ball = "كرة البيسبول",
		weapon_smokegrenade = "قنبلة الدخان", -- ملاحظة: تسمى "غاز الدموع",
		weapon_flare = "الشماريخ",
		weapon_acidpackage = "حزمة الحمضيات",

		weapon_petrolcan = "علبة البنزين",
		gadget_parachute = "مظلة",
		weapon_fireextinguisher = "طفاية حريق",
		weapon_hazardcan = "علبة بنزين خطر",
		weapon_fertilizercan = "علبة سماد",

		red_parachute = "مظلة حمراء",
		blue_parachute = "مظلة زرقاء",
		black_parachute = "مظلة سوداء",

		weapon_dagger_description = "لديك مظهر قرصاني ولكن لا يوجد سلاح شرس لإكمال المظهر؟ تمتلك هذا الخنجر مع مقبض محمي.",
		weapon_bat_description = "عصا بيسبول من الألمنيوم مع مقبض جلدي. خفيفة الوزن ولكنها قوية بما يكفي للصائدين الكبار.",
		weapon_bottle_description = "ليست ذكية ولا جميلة، ولكن في معظم الأحيان هذا هو الخيار الأفضل عندما يأتي الرجل نحوك بسكين. عندما يفشل كل الأمور، هذا السلاح هو الحل.",
		weapon_crowbar_description = "عصا ثقيلة الواجب من الصلب المعالج من خامة عالية الجودة، لإتاحة مزيد من الرافعة لإنجاز عملك.",
		weapon_unarmed_description = "عندما تفشل كل الأمور، فكِّ الشنب واعمل بما لديك من قوة بدنية.",
		weapon_flashlight_description = "قوِّي خوفك من الظلام بهذه المصدر الضوئي المزود بالبطارية والذي يعمل على مسافة قريبة. مفيد لتوجيه ضربات قوية.",
		weapon_golfclub_description = "عصا غولف طولها القياسي ووزن متوسط مع مقبض مطاطي للعب القصير القاتل.",
		weapon_hammer_description = "مطرقة متعددة الأغراض وقوية بمقبض خشبي منحني ولا تزال هذه المطرقة الكلاسيكية القديمة تُسيطر على المنافسة.",
		weapon_hatchet_description = "اصنع حطبًا مما يدفعك إليه أصدقاؤك بهذه المنشار السهل التحكم والسهل الإخفاء.",
		weapon_knuckle_description = "مثالي لضرب أسنان الذهب، أو كهدية لشريك الأعمال الذي يملك كل شيء.",
		weapon_knife_description = "هذا السكين الذي يبلغ طول شفرته 7 بوصات مصنوع من الفولاذ الكربوني مزدوج الحافة و يحتوي على ظهر مسنن لتوفير إمكانيات تغريز و طعن أفضل.",
		weapon_machete_description = "تدور صفقات السلاح الغربية الأفريقية لأمريكا ليست فقط حول العطاء. إكتشف الحياة البسيطة مع هذا الساطع الصدأ.",
		weapon_switchblade_description = "من جيبك إلى النصف في ضلوع الرجل الآخر في أقل من ثانية: السكاكين القابلة للطي لن تخرج من الأزياء أبداً.",
		weapon_nightstick_description = "عصى ليلية بطول 24 بوصة مصنوعة من البولي كربونات.",
		weapon_wrench_description = "الاختيار الدائم لناجين من الكوارث النهائية وأباء عنيفين في جميع أنحاء العالم، ويبدو أنه يعد أيضًا أحد أنواع الأدوات.",
		weapon_battleaxe_description = "إذا كان جيدًا بما فيه الكفاية لجنود القدماء في الحروب وحراس الحدود في العصر الحديث وأمهات كرة القدم الدفاعيات، فيكفي أن يكون جيدًا بالنسبة لك.",
		weapon_poolcue_description = "لا شيء يضاهي صوت تحطيم الاكليل في لعبة البلياردو، خاصة عندما يتم تحطيمها في عمود شخص آخر.",
		weapon_stone_hatchet_description = "منتج نتيجة 2.5 مليون سنة من البحث والتطوير. ما زلنا هنا.",
		weapon_candycane_description = "عصا حلوى موسمية. تملصقة بعض الشيء.",

		weapon_pistol_description = "مسدس قياسي. مسدس عيار .45 بقدرة على تحمل 12 طلقة قابلة للتوسيع إلى 16 طلقة.",
		weapon_pistol_mk2_description = "توازن وبساطة ودقة: لا شيء يحافظ على السلام مثل البارود في فم الشخص الآخر.",
		weapon_combatpistol_description = "مسدس نصف آلي خفيف الوزن ومدمج مصمم للاستخدام في إنفاذ القانون والدفاع الشخصي. مجلة 12 طلقة مع خيار التمديد إلى 16 طلقة.",
		weapon_appistol_description = "مسدس رشاش عالي الاختراق، يحتوي على 18 طلقة في المجلة مع إمكانية التوسع لـ 36 طلقة.",
		weapon_stungun_description = "متعة كهربائية للجميع!",
		weapon_pistol50_description = "لا تطلق رصاص ذو طابع كبير على رجل برصاص ذو طابع صغير.",
		weapon_snspistol_description = "مثل الواقيات الذكرية أو رذاذ الشعر، يناسب هذا المسدس جيبك للخروج في ليلة على المدينة. سعر زجاجة في النادي، نصف دقة فلين الشمبانيا، ومميت مضاعفة.",
		weapon_snspistol_mk2_description = "أفضل خيار لأنيقة المحفظة: إذا كنت ترغب في جعل ليلة السبت حقًا خاصة ، فهذه هي تذكرتك.",
		weapon_heavypistol_description = "البطل الثقيل في عالم الأسلحة النارية نصف التلقائي. يوفر دقة وتمرين جدل جاد في الساعد في كل مرة.",
		weapon_vintagepistol_description = "ما تحتاجه حقًا هو مسدس يمكن التعرف عليه بسهولة. تخرج عن النمط الاعتيادي في عملية سطو مسلح بهذا المسدس المحفور.",
		weapon_flaregun_description = "استخدمها للإشارة إلى الضرر أو الصراخ. تحذير: الإشارة مباشرة إلى الأفراد يمكن أن يتسبب في احتراق فجائي. جزء من حزمة مهمات السطو.",
		weapon_marksmanpistol_description = "ليس للذين يخشون المخاطر. استخدمها بحكمة لأنك ستتعين علي إعادة التحميل بشكل كثيف.",
		weapon_revolver_description = "مسدس يحتوي علي قدرة كافية لقتل وحوش الراينو، وثقيل بما يكفي للضرب بها حتي الموت إن كنت خارج الذخيرة.",
		weapon_revolver_mk2_description = "إذا كنت قادراً علي حمله، فهذا هو أقرب ما يمكن الوصول إلي إطلاق النار بسلاح يشبه القطار السريع.",
		weapon_doubleaction_description = "لأن الانتقام أحيانًا يكون أفضل قرار علي هيئة 6 طلقات متتالية، بين العينين.",
		weapon_raypistol_description = "سلاح فضائي خاص لمحاربي الجمهورية، جديدة قادمة من الحرب الكونية ضد الاشتراكية: لا ذخيرة ولا خزان، بل نبضة طاقة وحشية تلو الأخرى.",
		weapon_ceramicpistol_description = "ليست مثل بندقية جدتك. على الرغم من أن هذا السلاح الصغير يمكن أن يتسع في حقيبة يد جدتك ولن ينشط جهاز كاشف المعادن.",
		weapon_navyrevolver_description = "قطعة متحفية حقيقية. تريد معرفة كيف تمكنا من الفوز في الغرب - يتم إعادة التحميل ببطئ ومزيج كبير من الدماء.",
		weapon_gadgetpistol_description = "يتميز بإطلاق قاتل. لا تكن غاليًا. لن تؤذي الطلاء النيتريد التيتانيوم.",
		weapon_stungun_mp_description = "تمنحك متعة التلصيق للجميع!",
		weapon_pistolxm3_description = "هي مسدس صغير الحجم يطلق طلقات 9MM. فعال جدًا في المواجهات القريبة.",

		weapon_microsmg_description = "يجمع بين التصميم المدمج ومعدل إطلاق نار عالٍ حوالي 700-900 طلقة في الدقيقة.",
		weapon_smg_description = "يعرف هذا باسم المسدس الرشاش الجيد لجميع الاستخدامات. خفيف الوزن مع نظرة دقيقة وسعة خزنة 30 طلقة.",
		weapon_smg_mk2_description = "خفيف الوزن، مدمج، مع معدل إطلاق نار يصعب البقاء في حالة حية: كل مساحة محصورة تتحول إلى صندوق قتل بنقرة على الزناد المملوء بالزيت.",
		weapon_assaultsmg_description = "مسدس رشاش فائق السعة وخفيف الوزن، يحمل ما يصل إلى ٣٠ رصاصة في المجلة.",
		weapon_combatpdw_description = "مسدس شخصي يستحقه العسكريون الفضلاء. بفضل جهود مدافعينا، وليس الكونجرس. كما يحتوي على كاتم الصوت.",
		weapon_machinepistol_description = "هذا المسدس الآلي هو صندوق الإيقاع الذي يناسب قاعدة الدرام الخاصة بك، يجعل أي طلق في الاجتياح هجومي بطريقة صحيحة.",
		weapon_minismg_description = "حظي بشعبية متزايدة منذ أن بدأ فريق التسويق في الاهتمام بالأشخاص العاديين في المناطق ذات الدخل المنخفض.",
		weapon_raycarbine_description = "سلاح خاص بفريق جنود الفضاء الجمهوري الأمريكي. إذا كنت تريد تحويل كائن فضائي صغير إلى طين أخضر، فهذه هي الطريقة الوحيدة الأمريكية للقيام بذلك.",

		weapon_pumpshotgun_description = "بندقية قصيرة المدى مثالية للمعارك القريبة المدى. تزيد من دقة الإصابة عندما تكون على مسافة قريبة من الهدف.",
		weapon_pumpshotgun_mk2_description = "لن يوفر لك شيء آخر الحركة كما تفعل بندقية الـ Pump action: احترس ، فاندفاع السلاح عند الإطلاق يكاد يكون مميتًا مثل الطلقة.",
		weapon_sawnoffshotgun_description = "تعويضًا عن المدى المحدود والحمولة القليلة للذخيرة تم تقليص طول برميل هذه البندقية، لتحقق قدرًا كبيرًا من الكفاءة الفتاكة في المعارك القريبة المدى.",
		weapon_assaultshotgun_description = "بندقية آلية بمجلة تتسع لـ 8 طلقات وسرعة إطلاق نار عالية.",
		weapon_bullpupshotgun_description = "تعوض عن سرعة إطلاق النار البطيئة بنطاقها العريض ومدى إنتشار الطلقات. تدمر أي شيء في طريقها.",
		weapon_musket_description = "بالرغم من أن البريطانيين كانوا يحملون المسدسات فقط وكان لديهم مجموعة متفوقة من الأسلحة، إلا أنهم فتحوا نصف العالم. احصل على البندقية التي بنت إمبراطورية.",
		weapon_heavyshotgun_description = "السلاح الذي يمكن الوصول إليه عندما تحتاج بشكل قطعي لتدمير الغرفة. يستخدم بشكل مفضل بالقرب من الأسطح السهلة التنظيف فقط.",
		weapon_dbshotgun_description = "سلاح يقوم بشيء واحد ويفعله بشكل جيد. من يحتاج الى معدل اطلاق عالي عندما يتحول ضربتك الأولى بالسلاح هذا الى رذاذ رفيع؟",
		weapon_autoshotgun_description = "كم من الأدوات الفعالة للتحكم في الأعمال الشغبية يمكنك تخزينها في سروالك؟ حسنا، اثنين. لكن هذا هو الثاني.",
		weapon_combatshotgun_description = "لا يوجد سوى بندقية رش متوازنة نصفية تحتوي على معدل إطلاق يجعل جرس إنذار LSFD يرن، وأنت تنظر إليها الآن.",

		weapon_assaultrifle_description = "تتميز هذه البندقية الهجومية القياسية بسعة مخزن كبيرة ودقة بعيدة المدى.",
		weapon_assaultrifle_mk2_description = "نسخة محسنة من الكلاسيكية الخالدة: كل ما يلزم هو بعض العمل، والمظهر يمكن أن يقتل بعد كل شيء.",
		weapon_carbinerifle_description = "يمكن الاعتماد على بندقية الكاربين لتحقيق دقة عالية في المسافات البعيدة مع مجلة عالية السعة.",
		weapon_carbinerifle_mk2_description = "هذه هي القوة النارية المصممة حسب الطلب وفنيها: لا يمكنك إطلاق عاصفة من الرصاص بمزيد من الحب والعناية حتى لو أدخلتها باليد.",
		weapon_advancedrifle_description = "الأكثر خفةً واندماجًا بين بنادق الهجوم، دون التأثير على الدقة ومعدل إطلاق النار.",
		weapon_specialcarbine_description = "بفضل جمعه بين الدقة والتحكم والقوة النارية العالية والارتداد المنخفض، فإن هذا البندقية الهجومية متعددة الاستخدامات بشكل كبير في أي موقف قتالي.",
		weapon_specialcarbine_mk2_description = "حقق هذا الإصدار تحسناً فادحاً عن الإصدار السابق. ستُذهلون برشاقته ودقته العالية.",
		weapon_bullpuprifle_description = "هذه البندقية الخفيفة الوزن والتي تعتبر ذات تحكم جيد للغاية في إطلاق النيران الآلية، هي آخر منتجات الصين التي حققت شهرةً في أمريكا.",
		weapon_bullpuprifle_mk2_description = "دقيق للغاية، ورائع بتصميمه الجميل، وليس من البعيد أن يعتبر هذا السلاح تحفة فنية!",
		weapon_compactrifle_description = "نصف الحجم، والكثير من القوة، ضعف المتانة: ليس هناك طريقة أكثر خطورة للقول \"إني أتعوض عن شيء\".",
		weapon_militaryrifle_description = "صممت هذه البندقية الهجومية القوية جدًا للجنود المؤهلين بشكل عالي والذين يتمتعون بمهارات استثنائية. نعم، يمكنك شرائها.",
		weapon_heavyrifle_description = "الأثقل يعني الأفضل، أليس كذلك؟ نعم، دعنا نذهب مع ذلك.",
		weapon_tacticalrifle_description = "هذا الأسلوب الأساسي للمساعدة على تنفيذ القانون هو المطلوب لهذا الموسم، بالنسبة لرجال الشرطة والعسكريين ولمن يحاربون حتى الموت إما مع رجال الشرطة أو العسكريين.",

		weapon_mg_description = "رشاش عام يجمع بين التصميم القوي والأداء الموثوق. قوة اختراق لمسافات بعيدة وفعال ضد المجموعات الكبيرة.",
		weapon_combatmg_description = "رشاش خفيف الوزن ومدمج يجمع بين التحكم الرائع ومعدل إطلاق نار عالٍ لتحقيق تدمير كبير.",
		weapon_combatmg_mk2_description = "لا يمكن أن تكون لديك الكثير من الأشياء الجيدة: ففي النهاية، إذا كانت الطلقة الأولى مهمة، فإن الطلقات الـ 100 التالية يجب أن تحسب بشكل مضاعف تقريبًا.",
		weapon_gusenberg_description = "أكمل منظرك بمدفع الحظر. يبدو رائعًا أثناء إخراجه من نافذة روزفلت أو مقترنًا ببدلة بخطوط رفيعة.",

		weapon_sniperrifle_description = "بندقية قنص قياسية، مثالية للحالات التي تتطلب دقة على مدى بعيد. القيود تتضمن سرعة إعادة التحميل البطيئة ومعدل إطلاق النار منخفض جدًا.",
		weapon_heavysniper_description = "تتميز بطلقات تخترق الدروع لتسبب ضررًا كبيرًا، وتأتي مع نطاق ليزر كمعيار.",
		weapon_heavysniper_mk2_description = "بعيدًا، ولكن دائمًا حميم: إذا كنت تبحث عن أساس آمن لعلاقة عن بعد، فهذه هي الأساسية.",
		weapon_marksmanrifle_description = "سواء كنت على مسافة قريبة أو بعيدة ولكن مزعجة، فإن هذا السلاح سيفعل المهمة. أداة متعددة الأغراض للأدوات.",
		weapon_marksmanrifle_mk2_description = "يعرف في الأوساط العسكرية باسم \"The Dislocator\" ، سيقوم هذا المود سيت بتدمير الهدف وكتفك ، بتلك الترتيب.",
		weapon_precisionrifle_description = "بندقية للكماليين. لماذا تستقر على الإصابة في منتصف العينين ، عندما يمكنك الحصول على الإصابة عبر المخ الجبهي السامي؟",

		weapon_rpg_description = "سلاح محمول ومطلق من الكتف يطلق رؤوس حربية متفجرة. فعال جدا لإسقاط المركبات أو مجموعات كبيرة من المعتدين.",
		weapon_grenadelauncher_description = "قاذف قنابل خفيف وفعّال يحتوي على خاصية الإطلاق النصف تلقائي. يحمل حتى 10 قنابل.",
		weapon_grenadelauncher_smoke_description = "\"أنت تحصل على قنبلة دخانية، وأنت تحصل على قنبلة دخانية، وأنت تحصل على قنبلة دخانية!\" - أوبرا",
		weapon_minigun_description = "رشاش مدمر ب 6 أسطوانات يتميز بنظام دوران الأسطوانات بطريقة جاتلينغ. ذو معدل إطلاق عال جدًا (2000 إلى 6000 طلقة في الدقيقة).",
		weapon_firework_description = "أعِد بريق الألعاب النارية مع هذا القاذف الخاص بالألعاب النارية، والذي يضمن أن يثير إعجاب ودهشة الجماهير.",
		weapon_railgun_description = "كل ما تحتاج معرفته هو - المغناطيسية، وتفعل أشياء فظيعة على الأشياء الموجودة أمامها.",
		weapon_hominglauncher_description = "الإطلاق الصاروخي بالأشعة تحت الحمراء والموجه. يساعدك على استهداف أهداف متحركة بكل سهولة.",
		weapon_compactlauncher_description = "توصي دراسات الجمهور باستخدام النموذج العادي لأنه كان دقيقاً جداً ووجدوا أنه غير ملائم للاستخدام بيد واحدة على المحرك. سهل الحل.",
		weapon_rayminigun_description = "مسدس الفضاء الجمهوري الخاص. اذهب، قُل إني أعدل شيئاً في نفسي. أتحداك.",
		weapon_emplauncher_description = "استخدمها لإطلاق النار على الطائرات بدون طيار والمروحيات لجعلها نائمة.",
		weapon_stinger_description = "قاذف صواريخ من الكتف لإسقاط الطائرات العدوانية.",
		weapon_railgunxm3_description = "كل ما تحتاج إلى معرفته هو اللواصق المغناطيسية وأنه يفعل أشياء فظيعة للأشياء التي يتم توجيهها إليه.",

		weapon_grenade_description = "قنبلة تفجيرية قياسية. اسحب الدبوس واقذف، ثم ابحث عن مأوى. مثالية للقضاء على المعتدين المتجمعين.",
		weapon_bzgas_description = "استخدمها لحياكة الأشخاص الذين لا تحبهم.",
		weapon_molotov_description = "سلاح بدائي وفعّال للغاية. لا يوجد تخفيضات في هذا الكوكتيل القنبلي.",
		weapon_stickybomb_description = "شحنة من المتفجرات البلاستيكية المجهزة بمفجر عن بعد. يمكن رميها ثم تفجيرها أو إلصاقها بمركبة ثم تفجيرها.",
		weapon_proxmine_description = "اترك هدية لأصدقائك باستخدام هذه الألغام الأرضية التي تعمل بحساس الحركة. تأخير قصير بعد التنشيط.",
		weapon_snowball_description = "كونوا على استعداد وجهزوا طاقمكم لمعركة ودية بالكرات الثلجية، ولكن احذروا، فإنها قد تلحق أذى بشدها البارد.",
		weapon_pipebomb_description = "تذكر، لا يتم اعتبارها عبوة ناسفة من شأنها أن تهدد الأمن عند شرائها من متجر واستخدامها في دولة متقدمة.",
		weapon_ball_description = "موقعة من قبل بيب روث، ولا يمكن اعتبارها مزيفة بأي حال من الأحوال.",
		weapon_smokegrenade_description = "قنبلة غاز مسيل للدموع، فعالة بشكل خاص في تعطيل الجناة المتعددين. يمكن أن يكون التعرض المستمر لهذا النوع من الغاز قاتلاً.",
		weapon_flare_description = "يرمى في الهواء للدلالة على موقع التسليم.",
		weapon_acidpackage_description = "عبوة من الحمض، استخدمها لخلق فوضى وفوضى.",

		weapon_petrolcan_description = "يترك أثراً من البنزين يمكن إشعاله. <br> <br> متبقي من البنزين: ${petrolAmount}%.",
		gadget_parachute_description = "يتميز هذا المظلة الرياضية بتصميمها باراشوت رام آير بورش لزيادة السيطرة على الاتجاه والسرعة.",
		weapon_fireextinguisher_description = "جهاز إطفاء الحريق المعروف أيضًا باسم \"آلة الدخان\".",
		weapon_hazardcan_description = "مثل علبة البنزين ولكن لا فائدة منه.",
		weapon_fertilizercan_description = "علبة الكربون الزراعية الجيدة، لا شيء يتفوق عليها لمحاصيلك.",

		red_parachute_description = "مثل النظام العادي للمظلة ولكن باللون الأحمر.",
		blue_parachute_description = "مثل النظام العادي للمظلة لكن باللون الأزرق.",
		black_parachute_description = "المظلة السوداء، تشبه المظلة العادية ولكن باللون الأسود.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "بندقية الصيد",
		weapon_addon_huntingrifle_description = "السلاح الرئيسي الذي تستخدمه في الصيد.",

		weapon_addon_vfcombatpistol = "مسدس VF",
		weapon_addon_vfcombatpistol_description = "ابتسم وانتظر للتصوير.",

		weapon_addon_dp9 = "مسدس D&P 9",
		weapon_addon_dp9_description = "12 فرصة للقبض على دبليو.",

		weapon_addon_dutypistol = "مسدس SIG Sauer P226",
		weapon_addon_dutypistol_description = "النظام الأصلي للحماية المنزلية اللاسلكية.",

		weapon_addon_gardonepistol = "مسدس جاردون",
		weapon_addon_gardonepistol_description = "عند الشك، افرغ المجلة",

		weapon_addon_endurancepistol = "مسدس إندورانس",
		weapon_addon_endurancepistol_description = "فياجرا الأسلحة النارية",

		weapon_addon_sentinelshotgun = "بندقية سينتينل",
		weapon_addon_sentinelshotgun_description = "مسدس القتل ذو الاتجاه الواحد",

		weapon_addon_sentinelbbshotgun = "بندقية الأكياس",
		weapon_addon_sentinelbbshotgun_description = "أكياس ممتعة",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "مسدس الصاعقة الكهربائية",
		weapon_addon_stungun_description = "مرح مذهل لجميع الأعمار!",

		weapon_addon_mp9 = "بي أند تي MP9",
		weapon_addon_mp9_description = "صغيرة وسريعة، تشبه الشخص الذي يحملها...",

		weapon_addon_rc4 = "ريمنجتون آر4-سي",
		weapon_addon_rc4_description = "جريئة وسريعة، الشريك الكامل لديك في الفريق. طالما أن الشخص الأحمر الرأس لا يحملها.",

		weapon_addon_pp19 = "بي بي-19 فيتياز",
		weapon_addon_pp19_description = "قمة الاتقان الروسي، مثالية لأي نوع من \"الغارات\".",

		weapon_addon_m9a3 = "بريتا M9A3",
		weapon_addon_m9a3_description = "كل ما تحتاج إليه لأداء أعمالك القذرة بسعر معقول.",

		weapon_addon_357mag = "357 ماغنوم",
		weapon_addon_357mag_description = "من مواقف المرور إلى الزومبي، هذا المسدس هو أفضل صديق للشريف.",

		weapon_addon_m870 = "ريمنغتون M870",
		weapon_addon_m870_description = "بندقية الصيد الأمثل، على الرغم من أن إطلاق النار على داني ليس رياضة حقيقية ... أليس كذلك؟",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "أفضل بندقية آلية على الإطلاق، فقط لا تنسى البذلة الرياضية.",

		weapon_addon_tacknife = "سكين تكتيكي متعدد الأغراض النهائي",
		weapon_addon_tacknife_description = "أخيراً، وصلت إلى المستوى 100. الكولونيل سيفخر بك.",

		weapon_addon_reaper = "الحصاد",
		weapon_addon_reaper_description = "ماخيتي لكن بتصميم أكثر أناقة.",

		weapon_addon_berserker = "محارب الغضب",
		weapon_addon_berserker_description = "فأس رائعة.",

		weapon_addon_katana = "القتانا",
		weapon_addon_katana_description = "نينجا، أجل.",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "المستقبل هنا الآن، يا رجل قديم، فقط بعيار أصغر...",

		weapon_addon_g36c = "هيكلر وكوخ G36C",
		weapon_addon_g36c_description = "أبعاد بندقية رشاشة مع قدرات الذخيرة النهائية لرصاص 5.56 ملم ناتو. تم تطويرها للتطبيقات التكتيكية الخاصة من قبل الشرطة وقوات العمليات الخاصة العسكرية.",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "Valorant pog.",

		weapon_addon_ak74 = "AK-74",
		weapon_addon_ak74_description = "ابق مربوطًا أو اصفق يدك.",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "لم نعد في لندن يا صاحبي.",

		weapon_addon_mk18 = "ميكي 18",
		weapon_addon_mk18_description = "\"ابق مسلحًا أو امضَ ببطء\" - جورج واشنطن (ربما)",

		weapon_addon_glock = "جلوك 17",
		weapon_addon_glock_description = "المسدس الأكثر شهرة في العالم.",

		weapon_addon_colt = "كولت 1851 نافي",
		weapon_addon_colt_description = "المسدس الأصلي، الذي بدأ الكل.",

		weapon_addon_hk433 = "H&K 433",
		weapon_addon_hk433_description = "البندقية الهجومية الألمانية التي تم تطويرها من قبل هيكلر وكوخ في عام 2009.",

		weapon_addon_m6ic = "LWRC M6IC",
		weapon_addon_m6ic_description = "السلاح المثالي للشخص المثالي، فقط لا تنسى الزي الرياضي.",

		weapon_addon_hk416 = "H&K 416",
		weapon_addon_hk416_description = "H&K 416، فيراري الأسلحة النارية - أنيق وقوي، ومضمون لجذب الأنظار. إنها مثل وجود مدرب شخصي لإصبع الزناد الخاص بك، وتقدم نتائج ستجعل أعدائك يحسدونك. قل مرحباً بصديقك الجديد (أفضل سلاح على الإطلاق)!"
	},

	items = {
		move_to_repair = "انتقل هنا لإصلاح المركبة.",
		repairing_vehicle = "جارٍ إصلاح المركبة",
		using_first_aid_kit = "جارٍ استخدام علبة الإسعافات الأولية",
		using_bandages = "جارٍ استخدام الضمادات",
		using_ifak = "جارٍ استخدام كيس الإسعاف الفوري المفرد",
		move_to_wash = "انتقل هنا لغسل المركبة",
		vehicle_too_clean = "المركبة نظيفة جداً ولا يمكن غسيلها الآن",
		move_to_put_fake_plate = "انتقل هنا لوضع لوحة ترخيص مزيفة",
		unable_to_repair = "لا يمكنك إصلاح المركبة بينما يوجد لاعبون داخلها",
		failed_lockpicking = "فشل الكسر",
		lockpicking_succeeded = "تمت عملية الكسر بنجاح",
		hotwiring_vehicle = "سرقة السيارة",
		lockpick_broke = "كسر قفل لوكبيك",
		failed_hotwire = "فشل سرقة السيارة",
		unpacking_green_rolls = "فتح لفائف الأعشاب الخضراء",
		you_do_not_have_enough_rolling_paper = "لا يوجد لديك كفاية ورق لف",
		rolling_joint = "لف السجائر",
		rolling_joints = "لف السجائر",
		changing_license_plate = "تغيير رقم اللوحة",
		equipping_parachute = "تجهيز ${itemName}",
		lockpicking_vehicle = "فتح قفل السيارة باللوكبيك",
		illegal_weather_name = "محاولة استخدام تأثيرات جوية باسم غير قانوني.",
		equipping_body_armor = "جاري وضع درع الجسم",
		illegal_burger_shot_delivery_item_id = "محاولة استخدام عنصر تسليم برغر شوت غير شرعي مع معرف عنصر غير شرعي.",
		illegal_lighter_item_id = "محاولة استخدام عنصر الولاعة غير شرعي مع معرّف عنصر غير شرعي.",
		unable_to_use_lighter_in_vehicle = "لا يمكنك استخدام الولاعة في السيارة.",
		not_possible_in_a_vehicle = "هذا الإجراء غير ممكن في السيارة.",
		just_used_bandage = "لقد استخدمت طقم إسعافات أولية للتو ، انتظر قليلاً قبل استخدام طقم آخر.",
		drank_gasoline_death = "تسمم البنزين",
		drank_bleach_death = "تسمم بالمبيض",

		failed_burger_shot_delivery = "فشل في فتح وجبة برجر شوت.",
		failed_bean_machine_delivery = "فشل في فتح خدمة بين ماتشين.",

		burger_shot_delivery_empty = "يبدو أن تلك وجبة برجر شوت كانت فارغة.",
		bean_machine_delivery_empty = "يبدو أن خدمة بين ماتشين كانت فارغة.",

		logs_used_weather_spell_title = "استخدم تعويذة الطقس",
		logs_used_weather_spell_details = "${consoleName} استخدم تعويذة الطقس `${itemName}`.",

		you_have_used_jail_card = "لقد استخدمت بطاقة 'الخروج من السجن' !",
		you_are_not_in_jail = "أنت لست في السجن.",

		stored_map_location = "تم تحديث موقع الخريطة بنجاح.",
		failed_location_map = "لم يتم تحديث موقع الخريطة.",
		updated_waypoint = "تم وضع النقطة المرجعية في موقع الخريطة.",

		cleared_map = "تم حذف موقع الخريطة المخزنة بنجاح.",
		failed_clear_map = "فشل حذف موقع الخريطة المخزنة.",
		clear_map_invalid_slot = "فتحة التخزين في الشنطة غير صالحة."
	},

	jackpot = {
		press_to_deposit = "اضغط على ~INPUT_REPLAY_SHOWHOTKEY~ لإيداع العناصر في صندوق جاكبوت الإنترنت.",
		can_only_withdraw_at_casino = "يمكنك السحب فقط في الكازينو.",

		jackpot = "الجائزة الكبرى",
		inventory = "المخزن",
		history = "السجل",
		no_items_in_inventory = "يبدو أن ليس لديك أي عناصر في مخزنك الافتراضي.",
		you_can_deposit_at_the_casino = "يمكنك إيداع العناصر في الكازينو.",
		close = "إغلاق",
		bet = "رهان",
		your_chance = "فرصتك: ${chance}%",
		character_bet = "${characterName} راهن ${itemAmount} عناصر بقيمة $${itemWorth}",
		pot = "الجائزة الكبرى: $${jackpotWorth}",
		items = "العناصر: ${jackpotItemAmount}",
		withdraw = "سحب (${withdrawAmount})",
		quick_sell = "بيع سريع ($${quickSellWorth})",
		inventory_value = "القيمة: $${inventoryWorth}",
		inventory_total_items = "إجمالي العناصر: ${inventoryTotalItems}",
		daily_fee_information = "في الساعة 6 صباحًا بتوقيت UTC، سيتم إزالة العناصر بقيمة >= 5٪ من إجمالي قيمة المخزون الخاص بك كرسوم تخزين.",

		take_fee_no_permissions = "حاول اللاعب أخذ رسوم الجائزة دون الأذونات المناسبة.",
		took_jackpot_fees = "تم أخذ رسوم الجائزة. تمت إزالة ${removedTotalItems} من العناصر التي تبلغ قيمتها $${removedTotalWorth} من ${inventories} مخازن."
	},

	jail = {
		press_to_leave_jail = "اضغط ~INPUT_CONTEXT~ للخروج من السجن.",

		menu_title = "قائمة الزنزانة",
		check_remaining_time = "تحقق من الوقت المتبقي",
		leave_city = "مغادرة المدينة",
		leave_jail = "مغادرة السجن",
		close_menu = "إغلاق القائمة",

		sentence_reduced = "تم تخفيض عقوبتك بمقدار ${amount} أشهر، لديك ${remaining} أشهر متبقية.",
		sentence_over = "انتهت عقوبتك.",
		remaining_time = "الوقت المتبقي: ${remaining} أشهر.",
		jailed = "تم سجنك لمدة ${amount} أشهر.",

		mission_help_1 = "اضغط ~INPUT_CONTEXT~ لتنظيف الأرضية.",
		mission_help_2 = "اضغط ~INPUT_CONTEXT~ لتناول الطعام.",
		mission_help_3 = "اضغط ~INPUT_CONTEXT~ للتمرين.",

		mission_1 = "تنظيف الأرضيات.",
		mission_2 = "أكل شطيرة.",
		mission_3 = "التمرين الرياضي.",

		mission_blip = "مهمة السجن"
	},

	kiosks = {
		read_catalog = "اضغط على ~g~${InteractionKey} ~w~لقراءة الكتالوج"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] استخدام الزمام",
		putting_leash_on = "وضع الزمام.",
		press_to_take_leash_off = "[${InteractionKey}] خلع الزمام",
		takeing_leash_off = "خلع الزمام."
	},

	locate = {
		invalid_filter_value = "قيمة مرشح غير صالحة.",
		locate_failed = "فشل العثور على الكيان المطابق لـ `${filter}`.",
		something_went_wrong = "فشل في العثور على العنصر.",
		locate_success = "تم العثور بنجاح على الكيان المطابق لـ `${filter}` في (${x}, ${y}, ${z}) (النسخة = ${instance}).",

		locate_entity_no_permissions = "حاول اللاعب العثور على الكيان بدون الإذن المناسب.",

		locate_entity_logs_title = "العثور على الكيان",
		locate_entity_logs_details = "حاول ${consoleName} العثور على نوع الكيان `${filterType}` مع القيمة `${filterValue}`."
	},

	login = {
		exit_city = "الخروج من المدينة.",
		press_to_exit_city = "اضغط ~g~${InteractionKey} ~w~للخروج من المدينة.",
		bad_words_in_character_creation = "تم محاولة إنشاء شخصية تحتوي على كلمة قد تكون غير مناسبة في الاسم أو السيرة الذاتية: \"${badWords}\"",
		disallowed_words_in_character_name = "تم محاولة إنشاء شخصية تحتوي على اسم غير مناسب: \"${characterName}\"",
		disallowed_birthday_ban = "تم محاولة إنشاء شخصية تحتوي على تاريخ ميلاد غير مناسب: \"${birthday}\"",

		welcome_to = "مرحبًا بك في",
		press = "اضغط",
		enter = "ENTER",
		to_join = "للانضمام",
		changelogs = "سجل التغييرات",
		fetching_character_data = "جاري جلب بيانات الشخصية...",
		yes = "نعم",
		no = "لا",
		exit_game = "خروج من اللعبة",
		are_you_sure_you_want_to_exit = "هل أنت متأكد أنك تريد الخروج من اللعبة؟",
		exiting_game = "جاري الخروج من اللعبة...",
		delete_character = "حذف",
		select_character = "اختيار",
		new_character = "شخصية جديدة",
		empty_slot = "مكان فارغ",
		male = "ذكر",
		female = "أنثى",
		name = "الاسم",
		dob = "تاريخ الميلاد",
		born = "مولود في ${dob}",
		gender = "الجنس",
		cash = "النقود النقدية",
		bank = "النقود في البنك",
		story = "القصة",
		loading_character = "جاري تحميل الشخصية...",
		deleting_character = "جاري حذف الشخصية...",
		create_character = "إنشاء شخصية",
		first_name = "الاسم الأول",
		last_name = "اسم العائلة",
		date_of_birth = "تاريخ الميلاد",
		character_backstory = "قصة شخصية",
		cancel = "إلغاء",
		complete = "إكمال",
		creating_character = "جارِ إنشاء الشخصية...",
		are_you_sure_you_want_to_delete = "هل أنت متأكد من أنك تريد حذف هذه الشخصية؟ لا يمكن التراجع عن هذا الإجراء.",
		stop_download = "إيقاف التحميل",
		start_download = "بدء التحميل",
		slow_download = "تحميل بطيء",
		regular_download = "تحميل عادي",
		back = "السابق",
		copy_license = "رقم الرخصة",
		copy_license_success = "تم النسخ!",
		cache_assets = "تخزين الملفات المؤقتة",
		download_assets = "هل تريد تنزيل وتخزين معظم الملفات المستخدمة في الخادم؟ يؤدي ذلك إلى عدة أمور:",
		cache_assets_less_lag = "قد يقلل من حدوث الانقطاع في التيار، و عدم تسرب الصورة وقلة ارتفاع البنج خلال اللعب. خصوصاً إن كنت تستخدم جهازاً ذو قوة تشغيل محدودة أو اتصال بطيء.",
		cache_assets_crashes = "يرجى ملاحظة أن هذه العملية قد تؤدي إلى تعطل لعبتك. إذا حصل هذا، فيرجى استخدام الخيار \"التنزيل البطيء\".",
		cache_assets_restart = "عند اكتمال العملية، نوصي بإعادة تشغيل اللعبة حيث أن ذلك قد يسبب بطء لبقية جلسة اللعب.",
		cache_assets_disk = "سيتم استهلاك مساحة تخزين على القرص الصلب، لذا تأكد من توفر مساحة كافية. يمكن أيضًا في بعض الأحيان بعد التحديث تنظيف ذاكرة التخزين المؤقت القديمة لتحرير المساحة.",
		vehicles = "المركبات",
		objects = "الأشياء",
		peds = "الشخصيات غير اللاعبة",
		clothing = "الملابس",
		main_menu = "القائمة الرئيسية",
		gta_settings = "إعدادات GTA",
		discord = "ديسكورد",
		framework = "الإطار",
		rules = "قواعد الخادم",
		notice = "إشعار",
		language = "اللغة",
		support_the_server = "دعم الخادم",
		battle_royale = "رويال بايل",
		arena = "الأرينا",
		queue = "الطابور",
		queue_position_with_priority = "🐌 أنت الآن رقم ${queuePosition} من أصل ${queueTotal} في الطابور مع أولوية ${queuePriorityName}. 🕐${queueTime}",
		queue_position_without_priority = "🐌 أنت الآن رقم ${queuePosition} من أصل ${queueTotal} في الطابور. 🕐${queueTime}",
		you_are_through = "!أنت الآن في الداخل",
		join_server = "دخول الخادم",
		tired_of_queueing = "تعبت من الانتظار في الطابور؟ ساعدنا واحصل على أولوية في الدخول!",
		joining_battle_royale = "انضمام إلى باتل رويال",
		joining_arena = "انضمام إلى الساحة",
		refresh = "تحديث",
		refreshing = "جارٍ التحديث...",

		missing_character_creation_data = "بيانات إنشاء المحارف ناقصة",
		invalid_first_name = "اسم الشخصية المتخذة غير صالح أو مفقود (من 2 إلى 100 حرف).",
		invalid_last_name = "اسم العائلة المتخذ غير صالح أو مفقود (من 2 إلى 100 حرف).",
		invalid_date_of_birth = "تاريخ الميلاد غير صالح أو مفقود.",
		invalid_backstory = "حكاية الشخصية المتخذة غير صالحة أو ناقصة (من 1 إلى 5,000 حرف).",

		bad_words = "يحتوي اسم الشخصية أو حكايتها على كلمات غير مرغوبة.",
		disallowed_name = "هناك بعض الكلمات الممنوعة في اسم الشخصية الخاصة بك.",
		disallowed_birthday = "تاريخ ميلادك غير مسموح به.",
		numbers_not_allowed = "الأرقام غير مسموحة في اسم الشخصية.",
		something_went_wrong = "حدث خطأ ما أثناء محاولة إنشاء شخصيتك.",
		character_slot_occupied = "هذا المكان مشغول بالفعل.",
		name_already_taken = "هذا الاسم مأخوذ بالفعل.",
		illegal_character_slot = "لا يمكنك إنشاء شخصية في هذا المكان.",
		character_already_loaded = "لديك شخصية تم تحميلها بالفعل.",

		new_citizen = "مواطن جديد",
		los_santos_police_dept = "شرطة لوس سانتوس",

		welcome_msg_title = "مرحباً بك في ${communityName}!",
		welcome_msg = "لقد تم إرسال بعض العناصر لمساعدتك في البدء. يمكنك استخدام هذه العناصر في شريط الأدوات الخاص بك باستخدام الأرقام من 1 إلى 5.\n\n*اضغط على الرقم 1 لقراءة الكتيّب الخاص بك.*",

		press_to_go_back_to_menu = "اضغط ~g~${InteractionKey}~w~ للعودة إلى القائمة.",
		go_back_to_menu = "العودة إلى القائمة.",

		developer = "مطور",
		super_admin = "مدير عام",
		staff = "الموظفون",
		reconnect = "إعادة الاتصال",
		christmas = "عيد الميلاد",
		casino = "كازينو",
		random = "عشوائي",
		beginner = "مبتدئ",
		custom = "مخصص",

		appreciated_tier = "الطبقة المقدرة",
		respected_tier = "الطبقة المحترمة",
		heroic_tier = "الطبقة البطولية",
		legendary_tier = "الطبقة الأسطورية",
		godlike_tier = "الطبقة الإلهية"
	},

	loot = {
		press_to_pick_up = "اضغط ~INPUT_CONTEXT~ لالتقاط ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "إعلان اليانصيب",
		lottery_about_to_roll = "سيتم إختيار الفائز في خمس دقائق في يانصيب اليوم. إجمالي الجائزة الآن $${totalPot} وأنت قمت بوضع $${betAmount}. فرصة فوزك هي ${odds}%.",
		current_lottery_pot = "مجموع الجائزة حاليًا هو $${totalPot} حيث أنتم دخلتم $${betAmount}. فرصتكم في الفوز هي ${odds}%.",
		drew_a_lottery_winner = "تم سحب فائز باليانصيب.",
		roll_lottery_no_permission = "حاول اللاعب تشغيل اليانصيب لكنه لم يكن لديه الإذن لذلك.",
		winner_has_been_picked = "${fullName} فاز بجائزة اليانصيب بقيمة $${totalPot}! راهن $${betAmount} وكانت فرصته ${odds}%.",
		claimed_lottery_winnings = "استلم جميع مكاسب اليانصيب.",
		no_lottery_winnings = "ليس لديك أي أرباح في اليانصيب غير المطالب بها.",
		internal_server_error = "حدث خطأ داخلي في الخادم.",
		use_disabled_animal = "لا يمكنك استخدام اليانصيب كحيوان.",

		lottery_log_title = "فاز باليانصيب",
		lottery_log_description = "${fullName} (#${characterId}) فاز بجائزة اليانصيب بقيمة $${totalPot} بعد المشاركة بـ $${betAmount}."
	},

	lucky_wheel = {
		spin_lucky_wheel = "اضغط واستمر في الضغط على ~INPUT_CONTEXT~ لدوران العجلة المحظوظة. يتطلب الأمر دفع $${cost}.",
		spin_lucky_wheel_for_free = "اضغط واستمر في الضغط على ~INPUT_CONTEXT~ لدوران العجلة المحظوظة. لديك دورة مجانية واحدة فقط لهذا اليوم.",
		unable_to_spin_lucky_wheel = "لقد قمت بدوران العجلة الحظية كل ما هو مسموح به اليوم. عد لاحقًا لدوران آخر!",
		unable_to_spin_lucky_wheel_time = "لقد قمت بدوران العجلة الحظية كل ما هو مسموح به اليوم. الدورة التالية متاحة في ${displayTime}.",
		lucky_wheel_is_occupied = "العجلة الحظية مشغولة حاليا. الرجاء الانتظار.",
		not_enough_balance_to_spin = "لا يوجد لديك ما يكفي من المال لتدوير العجلة. تكلفة الدورة هي $${cost}.",
		logs_lucky_wheel_reward_title = "جائزة العجلة الحظية",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} قام بتدوير العجلة وفاز بسيارة.",
		logs_lucky_wheel_reward_vehicle_given_details = "تم إعطاء ${consoleName} سيارة بنجاح بإسم النموذج `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} قام بتدوير العجلة وفاز ب${amount} دولار.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} قام بتدوير العجلة وفاز بمجوهرات بإسم `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} قام بتدوير العجلة وفاز بعنصر بإسم `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} قام بدوران العجلة وفاز بأسبوع من أولوية الانتظار في الطابور."
	},

	magazines = {
		issue_id = "المسألة #${issueId}",
		releases_updated = "تم تحديث الإصدارات.",
		no_release_changes = "لم يتم إجراء أي تغييرات في الإصدار.",
		refresh_magazines_no_permissions = "حاول اللاعب تجديد المجلات دون الحصول على الأذونات اللازمة."
	},

	mdt = {
		mdt_title = "جهاز البيانات المتحركة",
		loading_reports = "جاري تحميل التقارير...",
		failed_report_load = "فشل تحميل التقارير.",
		no_reports = "لا توجد تقارير.",
		loading = "جارٍ التحميل...",

		title_placeholder = "العنوان",
		body_placeholder = "تقريري..."
	},

	mechanics = {
		move_here_check = "انتقِل هنا للتحقق من الترقيات",
		checking_upgrades = "جارٍ التحقق من ترقيات السيارة",
		upgrades_list = "${armor}، ${engine}، ${brakes}، ${transmission} و ${turbo}.",

		has_no_turbo = "لا يوجد توربو مثبت",
		has_turbo = "يوجد توربو مثبت",

		armor_0 = "بدون درع",
		armor_1 = "ترقية الدرع 20%",
		armor_2 = "ترقية الدرع 40%",
		armor_3 = "ترقية الدرع 60%",
		armor_4 = "ترقية الدرع 80%",
		armor_5 = "ترقية الدرع 100%",

		brakes_0 = "فرامل المخزون",
		brakes_1 = "فرامل الشارع",
		brakes_2 = "فرامل الرياضة",
		brakes_3 = "فرامل السباق",

		transmission_0 = "ناقل حركة المخزون",
		transmission_1 = "ناقل حركة الشارع",
		transmission_2 = "ناقل حركة الرياضة",
		transmission_3 = "ناقل حركة السباق",

		engine_0 = "محرك المخزون",
		engine_1 = "محرك EMS مستوى 2",
		engine_2 = "محرك EMS مستوى 3",
		engine_3 = "محرك EMS مستوى 4",
		engine_4 = "محرك EMS مستوى 5",

		no_nearby_vehicle = "لا يوجد مركبات قريبة.",
		already_checking_upgrades = "أنت بالفعل تفحص تعديلات المركبة.",
		engine_is_running = "يعمل محرك السيارة"
	},

	meth = {
		press_to_sell_meth = "اضغط ~INPUT_CONTEXT~ لبيع الميث.",
		local_not_interested = "يبدو أن الشخص غير مهتم في الوقت الحالي.",
		selling_meth = "جاري بيع الميث"
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] حفر الصخرة، [${SeatEjectKey}] مسح الصخرة",
		scan_stone = "[${SeatEjectKey}] مسح الصخرة",
		drill_stone = "[${InteractionKey}] حفر الصخرة",
		scanning_stone = "جاري المسح",
		drilling = "جاري الحفر",
		failed_drill_stone = "فشل في حفر الصخرة.",
		drill_no_drops = "لم تجد أي جواهر في هذه الصخرة.",
		drill_drops = "لقد وجدت بعض الأحجار الكريمة في هذه الصخرة.",
		used_drill = "تم كسر الحفر الخاص بك.",
		still_shook = "أنت لا تزال مرتجفًا من الانفجار الأخير ولم تجد أية أحجار كريمة في هذه الصخرة.",

		recharging_scanner = "إعادة شحن الماسح ${percentage}%",
		scanning = "جارٍ المسح ${percentage}%",

		refine_gemstones = "[${InteractionKey}] تحويل الأحجار الكريمة،",
		refinery = "طاولة التصفية",
		exit_refinery = "خروج من المصفاة",
		no_gemstones = "ليس لديك أية أحجار كريمة خام.",
		refining = "جارٍ تحويل 1x ${gemstone}",
		refine_success = "تم تحويل 1x ${gemstone} بنجاح.",
		failed_refine = "فشل تصفية الجوهرة.",

		craft_rings = "[${InteractionKey}] صُنع الخواتم",
		no_crafting_items = "ليس لديك ما يكفي من المواد لصنع شيء هنا.",
		crafting = "يجري الصُنع 1x ${item}",
		crafting_table = "طاولة الصنع",
		crafting_success = "تم صنع 1x ${gemstone}.",
		failed_crafting = "فشلت عملية الصنع.",
		exit_crafting = "مغادرة طاولة الصنع",

		engrave_ring = "[${InteractionKey}] زخرفة الخواتم",
		no_engrave_items = "ليس لديك أي خواتم.",
		exit_engraving = "مغادرة طاولة الزخرفة",
		engraving_table = "طاولة النقش",
		engraving = "نقش ${itemName}",
		engrave_message = "رسالة للنقش (حد أقصى 100 حرف)",
		engrave_success = "تم النقش على ${itemName} بنجاح.",
		failed_engrave = "فشل في النقش.",

		no_sellable_items = "ليس لديك أي شيء يمكن بيعه هنا.",
		exit_shop = "خروج من المحل",
		shop = "محل الجواهر",
		sell_gemstones = "[${InteractionKey}] بيع حجارة كريمة",
		local_price = "السعر المحلي: $${price}",

		sold_gemstone = "بيع 1x ${gemstone} بسعر  $${price}.",
		failed_sell_gemstone = "فشل في بيع الجوهرة.",
		failed_sell_no_item = "لا يوجد العنصر الذي حاولت بيعه.",
		failed_sell_cap = "لا يريد التاجر شراء أي شيء آخر من هذا العنصر منك.",

		mining_sold_item_title = "تم بيع الأحجار الكريمة",
		mining_sold_item_details = "${consoleName} باع 1x ${itemName} مقابل $${price}.",

		mining_crafted_item_title = "تم صنع العنصر",
		mining_crafted_item_details = "${consoleName} صنع 1x ${itemName}.",

		mining_refined_item_title = "تم تكرير الجوهرة",
		mining_refined_item_details = "${consoleName} قام بتكرير 1x ${itemName}.",

		mining_mined_title = "تعدين جوهرة",
		mining_mined_details = "${consoleName} قام بتعدين ${output}.",

		mining_exploded_title = "انفجار التعدين",
		mining_exploded_details = "${consoleName} انفجر أثناء محاولته للتعدين على جوهرة.",

		instability_0 = "هذه الجوهرة مستقرة.",
		instability_1 = "هذه الجوهرة غير مستقرة قليلاً.",
		instability_2 = "هذه الجوهرة غير مستقرة.",
		instability_3 = "هذه الجوهرة غير مستقرة جداً.",

		exhausted = "أنت تشعر بالإرهاق بسبب تواجدك في المنجم لفترة طويلة.",
		very_exhausted = "أنت تشعر بالإرهاق الشديد بسبب تواجدك في المنجم لفترة طويلة جداً."
	},

	miscellaneous = {
		language_unavailable = "!اللغة '${languageCode}' غير متاحة حاليًا. إذا كنت ترغب في إنشاء تعريب لهذه اللغة، فلا تتردد في الانضمام إلى OP-FW Discord guild for development للمزيد من المعلومات على ${frameworkDiscord}!",
		same_language = "لديك بالفعل اللغة ${languageCode} كلغتك المفضلة.",
		language_set = "لقد تم تعيين اللغة المفضلة لديك إلى ${languageCode}.",
		current_language = "اللغة الحالية",
		available_language_codes = "اللغات المتاحة",
		ping_pong = "!بونغ",
		ping_response = "${ping}ms (وقت الاستدعاء: ${callbackTime}ms)",
		ooc_first_time = "!نلاحظ أنك لم تستخدم /ooc بعد! قبل السماح لك باستخدامه، نود أن نحذرك بشأنه. هذا الأمر يتم استخدامه فقط في الحالات العاجلة، وجميع الأسئلة والرسائل غير العاجلة يجب توجيهها إلى خادم دسكوردنا على ${communityDiscord}. هذا كل شيء! لبدء استخدام /ooc، اكتب /ooc_on. بإمكانك إيقافه مرة ثانية باستخدام /ooc_off.",
		ooc_not_logged_in = "!أنت غير مسجل الدخول حالياً",
		ooc_timed_out = "!أنت محظور حالياً من الدردشة الخارجية يجب الانتظار.",
		ooc_muted_no_reason = "لقد تم كتمك من الدردشة العامة OOC بدون سبب محدد.",
		ooc_muted = "لقد تم كتمك من الدردشة العامة OOC للسبب `${reason}`.",
		global_ooc_title = "دردشة OOC العامة ${playerDescriptor}",
		local_ooc_title = "دردشة OOC المحلية ${playerDescriptor}",
		ooc_is_disabled = "لقد قمت بتعطيل الدردشة العامة OOC.",
		ooc_enabled = "تم تمكين الدردشة العامة OOC.",
		ooc_already_enabled = "الدردشة العامة OOC ممكنة بالفعل.",
		ooc_disabled = "تم تعطيل الدردشة العامة OOC.",
		ooc_already_disabled = "الدردشة العامة OOC معطلة بالفعل.",
		ooc_local_logs_title = "رسالة OOC المحلية",
		ooc_local_logs_details = "${consoleName} أرسل الرسالة التالية في الدردشة OOC المحلية: `${oocMessage}`.",
		ooc_global_logs_title = "رسالة OOC العالمية",
		ooc_global_logs_details = "${consoleName} أرسل الرسالة التالية في الدردشة OOC العالمية: `${oocMessage}`.",
		bad_ooc_message = "حاول نشر رسالة رديئة في دردشة OOC: \"${oocMessage}\"",
		bad_ped_message = "حاول إنشاء رسالة خاطئة لشخصية افتراضية: \"${pedMessage}\"",
		bad_twitter_post = "حاول إنشاء تغريدة خاطئة على تويتر: \"${twitterPost}\"",
		bad_phone_message = "تم محاولة إنشاء تغريدة تويتر ربما تكون سيئة: \"${message}\"",
		mute_toggle_not_staff = "حاول اللاعب كتم لاعب ولكن ليس لديه الصلاحيات الصحيحة لذلك.",
		unmute_toggle_not_staff = "حاول اللاعب إلغاء كتم لاعب ولكن ليس لديه الصلاحيات الصحيحة لذلك.",
		user_not_found = "تعذر علينا العثور على مستخدم بمعرف السيرفر `${serverId}`.",
		player_already_muted = "تم كتم ${consoleName} بالفعل.",
		player_has_been_muted_no_reason = "لقد تم كتم ${consoleName} الآن بدون ذكر سبب.",
		player_has_been_muted = "${consoleName} تم كتمه الآن بسبب: `${reason}`.",
		player_not_muted = "${consoleName} ليس مكتومًا.",
		player_has_been_unmuted = "${consoleName} تم إلغاء كتمه الآن.",
		clear_chat_not_admin = "حاول اللاعب مسح الدردشة لجميع اللاعبين ، لكنه لم يحصل على الصلاحيات اللازمة للقيام بذلك.",
		ooc_clear_chat_title = "تم مسح الدردشة",
		ooc_clear_chat_details = "${consoleName} مسح الدردشة للجميع.",
		muted_player = "كتم اللاعب",
		muted_player_no_reason_details = "${consoleName} كتم ${targetConsoleName} بدون ذكر سبب.",
		muted_player_details = "${consoleName} قام بكتم ${targetConsoleName} بسبب `${muteReason}`.",
		player_muted = "تم كتم اللاعب",
		player_muted_no_reason_details = "${targetConsoleName} تم كتمه من قبل ${consoleName} بدون تحديد السبب.",
		player_muted_details = "${targetConsoleName} تم كتمه من قبل ${consoleName} بسبب `${muteReason}`.",
		muted_self = "اللعب بلا صوت",
		muted_self_no_reason_details = "${consoleName} قام باللعب بلا صوت دون تحديد السبب.",
		muted_self_details = "${consoleName} قام باللعب بلا صوت بسبب `${muteReason}`.",
		unmuted_self = "تم إلغاء الكتم عن النفس",
		unmuted_self_details = "${consoleName} قام بإلغاء الكتم عن نفسه.",
		unmuted_player = "تم إلغاء الكتم عن لاعب",
		unmuted_player_details = "${consoleName} قام بإلغاء الكتم عن ${targetConsoleName}.",
		player_unmuted = "تم إلغاء الكتم عن اللاعب",
		player_unmuted_details = "${targetConsoleName} تم إلغاء كتم عنه من قبل ${consoleName}.",
		ooc_cancelled_same_as_last = "تم إلغاء رسالة الدردشة الخارجية الخاصة بك لإرسال رسائل متطابقة في الصف.",
		use_measurement_metric = "لقد ضبطت نظام القياس المفضل لديك على النظام المتري.",
		use_measurement_imperial = "لقد قمتَ بتعيين نظام القياس المفضّل لديك على الوحدات الأمبراطورية.",
		use_measurement_default = "سوف تستخدم الآن نظام القياس الافتراضي للغة البرمجية.",
		already_using_metric_measurement = "لقد حدّدت بالفعل النظام المتري كالنظام المفضل لديك للقياس.",
		already_using_imperial_measurement = "لقد حدّدت بالفعل النظام الأمبراطوري كالنظام المفضل لديك للقياس.",
		already_using_default_measurement = "أنت تستخدم بالفعل نظام القياس الافتراضي لهذه اللغة البرمجية.",
		no_copyright = "Failed to automatically generate translation.",
		no_copyright_warning = "Failed to automatically generate translation.",
		no_copyright_enabled = "Failed to automatically generate translation.",
		no_copyright_disabled = "Failed to automatically generate translation.",
		server_tps = "Failed to automatically generate translation.",
		server_tps_response = "${tps}",
		license_copied = "تم نسخ الترخيص بنجاح إلى الحافظة.",
		uptime = "الوقت اللي قضيتوا في الخدمة: $ {uptime}"
	},

	money = {
		invalid_server_id = "رقم الخادم غير صالح.",
		invalid_amount = "المبلغ غير صالح.",
		something_went_wrong = "حدث خطأ ما.",
		not_enough_cash = "لا يوجد لديك ما يكفي من النقود.",
		not_close_enough = "أنت لست بالقرب من اللاعب.",
		user_not_available = "المستخدم غير متاح.",

		bill_received = "${displayName} ارسل لك فاتورة بقيمة $${amount}. اكتب `/yes` لقبولها أو `/no` لرفضها.",
		bill_expired = "انتهت صلاحية فاتورتك من ${displayName}.",
		bill_declined = "لقد رفضت الفاتورة من ${displayName}.",
		failed_bill_payment = "فشل في دفع الفاتورة.",
		bill_success = "تم دفع فاتورة ${displayName} بمبلغ $${amount}.",
		bill_created = "لقد قمت بإنشاء فاتورة بقيمة $${amount} لـ ${displayName}.",

		givecash_success = "لقد قمت بتحويل $${amount} إلى ${displayName}.",

		give_cash_title = "تحويل نقدي",
		give_cash_details = "${consoleName} قام بتحويل $${amount} إلى ${targetConsoleName}.",
		paid_bill_title = "تم دفع الفاتورة",
		paid_bill_details = "${consoleName} دفع ${targetConsoleName} ${amount} دولار للفاتورة.",
		bill_created_title = "تم إنشاء الفاتورة",
		bill_created_details = "${consoleName} قام بإنشاء فاتورة بمقدار ${amount} دولار ل${targetConsoleName}."
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] ملء الغرفة",
		collect_moonshine = "[${InteractionKey}] جمع مشروب القمر",
		fermenting = "يتم التخمر ${percentage}%",
		filling_chamber = "يتم تعبئة الغرفة",

		not_enough_items = "أنت لا تملك العناصر الكافية لملء الغرفة.",
		something_went_wrong = "حدث خطأ ما.",
		failed_fill = "فشلت عملية ملء الغرفة.",
		failed_empty = "فشل جمع الشراب الكحولي.",

		press_to_sell_moonshine = "اضغط ~INPUT_CONTEXT~ لبيع الشراب الكحولي غير الشرعي.",
		local_not_interested = "يبدو أن الشخص المحلي غير مهتم حاليًا.",
		selling_moonshine = "جاري بيع الشراب الكحولي غير الشرعي."
	},

	nos = {
		press_to_install_nitro_tank = "اضغط ~INPUT_CONTEXT~ لتثبيت خزان النيترو.",
		installing_nitro_tank = "جاري تثبيت خزان النيترو.",
		press_to_remove_nitro_tank = "اضغط ~INPUT_CONTEXT~ لإزالة خزان النيترو.",
		removing_nitro_tank = "جارٍ إزالة صهريج النيترو"
	},

	notepads = {
		take_notes = "خذ ملاحظات...",
		press_to_open = "اضغط ~INPUT_DETONATE~ لفتح المفكرة.",
		notepad_busy = "شخص آخر يستخدم هذه المفكرة.",
		dropped_notepad_title = "مفكرة مسقطة",
		dropped_notepad_text_title_details = "${consoleName} أسقط مفكرة بها النص `${text}`.",
		updated_notepad_title = "تم تحديث المفكرة",
		updated_notepad_text_title_details = "${consoleName} قام بتحديث المفكرة بالنص `${text}`.",
		picked_up_notepad_title = "تم التقاط المفكرة",
		picked_up_notepad_text_title_details = "${consoleName} قام بالتقاط دفتر ملاحظات به نص `${text}`.",
		invalid_notepad_id = "رقم دفتر غير صالح.",
		failed_notepad_info = "فشل في الحصول على معلومات الدفتر.",
		notepad_info = "تم إسقاط دفتر ${notepadId} بواسطة ${droppedBy}.",
		failed_notepad_wipe = "فشل في مسح المذكرات.",
		invalid_notepad_wipe_radius = "نطاق غير صالح (الحد الأدنى = 1، الحد الأقصى = 100).",
		notepad_wipe_success = "تم مسح ${amount} من المذكرات بنجاح.",
		sign_invalid_slot = "فتحة تخزين غير صالحة.",
		signed_notepad = "تم توقيع المذكرة بنجاح في الفتحة `${slotId}`.",
		failed_sign_notepad = "فشل في توقيع المفكرة.",
		sign_already_signed = "لا يمكنك توقيع هذه الملاحظة.",

		notepad_info_missing_permissions = "حاول اللاعب الحصول على معلومات المفكرة دون الأذونات اللازمة.",
		wipe_notepads_missing_permissions = "حاول اللاعب مسح المفكرات دون الأذونات اللازمة."
	},

	notices = {
		message_too_long = "يحتوي الرسالة على عدد كبير من الأحرف أو السطور!",
		invalid_notice_id = "معرف الملاحظة غير صالح.",
		successfully_removed_notice = "تم إزالة الملاحظة بنجاح.",
		failed_remove_notice = "فشل إزالة الملاحظة.",

		add_notice_missing_permissions = "حاول اللاعب إضافة تنبيه بدون الصلاحيات اللازمة.",
		remove_notice_missing_permissions = "حاول اللاعب إزالة تنبيه بدون الصلاحيات اللازمة."
	},

	objects = {
		saved_found_objects = "تم حفظ `${foundObjectsAmount}` من الأشياء الموجودة والتي يحمل نموذج `${modelName}` في ملف على الخادم.",
		no_nearby_objects_with_model_found = "لم يتم العثور على أي أشياء مجاورة بنموذج `${modelName}`.",
		invalid_model_name = "النموذج `${modelName}` غير صالح.",
		missing_model_name = "لا يوجد اسم نموذج."
	},

	orbitcam = {
		enabled_orbitcam = "تم تفعيل طقس تدوير الكاميرا.",
		disabled_orbitcam = "تم تعطيل طقس تدوير الكاميرا.",
		orbitcam_failed = "فشل تفعيل طقس تدوير الكاميرا. هل لديك إذن noclip أو شيء مماثل؟",

		orbitcam_logs_title = "تغيير حالة طقس تدوير الكاميرا",
		orbitcam_on_logs_details = "${consoleName} قام بتفعيل طقس تدوير الكاميرا.",
		orbitcam_off_logs_details = "${consoleName} قام بتعطيل طقس تدوير الكاميرا.",

		orbitcam_no_permission = "تم محاولة تفعيل طقس تدوير الكاميرا بدون الأذونات اللازمة."
	},

	overview = {
		header_title = "OP Framework - محرك واجهة المستخدم الرئيسية",
		select_information = "معلومات",
		select_activity_points = "نقاط النشاط",
		select_staff_points = "نقاط الموظفين",
		select_moderation = "الإدارة",
		select_handling_overrides = "إعدادات السيارات",
		select_settings = "الإعدادات",
		about_title = "حول واجهة المستخدم الرئيسية",

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

		about_activity_points_title = "حول نقاط النشاط",

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

		activity_points_this_week = "هذا الأسبوع",
		activity_points_last_week = "الأسبوع الماضي",
		activity_points_current = "نقاط النشاط: <b>${activityPoints} + ${gainAmount}/الدقيقة</b>",
		activity_points_current_no_gain = "نقاط النشاط: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>هدف النشاط الحالي لديك هو 400 نقطة لأولوية الوظيفة الضعيفة، مع <b>${remainingPoints} للذهاب</b>!",
		activity_points_goal_medium = "<br><br>هدف النشاط الحالي لديك هو 700 نقطة لأولوية الوظيفة المتوسطة، مع <b>${remainingPoints} للذهاب</b>!",
		activity_points_goal_high = "<br><br>هدف النشاط الحالي لديك هو 1000 نقطة لأولوية الوظيفة العالية، مع <b>${remainingPoints} للذهاب</b>!",
		activity_points_goal_none = "<br><br>لا يوجد لديك أي أهداف نشاط حاليًا.",
		activity_points_not_enough = "لم يكن لديك نقاط النشاط الكافية لتأهيلك للأفضلية في قائمة الانتظار الأسبوع الماضي.",
		activity_points_last_week_low = "رائع، كان لديك نقاط النشاط الكافية الأسبوع الماضي لتأهيلك للأفضلية الوظيفية الأسفل في قائمة الانتظار!",
		activity_points_last_week_medium = "رائع، كان لديك نقاط النشاط الكافية الأسبوع الماضي لتأهيلك للأفضلية الوظيفية الوسطى في قائمة الانتظار!",
		activity_points_last_week_high = "رائع، كان لديك نقاط النشاط الكافية الأسبوع الماضي لتأهيلك للأفضلية الوظيفية العالية في قائمة الانتظار!",

		about_staff_points_title = "حول نقاط الموظفين",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "هذا الأسبوع",
		staff_points_current = "نقاط الموظفين: <b>${staffPoints} + ${gainAmount}/دقيقة</b>",
		staff_points_current_no_gain = "نقاط الموظفين: <b>${staffPoints}</b>",
		staff_points_table = "جدول نقاط الموظفين",
		this_week = "هذا الأسبوع",
		one_week_ago = "منذ أسبوع واحد",
		two_weeks_ago = "منذ أسبوعين",
		three_weeks_ago = "منذ ثلاثة أسابيع",
		four_weeks_ago = "منذ أربعة أسابيع",
		five_weeks_ago = "منذ خمسة أسابيع",
		six_weeks_ago = "منذ ستة أسابيع",
		seven_weeks_ago = "منذ سبعة أسابيع",
		eight_weeks_ago = "قبل 8 أسابيع",
		previous_weeks_average = "متوسط الأسابيع السابقة",

		about_detection_areas_title = "مناطق الكشف",
		about_detection_areas_text = "يمكن أن تكون مناطق الكشف أداة مفيدة لأعضاء الفريق عند محاولة تحديد احتيالي ينشئ مركبات أو شخصيات غير مرغوب فيها. لإنشاء منطقة الكشف، استخدم `/detection_area_add`. بمجرد إنشاء منطقة، ستظهر هنا. سيتم تسجيل أحدث 100 كيان في كل منطقة فقط.",
		detection_area_title = "منطقة الكشف #${detectionAreaId}",

		about_sound_effects_title = "تأثيرات الصوت",
		about_sound_effects_text = "تتيح لك هذه الحقول تغيير بعض تأثيرات الصوت. إنها تتطلب رابطًا لملف .ogg للعمل بشكل صحيح. يجب أن يكون الرابط HTTPS:// وليس HTTP://. وسيلة سهلة لتحميل الملف هي تحميله على ديسكورد ، ثم نسخ الرابط الخاص به ولصقه في هذه الحقول",
		radio_mic_click_on = "تأثير صوت الراديو عند الضغط (تشغيل)",
		radio_mic_click_off = "تأثير صوت الراديو عند الضغط (إيقاف)",
		clipboard_animation = "تأثير الحافظة",
		sound_effect_placeholder = "رابط الملف الصوتي بصيغة .oog...",
		sound_effect_save = "حفظ",
		sound_effect_reset = "إعادة تعيين",

		staff_notifications_reports = "تنبيهات البلاغات",
		staff_notifications_staff_chat = "تنبيهات المحادثات الداخلية لفريق العمل",
		staff_notifications_general = "تنبيهات عامة",
		staff_notifications_anti_cheat = "تنبيهات مكافحة الغش",

		december_1 = "1 ديسمبر",
		december_2 = "2 ديسمبر",
		december_3 = "3 ديسمبر",
		december_4 = "4 ديسمبر",
		december_5 = "5 ديسمبر",
		december_6 = "6 ديسمبر",
		december_7 = "السابع من ديسمبر",
		december_8 = "الثامن من ديسمبر",
		december_9 = "التاسع من ديسمبر",
		december_10 = "العاشر من ديسمبر",
		december_11 = "الحادي عشر من ديسمبر",
		december_12 = "الثاني عشر من ديسمبر",
		december_13 = "الثالث عشر من ديسمبر",
		december_14 = "الرابع عشر من ديسمبر",
		december_15 = "الخامس عشر من ديسمبر",
		december_16 = "السادس عشر من ديسمبر",
		december_17 = "السابع عشر من ديسمبر",
		december_18 = "الثامن عشر من ديسمبر",
		december_19 = "التاسع عشر من ديسمبر",
		december_20 = "العشرون من ديسمبر",
		december_21 = "الحادي والعشرون من ديسمبر",
		december_22 = "22 ديسمبر",
		december_23 = "23 ديسمبر",
		december_24 = "24 ديسمبر",
		hatch_closed = "مغلق",
		hatch_open = "مفتوح",
		hatch_claim = "مطالبة",
		hatch_opened = "تم المطالبة به",
		hatch_waiting = "في الانتظار",

		about_advent_calendar_title = "عن التقويم الفصلي",

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

		unlocks_in_days_hours_minutes_seconds = "${days} أيام، ${hours} ساعات، ${minutes} دقائق و ${seconds} ثواني",
		unlocks_in_hours_minutes_seconds = "${hours} ساعات، ${minutes} دقائق و ${seconds} ثواني",
		unlocks_in_minutes_seconds = "${minutes} دقائق و ${seconds} ثواني",
		unlocks_in_seconds = "${seconds} ثانية",
		unlocks_in_an_unknown_amount_of_time = "وقت غير معروف",

		unopened_hatch = "باب غير مفتوح",
		won_money = "$${amount} نقدًا",
		won_vehicle = "مركبة (عروض عيد الميلاد)",
		won_queue_priority = "أسبوع من أولوية المداولة!",

		about_handling_overrides_title = "تجاوزات التحكم",
		about_handling_overrides_text = "إنشاء تجاوزات مؤقتة لفئات التحكم للتحكم في الأداء بطريقة ديناميكية. ستدوم التجاوزات حتى يتم إزالتها أو إعادة تشغيل الخادم. سيتم ضبط التجاوزات لجميع اللاعبين على الخادم.",
		add_override = "إضافة الإعادة",
		add = "إضافة",
		model_name = "اسم النموذج...",
		field_name = "الحقل...",
		value = "القيمة...",
		current_overrides = "الإعادات الحالية",

		about_explosion_events_title = "أحداث الانفجار",
		about_explosion_events_about = "هنا يتم تسجيل معلومات حول آخر ٥٠٠ حدث انفجار. يجب أن يساعد ذلك الموظفين في العثور على المودرز.",
		about_unusual_explosions = "أحداث الانفجار غير المعتادة التي لا تحدث بشكل عادي.",
		explosions_by_type_title = "الانفجارات حسب النوع",
		players_causing_explosions_title = "اللاعبين الذين يتسببون في الانفجارات",
		show_common_events_off = "Show common events: OFF",
		show_common_events_on = "Show common events: ON",

		explosion_events_type = "Type",
		explosion_events_amount = "Amount",
		explosion_events_nearby = "Nearby",
		explosion_events_distance = "Distance",
		explosion_events_player = "Player Name",

		illegal_weapons_title = "Spawned weapons",
		illegal_weapons_about = "In here the last 500 occurrences of spawned in weapons detected by the system are logged. When someone has a spawned in weapon, it doesn't necessarily mean they are modding, as modders can spawn weapons into other players hands and therefore other players would show up on here too.",
		illegal_weapons_by_type = "الأسلحة حسب النوع",
		players_with_spawned_weapons = "اللاعبون الذين لديهم أسلحة مولدة",

		ped_models_title = "نماذج الشخصيات للاعبين",
		ped_models_about = "يتم سرد كل لاعب لا يستخدم نموذج شخصية مجانية هنا. يجب أن يساعد هذا في العثور على اللاعبين الذين هم هنا فقط للتحرش أو مودرز محتملين.",
		local_ped_models_title = "نماذج الشخصيات المحلية",
		animal_ped_models_title = "نماذج الحيوانات",

		fast_movement_title = "الحركة السريعة",
		fast_movement_about = "يتم سرد كل لاعب تم وضع علامة له بسبب حركته السريعة هنا. يجب أن يساعد هذا في العثور على اللاعبين المودرز المحتملين.",

		damage_modifier_title = "معدلات الضرر",
		damage_modifier_about = "في هذا القسم، يتم عرض قائمة باللاعبين الذين يتم اكتشاف تغييرات في معدلات الضرر الخاصة بهم. ويجب أن يساعد هذا في العثور على اللاعبين المحتملين للاستخدام غير القانوني.",

		bad_screen_word_title = "كلمات غير لائقة على الشاشة",
		bad_screen_word_about = "في هذا القسم، يتم عرض قائمة باللاعبين الذين تم الكشف عن وجود كلمات معينة على شاشتهم. ويجب أن يساعد هذا في العثور على اللاعبين المحتملين للاستخدام غير القانوني.",

		freecam_detections_title = "الكشف عن Freecam",
		freecam_detections_about = "في هذا القسم، يتم عرض قائمة باللاعبين الذين تم الكشف عن استخدامهم لتقنية 'Freecam'. ويجب أن يساعد هذا في العثور على اللاعبين المحتملين للاستخدام غير القانوني.",

		damage_modifier_name = "اسم اللاعب",
		damage_modifier_expected = "المُتَوَقَّع",
		damage_modifier_actual = "الفعلي",

		bad_words_name = "اسم اللاعب",
		bad_words_words = "كلمات الاثارة",

		freecam_detections_name = "اسم اللاعب",
		freecam_detections_distance = "الحد الأقصى للمسافة",

		hotwire_driving_detections_name = "اسم اللاعب",

		model = "النموذج",
		label = "التسمية",
		amount = "الكمية",
		console_name = "اللاعب",
		expected = "المتوقع",
		actual = "الفعلي",
		words = "الكلمات",
		distance = "المسافة",
		weapon = "السلاح",
		type = "النوع",
		nearby = "بالقرب منك",

		no_entries = "لا توجد ادخالات"
	},

	oxy = {
		press_to_talk_to_jc = "اضغط ~g~${InteractionKey} ~w~للتحدث مع JC.",
		tutorial_will_play_next_time = "سيعرض تعليم الأوكسجين في المرة القادمة التي تبدأ فيها عملية تشغيل.",
		prescription_pick_up = "استلام الوصفة الطبية: ${label}",

		pick_up_the_prescriptions = "استلم الوصفات المزورة المحددة على الخريطة الخاصة بك.",
		redeem_them_at_the_city = "بمجرد الانتهاء من ذلك، عليك استردادها في المدينة.",
		jc_will_be_expecting_some_back = "~y~سيقوم JC~w~ بانتظار 6 من ${pickUpAmount}  من الأوكسي.",
		you_have_limited_time = "لديك مدة محدودة لتحصل على الحبوب في ${time}.",
		press_to_hide_unimportant_blips_in_map = "اضغط على ~INPUT_SPRINT~ لإخفاء علامات الخريطة غير الضرورية عند الدخول إلى قائمة الإيقاف المؤقت.",
		consider_getting_a_smart_watch = "افكر في الحصول على ساعة ذكية لتتمكن دائمًا من رؤية نظام تحديد المواقع العالمي الخاص بك.",

		press_to_pick_up_prescription = "اضغط على ~g~${InteractionKey} ~w~لالتقاط الروشتة.",

		redeem_oxy_prescription = "استبدال روشتة الأوكسي",
		press_to_redeem_prescription = "اضغط على ~g~${InteractionKey} ~w~لاستبدال الروشتة.",

		check_your_map_to_redeem_prescriptions = "عمل جيد! تحقق من الخريطة لاستبدال الروشتات. لديك ${time} متبقٍ.",
		go_to_jc_to_finish_run = "عمل رائع! اذهب إلى ~y~جي.سي ~w~لإنهاء المهمة. لديك ${time} متبقٍ.",

		oxy_run_started_title = "بدء مهمة الأوكسي",
		oxy_run_started_details = "${consoleName} بدأ مهمة الأوكسي.",

		oxy_run_ended_title = "انتهت جولة الأكسجين",
		oxy_run_ended_details = "${consoleName} أتمت جولتها الأكسجين بعد ${time} وحصلت على $$${payout}.",

		oxy_run_failed_title = "فشل جولة الأكسجين",
		oxy_run_failed_details = "${consoleName} فشلت في جولتها الأكسجين.",

		you_failed_the_run = "لقد فشلت في الجولة. لن يكون عليك رضا ~y~JC ~w~لبعض الوقت.",

		time_left = "لديك ${time} متبقية.",

		accidental_call_1_part_1 = "يا حبيبي، ما الأمور الذي تريدها يا صديقي؟",
		accidental_call_1_part_2 = "حسنًا، بشكل أساسي ما فعلته الآن؛ سنقوم بإعداد شيء بسيط الآن لأن هناك شخص يقوم بتشغيل الأكسجين.",
		accidental_call_1_part_3 = "نعم، حصلت على لوحة سيارته ومعلومات عن سيارته.",
		accidental_call_1_part_4 = "وأساساً، عندما يخرج من السيارة لتسليم الشيء، أحتاج منك أن تقفز وتأخذه بالنسبة لي.",
		accidental_call_1_part_5 = "لا، ليس لديه أي فكرة أننا هم الذين سنفعل ذلك، أرسلته إلى وسط المدينة، لذلك ربما يعتقد أنها عصابة أو شيء ما.",
		accidental_call_1_part_6 = "ثق فيّ، هو أمر سهل.",
		accidental_call_1_part_7 = "ياااه! مرحبا، ماذا تقول يا رفيقي؟ لست أنت، الرجل الآخر! لقد أرسلت رجلين! لست أنت!",
		accidental_call_1_part_8 = "أنت تسترخي! الشخص الخطأ ... لكن كان شخصاً مختلفاً براذا لكن لم يكن أنت!",
		accidental_call_1_part_9 = "لم يكن أنت. هل تفهم ما أقول؟ لم يكن أنت بالتأكيد!",
		accidental_call_1_part_10 = "ولكن احذر، لأنك إن فعلت ذلك بالتأكيد سأأخذ سيارتك.",
		accidental_call_1_part_11 = "مع الحب.",

		accidental_call_2_part_1 = "يووو، إيش قصتك؟",
		accidental_call_2_part_2 = "نعم، لا أستطيع الكذب، فأنا أريد فرك الخردل على قدميك واللعق منها مثل الهوت دوغ.",
		accidental_call_2_part_3 = "يا حبيبي.",
		accidental_call_2_part_4 = "انتظر ..",
		accidental_call_2_part_5 = "يا للغلط، اسف.",

		accidental_call_3_part_1 = "مرحبا، كيف الحال؟",
		accidental_call_3_part_2 = "نعم، أنا انتهيت من الأغنية الهيب هوب الجديدة التي طلبتها.",
		accidental_call_3_part_3 = "نعم، هذه هي ابدأكم فيها ..",
		accidental_call_3_part_4 = "أريد حبك يا عزيزي، أريد أن أحبك ، أريد أن أقبل قدميك وأريد-. ",
		accidental_call_3_part_5 = "ووواه، ووواه، كان هذا الخطأ، لم أقصد إرسال هذا.",
		accidental_call_3_part_6 = "عفواً، رقم خاطئ، أسف أخي، آسف..",

		accidental_call_4_part_1 = "يا برو، متى ستزورني في منزلي وتلعب معي لعبة الخيول الصغيرة؟",
		accidental_call_4_part_2 = "لقد مضى وقتٌ طويلٌ جدًا، وأحتاجُ، يا صاح، نعرف أنني أفضلُ الخيول اللامعة، و-",
		accidental_call_4_part_3 = "حسنًا.. أيها الأخ الخطأ، آسفٌ جدًا على ذلك، لم تسمع أي شيء.",
		accidental_call_4_part_4 = "لأنه إذا سمعت، ستكون في خطر، تفهّمت ما أقول؟",

		accidental_call_5_part_1 = "يا أمي، أنا خائف جدًا الآن..",
		accidental_call_5_part_2 = "نعم، كان هناك بعض الرجال خارج بابي، وأنا لا أعرف ماذا يجب علي فعله يا أمي.",
		accidental_call_5_part_3 = "أشعر ببعض الخوف، لأنني أعتقد أنني في ورطة كبيرة، تعرفين.",
		accidental_call_5_part_4 = "أمي.. أوه، يوو.. يوو، ما الأمر؟",
		accidental_call_5_part_5 = "نعم، لا، هل تحب مهارات التمثيل الخاصة بي؟",
		accidental_call_5_part_6 = "ثق بي لكن، لا تسجل هذا المكالمة مرة أخرى أو ستموت.",
		accidental_call_5_part_7 = "تدرك ما أقول؟ سأأتي إليك وسأقطعك لأجزاء صغيرة ومختلفة.",
		accidental_call_5_part_8 = "تفهمني يا أخي؟",
		accidental_call_5_part_9 = "صدقني في هذا، اقرأ لك، يا برو!",

		accidental_call_6_part_1 = "يا صغيري، تعال هنا.",
		accidental_call_6_part_2 = "أبوك على التليفون يا برو، أبوك على التليفون.",
		accidental_call_6_part_3 = "أدري مو شايفه من فترة برو، خذه، خذه، خذه برو.",
		accidental_call_6_part_4 = "الو؟ بابا هذا انت؟",
		accidental_call_6_part_5 = "يا بابا؟",
		accidental_call_6_part_6 = "انتظر، لا هذا مش أبوي، هذا غيره! لا، ليش -",
		accidental_call_6_part_7 = "أنت أحمق، لا أصدق أنك قعت في خدعتي يا رجل!",
		accidental_call_6_part_8 = "يا إلهي...",

		maxed_out_runs_part_1 = "يا رجل، أعلم أنك تحب الخبز ولكن عليك أن تدع بعض الآخرين يأخذون حصتهم.",
		maxed_out_runs_part_2 = "توقف عن الجري يا رجل.",
		maxed_out_runs_part_3 = "اذهب للتحدث مع بعض الأحمقين في مقر Trash أو شيء ما.",

		mission_completed_1_part_1 = "يا رجل، مرحبا، أعتقد أنه كان أمرًا جيدًا، أنا كنت أعرف أنني يمكنني الوثوق بك.",
		mission_completed_1_part_2 = "إذا كنت بحاجة إلى كسب المزيد من المال، فأنت تعرف أين تجدني يا رجل.",
		mission_completed_1_part_3 = "سأكون مؤمنًا بالمخزون قريبًا، لا تقلق حول ذلك.",

		mission_completed_2_part_1 = "مرحبًا، ماذا تقول يا صديق؟",
		mission_completed_2_part_2 = "لا يمكنني الكذب، كان ذلك العمل جيدًا جدًا.",
		mission_completed_2_part_3 = "نعم، صدقني، العملاء يحبونك الآن وأنا أحبك أيضًا، لأنك تعرف لماذا؟",
		mission_completed_2_part_4 = "حصلت لي على المال. حصلت لنفسك على بعض المال.",
		mission_completed_2_part_5 = "خذ ذلك، وعُد لاحقًا، لأني أحتاج إليك مجددًا يا صديقي.",

		mission_completed_3_part_1 = "يا شباب، ماذا تقولون؟",
		mission_completed_3_part_2 = "لا يمكنني الكذب، الشيء الذي خلفنا.. جميل يا أخي.",
		mission_completed_3_part_3 = "لم تستطع أن تفعل ذلك بشكل أفضل يا أخي.",
		mission_completed_3_part_4 = "آخر شخص أخطأ، لذلك أنا سعيد جدًا بوجودك.",
		mission_completed_3_part_5 = "عُد لاحقًا يا أخي، ثق بي، لدي بعض الأشياء الأخرى لك يا أخي.",

		mission_completed_4_part_1 = "يا شباب، هل تعرفون كيفية البيع؟",
		mission_completed_4_part_2 = "ربما ستكون رجل أعمال هنا، ثق بي يا أخي.",
		mission_completed_4_part_3 = "الطريقة التي كنت تبيعها لهؤلاء الأشخاص كانت مجنونة يا صديقي.",
		mission_completed_4_part_4 = "نعم، نعم، حبيبي، شكرا لك على ذلك.",
		mission_completed_4_part_5 = "أنا أقدرك بشكل خاص، لذلك اعود لاحقًا وسأجلب لك الأدوية يا صديقي.",
		mission_completed_4_part_6 = "لدي المزيد، نعم، نعم، ثق بي.",

		mission_completed_5_part_1 = "ماذا تفعل هنا يا صديقي؟",
		mission_completed_5_part_2 = "أوه، إنه أنت! ماذا تريد يا صديقي؟",
		mission_completed_5_part_3 = "نعم، شكرًا لك، حبيبي.",
		mission_completed_5_part_4 = "لقد باركتني كثيرًا بهذا! لدي الآن الكثير من المال، سأشتري سيارة جديدة تمامًا بالموسيقى الإلكترونية ، تعرف ما أقوله يا صديقي؟",
		mission_completed_5_part_5 = "يا لهوي، سأحصل على دينكا بليستا، كل هذا، ولكن عد لاحقًا بشكل شرعي.",
		mission_completed_5_part_6 = "لأنني لدي المزيد من المهمات بالنسبة إليك يا صديقي.",

		mission_completed_6_part_1 = "يا لهوي، يجب أن ترى وجه جوجينشميل في وقت سابق يا صديقي.",
		mission_completed_6_part_2 = "بدا وكأنه غبي، لا أستطيع الكذب.",
		mission_completed_6_part_3 = "ألم تكن تعرف أنه خلفك؟",
		mission_completed_6_part_4 = "كان صعباً ، لكن مجهود رائع.",
		mission_completed_6_part_5 = "لا يمكنني الكذب، أنت جيد جدًا في هذا يا صديقي.",
		mission_completed_6_part_6 = "عُد لاحقًا ، سأقدم لك المزيد يا صديقي.",

		mission_completed_7_part_1 = "مرحبًا صديقي، ما الأخبار؟",
		mission_completed_7_part_2 = "يا سلام، لا أستطيع الكذب ، هذا الشيء الذي حصل هناك.. رائع يا صديقي.",
		mission_completed_7_part_3 = "لم يمكنك فعل ذلك بطريقة أفضل يا صديقي.",
		mission_completed_7_part_4 = "الرجل الأخير أفسد الأمور ، لذلك أنا سعيد لأنني حصلت عليك يا صديقي.",
		mission_completed_7_part_5 = "عُد لاحقًا يا رفيق، ثق بي أنا لدي بعض المواد الجديدة لك يا رفيق.",

		mission_completed_8_part_1 = "يا، هذا هو رئيسي الذي كنت أتحدث عنه يا رفيق. ثق فيّ، إنه رجل رائع يا رفيق.",
		mission_completed_8_part_2 = "هذا الرجل جدًا رائع.",
		mission_completed_8_part_3 = "يسلم البضاعة في الوقت المناسب دائمًا!",
		mission_completed_8_part_4 = "العملاء يعشقون هذا الرجل.",
		mission_completed_8_part_5 = "ثق بي، هذا الرجل يتقدم في العالم، لكنك لن تتغلب علي خياراتي يا رفيق.",
		mission_completed_8_part_6 = "لأنك يجب أن تكون شخصًا سيئ السمعة، هل تعرف ما أقصده؟",
		mission_completed_8_part_7 = "ومع ذلك، عد لاحقًا وسأوفر لك بعض الحبوب يا أخي.",

		mission_failed_1_part_1 = "نعم، يا أخي، لا يمكنني الكذب. العميل اتصل بي وقال إنك لم تسلمه الشحنة.",
		mission_failed_1_part_2 = "ماذا يحدث يا أخي؟",
		mission_failed_1_part_3 = "لقد أخطأت بشكل كبير.",
		mission_failed_1_part_4 = "اخرج من أمام عيني يا أخي.",
		mission_failed_1_part_5 = "إذا رأيتُك مرة أخرى، فسيكون الأمر مُحَكَّمًا بالنسبة لك.",

		mission_failed_2_part_1 = "نعم لدينا مشكلة كبيرة الآن.",
		mission_failed_2_part_2 = "لا يمكنني الكذب، لقد كنت متأخراً جداً، ماذا يحدث؟",
		mission_failed_2_part_3 = "نعم، عميلي غاضبون جداً الآن!",
		mission_failed_2_part_4 = "لا تحاول أيضاً الحصول على أي شيء مني مرة أخرى، يا صديقي.",
		mission_failed_2_part_5 = "إلى اللقاء، لقد انتهيت يا صديقي.",

		mission_failed_3_part_1 = "نعم، نعم، نعم، نعم، هيا، هيا..",
		mission_failed_3_part_2 = "لا يمكنني الكذب.",
		mission_failed_3_part_3 = "أنت الرجل الأول الذي سأقول له هذا.",
		mission_failed_3_part_4 = "أنت واحد احمق.",
		mission_failed_3_part_5 = "هل تعلم ذلك؟ نعم؟ أنت واحد احمق.",
		mission_failed_3_part_6 = "تعرف لماذا؟",
		mission_failed_3_part_7 = "لأنك لم تسلم لي الشيء الذي طلبته صديقي.",
		mission_failed_3_part_8 = "فلترحل يا صاحبي، لا أريد أن أراك في مكاني مرة أخرى.",
		mission_failed_3_part_9 = "سأطلق عليك النار إذا رأيتك، أقسم بالله.",
		mission_failed_3_part_10 = " لدي الأسلحة المناسبة، وكل شيء جاهز.",
		mission_failed_3_part_11 = "احذر يا صاحبي.",
		mission_failed_3_part_12 = "صح، اذهب للعنة يا صديقي.",

		mission_failed_4_part_1 = "شباب، ماذا تقول؟",
		mission_failed_4_part_2 = "إي، شوي مهم.",
		mission_failed_4_part_3 = "إذا اقتربت مني مرة أخرى، فأنت ميت.",
		mission_failed_4_part_4 = "هل تعرف لماذا؟",
		mission_failed_4_part_5 = "لأنك سئ، تفشل في كل شيء، يا رفيقي.",
		mission_failed_4_part_6 = "ماذا يحدث؟",
		mission_failed_4_part_7 = "عملاؤنا غاضبون، يأتون عليّ يقولون بأنني أحمق.",
		mission_failed_4_part_8 = "لا أصدق أنني جئت إليك.",
		mission_failed_4_part_9 = "ظننت أنك رفيقي أو شيء من هذا القبيل",
		mission_failed_4_part_10 = "ولكن لا، أنت مجرد كسول، لذا اذهب للجحيم",
		mission_failed_4_part_11 = "انقطع عن وجهي.",

		mission_failed_5_part_1 = "نعم، لم تفعل بشكل جيد في المهمة الأخيرة..",
		mission_failed_5_part_2 = "لا أستطيع أن أكذب عليك، لقد فشلت بشكل كبير.",
		mission_failed_5_part_3 = "لذا لا تأتي إلى مكاني مرة أخرى!",
		mission_failed_5_part_4 = "لأنني أقسم بالله، سأخربك يا عزيزي.",

		mission_failed_6_part_1 = "يا، ماذا تقول يا صديقي؟",
		mission_failed_6_part_2 = "أيها، إذا جئت مرة أخرى إلى مكاني يا صديقي،",
		mission_failed_6_part_3 = "سأحصل على رامبو وأترك الشيء يتمزق على رأسك يا صديقي!",
		mission_failed_6_part_4 = "أقسم بالله! لقد أفسدت لي حساباتي يا صديقي!",
		mission_failed_6_part_5 = "العملاء يتصلون بي الآن ويخبرونني بغضبهم الشديد.",
		mission_failed_6_part_6 = "كل هذا بسببك يا صديقي، كل هذا بسببك.",

		mission_failed_7_part_1 = "لا تأتي إلى مكاني يا صديقي، اذهب للجحيم.",

		mission_failed_8_part_1 = "أيها الأخ، لا تظهر حتى تنظف أموري.",

		mission_failed_9_part_1 = "أيها الأخ، لا تظهر حتى تنظف حزمتي.",
		mission_failed_9_part_2 = "لا، لا تعود إلي حتى يتم الانتهاء من الأمر.",
		mission_failed_9_part_3 = "لقد أخطأت كثيراً، فارحل.",

		mission_failed_10_part_1 = "يا أيها الأخ، يجب أن تدعو إلى ربك لكي تعود إلى المنزل هذه الليلة.",
		mission_failed_10_part_2 = "لأنني قادم لك.",
		mission_failed_10_part_3 = "يا أيها الأخ، لا تخذلني مرة أخرى، والله لا شيء سوى ذلك.",

		no_pills_1_part_1 = "يا مرحبا، ببساطة.. إنها مشكلة صعبة قليلاً.",
		no_pills_1_part_2 = "لأني لا يوجد لدي شيء الآن.",
		no_pills_1_part_3 = "في الواقع، ما سأقوله..",
		no_pills_1_part_4 = "ارحل يا أخي، تعال في وقت آخر.",

		no_pills_2_part_1 = "نعم، ماذا تقول يا صديقي. ببساطة، إنها مشكلة الآن..",
		no_pills_2_part_2 = "لأني لا يوجد لدي حبوب يا أخي!",
		no_pills_2_part_3 = "نعم، لقد تركوني عالقاً! لا يوجد شيء يا أخي!",
		no_pills_2_part_4 = "أيه، أنا اتصلت بهؤلاء، قلت.. يا خي، فين التحبيب؟..",
		no_pills_2_part_5 = "رجلي قال إنها موجودة هناك حتى يا شباب.",
		no_pills_2_part_6 = "هؤلاء الناس يسافرون على نوع من أسلوب ليبرتي سيتي أو شيء ما يا رجل مثل..",
		no_pills_2_part_7 = "هم يستغرقون وقتًا طويلًا يا رجل.",
		no_pills_2_part_8 = "ولكن ثق بي، عندما يكون لدي المزيد، فسأتواصل معك بالتأكيد يا رجل.",

		no_pills_3_part_1 = "يا، ماذا تقول يا رجل؟",
		no_pills_3_part_2 = "ليس لدينا أي تحبيب حاليًا يا رجل، لذلك لماذا لا تذهب يا رجل؟",
		no_pills_3_part_3 = "قبل أن أبدأ في الغضب، هل تعرف ماذا أقصد؟",

		no_pills_4_part_1 = "يا زلمة، كيف الحال؟ لا يوجد حبوب الآن، فلا تهتم.. تطفى عليك..",
		no_pills_4_part_2 = ".. اطفى عليك، انتهى الموضوع.",
		no_pills_4_part_3 = "اطلع برى، انتهى الموضوع.",

		no_pills_5_part_1 = "يا جماعة!",
		no_pills_5_part_2 = "شو أخبارك يا زلمة؟ معلش، مافي حاجة الآن.",
		no_pills_5_part_3 = "شوي وأنا بعطيك.",
		no_pills_5_part_4 = "يعني، رجع بعدين وراح تحصل على ما تبغاه.",
		no_pills_5_part_5 = "حبيبي.",

		no_pills_6_part_1 = "يا حبيبي .. قلت لشخصين قبلكما أنه لا يوجد شيء لدي الآن ..",
		no_pills_6_part_2 = "لماذا لا تستمعون إلى رفاقكم الصغار وتذهبون لتقتلفوا جميعًا يا رجالي؟",
		no_pills_6_part_3 = "هذه هي النهاية لكم يا رفاق، ادعوا الشيطان يا رجالي.",

		no_pills_7_part_1 = "نعم، أنا الشخص الكبير في هذا المكان، هل تعرف ما أقصده؟",
		no_pills_7_part_2 = "لكن الشخص الكبير ليس لديه أي أقراص كبيرة في الوقت الحالي .. لذلك فإن الشخص الصغير الخاص بك يجب أن يذهب ليمارس ويشعر بالحرارة.",
		no_pills_7_part_3 = "تفهم قصدي؟",

		no_pills_8_part_1 = "ايه، ايه، شنو تقول؟",
		no_pills_8_part_2 = "اي، اي، اي، لازم اختفي.",
		no_pills_8_part_3 = "يا اخوي، في شرطة إتصلوا علينا قبل شوي.",
		no_pills_8_part_4 = "ماعندنا أي حبوب الآن، تفهمني؟",
		no_pills_8_part_5 = "ما يضبط لي حالياً، رجع لي لما يهدأ الوضع.",

		no_pills_9_part_1 = "والله قدامي قرف طالعين، سرقولي الحبوب.",
		no_pills_9_part_2 = "لا تقلق لقد قمت بإنهاء الأمر الآن.",
		no_pills_9_part_3 = "لذلك، عندما نحصل على الحبوب بالتأكيد عد وسأخلصك، أنا قادر على ذلك يا أخي.",

		no_pills_10_part_1 = "يا رفاق، ماذا تقول؟",
		no_pills_10_part_2 = "نعم، الآن، هناك بعض العصابات الغبية شمالاً أو شيء من هذا القبيل يا اخي.",
		no_pills_10_part_3 = "قد قاموا بالسطو على ذلك الشئ، لذلك سنذهب هناك معًا، ونسترد ذلك ويمكننا انقاذك يا أخي.",
		no_pills_10_part_4 = "أنا ممتن لهذا.",

		no_pills_11_part_1 = "يا رفاق، ماذا تقول؟ نعم، لا يوجد شيء الآن يا أخي.. لا شيء في الوقت الحالي.",
		no_pills_11_part_2 = "الوضع الآن مش مزبوط. مافيه أي شيء حالياً.",
		no_pills_11_part_3 = "بس بشكل عام، أقول لك نفس الشيء اللي أقوله للجميع..",
		no_pills_11_part_4 = "ليش ما تطلع هداك الحين وترجع لاحقاً؟ حبي.",

		no_pills_12_part_1 = "لا، ما عندي شيء حالياً.",
		no_pills_12_part_2 = "رجع لاحقاً يا رجل، رجع لاحقاً..",

		no_pills_13_part_1 = "يا رجل، اطلع برا حبيبي! ما عندي شيء يا رجل!",
		no_pills_13_part_2 = "ما عندي شيء يا رجل! اهدأ يا رجل!",

		no_pills_14_part_1 = "أخي، قلت لك، ليس لدي أي حبوب الآن.",
		no_pills_14_part_2 = "لذا إذا كنت تحاول الحصول على أموال، تعال إلي وحاول مرة أخرى، أرجوك يا أخي.",

		no_pills_15_part_1 = "لا، استمع لي يا أخي... أنت تغضبني الآن.",
		no_pills_15_part_2 = "لا استطيع الكذب عليك بشأن ذلك.",
		no_pills_15_part_3 = "لذلك سأبدأ فعلاً في الاعتداء على الشخص إذا لم تبتعد عني يا أخي.",

		not_leaving_1_muffled_part_1 = "حسناً، لماذا لا يزال الشخص هنا؟",
		not_leaving_1_muffled_part_2 = "هل هو من رجال الشرطة؟",
		not_leaving_1_muffled_part_3 = "أيه، افحص إذا كان جزءًا من الشرطة، افحص إذا كان جزءًا من الشرطة",

		not_leaving_2_part_1 = "أفلت بعيداً، يا صديقي، اخرج من هنا",

		not_leaving_3_part_1 = "صديقي، هل يمكنك التوقف عن الوجود هنا الآن؟",
		not_leaving_3_part_2 = "أحاول فعل شيء، تعرف ماذا أعني",
		not_leaving_3_part_3 = "أحاول التقبيل، وأنت تنظر إليّ وكأنك بعض الجاهل يا صديقي",
		not_leaving_3_part_4 = "أفلت بعيداً يا صديقي",

		not_leaving_4_part_1 = "يا صديقي، من فضلك، اخرج من هنا",
		not_leaving_4_part_2 = "!يالله قسمًا ي برو",

		not_leaving_5_part_1 = "!يا رجال ما أقدر أصدق ، يا رجال",
		not_leaving_5_part_2 = "!بجيك وبسقيك انت وصحابك",
		not_leaving_5_part_3 = "!ركز يا رجال وأطلعلي من هنا",

		not_leaving_6_part_1 = "!يا رجال أنا مسؤول كبير في هذا المكان",
		not_leaving_6_part_2 = "انت مو صاحب المكان، فاهم ؟ خلاص تراني اعمل شغلي",

		not_leaving_7_part_1 = "!احذرك ، اذا عملت هذا مرة ثانية بنادي مساعديني",
		not_leaving_7_part_2 = "سيقومون بشيء مختلف لك يا صديقي.",

		not_leaving_8_muffled_part_1 = "حسنًا، رطبه يا صديقي، رطبه... إنه يستغرق وقتًا طويلاً.",

		not_leaving_9_part_1 = "يا صديقي، لا تجعلني أخرج السكين الكبير يا صديقي.",
		not_leaving_9_part_2 = "سأرجوك لا تتدخل في مكاني الآن يا صديقي.",
		not_leaving_9_part_3 = "يجب عليك الابتعاد عن ممتلكاتي وفعل شيئك الآن، إنه يستغرق وقتًا طويلاً يا صديقي.",
		not_leaving_9_part_4 = "أنت في بيتي وممتلكاتي، أتعتقد أنك شخص مهم يا صديقي.",
		not_leaving_9_part_5 = "انتظر يا أخي، سأضربك وأفشلك يا أخي.",

		not_leaving_10_muffled_part_1 = "نعم، سيتم تعريض هذا الرجل للغاز في الزاوية وكأنه يمتلك حارتي أو شيء مشابه يا أخي.",

		not_leaving_11_part_1 = "مر من هنا، هيا يا أخي.",
		not_leaving_11_part_2 = "لقد انتهيت منك هنا يا أخي.",

		not_leaving_12_muffled_part_1 = "أيها الرجل، ستحدث لك مشكلة كبيرة.",
		not_leaving_12_muffled_part_2 = "إنه يأخذ وقتاً طويلاً، ابتعد يا أخي.",
		not_leaving_12_muffled_part_3 = "أستطيع رؤيتك الآن، ابتعد يا أخي!",

		not_leaving_13_muffled_part_1 = "يا رفاق! هذا الرجل يستغرق وقتًا طويلاً في أمر ما ..",
		not_leaving_13_muffled_part_2 = "هو شخص منحرف.. يجب أن يكون شخصًا منحرفًا أو شيئًا ما يا أخي",
		not_leaving_13_muffled_part_3 = "إنه بالتأكيد شخص منحرف.",

		start_1_part_1 = "يا أخي! تعال هنا، تعال هنا..",
		start_1_part_2 = "يا أيها الرجل، هل ترغب في عمل مزيد من مهام الأوكسجين؟",
		start_1_part_3 = "شكرًا لك على ذلك، تقديري الكبير",
		start_1_part_4 = "يا أخي، تعرف ما عليك القيام به حتى الآن، صح؟",
		start_1_part_5 = "انتبه، سأرسل لك الموقع الآن.",
		start_1_part_6 = "حب بجد",

		start_2_part_1 = "أيه، وش خبارك يا برو؟ تعال هنا لحظة",
		start_2_part_2 = "آه، تبي تشغل مجددًا؟",
		start_2_part_3 = "ناوي تشغل مرة ثانية؟ بس يبيلك فيزا تخطيطية",
		start_2_part_4 = "أهم شيء تعرف كيف الطريقة، يا رب ترجع الأموال",

		start_3_part_1 = "يا رجل، تعال هنا",
		start_3_part_2 = "تبي تشغل؟",
		start_3_part_3 = "موشرطة صح؟ هههه، جيب جايب، المهم أنك تعرف الطريقة",
		start_3_part_4 = "بكل التفاصيل بعثلك الموقع وكل شي فاهم يا برّو",

		start_4_part_1 = "أيها! أنت ذلك الأحمق من الوقت السابق؟!",
		start_4_part_2 = "أيها، تعال إليَّ يا صاح! لقد قمت بعمل جيد في المرة السابقة لا يمكنني أن أكذب عليك حول ذلك..",
		start_4_part_3 = "حسنًا تمامًا.. اعد القيام بذلك مرة أخرى يا صديقي، أنت تعرف ما عليك القيام به، سأرسل لك التنبيه حول ذلك.",
		start_4_part_4 = "شكرًا جزيلًا لك على ذلك.",

		start_5_part_1 = "أيها، تعال إليَّ يا بلاهة صغيرة!",
		start_5_part_2 = "نعم، نعم، نعم.. أنا أعرف-كنت أعرف من تكون أيها الصديق!",
		start_5_part_3 = "لا تخبرني، لا يهمني من تكون أيها الصديق، لكني أعلم من تكون.",
		start_5_part_4 = "ولكن أساسا ما أريدك أن تفعله، هو أنا بحاجة لكي تعمل الحبوب التي تستخدم للتنفس من جديد.",
		start_5_part_5 = "أنت تعرف الأمور من المرة الماضية، أليس كذلك يا أخي؟",
		start_5_part_6 = "سوف أرسل لك الشيء على الهاتف يا أخي.",

		start_6_part_1 = "يوو! هل أنت صديقي من هناك؟ ما الأخبار يا أخي؟",
		start_6_part_2 = "أييي، كيف الحال وجميع ذلك.. صديقي.",
		start_6_part_3 = "بالمناسبة.. لا أستطيع أن أكذب، أحتاج إليك مرة أخرى لمهمة صغيرة..",
		start_6_part_4 = "نعم نعم، تعرف - تعرف ماذا أقصد، تعرف ماذا أقصد..",
		start_6_part_5 = "الأكسجين، نعم نعم، بالطبع تعرف. أيها الرجل الكبير، سأرسل لك الشيء على الهاتف.",
		start_6_part_6 = "افعل ما يجب عليك فعله، أحبك لذلك.",

		start_7_part_1 = "نعم، نعم، نعم، نعم، هو - هيه، أيها الحمقى من السابق يا صاح!",
		start_7_part_2 = "أتذكر هذا الرجل! نعم، أيها الرجل المضحك، أنا أحبك... أنا أحبك.",
		start_7_part_3 = "انظر، أحتاج إليك لتشغيل الأكسجين مرة أخرى، لا يمكنني الكذب. لذا عجّل يا رجل الكبير.",
		start_7_part_4 = "سأرسل لك الموقع، سأرسل لك التفاصيل.. نعم، نعم..",
		start_7_part_5 = "وتذكر أن نصف ذلك ملكي، لذلك لا تأخذ أي شيء من ذلك، وإلا سأقوم بإلحاق ضرر بك يا أخي، حسنًا.",
		start_7_part_6 = "وتذكر أن نصف ذلك ملكي، لذلك لا تأخذ أي شيء من ذلك، وإلا سأقوم بإلحاق ضرر بك يا أخي، حسنًا.",

		start_8_look_to_sides_part_1 = "يا صديقي، أقسم أنني رأيت جوجينشميل يمر هنا يا صديقي..",
		start_8_look_to_sides_part_2 = "تعال هنا، تعال هنا، توقف عن محاولة جذب الأنظار يا صديقي.",
		start_8_look_to_sides_part_3 = "يا أيها الصديق.. ما أحتاجه منك الآن هو الحصول على تلك الحبوب لي.",
		start_8_look_to_sides_part_4 = "أحتاجك لتشغيل تلك الحبوب لي أنت الرئيس الآن.",
		start_8_look_to_sides_part_5 = "سأرسل لك التفاصيل بخصوص الموقع، هل تعرف ما يجب فعله الآن؟",
		start_8_look_to_sides_part_6 = "ولكن عليك الحفاظ على وعيك، لأنني شوهدت العديد من الشرطة يمرون بالقرب من هنا.",
		start_8_look_to_sides_part_7 = "إذا تم القبض عليك! لا تنقح لي، لأنك ميت يا صديقي!",
		start_8_look_to_sides_part_8 = "هل تفهم ما أقول؟ شكرا جزيلا.",

		start_9_look_to_sides_part_1 = "يا إلهي، لا أستطيع الكذب، لقد شاهدت شرطيًا مر من هناك يا صديقي!",
		start_9_look_to_sides_part_2 = "هل أنت متأكد من أنه لم يتم متابعتك أو أي شيء من هذا القبيل؟",
		start_9_look_to_sides_part_3 = "لأنني لا يمكنني أن أكذب عليك، شركة FIB تقوم حالياً بمستوى جديد تماماً من الأمور، يا رجل.",
		start_9_look_to_sides_part_4 = "لديهم مروحيات كثيرة في الهواء وهذه الأمور يا رجل.",
		start_9_look_to_sides_part_5 = "أنا عارف كل شي، يا رجل. ثق في ذلك.",
		start_9_look_to_sides_part_6 = "أجل أجل.. كان يتبعك بالتأكيد، تذكر.. تذكر ذاك الشارجر اللي مريت من جنبه يا رجل؟",
		start_9_look_to_sides_part_7 = "لكنه لم يشغل الأضواء؟ ثق بي على الرغم من ذلك..",
		start_9_look_to_sides_part_8 = "نعم أعرف ذلك، أعرف ذلك.",

		start_burger_shot_part_1 = "يا، رأيتك في برجر شوت مرة واحدة.. هل تقلب الباتي؟",
		start_burger_shot_part_2 = "نعم لا يمكنني الكذب، بالتأكيد تحتاج إلى هذا المال.",

		start_cop_1_part_1 = "يا، يمكنني أن أشم رجلاً من بنك ميز، أخي..",
		start_cop_1_part_2 = "يمكنني أن أقول أنك رجل شرطة.",
		start_cop_1_part_3 = "الأفضل أن تستدعي تعزيزات قبل أن أبدأ في تفريغ مسدسي في سيارتك الصغيرة أيها الفتى الصغير لرجال الشرطة.",

		start_cop_2_part_1 = "ما الأمر يا ضابط، نحن فقط نساعد المرضى في مقاطعة بلين.",
		start_cop_2_part_2 = "لا شيء غير قانوني يحدث هنا، يا برو.",

		start_gang_member_part_1 = "أقسم أنني رأيتك تتلقى ضربة من تلك العصابة ..",
		start_gang_member_part_2 = "نعم ياه، بالتأكيد تم التغوط عليك، يمكنني أن أقول ذلك من خلال صبغة وجهك المزعجة.",

		start_group_part_1 = "يا رفاق، سمعت أنكم تريدون الذهاب وتشغيل بعض حبوب الأوكسي لي مثل ذلك.",
		start_group_part_2 = "لا يمكنني الكذب، كلما كان الأفضل في هذا الوقت، ولكن لا يمكنني إعطاء الحبوب لأكثر من واحد منكم.",
		start_group_part_3 = "تأكد من أنك تأخذ الأمور براحة، اذهب مع فريقك وتوجهوا لإنجاز هذه المهمة صديقي.",
		start_group_part_4 = "'لأن الوقت يساوي المال في الوقت الحالي يا صديقي، هل تفهمني؟'",
		start_group_part_5 = "أنت تستغرق وقتاً طويلاً في الوقوف هنا يا صديقي، أسرع يا رجل، فلتذهب بعيدًا صديقي.",

		start_knife_part_1 = "يا لها من رامبو كبيرة تحملها صديقي!",
		start_knife_part_2 = "أفضل عدم تحريك تلك الأداة في هذا المكان صديقي، لأنه سيؤدي إلى وقوع صعوبات عليك يا أخي!",

		start_last_fail_part_1 = "صديقي! هل أنت الشخص الذي رأيته من هناك؟ كيف حالك؟ ايش مسوي يا اخي!",
		start_last_fail_part_2 = "أيه، في الأساس أحتاج إليك مرة أخرى لمهمة صغيرة مثل ..",
		start_last_fail_part_3 = "نعم نعم .. أنت تعرف - أنت تعرف عما أتحدث ، أنت تعرف أني أتحدث عن الأوكسي ، نعم ، بالطبع أنت تعرف ذلك.",
		start_last_fail_part_4 = "أيه ، في الأساس سأرسل لك الشيء على الهاتف.",
		start_last_fail_part_5 = "افعل ما يجب عليك القيام به أخي الكبير، شكرًا لك لذلك.",

		start_legendary_tier_part_1 = "أوه، إذاً أنت الكبير الذي يعيش المرحلة الأسطورية ؟",
		start_legendary_tier_part_2 = "المرحلة الأسطورية، حسنًا ، يبدو أنك قد تحتاج إلى شراء الطابق كاملاً للـ EDM يا صديقي!",
		start_legendary_tier_part_3 = "هيا.",

		start_mechanic_part_1 = "يا مرحبًا، هل تقوم بإصلاح السيارات؟",
		start_mechanic_part_2 = "يا رفاق، بعد هذا سأحتاج إليكم لضبط سيارتي آسبو لأنها بها الكثير من الخدوش أخي.",

		start_mercedes_part_1 = "أحب السيارة من نوع مرسيدس الخاصة بك أخي!",
		start_mercedes_part_2 = "لا أستطيع الكذب، بعد انتهاءك من هذا الشيء الصغير، سأحتاجه منكم أنتم.",

		start_no_gun_part_1 = "أخي، لا يمكنك القدوم إلى هنا في زيارة ودية كما لو أنك لن تتعرض للسرقة.",
		start_no_gun_part_2 = "حظ سعيد، يبدو أن المسلحين خارج الآن ولكن..",
		start_no_gun_part_3 = "تأكد من أنك تحمل سلاح في المرة القادمة يا أخي.",

		start_on_timer_1_part_1 = "لا أستطيع أن أكذب عليك يا أخي، لقد فشلت في الاختبار الأخير، فماذا تفعل هنا؟",
		start_on_timer_1_part_2 = "لا، عد لاحقاً عندما تتجهز لمواجهة الأمور بجدية، أيها الغبي!",

		start_on_timer_2_part_1 = "لا يمكنك العودة هنا بعد فشلك الأخير يا أخي..",
		start_on_timer_2_part_2 = "تعرف أين تذهب وتفعل شيئاً آخر يا رفيقي.",

		start_on_timer_3_part_1 = "هل هذا صحيح؟ هل تعتقد أنه يمكنك العودة بعد فشلك في ذلك يا أخي؟",
		start_on_timer_3_part_2 = "اطلع من هنا قبل لا أجلب أصدقائي، يا زلمة!",

		start_on_timer_4_part_1 = "راح نقول الصراحة يا زلمة آخر مرة أخطأت كثيير..",
		start_on_timer_4_part_2 = "ما أظن لو تبقى هنا لمدة ثانيتين، راح يكون الوضع صعب عليك يا طيب..",

		start_on_timer_5_part_1 = "شو أخبارك، يا ولد؟",
		start_on_timer_5_part_2 = "المرة الماضية أخطأت كثير وما حصلت على الأقراص.",
		start_on_timer_5_part_3 = "أخطأت بشكل كبير يا ولدي.",
		start_on_timer_5_part_4 = "لا تعود هنا مرة أخرى يا صديق! أتفهم ما أقول؟",
		start_on_timer_5_part_5 = "أعرف اسمك، رأيت وجهك. لقد انتهت صلاحيتك هنا يا صديق.",

		start_on_timer_6_part_1 = "هذا الرجل يعتقد أنه متمرد؟ يعود بعد إرتكاب الأخطاء ثم يأتي إليَّ يتأسف..",
		start_on_timer_6_part_2 = "لا، هذا لا يعمل في هذا المكان.",
		start_on_timer_6_part_3 = "أفضل لك أن تتراجع الآن يا رفيقي!",

		start_on_timer_7_part_1 = "لا يمكنني أن أكذب، هذا الرجل ارتكب خطأً فادحًا.",
		start_on_timer_7_part_2 = "هل ترى هذا الرجل هنا؟ هل ترى هذا العاهر هنا؟",
		start_on_timer_7_part_3 = "اخطأ بشكل كبير، هيا اتي هنا!",
		start_on_timer_7_part_4 = "لا يمكنني الكذب، أنت عاهر، انقلع من هنا، عد لاحقًا صديقي.",

		start_on_timer_8_part_1 = "نعم، أنت من هذا النوع من الرجال يا صديقي.",
		start_on_timer_8_part_2 = "هذا الرجل يجوب حول ملكي يا صديقي، يخرب أمري، يزعج أناسي.",
		start_on_timer_8_part_3 = "يعود متوقعًا إعادة التموين، توقع الحصول على الدفع يا صديقي!",
		start_on_timer_8_part_4 = "توقع للحصول على الخبز يا صحبي.. لن تحصل على أي خبز صحبي..",
		start_on_timer_8_part_5 = "ستحصل على فتات فقط.. إرحل من حارتي يا صحبي!",
		start_on_timer_8_part_6 = "انسحب من هنا يا صحبي، لقد انتهيت وأنت تعرف ذلك.",
		start_on_timer_8_part_7 = "الهاتف يرن أيضًا يا صحبي، لقد انتهيت! لدي شخص آخر في طريقه إلى هنا.",

		start_over_31d_part_1 = "يا رجل، لا يمكنني الكذب! لقد بقيت هنا لفترة طويلة جدًا..",
		start_over_31d_part_2 = "من فضلك إذهب واعمل شيئًا سريعًا وعد بالعودة يا صحبي.",

		start_over_100k_part_1 = "لماذا تدير الطعام عندما لديك أكثر من 100 ألف جنيه في جيبك؟",
		start_over_100k_part_2 = "هذا ليس نقداً، أليس كذلك؟ لأني سأرسل اللصوص لسرقتك أخي.",

		start_revving_part_1 = "إذا استمررت في تسريع هذه المركبة الثرثارة، فسنواجه مشاكلًا، صديقي.",
		start_revving_part_2 = "أرجوك، اهدأ من قدمك، قبل أن أجبرك على الهدوء، أخي.",

		start_staff_1_part_1 = "يا صديقي، أليس من المفترض أن تقوم بحظر المتسللين بدلاً من التحدث معي؟",
		start_staff_1_part_2 = "بغض النظر عن ذلك، أحتاج إلى المال ولكنني أراقبك كمشرف.",

		start_staff_2_part_1 = "أخي، أنت الثاني من المشرفين الذين يقومون بتشغيل أوكسجي اليوم..",
		start_staff_2_part_2 = "يجب عليكم العمل بجد، وليس على هذه الوظيفة على أي حال.",

		start_streamer_part_1 = "يااه، هذا هو الشخص الذي يعتقد أنه بث كبير!",
		start_streamer_part_2 = "يا للهول، سخروا من هذا الرجل!",

		start_stressed_part_1 = "أخي! لما ترتجف يديك؟!",
		start_stressed_part_2 = "اذهب وخذ استراحة باستنشاق الدخان أو شيء أخر لأنك تتحرك بشكل مرهق جدًا الآن.",

		start_subaru_part_1 = "أيها السوبارو، يجب أن يكون جيدًا في الطرق الوعرة!",
		start_subaru_part_2 = "لأن المسار الذي سأأخذك عليه مختلف!",

		start_under_10k_part_1 = "أخي، أعلم أن لديك أقل من 10 آلاف دولار في رصيدك!",
		start_under_10k_part_2 = "لذلك لماذا لا تأخذ فقرك وهذه الحبوب إلى الموقع بسرعة يا أخي العزيز.",

		start_under_24h_part_1 = "أنت وحش يا أخي! استمر في الدفع.",

		start_zombie_pills_part_1 = "حسنًا، لقد انهيت حبوب زد والآن تريد الاستمرار في حبوب الأوكسي..",
		start_zombie_pills_part_2 = "لست سوى مدمن مخدرات!",

		still_pressing_e_1_part_1 = "شبيك لبيك والله؟ ليش تتبعنا يالكلب؟",
		still_pressing_e_1_part_2 = "لا ترجع للموقع مرة ثانية يالنذل. شليت لك مكاننا يالرجال، شيك عالجوال يابعدي.",
		still_pressing_e_1_part_3 = "صح، صح، شيك ذاك الجوال..",

		still_pressing_e_2_part_1 = "يا رجال، انت اللّي تحرش ولا شنو؟",
		still_pressing_e_2_part_2 = "شلون ما تشيك الجوال يالنذل، خبريتك وين نحن يالعاهر؟",
		still_pressing_e_2_part_3 = "يا جزمة، شيك جوالك وارحمنا..",

		still_pressing_e_3_part_1 = "أنا لا أستطيع الكذب، إن كنت ستفعل هذا مرة أخرى، لقد قلت لك الكثير من المرات، يا رفيقي...",
		still_pressing_e_3_part_2 = "إذا فعلت ذلك مرة أخرى، فسأرسل الجنود بالتأكيد بعدك يا ذو اللعينة.",

		still_pressing_e_4_part_1 = "أنت تستهبل الآن، انصرف يا ذو اللعينة!",

		still_pressing_e_5_part_1 = "يا ذو اللعينة، هل أنت غبي أم ماذا؟",
		still_pressing_e_5_part_2 = "هل لا تزال تعود إليّ وتتحدث معي بهذا الصوت الكبير؟",
		still_pressing_e_5_part_3 = "يا لك من غبي! يجب أن تتراجع الآن، أقسم بالله سأضربك، يا ذو اللعينة!",

		still_pressing_e_6_muffled_part_1 = "هذا الرجل هو أحمق على الرغم من ذلك ..",

		still_pressing_e_7_muffled_part_1 = "هذا الرجل أحمق يا حبيبي.",
		still_pressing_e_7_muffled_part_2 = "إنه بالتأكيد أحمق، يعود مرةً بعد مرة!",
		still_pressing_e_7_muffled_part_3 = "إنه يظن أنني سأثور أكثر، لا أنا لا أزعج بعد الآن، يا حبيبي!",

		still_pressing_e_8_part_1 = "أنت تبدأ في إحراجي، أووه لا أستطيع إخفاء غضبي الآن..",
		still_pressing_e_8_part_2 = "لذلك توقف عن الضغط على زر E يا حبيبي.",

		still_pressing_e_9_part_1 = "أوه لا أستطيع الكذب، إذا كنت ستستمر في الضغط على زر E يا حبيبي.",
		still_pressing_e_9_part_2 = "سأقوم بإتلافك في هذا المكان ، تحول إلى الخلف يا زميلي",

		taking_too_long_1_part_1 = "يا زميلي ، أنت تأخذ وقتاً طويلاً ، أتفهم ما أقصده؟",
		taking_too_long_1_part_2 = "يجب عليك أن تسرع الأمور.",

		taking_too_long_2_part_1 = "إذا استمررت بالتأخير ، فسوف ينتج عن ذلك مشاكل كبيرة بالنسبة لك.",
		taking_too_long_2_part_2 = "أنت متأخر جدًا يا زميلي ، عجّل الأمور.",

		taking_too_long_3_part_1 = "يا زميلي ، أنت تأخذ وقتاً طويلاً جداً ، هل تحاول سرقة وظيفتي؟",

		taking_too_long_5_part_1 = "أتعتقد أنك مضحك يا رجل؟ هل تعتقد أن هذا نوع من المزح يا كبير؟",
		taking_too_long_5_part_2 = "هيا، تفضل .. أرجوك تعال إلي الآن يا صديقي، شاهد ماذا سيحدث لك صديقي.",

		taking_too_long_6_part_1 = "يا رجل، لا يجب أن تمزح.. أريد أموالي الآن يا صديقي..",
		taking_too_long_6_part_2 = "أسرع قليلاً يا رجل.",

		taking_too_long_7_part_1 = "يا رجل، أنا أعلم بالسيارة التي تقودها..",
		taking_too_long_7_part_2 = "رأيتك عندما غادرت يا صديقي، لا تعتقد أنك آمن.",

		taking_too_long_8_part_1 = "حسنًا، هذا كل شيء .. هذه هي الفرصة الأخيرة الآن يا رفاق.",
		taking_too_long_8_part_2 = "إذا استغرقت وقتًا طويلاً مرة أخرى ، فسأتصل بالأوترز وستصبح الأمور صعبة عليك يا رفيقي.",
		taking_too_long_8_part_3 = "لذلك عليك أن تسرع يا رفيقي ... الوقت ينفد.",

		too_many_people_1_part_1 = "ألقي نظرة! لا أستطيع الكذب، هناك الكثير من الناس حولي الآن!",
		too_many_people_1_part_2 = "لماذا أنتم جميعًا هنا؟ هل تحاولون الاستيلاء على المكان أم شيء ما يا رفاق؟",
		too_many_people_1_part_3 = "لأنني أقسم بالله أن لدي أوترز وماتيك جاهزة لقتل شخص ما.",
		too_many_people_1_part_4 = "تفهمني يا راجل، هذا اللي أبي أقوله..",
		too_many_people_1_part_5 = "خلّوا مسافة بينكم وبيني يا جماعة، قلت كلكم تبعدون ، يعني أنت أيضاً يا صاح؟ خرا على راسك يا زلمة",

		too_many_people_2_part_1 = "صراحة يا راجل، في كثير ناس الحين..",
		too_many_people_2_part_2 = "انت بتخلي نفسك بدون ما تدري يا راجل، كل هالناس حوليك",
		too_many_people_2_part_3 = "قلتلي انت الوحيد اللي بيكون حول هالمنطقة يا راجل، ما تقول ٤ يا غبي!",
		too_many_people_2_part_4 = "لا يهمني إذا كنت تنتمي إلى عصابة ما، هل أعطي أهمية لذلك؟ لا، إخواني..",
		too_many_people_2_part_5 = "ابتعدوا عني وعن أصحابكم الآن قبل أن تتفاقم الأمور يا أخي.",

		tutorial_1_part_1 = "مرحباً، ما الأمر يا أخي؟ هل تريد تشغيل بعض المخدرات لي؟",
		tutorial_1_part_2 = "يا سلااام! أنا لا أستطيع أن أكذب عليك، بصراحة كنت أبحث عن مساعدة في هذا الأمر.",
		tutorial_1_part_3 = "استمع لي جيداً..",
		tutorial_1_part_4 = "لدي الكثير من الروشتات التي تم تزويرها وتصنيعها شمالاً.",
		tutorial_1_part_5 = "نعم لكني لا أستطيع الكذب، سأحتاج منك إلى ان تقوم بالحصول على هذه الأشياء بدلاً مني",
		tutorial_1_part_6 = "ومن ثم ما أحتاجه منك - بسمعني يا رجل وأنا أتحدث إليك؛",
		tutorial_1_part_7 = "قُم بنقلها إلى المدينة واستبدالها",
		tutorial_1_part_8 = "نعم .. نعم.. عليك استبدالها يا صديقي",
		tutorial_1_part_9 = "سأرسل لك التفاصيل على هاتفك، تحقق من جهاز تحديد المواقع وغيره يا رجل، سأراك قريبًا",
		tutorial_1_part_10 = "لكن يا ناس، لا تتأخر كثيرا؛ وإلا فسأضطر إلى طلب الدعم الخارجي لمواجهتك.",
		tutorial_1_part_11 = "وثق بي أن هذا لا يبدو جيدًا بالنسبة لك، لا أستطيع الكذب حول ذلك.",
		tutorial_1_part_12 = "نعم، لنذهب أخي الكبير.. توقف عن التحدث إليّ أخي، وتوقف عن النظر إلى وجهي أخي وأسرع باللعنة أخي.",

		tutorial_2_part_1 = "مرحبًا، ما الأخبار أخي؟ هل تريد تشغيل بعض الأوكسجين بالنسبة لي أخي؟",
		tutorial_2_part_2 = "يوو، جيد أخي! أيها الرجل، لا أستطيع الكذب عليك الآن أخي، لقد كنت أبحث عن بعض المساعدة في كل ذلك أخي.",
		tutorial_2_part_3 = "يا أخي، لدي مجموعة من الوصفات المزورة المصنوعة لي هنا شمالًا أخي.",
		tutorial_2_part_4 = "ما تقدر تروح لصيدلية وتجيب لي أدوية المرض الخاص فيني يالراجل",
		tutorial_2_part_5 = "صح، بعد كدا، اسمع يابرو، خدي الأدوية وروح الصيدليات العندنا في السيتي واروح تحصل فلوس. ",
		tutorial_2_part_6 = "أي، أي، أي، أي..",
		tutorial_2_part_7 = "هسيبك تعرف تروح عن طريق ال GPS يالراجل، أنا هرسللك التفاصيل من هون واتساب بس خلي بالك من الوقت يالراجل",
		tutorial_2_part_8 = "ويلا.. ما تطولش يالراجل.. لأني هركب عليك الشلاري بجد",
		tutorial_2_part_9 = "وصدقني لا يبدو هذا جيدًا بالنسبة لك، لا أستطيع الكذب حيال ذلك.",
		tutorial_2_part_10 = "نعم، دعنا نذهب اخي الكبير، توقف عن الحديث معي يا برو، وتوقف عن النظر إلى وجهي يا برو وأسرع يا برو.",

		tutorial_3_part_1 = "مرحبا، ما الأمور يا أخي؟ هل أنت حريص على تشغيل بعض الأكسجين بالنسبة لي الآن؟",
		tutorial_3_part_2 = "نعم، نعم، هذا جيد حقًا، لأنه لا يمكنني الكذب بخصوص ذلك، لقد كنت أبحث عن بعض المساعدة في كل هذا.",
		tutorial_3_part_3 = "نعم، نعم، نعم.. لدي الكثير من الروشتات المغلوطة التي صنعتها لي هنا في الشمال. وأثق في ذلك.",
		tutorial_3_part_4 = "نعم ولكني لا أستطيع الكذب، سوف أحتاج إليك لتلقي الروشتات بالنيابة عني، هل يمكنك فعل ذلك؟",
		tutorial_3_part_5 = "ثم بشكل أساسي، يجب عليك أن تذهب إلى المدينة وتستلمها من جميع الصيدليات وما إلى ذلك، يا رفيق.",
		tutorial_3_part_6 = "أنا سوف أساعدك، لأنني سوف أفعل شيئًا الآن.",
		tutorial_3_part_7 = "الانظر إلى نظام تحديد المواقع الخاص بك، فأنا سأرسل لك التفاصيل، أخي.",
		tutorial_3_part_8 = "ولكن عليك ألا تتأخر كثيرًا أو ستحصل بالتأكيد على تهديدات، فأسرع قليلاً يا رجل الكبير.",
		tutorial_3_part_9 = "نعم، لنذهب يا أخي الكبير، توقف عن الحديث إليّ يا أخي، توقف عن النظر إلى وجهي يا أخي واسرع يا أخي.",
		tutorial_3_part_10 = "حبيبي يا أخي، الحب."
	},

	panel = {
		loading_title = "جارٍ التحميل",
		error_title = "حدث خطأ ما",

		was_banned = "محظور",
		loading = "جارٍ تحميل بيانات اللاعب...",
		no_warnings = "لا تحذيرات",
		not_shown_warnings = "${count} تحذير آخر غير معروض",
		system_issuer = "النظام",
		add_warning_title = "إضافة تحذير",
		message_placeholder = "قام ${playerName} بارتكاب خطأ...",

		type_note = "ملاحظة",
		type_warning = "تحذير",
		type_strike = "ضربة",
		type_system = "نظام",

		button_cancel = "إلغاء",
		button_add = "إضافة",
		button_close = "إغلاق",
		button_new = "جديد",

		invalid_server_id = "رقم خادم غير صالح.",

		failed_load_player = "فشل تحميل بيانات اللاعب. هل أدخلت رقم خادم صالح؟",
		failed_add_warning = "فشل إضافة تحذير.",

		get_info_no_permissions = "حاول اللاعب الحصول على معلومات عن لاعب بدون الصلاحيات اللازمة.",

		user_indefinitely_banned_warning_no_reason = "لقد حظرت هذا الشخص بشكل دائم بدون سبب محدد. تم إنشاء هذا التحذير تلقائيًا نتيجة الحظر.",
		user_indefinitely_banned_warning = "لقد قمت بحظر هذا الشخص بشكل دائم بسبب `${reason}`. تم إنشاء هذا التحذير تلقائيًا نتيجةً للحظر.",
		user_temporarily_banned_warning_no_reason = "لقد قمت بحظر هذا الشخص لمدة ${displayTime} بدون سبب محدد. تم إنشاء هذا التحذير تلقائيًا نتيجةً للحظر.",
		user_temporarily_banned_warning = "لقد قمت بحظر هذا الشخص لمدة ${displayTime} مع سبب `${reason}`. تم إنشاء هذا التحذير تلقائيًا نتيجةً للحظر."
	},

	panic = {
		press_panic_button = "لديك 5 ثوانٍ للضغط على الزر الخاص بالذعر (X).",
		panic_button_timeout = "لم تضغط على الزر الخاص بالذعر في الوقت المحدد.",

		panic_button_title = "[الإنذار]",

		panic_button_unit = "10-14، ${unitId} ${lastName} ${label} متعثّر.",
		panic_button_no_unit = "10-14، ${lastName} ${label} متعثّر.",

		panic_blip = "10-14 ${lastName}",

		label_officer = "ضابط",
		label_paramedic = "مسعف"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] املأ الحقيبة بالورق",
		no_bags = "ليس لديك أي حقائب ورقية.",
		no_bag_items = "ليس لديك أي عناصر يمكنك وضعها في الحقيبة الورقية.",
		close_bag = "اغلاق الحقيبة",
		cancel_bag = "الغاء",
		title = "حقيبة ورقية",
		failed_fill = "فشل ملء الحقيبة الورقية.",
		filled_bag = "تم ملء الحقيبة الورقية بنجاح."
	},

	parking_meters = {
		not_paid = "لم يتم الدفع",
		insert_dollar = "[${InteractionKey}] إدخال ${amount} دولار",

		no_cash = "لا يوجد لديك دولار واحد.",
		max_time = "تم استنفاد وقت وقوف السيارة هذا بالفعل.",
		failed_pay = "فشل الدفع لجهاز الضبط الالي لوقوف السيارات."
	},

	pawn_shops = {
		sell_items = "بيع ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] بيع ${itemLabel}",
		sold_items = "تم بيع ${sellAmount}x ${itemLabel} لـ $${sellPrice}.",
		no_items_to_sell = "لا يوجد لديك أي ${itemLabel} للبيع.",
		daily_limit_reached = "لقد وصلت إلى الحد اليومي المسموح به، لن يقبل البائع المزيد من العناصر.",
		illegal_pawn_shop_id = "محاولة إرسال قيم لمحل رهن لا يوجد.",
		used_pawn_shop_title = "محل رهن مستعمل",
		used_pawn_shop_details = "${consoleName} استخدم محل رهن وباع ${sellAmount} `${itemLabel}` واستلم $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "حاول ${attemptMessage} ونجح",
		attempt_failed = "حاول ${attemptMessage} ولكن فشل",
		dice_message = "لقد قام برمي النرد و حصل على ${diceNumber}",
		roll_message = "لقد قام برمي النرد المخصص بإعدادات ${rolls}d${max} و حصل على ${totalValue}",
		citizen_card_message = "استعرض هويته (${characterId})",
		badge_message = "استعرض شارته (${characterId})",
		license_message = "استعرض رخصته (${characterId})",
		ped_message_logs_title = "رسائل الشخصيات غير اللاعبة",
		ped_message_logs_details = "${consoleName} يرسل رسالة للشخصية غير اللاعبة بالرسالة التالية: `${pedMessage}`",
		attached_ped_message_logs_title = "رسائل الشخصيات غير اللاعبة المرفقة",
		attached_ped_message_logs_details = "${consoleName} قام بإرفاق رسالة بيد للشخصية الوهمية تحتوي على الرسالة التالية: `${pedMessage}`",
		chat_ped_messages_enabled = "سيتم عرض رسائل الشخصيات الوهمية في الدردشة الآن.",
		chat_ped_messages_disabled = "لن يتم عرض رسائل الشخصيات الوهمية في الدردشة بعد الآن.",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/inspect [${serverId}]",
		frisk_chat_title = "/frisk [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/نرد [${serverId}]",
		roll_message_chat_title = "/طرح [${serverId}]",
		description_message_chat_title = "/وصف [${serverId}]",
		message_too_long = "الرسالة تحتوي على العديد من الأحرف أو الأسطر!",
		card_command_wait = "لقد حصلت للتو على بطاقة ، انتظر قليلاً قبل سحب البطاقة التالية.",
		ped_message_timeout = "تمهل، انتظر قليلاً قبل إرسال رسالة أخرى."
	},

	ped_objects = {
		illegal_ped_object = "محاولة إضافة كائن بيد غير موجود في قائمة الكائنات المسموح بها.",
		illegal_ped_weapon_object = "محاولة إضافة سلاح بيد غير موجود في قائمة الأسلحة."
	},

	ped_task = {
		network_id_invalid = "مُعرف الشبكة غير صالح.",
		ped_not_found = "الشخصية التي تحمل معرف الشبكة `${networkId}` لم يتم العثور عليها.",
		tracked_ped = "الشخصية المتتبعة",
		tracked_ped_is = "الشخصية (${entity}) هي:"
	},

	ped_spawn = {
		ped_missing_model = "معلمة النموذج غير موجودة.",
		ped_spawn_success = "تم إنشاء الشخصية بنجاح.",
		ped_failed_spawn = "فشل في إنشاء الشخصية.",
		invalid_weapon = "السلاح غير صالح.",
		ped_remove_success = "تمت إزالة الشخصيات التي تم إنشاؤها بنجاح.",
		ped_failed_remove = "فشل في إزالة الشخصيات التي تم إنشاؤها.",
		ped_task_success = "تم تعيين المهمة '${task}' بنجاح للشخصيات التي تم إنشاؤها.",
		ped_failed_task = "فشل في تعيين مهمة '${task}' للأطوار المتولدة.",
		invalid_target = "معرف الخادم المستهدف غير صالح.",
		missing_task = "معلمة المهمة غير موجودة.",
		invalid_task = "مهمة الأطلس المتولدة '${task}' غير صالحة.",
		target_required = "تتطلب هذه المهمة من الأطلس المتولدة هدفاً صالحاً.",
		ped_emote_success = "نفذ أطوار المتولدة بنجاح إيموت '${emote}'.",
		ped_failed_emote = "فشلت في تشغيل إيموت '${emote}' للأطوار المتولدة.",
		invalid_emote = "إيموت غير صالح '${emote}'.",
		missing_emote = "معلمة إيموت غير موجودة.",

		emote_list = "الإيموتات المتاحة: ${list}.",
		task_list = "المهام المتاحة للشخصيات: ${list}.",

		spawn_ped_missing_perms = "تمت محاولة إنشاء شخصية بدون صلاحيات كافية.",
		remove_peds_missing_perms = "تمت محاولة إزالة الشخصيات التي تم إنشاؤها بدون صلاحيات كافية.",
		ped_assign_task_missing_perms = "تمت محاولة تعيين مهمة للشخصيات التي تم إنشاؤها بدون صلاحيات كافية."
	},

	ped_steal = {
		ped_steal_reset = "تمت إعادة تعيين شخصية اللاعب.",
		ped_steal_success = "تم سرقة مظهر الشخصية بنجاح.",
		ped_steal_failed = "فشل في سرقة مظهر الشخصية.",
		ped_not_found = "لم يتم العثور على مظهر اللاعب.",
		invalid_server_id = "رقم الخادم غير صحيح."
	},

	ped_takeover = {
		failed_reset = "لم يتمكن من التبديل إلى الشخصية الأولية.",
		failed_reset_not_exist = "الشخصية الأولية غير موجودة أو ليست بجوارك.",
		failed_takeover = "فشل استحواذ الشخصية.",
		invalid_network_id = "رقم الشبكة غير صحيح."
	},

	peds = {
		ped_robbing_injection = "قيام بسرقة أشخاص بشكل زائد! (تم استخدام برنامج حقن للتحايل على السيرفر معظم الأوقات.)",
		robbed_ped_logs_title = "سرقة شخص",
		robbed_ped_logs_details = "${consoleName} قام بسرقة شخص وحصل على ${payout} $."
	},

	pepper_spray = {
		press_to_pepper_spray = "اضغط ~INPUT_ATTACK~ لاستخدام بخاخ الفلفل.",
		using_pepper_spray = "يتم استخدام بخاخ الفلفل."
	},

	phone = {
		app_settings = "الإعدادات",
		app_contacts = "جهات الاتصال",
		app_calls = "الهاتف",
		app_messages = "الرسائل"
	},

	phone_numbers = {
		no_phone_number_set = "لم يتم تعيين رقم الهاتف.",
		invalid_format = "رقم الهاتف المحدد به صيغة غير صالحة.",
		invalid_length = "طول رقم الهاتف المحدد غير صحيح.",
		invalid_characters = "يحتوي رقم الهاتف المحدد على أحرف غير صالحة.",
		phone_number_changed_to = "تم تغيير رقم هاتفك إلى `${phoneNumber}`.",
		phone_number_taken = "رقم الهاتف ${phoneNumber} مأخوذ بالفعل.",
		database_error = "حدث خطأ في قاعدة بيانات الخلفية.",
		no_packages = "ليس لديك أي حزم لهذا.",
		api_error = "أعاد خدمة API الخلفية لدينا خطأ.",
		api_not_available = "خدمة API الخلفية لدينا غير متاحة.",
		phone_number_is_available = "رقم الهاتف ${phoneNumber} متاح.",
		phone_number_is_not_available = "رقم الهاتف ${phoneNumber} غير متاح."
	},

	pictures = {
		selfie_description = "صورة لـ ${firstName} ${lastName}."
	},

	player_control = {
		unable_to_drive_for_yourself = "غير قادر على القيادة بنفسك.",
		drive_for_player_no_permissions = "حاول اللاعب القيادة بدلاً من اللاعب ولكنه لم يكن لديه الصلاحيات المطلوبة لذلك.",
		player_is_not_nearby = "اللاعب ذو معرف الخادم ${serverId} ليس قريباً.",
		player_is_not_the_drive_of_a_vehicle = "اللاعب ذو معرف الخادم ${serverId} ليس سائق المركبة.",
		press_to_stop_drive_for = "اضغط ~INPUT_FRONTEND_CANCEL~ لإيقاف القيادة بدلاً من اللاعب."
	},

	player_scales = {
		reset_player_scale_for = "إعادة تعيين حجم اللاعب لـ ${consoleName}.",
		set_player_scale_to_for = "تعيين حجم اللاعب على `${scale}` لـ ${consoleName}",
		reset_player_scale = "إعادة الحجم الأصلي للشخصية",
		set_player_scale_to = "تعيين حجم اللاعب على `${scale}`",
		set_player_scale_no_permission = "اللاعب لا يمتلك الصلاحية اللازمة لتغيير حجم اللاعب.",
		player_is_already_set_to_scale = "${consoleName} معين حجمه بالفعل على `${scale}`.",
		you_are_already_set_to_scale = "أنت معين حجمك بالفعل على `${scale}`.",
		player_is_not_scaled = "${consoleName} ليس لديه حجم.",
		you_are_not_scaled = "أنت لم تتم معالجتك."
	},

	player_stats = {
		hp = "نقاط الصحة",
		armor = "درع",
		toggle_player_stats_no_permissions = "حاول اللاعب تفعيل إحصاءات اللاعب دون الصلاحيات اللازمة.",
		updated_render_range = "تم تحديث نطاق العرض إلى ${renderRange}.",
		turned_player_stats_on = "تم تشغيل إحصاءات اللاعب.",
		turned_player_stats_off = "تم إيقاف إحصاءات اللاعب."
	},

	players = {
		player_left = "خرج اللاعب [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "اضغط ~INPUT_CONTEXT~ لرقصة خلع الملابس.",
		this_pole_is_occupied = "هذا العمود محجوز.",
		stop_dancing = "إيقاف الرقص",
		change_dance = "تغيير الرقص (${animationId})",

		no_model_name_set = "لم يتم تعيين اسم النموذج.",
		invalid_model = "النموذج '${modelName}' غير صالح.",
		pole_dancing_offset = "النموذج '${modelName}': vector3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "البرك تفيض: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "حاول اللاعب استخدام عنصر الأداة غير القانوني.",
		spawn_prop_not_staff = "حاول اللاعب إنشاء أداة ولكنه لم يكن لديه الأذونات اللازمة للقيام بذلك.",
		managing_props_help = "أنت تقوم حالياً بإدارة الأدوات. اقترب من أحد الأدوات واضغط ~INPUT_CONTEXT~ لالتقاطه.",
		total_props = "مجموع الأدوات: ${count}",
		active_props = "الأدوات النشطة: ${count}",
		press_to_pick_up = "[${InteractionKey}] التقاط",
		pick_up = "التقاط",
		picking_up = "جاري الالتقاط",
		press_to_destroy = "[${InteractionKey}] تدمير",
		destroy = "تدمير",
		destroying = "جاري التدمير",
		prop = "أداة",
		model_parameter_missing = "المعلمة `model` غير متوفرة.",
		model_parameter_invalid = "النموذج `${model}` غير صالح.",
		model_parameter_is_not_an_object = "الموديل `${model}` ليس عبارة عن كائن.",
		spawned_prop_non_networked = "تم إنشاء كائن غير متصل بالشبكة باستخدام الموديل `${model}`.",
		spawned_prop_networked = "تم إنشاء كائن متصل بالشبكة باستخدام الموديل `${model}`.",
		spawned_exact_prop = "تم إنشاء نسخة من الكائن بشكل دقيق.",
		failed_to_spawn_prop = "فشل في إنشاء كائن باستخدام الموديل `${model}`.",
		not_able_to_spawn_in_vehicle = "لا يمكنك أن تكون داخل مركبة عند إنشاء كائن.",
		not_able_to_spawn_while_dead = "لا يمكنك أن تكون ميتًا عند إنشاء كائن.",
		not_able_to_spawn_while_moving = "يجب عليك التوقف عن الحركة عند إنشاء الملكية الفكرية.",
		stand_still_to_place_prop = "يجب عليك التوقف عن الحركة لوضع الملكية الفكرية.",
		prop_no_interior = "يمكنك وضع هذه الملكية الفكرية فقط في الخارج.",

		invalid_prop_id = "معرف الملكية الفكرية غير صالح.",
		prop_deleted = "تم حذف الملكية الفكرية بالرقم ${propId}.",

		invalid_wipe_radius = "مجال المسح غير صالح (يتراوح بين 1 و 100).",
		wipe_successful = "تم مسح الممتلكات بنجاح.",
		wipe_props_missing_permissions = "حاول اللاعب مسح الملكيات الفكرية ولكنه لم يكن لديه الأذونات اللازمة للقيام بذلك.",

		placing_prop = "وضع العنصر",
		pickup_prop = "التقاط العنصر",
		setting_up_tire_wall = "إعداد حائط الإطارات",
		destroying_tire_wall = "تدمير حائط الإطارات"
	},

	radio = {
		frequency = "التردد",
		switch = "تحويل",
		radio_turned_off = "تم إيقاف الراديو.",
		radio_removed = "لقد فقدت راديوك.",
		no_radio = "ليس لديك راديو.",
		unable_to_use_radio_while_cuffed = "لا يمكنك استخدام الراديو بينما أنت مقيد.",
		unable_to_use_radio_while_down = "لا يمكنك استخدام الراديو بينما أنت مطروح على الأرض.",
		unable_to_use_radio_as_animal = "لا يمكنك استخدام الراديو بصفتك حيوان.",
		frequency_set_to_streamer = "تم تعيين التردد.",
		frequency_set_to = "تم تعيين التردد على ${frequency}.",
		frequency_already_set_to = "التردد معين بالفعل على ${frequency}.",
		radio_volume_same = "مستوى صوت الراديو معين بالفعل على `${radioVolume}`.",
		radio_volume_reset = "تم إعادة ضبط مستوى صوت الراديو.",
		radio_volume_set = "تم تعيين مستوى صوت الراديو على `${radioVolume}`.",
		radio_volume_current = "مستوى صوت الراديو الحالي هو  `${radioVolume}`.",
		radio_volume_current_default = "حجم الراديو الحالي لديك هو الإفتراضي.",
		radio_sound_effects_same = "حجم تأثيرات الصوت للراديو موضوع بالفعل على `${radioSoundEffects}`.",
		radio_sound_effects_reset = "تم إعادة ضبط حجم تأثيرات صوت الراديو بنجاح.",
		radio_sound_effects_set = "تم تعيين حجم تأثيرات صوت الراديو على `${radioSoundEffects}` بنجاح.",
		radio_sound_effects_current = "حجم تأثيرات صوت الراديو حاليًا موضوع على `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "حجم تأثيرات صوت الراديو حاليًا هو الإفتراضي.",

		radio_missing_last_freq = "لا يوجد لديك راديو للانضمام إلى التردد الأخير.",

		radio_debug_failed = "فشل في تبديل وضع تصحيح الأخطاء في الراديو.",
		radio_debug_off = "تم تبديل وضع تصحيح الأخطاء في الراديو بنجاح والآن متوقف.",
		radio_debug_on = "تم تبديل وضع تصحيح الأخطاء في الراديو بنجاح والآن يعمل.",

		radio_debug_no_permissions = "تم محاولة تشغيل وضع تصحيح الأخطاء في الراديو دون تصريح مناسب.",

		decrypt_frequency = "[${InteractionKey}] فك تشفير التردد",
		decrypting_frequency = "جارٍ فك تشفير التردد",
		decrypting_frequency_failed = "فشل في فك تشفير التردد.",
		decrypter_jammed = "يبدو أن فك التشفير معوق.",
		decrypted_frequency = "يبدو أن التردد حول `${frequency}`.",
		no_frequency_detected = "لم يتم الكشف عن تردد."
	},

	remote_camera = {
		connected_to_camera = "متصل بالكاميرا #${id}",

		camera_distance = "المسافة: ${distance}م",
		out_of_range = "خارج نطاق الإرسال",

		disconnect = "فصل الاتصال",
		view_feed = "عرض المحتوى",

		no_nearby_cameras = "لا يوجد كاميرات قريبة",
		nearby_cameras = "هناك ${amount} كاميرا (كاميرات) قريبة",
		no_nearby_cameras_description = "لا يوجد كاميرات بجوارك.",

		camera_operator = "المُشغِّل: ${fullName}",

		camera_label = "كاميرا #${id}",
		camera_distance = "المسافة: ${distance}م",
		connect = "اتصل",

		something_went_wrong = "حدث خطأ ما.",
		error_out_of_range = "الكاميرا خارج المدى.",
		error_not_found = "الكاميرا غير موجودة."
	},

	reskin = {
		plastic_surgery = "جراحة تجميلية",
		los_santos_police_dept = "إدارة شرطة لوس سانتوس",

		reskin_player_no_permissions = "حاول اللاعب تبديل وضع تصحيح الراديو دون الحصول على الصلاحيات المناسبة.",

		triggered_reskin_for_player = "تم تفعيل تغيير الشكل لـ${consoleName}.",

		triggered_reskin_for_player_logs_title = "تم تفعيل إعادة التصميم للاعب",
		triggered_reskin_for_player_logs_details = "${consoleName} قام بتفعيل إعادة التصميم لـ ${targetConsoleName}.",

		triggered_reskin_for_self_logs_title = "تم تفعيل إعادة التصميم للنفس",
		triggered_reskin_for_self_logs_details = "${consoleName} قام بتفعيل إعادة التصميم لنفسه.",

		no_reskin_packages = "ليس لديك حزم تصميم.",
		redeemed_reskin_package = "تم استبدال حزمة التصميم بنجاح."
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] الجدول",

		table_title = "الطاولة ${tableId}",
		seat = "المقعد ${seatId}",
		close_menu = "إغلاق القائمة",
		loading = "جار التحميل...",

		leave_seat = "مغادرة المقعد",
		view_menu = "عرض القائمة",
		change_seating_position = "تغيير وضع الجلوس (${animationId})",

		sushi = "سوشي",
		drinks = "المشروبات",
		desserts = "الحلويات",

		aka = "أكا",
		kuro = "كورو",
		shiro = "شيرو",
		midori = "ميدوري",
		nigiri = "نيجيري",
		sex_on_the_beach = "جنس على الشاطئ",
		mojito = "موجيتو",
		pina_colada = "بينا كولادا",
		tiramisu = "تيراميسو",
		chocolate_mousse = "موس الشوكولاتة",

		food_replenish = "سوف يتم تعبئة جوعك وعطشك بنسبة ${amount}%.",
		thirst_replenish = "سيتم تعبئة عطشك بنسبة ${amount}%.",
		hunger_replenish = "سيتم تعبئة جوعك بنسبة ${amount}%.",
		diving_drop_boost = "احصل على ${amount} أضعاف الكمية من الأغراض أثناء الغطس لمدة ${duration} دقائق.",
		hunting_drop_boost = "احصل على ${amount} أضعاف الكمية من الأغراض أثناء الصيد لمدة ${duration} دقائق.",
		garbage_drop_boost = "احصل على ${amount} أضعاف الكمية من الأغراض أثناء جمع القمامة لمدة ${duration} دقائق.",
		faster_progress_bars = "قم بتسريع شريط التقدم بنسبة ${amount}x لمدة ${duration} دقائق.",
		weapon_damage_multiplier = "تملك مضاعف ضرر ${amount}x لمدة ${duration} دقائق.",
		local_sales_multiplier = "تملك مضاعف مبيعات ${amount}x للمنتجات المباعة للسكان المحليين.",
		shorter_boosting_cooldown = "تملك فترة تبريد أقصر بمقدار ${amount}x بين القرصنة على التعزيز.",
		swim_faster = "السباحة بسرعة ${amount}x لمدة ${duration} دقائق.",
		walk_faster = "المشي والجري بسرعة ${amount}x لمدة ${duration} دقائق.",
		health_generation = "تملك إعادة توليد الصحة التدريجية لمدة ${duration} دقائق.",
		better_stamina = "القدرة على الجري دون الإنهاء من الطاقة لمدة ${duration} دقائق.",
		more_inventory_space = "يحصل على ${amount} مساحة إضافية للمخزن لمدة ${duration} دقائق.",

		buffs_note = "لن تنشط النعمات إلا عند مغادرتك لمحيط المبنى."
	},

	riot_mode = {
		riot_mode_enabled = "تم تفعيل وضع الشغب بنجاح.",
		riot_mode_disabled = "تم تعطيل وضع الشغب بنجاح. سيستمرون في القتال حتى الموت إذا كانوا يعتديون بالفعل.",
		riot_mode_failed = "فشل تبديل وضع الشغب.",
		riot_mode_missing_perms = "تم محاولة تبديل وضع الشغب بدون الصلاحية المناسبة.",

		riot_mode_enabled_help = "تم تفعيل وضع الشغب.",
		riot_mode_disabled_help = "تم تعطيل وضع الشغب.",

		add_riot_player_no_permissions = "تم محاولة إضافة لاعب إلى قائمة الشغب بدون إذن مناسب.",
		remove_riot_player_no_permissions = "تم محاولة إزالة لاعب من قائمة الشغب بدون إذن مناسب.",

		player_already_in_riot_list = "${consoleName} موجود بالفعل في قائمة الشغب.",
		player_not_in_riot_list = "${consoleName} غير موجود في قائمة الشغب.",
		added_riot_player = " ${consoleName} تمت إضافته إلى قائمة الشغب.",
		failed_to_add_riot_player = "فشل في إضافة ${consoleName} إلى قائمة الشغب.",
		removed_riot_player = "تمت إزالة ${consoleName} من قائمة الشغب.",
		failed_to_remove_riot_player = "فشل في إزالة ${consoleName} من قائمة الشغب."
	},

	safes = {
		how_to_use = "استخدم مفاتيح \"A\" و \"D\" لتدوير الخزنة حتى تجد التركيبة الصحيحة. ابدأ بالضغط على \"D\".",
		lock_open = "مفتوحة",
		lock_closed = "مغلقة"
	},

	scoreboard = {
		player_list = "قائمة اللاعبين",
		players = "اللاعبون",
		total = "المجموع",
		recent_disconnections = "فصل الاتصال الأخير",
		disconnected_player = "اللاعب المنفصل",
		id = "المعرف",
		name = "الاسم",
		identifier = "المُعرف",
		reason = "السبب",
		time_since_disconnection = "الوقت منذ الانفصال",

		you_are_now_metagaming = "أنت الآن تقوم باللعب خارج الدور.",
		you_are_no_longer_metagaming = "أنت لم تعد تقوم باللعب خارج الدور."
	},

	screenshots = {
		screenshot_created = "تم إنشاء لقطة للشاشة بنجاح.",
		screenshot_failed = "تعذر الحصول على لقطة للشاشة من المستخدم المحدد.",
		screencapture_created = "تم إنشاء لقطة للشاشة بنجاح.",
		user_not_found_with_server_id = "لم يتم العثور على المستخدم بالمعرف المعطى.",
		invalid_lifespan_parameter = "القيمة المعطاة لمدة الحياة غير صحيحة.",
		invalid_server_id_parameter = "القيمة المعطاة لمعرف السيرفر غير صحيحة.",
		invalid_duration_parameter = "القيمة المعطاة لمدة الوقت غير صحيحة.",
		invalid_fps_parameter = "القيمة المعطاة لمعدل الإطارات غير صحيحة.",
		missing_server_id_parameter = "معرف السيرفر مفقود.",

		screenshot_error_client_false = "فشل في إنشاء صورة للشاشة.",
		screenshot_error_user_not_found = "المستخدم غير موجود.",
		screenshot_error_user_developer = "المستخدم مطوّر.",
		screenshot_error_no_token = "فشل الحصول على رمز opfw.",
		screenshot_timeout = "انتهى الوقت المحدد لطلب لقطة للشاشة."
	},

	scuba = {
		sunken_ship = "سفينة غارقة",
		gather_item = "جمع العنصر (${distance}م)",

		collected_junk = "تم جمع الزبالة.",
		collected_item = "تم جمع ${itemLabel}.",
		collected_broken_item = "تم جمع ${itemLabel} المكسورة.",

		collected_scuba_item_logs_title = "جمع العنصر الخاص بالغطس",
		collected_scuba_item_logs_details = "جمع ${consoleName} العنصر الخاص بالغطس `${itemName}`."
	},

	scuba_gear = {
		equipping_scuba_tank = "جارٍ تجهيز خزان الغوص",
		equipping_scuba_mask = "جارٍ تجهيز قناع الغوص"
	},

	security_cameras = {
		illegal_security_camera = "محاولة التلاعب بتسجيلات كاميرا الأمان غير الشرعية.",
		saved_security_cameras_to_file = "تم حفظ `${amount}` كاميرا أمان في ملف على الخادم.",
		no_nearby_security_cameras = "لا توجد كاميرات أمان في المنطقة.",
		no_city_ping = "فشل في الاتصال بكاميرات المدينة.",
		offline = "غير متصل",
		camera_list = "قائمة الكاميرات",
		camera = "كاميرا ${cameraId}",
		mission_row_pd = "مركز شرطة ميشن رو",
		pillbox_hospital = "مستشفى بيلبوكس",
		jewelry_store = "متجر مجوهرات روكفورد هيلز",
		principal_bank = "البنك الرئيسي",
		bolingbroke_penitentiary = "سجن بولينجبروك",
		fort_zancudo = "حصن زانكودو",
		del_perro_pier = "رصيف ديل بيرو",
		flywheels_garage = "مرآب فلايويلز",
		sandy_shores_pd = "شرطة ساندي شورز",
		sandy_shores_hospital = "مستشفى ساندي شورز",
		davis_sheriffs_station = "مركز شرطة ديفيس",
		vespucci_pd = "مركز شرطة فيسبوتشي",
		rockford_hills_pd = "مركز شرطة روكفورد هيلز",
		la_mesa_pd = "مركز شرطة لا ميزا",
		beaver_bush_ranger_station = "محطة حراس غابة بيفر بوش",
		cinema = "صالة سينما",
		st_fiacre_hospital = "مستشفى سانت فياكر",
		weazel_news = "ويزل نيوز",
		palomino_fib_facility = "منشأة بالومينو لإدارة التحقيقات الفدرالية",
		bank_1 = "بنك ليجيون سكوير",
		bank_2 = "بنك روكفورد هيلز",
		bank_3 = "بنك آلتا",
		bank_4 = "بنك برتون",
		bank_5 = "بنك بنهام كانيون",
		bank_6 = "بنك جراند سينورا",
		bank_7 = "بنك بيليتو باي",
		grocery_store_1 = "محل بيع البقالة ديفيس إل تي دي للوقود",
		grocery_store_2 = "سوبر ماركت 24/7 ستراوبري",
		grocery_store_3 = "محل الخمور روب في مور ",
		grocery_store_4 = "بنزين ليتل سيول المحدودة",
		grocery_store_5 = "متجر روب للخمور في فيسبوتشي كنالز",
		grocery_store_6 = "متجر روب للخمور في مورنينغوود",
		grocery_store_7 = "بنزين ميرور بارك المحدودة",
		grocery_store_8 = "متجر 24/7 داونتاون فاين وود",
		grocery_store_9 = "متجر 24/7 في جبال تاتافيام",
		grocery_store_10 = "متجر روب للخمور في وادي بانهام",
		grocery_store_11 = "متجر 24/7 في وادي بانهام",
		grocery_store_12 = "بنزين ريشمان جلين المحدودة",
		grocery_store_13 = "متجر 24/7 في تشوماش",
		grocery_store_14 = "متجر 24/7 في هارموني",
		grocery_store_15 = "متجر روب للخمور في جراند سينورا",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "ساندي شورز ليكور أيس",
		grocery_store_18 = "ساندي شورز 24/7",
		grocery_store_19 = "جريبسيد LTD غازولين",
		grocery_store_20 = "جبل تشيلياد 24/7",

		-- NOTE: add-on
		paleto_247 = "باليتو باي 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "أنت لا تقود سيارة حالياً.",
		not_a_self_driving_vehicle = "المركبة التي تقودها لا تدعم القيادة الذاتية.",
		no_waypoint_set = "يرجى تعيين نقطة على الخريطة لتحديد وجهتك.",
		invalid_waypoint_set = "النقطة التي حددتها على الخريطة لا يمكن القيادة الآلية إليها.",
		self_driving_engaged = "تم تشغيل القيادة التلقائية. اضغط ~INPUT_SPRINT~ و ~INPUT_DUCK~ للتحكم في سرعة الرحلة.",
		self_driving_disengaged = "تم إلغاء تشغيل القيادة التلقائية.",
		destination_too_close = "الوجهة المحددة قريبة جداً.",
		self_driving_could_not_be_engaged = "تعذر تشغيل القيادة التلقائية."
	},

	shield = {
		no_weapon_equipped = "يجب أن يكون لديك سلاح مجهز لتجهيز الدرع الواقي.",
		no_shield = "لا يوجد درع واقي في مخزونك."
	},

	shockwaves = {
		create_shockwave_missing_permissions = "حاول اللاعب إنشاء اهتزاز كهربائي ولكن لم يكن لديه الأذونات المطلوبة.",
		shockwave_success = "تم إنشاء زلزال بنجاح.",
		shockwave_failed = "فشل إنشاء الزلزال."
	},

	shooting_ranges = {
		turn_on = "تشغيل ($${cost})",
		turn_off = "إيقاف",
		toggle_through_targets = "تبديل ما بين الأهداف (${modelId})",
		speed = "السرعة (${speedLevel})",
		rotation = "الدوران (${rotationLevel})",
		clear_bullet_impacts = "مسح آثار الطلقات",
		illegal_shooting_spot_value = "محاولة تمرير قيم غير صالحة لأماكن إطلاق النار.",
		illegal_shooting_spot_id = "محاولة تمرير قيم لموقع للإطلاق النار غير موجود.",
		not_enough_cash = "ليس لديك ما يكفي من النقود."
	},

	shrooms = {
		press_to_pick_up_shrooms = "اضغط ~INPUT_CONTEXT~ لالتقاط الفطريات.",
		picking_up_shrooms = "جاري التقاط الفطريات.",
		press_to_sell_shrooms = "اضغط ~INPUT_CONTEXT~ لبيع الفطريات.",
		local_not_interested = "يبدو أن الشخص المحلي غير مهتم في الوقت الحالي.",
		not_interested = "هذا الشخص المحلي لا يبدو مهتماً بفطرياتك.",
		selling_shrooms = "جاري بيع الفطريات.",
		shrooms_not_ripe = "هذه الفطريات لا تبدو ناضجة بعد، جرب تركها لفترة أطول.",
		shroom_id = "فطر-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "اضغط ~INPUT_CONTEXT~ لتبديل المغناطيس.",
		skylift_magnet_turned_off_logs_title = "تم إيقاف مغناطيس السكايلفت",
		skylift_magnet_turned_off_logs_details = "${consoleName} قام بإيقاف مغناطيس السكايلفت.",
		skylift_magnet_turned_on_logs_title = "تم تشغيل مغناطيس السكايلفت",
		skylift_magnet_turned_on_logs_details = "${consoleName} قام بتشغيل مغناطيس السكايلفت.",
		skylift_attached_vehicle_logs_title = "تم إلحاق مركبة بالسكايلفت",
		skylift_attached_vehicle_logs_details = "${consoleName} قام بإلحاق مركبة بالسكايلفت الخاص به."
	},

	smoothies = {
		blend = "خلط",
		close = "اغلاق",

		use_blender = "[${InteractionKey}] استخدم الخلاط",
		blending = "جاري الخلط",

		smoothie_label = "العصير (${flavors})",
		seperator = "و"
	},

	snow = {
		hold_to_pick_up_snowballs = "اضغط ~INPUT_CONTEXT~ لالتقاط كرات الثلج."
	},

	spawn = {
		spawn_now = "الظهور الآن",
		last_position = "الموقع الأخير",

		train_station = "محطة القطار",
		city_bus_station = "محطة الحافلات المدينة",
		paleto_bay_bus_station = "محطة حافلات باليتو باي",

		mission_row_police_station = "مركز شرطة صف Mission",
		sandy_police_station = "مركز شرطة صف Sandy",
		paleto_police_station = "مركز شرطة باليتو باي",

		mount_zonah = "مستشفى جبل زوناه",
		sandy_hospital = "مستشفى ساندي شورز",
		paleto_hospital = "مستشفى باليتو باي",

		battle_royale = "معركة الرويال"
	},

	special_imports = {
		special_imports_blip = "واردات خاصة",

		purchased_vehicle = "تم شراء ${label} بنجاح بقيمة $${price}. تمت إضافة المركبة إلى مرآبك.",

		something_went_wrong = "حدث خطأ ما.",
		not_enough_money = "ليس لديك ما يكفي من المال.",
		invalid_package = "مستوى الحزمة غير صالح. (تحتاج إلى حزمة الإله)",

		dealership_closed = "المعرض مغلق حاليًا.",

		purchased_vehicle_logs_title = "واردات خاصة",
		purchased_vehicle_logs_details = "${consoleName} قام بشراء سيارة واردات خاصة `${modelName}` بسعر ${price} ريال (اللوحة: `${plate}`).",

		marker_label = "${label} | ${price} ريال | المخزون: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] شراء ${label} مقابل ${price} ريال",
		marker_label_purchase_timer = "[${timer} ثانية] اضغط باستمرار على زر ${SeatEjectKey} لشراء ${label} مقابل ${price} ريال",

		vehicle_sold_out = "${label} | لا يوجد مخزون"
	},

	spectating = {
		cannot_spectate_self = "لا يمكنك المشاهدة بنفسك.",
		failed_spectate = "فشل في مشاهدة لاعب.",
		player_not_exist = "اللاعب غير متصل.",
		no_character_loaded = "اللاعب ليس لديه شخصية محملة.",
		not_same_instance = "اللاعب ليس في نفس النسخة الحالية معك.",

		loading_coords = "جاري تحميل الإحداثيات",
		preloading_area = "جاري تحميل المنطقة",
		finding_player = "جاري البحث عن اللاعب",

		invincibility_active = "اللازمية: ~r~نشطة~w~",
		invincibility_inactive_dead = "اللازمية: ~g~غير نشطة~w~ (ميت)",
		invincibility_inactive = "اللازمية: ~g~غير نشطة~w~",

		health_ok = "الصحة: ~g~${health} / ${maxHealth}~w~",
		health_bad = "الصحة: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "الدروع: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "الدروع: ~r~${armor} / ${maxArmor}~w~",

		speed = "السرعة: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "kmh",

		exit_spectate = "اضغط على ~g~${InteractionKey}~w~ للخروج من وضع المشاهدة",

		spectate_logs_title = "بدأ المشاهدة",
		spectate_logs_details = "بدأ ${consoleName} المشاهدة لـ${targetUser}",

		spectate_stopped_logs_title = "توقف الاطلاع",
		spectate_stopped_logs_details = "${consoleName} توقف عن المشاهدة"
	},

	spying = {
		microphone_bug_not_activated = "لم يتم تنشيط هذا الخلل بعد.",
		vehicle_tracker_not_activated = "لم يتم تنشيط هذا المتتبع بعد.",
		microphone_bug_active_with_battery = "يعمل الآن هذا الخلل الميكروفوني. البطارية ${batteryPercentage}% متبقية. يمكنك استخدامه للاستماع إلى أي محادثة قد يلتقطها.<br><br>معرف الجهاز: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "انتهت بطارية هذا الخلل الميكروفوني. سيتحلل الجهاز بالكامل بعد أسبوع.<br><br>معرف الجهاز: ${deviceId}.",
		vehicle_tracker_active_with_battery = "هذا المتتبع للمركبات نشط حاليًا. بطاريته ${batteryPercentage}% . طالما أن المركبة التي تحمل هذا المتتبع متاحة، فأنه سيظهر على الخريطة.<br><br>رقم الجهاز: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "هذا المتتبع للمركبات نفذ شحن بطاريته. سيتلاشى هذا الجهاز الفعلي للمتتبع بعد أسبوع.<br><br>رقم الجهاز: ${deviceId}",
		scanning_for_devices = "البحث عن الأجهزة",
		searching_for_devices = "البحث عن الأجهزة",
		no_nearby_vehicle = "لاتوجد سيارة بالقرب.",
		placing_vehicle_tracker = "جاري تركيب المتتبع للسيارة",
		error_using_vehicle_tracker = "حدث خطأ أثناء محاولة تركيب متتبع السيارة.",
		vehicle_tracker_placed = "تم تركيب متتبع السيارة بنجاح.",
		error_using_microphone_bug = "حدث خطأ أثناء محاولة تركيب ميكروفون الاستماع السري.",
		microphone_bug_placed = "تم تركيب ميكروفون الاستماع السري بنجاح.",
		placing_microphone_bug_on_vehicle = "جاري تركيب ميكروفون الاستماع السري على السيارة",
		placing_microphone_bug_on_player = "جاري تركيب ميكروفون الاستماع السري على اللاعب",
		placing_microphone_bug_on_ground = "وضع جهاز التجسس على الأرض",
		error_using_device_scanner = "حدث خطأ أثناء محاولة استخدام ماسح الجهاز.",
		error_searching_for_devices = "حدث خطأ أثناء محاولة البحث عن الأجهزة.",
		found_devices = "عدد الأجهزة المكتشفة: ${totalDevices}.",
		no_nearby_devices_found = "لا توجد أجهزة قريبة مكتشفة.",
		microphone_bug = "جهاز التجسس الصوتي",
		microphone_bug_destroy = "جهاز التجسس الصوتي\n[${InteractionKey}] تدمير",
		vehicle_tracker = "جهاز تعقب المركبات",
		vehicle_tracker_destroy = "جهاز تعقب المركبات\n[${InteractionKey}] تدمير",
		destroying_device = "تدمير الجهاز",
		tracker_will_appear_on_map = "تم تنشيط هذا المتتبع. سوف يظهر على خريطتك طالما السيارة متاحة ولديها بطارية.",
		spy_ui_info = "الاستماع إلى البث المباشر للميكروفون (# ${deviceId})",
		spy_ui_location = "${time} ، ${location}",
		spy_ui_exit = "اضغط ESC للخروج من البث المباشر للميكروفون",
		spy_ui_connecting = "يتم الآن الاتصال بالبث المباشر للميكروفون (# ${deviceId})",
		spy_ui_connection_failed = "فشل الاتصال بالبث المباشر للميكروفون (# ${deviceId})",
		spy_ui_awaiting_data = "في انتظار البيانات...",
		spy_ui_data_failed = "فشل الحصول على البيانات"
	},

	starter_car = {
		your_vehicle_is_nearby = "سيارتك الخاصة متوقفة بالقرب من هنا",
		would_you_like_directions = "هل ترغب بتوجيهات للوصول لها؟",
		press_to_respond = "اضغط ~INPUT_FRONTEND_ACCEPT~ للموافقة, أو ~INPUT_FRONTEND_CANCEL~ للرفض.",
		follow_the_checkpoints = "اتبع نقاط التفتيش.",

		received_logs_title = "بدأ تشغيل السيارة",
		received_logs_details = "${consoleName} قام ببدأ تشغيل سيارة (الموديل: ${modelName})."
	},

	status = {
		status_reset = "تم إعادة تعيين حالة ${consoleName} بنجاح.",
		status_reset_failed = "لم يتم العثور على أي مستخدم باستخدام معرف الخادم `${serverId}`.",
		reset_status_not_staff = "تمت محاولة إعادة تعيين حالة اللاعب بدون الصلاحيات المطلوبة.",
		status_reset_for_all = "تم إعادة تعيين حالة الجميع بنجاح.",
		status_disabled = "تم تعطيل الحالات (الإجهاد، الجوع والعطش).",
		status_enabled = "تم تمكين الحالات (الإجهاد، الجوع والعطش).",
		failed_to_set_body_armor_level = "فشل تنفيذ الأمر `/set_body_armor` بشكل صحيح.",
		set_body_armor_level_player = "تم تعيين مستوى درع الجسم بنجاح لـ ${consoleName} إلى `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "تم تعيين مستوى درع الجسم للجميع بنجاح إلى `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "تعيين مستوى درع الجسم للشخص ذاته",
		set_body_armor_level_self_details = "${consoleName} قام بتعيين مستوى درع جسمهم إلى `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "تعيين مستوى درع الجسم للجميع",
		set_body_armor_level_everyone_details = "${consoleName} قام بتعيين مستوى درع الجسم للجميع إلى `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "تعيين مستوى درع الجسم للاعب",
		set_body_armor_level_player_details = "${consoleName} قام بتحديث ${targetConsoleName} وتعيين مستوى درع الجسم لهم إلى `${bodyArmorLevel}`.",
		set_body_armor_level_player_not_staff = "حاول اللاعب تعيين مستوى درع لاعب آخر ولكنه لم يكن لديه الصلاحيات المطلوبة للقيام بذلك.",
		set_body_armor_level_self_not_staff = "حاول اللاعب تعيين مستوى درع جسمه ولكن لم يكن لديه الصلاحيات المطلوبة للقيام بذلك.",
		stress_level_warning = "أنت متوتر! اخفض مستواك من التوتر عن طريق التدخين أو اليوغا أو ممارسة أنشطة أخرى."
	},

	streamer_mode = {
		enabled_streamer_mode = "تم تمكين وضع المذيع.",
		disabled_streamer_mode = "تم تعطيل وضع المذيع."
	},

	sync = {
		missing_hour = "لا يوجد ساعة محددة.",
		invalid_hour = "تعديل وقت المنطقة المحلية غير صالح. يجب أن يكون القيمة وقتًا بين 0:00 و 23:59.",
		hour_changed = "تم تغيير الساعة إلى ${hour} الآن.",
		set_hour_not_staff = "حاول تعيين الساعة بدون الصلاحيات المطلوبة.",

		local_time_override_enabled = "تم تعيين الوقت المحلي على ${hour}:${minute}.",
		local_time_override_disabled = "تم إعادة تعيين الوقت المحلي إلى الافتراضي.",
		local_weather_override_enabled = "تم تعيين الطقس المحلي على `${weatherName}`.",
		local_weather_override_disabled = "تم إعادة تعيين الطقس المحلي إلى الافتراضي.",

		missing_minute = "لم يتم توفير الدقيقة.",
		invalid_minute = "الدقيقة `${minute}` غير صالحة. يجب أن يكون القيمة بين 0 و 59.",
		minute_changed = "تم تعيين الدقيقة الآن على `${minute}`.",
		set_minute_not_staff = "حاول تعيين الدقيقة بدون الأذونات المطلوبة.",

		missing_weather = "لم يتم توفير الطقس.",
		invalid_weather = "الطقس '${weatherName}' غير صحيح. قيم أسماء الطقس المقبولة هي CLEAR، EXTRASUNNY، CLOUDS، OVERCAST، RAIN، CLEARING، THUNDER، SMOG، FOGGY، XMAS، SNOWLIGHT و BLIZZARD.",
		weather_changed = "تم تغيير الطقس إلى '${weatherName}' الآن.",
		weather_advanced = "تم تقدم الطقس إلى '${weatherName}'.",
		weather_advance_fail = "فشل في التقدم بالطقس بطريقة طبيعية.",
		set_weather_not_staff = "تمت محاولة تعيين الطقس دون الأذونات اللازمة.",
		advance_weather_not_staff = "تمت محاولة تقدم الطقس دون الأذونات اللازمة.",

		time_frozen = "تم تجميد الوقت الآن.",
		time_unfrozen = "لم يعد الوقت مجمدًا.",
		freeze_time_not_staff = "حاول تجميد الوقت بدون الأذونات المطلوبة.",

		weather_frozen = "تم تجميد الطقس الآن.",
		weather_unfrozen = "لم يعد الطقس مجمدًا.",
		freeze_weather_not_staff = "حاول تجميد الطقس بدون الأذونات المطلوبة.",

		blackout_enabled = "الآن يوجد انقطاع للكهرباء في المدينة.",
		blackout_disabled = "لم يعد هناك انقطاع للكهرباء في المدينة.",
		blackout_not_staff = "حاول تبديل حالة انقطاع الكهرباء بدون الأذونات المطلوبة.",

		weather_changed_title = "تغير الطقس",
		weather_changed_details = "${consoleName} قام بتغيير الطقس إلى `${weatherName}`.",

		weather_changed_success = "تم تغيير الطقس بنجاح إلى `${weatherName}`.",
		weather_change_failed = "فشل تغيير الطقس.",
		weather_parameter_invalid = "معلمة اسم الطقس غير صحيحة.",
		weather_parameter_missing = "معلمة اسم الطقس مفقودة.",

		time_parameters_invalid = "معلمة الساعة أو الدقيقة غير صحيحة.",
		time_currently_transitioning = "الوقت يتحول حاليًا، يرجى الانتظار.",
		time_successfully_transitioned = "تمّ الانتقال بنجاح إلى وقت ${hour}:${minute}.",
		time_successfully_set = "تم تعيين الوقت بنجاح إلى ${hour}:${minute}."
	},

	tablet = {
		you_dont_have_a_tablet = "ليس لديك جهاز لوحي.",

		app_snake = "الأفعى",
		app_tetris = "تتريس",
		app_chess = "الشطرنج",
		app_minesweeper = "تفادي الألغام",
		app_flappy_bird = "فلابي بيرد",
		app_geoguesser = "التخمين الجغرافي",
		app_pdm = "كتالوج PDM",
		app_edm = "كتالوج EDM",
		app_cat_pictures = "صور القطط",

		folder_games = "الألعاب",
		folder_productivity = "الإنتاجية",

		snake_title = "الثعبان",
		snake_description = "استخدم الأسهم للتحرك للأعلى، للأسفل، لليسار ولليمين.",
		snake_start_game = "بدء اللعبة",
		snake_difficulty = "الصعوبة:",
		snake_difficulty_easy = "سهل",
		snake_difficulty_medium = "متوسط",
		snake_difficulty_hard = "صعب",

		snake_game_over = "انتهت اللعبة!",
		snake_over_description = "النتيجة النهائية: ${score}.",
		snake_new_game = "لعبة جديدة",

		tetris_description = "استخدم الأسهم للتحرك لليسار ولليمين.",
		tetris_play = "لعبة جديدة",
		tetris_game_over = "انتهت اللعبة",
		tetris_restart = "إعادة البدء",
		tetris_score = "النتيجة",

		chess_title = "شطرنج",
		chess_your_turn = "دورك",
		chess_ai_turn = "يفكر الذكاء الاصطناعي",
		chess_you_lost = "لقد خسرت",
		chess_you_won = "لقد فزت",
		chess_draw = "تعادل",

		chess_play_as = "العب كـ:",
		chess_play_as_b = "اللون الأسود",
		chess_play_as_w = "اللون الأبيض",
		chess_difficulty = "الصعوبة:",
		chess_difficulty_level = "المستوى ${level}",
		chess_start = "ابدأ اللعبة",

		minesweeper_title = "البحث عن الألغام",
		minesweeper_win = "لقد فزت",
		minesweeper_loose = "لقد خسرت",
		minesweeper_difficulty = "الصعوبة:",
		minesweeper_start = "بدء اللعبة",
		minesweeper_flags_used = "علمات ${used}/${total} مستخدمة",

		flappy_bird_title = "طائر فلابي",
		flappy_bird_score = "النتيجة النهائية:",
		flappy_bird_game_over = "لعبة انتهت",
		flappy_bird_start = "انقر على الشاشة لبدء اللعبة"
	},

	tattoos = {
		tattoos_refreshed = "تم تحديث الوشم.",
		something_went_wrong = "حدث خطأ ما.",
		user_does_not_have_sent_character_loaded = "لم يتم تحميل الشخصية المرسلة للمستخدم.",
		user_has_no_character_loaded = "المستخدم ليس لديه شخصية محملة.",
		user_not_found = "لم يتم العثور على المستخدم المرسل في الخادم.",
		invalid_character_id = "معرف الشخصية المرسل غير صالح.",
		invalid_license_identifier = "معرف الترخيص غير صالح."
	},

	teleporters = {
		enter_mechanic_shop = "دخول ورشة الإصلاح",
		enter_mechanic_shop_interact = "[${InteractionKey}] دخول ورشة الإصلاح",

		exit_mechanic_shop = "مغادرة ورشة الإصلاح",
		exit_mechanic_shop_interact = "[${InteractionKey}] مغادرة ورشة الإصلاح",

		enter_coroner = "دخول الطب الشرعي",
		enter_coroner_interact = "[${InteractionKey}] دخول الطب الشرعي",

		exit_coroner = "الخروج من مركز الطب الشرعي",
		exit_coroner_interact = "[${InteractionKey}] الخروج من مركز الطب الشرعي",

		enter_fib = "الدخول إلى مركز الـFIB",
		enter_fib_interact = "[${InteractionKey}] الدخول إلى مركز الـFIB",

		exit_fib = "الخروج من مركز الـFIB",
		exit_fib_interact = "[${InteractionKey}] الخروج من مركز الـFIB",

		enter_iaa_base = "الدخول إلى مركز الـIAA",
		enter_iaa_base_interact = "[${InteractionKey}] الدخول إلى مركز الـIAA",

		exit_iaa_base = "الخروج من مركز الـIAA",
		exit_iaa_base_interact = "[${InteractionKey}] الخروج من مركز الـIAA",

		enter_server_room = "الدخول إلى غرفة الخادم",
		enter_server_room_interact = "[${InteractionKey}] الدخول إلى غرفة الخادم",

		exit_server_room = "اخرج من غرفة السيرفر",
		exit_server_room_interact = "[${InteractionKey}] اخرج من غرفة السيرفر",

		enter_warehouse_shop = "ادخل المستودع",
		enter_warehouse_shop_interact = "[${InteractionKey}] ادخل المستودع",

		exit_warehouse_shop = "اخرج من المستودع",
		exit_warehouse_shop_interact = "[${InteractionKey}] اخرج من المستودع",

		enter_office_shop = "ادخل المكتب",
		enter_office_shop_interact = "[${InteractionKey}] ادخل المكتب",

		exit_office_shop = "اخرج من المكتب",
		exit_office_shop_interact = "[${InteractionKey}] اخرج من المكتب",

		enter_cocaine_lab = "ادخل معمل الكوكايين",
		enter_cocaine_lab_interact = "[${InteractionKey}] ادخل معمل الكوكايين",

		exit_cocaine_lab = "اخرج من معمل الكوكايين",
		exit_cocaine_lab_interact = "[${InteractionKey}] اخرج من معمل الكوكايين",

		enter_mayor_office = "ادخل مكتب العمدة",
		enter_mayor_office_interact = "[${InteractionKey}] ادخل مكتب العمدة",

		exit_mayor_office = "اخرج من مكتب العمدة",
		exit_mayor_office_interact = "[${InteractionKey}] اخرج من مكتب العمدة",

		enter_exclusive_dealership = "ادخل معرض السيارات الحصري",
		enter_exclusive_dealership_interact = "[${InteractionKey}] الدخول إلى معرض السيارات الحصري",

		exit_exclusive_dealership = "الخروج من معرض السيارات الحصري",
		exit_exclusive_dealership_interact = "[${InteractionKey}] الخروج من معرض السيارات الحصري",

		enter_casino = "الدخول إلى الكازينو",
		enter_casino_interact = "[${InteractionKey}] الدخول إلى الكازينو",

		exit_casino = "الخروج من الكازينو",
		exit_casino_interact = "[${InteractionKey}] الخروج من الكازينو",

		enter_roof = "الدخول إلى السطح",
		enter_roof_interact = "[${InteractionKey}] الدخول إلى السطح",

		exit_roof = "الخروج من السطح",
		exit_roof_interact = "[${InteractionKey}] الخروج من السطح",

		enter_penthouse = "دخول الشقة الفاخرة",
		enter_penthouse_interact = "[${InteractionKey}] دخول الشقة الفاخرة",

		exit_penthouse = "الخروج من الشقة الفاخرة",
		exit_penthouse_interact = "[${InteractionKey}] الخروج من الشقة الفاخرة",

		enter_parking_garage = "دخول موقف السيارات",
		enter_parking_garage_interact = "[${InteractionKey}] دخول موقف السيارات",

		exit_parking_garage = "الخروج من موقف السيارات",
		exit_parking_garage_interact = "[${InteractionKey}] الخروج من موقف السيارات",

		enter_surgery = "دخول غرفة الجراحة",
		enter_surgery_interact = "[${InteractionKey}] دخول غرفة العمليات",

		exit_surgery = "خروج من غرفة العمليات",
		exit_surgery_interact = "[${InteractionKey}] خروج من غرفة العمليات",

		enter_icu = "دخول وحدة العناية المركزة",
		enter_icu_interact = "[${InteractionKey}] دخول وحدة العناية المركزة",

		exit_icu = "خروج من وحدة العناية المركزة",
		exit_icu_interact = "[${InteractionKey}] خروج من وحدة العناية المركزة",

		enter_underground_tunnel = "دخول النفق السفلي",
		enter_underground_tunnel_interact = "[${InteractionKey}] دخول النفق السفلي",

		exit_underground_tunnel = "خروج من النفق السفلي",
		exit_underground_tunnel_interact = "[${InteractionKey}] خروج من النفق السفلي",

		use_secret_tunnel_exit = "استخدم المخرج السري",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] استخدم المخرج السري",

		enter_hangar = "ادخل المستودع",
		enter_hangar_interact = "[${InteractionKey}] ادخل المستودع",

		exit_hangar = "اخرج من المستودع",
		exit_hangar_interact = "[${InteractionKey}] اخرج من المستودع",

		enter_loading_bay = "ادخل خليج التحميل",
		enter_loading_bay_interact = "[${InteractionKey}] ادخل خليج التحميل",

		exit_loading_bay = "اخرج من خليج التحميل",
		exit_loading_bay_interact = "[${InteractionKey}] اخرج من خليج التحميل"
	},

	test_server = {
		you_are_not_in_a_vehicle = "أنت لست في مركبة.",
		you_are_in_a_vehicle = "أنت حالياً في مركبة.",
		invalid_vehicle_preset = "ضبط المركبة غير صالح.",
		fully_upgraded = "تم تحديث المركبة بنجاح.",
		applied_preset = "تم تطبيق الضبط بنجاح.",
		spawned_car = "تمت إنشاء مركبة `${modelName}`.",
		just_spawned_a_car = "لقد قمت للتو بإنشاء مركبة، انتظر ${time} قبل إنشاء أخرى."
	},

	time_scale = {
		invalid_time_scale = "قيمة ${timeScale} ليست قيمة تناسب مقياس الزمن.",
		set_time_scale_missing_permissions = "حاول اللاعب تعيين مقياس الزمن ولكن ليس لديه الأذونات اللازمة.",
		time_scale_set_to = "تم تعيين مقياس الوقت على ${timeScale}.",
		time_scale_disabled = "تم تعطيل إعادة تعيين مقياس الوقت.",
		time_scale_already_set_to = "المقياس الزمني معين بالفعل على ${timeScale}.",
		time_scale_is_already_disabled = "تم تعطيل إعادة تعيين مقياس الوقت بالفعل."
	},

	titanic = {
		created_titanic = "تم إنشاء الـ Titanic بوقت غرق يبلغ ${sinkTime} دقائق.",
		failed_to_create_titanic = "فشل في إنشاء الـ Titanic.",
		create_titanic_missing_permissions = "حاول اللاعب إنشاء الـ Titanic ولكنه لم يكن لديه الأذونات المطلوبة."
	},

	top_down = {
		not_in_valid_vehicle = "أنت لست في مركبة صالحة (فقط سيارات / دراجات نارية).",
		top_down_on = "تم تنشيط عرض الأعلى للأسفل.",
		top_down_off = "تم إيقاف عرض الأعلى للأسفل."
	},

	trackers = {
		error_finding_tracker = "حدث خطأ أثناء البحث عن معقبك.",
		tracker_visible = "تم جعل المعقب المرئي الآن لك.",
		tracker_hidden = "تم إخفاء المعقب الخاص بك الآن.",
		tracker = "معقب",
		trackers = "معاقبة",
		stockade_robbery_tracker = "شاحنة ستوكيد (10-78)",
		tracked_vehicle = "المركبة المعقبة (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "سيتم الآن وضع المُتتبعين داخل فئاتهم على الخريطة.",
		trackers_split = "سيتم الآن تقسيم المُتتبعين إلى بلوب فردي.",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Ranger",
		department_medical = "EMS",
		department_doctor = "طبيب",
		department_bcfd = "BCFD",

		department_police_undercover = "شرطة سرية",

		department_police_training = "تدريب الشرطة",
		department_ems_training = "تدريب EMS"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] الوصول إلى المتجر",

		buy_pack = "شراء حزمة ${packName}",
		store_title = "متجر البطاقات",

		successfully_bought_pack = "تم شراء حزمة التداول بنجاح",
		failed_buy_pack = "فشل في شراء الحزمة. هل لديك ما يكفي من المال؟",

		just_showed_trading_cards = "لقد أظهرت بطاقة تداول. يرجى الانتظار قليلا.",

		unpack_successfull = "تم فتح هذه الورقة بنجاح.",
		failed_unpack = "فشل فتح هذه الورقة.",
		failed_unpack_no_cards = "فشل فتح هذه الورقة. لا توجد بطاقات تداول متاحة.",

		edition = "النسخة",
		rarity = "ندرة",

		rarity_bronze = "برونزية",
		rarity_silver = "فضية",
		rarity_gold = "ذهبية",
		rarity_holo = "هولو",
		rarity_foil = "فويل",
		rarity_relic = "رواية",
		rarity_headache = "صداع",
		rarity_missprint = "خطأ طباعي",
		rarity_ethereal = "غيمة",
		rarity_promotional = "دعائية",

		rarity_custom = "مخصصة",

		press_to_access_buyback = "اضغط ~INPUT_CONTEXT~ للوصول إلى إرجاع البطاقات.",
		buyback_title = "شراء البطاقات التجارية مرة أخرى",
		close_menu = "أغلق القائمة",
		sell_cards = "بيع جميع بطاقات الندرة ${rarity}",

		failed_selling = "فشل بيع البطاقات.",
		no_cards_of_type = "ليس لديك أي بطاقات ${rarity}.",
		successfully_sold_cards = "تم بيع ${amount} بطاقة(بطاقات) ${rarity} بمبلغ $${earned}.",

		studio_blip = "945 ستديوهات"
	},

	training = {
		on_team_attackers = "أنت مهاجم!\nالوقت المتبقي: ${time}",
		on_team_defenders = "أنت مدافع!\nالوقت المتبقي: ${time}",
		attackers = "المهاجمين:",
		defenders = "الدفاع:",
		waiting_for_players = "في انتظار المزيد من اللاعبين.يجب أن يكون هناك على الأقل لاعب واحد في كل فريق",
		none = "غير متاح",
		match_starting_in = "سيبدأ المباراة في غضون ${seconds} ثواني.",
		loading_match = "انتظار اللاعبين للاشتراك. سيبدأ المواجهة في غضون ${seconds} ثواني.",
		attackers_help_text = "اقتل جميع المدافعين قبل انتهاء وقت الانتظار لتفوز!",
		defenders_help_text = "اقتل جميع المهاجمين أو انتظر حتى ينتهي وقت الاستراحة لتفوز!",
		attacker = "الهاجم",
		defender = "الدافع",
		attackers_won = "انتصر الهجّاة!",
		defenders_won = "انتصر الدُفّاع!"
	},

	trains = {
		spawn_train_missing_permissions = "حاول اللاعب إنشاء قطار ولكنه لم يمتلك الصلاحيات اللازمة للقيام بذلك.",

		invalid_track_id = "مُعرف المسار الذي تم إدخاله غير صحيح.",
		spawned_train_on_track = "تم إنشاء قطار على المسار ${trackId}.",
		failed_to_spawn_train = "فشل إنشاء القطار."
	},

	traps = {
		rearming = "إعادة التحميل",
		press_to_rearm = "[${InteractionKey}] إعادة التحميل",
		rearm = "إعادة التحميل",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "لا يوجد خريطة كنز بمستوى ${mapTier}.",
		treasure_map_does_not_have_piece = "لا تحتوي خريطة الكنز بمستوى ${mapTier} على الجزء ${pieceNumber}.",
		spawn_map_piece_missing_permissions = "حاول اللاعب إنشاء جزء من الخريطة بدون الأذونات المناسبة.",

		sketchy_map = "خريطة مريبة",
		worn_map = "خريطة مهترئة",
		fancy_map = "خريطة فنية",
		exquisite_map = "خريطة رائعة",

		map_piece_tier_1_description = "يبدو أن هناك كتابة تحت قطعة سيجار سيئة السمعة.",
		map_piece_tier_2_description = "قطعة صغيرة من الخريطة تبدو بمظهرها الحقيقي. حتى لو كانت الحبر يجري بعض الشيء.",
		map_piece_tier_3_description = "يتلألأ هذا الجزء الفوري من الخريطة قليلاً تحت أشعة الشمس.",
		map_piece_tier_4_description = "تبدو هذه القطعة الجميلة والمعقدة من الخريطة كأنها تنبعث رائحة المال منها.",

		map_tier_1_description = "يبدو وكأنه رسم يدوي على منديل. تجاهل البقعة الغريبة.",
		map_tier_2_description = "تبدو هذه الخريطة القديمة نوعًا ما ولكنها تبدو كأنها تؤدي إلى شيء ممتاز.",
		map_tier_3_description = "خريطة لطيفة جدًا ومتلألئة مع ختم \"100٪ حقيقية\" في الزاوية اليمنى السفلى.",
		map_tier_4_description = "تبدو هذه الخريطة أكثر تكلفة من معظم الكنوز. هيا لنذهب!!!!",

		press_to_combine_pieces = "اضغط ~INPUT_CONTEXT~ لدمج قطع الخريطة ${mapTier}.",

		treasure_map = "خريطة الكنز (المستوى ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "مستوى مقياس الأوشن الخاص بالكثافة مضبوط مسبقاً على `${intensity}`.",
		no_ocean_scaler_intensity_set = "لا يوجد مستوى مقياس الأوشن الخاص بالكثافة مضبوط حالياً.",
		set_ocean_scaler_to = "ضبط مقياس الأوشن الخاص بكثافة `${intensity}`.",
		reset_ocean_scaler = "إعادة ضبط مقياس الأوشن الخاص بالكثافة.",
		set_ocean_scaler_no_permission = "اللاعب لا يملك الصلاحية المطلوبة لضبط مقياس الأوشن الخاص بالكثافة."
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] اشترِ ${label} مقابل $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] اشترِ ${label} مقابل $${price} (-${discount}%)",
		purchase_label_sale_far = "تنزيلات | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%)",

		failed_vehicle_spawn = "تعذر إنشاء المركبة.",
		not_enough_funds = "ليست لديك الأموال الكافية لإتمام الشراء.",
		area_not_clear = "منطقة الظهور غير واضحة.",
		something_went_wrong = "حدث خطأ أثناء محاولة شراء السيارة.",

		purchased_vehicle = "تم شراء ${label} بقيمة $${price}.",

		tuner_shop_blip = "تونرزشوب منتصف الليل",

		log_title = "شراء منتجات من تونرزشوب",
		log_description = "تم شراء `${label}` بقيمة $${price}.",
		log_description_discount = "تم شراء `${label}` بقيمة $${price} بخصم ${discount}%."
	},

	vape = {
		press_to_use = "اضغط ~INPUT_CONTEXT~ لإستخدام السجائر. اضغط ~INPUT_FRONTEND_CANCEL~ لوضع السجائر جانباً."
	},

	vdm = {
		failed_vdm = "فشل في VDM اللاعب.",
		invalid_entity = "تعذر العثور على المركبة أو السائق.",
		invalid_network_id = "معرف الشبكة غير صالح.",
		invalid_target = "هدف غير صالح.",
		cleared_vdm = "تم مسح ${amount} من أهداف vdm.",
		failed_vdm_clear = "فشل في مسح أهداف vdm.",
		added_vdm_target = "تم استهداف NPC بمعرف الشبكة ${networkId} الآن ${target}.",

		vdm_no_permissions = "حاول اللاعب تشغيل أمر vdm دون إذن مناسب."
	},

	vending_machines = {
		vending_coffee = "اضغط ~INPUT_CONTEXT~ لشراء قهوة. التكلفة هي $${cost}.",
		vending_coffee_not_enough_cash = "ليس لديك ما يكفي من النقود لشراء قهوة. يبلغ سعرها $$ {cost}.",
		vending_snack = "اضغط ~INPUT_CONTEXT~ لشراء وجبة خفيفة. يبلغ سعرها $$ {cost}.",
		vending_snack_not_enough_cash = "ليس لديك ما يكفي من النقود لشراء وجبة خفيفة. يبلغ سعرها $$ {cost}.",
		vending_soda = "اضغط ~INPUT_CONTEXT~ لشراء مشروب غازي. يبلغ سعرها $$ {cost}.",
		vending_soda_not_enough_cash = "ليس لديك ما يكفي من النقود لشراء مشروب غازي. يبلغ سعرها $$ {cost}.",
		vending_water = "اضغط ~INPUT_CONTEXT~ لشراء زجاجة ماء. يبلغ سعرها $$ {cost}.",
		vending_water_not_enough_cash = "لا يوجد لديك ما يكفي من النقود لشراء زجاجة ماء. يبلغ سعرها ${cost} دولار.",
		vending_machine_damaged = "هذا الجهاز تم تلفه. يرجى التحقق مرة أخرى في وقت لاحق.",
		vending_water_cooler = "اضغط ~INPUT_CONTEXT~ للحصول على كوب من الماء.",

		refill_bottle = "اضغط ~INPUT_CONTEXT~ لإعادة ملء الزجاجة.",
		refilling_bottle = "جارٍ إعادة ملء الزجاجة"
	},

	voice = {
		illegal_radio_frequency = "محاولة الوصول إلى ترددات الراديو غير القانونية.",
		voice_chat = "الدردشة الصوتية",
		voice_server_connected = "تم الاتصال بخادم الصوت. يتم إرسال بيانات الصوت إلى اللاعبين المعنيين.",
		voice_server_disconnected = "تم قطع الاتصال من السيرفر الصوتي، يتم الان الانتظار للاتصال مجدداً.",
		voice_muted = "تم كتم الدردشة الصوتية.",
		voice_unmuted = "تم إلغاء كتم الدردشة الصوتية.",
		broadcasting_voice_to_players = "يتم البث إلى اللاعبين:",
		listening_to_virtual_players = "يتم الاستماع إلى اللاعبين الافتراضيين:",
		radio = "الراديو",
		phone = "الهاتف",
		muted_players = "اللاعبين المكتوم عليهم:",
		connected = "تم الاتصال: ${connected}",
		muted = "مكتوم: ${muted}",
		boolean_true = "صحيح",
		boolean_false = "خطأ",
		target_channel = "القناة المستهدفة: ${targetChannel}",
		actual_channel = "القناة الفعلية: ${actualChannel}",
		target_radius = "نطاق الهدف: ${targetRadius}",
		actual_radius = "النطاق الفعلي: ${actualRadius}",

		invalid_server_id = "معرف الخادم غير صالح.",
		failed_toggle_listen = "فشل تبديل حالة الاستماع.",
		listeners = "المستمعون:",
		listening_to = "الاستماع إلى:",

		failed_toggle_muted = "فشل تبديل حالة الكتم.",
		toggle_muted_on = "اصبح ${consoleName} مكتومًا من الدردشة الصوتية.",
		toggle_muted_off = "أصبح ${consoleName} غير مكتوم من الدردشة الصوتية.",

		affected_by_jammer = "يبدو أن جهاز الراديو الخاص بك متأثر بجهاز العزل أو نوع منها.",

		listening_missing_permissions = "حاول اللاعب تبديل حالة الاستماع الخاصة بهم ولكنهم لم يمتلكوا الأذونات المطلوبة.",
		voice_mute_missing_permissions = "حاول اللاعب تبديل حالة الكتم الخاصة بلاعب آخر ولكنهم لم يمتلكوا الأذونات المطلوبة."
	},

	washrooms = {
		use_sink = "[${InteractionKey}] استخدام بالوعة",
		using_sink = "يتم استخدام البالوعة"
	},

	weed_field = {
		pick_weed = "اضغط ~INPUT_CONTEXT~ للحصول على الحشيش.",
		picking_weed = "جاري حصد الحشيش"
	},

	wizard = {
		action_missing_permissions = "تمت محاولة جعل لاعب يفعل إجراء الساحر دون الصلاحيات اللازمة.",
		action_radius_missing_permissions = "تمت محاولة جعل اللاعبين داخل نطاق حد معين يقومون بإجراءات ساحرة دون الصلاحيات اللازمة.",
		run_as_missing_permissions = "تمت محاولة تشغيل الأمر كلاعب آخر بدون الصلاحيات اللازمة.",

		menu_title = "الساحر",

		ragdoll_player = "Ragdoll",
		ragdoll_player_force = "Ragdoll (قوة)",
		punch_player = "اللكمة القوية",
		taze_player = "Tase",
		exit_vehicle_player = "الخروج من المركبة",
		yank_steering_wheel_player = "سحب عجلة القيادة",
		flashbang_player = "قنبلة وميض",
		paper_bag_player = "كيس ورقي",
		ignite_player = "إشعال النار",
		explode_player = "تفجير",
		quietly_revive_player = "انقاذ بصمت",
		play_sound = "تشغيل الصوت",

		play_sound_knocking = "طرق الباب",
		play_sound_discord = "ديسكورد",
		play_sound_phone_call = "مكالمة هاتفية",
		play_sound_message = "رسالة",
		play_sound_twitter = "تويتر",

		invalid_radius = "نصف قطر غير صالح",
		invalid_server_id = "معرف الخادم غير صالح.",

		ragdoll_failed = "فشلت في جعل اللاعب يسقط ميتاً.",
		ragdoll_success = "تم إجبار ${consoleName} على السقوط بنجاح.",

		punch_success = "تم إجبار ${consoleName} على اللكم بنجاح.",
		punch_failed = "فشل إجبار اللاعب على اللكم.",

		explode_success = "تم إجبار ${consoleName} على الانفجار بنجاح.",
		explode_failed = "فشل إجبار اللاعب على الانفجار.",

		ignite_success = "تم إشعال النار في ${consoleName} بنجاح.",
		ignite_failed = "فشل إشعال النار في اللاعب.",

		punch_radius_failed = "فشل إجبار اللاعبين ضمن نطاق معين على اللكم.",
		punch_radius_success = "تم إجبار اللاعبين ضمن نطاق ${radius} على اللكم بنجاح.",

		ragdoll_radius_success = "تم جعل لاعبين في نطاق ${radius} طور الرجل العاجز بنجاح.",
		ragdoll_radius_failed = "فشل في جعل لاعبين في نطاق طور الرجل العاجز.",

		flashbang_success = "تم تفجير ضوء القنبلة الصوتية بنجاح على ${consoleName}.",
		flashbang_failed = "فشل في تفجير ضوء القنبلة الصوتية على اللاعب.",

		flashbang_radius_success = "تم تفجير ضوء القنبلة الصوتية بنجاح على لاعبين في نطاق ${radius}.",
		flashbang_radius_failed = "فشل في تفجير ضوء القنبلة الصوتية على لاعبين في النطاق.",

		missing_command = "الأمر المطلوب مفقود.",
		run_as_success = "تم تشغيل الأمر بنجاح ك ${consoleName}.",
		run_as_failed = "فشل تشغيل الأمر كـ ${consoleName}.",

		no_nearby_vehicle = "لا يوجد مركبة قريبة.",
		reversing_failed = "فشل الرجوع للخلف.",
		driving_forwards_failed = "فشل القيادة للأمام.",
		reversing_success = "تم بنجاح الرجوع للخلف.",
		driving_forwards_success = "تم بنجاح القيادة للأمام.",

		vehicle_temp_action_missing_permissions = "حاول اللاعب تشغيل إجراء مؤقت للمركبة بدون الأذونات المناسبة."
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] سجادة اليوغا",
		yoga_mat = "حصيرة اليوغا",
		press_to_stop_yoga = "اضغط ~INPUT_CONTEXT~ للتوقف عن ممارسة اليوغا."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] ابقِ مستمرًا في نهب الزومبي",
		press_to_loot_zombie = "[${InteractionKey}] نهب الزومبي",
		looting_zombie = "نهب الزومبي",
		zombie_looting_injection = "نهب زومبي مفرط! (تم تجاوز مهلة الخادم ، على الأرجح بواسطة محقنة للقيام بذلك.)",

		zombie_trip_limit = "تشعر بالتعب للغاية للمتابعة في نهب الزومبي. جرب مرة أخرى غدًا."
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "أنت في منطقة 'لا توجد بها حشود من المشاة'.",
		not_in_no_ped_population_area = "أنت لست في منطقة 'لا يوجد بها مشاة'."
	},

	explosions = {
		invalid_explosion_type = "نوع الانفجار `${explosionType}` غير صالح.",
		invalid_camera_shake = "هزة الكاميرا `${cameraShake}` غير صالحة.",
		invalid_damage_scale = "نسبة الأضرار `${damageScale}` غير صالحة.",
		created_explosion = "تم إنشاء انفجار من نوع `${explosionTypeName}` بمعدل أضرار `${damageScale}` وهزة كاميرا `${cameraShake}`.",
		create_explosion_not_developer = "حاول اللاعب إنشاء انفجار ولكنه ليس مطورًا."
	},

	functions = {
		year = "سنة",
		years = "سنوات",
		month = "شهر",
		months = "أشهر",
		day = "يوم",
		days = "أيام",
		hour = "ساعة",
		hours = "ساعات",
		minute = "دقيقة",
		minutes = "دقائق",
		second = "ثانية",
		seconds = "ثواني",
		just_now = "الآن للتو",
		unknown = "غير معروف",
		flipped_vehicle_logs_title = "انقلاب المركبة",
		flipped_vehicle_logs_details = "${consoleName} قلب مركبة.",
		failed_to_find_ground = "فشل في العثور على الأرض، جرى نقلك إلى أقرب طريق.",

		time_in = "في ${time} ${unit}",
		time_ago = "منذ ${time} ${unit}"
	},

	states = {
		invalid_network_id = "رقم شبكة غير صالح.",
		debug_states_failed = "فشل تصحيح حالات هذه الكائنات.",
		no_states = "ليس لدى هذا الكائن أي حالات محددة.",
		printed_states = "تمت طباعة حالات الكائن ${networkId}.",

		get_entity_states_missing_permissions = "حاول اللاعب الحصول على حالات كائنات محددة بدون الأذونات المناسبة."
	},

	-- illegal/*
	corner = {
		corner_ped = "زاوية البائع - ${cornerPedDistance} متر (${cornerPedTimer})",
		corner_ped_title = "زاوية البائع",
		corner_ped_already_active = "يوجد بالفعل بائع في الزاوية ينتظرك.",
		no_node_found = "لم يتم العثور على عقد قريب للمشاة.",
		no_sell_area = "أنت لست في منطقة تهتم المشاة بالمخدرات.",
		inside_areas_none = "مناطق الداخل: لا شيء",
		inside_areas = "مناطق الداخل: ${insideAreas}",
		not_able_to_sell = "لا تستطيع البيع الآن، تجول قليلاً قبل المحاولة مرة أخرى."
	},

	stockade = {
		dispatch = "[الإنذار]",
		status_1a = "10-78، تم الضغط على زر الطوارئ في ستوكيد ويتطلب تعزيز في ${streetName}.",
		status_1b = "10-78، تم الضغط على زر الطوارئ في ستوكيد ويتطلب تعزيز في ${streetName} بالقرب من ${crossingRoad}.",
		status_2a = "10-78، نظام الإنذار قد اكتشف أن سيارة الستوكيد يتم التلاعب بأبوابها وهي تطلب الدعم في ${streetName}.",
		status_2b = "10-78، نظام الإنذار قد اكتشف أن سيارة الستوكيد يتم التلاعب بأبوابها وهي تطلب الدعم في ${streetName} بالقرب من ${crossingRoad}.",
		status_3a = "10-78، نظام الإنذار قد اكتشف أن سيارة الستوكيد تم فتح أبوابها بطريقة غير صحيحة وهي تطلب الدعم في ${streetName}.",
		status_3b = "10-78، نظام الإنذار قد اكتشف أن سيارة الستوكيد تم فتح أبوابها بطريقة غير صحيحة وهي تطلب الدعم في ${streetName} بالقرب من ${crossingRoad}.",
		grab_valuables = "[${InteractionKey}] التقاط الأشياء الثمينة (${valuablesRemaining} متبقي)",
		grabbing_valuables = "جاري التقاط الأشياء الثمينة",
		use_advanced_lockpick = "[${InteractionKey}] استخدام قفل متطور",
		lockpicking_stockade = "فتح الأقفال للستوكيد",

		status_blip = "ستوكيد",

		stockade_reward_logs_title = "مكافأة الستوكيد",
		cash_pickup_logs_details = "${consoleName} قام باستلام $$ {cashAmount} نقداً.",
		item_pickup_logs_details = "${consoleName} قام باستلام 1x ${itemName}.",

		reward_diamonds = "تم الحصول على ماسة.",
		reward_gold_bar = "لقد قمت بالاستيلاء على قضيب ذهبي.",
		reward_cash = "لقد قمت بالاستيلاء على بعض النقود.",
		reward_keycard_red = "لقد قمت بالاستيلاء على بطاقة مفتاح حمراء.",

		stockade_logs_title = "تم تفعيل السيارة المدرعة",
		stockade_logs_details = "${consoleName} قام بتفعيل السيارة المدرعة."
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "لا يوجد واجهات مركزة.",
		interfaces_focused = "الواجهات المركزة:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "بدء التوصيل.",
		press_to_start_delivery = "اضغط على ~g~${InteractionKey}~w~ لبدء التوصيل.",
		already_in_delivery = "لديك بالفعل توصيل نشط.",
		not_bean_machine_employee = "يجب أن تكون موظفًا في بين ماشين لتبدأ التوصيل.",
		finish_delivery = "انهِ الطلب.",
		press_to_finish_delivery = "اضغط على ~g~${InteractionKey} ~w~لإنهاء التوصيل.",
		started_delivery = "بدأت في التوصيل إلى ${deliveryName}. تم الإشارة إلى الموقع على الخريطة الخاصة بك.",
		finished_delivery = "تم الانتهاء من التوصيل إلى ${deliveryName}. تلقيت $${deliveryPrice} و $${distanceBonus} كتيب، بما يصل إلى $${totalPrice}.",
		error_finishing_delivery = "حدث خطأ أثناء محاولة إنهاء التوصيل الخاص بك.",
		finished_delivery_title = "انتهاء توصيل بين ماكينة القهوة",
		finished_delivery_details = "${consoleName} أنهى توصيل بين ماكينة القهوة وحصل على مبلغ ${deliveryPrice} دولار ومبلغ ${distanceBonus} دولار كنصيحة، بإجمالي ${totalPrice}.",
		delivery_blip = "توصيل بين ماكينة القهوة"
	},

	burger_shot = {
		start_delivery = "بدء توصيل.",
		press_to_start_delivery = "اضغط ~g~${InteractionKey} ~w~لبدء التوصيل.",
		already_in_delivery = "لديك توصيل فعال بالفعل.",
		not_burger_shot_employee = "يجب أن تكون موظفًا في مطعم برجر شوت لبدء توصيل.",
		finish_delivery = "أكمل التسليم.",
		press_to_finish_delivery = "اضغط ~g~${InteractionKey} ~w~لإنهاء التسليم.",
		started_delivery = "بدأ التوصيل إلى ${deliveryName}. تم وضع مكان التسليم على الخريطة.",
		finished_delivery = "تم إكمال التوصيل إلى ${deliveryName}. لقد حصلت على $${deliveryPrice} و $${distanceBonus} كنصيحة، بإجمالي $${totalPrice}.",
		error_finishing_delivery = "حدث خطأ أثناء محاولة إنهاء التسليم.",
		finished_delivery_title = "تم تسليم الوجبات من برجر شوت",
		finished_delivery_details = "${consoleName} قام بتسليم الطلب من برغر شوت وحصل على ${deliveryPrice}$ بالإضافة إلى ${distanceBonus}$ للبقشيش، بإجمالي ${totalPrice}$.",
		delivery_blip = "توصيل طعام برغر شوت"
	},

	duty = {
		toggle_duty_status_no_permissions = "لقد حاول اللاعب تفعيل حالة العمل دون الحصول على الأذونات المناسبة.",

		duty_status_on = "تم التفعيل بنجاح.",
		duty_status_off = "تم الإلغاء بنجاح.",
		duty_status_failed = "تعذر تغيير حالة العمل.",

		training_status_on = "تم تفعيل وضع التدريب بنجاح.",
		training_status_off = "تم تبديل وضع التدريب بنجاح.",
		training_status_failed = "فشل في تبديل وضع التدريب.",

		emergency_call = "يوجد مكالمة طوارئ. اضغط على ENTER للإجابة عليها.",

		toggled_operator_status_on = "تم تبديل وضع حالة المشغل بنجاح.",
		toggled_operator_status_off = "تم تبديل وضع حالة المشغل بنجاح."
	},

	job_center = {
		life_invader = "لايف إنفيدر",
		life_invader_blip = "تقديم طلب وظيفة",
		ui_close_menu = "إغلاق القائمة",
		press_to_browse_jobs = "اضغط على ~INPUT_CONTEXT~ لتصفح الوظائف.",
		change_job = "تبديل الوظيفة: ${jobName}",
		job_unemployed = "غير موظف",
		job_transportation = "سائق شاحنة",
		job_taxi = "سائق تاكسي",
		job_journalist = "صحفي",
		job_government = "جامع النفايات",
		job_mechanic = "سائق سطحة",
		job_delivery = "سائق توصيل",
		changed_job_already_set_to_job = "لقد تم تعيين وظيفتك بالفعل على ${jobName}.",
		changed_job_success = "تم تعيين وظيفتك بنجاح على ${jobName}.",
		changed_job_success_go_to_coords = "تم تعيين وظيفتك بنجاح على ${jobName}. اتبع الإرشادات على الخريطة للبدء.",
		changed_job_failure = "حدث خطأ أثناء محاولة تعيين وظيفتك على ${jobName}.",
		changed_job_title = "تغيير الوظيفة",
		changed_job_details = "${consoleName} قام بتغيير وظيفته إلى `${jobName}`."
	},

	jobs = {
		job_refreshed = "تم تحديث الوظيفة.",
		something_went_wrong = "حدث خطأ ما.",
		user_does_not_have_sent_character_loaded = "المستخدم لا يملك الشخصية المحملة.",
		user_has_no_character_loaded = "المستخدم ليس لديه أي شخصية محملة.",
		user_not_found = "لم يتم العثور على المستخدم الذي تم إرساله.",
		invalid_character_id = "مُعرف الشخصية الذي تم إرساله غير صالح.",
		invalid_license_identifier = "معرّف الرخصة الذي تم إرساله غير صالح."
	},

	police = {
		aim_assist_enabled = "ستتمكن الآن من إصابة أهدافك بدقة أكبر.",
		aim_assist_disabled = "ستصبح قدرتك على الإصابة أسوأ مما كانت عليه مجرمون / أوباش. يوصى بإعادة تمكين مساعدة الهدف على الفور.",
		you_are_not_police = "هذه الميزة محفوظة لرجال الشرطة فقط، وليس للمجرمين / الأوباش.",

		undercover_enabled = "أنت الآن تحت الغطاء.",
		undercover_disabled = "لم تعد تحت الغطاء.",

		npc_vehicle = "هذه السيارة ليست مملوكة لاعب.",
		not_in_a_vehicle = "أنت لا تقود سيارة حاليًا.",
		invalid_minutes = "وقت غير صالح (بين دقيقة واحدة و 12 ساعة).",

		not_on_duty = "أنت لست في الخدمة.",
		failed_impound = "فشل في حجز المركبة.",
		not_near_impound = "أنت لست بالقرب من مكان حجز المركبات.",
		impound_success = "تم حجز المركبة برقم اللوحة `${plate}` بنجاح لمدة ${minutes} دقيقة.",

		access_impound = "[${InteractionKey}] الدخول إلى حجز المركبات",
		impound_lot = "حجز المركبات",
		exit_impound = "خروج من حجز المركبات",
		no_impounded_vehicles = "لا توجد مركبات محجوزة حاليًا.",
		failed_impound_list = "فشل في الحصول على قائمة المركبات المحجوزة.",
		impound_owner = "المالك: #${cid}",
		withdraw_success = "تم سحب المركبة بنجاح.",
		failed_withdraw = "فشل في سحب المركبة.",
		vehicle_not_impounded = "هذه المركبة غير موجودة في الاستيقاف الحالي.",

		impound_logs_title = "محجوزات الشرطة",
		impound_logs_details = "${consoleName} قام بوضع مركبة باللوحة ${plate} على حجز الشرطة لمدة ${minutes} دقائق.",

		impound_withdraw_logs_title = "إلغاء حجز مركبة من قبل الشرطة",
		impound_withdraw_logs_details = "${consoleName} قام بسحب مركبة باللوحة ${plate} من حجز الشرطة (الوقت المتبقي: ${timeLeft}).",

		none = "لا شيء",
		active = "نشط",
		not_active = "غير نشط",
		active_robberies = "\nالمتاجر النشطة: ${store}.\nالبنوك النشطة: ${bank}\nالمجوهرات النشطة: ${jewelry}",

		failed_dispatch = "فشل إرسال رسالة التوجيه.",
		dispatch_title = "[التوجيه]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "رسالة التوجيه غير صالحة (أقصى عدد من الأحرف 255).",
		in_training = "أنت حاليًا في وضع التدريب.",
		cannot_use_dispatch = "لا يمكنك استخدام التوجيه الآن.",

		dispatch_message_logs_title = "سجل الرسالة التوجيهية",
		dispatch_message_logs_details = "${consoleName} أرسل رسالة إرسال: `${message}`.",

		no_keys = "ليس لديك مفتاح لهذه السيارة.",
		invalid_drive_mode = "نمط القيادة غير صالح.",
		not_in_police_vehicle = "أنت لست داخل سيارة شرطة.",
		drive_mode_too_fast = "أنت تسير بسرعة عالية جدًا لتغيير نمط القيادة.",
		drive_mode_already_set = "تم تعيين وضع القيادة الخاص بك بالفعل على '${mode}'.",
		drive_mode_failed = "لم يتم تعيين وضع القيادة بنجاح.",
		drive_mode_set = "تم تعيين وضع القيادة الخاص بك بنجاح على '${mode}'.",

		mode_s = "وضع الرياضة",
		mode_d = "وضع الدفع",

		drive_mode_logs_title = "تم تغيير وضع القيادة",
		drive_mode_logs_details = "قام ${consoleName} بتغيير وضع القيادة الخاص بهم إلى '${mode}'."
	},

	state = {
		license_heli = "هليكوبتر",
		license_fw = "طائرة ثابتة الجناح",
		license_cfi = "مدرب طيران معتمد",
		license_hw = "وزن ثقيل",
		license_hwh = "هليكوبتر وزن ثقيل",
		license_perf = "أداء",
		license_utility = "أدوات",
		license_commercial = "تجاري",
		license_management = "إدارة",
		license_military = "عسكري",
		license_special = "طائرات خاصة",
		license_hunting = "رخصة صيد",
		license_fishing = "رخصة صيد الأسماك",
		license_weapon = "ترخيص الأسلحة",
		gave_character_license = "منح ${characterName} ترخيص `${licenseLabel}`.",
		character_already_has_license = "${characterName} لديه بالفعل ترخيص `${licenseLabel}`",
		removed_character_license = "تم إزالة ترخيص `${licenseLabel}` من ${characterName}.",
		character_does_not_have_license = "${characterName} لا يملك ترخيص `${licenseLabel}`",
		license_not_found = "لم يتم العثور على الترخيص `${licenseName}`.",
		user_not_found_with_character_id = "لم يتم العثور على المستخدم بالرقم التعريفي للشخصية `${characterId}`.",
		no_license_added = "لم يتم إضافة تراخيص.",
		invalid_character_id = "معرف الشخصية الذي تم إدخاله غير صالح.",
		no_character_id_added = "لم يتم إدخال معرّف الشخصية.",
		your_licenses_are = "تراخيصك هي كالتالي: ${licenses}",
		player_licenses_are = "${characterName} لديه/لديها التراخيص التالية: ${licenses}",
		you_have_no_licenses = "لا تمتلك تراخيص.",
		player_has_no_licenses = "${characterName} لا يمتلك تراخيص.",
		failed_to_get_licenses = "فشل في الحصول على التراخيص.",
		license_list = "التراخيص المتاحة: ${licenseList}."
	},

	tow = {
		press_to_access_spawner = "اضغط ~INPUT_CONTEXT~ للوصول إلى عنصر استدعاء المركبات.",
		tow_vehicles = "قطر المركبات",
		vehicle_list = "قائمة المركبات",
		park_vehicle = "انتظر المركبة",
		parked_vehicle = "تم وضع المركبة.",
		no_vehicle_to_park = "لا يوجد مركبة لوضعها.",
		close_menu = "اغلق القائمة",
		purchased_vehicle = "تم شراء المركبة.",
		shop_on_timeout = "يتم الآن عرض عملية شراء المركبة، يرجى المحاولة لاحقًا.",
		spawn_area_not_clear = "منطقة الإنزال غير واضحة.",
		purchase_funds = "لا توجد الأموال الكافية.",
		return_button = "رجوع",

		toggled_messages_on = "تم تشغيل الرسائل المتحركة.",
		toggled_messages_off = "تم إيقاف الرسائل المتحركة."
	},

	weazel_news = {
		press_to_access_spawner = "اضغط ~INPUT_CONTEXT~ للوصول إلى جهاز الإنشاء.",
		weazel_news = "أخبار ويزل",
		vehicle_list = "قائمة المركبات",
		close_menu = "أغلق القائمة",
		return_button = "رجوع",
		park_vehicle = "أوقف المركبة",
		parked_vehicle = "أوقفت المركبة.",
		no_vehicle_to_park = "لا يوجد مركبة لأوقفها.",
		spawned_vehicle = "تم إنشاء المركبة.",
		spawner_on_timeout = "جهاز الإنشاء متوقف حاليًا. يرجى المحاولة مرة أخرى.",
		spawn_area_not_clear = "منطقة الظهور غير واضحة."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number1} من ${number2}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "تنبيه مركبة تم تشغيله عند ${locationLabel} للمركبة برقم لوحة `${plateText}`.",
		vehicle_alert_blip = "تنبيه مركبة"
	},

	boats = {
		anchor_disconnected = "تم فصل الطوق بنجاح.",
		anchored_successfully = "تم نشر الطوق بنجاح.",
		removing_anchor = "جارٍ فصل الطوق",
		deploying_anchor = "جارٍ نشر الطوق",
		no_vehicle_nearby = "لا يوجد قارب قريب يمكنك ربطه بالطوق."
	},

	car_wash = {
		use_car_wash = "اضغط ~INPUT_CONTEXT~ ل استخدام مغسلة السيارات . يبلغ سعر الاستخدام $${cost}.",
		stop_car_to_wash = "قف سيارتك للأستخدام مغسلة السيارات.",
		vehicle_already_clean = "هذه السيارة نظيفة جداً لكي تتم غسيلها.",
		car_wash = "مغسلة السيارات",
		air_unit_damaged = "هذا الوحدة الجوية تالفة.",
		air_unit_not_enough_cash = "ليس لديك ما يكفي من النقود لاستخدام الوحدة الجوية.",
		air_unit_exit_vehicle = "اخرج من المركبة لاستخدام الوحدة الجوية.",
		air_unit_press_to_use = "اضغط على ~g~${SeatEjectKey} ~w~ لاستخدام الوحدة الجوية بقيمة $${cost}.",
		air_unit_purchase_cleaning_kit = "اضغط على ~g~${InventoryKey} ~w~لشراء عدة تنظيف.",
		cleaning_vehicle = "تنظيف المركبة",
		not_enough_money = "ليس لديك ما يكفي من المال لاستخدام وحدة الطيران.",
		vehicle_not_in_range = "انتقلت المركبة بعيدًا عن النطاق المحدد لتنظيفها."
	},

	carrier = {
		use_catapult = "اضغط على ~INPUT_CONTEXT~ للربط عند استخدام القاذفة.",
		use_launch = "اضغط على ~INPUT_VEH_HANDBRAKE~ للإطلاق."
	},

	damage = {
		vehicle = "معرّف المركبة: ${entity}",
		general = "عام: ${value}",
		body = "الجسم: ${value}",
		engine = "المحرك: ${value}",
		petrol_tank = "الخزان: ${value}",
		temperature = "درجة الحرارة: ${value}",
		tracked_vehicle = "مركبة متتبعة",

		debug_vehicle_on = "قمت بتفعيل وضع تصحيح أخطاء المركبة.",
		debug_vehicle_off = "قمت بإلغاء تفعيل وضع تصحيح أخطاء المركبة."
	},

	fuel = {
		exit_to_fuel = "اخرج من المركبة للتزود بالوقود.",
		press_to_fuel = "اضغط ~g~${InteractionKey} ~w~لتزويد المركبة بالوقود.",
		fuel_pump_text = "تكلفة التزود بالوقود: $${fuelCost}~n~اضغط ~g~E ~w~لإيقاف عملية التزود بالوقود.",
		vehicle_text = "مستوى الوقود: ${fuelLevel}%",
		tank_full = "الخزان ممتلئ.",
		vehicle_busy = "المركبة القريبة مشغولة.",
		purchase_jerry_can = "اضغط ~g~${InventoryKey} ~w~لشراء علبة البنزين.",
		gas_station = "محطة وقود",
		petrolcan_fuel_text = "الوقود المتبقي: ${petrolAmount}%~n~اضغط ~g~E ~w~ لتوقف التزود بالوقود.",
		player_busy = "أنت مشغول بأمر آخر.",
		fuel_level_set_to = "تم ضبط مستوى الوقود على `${fuelLevel}`.",
		not_in_a_vehicle = "أنت لست داخل مركبة.",
		vehicle_engine_on = "المحرك لا يزال يعمل.",

		set_fuel_no_permissions = "لا يوجد لدى اللاعب الصلاحيات الكافية لضبط مستوى وقود المركبة.",

		vehicle_exploded_logs_title = "انفجار السيارة",
		vehicle_exploded_logs_details = "${consoleName} قام بتعبئة الوقود للسيارة وتسبب في انفجار بسبب تشغيل المحرك."
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "السرعة: ${speed} كم/س\nالطراز: ${model}\nاللوحة: ${plate}",
		helicopter_camera_vehicle_info_imperial = "السرعة: ${speed} ميل/س\nالطراز: ${model}\nاللوحة: ${plate}",
		helicopter_camera_altitude = "الارتفاع: ${altitude} قدم AGL",
		helicopter_camera_altitude_asl = "الارتفاع: ${altitude} قدم ASL",
		unknown = "غير معروف"
	},

	garages = {
		garage_empty = "مرآبك فارغ!",
		impound_lot = "موقف الحجز",
		police_impound = "حجز الشرطة",
		engine = "المحرك",
		body = "الجسم",
		vehicle_in = "داخل",
		vehicle_out = "خارج",
		vehicle_at_police_impound = "تم حجز مركبتك حالياً من قبل الشرطة.",
		vehicle_at_impound = "تم حجز مركبتك في موقف الحجز.",
		waypoint_to_impound = "تم وضع علامة على خريطتك للوصول إلى موقف الحجز.",
		unable_to_withdraw = "عفواً، لا يمكن سحب المركبة لأنها موجودة حالياً في ${location}.",
		waypoint_to_vehicle = "تم وضع علامة على خريطتك للوصول إلى مركبتك.",
		vehicle_currently_at = "يمكن العثور حاليًا على مركبتك في ${location}.",
		vehicle_in_garage = "تقع مركبتك في ${garageName}.",
		insufficient_funds = "ليس لديك ما يكفي من المال لسحب هذه المركبة.",
		error_withdrawing = "حدث خطأ أثناء محاولة سحب مركبتك.",
		withdraw_timeout = "يرجى الانتظار قليلاً قبل محاولة سحب مركبة أخرى.",
		garage_in_use = "يتم استخدام هذه الكراج حاليا، يرجى الانتظار لحظة.",
		invalid_model = "طراز المركبة غير صالح أو غير معروف.",
		vehicle_in_the_way = "هناك مركبة تحجب نقطة النشر.",
		vehicle_is_out = "المركبة الخاصة بك موجودة بالفعل.",
		vehicle_stored = "تم تخزين المركبة الخاصة بك.",
		error_storing = "فشل في تخزين المركبة. هل المركبة خاصتك؟",
		no_nearby_vehicle = "لم يتم العثور على مركبات قريبة.",
		no_vehicles_to_retrieve = "ليس لديك مركبات لاستعادتها!",
		vehicle_retrieved = "تم استعادة المركبة بنجاح.",
		error_retrieving = "حدث خطأ أثناء محاولة استرداد مركبتك.",
		not_enough_balance_to_retrieve = "لا يوجد لديك رصيد كافٍ في أي حساب لاسترداد هذه المركبة.",
		press_to_access = "اضغط ~INPUT_CONTEXT~ للدخول الى الكراج.",
		ui_return = "رجوع",
		ui_vehicle_list = "قائمة المركبات",
		ui_store_vehicle = "ايداع المركبة",
		ui_vehicle_sell = "بيع المركبات",
		ui_retrieve_vehicle = "استرجاع المركبة",
		ui_close_menu = "اغلاق القائمة",
		garage_letter = "كراج ${letter}",
		garage_emergency = "كراج ${type}",
		emergency_type_1 = "PD",
		emergency_type_2 = "EMS",
		no_vehicles_impounded = "ليس لديك أي مركبات تم حجزها!",
		you_must_retrieve_this_vehicle = "يجب عليك استرجاع هذه المركبة للحصول على الوصول اليها.",
		garage = "المرآب",
		retrieved_vehicle_logs_title = "إستعادة المركبة",
		retrieved_vehicle_logs_details = "${consoleName} استعاد المركبة ذات اللوحة '$ {الرقم_المعرف_للمركبة}' بمبلغ ${price}.",

		state_loading_model = "جاري تحميل النموذج...",
		state_withdrawing = "جاري سحب المركبة...",

		state_retrieve_searching = "جاري البحث...",
		state_retrieving = "جاري استعادة المركبة...",

		state_storing = "جاري تخزين المركبة...",

		state_loading = "جاري التحميل...",

		vehicle_weight = "الوزن: ${weight}",
		last_garage_letter = "الأخير - المرآب ${letter}",
		last_garage_impound = "الأخير - مكان حجز المركبات",
		no_last_garage_letter = "لا يوجد مرآب سابق",

		purchase_vehicle = "اضغط ~INPUT_CONTEXT~ للوصول إلى المحل",
		emergency_shop = "محل السيارات",
		exit_shop = "خروج من المحل",
		purchase_success = "تم شراء ${label} بنجاح وإضافتها إلى مرآبك.",
		purchase_failed = "فشل شراء السيارة.",
		already_owned = "أنت تمتلك هذا الطراز من السيارات بالفعل.",
		maximum_owned = "لا يمكنك امتلاك أكثر من 6 سيارات.",
		not_enough_money = "ليس لديك ما يكفي من المال لشراء هذه السيارة.",

		sold_vehicle = "تم بيع ${label} مقابل $${price}.",
		failed_sell_vehicle = "فشل بيع المركبة.",

		sold_vehicle_logs_title = "تم بيع المركبة",
		sold_vehicle_logs_details = "${consoleName} قام ببيع المركبة الطارئة `${modelName}` ذات لوحة `${plate}` بمبلغ ${price}.",

		purchased_vehicle_logs_title = "تم شراء المركبة",
		purchased_vehicle_logs_details = "${consoleName} قام بشراء المركبة الطارئة `${modelName}` بمبلغ ${price} (اللوحة: `${plate}`).",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "تم تفعيل وضع تصحيح الأخطاء في المرآب.",
		toggle_garage_debug_toggled_off = "تم إيقاف وضع تصحيح الأخطاء في المرآب."
	},

	handlings = {
		set_handling_override_not_super_admin = "حاول اللاعب ضبط إعادة التعامل بدون الأذونات المناسبة.",
		remove_handling_override_not_super_admin = "حاول اللاعب إزالة إعادة التعامل بدون الأذونات المناسبة."
	},

	keys = {
		no_nearby_player = "لم يتم العثور على أي لاعب قريب.",
		no_nearby_vehicle = "لم يتم العثور على أي مركبة قريبة.",
		no_keys_for_vehicle = "لا يمكنك فتح هذه المركبة لعدم حيازتك المفاتيح.",
		vehicle_locked = "تم قفل المركبة.",
		vehicle_unlocked = "تم فتح المركبة.",
		h_to_hotwire = "[H] التشغيل السري",
		received_keys = "تم استلام المفاتيح للمركبة ذات اللوحة ${plate}.",
		received_keys_no_plate = "تم استلام المفاتيح للمركبة.",
		you_are_not_in_a_vehicle = "أنت لست داخل مركبة.",
		you_are_in_a_vehicle = "أنت الآن داخل مركبة.",
		hotwired_vehicle_with_plate_number = "تم تشغيل المركبة ذات اللوحة '${plateNumber}' بإستخدام أداة التشغيل السريع.",
		unable_to_hotwire_vehicle = "لا يمكن تشغيل المركبة بواسطة أداة التشغيل السريع.",
		picked_up_keys = "تم استلام المفاتيح للمركبة ذات اللوحة `${plate}`."
	},

	modifications = {
		wheels_reset = "جار إعادة تعيين عجلات المركبة.",
		wheels_already_reset = "عجلات المركبة معيدة إلى وضعها الإفتراضي.",
		wheels_modified = "تم تعديل العجلات.",
		wheels_none_specified = "لم يتم تحديد عجلات.",
		wheels_none_valid_specified = "لم يتم تحديد عجلات صالحة.",
		not_in_a_car = "أنت لست في سيارة.",
		invalid_value = "قيمة غير صالحة."
	},

	plates = {
		plate_number_is_available = "رقم لوحة `${plateNumber}` متاح.",
		plate_number_is_not_available = "رقم لوحة `${plateNumber}` غير متاح.",
		missing_valid_plate_number = "المعلمة 'رقم اللوحة' غير موجودة أو غير صالحة.",
		missing_valid_vehicle_id = "المعلمة 'معرف المركبة' غير موجودة أو غير صالحة.",
		database_error = "حدث خطأ في قاعدة البيانات الخلفية.",
		no_custom_plate_package = "ليس لديك حزمة لوحة مخصصة. تحقق من متجرنا لمزيد من المعلومات!",
		api_error = "عاد خطأ من خادم ال API الخلفي.",
		api_not_available = "ال API الخلفي غير متاح حالياً.",
		vehicle_does_not_belong_to_player = "رقم هوية المركبة `${vehicleId}` لا ينتمي لك.",
		vehicle_id_does_not_exist = "رقم هوية المركبة `${vehicleId}` غير موجود.",
		you_have_no_character_loaded = "ليس لديك شخصية محملة حالياً.",
		vehicle_plate_changed = "تم تغيير رقم اللوحة للمركبة بالمعرف ${vehicleId} إلى ${plateNumber}.",

		you_are_not_in_a_vehicle = "لست في مركبة.",
		fake_plate_active = "تم إنشاء لوحة وهمية بنجاح لمركبتك.",
		fake_plate_inactive = "تم إعادة اللوحة الأصلية للمركبة.",

		fake_plate_missing_permissions = "حاول اللاعب تغيير لوحة المركبة وهو لا يمتلك الصلاحيات اللازمة."
	},

	runways = {
		you_are_not_in_a_plane = "لست في طائرة.",
		ifr_disabled = "تم تعطيل نظام الهبوط الآمن IFR.",
		ifr_enabled = "تم تفعيل IFR بنجاح."
	},

	sirens = {
		sirens_muted_on = "تم كتم جميع صفارات الإنذار بنجاح.",
		sirens_muted_off = "تم إلغاء كتم جميع صفارات الإنذار بنجاح."
	},

	spawner = {
		press_to_access_spawner = "اضغط ~INPUT_CONTEXT~ للوصول إلى منشئ المركبات.",

		parked_vehicle = "تم وقوف المركبة بنجاح.",

		spawner_burger_shot = "مركبات توصيل برجر شوت",
		spawner_bean_machine = "مركبات توصيل بين ماشين",
		spawner_weazel_news = "مركبات ويزيل نيوز",
		close_menu = "إغلاق القائمة",
		vehicle_list = "قائمة المركبات",
		park_vehicle = "وقوف المركبة",
		return_button = "العودة",

		failed_spawn = "فشل في إيقاف السيارة.",
		failed_area = "المنطقة غير واضحة.",
		failed_job = "ليس لديك الوظيفة الصحيحة.",
		failed_generic = "حدث خطأ ما."
	},

	vehicles = {
		flip_flipping = "قلب السيارة",
		flip_unable = "لا يمكنك إقلاع السيارة بينما هناك أشخاص داخلها.",
		vehicle_busy = "يرجى الانتظار، هذه السيارة مشغولة!",
		hold_to_eject = "اضغط وامسك لإخراج",
		taking_keys = "أخذ المفاتيح",
		belt_on = "تشغيل الحزام",
		belt_off = "إيقاف تشغيل الحزام",
		mileage = "المسافة المقطوعة",
		vehicle_mileage_amount = "هذه السيارة مقطوع منها ${miles} ميل.",
		not_in_driver_seat = "يجب عليك الجلوس في مقعد السائق للتحقق من المسافة المقطوعة.",
		not_driving_vehicle = "أنت لست تقود مركبة حالياً.",
		vehicle_locked = "المركبة مقفولة.",
		gear_animation_enabled = "تم تفعيل رسوم الجير (والأصوات).",
		gear_animation_disabled = "تم تعطيل رسوم الجير (والأصوات).",
		manual_gears_enabled = "تم تفعيل التحويل اليدوي للجير.",
		manual_gears_disabled = "تم تعطيل التحويل اليدوي للجير.",
		manual_gear_set_to = "تم تحديد الجير لـ ${gearId}.",
		speed_limiter_set_to_metric = "سيقوم المحدد السرعة الآن بتقييد السرعة عند ${speed} كم/ساعة.",
		speed_limiter_set_to_imperial = "سيقوم المحدد السرعة الآن بتقييد السرعة عند ${speed} ميل/ساعة.",
		speed_limiter_reset = "سيقوم المحدد السرعة الآن بتقييد السرعة عند السرعة التي كان عليها المركبة عند التبديل.",
		speed_limiter_on_metric = "تم تعيين المحدد السرعة على ${speed} كم/ساعة.",
		speed_limiter_on_imperial = "تم تعيين المحدد السرعة على ${speed} ميل/ساعة.",
		speed_limiter_on_plane_metric = "تم تعيين المحدد السرعة على ${speed} كم/ساعة و ${altitude} أمتار.",
		speed_limiter_on_plane_imperial = "تم تحديد حد السرعة على ${speed} ميل/س و ${altitude} قدم",
		speed_limiter_on_helicopter_metric = "تم تحديد حد السرعة على ${altitude} متر (تحوم).",
		speed_limiter_on_helicopter_imperial = "تم تحديد حد السرعة على ${altitude} قدم (تحوم).",
		autopilot_metric = "~g~التحليق التلقائي~s~: ${altitude} م ~c~/~s~ ${speed} كم/س",
		autopilot_imperial = "~g~التحليق التلقائي~s~: ${altitude} قدم ~c~/~s~ ${speed} عقدة",
		you_are_cuffed = "أنت مكبّل.",
		belt_is_on_and_vehicle_is_locked = "الحزام مربوط والمركبة مقفّلة.",
		belt_is_on = "الحزام مشدود.",
		vehicle_is_locked = "المركبة مقفلة.",

		nearest_player_not_vehicle = "أقرب لاعب ليس في مركبة.",
		no_dead_player_nearby = "لا يوجد لاعب ميت في مركبة بالقرب منك.",
		dragging_out_player = "جار سحب اللاعب من المركبة.",
		vehicle_too_fast = "المركبة تتحرك بسرعة أكبر من المسموح بها.",

		modifying_brakes = "جار تعديل الفرامل",
		toggle_brakes_on = "تم تشغيل الفرامل.",
		toggle_brakes_off = "تم إيقاف الفرامل.",
		failed_modify_brakes = "فشل في تعديل الفرامل.",

		toggle_disabled_brakes_no_permissions = "قام اللاعب بمحاولة تبديل الفرامل غير المفعلة عن طريق الأمر دون الحصول على الصلاحيات المناسبة.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "قام اللاعب بمحاولة إضافة مركبة إلى كراج شخص آخر دون الحصول على الصلاحيات اللازمة.",
		add_vehicle_added_vehicle_for_everyone = "تمت إضافة مركبة بإسم النموذج `${modelName}` للجميع.",
		add_vehicle_added_vehicle_for_player = "تمت إضافة مركبة بإسم النموذج `${modelName}` ل${consoleName}.",
		add_vehicle_added_vehicle = "تمت إضافة مركبة بإسم النموذج `${modelName}`.",
		add_vehicle_character_not_loaded = "لا يوجد شخصيات محملة لدى اللاعب المعني.",
		add_vehicle_target_user_not_found = "لا يمكن العثور على المستخدم المعني.",
		add_vehicle_invalid_input = "إدخال غير صحيح.",
		add_vehicle_no_permissions = "لا توجد صلاحيات.",
		add_vehicle_user_not_found = "المستخدم غير موجود.",
		add_vehicle_invalid_player = "لم يتم العثور على اللاعب برقم التعريف الخاص `${serverId}`.",
		add_vehicle_invalid_model_name = "اسم النموذج `${modelName}` غير صالح.",
		add_vehicle_no_model_name = "لم يتم إضافة اسم النموذج.",

		added_vehicle_for_everyone_logs_title = "تمت إضافة مركبة للجميع",
		added_vehicle_for_everyone_logs_details = "${consoleName} قام بإضافة مركبة بإسم ${modelName} إلى جميع الحرمان.",
		added_vehicle_for_player_logs_title = "تمت إضافة مركبة للعبّار",
		added_vehicle_for_player_logs_details = "${consoleName} قام بإضافة مركبة بإسم ${modelName} إلى مخزن ${targetConsoleName}",
		added_vehicle_logs_title = "تمت إضافة مركبة",
		added_vehicle_logs_details = "${consoleName} قام بإضافة مركبة بإسم ${modelName} لمخزنهم.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "حاول اللاعب تفعيل أسلحة المركبة على مركبة بدون الأذونات المناسبة.",
		toggled_vehicle_weapons_on = "تم تفعيل أسلحة المركبة.",
		toggled_vehicle_weapons_off = "تم إيقاف تفعيل أسلحة المركبة.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "المركبة التي أنت فيها غير متصلة بالشبكة.",
		toggled_vehicle_weapons_not_in_a_vehicle = "أنت لست في مركبة.",
		toggled_vehicle_weapons_target_user_not_found = "لم يتم العثور على المستخدم المستهدف.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "اللاعب المستهدف ليس في مركبة.",
		toggled_vehicle_weapons_for_player_on = "تم تفعيل أسلحة المركبة لـ ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "تم تعطيل أسلحة المركبة لـ ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "تم تفعيل أسلحة المركبة للجميع.",

		toggled_vehicle_weapons_on_logs_title = "تم تفعيل أسلحة المركبة",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} قام بتفعيل أسلحة مركبة.",
		toggled_vehicle_weapons_off_logs_title = "تم تعطيل أسلحة المركبة",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} قام بإيقاف تشغيل الأسلحة للمركبة.",
		toggled_vehicle_weapons_on_for_player_logs_title = "تم تشغيل الأسلحة للمركبة للاعب",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} قام بتشغيل الأسلحة لمركبة ${targetConsoleName}.",
		toggled_vehicle_weapons_off_for_player_logs_title = "تم إيقاف تشغيل الأسلحة للمركبة للاعب",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} قام بإيقاف تشغيل الأسلحة لمركبة ${targetConsoleName}.",
		toggled_vehicle_weapons_for_everyone_logs_title = "تم تبديل أسلحة المركبة للجميع",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} قام بتبديل أسلحة مركبة الجميع.",

		breaking_window = "كسر النافذة",
		not_near_window = "أنت لست بالقرب من نافذة.",
		not_near_vehicle = "لا يوجد مركبة بالقرب.",

		wheelie_no_vehicle = "لا يوجد مركبة",
		wheelie_engine_off = "المحرك مغلق",
		wheelie_idling = "ينتظر",
		wheelie_ready = "مستعد",
		wheelie_boosting = "قوة إضافية",

		invalid_power_level = "مستوى قوة غير صالح (1 - 5)."
	},

	vin_numbers = {
		cad_title = "[CAD]",

		checking_vin = "جاري التحقق من الرقم التسلسلي للمركبة",
		not_driver = "أنت حاليًا لا تقود مركبة.",
		failed_vin_get = "فشل في الحصول على الرقم التسلسلي للمركبة.",
		vin_checked = "رقم الهيكل لهذه المركبة هو `${vin}`.",
		vin_scratched = "رقم الهيكل قد تم خدشه.",

		looking_up_vin = "جاري البحث عن الرقم التسلسلي للمركبة",
		invalid_vin = "الرقم التسلسلي للمركبة غير صالح أو مفقود.",
		failed_vin_lookup = "فشل في البحث عن الرقم التسلسلي للمركبة",
		vin_lookup_details = "تم تسجيل رقم الهيكل `${vin}` للمركبة المسجلة باسم `${fullName}` ولوحة `${plate}`.",
		vin_lookup_unregistered = "رقم VIN `$(vin}` غير مسجل على أية مركبة."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] إضغط واستمر في الضغط للتخريب",
		hold_to_slash = "استمر في الضغط للتخريب",
		slashing_tire = "تخريب الإطار"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "فتح علبة الذخيرة",
		failed_unbox = "فشل في فتح صندوق الذخيرة.",
		failed_unbox_full = "لا يمكنك حمل المزيد من هذه الذخيرة.",
		unbox_success = "تم فتح علبة الذخيرة بنجاح، ${amount}x ${ammoType}.",
		unbox_success_box = "تم فتح صندوق الذخيرة بنجاح.",

		type_pistol = "ذخيرة مسدس",
		type_smg = "ذخيرة سلاح رشاش",
		type_rifle = "ذخيرة البندقية",
		type_sniper = "ذخيرة القنص",
		type_shotgun = "ذخيرة البندقية الحربية",
		type_stungun = "كرات التايزر",

		fill_ammo_success = "تم ملء الذخيرة بنجاح.",
		fill_ammo_failed = "فشل في ملء الذخيرة."
	},

	weapons = {
		pick_up_fire_extinguisher = "اضغط ~INPUT_CONTEXT~ لالتقاط جهاز إطفاء الحريق.",
		press_to_drop_fire_extinguisher = "اضغط ~INPUT_FRONTEND_RRIGHT~ لإسقاط جهاز إطفاء الحريق.",
		illegal_fire_extinguisher_model = "محاولة حذف جهاز إطفاء الحريق على جميع العملاء باستخدام نموذج ليس جهاز إطفاء الحريق.",

		airsoft_mode_on = "تم تفعيل وضع أيرسوفت.",
		airsoft_mode_off = "تم إلغاء تفعيل وضع أيرسوفت.",
		airsoft_mode_failed = "فشل في تغيير وضع أيرسوفت.",

		no_weapon_equipped = "لا يوجد سلاح مجهز.",
		no_ammo = "لا يوجد ذخيرة لهذا السلاح.",
		infinite_ammo = "لديك ذخيرة لا نهائية لهذا السلاح.",
		ammo_count = "لديك ${clips} مخازن كاملة (${total} طلقة في المجموع).",
		ammo_count_loose = "لديك ${clips} مخازن كاملة ومخزن واحد يحتوي على ${loose} طلقة (${total} طلقة في المجموع).",

		firing_mode_0 = "تم تعيين وضع الإطلاق على الإعداد الافتراضي.",
		firing_mode_1 = "تم تحديد وضع الإطلاق على وضع شبه الآلي.",
		firing_mode_2 = "لقد قمت بتفعيل وضع السلامة على السلاح.",

		safety_is_on = "وضع السلامة على السلاح مفعّل.",

		firing_mode_set_1 = "تم تحديد وضع الإطلاق على وضع شبه الآلي.",
		firing_mode_set_2 = "لقد تم تفعيل وضع السلامة على السلاح.",

		folded_stock = "الخزنة مطوية",
		unfolded_stock = "الخزنة مفتوحة",
		failed_to_toggle_stock = "فشل في تحويل الخزنة.",
		weapon_has_no_stock = "هذا السلاح لا يحتوي على خزنة."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] تسجيل الدخول",
		check_in_timer = "[${remaining}s] تسجيل الدخول",
		check_in_escorted = "أنت ترافق الآن",
		checking_in = "تسجيل الدخول",
		doctor_notified = "تم إخطار الطبيب، يرجى الانتظار",
		leave_bed = "اضغط ~INPUT_CONTEXT~ للخروج من السرير",
		you_have_been_charged = "تم خصم $${cost} لإصابتك",
		beds_occupied = "جميع الأسرة مشغولة",
		patient_checked_in = "تم تسجيل المريض في السرير ${bed}",
		stop_bleeding = "[E] إيقاف النزيف",
		stopping_bleeding = "جاري إيقاف النزيف",
		bleeding_stopped = "تم إيقاف النزيف",
		overdose_effects = "أنت تعاني من آثار جرعة زائدة.",
		you_have_parasite = "لديك طفيلي",
		you_have_multiple_parasite = "لديك عدة طفيليات",
		bandage = "[E] تضميد الجروح",
		bandaging = "جارٍ تضميد الجروح",
		wounds_bandaged = "تم تضميد الجروح",
		treat_injury = "[E] علاج الإصابة ${label}",
		treating_injury = "جارٍ علاج الإصابة ${label}",
		injury = "إصابة ${label}",
		cpr_done = "تم إنعاش الشخص بنجاح",
		cpr_fail = "غير قادر على تحديد موقع الشخص",
		went_on_duty = "تم الدخول في الخدمة",
		went_off_duty = "تم الخروج من الخدمة",
		on_duty = "في الخدمة",
		off_duty = "خارج الخدمة",
		press_to_sign = "اضغط ~g~E ~w~للتوقيع",
		open_vehicle_spawner = "اضغط ~g~E ~w~لفتح استنساخ المركبات",
		open_heli_spawner = "اضغط على ~g~E ~w~لفتح قائمة الطائرات الهليكوبتر",
		open_boat_spawner = "اضغط على ~g~E ~w~لفتح قائمة القوارب",
		on = "تشغيل",
		off = "إيقاف",
		sign_as_doctor = "اضغط على ~g~E ~w~ للتوقيع ${status} كطبيب",
		close_menu = "إغلاق القائمة",
		vehicle_list = "قائمة المركبات",
		park_vehicle = "ركن المركبة",
		clear_area = "يرجى تفريغ المرآب قبل إنشاء مركبة",
		unable_to_extra = "غير قادر على تعديل 'الإضافات' على هذه المركبة!",
		warning = "تحذير",
		invalid_input = "إدخال غير صالح.",
		unable_to_extra_on_vehicle = "غير قادر على تعديل 'الإضافات' على هذه المركبة!",
		heli_here_already = "يوجد بالفعل مروحية على المروحية",
		ems_air_hq = "مركز الإسعاف الجوي",
		ems_boat_hq = "مركز الإسعاف البحري",
		ems_garage = "كراج الإسعاف",
		e_to_get_treated = "[E] لتلقي العلاج - 1250$",
		get_treated = "تلقي العلاج - 1250$",
		you_are_being_treated = "الآن تتلقى العلاج",
		being_treated = "تتلقى العلاج",
		minute = "دقيقة",
		minutes = "دقائق",
		second = "ثانية",
		seconds = "ثواني",
		kurwa_and = "و",
		wait_for_paramedic = "رجاء الانتظار حتى يصل المسعف أو الانتظار ${time} للإعادة النشطة",
		cannot_respawn_currently = "لا يمكنك الإعادة النشطة الآن",
		hold_to_respawn = "اضغط واستمر في الضغط على ~b~ENTER ~w~للإعادة الظهور أو انتظر وصول فريق طبي",
		hold_to_respawn_secondslol = "اضغط واستمر في الضغط على ~b~ENTER (${seconds}) ~w~للإعادة الظهور أو انتظر وصول فريق طبي",
		passed_out = "لقد فقدت الوعي",
		light = "بسيط",
		moderate = "متوسط",
		heavy = "شديد",
		severe = "حرج",
		arms_injured = "الأذرع مصابة بالإصابة، غير قادر على إطلاق النار",
		injuryb = "إصابة",
		bleeding_multiple_injuries = "ينزف ولديه إصابات متعددة",
		feels_irritated = "يشعر بالتهيج",
		feels_painful = "يشعر بالألم",
		feels_extremely_painful = "يشعر بالألم الشديد جداً",
		multiple_injuries = "لديك إصابات متعددة",
		bleeding = "نزيف",
		bleeding_with_injury = "نزيف مع إصابة ${label}",
		bleeding_reduced = "تم التخفيف من النزيف",
		bleeding_self_stopped = "توقف النزيف بنفسه",
		thanks_for_loot = "لقد تعرضت للسرقة أثناء فقدان الوعي. قد يكون بعض العناصر مفقودة.",
		serial_number = "الرقم التسلسلي: ${serialNumber}<br>هذا السلاح مسجل باسم ${fullName} (#${characterId}).",
		serial_number_unknown = "الرقم التسلسلي: غير معروف.",
		badge_owner = "<i>ينتمي هذا الشارة لـ <b>${fullName} (${positionName})</b>.</i>",
		badge_owner_unknown = "صاحب الشارة غير معروف.",
		citizen_card_owner = "<i>ينتمي هذا البطاقة المدنية لـ <b>${fullName} (#${characterId})</b>.</i>",
		citizen_card_has_portrait = "<i>البطاقة تحتوي على صورة.</i>",
		picture_pending = "<i>جاري معالجة الصورة...</i>",
		picture_selfie_owner = "<i>هذه صورة لـ <b>${fullName}</b>.</i>",
		bought_by = "تم شراؤها بواسطة ${buyerName} (${buyerCid}).",
		bought_by_unknown = "لا يُعرف مَن اشترى هذا العنصر.",
		cigarette_pack = "تبقى ${cigarettes} سجائر.",
		evidence_incomplete = "هذه الحقيبة الأدلة غير مكتملة.",
		evidence_type = "نوع الأدلة",
		processed_picked_up = "<i>امسكتها ${pickupName} وقام ${processName} بمعالجتها.</i>",
		picked_up = "<i>امسكتها ${pickupName}.</i>",
		processed_by = "<i>تم معالجتها بواسطة ${processName}.</i>",
		evidence_casings = "عاد الأطباق إلى الرقم التسلسلي ${serialNumber} الذي كان بحوزة ${buyerName} (${buyerCid}) في وقت الاستخدام.",
		evidence_bullets = "يبدو أن أثار الرصاص تم إنشاؤها بواسطة ${bulletLabel}.",
		evidence_clothing = "قطعة من الملابس (${clothingType}).",
		evidence_car_dna = "تم جمع الحمض النووي من السيارة المسجلة بلوحة ${plateNumber} وكان من صاحبها ${DNAOwnerName} (${DNAOwner}).",
		evidence_dna = "تم جمع الحمض النووي من ${fullName} #${characterId}.",
		evidence_fingerprint = "بصمة ${fullName} #${characterId}.",
		evidence_not_processed = "هذه الحقيبة الأدلة لم يتم معالجتها بعد.",
		additional_information = "معلومات إضافية:",
		picked_up_at_location = "تم جمعها في الموقع:",
		clothing_dna_trace = "يعود آثر الحمض النووي في القطعة إلى ${fullName} (#${cid})",
		clothing_dna_trace_unprocessed = "آثار افراد غير معالجة في الملابس",
		timestamp_of_pickup = "وقت الإلتقاط:",
		weapon_name = "اسم السلاح:",
		casings_picked_up = "عدد الحالات التي تم جمعها:",
		bullet_label = "تسمية الرصاصة:",
		impacts_found = "عدد الاثار الموجودة في المنطقة:",
		right_foot = "القدم اليمنى",
		left_foot = "القدم اليسرى",
		right_hand = "اليد اليمنى",
		left_hand = "اليد اليسرى",
		right_knee = "الركبة اليمنى",
		left_knee = "الركبة اليسرى",
		head = "الرأس",
		neck = "العنق",
		right_arm = "الذراع الأيمن",
		left_arm = "الذراع الأيسر",
		chest = "الصدر",
		pelvis = "الحوض",
		right_shoulder = "الكتف الأيمن",
		left_shoulder = "الكتف الأيسر",
		right_wrist = "المعصم الأيمن",
		left_wrist = "المعصم الأيسر",
		tounge = "اللسان",
		upper_lip = "الشفة العليا",
		lower_lip = "الشفة السفلية",
		right_thigh = "الفخذ الأيمن",
		left_thigh = "الفخذ الأيسر",
		lower_spine = "العمود الفقري السفلي",
		center_spine = "العمود الفقري المركزي",
		upper_spine = "العمود الفقري العلوي",
		root_spine = "العمود الفقري الجذري",
		right_clavicle = "الترقوة الأيمن",
		left_clavicle = "الترقوة الأيسر",
		note_signed_by = "<b>توقيع:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>الموقع:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>ينتمي هذا الساعة الذكية لـ <b>${name} (#${cid})</b>. وقد تم تتبع <b>${stepsWalked}</b> خطوة.</i>",
		item_contains = "<b>المحتويات:</b> <i>${contents}</i>.",
		item_engraving = "<b>النقش:</b> <i>${message}</i>.",
		evidence_incomplete = "هذه الحقيبة الأدلة غير مكتملة."
	}
}
