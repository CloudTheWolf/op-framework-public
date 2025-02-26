if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 8 (do not change)

OP.Global.Locales.Languages["hi-IN"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "सिस्टम",
		warning = "चेतावनी",
		invalid_input = "अमान्य इनपुट।",
		missing_input = "गुम इनपुट।",
		player_not_found = "सर्वर आईडी `${serverId}` के साथ खिलाड़ी को नहीं मिल सका।",
		something_went_wrong = "कुछ गलत हो गया। कृपया पुन: प्रयास करें।",
		yes = "हाँ",
		no = "नहीं"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "ट्रंक में दाखिल होने के लिए ~INPUT_ENTER~ दबाएं।",
		put_boombox_in_trunk = "ट्रंक में बूमबॉक्स रखने के लिए ~INPUT_ENTER~ दबाएं।",
		put_player_in_trunk = "खिलाड़ी को ट्रंक में रखने के लिए ~INPUT_ENTER~ दबाएं।",
		put_player_in_seat = "[${VehicleEnterKey}] सीट में रखें",
		trunk_interaction_display = "[${VehicleEnterKey}] बाहर निकलें [${InteractionKey}] ट्रंक खोलें/बंद करें",
		trunk_open_close_display = "[${InteractionKey}] ट्रंक खोलें/बंद करें",
		boombox_already_in_trunk = "ट्रंक में पहले से ही एक बूमबॉक्स है।",
		the_trunk_is_occupied = "ट्रंक भरा हुआ है।",
		unable_to_toggle_carry = "कृपया कुछ देर पहले अपने carry को टॉगल करने से रोकें।",
		carry_disabled_animal = "जानवरों को carry नहीं कर सकते।",

		cancel_piggyback = "पिगीबैक को रद्द करने के लिए ~INPUT_FRONTEND_RRIGHT~ दबाएं।",
		piggyback_hop_on = "[${InteractionKey}] hop on",
		stop_piggyback = "पिग्गीबैकिंग रोकने के लिए ~INPUT_VEH_HEADLIGHT~ दबाएं।",

		lockpicking_cuffs = "हथकड़ी लॉकपिकिंग",
		lockpick_cuffs_too_fast = "आप बहुत तेजी से चल रहे हैं।",
		success_lockpick_cuffs = "हथकड़ी सफलतापूर्वक लॉकपिक कर दी गई।",
		failed_lockpick_cuffs = "हथकड़ी का लॉकपिक करने में विफल हो गया।",
		lockpick_lost = "आपने अपना लॉकपिक खो दिया।",

		not_cuffed = "आप कट्टरखंडीत नहीं हैं।",
		unable_to_lockpick = "आप हथकड़ी के ताले नहीं लॉकपिक कर सकते।",

		lockpick_cuffs_logs_title = "हथकड़ी का लॉकपिक किया गया",
		lockpick_cuffs_logs_details = "${consoleName} ने `${itemName}` का उपयोग करके अपनी हथकड़ियों को सफलतापूर्वक लॉकपिक किया।",

		you_are_not_being_carried = "आप वर्तमान में किसी द्वारा उठाए जाने वाले नहीं हो।",
		successfully_uncarried = "उत्तेजित उठाना विफलता पूर्वक रोक दिया गया।",
		failed_uncarried = "उत्तेजित उठाना रोकने में विफल रहा।",
		uncarry_missing_permissions = "योग्य अनुमति के बिना उत्तेजित उठाना रोकने का प्रयास किया गया।",

		uncarry_logs_title = "बलपूर्व उठाना रोकें",
		uncarry_logs_details = "${consoleName} ने ${targetName} से अपने ऊपर से उठाने रोक दिया।",

		failed_carry_npc = "NPC को उठाने में विफल रहा।",
		carry_npc_something_wrong = "NPC को उठाने के दौरान कुछ गड़बड़ हुई।",

		e_to_struggle = "जंग करने के लिए ई दबाएँ",
		cant_struggle_dead = "आप मृत होने पर जंग नहीं कर सकते।",
		struggle_to_quick = "आप अपने पूर्व जंग के बाद थक गए हैं, कुछ देर इंतजार करें और पुन: प्रयास करें।",
		struggle_logs_title = "मुक्ति पाई",
		struggle_logs_details = "${consoleName} ने ${targetName} को उठाकर जंग करते हुए मुक्त कर दिया।"
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "'${featureName}' को सक्षम / अक्षम करने का प्रयास करते हुए, लेकिन उचित अनुमतियों के बिना या खुद के या किसी अन्य उपयोगकर्ता का नहीं कर सकते।",
		feature_toggle_activated_logs_title = "दूरस्थ रूप से सुविधा सक्षम या अक्षम की गई",
		feature_toggle_activated_logs_details_state = "${consoleName} ने खिलाड़ी ${targetConsoleName} के लिए `${featureName}` ${newState} टॉगल किया।",
		feature_toggle_activated_all_logs_title = "दूरस्थ रूप से सभी के लिए सुविधा टॉगल की गई",
		feature_toggle_activated_all_logs_details = "${consoleName} ने सभी के लिए `${featureName}` टॉगल किया।",
		feature_toggle_activated_self_logs_title = "सुविधा टॉगल की गई",
		feature_toggle_activated_self_on_logs_details = "${consoleName} ने खुद के लिए `${featureName}` ऑन टॉगल किया।",
		feature_toggle_activated_self_off_logs_details = "${consoleName} ने खुद के लिए `${featureName}` ऑफ टॉगल किया।",
		feature_toggle_success = "${consoleName} के लिए `${featureName}` टॉगल किया गया।",
		feature_toggle_success_all = "सभी के लिए `${featureName}` टॉगल किया गया।",
		feature_toggle_failed = "सर्वर आईडी ${serverId} के लिए `${featureName}` टॉगल करने में विफल रहा।",
		feature_toggle_success_on = "${consoleName} के लिए `${featureName}` टॉगल कर दिया।",
		feature_toggle_success_off = "${consoleName} के लिए `${featureName}` टॉगल किया गया।",

		noclip_toggle_activated_self_logs_title = "Noclip टॉगल किया गया",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} ने `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}` पर noclip टॉगल किया। (गाड़ी में: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} नॉक्लिप बंद कर दिया गया है पदानुक्रम पर `xकोआर्ड: ${xCoord}, yकोआर्ड: ${yCoord}, zकोआर्ड: ${zCoord}`।",

		model_name_not_provided = "मॉडल का नाम नहीं दिया गया है।",
		model_name_invalid = "मॉडल का नाम `${modelName}` अमान्य है।",
		failed_to_spawn_vehicle = "वाहन को सही ढंग से नहीं बनाया जा सका `/spawn_vehicle` कमांड को चलाने में विफल रहा।",
		spawned_vehicle_for_player = "${consoleName} के लिए सफलतापूर्वक `${modelName}` बनाया गया।",
		spawned_vehicle_for_everyone = "हर किसी के लिए सफलतापूर्वक `${modelName}` बनाया गयाः।",
		spawn_vehicle_for_player_not_staff = "खिलाड़ी ने किसी और के लिए वाहन को उत्पन्न करने का प्रयास किया लेकिन उन्हें इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		spawn_vehicle_for_self_not_staff = "खिलाड़ी ने खुद के लिए वाहन को उत्पन्न करने का प्रयास किया लेकिन उन्हें इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		replace_vehicle_no_permissions = "खिलाड़ी ने अपने वाहन को बदलने का प्रयास करने की कोशिश की लेकिन उन्हें इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		create_vehicle_no_permissions = "खिलाड़ी ने वाहन बनाने की कोशिश की लेकिन उन्हें इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		spawned_vehicle_for_self_title = "वाहन जन्मदाता",
		spawned_vehicle_for_self_details = "${consoleName} ने मॉडल नाम `${modelName}` वाला वाहन जन्माया।",
		spawned_vehicle_for_player_title = "प्लेयर के लिए वाहन जन्मदाता",
		spawned_vehicle_for_player_details = "${consoleName} ने प्लेयर ${targetConsoleName} के लिए मॉडल नाम `${modelName}` वाला वाहन जन्माया।",
		spawned_vehicle_for_everyone_title = "हर किसी के लिए वाहन जन्मदाता",
		spawned_vehicle_for_everyone_details = "${consoleName} ने मॉडल नाम `${modelName}` वाला वाहन हर किसी के लिए जन्माया।",

		vehicle_created = "वाहन सफलतापूर्वक बनाया गया।",
		failed_vehicle_creation = "वाहन बनाने में विफल रहा।",

		invalid_amount = "अमान्य राशि।",

		added_cash_title = "कैश जोड़ा गया",
		added_cash_details = "${consoleName} ने $${amount} कैश जोड़े।",
		added_cash_to_player_title = "खिलाड़ी को कैश जोड़ा गया",
		added_cash_to_player_details = "${consoleName} ने ${targetConsoleName} को $${amount} कैश जोड़े।",
		added_cash_to_everyone_title = "सभी को कैश जोड़ा गया",
		added_cash_to_everyone_details = "${consoleName} ने सभी को $${amount} कैश जोड़े।",

		removed_cash_title = "नकदी हटाया गया",
		removed_cash_details = "${consoleName} ने $${amount} नकदी हटा दी।",
		removed_cash_from_player_title = "खिलाड़ी से नकदी हटाई गई",
		removed_cash_from_player_details = "${consoleName} ने ${targetConsoleName} से $${amount} नकदी हटा दी।",
		removed_cash_from_everyone_title = "सभी से नकदी हटाई गई",
		removed_cash_from_everyone_details = "${consoleName} ने सभी से $${amount} नकदी हटा दी।",

		added_bank_title = "बैंक में जमा किया गया",
		added_bank_details = "${consoleName} ने $${amount} बैंक में जमा किया है।",
		added_bank_to_player_title = "खाते में पैसे डाले गए",
		added_bank_to_player_details = "${consoleName} ने ${targetConsoleName} के खाते में $${amount} जमा करवाए।",
		added_bank_to_everyone_title = "सभी के खाते में पैसे डाले गए",
		added_bank_to_everyone_details = "${consoleName} ने सभी के खातों में $${amount} जमा करवाए।",

		removed_bank_title = "खाते से पैसे हटाए गए",
		removed_bank_details = "${consoleName} ने $${amount} खाते से हटा लिए।",
		removed_bank_from_player_title = "खाते से खर्च किए गए पैसे हटाए गए",
		removed_bank_from_player_details = "${consoleName} ने ${targetConsoleName} के खाते से $${amount} खर्च किए गए पैसे हटा लिए।",
		removed_bank_from_everyone_title = "सभी से बैंक हटा दिया गया",
		removed_bank_from_everyone_details = "${consoleName} ने सभी से $${amount} बैंक हटा दिया।",

		added_cash = "$${amount} कैश जोड़ा गया।",
		added_cash_to_player = "${targetConsoleName} के लिए $${amount} कैश जोड़ा गया।",
		added_cash_to_everyone = "सभी के लिए $${amount} कैश जोड़ा गया।",

		removed_cash = "$${amount} कैश हटा दिया गया।",
		removed_cash_from_player = "${targetConsoleName} से $${amount} कैश हटा दिया गया।",
		removed_cash_from_everyone = "सभी से $${amount} कैश हटा दिया गया।",

		added_bank = "$${amount} बैंक में जोड़ दिया गया।",
		added_bank_to_player = "${targetConsoleName} के बैंक में $${amount} जोड़ दिया गया।",
		added_bank_to_everyone = "सभी के बैंक में $${amount} जोड़ दिया गया।",

		removed_bank = "$${amount} बैंक से हटा दिया गया।",
		removed_bank_from_player = "${targetConsoleName} के बैंक से $${amount} हटा दिया गया।",
		removed_bank_from_everyone = "सभी के बैंक से $${amount} हटा दिया गया।",

		money_event_not_admin = "मनी इवेंट `${moneyEvent}` टॉगल करने की कोशिश की गई जिसने प्रशासक नहीं थे।",

		spawned_item_title = "वस्तु उत्पन्न हुई",
		spawned_item_details = "${consoleName} ने स्वयं के लिए ${amount}x `${itemName}` उत्पन्न किया।",
		spawned_item_for_player_title = "खिलाड़ी के लिए उत्पन्न आइटम",
		spawned_item_for_player_details = "${consoleName} ने ${targetConsoleName} के लिए ${amount}x `${itemName}` उत्पन्न किए।",
		spawned_item_for_everyone_title = "हर किसी के लिए उत्पन्न आइटम",
		spawned_item_for_everyone_details = "${consoleName} ने सभी के लिए ${amount}x `${itemName}` उत्पन्न किए।",

		report_title = "रिपोर्ट-${reportId} ${reporterName}",
		report_logs_title = "रिपोर्ट",
		report_logs_details = "${consoleName} ने रिपोर्ट ${reportId} बनाया है और इसमें निम्नलिखित संदेश शामिल हैं: `${reportMessage}`",

		announcement_staff_title = "कर्मचारी घोषणा",
		announcement_server_title = "सर्वर घोषणा",

		announcement_logs_title = "सर्वर वाइड घोषणा",
		announcement_logs_details = "${consoleName} ने पूरे सर्वर को निम्नलिखित संदेश के साथ ब्रॉडकास्ट किया है: `${announcementMessage}`",
		announcement_not_admin = "कर्मचारी घोषणा पोस्ट करने की कोशिश की गई।",

		announcement_maintenance = "मेंटेनेंस के लिए ${minutes} मिनटों में सर्वर डाउन हो जाएगा।",
		announcement_update = "अपडेट के लिए ${minutes} मिनटों में सर्वर डाउन हो जाएगा।",
		announcement_restart = "सर्वर बंद हो रहा है, ${minutes} मिनट में रीस्टार्ट के लिए।",

		posted_announcement = "घोषणा संदेश पोस्ट किया गया।",
		posted_announcement_locale = "स्थान पर घोषणा संदेश पोस्ट किया गया।",
		failed_to_post_announcement = "संदेश नहीं जोड़ा गया था इसलिए घोषणा संदेश पोस्ट करने में विफल रहा।",
		failed_to_post_announcement_locale = "घोषणा लोकेल जोड़ा गया है, लेकिन यह समर्थित नहीं है, इसलिए घोषणा संदेश पोस्ट करने में विफल रहा।",

		staff_title = "स्टाफ ${staffName}",
		staff_message_logs_title = "स्टाफ संदेश",
		staff_message_logs_details = "${consoleName} ने स्टाफ चैट में निम्नलिखित संदेश भेजा: `${staffMessage}`",
		staff_message_illegal = "खिलाड़ी स्टाफ नहीं होने के बावजूद स्टाफ चैट में संदेश भेजने का प्रयास किया।",

		staff_pm_title = "स्टाफ प्राइवेट मैसेज ${transmissionTitle}",
		staff_pm_logs_title = "स्टाफ प्राइवेट मैसेज",
		staff_pm_logs_details = "${senderConsoleName} ने ${recipientConsoleName} को निम्नलिखित संदेश भेजा: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "आप लॉग इन नहीं हैं।",
		staff_pm_not_user_not_found = "सर्वर ID ${serverId} वाला उपयोगकर्ता नहीं मिला।",
		staff_pm_not_recipient_not_staff = "वह खिलाड़ी जिसे आप संदेश भेजने की कोशिश कर रहे हैं, कोई स्टाफ सदस्य नहीं है।",
		staff_pm_unable_to_message_self = "आप अपने आप को संदेश नहीं भेज सकते है।",
		staff_pm_warning = "स्टाफ पीएम चेतावनी",
		staff_pm_first_time = "हमें लगता है कि आप कभी पहले स्टाफ पीएम का उपयोग नहीं किया है। स्टाफ पीएम का जवाब देने के लिए, /staffpm कमांड का उपयोग करें।",

		external_staff_message = "बाहरी स्टाफ संदेश",
		external_staff_message_from_player = "${playerName} से बाहरी स्टाफ संदेश",
		external_staff_message_content = "${staffMessage} (आप इस संदेश का जवाब नहीं दे सकते।)",

		unable_to_staff_message_yourself = "आप खुद को स्टाफ संदेश नहीं भेज सकते।",
		message_sent = "संदेश भेजा गया।",
		player_not_found = "खिलाड़ी नहीं मिला।",
		missing_valid_target_source_parameter = "एक वैध 'लक्ष्य स्रोत' पैरामीटर लापता है।",
		missing_valid_message_parameter = "एक वैध 'संदेश' पैरामीटर लापता है।",

		invalid_coordinates = "अमान्य x, y, z या w निर्देशांक प्रस्तुत किए गए।",
		player_not_loaded_character = "खिलाड़ी के पास कोई लोड हुए कैरेक्टर नहीं है।",
		teleport_successful = "खिलाड़ी को सफलतापूर्वक टेलीपोर्ट किया।",

		player_revived_success = "खिलाड़ी को सफलतापूर्वक जीवन दिया गया।",

		missing_valid_license_identifier_parameter = "एक वैध 'licenseIdentifier' पैरामीटर गायब है।",

		illegal_entity_wipe = "खिलाड़ी ने संपत्तियों को मिटाने का प्रयास किया, लेकिन उसके पास अनुमतियां नहीं थीं।",
		wiped_entities = "संपत्तियों को मिटा दिया",
		wipe_entities_logs_title = "संपत्तियों को मिटा दिया",
		wipe_entities_logs_details = "${consoleName} ने निम्न विन्यास के साथ एक संपत्ति मिटाने का आदेश दिया: दूरी = `${distance}`, ignoreLocalEntities = `${ignoreLocalEntities}`, modelName = `${modelName}`",

		wipe_awaiting_confirmation = "हटाव अब पुष्टि के लिए प्रतीक्षा कर रहा है। इसे पुष्टि या रद्द करने के लिए `हाँ` या `ना` टाइप करें (60 सेकंड में समाप्त हो जाता है)।\n\nचयनित पैरामीटर हैं:\n- दूरी: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- मॉडल का नाम: `${modelName}`",
		wipe_awaiting_big_title = "हटाव दूरी चेतावनी",
		wipe_awaiting_confirmation_big = "**हे, आप बहुत बड़े क्षेत्र को हटाने वाले हैं, कृपया सुनिश्चित करें कि यह आपका इच्छित परिणाम है!** `हाँ` या `ना` टाइप करें इसे पुष्टि या रद्द करने के लिए (60 सेकंड में समाप्त हो जाता है)।\n\n- दूरी: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- मॉडल का नाम: `${modelName}`",
		cancelled_wipe = "वाइप रद्द कर दिया गया है।",

		there_is_people_nearby = "आपके पास नॉक्लिप का उपयोग करने से पहले निकटतम सम्भवतः खिलाड़ियों हैं!",

		cant_while_spectating = "आप इसे देखते हुए नहीं कर सकते।",

		you_have_been_kicked = "${kicker} द्वारा आपको कारण `${reason}` के लिए निकाल दिया गया है।",
		you_have_been_kicked_no_reason = "${kicker} द्वारा बिना किसी विशिष्ट कारण के आपको निकाल दिया गया है।",

		logs_player_kicked_title = "खिलाड़ी को निकाला गया",
		logs_player_kicked_details = "${consoleName} को ${kicker} द्वारा कारण `${reason}` के लिए सर्वर से निकाल दिया गया है।",
		logs_player_kicked_no_reason_details = "${consoleName} को ${kicker} द्वारा किसी विशिष्ट कारण के बिना सर्वर से निकाल दिया गया है।",

		you_have_been_banned = "आपको ${banner} द्वारा `${reason}` कारण के लिए उपयोग से प्रतिबंधित कर दिया गया है।",
		you_have_been_banned_no_reason = "आपको ${banner} द्वारा कोई निर्दिष्ट कारण युक्त नहीं किया गया है।",

		banner_name_generic = "एक स्टाफ सदस्य",

		ban_alert_title = "सर्वर से बैन",
		ban_alert_description_banner = "आपको `${banner}` द्वारा `${reason}` के कारण स्वचालित रूप से बैन कर दिया जाता होता।",
		ban_alert_description = "आपको कारण `${reason}` के लिए सिस्टम द्वारा स्वचालित रूप से प्रतिबंधित कर दिया जाता है।",

		logs_player_banned_title = "खिलाड़ी पर प्रतिबंध लगाया गया है",
		logs_player_banned_system_title = "खिलाड़ी पर सिस्टम द्वारा प्रतिबंध लगाया गया है",
		logs_player_banned_details = "${consoleName} को ${banner} द्वारा कारण `${reason}` के लिए सर्वर से प्रतिबंधित कर दिया गया है।",
		logs_player_banned_no_reason_details = "${consoleName} को ${banner} द्वारा सर्वर से निष्कासित कर दिया गया है बिना किसी विशिष्ट कारण के।",

		player_kicked = "${consoleName} को सर्वर से निष्कासित कर दिया गया है।",
		player_banned = "${consoleName} को सर्वर से निष्कासित कर दिया गया है।",

		ban_double_kill = "डबल किल!",
		ban_triple_kill = "😧 तिहड़े किल!!!",
		ban_quadrouple_kill = "😨 कुवाड्रपल किल!!!!!!",
		ban_killing_spree = "🤯 किलिंग स्प्री (${count})!!!!!!",

		kick_player_not_staff = "एक खिलाड़ी को थोक देने की कोशिश की जा रही है जिसके पास सही अनुमतियां नहीं हैं।",
		ban_player_not_staff = "इसके पास सही अनुमतियाँ नहीं होने के कारण एक खिलाड़ी को निषेध करने का प्रयास किया गया।",

		hide_staff_not_staff = "अपनी कर्मचारी स्थिति को छिपाने का प्रयास किया गया लेकिन सही अनुमतियों के बिना।",
		toggle_staff_not_staff = "सही अनुमतियों के बिना कर्मचारी उपलब्धता टॉगल करने का प्रयास किया गया।",

		logs_hide_staff_title = "कर्मचारी छिपा हुआ",
		logs_hide_staff_hidden_details = "${consoleName} ने अपनी कर्मचारी स्थिति छिपाई है।",
		logs_hide_staff_shown_details = "${consoleName} ने अपनी कर्मचारी स्थिति दिखाई है।",

		logs_toggle_staff_title = "कर्मचारी टॉगल",
		logs_toggle_staff_off_details = "${consoleName} ने अपनी कर्मचारी उपलब्धता को बंद कर दिया है।",
		logs_toggle_staff_on_details = "${consoleName} ने अपनी कर्मचारी उपलब्धता सक्षम कर दी है।",

		staff_hidden = "आपकी कर्मचारी स्थिति अब छिपी हुई है।",
		staff_shown = "आपकी कर्मचारी स्थिति अब दिखाई दी जा रही है।",
		staff_toggled_on = "आपकी कर्मचारी उपलब्धता चालू कर दी गई है।",
		staff_toggled_off = "आपकी कर्मचारी उपलब्धता बंद कर दी गई है।",

		staff_feature_unavailable = "यह सुविधा आपकी कर्मचारी उपलब्धता बंद होने पर उपलब्ध नहीं है।",

		failed_toggle_tracker = "प्लेयर ट्रैकर टॉगल करने में असफल।",
		unable_track_player = "प्लेयर को ट्रैक नहीं कर सका।",
		success_enable_tracker = "${playerName} के लिए प्लेयर ट्रैकर सफलतापूर्वक सक्रिय किया गया।",
		success_disable_tracker = "प्लेयर ट्रैकर बंद करने में सफल।",
		not_tracking_player = "आप किसी प्लेयर को ट्रैक नहीं कर रहे हैं।",
		already_tracking_player = "आप पहले से ही एक प्लेयर को ट्रैक कर रहे हैं।",

		toggle_player_track_no_permissions = "अनुमतियों के बिना प्लेयर ट्रैकिंग को टॉगल करने का प्रयास किया गया।",
		set_job_no_permissions = "अनुमतियों के बिना नौकरी सेट करने का प्रयास किया गया।",
		toggle_reflection_no_permissions = "प्रचार की सही अनुमतियाँ न होने के कारण हमेशा चोट अभिव反射 को टॉगल करने का प्रयास किया गया।",

		success_enable_reflection = "अभिव反फलक सफलतापूर्वक सक्षम कर दिया गया।",
		success_disable_reflection = "अभिव反फलक सफलतापूर्वक अक्षम कर दिया गया।",
		failed_toggle_reflection = "अभिव反फलक को टॉगल करने में विफल रहा।",

		reflection_logs_title = "अभिव反फलक टॉगल किया",
		reflection_logs_enabled_details = "${consoleName} ने अभिव反फलक को चालू कर दिया है।",
		reflection_logs_disabled_details = "${consoleName} ने अभिव反फलक को बंद कर दिया है।",

		headache_logs_title = "हेडेच ट्रिगर हुआ",
		headache_logs_details = "${consoleName} ने ${targetConsoleName} के लिए एक हेडेच ट्रिगर किया है।",
		trigger_headache_no_permissions = "उचित अनुमतियां न होने के कारण हेडेच ट्रिगर करने का प्रयास किया गया।",

		success_trigger_headache = "${playerName} के लिए हेडेच सफलतापूर्वक ट्रिगर किया गया।",
		failed_trigger_headache = "हेडेच ट्रिगर करने में विफल रहा।",

		protective_mode_not_staff = "उचित अनुमतियों के बिना सर्वर संरक्षक मोड को टॉगल करने का प्रयास किया गया।",
		protective_mode_toggled_on = "सर्वर संरक्षक मोड अब सक्षम हो गया है। सर्वर से कनेक्ट होने के लिए आवश्यक खेलने का समय `${playtime}` पर सेट किया गया है।",
		protective_mode_toggled_off = "सर्वर संरक्षक मोड अब बंद हो गया है।",
		protective_mode_already_on = "सर्वर संरक्षक मोड पहले से ही `${playtime}` समय के लिए सक्षम है।",
		protective_mode_already_off = "सर्वर संरक्षक मोड पहले से ही अक्षम है।",
		logs_protective_mode = "सर्वर संरक्षण मोड",
		logs_protective_mode_on = "${consoleName} ने अनिवार्य खेल के समय के साथ सर्वर संरक्षण मोड टॉगल किया है: `${playtime}`.",
		logs_protective_mode_off = "${consoleName} ने सर्वर संरक्षण मोड बंद किया है।",

		spawn_item_not_staff = "परवर्तक अनुमतियों के बिना एक वस्तु का निर्माण करने का प्रयास किया गया",
		no_item_name = "कोई वस्तु का नाम उपलब्ध नहीं है।",
		invalid_item_name = "${itemName} एक मान्य आइटम नाम नहीं है।",
		item_spawned = "${consoleName} के लिए ${amount}x `${itemName}` उत्पन्न हुआ।",
		item_spawned_for_everyone = "${amount}x `${itemName}` को सभी के लिए स्पॉन किया गया।",

		set_warning_message_not_staff = "उचित अनुमति के बिना सर्वर चेतावनी संदेश सेट करने का प्रयास किया गया।",
		warning_message_set_to = "चेतावनी संदेश `${warningMessage}` सेट कर दिया गया है।",
		warning_message_removed = "चेतावनी संदेश हटा दिया गया है।",
		warning_message_error = "चेतावनी संदेश सेट करने के दौरान त्रुटि हुई।",
		warning_message_identical = "आप चेतावनी संदेश को वही सेट करने में असमर्थ हैं जिसे पहले से ही सेट किया गया है।",
		warning_message_set_to_title = "सावधानी संदेश सेट किया गया",
		warning_message_set_to_details = "${consoleName} ने सावधानी संदेश `${warningMessage}` सेट किया है।",
		warning_message_removed_title = "सावधानी संदेश हटाया गया",
		warning_message_removed_details = "${consoleName} ने सावधानी संदेश हटा दिया है।",

		indestructibility_on = "अविनाशी को चालू किया गया।",
		indestructibility_off = "अविनाशी को बंद किया गया।",
		speed_boost_on = "स्पीड बूस्ट को चालू किया गया।",
		speed_boost_off = "स्पीड बूस्ट को बंद किया गया।",
		nitro_boost_on = "नाइट्रो बूस्ट' ऑन कर दिया गया।",
		nitro_boost_off = "नाइट्रो बूस्ट 'ऑफ' कर दिया गया।",
		no_nearby_vehicles_on = "निकट के वाहनों को अक्षम करने के लिए टॉगल किया गया।",
		no_nearby_vehicles_off = "निकट के वाहनों को चालू करने के लिए टॉगल किया गया।",
		speed_up_progress_bar_on = "प्रगति पट्टी को तेज करने के लिए टॉगल किया गया।",
		speed_up_progress_bar_off = "प्रगति पट्टी को नॉर्मल स्थिति में लाने के लिए टॉगल किया गया।",
		invisibility_on = "अदृश्यता ऑन कर दी गई।",
		invisibility_off = "अदृश्यता ऑफ कर दी गई।",
		wallhack_on = "दीवारों को देखने के लिए टॉगल किया गया।",
		wallhack_off = "दीवारों के दृश्य ऑफ कर दिया गया।",
		aimbot_on = "टॉगल 'Aimbot' चालू किया।",
		aimbot_off = "टॉगल 'Aimbot' बंद कर दिया।",
		player_bones_on = "टॉगल 'प्लेयर बोन्स' चालू किया।",
		player_bones_off = "टॉगल 'प्लेयर बोन्स' बंद कर दिया।",
		vehicle_smoke_on = "टॉगल 'वाहन धुंआ' चालू किया।",
		vehicle_smoke_off = "टॉगल 'वाहन धुंआ' बंद कर दिया।",

		peeking_on = "पीकिंग मोड चालू किया।",
		peeking_off = "पीकिंग मोड बंद कर दिया।",

		watching_on = "देख रहे मोड चालू किया।",
		watching_off = "देख रहे मोड बंद कर दिया।",
		watching_label = "${nearby} देख रहे हैं।",

		evidence_view_on = "सबूत देखने का मोड चालू किया।",
		evidence_view_off = "इस्तीफ़े के दृश्य को बंद कर दिया गया।",
		evidence_view_title = "इस्तीफ़े के दृश्य टॉगल किए गए",
		evidence_view_details_on = "${consoleName} ने एडवांस्ड इस्तीफ़े दृश्य को चालू किया।",
		evidence_view_details_off = "${consoleName} ने एडवांस्ड इस्तीफ़े दृश्य को बंद किया।",

		report_muted_no_reason = "बिना किसी विशेष कारण के, रिपोर्ट कमांड से आपकी बोलबाला बंद की गई है।",
		report_muted = "कारण: `${reason}` के लिए रिपोर्ट कमांड से आपकी बोलबाला बंद की गई है।",

		already_sending_report = "आप पहले से ही एक रिपोर्ट भेज रहे हैं। कृपया प्रतीक्षा करें।",
		unable_to_send_identical_report = "आप दो एक समान रिपोर्ट लगातार नहीं भेज सकते।",

		already_sending_staff_message = "आप पहले से ही एक स्टाफ संदेश भेज रहे हैं। कृपया प्रतीक्षा करें।",
		unable_to_send_identical_staff_message = "30 सेकंड के भीतर एक समान स्टाफ संदेश भेजना असंभव है।",

		tp_coords_invalid_coordinates = "अमान्य निर्देशांक।",
		tp_coords_teleported_to_coordinates = "निर्देशांक X: ${x}, Y: ${y}, Z: ${z} पर टेलीपोर्ट किया गया।",

		teleported_to_waypoint = "${locationLabel} पर वेपॉइंट पर टेलीपोर्ट किया गया है।",
		no_waypoint_set = "आपको एक waypoint सेट करना होगा।",

		teleported_to_coordinates_logs_title = "निर्देशांक में टेलीपोर्ट किया",
		teleported_to_coordinates_logs_details = "${consoleName} निर्देशांक में टेलीपोर्ट किया X: ${x}, Y: ${y}, Z: ${z}।",
		teleported_to_waypoint_logs_title = "Waypoint में टेलीपोर्ट किया",
		teleported_to_waypoint_logs_details = "${consoleName} ${locationLabel} में एक waypoint को टेलीपोर्ट किया।",

		teleport_to_coordinates_not_staff = "खिलाड़ी निर्देशांक में टेलीपोर्ट करने का प्रयास करने के बावजूद उनकी स्थिति staff नहीं है।",
		teleport_to_waypoint_not_staff = "यह खिलाडी टेलीपोर्ट करने की कोशिश किया, लेकिन वह स्टाफ नहीं है।",

		failed_isolate = "खिलाडी को अलग करने में विफल रहा।",
		invalid_server_id = "अमान्य सर्वर आईडी।",
		isolate_success_on = "${consoleName} को सफलतापूर्वक अलग कर दिया गया है।",
		isolate_success_off = "${consoleName} को अलग करना बंद कर दिया गया है।",

		isolate_missing_permissions = "खिलाडी ने अन्य खिलाड़ी को अलग करने का प्रयास किया है, लेकिन उनके पास उचित अनुमतियाँ नहीं थीं।",

		population_density_set_to = "आबादी घनत्व मल्टीप्लायर अधिरोहण लगाया गया है जो ${multiplierLabel}% है।",
		population_density_set_off = "आबादी घनत्व गुणाकार का ओवरराइड बंद हो गया है।",
		population_density_is_not_on = "आबादी घनत्व गुणाकार विधि बंद नहीं है।",
		population_density_already_set_to = "आबादी घनत्व गुणाकार विधि पहले ही ${multiplierLabel}% से सेट हो चुकी हैं।",

		population_density_not_super_admin = "खिलाड़ी ने अनुमतियां न होने के कारण आबादी घनत्व सेट करने का प्रयास किया है।",

		enabled_features_list = "सक्रिय सुविधाएँ:",
		aimbot_feature = "Aimbot",
		disabled_collisions_feature = "संघर्षों को अक्षम करें",
		disabled_recoil_feature = "रिकॉइल अक्षम करें",
		evidence_view_feature = "साक्ष्य दृश्य",
		hit_indicator_feature = "हिट इंडिकेटर",
		indestructibility_feature = "विनाशकारिता",
		infinite_ammo_feature = "असीमित गोला-बारूद",
		invisibility_feature = "अदृश्यता",
		muted_sirens_feature = "म्यूटेड साइरन्स",
		nitro_boost_feature = "नाइट्रो बूस्ट",
		no_nearby_vehicles_feature = "पास में कोई वाहन नहीं",
		peeking_feature = "झांकना",
		roll_control_feature = "रोल नियंत्रण",
		speed_boost_feature = "गति बढ़ाओ",
		speed_up_progress_bar_feature = "प्रगति बार को त्वरित करें",
		sticky_feet_feature = "चिपकने वाले पैर",
		wallhack_feature = "वॉलहैक",
		watching_feature = "देखभाल",
		fortnite_feature = "फोर्टनाइट",
		reflection_feature = "चोट अभिव反फलक",
		stable_cam_feature = "स्थिर कैमरा",

		you_are_not_in_a_vehicle = "आप गाड़ी में नहीं हों।",
		repaired_vehicle = "ठीक की गई गाड़ी।",

		success_nos_refill = "NOS को सफलतापूर्वक भरा गया।",
		failed_nos_refill = "NOS को भरने में विफल रहा।",

		refill_nitro_missing_permissions = "खिलाड़ी ने अनुमतियों के बिना अपने NOS को भरने का प्रयास किया।",

		register_invalid_character_id = "अवैध चरित्र आईडी।",
		register_invalid_slot = "अवैध इन्वेंटरी स्लॉट।",
		register_weapon_success = "${cid} वाले चरित्र को स्लॉट ${slotId} में हथियार सफलतापूर्वक रजिस्टर किया गया।",
		register_weapon_failed = "हथियार रजिस्टर करने में विफल रहा।",

		register_weapon_missing_permissions = "खिलाड़ी अनुमतियों के बिना एक हथियार को रजिस्टर करने का प्रयास किया।",

		vehicle_smoke_invalid_class = "इस वाहन वर्ग के लिए वाहन धुंएवाला सक्षम नहीं किया जा सकता।",

		repair_vehicle_not_super_admin = "खिलाड़ी अनुमतियों के बिना एक वाहन को मरम्मत करने का प्रयास किया।",

		repaired_vehicle_logs_title = "वाहन मरम्मत की गई",
		repaired_vehicle_logs_details = "${consoleName} ने अपनी गाड़ी को मरम्मत कराया।",

		unable_to_enter_vehicle_while_dead = "मृत्यु होने पर आप वाहन में नहीं बैठ सकते।",
		the_closest_vehicle_had_no_free_seats = "दूरबीन वाहन में कोई फ्री सीट नहीं मिली।",
		there_are_no_nearby_vehicles = "कोई पास में वाहन नहीं हैं।",
		vehicle_not_found_network = "नेटवर्क आईडी के साथ गाड़ी नहीं मिली।",
		entered_vehicle = "आसपास के ${vehicleName} में बैठने का प्रयास किया गया।",

		set_vehicle_modifications_logs_title = "वाहन संशोधन सेट करें",
		set_vehicle_modifications_logs_details = "${consoleName} ने `${vehiclePlate}` नंबर प्लेट वाली वाहन के लिए वाहन संशोधन सेट किए। सेट की गई संशोधन इस प्रकार थे: मॉड टाइप-${modType}, मॉड इंडेक्स-${modIndex}, कस्टम टायर-${customTires}।",

		set_vehicle_livery_logs_title = "वाहन लिवरी सेट करें",
		set_vehicle_livery_logs_details = "${consoleName} ने प्लेट `${vehiclePlate}` वाले वाहन की लिवरी `${liveryIndex}` पर सेट की।",

		set_livery_missing_permissions = "खिलाड़ी ने सही अनुमतियां न होने के कारण वाहन की लिवरी सेट करने का प्रयास किया।",
		set_modifications_missing_permissions = "खिलाड़ी ने सही अनुमतियां न होने के कारण वाहन का संशोधन सेट करने का प्रयास किया।",

		set_vehicle_modification = "वाहन मॉडिफिकेशन `${modType}` के लिए `${modIndex}` इंडेक्स वाले वाहन का संशोधन सेट किया गया। (कस्टम टायर: ${customTires})",
		mod_index_invalid_for_type = "मॉड इंडेक्स `${modIndex}` मॉड प्रकार `${modType}` के लिए अवैध है।",
		mod_type_invalid = "मॉड प्रकार `${modType}` अवैध है।",
		no_mod_type_set = "कोई मॉड प्रकार सेट नहीं है।",

		set_vehicle_livery = "वाहन का लिवरी `${liveryIndex}` के रूप में सेट करें।",
		no_livery_index_set = "कोई लिवरी इंडेक्स सेट नहीं है (न्यूनतम: 1)।",
		you_are_not_the_driver = "आप वाहन के चालक नहीं हैं।",
		vehicle_is_not_a_plane_or_heli = "वाहन विमान या हेलिकॉप्टर नहीं है।",
		livery_index_invalid = "अवैध लिवरी इंडेक्स (अधिकतम: ${maxLiveries})।",
		vehicle_has_no_liveries = "गाड़ी में कोई लिवरी नहीं है।",

		invalid_plate_number = "अवैध प्लेट नंबर।",
		set_fake_plate_number = "गाड़ी के लिए प्लेट नंबर `${plateNumber}` सेट किया गया।",

		invalid_dirt_level = "अवैध मैला स्तर।",
		set_dirt_level = "गाड़ी का मैला स्तर `${dirtLevel}` सेट किया गया।",

		set_dirt_level_not_super_admin = "खिलाड़ी ने गाड़ी के मैला स्तर को सेट करने की कोशिश की बिना उचित अनुमतियों के साथ।",

		set_fake_plate_not_super_admin = "खिलाड़ी ने गाड़ी के नकली प्लेट को सेट करने की कोशिश की बिना उचित अनुमतियों के साथ।",

		already_fake_disconnecting = "आप पहले से ही नकली डिस्कनेक्ट करने की कोशिश कर रहे हैं। कृपया प्रतीक्षा करें।",
		started_fake_disconnect = "नकली डिस्कनेक्ट शुरू कर दिया गया है। बंद करने के लिए कमांड दोहराएँ।",
		stopped_fake_disconnect = "नकली डिस्कनेक्ट बंद कर दिया गया है।",

		fake_disconnect_not_super_admin = "खिलाड़ी उचित अनुमतियों के बिना नकली डिस्कनेक्ट करने की कोशिश की।",

		disabled_idle_cam = "आईडल कैम अक्षम कर दिया गया है।",
		enabled_idle_cam = "आईडल कैम को पुनः सक्षम किया गया है।",

		created_vehicle_smoke_for_player_logs_title = "वाहन धुआं बनाया गया",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} ने वाहन धुआं बनाया।",

		player_info_not_staff = "उचित अनुमति के बिना एक खिलाड़ी के चरित्र जानकारी प्राप्त करने का प्रयास किया गया।",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\n${playtime} खेले गए हैं।\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "अनुपात में अनुपात नाम अभाव है।",
		force_inventory_missing_perms = "उचित अनुमति के बिना एक इनवेंटरी को बलब्‍द्ध करने का प्रयास किया गया।",

		auto_driving_engaged = "ऑटो चलाने को सक्रिय किया गया है (स्टाइल: ${style})।",
		auto_driving_updated = "ऑटो चलाने की गति/स्थान अपडेट किया गया।",
		auto_driving_disengaged = "ऑटो चलाने बंद किया गया।",
		not_auto_driving = "आप ऑटो चलाने में नहीं हैं।",
		invalid_auto_drive_speed = "ऑटो चलाने की गति अमान्य या अनुपलब्ध है।",
		reset_auto_drive_speed = "ऑटो चलाने की गति को डिफ़ॉल्ट मूल्य पर रीसेट किया गया।",
		set_auto_drive_speed = "${speed} mph की ऑटो चलाने की गति सेट की गई है।",

		disable_collisions_on = "अपनी टकरावों को बंद कर दिया गया है।",
		disable_collisions_off = "अपनी टकरावों को फिर से सक्षम किया गया है।",
		failed_toggle_collisions = "अक्षम टकरावों को टॉगल करने में विफल रहा।",

		disabled_recoil_on = "रिकॉइल अक्षम कर दिया गया।",
		disabled_recoil_off = "रिकॉइल सक्षम कर दिया गया।",

		attachment_missing = "अटैचमेंट पैरामीटर अनुपलब्ध है।",
		no_weapon_equipped = "कोई हथियार सामने नहीं है।",
		attachment_invalid = "अटैचमेंट अमान्य है या यह हथियार के लिए उपलब्ध नहीं है।",
		attachment_failed_toggle = "इस हथियार पर अटैचमेंट टॉगल करने में विफल रहा।",
		attachment_on = "'${attachment}' अटैचमेंट सफलतापूर्वक ऑन किया गया।",
		attachment_off = "'${attachment}' अटैचमेंट सफलतापूर्वक ऑफ किया गया।",

		tint_invalid = "अमान्य हथियार टिंट।",
		tint_range_invalid = "अमान्य हथियार टिंट सीमा (0 और ${max} के बीच होनी चाहिए)।",
		tint_failed_set = "हथियार टिंट सेट करने में विफल।",
		tint_removed = "हथियार टिंट सफलतापूर्वक हटा दिया।",
		tint_set = "हथियार टिंट सफलतापूर्वक सेट किया गया `${tint}` (${tintIndex})।",
		no_weapon_tint = "इस हथियार के पास टिंट नहीं है।",

		weapon_attachment_missing_perms = "विनंती किए गए हथियार अटैचमेंट को सही अनुमति के बिना टॉगल करने का प्रयास किया गया।",
		weapon_tint_missing_perms = "सही अनुमति के बिना हथियार टिंट सेट करने का प्रयास किया गया।",

		no_attachments = "कोई अटैचमेंट नहीं",
		available_attachments = "उपलब्ध अटैचमेंट्स",
		current_attachments = "वर्तमान अटैचमेंट्स",
		no_attachments = "कोई अटैचमेंट नहीं",
		attachments_list = "अटैचमेंट्स:",
		tint_label = "Tint: \"${tintLabel}\" (${tintIndex})",

		item_name_failed_set = "आइटम नेम ओवरराइड सेट करने में असफल।",
		item_name_removed = "आइटम नेम ओवरराइड सफलतापूर्वक हटा दिया गया।",
		item_name_set = "आइटम नेम ओवरराइड को '${itemName}' सफलतापूर्वक सेट किया गया।",
		item_name_invalid_slot = "अमान्य या अनुपलब्ध आइटम स्लॉट।",

		cleaned_ped = "${consoleName} के ped को सफलतापूर्वक साफ किया गया।",
		cleaned_ped_self = "आपके पेड को सफलतापूर्वक साफ कर दिया गया।",
		clean_ped_failed = "पेड को साफ करने में विफल रहा।",
		cleaned_ped_for_all = "सभी लोगों के पेडों को सफलतापूर्वक साफ कर दिया गया।",
		clean_ped_no_permission = "अनुमतियां न होने के कारण किसी खिलाड़ी के पेड को साफ करने का प्रयास किया गया।",

		item_durability_set_success = "स्लॉट ${slotId} के आइटम के लिए सफलतापूर्वक धात्वीयता को ${amount}% पर सेट कर दिया गया।",
		item_durability_set_failed = "धात्वीयता सेट करने में विफल रहा।",
		item_durability_invalid_amount = "अवैध धात्वीयता राशि (0 <> 100)।",
		item_durability_set_no_permission = "अनुमतियां न होने के कारण किसी आइटम की धात्वीयता सेट करने का प्रयास किया गया।",

		item_metadata_set_no_permission = "आवश्यक अनुमति के बिना आइटम के मेटाडाटा को सेट करने का प्रयास किया गया।",
		item_metadata_invalid_metadata = "अमान्य आइटम मेटाडाटा।",
		item_metadata_set_success = "स्थान ${slotId} में आइटमों के मेटाडाटा सफलतापूर्वक सेट किए गए।",
		item_metadata_set_failed = "मेटाडाटा सेट करने में विफल।",

		advanced_metagame_on = "उन्नत मेटागेम चालू कर दिया गया।",
		advanced_metagame_off = "उन्नत मेटागेम बंद कर दिया गया।",

		identity_set = "अपनी पहचान को `${name}` पर सफलतापूर्वक सेट किया गया।",
		identity_reset = "अपनी पहचान को सफलतापूर्वक रीसेट किया गया।",
		identity_set_failed = "आपकी पहचान सेट करने में विफल रही।",
		identity_hud = "पहचान: ${playerName}",

		set_identity_no_permission = "खिलाड़ी ने अपने खिलाड़ी नाम को उचित अनुमतियों के बिना सेट करने का प्रयास किया।",

		invalid_range_parameter = "अवैध रेंज पैरामीटर।",
		wipe_first_owned_success = "सफलतापूर्वक सर्वर आईडी `${serverId}` के साथ खिलाड़ी द्वारा पहले स्वामित्व में रखी गई सभी ${amount} इकाइयों को हटा दिया गया।",
		wipe_first_owned_success_range = "सफलतापूर्वक ${range} मीटर दायरे में सर्वर आईडी `${serverId}` के साथ खिलाड़ी द्वारा पहले स्वामित्व में रखी गई सभी ${amount} इकाइयों को हटा दिया गया।",
		wipe_first_owned_failed = "${serverId} सर्वर आईडी वाले खिलाड़ी द्वारा पहले स्वामित्व वाले इंटिटीस हटाने में विफल रहा।",

		invalid_radius_parameter = "अमान्य त्रिज्या (1 और 500 के बीच)।",
		scooped_up_players = "${amount} खिलाड़ी(ओं) को उठाया गया।",
		scoop_invalid = "आपने कोई खिलाड़ियों को नहीं उठाया है।",
		unscooped_players = "${total} खिलाड़ी(ओं) में से ${amount} अपनी जगह पर वापस आ गए।",
		unscoop_failed = "खिलाड़ियों को वापस लाने में विफल रहा।",

		unscoop_missing_permissions = "खिलाड़ी उठाने का प्रयास करने वाला अनुमतियाँ ना होने के कारण विफल रहा।",

		toggle_collisions_missing_permissions = "प्लेयर अपनी टकरावों को टॉगल करने का प्रयास कर रहा है, लेकिन इसके लिए उचित अनुमतियाँ नहीं हैं।",
		wipe_first_owned_missing_permissions = "खिलाड़ी ने सही अनुमति के बिना पहले स्वामित्व वाले इकाइयों को मिटाने का प्रयास किया।",

		freeze_missing_permissions = "खिलाड़ी ने सही अनुमति के बिना दूसरे खिलाड़ी को जमाना या अनजमाना करने का प्रयास किया।",

		freeze_success = "${consoleName} को सफलतापूर्वक जमाया गया।",
		failed_freeze = "खिलाड़ी को जमाने में विफल रहा।",
		unfreeze_success = "${consoleName} को सफलतापूर्वक अनजमाया गया।",
		failed_unfreeze = "खिलाड़ी को अनजमाने में विफल रहा।",

		freeze_logs_title = "खिलाड़ी को जमाना",
		freeze_logs_details = "${consoleName} ने ${targetName} को जमाया।",
		unfreeze_logs_title = "खिलाड़ी को अनफ्रोज़ करें",
		unfreeze_logs_details = "${consoleName} ने ${targetName} को अनफ्रोज़ कर दिया।",

		slap_kill_reason = "स्लैप कर दिया",
		slap_success = "सफलतापूर्वक ${consoleName} को स्लैप किया गया।",
		slap_failed = "खिलाड़ी को स्लैप करने में विफल रहा।",
		slap_logs_title = "खिलाड़ी को स्लैप करें",
		slap_logs_details = "${consoleName} ने ${targetName} को स्लैप किया।",
		slap_missing_permissions = "खिलाड़ी ने दूसरे खिलाड़ी को स्लैप करने की अनुमति नहीं हैं।",

		damaged_player = "${consoleName} को ${damage} नुकसान पहुंचाया गया।",
		damage_player_failed = "खिलाड़ी को नुकसान पहुंचाने में विफल रहा।",
		damage_player_logs_title = "प्लेयर को नुकसान पहुंचाया गया",
		damage_player_logs_details = "${consoleName} ने ${targetConsoleName} को ${damage} नुकसान पहुंचाया है।",
		damage_player_missing_permissions = "खिलाड़ी ने सही अनुमतियां न होने के कारण दूसरे खिलाड़ी को नुकसान पहुंचाने का प्रयास किया।",

		refill_nitro_logs_title = "नाइट्रो भराया गया",
		refill_nitro_logs_details = "${consoleName} ने अपना नाइट्रो भराया है।",

		isolated_logs_title = "प्लेयर अलग किया गया",
		isolated_off_logs_details = "${consoleName} ${targetName} का अलग करना बंद किया है।",
		isolated_on_logs_details = "${consoleName} ${targetName} का अलग करना शुरू किया है।",

		character_data_logs_title = "करैक्टर डेटा",
		character_data_logs_details = "${consoleName} ने ${targetName} के करैक्टर डेटा की जाँच की (CID: ${characterId})।",

		item_name_logs_title = "नाम अधिलेखणी",
		item_name_logs_details = "${consoleName} ने स्लॉट ${slot} में आइटमों का नाम बदल दिया `${nameOverride}`।",

		toggle_attachment_logs_title = "अटैचमेंट टॉगल किया गया",
		toggle_attachment_logs_details = "${consoleName} ने `${attachment}` अटैचमेंट टॉगल किया।",

		tint_logs_title = "टिंट सेट किया गया",
		tint_logs_details = "${consoleName} ने अपने हथियार पर टिंट इंडेक्स सेट कर दिया ${tintIndex}।",

		population_multiplier_logs_title = "जनसंख्या गुणांक",
		population_multiplier_logs_details = "${consoleName} ने जनसंख्या गुणांक को ${populationMultiplier} पर सेट कर दिया।",

		fake_disconnect_logs_title = "फेक डिस्कनेक्ट",
		fake_disconnect_on_logs_details = "${consoleName} ने अपना फेक डिस्कनेक्ट ऑन किया।",
		fake_disconnect_off_logs_details = "${consoleName} ने अपना फेक डिस्कनेक्ट ऑफ किया।",

		identity_logs_title = "पहचान ओवरराइड",
		identity_on_logs_details = "${consoleName} ने अपनी पहचान को `${playerName}` पर सेट कर दिया।",
		identity_off_logs_details = "${consoleName} ने अपनी पहचान रीसेट कर दी।",

		clean_ped_logs_title = "पेड साफ किया गया",
		clean_ped_logs_details = "${consoleName} ने ${targetName} के पेड को साफ कर दिया।",

		collisions_logs_title = "टक्करों का पता चलाया",
		collisions_off_logs_details = "${consoleName} ने अपनी अक्षम टक्करों को बंद कर दिया।",
		collisions_on_logs_details = "${consoleName} ने अपने अक्षम टक्करों को चालू कर दिया।",

		invalid_job_search = "अमान्य नौकरी खोज (कम से कम 3 अक्षर होने चाहिए)।",
		failed_job_search = "नौकरियों की खोज विफल रही।",
		job_search_no_results = "कोई नौकरियां नहीं मिलीं।",
		job_search_results = "सेट ${consoleName} की नौकरी को \"${jobName}, ${departmentName}, ${positionName}\" (स्कोर: ${score}) करें।",

		job_reset_success = "${consoleName} के लिए नौकरी सफलतापूर्वक रीसेट की गई।",
		failed_job_reset = "नौकरी रीसेट करने में विफल।"
	},

	anti_cheat = {
		illegal_client_event = "सीधा जेल चले जाइये। $200 नहीं मिलेंगे।",
		illegal_server_event = "सीधा जेल चले जाइये। $200 नहीं मिलेंगे।",
		bad_entity_spawn = "मॉडल नाम `${modelName}` के साथ एक संकल्प उत्पन्न किया।",
		bad_entity_title = "बुरा इंटिटी स्पॉन हुआ",
		bad_entity_message = "${consoleName} ने मॉडल नेम `${modelName}` वाली इंटिटी स्पॉन की।",
		detected_entity_title = "पता चला इंटिटी स्पॉन हुई",
		detected_entity_message = "${consoleName} ने मॉडल नेम `${modelName}` वाली इंटिटी स्पॉन की।",
		added_model_to_list = "डिटेक्शन सूची में मॉडल `${modelName}` (${modelHash}) को जोड़ा गया।",
		model_already_added_to_list = "मॉडल `${modelName}` (${modelHash}) पहले से ही डिटेक्शन सूची में है।",
		removed_model_to_list = "डिटेक्शन सूची से मॉडल `${modelName}` (${modelHash}) को हटा दिया गया है।",
		model_not_in_list = "मॉडल `${modelName}` (${modelHash}) को पहचान सूची में नहीं जोड़ा गया है।",
		set_model_detected_not_staff = "खिलाड़ी ने पहचान सूची में एक मॉडल को जोड़ने का प्रयास किया, लेकिन उसके पास इसे करने के लिए सही अनुमतियां नहीं थीं।",
		set_model_undetected_not_staff = "खिलाड़ी ने पहचान सूची से एक मॉडल को हटाने का प्रयास किया, लेकिन उसके पास इसे करने के लिए सही अनुमतियां नहीं थीं।",
		add_detection_area_not_staff = "खिलाड़ी ने एक पहचान क्षेत्र जोड़ने का प्रयास किया, लेकिन उसके पास इसे करने के लिए सही अनुमतियां नहीं थीं।",
		remove_detection_area_not_staff = "खिलाड़ी ने एक पहचान क्षेत्र हटाने का प्रयास किया, लेकिन उसके पास इसे करने के लिए सही अनुमतियां नहीं थीं।",
		detection_area_close = "[${InteractionKey}] हटाएं डिटेक्शन एरिया (${areaId})",
		detection_area = "डिटेक्शन एरिया (${areaId})",

		ban_notification_title = "एंटी-चीट",
		ban_notification = "${consoleName} को `${banReason}` के लिए बैन कर दिया गया।",

		bad_screen_word_ban = "हमने खुली पुस्तक परीक्षाओं के बारे में सुना है, लेकिन ये अनुचित है।",
		blacklisted_command_ban = "माफ़ कीजिये, लेकिन आपके पास इस कमांड को प्रदर्शित करने की अनुमति नहीं है। अगर आपको लगता है कि ये त्रुटि है तो कृपया सर्वर प्रशासकों से संपर्क करें।",
		damage_modifier_ban = "आपकी शक्ति स्तर 9000 से ऊपर नहीं हो सकता।",
		distance_taze_ban = "आपके दूरस्थ हलके कार्य की कोई प्रशंसा नहीं की गई।",
		fast_movement_ban = "इस सर्वर पर उड़न नहीं सक्षम है।",
		freecam_ban = "आपको लगता है कि आपका शरीर से अलग होने का एक अनुभव था।",
		honeypot_ban = "आपने अपने नृत्यात्मक मोड को टॉगल करने का प्रयास किया था, लेकिन आपके पास इसे करने के अनुमति नहीं थी।",
		hotwire_driving_ban = "व्रूम व्रूम, में अपनी माँ की गाड़ी में हूं।",
		illegal_freeze_ban = "क्या आप जानते हैं कि गर्म खाने की तुलना में फ्रोजन खाना बहुत अधिक अच्छा होता है?",
		illegal_ped_change_ban = "स्वयं पर प्लास्टिक सर्जरी करना खतरनाक होता है।",
		illegal_spectating_ban = "आप अन्य खिलाड़ियों को देखने के लिए एफआईबी एजेंट होना चाहिए या फिर /gamemode spectator का उपयोग करना चाहिए।",
		illegal_vehicle_modifier_ban = "वैश्वीकरण में वैद्युतिन परिवर्तन नहीं कर सकते, यह केवल फ़ास्ट अंड फ्यूरियस के डॉम टोरेटो के लिए था।",
		invincibility_ban = "आप काले नाइट नहीं हैं, आप अविंचियबल नहीं हो सकते।",
		ped_spawn_ban = "आपने माइटोसिस का प्रयास किया था, लेकिन फोटोसिंथेसिस के लिए पर्याप्त सूरज नहीं था।",
		player_blips_ban = "हवाई अंतरिक्ष भरा हुआ है, यूएवी उपलब्ध नहीं है।",
		runtime_texture_ban = "आपके पास मॉड मेनू है, लेकिन इस्तेमाल करने नहीं है।",
		spiked_resource_ban = "अनुमति के बिना स्क्रिप्ट बदलना किसी कहानी के अंत को पसंद नहीं आने के कारण बदलने की कोशिश करने जैसा है।",
		text_entry_ban = "इस ब्राउज़र पर तत्काल आयात नहीं करने दिया जाता है।",
		thermal_night_vision_ban = "ब्राइटर नाइट्स की अनुमति नहीं है।",
		vehicle_modification_ban = "आप अपनी कार के हेडलाइट फ्लूड नहीं ढूंढ पाए।",
		vehicle_spam_ban = "काउंटर टेररिस्ट जीतते हैं।",
		vehicle_spawn_ban = "आपने माइनकार्ट पर रेडस्टोन का उपयोग करने की कोशिश की लेकिन पावर रेल नहीं थीं।",
		weapon_spawn_ban = "आपने फाइवएम के \"पे टू विन रूट\" की कोशिश की है, जहाँ आपने बैन होने के लिए भुगतान किया है।",

		mp_f_freemode_01_label = "महिला फ्रीमोड",
		mp_m_freemode_01_label = "पुरुष फ्रीमोड",
		player_one_label = "फ्रैंकलिन",
		player_two_label = "ट्रेवर",
		player_zero_label = "माइकल",

		notification_distance_taze = "एंटी-चीट: ${displayName} ने बहुत दूरी (${ distance}मीटर) से किसी को टेज़ किया है।",
		notification_bad_screen_word = "एंटी-चीट: ${displayName} के दृश्य पर ${count} ट्रिगर शब्द हैं।",

		notification_freecam_detected = "एंटी-चीट: फ्रीकैम पता चल गया है।",
		notification_illegal_vehicle_modifier = "एंटी-चीट: वाहन मोड़िफ़ायर है।",
		notification_illegal_vehicle_spawn = "एंटी-चीट: वाहन प्रकट हुआ है",
		notification_fast_movement = "एंटी-चीट: तेज गति",
		notification_illegal_freeze = "एंटी-चीट: अवैध जमाव",
		notification_invincibility = "एंटी-चीट: अविश्वसनीयता",
		notification_vehicle_modification = "एंटी-चीट: वाहन संशोधन",
		notification_damage_modifier = "एंटी-चीट: क्षति संशोधक",
		notification_illegal_weapon = "एंटी-चीट: अवैध हथियार",
		notification_spawned_object = "एंटी-चीट: मूर्ति उत्पन्न की गई",
		notification_driving_hotwire = "एंटी-चीट: हॉटवायर चलाते समय गाड़ी चलाना",

		ig_orleans_label = "Sasquatch",
		u_m_m_jesus_01_label = "यीशु",
		u_m_y_babyd_label = "बॉडीबिल्डर",
		u_m_y_imporage_label = "सुपरहीरो",
		a_m_m_bevhills_02_label = "सफेद आदमी",
		a_m_m_fatlatin_01_label = "मोटा आदमी",
		a_m_m_hasjew_01_label = "यहूदी बच्चों वाला",
		a_m_m_beach_01_label = "टॉपलेस पेड (काला, पुरुष)",
		a_m_m_beach_02_label = "टॉपलेस पेड (सफेद, पुरुष)",
		a_m_m_afriamer_01_label = "मोटे काले आदमी",
		ig_jimmydisanto_label = "जिमी",
		ig_jimmydisanto2_label = "जिमी 2",
		a_m_y_musclbeac_01_label = "आधी-नंगी समुद्र तट वाला आदमी",
		csb_ramp_marine_label = "मरीन वाला",
		s_f_y_stripperlite_label = "स्ट्रिपर पेड",
		mp_f_stripperlite_label = "स्ट्रिपर पेड 2",
		mp_m_marston_01_label = "हाथ-पैर गायब",
		mp_m_niko_01_label = "निको (GTA IV)",

		high_fov_warning = "आपकी फ़ील्ड ऑफ व्यू (FOV) असामान्य तरीके से अधिक है",
		high_fov_description = "यह शायद फ़ील्ड ऑफ व्यू (FOV) मॉडिफायर के कारण हो रहा है।",
		high_fov_debug = "वर्तमान: ${fov}",

		illegal_oxy_run = "खिलाड़ी मानव सम्भव से अधिक धीमे अक्सी दौड़ को पूरा कर चुका है।",

		fast_movement_warning = "आपको ज्यादा तेज़ गति से होने के लिए फ्लैग किया गया है! कृपया एक डेवलपर को बताएं और उन्हें बताएं कि आप इसे कैसे बना रहे थे, क्योंकि आपको इस चैट संदेश को प्राप्त नहीं करना चाहिए।",
		invincibility_warning = "आपको अटल स्थिति होने के लिए झंझटलाया गया है! कृपया एक डेवलपर को सूचित करें और उन्हें बताएं कि आप इसे करने के लिए क्या कर रहे थे क्योंकि आपको इस चैट संदेश को प्राप्त नहीं करना चाहिए था।",
		damage_modifier_warning = "आपको अवैध हो गए होने के लिए झंझटलाया गया है! कृपया एक डेवलपर को सूचित करें और उन्हें बताएं कि आप इसे करने के लिए क्या कर रहे थे क्योंकि आपको इस चैट संदेश को प्राप्त नहीं करना चाहिए था।",
		freeze_warning = "आपको जमानती हो जाने के लिए झंझटलाया गया है जब आपको ऐसा नहीं होना चाहिए! कृपया एक डेवलपर को सूचित करें और उन्हें बताएं कि आप इसे करने के लिए क्या कर रहे थे क्योंकि आपको इस चैट संदेश को प्राप्त नहीं करना चाहिए था।",

		distance_taze_screenshot = "एंटी-चीट: दूरी टेज़ (${distance}मीटर)",
		spectating_screenshot = "एंटी-चीट: दर्शकता",
		fast_movement_screenshot = "एंटी-चीट: त्वरित गति",
		illegal_freeze_screenshot = "एंटी-चीट: अवैध फ्रीज",
		illegal_vehicle_modifier_screenshot = "एंटी-चीट: वाहन मोडिफ़ायर (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "एंटी-चीट: अवैध क्षति मोडिफ़ायर (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "एंटी-चीट: बनाया गया हथियार (${weaponLabel})",
		illegal_vehicle_spawn_screenshot = "एंटी-चीट: गाड़ी स्पॉन की (${modelName})",
		vehicle_modification_screenshot = "एंटी-चीट: वाहन संशोधित किया गया (${types})",
		thermal_night_vision_screenshot = "एंटी-चीट: थर्मल / नाइट विजन (${nativeName})",
		text_entry_screenshot = "एंटी-चीट: टेक्स्ट एंट्री (${textEntry})",
		player_blips_screenshot = "एंटी-चीट: खिलाड़ियों के ब्लिप",
		modified_fov_screenshot = "एंटी-चीट: FOV संशोधित किया गया (${fov})",
		ped_change_screenshot = "एंटी-चीट: अवैध पेड बदलाव",
		invincibility_screenshot = "एंटी-चीट: अमरत्व",
		runtime_texture_screenshot = "एंटी-चीट: रनटाइम टेक्सचर (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "एंटी-चीट: बुरे स्क्रीन वर्ड (${words})",
		freecam_detected_screenshot = "एंटी-चीट: फ्रीकैम का पता लगा (${distance} मीटर)",
		driving_hotwire_screenshot = "एंटी-चीट: हॉटवायर के दौरान गाड़ी चलाना"
	},

	authentication = {
		ip_not_found = "हम आपका आईपी पता नहीं निकाल पाएं।",
		authenticating_local_server = "स्थानीय सर्वर के साथ प्रमाणीकृत हो रहा है...",
		authenticating_global_server = "OP-FW सर्वरों के साथ प्रमाणीकृत हो रहा है...",
		error_fetching_data = "डेटा प्राप्त करते समय एक त्रुटि हुई।",
		region_blocked = "यह सर्वर आपके द्वारा कनेक्ट कर रहे क्षेत्र को ब्लॉक कर दिया है।",
		server_config_not_loaded = "सर्वर कॉन्फ़िगरेशन लोड नहीं हुआ है।",
		something_went_horribly_wrong = "कुछ गलत हो गया है। कृपया पुन: प्रयास करें।",
		local_firewall_enabled = "स्थानीय फ़ायरवॉल सक्षम है।",

		local_firewall_on = "ब्लॉक संदेश `${blockMessage}` के साथ स्थानीय फ़ायरवॉल सक्षम किया गया है।",
		local_firewall_re_enabled = "ब्लॉक संदेश `${blockMessage}` के साथ स्थानीय फ़ायरवॉल पुन: सक्षम किया गया है।",
		local_firewall_off = "स्थानीय फ़ायरवॉल अक्षम किया गया।",
		local_firewall_blocked = "स्थानीय फायरवाल: ${playerName} (${licenseIdentifier}) को ब्लॉक किया गया।",

		developer = "डेवलपर",
		super_admin = "सुपर एडमिन",
		staff = "स्टाफ",
		reconnect = "फिर से जुड़ें",
		random = "यादृच्छिक",
		beginner = "शुरुआत करने वाले",
		custom = "कस्टम",
		christmas = "क्रिसमस",
		casino = "कैसीनो",

		job_low = "कम नौकरी",
		job_medium = "मध्यम नौकरी",
		job_high = "उच्च नौकरी",

		banned_globally = "आपको सभी OP-FW सर्वरों से वैश्विक रूप से प्रतिबंधित कर दिया गया है।\n\nबैन हैश: ${banHash}\nबैन का कारण: ${banReason}\n\nयदि आपको लगता है कि यह एक गलत बैन है, तो कृपया OP-FW डिस्कॉर्ड गिल्ड में शामिल हों और अपील करने के बारे में जानकारी प्राप्त करें ${frameworkDiscord}।",
		banned_locally = "${communityName} से आपको प्रतिबंध लगा दिया गया है।\n\nबैन हैश: ${banHash}\n${creatorName} द्वारा प्रतिबंधित किया गया है\nबैन का कारण: ${banReason}\nटाइमस्टैम्प: ${timestamp}\n\n${indefiniteOrExpires}\n\nअपील करने के लिए हमारे डिस्कॉर्ड गिल्ड में शामिल हों: ${communityDiscord}।",
		banned_locally_no_creator = "${communityName} से आपको प्रतिबंध लगा दिया गया है।\n\nबैन हैश: ${banHash}\nबैन का कारण: ${banReason}\nटाइमस्टैम्प: ${timestamp}\n\n${indefiniteOrExpires}\n\nअपील करने के लिए हमारे डिस्कॉर्ड गिल्ड में शामिल हों: ${communityDiscord}।",
		ban_indefinite = "यह बैन असीमित है।",
		ban_expires = "${timeLeft} के बाद यह बैन समाप्त होगा।",
		not_whitelisted = "आप इस सर्वर पर व्हाइटलिस्ट नहीं हैं। आवेदन करने के लिए जानकारी के लिए हमारे डिस्कॉर्ड गिल्ड में शामिल हों।\n\n${communityDiscord}",
		api_error = "आपके डेटा लाने में त्रुटि हो गई। (त्रुटि कोड ${errorCode})",
		pepega_moderate = "आपको किसी भी निर्दिष्ट कारणों के बिना सभी ओपी-एफडब्लू सर्वरों से वैश्विक रूप से बैन कर दिया गया है।",
		pepega_ultimate = "आप इस सर्वर से बैन हो गए हैं।",
		ban_code_not_found = "आपको सभी ओपी-एफडब्लू सर्वरों से वैश्विक रूप से बैन कर दिया गया है। हम आपके बैन कोड के लिए कोई डेटा नहीं ढूंढ सके।",
		fraud_chargeback = "धोखाधड़ी / चार्जबैक",
		threatening_ddos = "हमारे अंतर्गत ढंग से आक्रमण करने की धमकी देना।",
		unknown = "अज्ञात",
		api_offline = "हमारी बैक-एंड सेवा वर्तमान में उपलब्ध नहीं है और अतः आपके डेटा को प्राप्त नहीं कर सकता है। कृपया जल्द ही पुनः प्रयास करें।",
		protective_mode_on = "इस सर्वर पर सर्वर संरक्षात्मक मोड वर्तमान में सक्षम है, इसका मतलब केवल निश्चित समय बिताने वाले खिलाड़ियों को सर्वर से कनेक्ट करने की अनुमति होगी। यह केवल कुछ समय के लिए ही होता है और सर्वर जल्द ही सामान्य हो जाना चाहिए।\n\nइस प्रक्रिया के बारे में अधिक जानकारी के लिए हमारे डिस्कॉर्ड में शामिल हों ${communityDiscord}।",
		server_restarting = "सर्वर वर्तमान में पुन: चालू हो रहा है। कुछ मिनटों में पुन: प्रयास करें।",
		connection_cancelled = "इस कनेक्शन को रद्द किया गया क्योंकि दूसरा कनेक्शन पहले से ही सक्रिय है।",
		no_reason_provided = "कोई कारण नहीं दिया गया।",
		discord_whitelist_id_not_found = "हम आपकी discord id नहीं ढूंढ पाए। सुनिश्चित करें कि आप discord को पीछे से खोल रहे हैं और कि आपने FiveM को अपने discord client से डेटा निकालने की अनुमति दी है।\n\n${communityDiscord}"
	},

	chat = {
		default = "डिफ़ॉल्ट",

		chat_group_information = "आपको एक चैट समूह में जोड़ा गया है। अपने उपलब्ध चैट समूहों के बीच बदलने के लिए **टैब** दबाएँ।\n\n'/' उत्तरदायित्व में नहीं भेजे गए संदेश इस समूह के अन्य सदस्यों को प्रसारित किए जाएंगे।"
	},

	commands = {
		command_unavailable = "यह कमांड उपलब्ध नहीं है!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "यह `${command}` कमांड का एक विकल्प कमांड है।",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "उठाएँ",
		carry_command_help = "उठाव को टॉगल करें।",
		carry_command_substitutes = "",

		uncarry_command = "उठाया नहीं",
		uncarry_command_help = "आप पर उठाने वाले खिलाड़ी को निर्बल बनाने के लिए दबाव डालें।",
		uncarry_command_substitutes = "",

		piggyback_command = "पिगीबैक",
		piggyback_command_help = "दूसरे खिलाड़ी को पिगीबैक दें।",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "हथकड़ी खोलें",
		pick_cuffs_command_help = "हथकड़ियों से बाहर निकलने के लिए लॉकपिक करें।",
		pick_cuffs_command_substitutes = "",

		struggle_command = "जद्दोजहद करें",
		struggle_command_help = "उस व्यक्ति से बाहर निकलने का प्रयास करें जो आपको उठाए हुए है।",
		struggle_command_substitutes = "",

		handsup_command = "हाथ ऊपर",
		handsup_command_help = "अपने हाथ ऊपर रखें (या फिर नीचे ले जाएँ।)",
		handsup_command_substitutes = "हाथ, दंडवत, एचयू",

		-- animations/chairs
		sit_command = "बैठें",
		sit_command_help = "पास के कुर्सी पर बैठने का प्रयास करें।",
		sit_command_parameter_variation = "विविधता",
		sit_command_parameter_variation_help = "कौन सी बैठने की एनीमेशन चलाएं (1 - 6)",
		sit_command_substitutes = "कुर्सी",

		-- animations/emotes
		ragdoll_command = "रैगडॉल",
		ragdoll_command_help = "रैगडॉल टॉगल करें।",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "रिपोर्ट",
		report_command_help = "सभी सक्रिय कर्मचारियों को एक संदेश भेजें।",
		report_command_parameter_message = "संदेश",
		report_command_parameter_message_help = "आप भेजना चाहते हैं संदेश।",
		report_command_substitutes = "",

		announce_command = "घोषणा करें",
		announce_command_help = "सभी खिलाड़ियों को एक घोषणा प्रसारित करें।",
		announce_command_parameter_message = "संदेश",
		announce_command_parameter_message_help = "आप प्रसारित करना चाहते हैं संदेश।",
		announce_command_substitutes = "",

		staff_pm_command = "staff_pm",
		staff_pm_command_help = "स्टाफ के सदस्य या स्टाफ के रूप में एक खिलाड़ी को संदेश भेजें।",
		staff_pm_command_parameter_server_id = "सर्वर आईडी",
		staff_pm_command_parameter_server_id_help = "आप संदेश भेजने की कोशिश कर रहे हैं उस खिलाड़ी का सर्वर आईडी।",
		staff_pm_command_parameter_message = "संदेश",
		staff_pm_command_parameter_message_help = "आप जो संदेश भेजना चाहते हैं, वहाँ लिखें।",
		staff_pm_command_substitutes = "staffpm",

		staff_command = "स्टाफ",
		staff_command_help = "सभी सक्रिय स्टाफ सदस्यों को एक संदेश प्रसारित करें।",
		staff_command_parameter_message = "संदेश",
		staff_command_parameter_message_help = "आप जो संदेश भेजना चाहते हैं।",
		staff_command_substitutes = "",

		wipe_command = "वाइप",
		wipe_command_help = "मैप से अनचाहे इकाइयों को वाइप करें।",
		wipe_command_parameter_distance = "दूरी",
		wipe_command_parameter_distance_help = "अगर आप केवल निश्चित दूरी के भीतर इकाइयों को हटाना चाहते हैं, तो यहां एक दूरी लगाएं। पूरे मैप के लिए इसे 'false' या '0' पर छोड़ दें।",
		wipe_command_parameter_ignore_local_entities = "स्थानीय इकाइयां अनदेखी करें",
		wipe_command_parameter_ignore_local_entities_help = "क्या आप स्थानीय गैर-नेटवर्क इकाइयों को अनदेखा करना चाहते हैं? अगर आप चीटर से सफाई कर रहे हैं, तो इसे 'true' या '1' पर रखना सिफारिश किया जाता है।",
		wipe_command_parameter_model_name = "मॉडल का नाम",
		wipe_command_parameter_model_name_help = "यदि आप केवल किसी विशिष्ट मॉडल के इन्टिटी हटाना चाहते हैं तो यहां एक मॉडल का नाम डालें। अन्यथा खाली छोड़ दें,  `false` या `0`। आप इसे `vehicles` या `peds` पर सेट कर सकते हैं।",
		wipe_command_substitutes = "",

		noclip_command = "नोक्लिप",
		noclip_command_help = "नोक्लिप को टॉगल करें।",
		noclip_command_parameter_server_id = "सर्वर आईडी",
		noclip_command_parameter_server_id_help = "यदि आप किसी और के लिए नोक्लिप टॉगल करना चाहते हैं तो उनका सर्वर आईडी यहां डालें।",
		noclip_command_substitutes = "",

		safe_noclip_command = "सुरक्षित_नॉक्लिप",
		safe_noclip_command_help = "नॉक्लिप टॉगल करता है लेकिन केवल तब जब कोई आपको देखने से पहले नहीं है (स्टाफ मेंबर्स एक्सक्लूडेड).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "वाहन_हटाएं",
		delete_vehicle_command_help = "नजदीकी वाहन को हटा दें।",
		delete_vehicle_command_parameter_ignore_heading = "हाँ",
		delete_vehicle_command_parameter_ignore_heading_help = "क्या आप अपने प्लेयर की हेडिंग को नजरअंदाज करना चाहेंगे? इसे खाली छोड़ने से `नहीं`के रूप में काम करेगा।",
		delete_vehicle_command_substitutes = "वाहन_हटाओ",

		delete_vehicle_interactively_command = "इंटरैक्टिव वाहन हटाओ",
		delete_vehicle_interactively_command_help = "इंटरैक्टिव वाहन हटाने को टॉगल करता है",
		delete_vehicle_interactively_command_substitutes = "विव_वाहन_हटाओ",

		kick_command = "निकाल_दो",
		kick_command_help = "सर्वर से किसी खिलाड़ी को निकालें।",
		kick_command_parameter_server_id = "सर्वर आईडी",
		kick_command_parameter_server_id_help = "आप जिस खिलाड़ी को निकालने की कोशिश कर रहे हैं, उसकी सर्वर आईडी।",
		kick_command_parameter_reason = "कारण",
		kick_command_parameter_reason_help = "खिलाड़ी किक के पीछे कारण। यह रिक्त छोड़ा जा सकता है।",
		kick_command_substitutes = "",

		ban_command = "बैन",
		ban_command_help = "सर्वर से खिलाड़ी को बैन करें।",
		ban_command_parameter_server_id = "सर्वर आईडी",
		ban_command_parameter_server_id_help = "आप जिस खिलाड़ी को बैन करने का प्रयास कर रहे हैं, उसका सर्वर आईडी।",
		ban_command_parameter_expire = "समाप्त",
		ban_command_parameter_expire_help = "खिलाड़ी के बैन की अवधि। यह रिक्त या `0` या `false` के लिए एक अनिश्चित बैन के लिए छोड़ा जा सकता है। आप अवधि के लिए w/d/h का उपयोग कर सकते हैं। (उदाहरण: `3d2h` -> 3 दिन, 2 घंटे)",
		ban_command_parameter_reason = "कारण",
		ban_command_parameter_reason_help = "खिलाड़ी की प्रतिबंध की वजह। इसे खाली छोड़ा जा सकता है।",
		ban_command_substitutes = "",

		staff_hidden_command = "कर्मचारी_छिपा_हुआ",
		staff_hidden_command_help = "अन्य खिलाड़ियों को आपकी कर्मचारी स्थिति देखने से रोकें या चालू करें।",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "कर्मचारी_टॉगल",
		staff_toggle_command_help = "अपनी कर्मचारी उपलब्धता टॉगल करें। इसे बंद करने से रिपोर्ट, कर्मचारी एसएमएस और कर्मचारी संदेश दिखाई नहीं देंगे।",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "संरक्षण_मोड",
		protective_mode_command_help = "सर्वर संरक्षक मोड टॉगल करें। यह उन खिलाड़ियों से नए कनेक्शन को रद्द करेगा जो नुकसान पहुंचाने के लिए आवश्यक खिलाड़ी समय से कम हैं। इस जांच को स्टाफ सदस्यों और सर्वर समर्थकों से बाहर रखा गया है।",
		protective_mode_command_parameter_enabled = "सक्षम",
		protective_mode_command_parameter_enabled_help = "क्या जांच सक्षम होना चाहिए? वैध इनपुट हैं: `true`, `false`, `1` और `0`।",
		protective_mode_command_parameter_playtime = "खेलने का समय",
		protective_mode_command_parameter_playtime_help = "नई कनेक्शन को स्वीकार करने के लिए आवश्यक खेलने के समय (सेकंड)।",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "वाहन बनाएं",
		spawn_vehicle_command_help = "एक वाहन बनाएं।",
		spawn_vehicle_command_parameter_model_name = "मॉडल नाम",
		spawn_vehicle_command_parameter_model_name_help = "गाड़ी का मॉडल नाम जिसे आप स्पॉन करना चाहते हैं।",
		spawn_vehicle_command_parameter_server_id = "सर्वर आईडी",
		spawn_vehicle_command_parameter_server_id_help = "उन खिलाड़ियों के सर्वर आईडी को चुनने के लिए जिनके लिए आप इस गाड़ी को स्पॉन करना चाहते हैं। आप इसे रिक्त या `0` पर छोड़ सकते हैं अगर आप खुद को चुनना चाहते हैं।",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "create_vehicle",
		create_vehicle_command_help = "आपके वर्तमान स्थान पर भूमि पर एक गाड़ी स्पॉन करता है, इसमें आपको वार्प नहीं करता।",
		create_vehicle_command_parameter_model_name = "मॉडल नाम",
		create_vehicle_command_parameter_model_name_help = "वाहन का मॉडल नाम जिसे आप स्पॉन करना चाहते हैं।",
		create_vehicle_command_parameter_ground = "जमीन",
		create_vehicle_command_parameter_ground_help = "क्या वाहन जमीन पर स्पॉन होना चाहिए?",
		create_vehicle_command_substitutes = "cv",

		replace_vehicle_command = "replace_vehicle",
		replace_vehicle_command_help = "अपने वर्तमान वाहन को एक अलग वाहन से बदलें।",
		replace_vehicle_command_parameter_model_name = "मॉडल नाम",
		replace_vehicle_command_parameter_model_name_help = "आप उत्पाद को उत्पन्न करना चाहते हैं उस वाहन का मॉडल नाम।",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "एइम्बॉट",
		aimbot_command_help = "'ऐंबॉट' को टॉगल करें।",
		aimbot_command_parameter_server_id = "सर्वर आईडी",
		aimbot_command_parameter_server_id_help = "अगर आप किसी अन्य व्यक्ति के लिए 'ऐंबॉट' को टॉगल करना चाहते हैं, तो उनका सर्वर आईडी यहां डालें।",
		aimbot_command_parameter_targets = "लक्ष्य",
		aimbot_command_parameter_targets_help = "लक्ष्य सर्वर आईडी (केवल खुद के लिए टॉगलिंग करते समय काम करता है)।(लक्ष्यों को इन सर्वर आईडी वाले खिलाड़ियों से ही फ़िल्टर किया जाएगा)।",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "player_bones_debug",
		player_bones_debug_command_help = "प्लेयर हड्डी डिबगर को टॉगल करें।",
		player_bones_debug_command_parameter_server_id = "सर्वर आईडी",
		player_bones_debug_command_parameter_server_id_help = "यदि आप किसी अन्य व्यक्ति के लिए प्लेयर हड्डी डिबगर को टॉगल करना चाहते हैं, तो उनके सर्वर आईडी को यहां डालें।",
		player_bones_debug_command_substitutes = "player_bones",

		wallhack_command = "wallhack",
		wallhack_command_help = "'वॉलहैक' को टॉगल करें।",
		wallhack_command_parameter_server_id = "सर्वर आईडी",
		wallhack_command_parameter_server_id_help = "यदि आप किसी और के लिए 'वॉल्हैक' को टॉगल करना चाहते हैं, तो उनका सर्वर आईडी डालें।",
		wallhack_command_substitutes = "",

		speed_boost_command = "speed_boost",
		speed_boost_command_help = "'स्पीड बूस्ट' को टॉगल करें।",
		speed_boost_command_parameter_server_id = "सर्वर आईडी",
		speed_boost_command_parameter_server_id_help = "यदि आप किसी और के लिए 'स्पीड बूस्ट' को टॉगल करना चाहते हैं, तो उनका सर्वर आईडी डांटें।",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_boost",
		nitro_boost_command_help = "'नाइट्रो बूस्ट' को टॉगल करें।",
		nitro_boost_command_parameter_server_id = "सर्वर आईडी",
		nitro_boost_command_parameter_server_id_help = "यदि आप किसी अन्य व्यक्ति के लिए 'नाइट्रो बूस्ट' को टॉगल करना चाहते हैं, तो उनका सर्वर आईडी यहाँ दर्ज करें।",
		nitro_boost_command_substitutes = "नाइट्रो",

		indestructibility_command = "अभेद्यता",
		indestructibility_command_help = "'अभेद्यता' को टॉगल करें।",
		indestructibility_command_parameter_server_id = "सर्वर आईडी",
		indestructibility_command_parameter_server_id_help = "यदि आप किसी अन्य व्यक्ति के लिए 'अभेद्यता' को टॉगल करना चाहते हैं, तो उनका सर्वर आईडी यहाँ दर्ज करें।",
		indestructibility_command_substitutes = "ind, भगवान, दिव्यत्व_मोड, दिव्यत्वमोड",

		no_nearby_vehicles_command = "कोई_नज़दीकी_वाहन_नहीं",
		no_nearby_vehicles_command_help = "'कोई नज़दीकी वाहन नहीं' को टॉगल करें।",
		no_nearby_vehicles_command_parameter_server_id = "सर्वर आईडी",
		no_nearby_vehicles_command_parameter_server_id_help = "यदि आप किसी और व्यक्ति के लिए 'कोई नज़दीकी वाहन नहीं' टॉगल करना चाहते हैं, तो उनका सर्वर आईडी यहां दर्ज करें।",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "टकराव_बंद_करें",
		disable_collisions_command_help = "10 मीटर त्रिज्या के वाहनों और लोगों के साथ टक्करों को अक्षम करें।",
		disable_collisions_command_substitutes = "collisions",

		ghost_command = "भूत",
		ghost_command_help = "यह कमांड /peek, अदृश्यता और /disable_collisions को सक्षम करेगा।",
		ghost_command_substitutes = "",

		job_command = "नौकरी",
		job_command_help = "खोज के आधार पर किसी की नौकरी अपडेट करें।",
		job_command_parameter_server_id = "सर्वर आईडी",
		job_command_parameter_server_id_help = "खिलाड़ियों का सर्वर आईडी या खुद को चुनने के लिए 0।",
		job_command_parameter_search = "खोज",
		job_command_parameter_search_help = "नौकरी / विभाग / पद का नाम या उसे खोजने के लिए इसका हिस्सा या निकालने के लिए `none`।",
		job_command_substitutes = "",

		reset_job_command = "reset_job",
		reset_job_command_help = "किसी के नौकरी को अनारक्षित करने के लिए।",
		reset_job_command_parameter_server_id = "सर्वर आईडी",
		reset_job_command_parameter_server_id_help = "खिलाड़ी के सर्वर आईडी या खुद को चुनने के लिए 0।",
		reset_job_command_substitutes = "",

		watching_command = "देखभाल करना",
		watching_command_help = "आपको वे सभी खिलाड़ी दिखाता हैं जो निकटवर्ती नज़र आ रहे हैं।",
		watching_command_substitutes = "",

		disable_recoil_command = "बारूद स्पंदन अक्षम करें",
		disable_recoil_command_help = "सभी हथियारों को अक्षम करता है।",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "असीमित गोला-बारूद",
		infinite_ammo_command_help = "असीमित गोला-बारूद को टॉगल करें।",
		infinite_ammo_command_substitutes = "",

		track_player_command = "खिलाड़ी_को_ट्रैक_करें",
		track_player_command_help = "किसी विशिष्ट खिलाड़ी के लिए एक ट्रैकर टॉगल करता है।",
		track_player_command_parameter_server_id = "सर्वर आईडी",
		track_player_command_parameter_server_id_help = "आप ट्रैक करना चाहते हैं उस खिलाड़ी का सर्वर आईडी। अक्षम करने के लिए खाली छोड़ दें।",
		track_player_command_substitutes = "",

		reflect_damage_command = "दुर्घटना प्रतिबिंबित करें",
		reflect_damage_command_help = "घायली प्रतिबिंब टॉगल करता है। (जो प्लेयर आपको नुकसान पहुंचाता है, वे खुद होंगे)",
		reflect_damage_command_substitutes = "प्रतिबिंब",

		trigger_headache_command = "प्रेरित_सिरदर्द",
		trigger_headache_command_help = "निर्दिष्ट खिलाड़ी को थोड़ी समय के लिए लैग करने के लिए।",
		trigger_headache_command_parameter_server_id = "सर्वर आईडी",
		trigger_headache_command_parameter_server_id_help = "आप जिस खिलाड़ी के लिए सिरदर्द को ट्रिगर करना चाहते हैं।",
		trigger_headache_command_substitutes = "सिरदर्द",

		stick_command = "स्टिक",
		stick_command_help = "उस गाड़ी से जोड़ें जिस पर आप ऊपर हो।",
		stick_command_substitutes = "",

		unstick_command = "अन्स्टिक",
		unstick_command_help = "गाड़ी से हट जाएं जिससे आप जुड़े हुए हैं।",
		unstick_command_substitutes = "",

		clean_ped_command = "क्लीन_पेड",
		clean_ped_command_help = "एक चरित्र का रक्त, गोली प्रभाव, गंदगी आदि साफ करता है।",
		clean_ped_command_parameter_server_id = "सर्वर आईडी",
		clean_ped_command_parameter_server_id_help = "आप पेड को साफ करना चाहते हैं जिस खिलाड़ी को आप कर रहे हैं।",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "'वाहन धुंआ' को टॉगल करें।",
		toggle_vehicle_smoke_command_parameter_server_id = "सर्वर आईडी",
		toggle_vehicle_smoke_command_parameter_server_id_help = "यदि आप किसी अन्य खिलाड़ी के लिए 'वाहन धुंआ' को टॉगल करना चाहते हैं, तो उनकी सर्वर आईडी यहां डालें।",
		toggle_vehicle_smoke_command_parameter_color_r = "रंग r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "धुआं के रंग का लाल मान (0 - 255)",
		toggle_vehicle_smoke_command_parameter_color_g = "रंग g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "धुआं के रंग का हरा मान (0 - 255)",
		toggle_vehicle_smoke_command_parameter_color_b = "रंग b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "धुआं के रंग का नीला मान (0 - 255)",
		toggle_vehicle_smoke_command_substitutes = "वाहन_धुआं, धुआं",

		speed_up_progress_bar_command = "speed_up_progress_bar",
		speed_up_progress_bar_command_help = "'प्रगति बार त्वरित करें' को toggle करें।",
		speed_up_progress_bar_command_parameter_server_id = "सर्वर आईडी",
		speed_up_progress_bar_command_parameter_server_id_help = "यदि आप किसी दूसरे के लिए 'प्रगति बार त्वरित करें' toggle करना चाहते हैं, तो उनका सर्वर आईडी यहां डालें।",
		speed_up_progress_bar_command_substitutes = "speed_up",

		invisibility_command = "invisibility",
		invisibility_command_help = "'अदृश्यता' को toggle करें।",
		invisibility_command_parameter_server_id = "सर्वर आईडी",
		invisibility_command_parameter_server_id_help = "यदि आप किसी अन्य व्यक्ति के लिए 'अदृश्यता' टॉगल करना चाहते हैं तो उनका सर्वर आईडी यहां पेस्ट करें।",
		invisibility_command_substitutes = "inv, invis, invisible",

		add_cash_command = "add_cash",
		add_cash_command_help = "किसी व्यक्ति के कैरेक्टर में नकदी जोड़ें।",
		add_cash_command_parameter_amount = "रकम",
		add_cash_command_parameter_amount_help = "आप खिलाड़ी को देना चाहते हैं नकदी की राशि।",
		add_cash_command_parameter_server_id = "सर्वर आईडी",
		add_cash_command_parameter_server_id_help = "खिलाड़ी के सर्वर आईडी। अगर खाली छोड़ा जाता है, तो आप स्वयं से चयनित हो जाते हैं।",
		add_cash_command_substitutes = "",

		remove_cash_command = "remove_cash",
		remove_cash_command_help = "किसी के चरित्र से नकदी हटाएं।",
		remove_cash_command_parameter_amount = "राशि",
		remove_cash_command_parameter_amount_help = "आप खिलाड़ी से हटाना चाहते हैं नकदी की राशि।",
		remove_cash_command_parameter_server_id = "सर्वर आईडी",
		remove_cash_command_parameter_server_id_help = "खिलाड़ी के सर्वर आईडी। अगर खाली छोड़ा जाता है, तो आप स्वयं से चयनित हो जाते हैं।",
		remove_cash_command_substitutes = "",

		add_bank_command = "बैंक_जोड़े",
		add_bank_command_help = "किसी व्यक्ति के खाते में बैंक शेष जोड़ें।",
		add_bank_command_parameter_amount = "राशि",
		add_bank_command_parameter_amount_help = "खिलाड़ी को दी जाने वाली बैंक शेष की राशि।",
		add_bank_command_parameter_server_id = "सर्वर आईडी",
		add_bank_command_parameter_server_id_help = "वह खिलाड़ी जिसके खाते में बैंक शेष जोड़ना है। यदि खाली छोड़ा जाता है, तो आपको स्वयं चयनित किया जाता है।",
		add_bank_command_substitutes = "",

		remove_bank_command = "बैंक_हटाएँ",
		remove_bank_command_help = "किसी व्यक्ति के खाते से बैंक शेष हटाएँ।",
		remove_bank_command_parameter_amount = "मात्रा",
		remove_bank_command_parameter_amount_help = "उस खिलाड़ी से बैंक शेष कुल से हटाना चाहते हैं।",
		remove_bank_command_parameter_server_id = "सर्वर आईडी",
		remove_bank_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी। अगर खाली छोड़ा जाता है, तो स्वयं चयनित होता है।",
		remove_bank_command_substitutes = "",

		spawn_item_command = "आइटम उत्पन्न करें",
		spawn_item_command_help = "आइटम उत्पन्न करने के लिए उपयोग किया जाता है।",
		spawn_item_command_parameter_item_name = "आइटम का नाम",
		spawn_item_command_parameter_item_name_help = "इस आइटम का नाम जिसे आप उत्पन्न करना चाहते हैं, उसे यहां लिखें। इसे *आइटम नाम* की आवश्यकता होती है, अतः यहां उपलब्ध उसके लेबल काम नहीं करेंगे।",
		spawn_item_command_parameter_amount = "मात्रा",
		spawn_item_command_parameter_amount_help = "आप कितने आइटम या वस्तुओं को स्पॉन करना चाहते हैं उनकी मात्रा। अगर खाली छोड़ दिया जाए तो एक चुना जाता है।",
		spawn_item_command_parameter_server_id = "सर्वर आईडी",
		spawn_item_command_parameter_server_id_help = "आप किस खिलाड़ी के लिए आइटम स्पॉन करना चाहते हैं उनके सर्वर आईडी। अगर खाली छोड़ दिया जाए तो आप खुद का चयन कर सकते हैं।",
		spawn_item_command_parameter_battle_royale_only = "केवल बैटल रॉयल",
		spawn_item_command_parameter_battle_royale_only_help = "इस आइटम को केवल बैटल रॉयल मोड के लिए स्पष्ट करें।",
		spawn_item_command_substitutes = "si",

		warning_message_command = "warning_message",
		warning_message_command_help = "सभी खिलाड़ियों के लिए एक वैश्विक सर्वर संदेश जोड़ें।",
		warning_message_command_parameter_message = "संदेश",
		warning_message_command_parameter_message_help = "आप खिलाड़ियों को प्रदर्शित करना चाहते हैं संदेश। आप इस पैरामीटर को खाली छोड़ सकते हैं ताकि चेतावनी संदेश हटा दे।",
		warning_message_command_substitutes = "",

		tp_coords_command = "tp_coords",
		tp_coords_command_help = "कुछ निर्देशांकों को टेलीपोर्ट करें।",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "आपको जहां टेलीपोर्ट करना है, वहां X निर्देशांक।",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "आपको जहां टेलीपोर्ट करना है, वहां Y निर्देशांक।",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "आपको जहां टेलीपोर्ट करना है, वहां Z निर्देशांक। यह पैरामीटर वैकल्पिक है और यदि रिक्त छोड़ दिया गया है, तो स्थल निर्देशांक स्वचालित रूप से खोजे जाएंगे।",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "अपने सेट किए गए वे पॉइंट पर टेलीपोर्ट करें।",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "isolate_player",
		isolate_player_command_help = "एक खिलाड़ी को अलग करता है, जो कुछ भी करने का प्रयास करता है, उसे अस्वीकार करता हुआ।",
		isolate_player_command_parameter_server_id = "सर्वर आईडी",
		isolate_player_command_parameter_server_id_help = "लक्षित खिलाड़ी।",
		isolate_player_command_substitutes = "अलग, isolate",

		show_all_evidence_command = "show_all_evidence",
		show_all_evidence_command_help = "निकटवर्ती बुलेट केसिंग सबूत का दिखावा करता है।",
		show_all_evidence_command_substitutes = "all_evidence, show_evidence, evidence",

		population_density_command = "आबादी_घनत्व",
		population_density_command_help = "वैश्विक आबादी घनत्व गुणांक को अध्ययन करें।",
		population_density_command_parameter_multiplier = "गुणांक",
		population_density_command_parameter_multiplier_help = "आप जो आबादी घनत्व गुणांक निर्धारित करना चाहते हैं, उसे अध्ययन करें। इसे खाली छोड़ना इसे बंद कर देगा। मान्य मान 0.0 से लेकर 1.0 तक हैं।",
		population_density_command_substitutes = "आबादी, घनत्व, पॉप",

		repair_vehicle_command = "वाहन_मरम्मत",
		repair_vehicle_command_help = "आप जहाँ हैं वहाँ के वाहन की मरम्मत करें।",
		repair_vehicle_command_substitutes = "ठीक_करो",

		enter_vehicle_command = "गाड़ी_में_बैठो",
		enter_vehicle_command_help = "अपने प्लेयर पेड़ को उस गाड़ी में बैठने के लिए बल दें जो आपसे सबसे करीब है (यदि आप किसी में होते हैं, तो आप गाड़ी से बाहर निकलते हैं)।",
		enter_vehicle_command_parameter_network_id = "नेटवर्क आईडी",
		enter_vehicle_command_parameter_network_id_help = "वह गाड़ी जिसमें आप बैठना चाहते हैं का नेटवर्क आईडी। (वैकल्पिक)",
		enter_vehicle_command_substitutes = "ईवी",

		set_modification_command = "सेट_मोड़न_कमांड",
		set_modification_command_help = "आप उस वाहन पर वाहन संशोधन सेट करें।",
		set_modification_command_parameter_mod_type = "मॉड प्रकार",
		set_modification_command_parameter_mod_type_help = "आप मॉड टाइप की ID सेट करना चाहते हैं।",
		set_modification_command_parameter_mod_index = "मॉड इंडेक्स",
		set_modification_command_parameter_mod_index_help = "आप जो सेट करना चाहते हैं, उस मॉड का आईडी।",
		set_modification_command_parameter_custom_tires = "कस्टम टायर",
		set_modification_command_parameter_custom_tires_help = "कस्टम टायर?",
		set_modification_command_substitutes = "sm",

		set_livery_command = "livery सेट करें",
		set_livery_command_help = "वाहन की लिवरी सेट करें।",
		set_livery_command_parameter_livery_index = "लिवरी इंडेक्स",
		set_livery_command_parameter_livery_index_help = "आप जिस लिवरी को सेट करना चाहते हैं, उसका इंडेक्स।",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "set_fake_plate",
		set_fake_plate_command_help = "आप वाहन में जाली नंबर प्लेट संख्या सेट करना चाहते हैं।",
		set_fake_plate_command_parameter_plate_number = "प्लेट संख्या",
		set_fake_plate_command_parameter_plate_number_help = "आप जो प्लेट संख्या सेट करना चाहते हैं।",
		set_fake_plate_command_substitutes = "प्लेट",

		set_dirt_level_command = "set_dirt_level",
		set_dirt_level_command_help = "आप वाहन को साफ करना चाहते हैं।",
		set_dirt_level_command_parameter_dirt_level = "मैला स्तर",
		set_dirt_level_command_parameter_dirt_level_help = "आप जिस स्तर के मैले को सेट करना चाहते हैं (0 से 15 के बीच)",
		set_dirt_level_command_substitutes = "डर्ट_स्तर_सेट_करें, sd",

		player_info_command = "player_info",
		player_info_command_help = "किसी विशिष्ट खिलाड़ी के बारे में कुछ जानकारी प्राप्त करता है।",
		player_info_command_parameter_server_id = "सर्वर आईडी",
		player_info_command_parameter_server_id_help = "खिलाड़ी का सर्वर आईडी जिसके बारे में आप जानकारी प्राप्त करना चाहते हैं। अगर खाली छोड़ा जाता है, तो अपने आप का चयन किया जाता है।",
		player_info_command_substitutes = "player, pi",

		inventory_command = "इन्वेंटरी",
		inventory_command_help = "एक निर्दिष्ट इन्वेंटरी खोलें।",
		inventory_command_parameter_inventory_name = "इन्वेंटरी नाम",
		inventory_command_parameter_inventory_name_help = "आप कौन सा सूची खोलना चाहते हैं।",
		inventory_command_substitutes = "",

		character_inventory_command = "character_inventory",
		character_inventory_command_help = "दूसरे खिलाड़ी की इन्वेंट्री दिखाता है।",
		character_inventory_command_parameter_server_id = "सर्वर आईडी",
		character_inventory_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी।",
		character_inventory_command_substitutes = "पॉकेट",

		fake_disconnect_command = "fake_disconnect",
		fake_disconnect_command_help = "एक श्रृंखला कार्यों को ट्रिगर करता है, जो लगता है कि आप सर्वर से डिस्कनेक्ट हो गए हैं। यह आपके noclip को भी सक्षम करेगा, अगर यह पहले से ही चालू नहीं है।",
		fake_disconnect_command_substitutes = "झूठा_छोड़_दें, dc",

		set_identity_command = "सेट_आईडेंटिटी",
		set_identity_command_help = "आपके प्लेयर नाम को अधिलेखित करता है।",
		set_identity_command_parameter_player_name = "प्लेयर का नाम",
		set_identity_command_parameter_player_name_help = "आप जो नाम सेट करना चाहते हैं उसको दर्ज करें या रीसेट करने के लिए रिक्त छोड़ दें।",
		set_identity_command_substitutes = "आईडेंटिटी",

		disable_idle_cam_command = "डिसेबल_आइडल_कैम",
		disable_idle_cam_command_help = "हवाई जहाज मोड शक्तिमान करता है।",
		disable_idle_cam_command_substitutes = "आईडल_डिसेबल, आईडल",

		auto_drive_command = "ऑटो ड्राइव",
		auto_drive_command_help = "सेट वे प्वाइंट पर स्वचालित रूप से आपको ड्राइव करता है या कोई सेट नहीं है तो यात्रा अनियंत्रित रूप से चलती है।",
		auto_drive_command_parameter_style = "शैली",
		auto_drive_command_parameter_style_help = "ड्राइविंग शैली (सामान्य, जल्दबाजी, असावधान, उल्टा।)",
		auto_drive_command_substitutes = "",

		drive_speed_command = "ड्राइव स्पीड",
		drive_speed_command_help = "ऑटो ड्राइव कमांड के लिए क्रूज स्पीड सेट करें।",
		drive_speed_command_parameter_speed = "स्पीड",
		drive_speed_command_parameter_speed_help = "आप जो स्पीड सेट करना चाहते हैं (मील प्रति घंटे में)।",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "toggle_weapon_attachment",
		toggle_weapon_attachment_command_help = "आपके पास जो हथियार है उसके लिए एक हथियार परिशिष्टता टॉगल करता है।",
		toggle_weapon_attachment_command_parameter_attachment = "attachment",
		toggle_weapon_attachment_command_parameter_attachment_help = "आप जिस हथियार परिशिष्टता को टॉगल करना चाहते हैं।",
		toggle_weapon_attachment_command_substitutes = "weapon_attachment, attachment",

		set_weapon_tint_command = "set_weapon_tint",
		set_weapon_tint_command_help = "आपके पास जो हथियार है उसके रंग को सेट करता है या हटाता है।",
		set_weapon_tint_command_parameter_tint = "रंग",
		set_weapon_tint_command_parameter_tint_help = "आप जिस रंग को सेट करना चाहते हैं (खाली छोड़ दें तो हटा दें)।",
		set_weapon_tint_command_substitutes = "weapon_tint, रंग",

		set_item_name_override_command = "आइटम नाम अधिरोहण सेट करें",
		set_item_name_override_command_help = "निर्दिष्ट आइटम के आइटम नाम को ओवरराइड सेट करता है या हटाता है।",
		set_item_name_override_command_parameter_slot = "स्लॉट",
		set_item_name_override_command_parameter_slot_help = "जिस आइटम के नाम को ओवरराइड करना है उसके स्लॉट नंबर।",
		set_item_name_override_command_parameter_item_name = "वस्तु नाम",
		set_item_name_override_command_parameter_item_name_help = "आप जो नाम अधिरोहण जारी रखना चाहते हैं (खाली छोड़कर हटाएँ)।",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "set_durability",
		set_durability_command_help = "किसी निश्चित स्लॉट में सभी वस्तुओं के टिकाऊता को सेट करें।",
		set_durability_command_parameter_slot = "स्लॉट",
		set_durability_command_parameter_slot_help = "कौन सा स्लॉट इस्तेमाल करके वस्तु की टिकाऊता सेट करेगा।",
		set_durability_command_parameter_amount = "मात्रा",
		set_durability_command_parameter_amount_help = "निर्धारित मात्रा को सेट करें (डिफ़ॉल्ट मूल्य 100 है।)",
		set_durability_command_substitutes = "जीवनक्षमता",

		set_metadata_command = "मेटाडेटा_सेट_करें",
		set_metadata_command_help = "एक निश्चित स्लॉट में सभी वस्तुओं के मेटाडेटा को सेट करता है।",
		set_metadata_command_parameter_slot = "स्लॉट",
		set_metadata_command_parameter_slot_help = "जिस स्लॉट में आइटम की मेटाडेटा सेट करें।",
		set_metadata_command_parameter_metadata = "मेटाडेटा",
		set_metadata_command_parameter_metadata_help = "सेट करने के लिए मेटाडेटा json।",
		set_metadata_command_substitutes = "मेटाडाटा",

		refill_nitro_command = "निट्रो_भरें",
		refill_nitro_command_help = "आपकी कार के निट्रो टैंक को भरता है।",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "हथियार_पंजीकृत_करें",
		register_weapon_command_help = "किसी निश्चित स्लॉट में एक हथियार को निश्चित चरित्र आईडी में रजिस्टर करता है।",
		register_weapon_command_parameter_slot = "स्लॉट",
		register_weapon_command_parameter_slot_help = "जहां हथियार है।",
		register_weapon_command_parameter_character_id = "चरित्र आईडी",
		register_weapon_command_parameter_character_id_help = "आप जिस चरित्र को हथियार पंजीकृत करना चाहते हैं, उसकी चरित्र आईडी।",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "advanced_metagame",
		advanced_metagame_command_help = "सुपर एडमिन कमांड जो आपकी मेटागेमिंग को अगले स्तर तक मदद करने में मदद करता है।",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "list_weapon_attachments",
		list_weapon_attachments_command_help = "आप वहां खड़े होते हुए हथियार के टिंट को सेट करता या हटाता है।",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "wipe_first_owned",
		wipe_first_owned_command_help = "एक निश्चित खिलाड़ी द्वारा पहले स्वामित्व वाले सभी इकाइयों को धो डालता है।",
		wipe_first_owned_command_parameter_server_id = "सर्वर आईडी",
		wipe_first_owned_command_parameter_server_id_help = "खिलाड़ियों के सर्वर आईडी।",
		wipe_first_owned_command_parameter_range = "रेंज",
		wipe_first_owned_command_parameter_range_help = "आप उन एंटिटीज़ को हटाना चाहते हैं जो आपके द्वारा भूमि में हैं या सभी को हटाने के लिए खाली छोड़ दें।",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "ठगना",
		freeze_command_help = "एक खिलाड़ी को ठगवाता है।",
		freeze_command_parameter_server_id = "सर्वर आईडी",
		freeze_command_parameter_server_id_help = "आप जो खिलाड़ी ठगना चाहते हैं उनके सर्वर आईडी।",
		freeze_command_substitutes = "",

		unfreeze_command = "अनफ्रीज़ करें",
		unfreeze_command_help = "एक खिलाड़ी को अनफ्रीज़ करता है।",
		unfreeze_command_parameter_server_id = "सर्वर आईडी",
		unfreeze_command_parameter_server_id_help = "आप जिस खिलाड़ी को अनफ्रीज़ करना चाहते हैं उसका सर्वर आईडी।",
		unfreeze_command_substitutes = "",

		slap_command = "थप्पड़ मारें",
		slap_command_help = "एक खिलाड़ी को थप्पड़ मारता है (उन्हें मारता है)।",
		slap_command_parameter_server_id = "सर्वर आईडी",
		slap_command_parameter_server_id_help = "आप जिस खिलाड़ी को थप्पड़ मारना चाहते हैं उसका सर्वर आईडी।",
		slap_command_substitutes = "",

		damage_player_command = "खिलाड़ी को नुकसान पहुंचाएं",
		damage_player_command_help = "खिलाड़ी के स्वास्थ्य में नुकसान पहुंचाएं।",
		damage_player_command_parameter_server_id = "सर्वर आईडी",
		damage_player_command_parameter_server_id_help = "आप उस खिलाड़ी के सर्वर आईडी को नुकसान पहुंचाना चाहते हैं जिसे आप नुकसान पहुँचाना चाहते हैं।",
		damage_player_command_parameter_health = "क्षति",
		damage_player_command_parameter_health_help = "आप कितना नुकसान पहुंचाना चाहते हैं।",
		damage_player_command_substitutes = "नुकसान",

		scoop_command = "खोदन",
		scoop_command_help = "एक निश्चित त्रिज्या में सभी खिलाड़ियों को खोदता है। (/उनको खोदने के लिए उपयोग करें)",
		scoop_command_parameter_radius = "त्रिज्या",
		scoop_command_parameter_radius_help = "आप किस त्रिज्या में खिलाड़ियों को खोदना चाहते हैं (2D)।",
		scoop_command_substitutes = "",

		unscoop_command = "अनस्कूप",
		unscoop_command_help = "आपके द्वारा पहले उठाये गए सभी खिलाड़ियों को आपकी वर्तमान स्थिति पर टेलीपोर्ट करता है।",
		unscoop_command_parameter_revive = "पुनर्जीवन",
		unscoop_command_parameter_revive_help = "अगर चढ़ाए गए खिलाड़ियों में से कोई बीमार हो तो उन्हें पुनर्जीवित करता है।",
		unscoop_command_substitutes = "",

		peek_command = "झांकना",
		peek_command_help = "झांकना आपसे आसपास सभी अदृश्य खिलाड़ियों को दिखाएगा (आप समेत)।",
		peek_command_substitutes = "",

		hit_indicator_command = "हिट इंडिकेटर",
		hit_indicator_command_help = "यदि आप कस्टम क्रॉसहायर का उपयोग करते हैं तो हिट इंडिकेटर को टॉगल करता है।",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "trigger_ems_call",
		trigger_ems_call_command_help = "अपने स्थान से स्थानीय EMS कॉल भेजता है।",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "model_detect_add",
		model_detect_add_command_help = "एक मॉडल को डिटेक्शन सूची में अस्थायी रूप से जोड़ता है। सूची सर्वर पुनरारंभ पर रीसेट हो जाती है।",
		model_detect_add_command_parameter_model = "model",
		model_detect_add_command_parameter_model_help = "आप जिस मॉडल का पता लगाना चाहते हैं उसे Model में दर्ज करें। एक मॉडल नाम और मॉडल हैश दोनों हो सकते हैं।",
		model_detect_add_command_substitutes = "detect",

		model_detect_remove_command = "मॉडल_पता_हटाएं",
		model_detect_remove_command_help = "पता लिस्ट से एक मॉडल हटाएं।",
		model_detect_remove_command_parameter_model = "मॉडल",
		model_detect_remove_command_parameter_model_help = "आप जिस मॉडल को हटाना चाहते हैं। मॉडल का नाम या मॉडल हैश दोनों हो सकता है।",
		model_detect_remove_command_substitutes = "अपत्ति",

		detection_area_add_command = "डिटेक्शन_एरिया_जोड़",
		detection_area_add_command_help = "एक क्षेत्र बनाएं जहां उस क्षेत्र में स्पॉन हुए सभी संचारण आपको कुछ जानकारी के साथ भेज दिए जाएंगे। यह जानकारी ओवरव्यू UI में उपलब्ध हो सकती है।",
		detection_area_add_command_parameter_radius = "रेडियस",
		detection_area_add_command_parameter_radius_help = "उन इकाइयों को खोजा जाएगा जो इस व्यास वाले वृत्त में होंगे। न्यूनतम मूल्य `10` और अधिकतम मूल्य `5000` है। इसे खाली छोड़ देने पर डिफ़ॉल्ट मूल्य `100` होगा।",
		detection_area_add_command_substitutes = "क्षेत्र_जोड़ें",

		detection_area_remove_command = "detection_area_remove",
		detection_area_remove_command_help = "एक डिटेक्शन क्षेत्र हटाएं।",
		detection_area_remove_command_parameter_area_id = "डिटेक्शन क्षेत्र आईडी",
		detection_area_remove_command_parameter_area_id_help = "निश्चित करता है वह क्षेत्र जिसे आप हटाना चाहते हैं।",
		detection_area_remove_command_substitutes = "क्षेत्र_हटाएँ",

		screen_text_debug_command = "screen_text_debug",
		screen_text_debug_command_help = "स्क्रीन-टेक्स्ट छोड़ने वाली आयतों को डीबग करें।",
		screen_text_debug_command_substitutes = "screen_text",

		-- base/commands
		help_command = "मदद",
		help_command_help = "सभी उपलब्ध कमांड दिखाता है।",
		help_command_substitutes = "",

		substitutes_command = "विकल्प",
		substitutes_command_help = "सभी उपलब्ध विकल्प दिखाता है।",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "धनी_उपस्थिति",
		richer_presence_command_help = "धनी उपस्थिति टॉगल करता है जो रिच प्रेजेंस में अधिक जानकारी जोड़ता है, जैसे लोड हुए करैक्टर।",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "इमोजी_सूची",
		emojis_list_command_help = "सभी उपलब्ध इमोजी की सूची बताएं।",
		emojis_list_command_substitutes = "इमोजी",

		emojis_refresh_command = "इमोजी_ताज़ाकरना",
		emojis_refresh_command_help = "उपलब्ध इमोजी को ताज़ा करें। यह डिस्कॉर्ड गिल्ड से नवीनतम सूची प्राप्त करेगा।",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "पिंग_लें",
		get_pings_command_help = "विश्वभर में विभिन्न होस्टों के साथ औसत पिंग प्राप्त करें ताकि इस सर्वर के वर्तमान खिलाड़ियों के लिए सबसे उपयुक्त होस्ट स्थान ढूंढा जा सके।",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "प्रोफ़ाइल_डीबग",
		profile_debug_command_help = "प्रोफाइल डिबगर टॉगल करें।",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "playtime",
		playtime_command_help = "सर्वर पर कुल प्लेटाइम और इस सत्र की प्लेटाइम जाँचें।",
		playtime_command_parameter_server_id = "सर्वर आईडी",
		playtime_command_parameter_server_id_help = "आप खिलाड़ी की प्ले टाइम जानना चाहते हैं जिसे आप अपने आप का चुन सकते हैं। आप इसे खाली छोड़ सकते हैं या `0` पर छोड़ सकते हैं।",
		playtime_command_substitutes = "",

		leaderboard_command = "leaderboard",
		leaderboard_command_help = "प्लेटाइम लीडरबोर्ड जाँचें।",
		leaderboard_command_substitutes = "",

		package_command = "package",
		package_command_help = "अपनी पैकेज की जांच करें और ताजगी दें।",
		package_command_substitutes = "refresh_package",

		player_packages_command = "player_packages",
		player_packages_command_help = "अपने अनुपयोगिता 'खिलाड़ी पैकेज' लें।",
		player_packages_command_substitutes = "",

		unload_character_command = "unload_character",
		unload_character_command_help = "एक खिलाड़ी के किरदार को अनलोड करें।",
		unload_character_command_parameter_server_id = "सर्वर आईडी",
		unload_character_command_parameter_server_id_help = "आप उस खिलाड़ी के लिए करेंगे जिसका किरदार अनलोड करना चाहते हैं। आप इसे रिक्त छोड़ सकते हैं या `0` पर छोड़ सकते हैं अपने आप को चुनने के लिए।",
		unload_character_command_parameter_message = "संदेश",
		unload_character_command_parameter_message_help = "यदि आप प्रवेश मेनू में दिखाने के लिए एक संदेश प्रदर्शित करना चाहते हैं, तो यहाँ टाइप करें।",
		unload_character_command_substitutes = "अनलोड",

		-- game/admin_menu
		admin_command = "व्यवस्थापक",
		admin_command_help = "व्यवस्थापक मेनू खोलता है।",
		admin_command_substitutes = "",

		tp_player_command = "tp_player",
		tp_player_command_help = "आपको एक खिलाड़ी के पास टेलीपोर्ट करता है।",
		tp_player_command_parameter_server_id = "सर्वर आईडी",
		tp_player_command_parameter_server_id_help = "आप जिस खिलाड़ी को टेलीपोर्ट करना चाहते हैं, उसका सर्वर आईडी।",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_here",
		tp_here_command_help = "एक खिलाड़ी को आपके पास टेलीपोर्ट करता है।",
		tp_here_command_parameter_server_id = "सर्वर ID",
		tp_here_command_parameter_server_id_help = "वह खिलाड़ी जिसे आप टेलीपोर्ट करना चाहते हैं, सर्वर ID।",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_to",
		tp_to_command_help = "एक खिलाड़ी को एक दूसरे खिलाड़ी के पास टेलीपोर्ट करता है।",
		tp_to_command_parameter_source_id = "स्रोत ID",
		tp_to_command_parameter_source_id_help = "आप जिस खिलाड़ी को टेलीपोर्ट करना चाहते हैं।",
		tp_to_command_parameter_destination_id = "गंतव्य ID",
		tp_to_command_parameter_destination_id_help = "आपको जिस खिलाड़ी के पास टेलीपोर्ट करना है।",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "एयरड्रॉप_बनाएं",
		create_airdrop_command_help = "एक एयरड्रॉप बनाएं।",
		create_airdrop_command_parameter_airdrop_type = "एयरड्रॉप प्रकार",
		create_airdrop_command_parameter_airdrop_type_help = "एयरड्रॉप के प्रकार जैसे (हथियार, ड्रग्स, मेडिकल, सप्लाइज, अटैचमेंट, कीमती वस्तुएं, खाद्य)",
		create_airdrop_command_parameter_item_amount = "आइटम की मात्रा",
		create_airdrop_command_parameter_item_amount_help = "एयरड्रॉप में शामिल होने वाले आइटमों की मात्रा।",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "एयरस्ट्राइक_कॉल",
		call_airstrike_command_help = "आपकी वर्तमान स्थिति पर एक एयरस्ट्राइक को बुलाता है।",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "airsupport",
		airsupport_command_help = "एयरसपोर्ट को बुलाता है।",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "show_alert",
		show_alert_command_help = "एक विशिष्ट खिलाड़ी (या सभी के लिए) के लिए एक अलर्ट दिखाता है।",
		show_alert_command_parameter_server_id = "सर्वर आईडी",
		show_alert_command_parameter_server_id_help = "उस खिलाड़ी के सर्वर आईडी की जिसे आप अलर्ट दिखाना चाहते हैं।",
		show_alert_command_parameter_content = "सामग्री",
		show_alert_command_parameter_content_help = "अलर्ट की सामग्री।",
		show_alert_command_substitutes = "सतर्कता",

		-- game/archives
		create_archive_command = "नया_संग्रह_बनाएं",
		create_archive_command_help = "वह संग्रह बनाएं जो आप अभी सबसे निकट खड़े हैं।",
		create_archive_command_parameter_case_number = "मामला संख्या",
		create_archive_command_parameter_case_number_help = "(1 से 99,999 तक एक पूर्णांक) मामला संख्या।",
		create_archive_command_substitutes = "",

		destroy_archive_command = "संग्रह_हटाएं",
		destroy_archive_command_help = "वह संग्रह हटाएं जो आप अभी सबसे निकट खड़े हैं।",
		destroy_archive_command_parameter_case_number = "केस संख्या",
		destroy_archive_command_parameter_case_number_help = "केस संख्या। (आप केवल खाली केस को नष्ट कर सकते हैं)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "पुनःजन्म",
		respawn_command_help = "खुद को मार डाले। (अभ्यासगृह के लिए)",
		respawn_command_substitutes = "आत्महत्या",

		-- game/audio
		audio_debug_command = "ऑडियो डीबग",
		audio_debug_command_help = "ऑडियो डीबग टॉगल करें।",
		audio_debug_command_substitutes = "",

		play_audio_command = "ऑडियो चलाओ",
		play_audio_command_help = "एक ऑडियो खिलाड़ी या सभी खिलाड़ियों के लिए चलाएं।",
		play_audio_command_parameter_url = "यूआरएल",
		play_audio_command_parameter_url_help = "ऑडियो डाउनलोड URL।",
		play_audio_command_parameter_volume = "आवाज",
		play_audio_command_parameter_volume_help = "वाल्यूम स्तर जिस पर ऑडियो बजाना चाहिए। `0` से `1` तक मान्य मान हैं। यह मान डिफ़ॉल्ट `0.1` होगा।",
		play_audio_command_parameter_server_id = "सर्वर आईडी",
		play_audio_command_parameter_server_id_help = "आप इस ऑडियो को बजाना चाहते हैं उस खिलाड़ी की सर्वर ID। आप सभी खिलाड़ियों के लिए `-1` कर सकते हैं।",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "यादृच्छिक_बैंडएड",
		random_bandaid_command_help = "आपको एक यादृच्छिक बैंडेज देगा। :)",
		random_bandaid_command_substitutes = "बैंडेज",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "युद्ध के रॉयल सुविधा को टॉगल करें।",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "battle_royale_start",
		battle_royale_start_command_help = "एक बैटल रॉयल मैच शुरू करें।",
		battle_royale_start_command_parameter_no_vehicles = "कोई वाहन नहीं",
		battle_royale_start_command_parameter_no_vehicles_help = "कोई वाहन न होने वाले मैच बनाएं।",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "battle_royale_invite",
		battle_royale_invite_command_help = "एक खिलाड़ी को अपनी बैटल रॉयल लॉबी में आमंत्रित करें।",
		battle_royale_invite_command_parameter_server_id = "सर्वर आईडी",
		battle_royale_invite_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी जिसे आप आमंत्रित करना चाहते हैं।",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "एक खिलाड़ी की बैटल रॉयल लॉबी में शामिल हों।",
		battle_royale_join_command_parameter_server_id = "सर्वर आईडी",
		battle_royale_join_command_parameter_server_id_help = "वह खिलाड़ी जिससे आप शामिल होना चाहते हैं के सर्वर आईडी।",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "उस बैटल रॉयल लॉबी से बाहर निकलें जिसमें आप हैं।",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "एक खिलाड़ी के बैटल रॉयल इंस्टेंस में शामिल हों।",
		battle_royale_join_instance_command_parameter_server_id = "सर्वर आईडी",
		battle_royale_join_instance_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी जिसके इंस्टेंस में शामिल होना चाहते हैं।",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "उस इंस्टेंस से जोड़े होने को छोड़ें।",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "bed",
		bed_command_help = "नज़दीकी बिस्तर में लेट जाने की कोशिश करें।",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "toggle_bombs",
		toggle_bombs_command_help = "आपके वर्तमान विमान पर बम टॉगल करता है।",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "आपके वर्तमान वाहन के लिए इग्निशन बम को टॉगल करता है (जब इंजन चालू किया जाता है तो वाहन विस्फोट हो जाता है)।",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "बूमबॉक्स मिटाएँ।",
		wipe_boomboxes_command_parameter_radius = "radius",
		wipe_boomboxes_command_parameter_radius_help = "मिटाने के लिए त्रिज्या। इसे खाली छोड़ने से `100` ऑटो-सेलेक्ट हो जाएगा। `0` और `-1` भी मान्य मान लिए जाते हैं, जो सभी वस्तुहरू को चयनित कर लेगा।",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "बूमबॉक्स दिखाएं",
		draw_boomboxes_command_help = "बूमबॉक्स दिखाएं।",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "बूस्टिंग-ठेके स्पॉन करें",
		spawn_contract_command_help = "एक बूस्टिंग-ठेका स्पॉन करें।",
		spawn_contract_command_parameter_server_id = "सर्वर आईडी",
		spawn_contract_command_parameter_server_id_help = "आप जिस सर्वर के लिए ठेका स्पॉन करना चाहते हैं उसका सर्वर आईडी। अगर आप छोड़ देंगे तो खुद को ऑटो-सेलेक्ट करेगा।",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "एसेट क्यूशन करें",
		cache_assets_command_help = "जब आपकी इंटरनेट स्पीड कम हो और एसेट डाउनलोड होने में विलम्ब न हो सकता हों, तब आप इस्तेमाल कर सकते हैं। यह सटीक रूप से अनुशंसित नहीं है क्योंकि यह क्लाइंट क्रैश का कारण बन सकता है। यह कार्रवाई चलते समय क्लाइंट क्रैश का भी कारण बन सकती है।",
		cache_assets_command_parameter_slow_download = "स्लो डाउनलोड",
		cache_assets_command_parameter_slow_download_help = "क्या आप एसेट धीमे ढंग से कैश करना चाहते हैं? इससे काफी ज्यादा समय लगेगा, लेकिन क्रैश करने की संभावना भी कम होगी।",
		cache_assets_command_substitutes = "डाउनलोड_कैश, प्रीलोड_कैश, लोड_कैश",

		-- game/camera
		stable_cam_command = "स्थिर कैमरा",
		stable_cam_command_help = "स्थिर कैमरा को टॉगल करता है।",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "कार्गो_प्रारंभ",
		cargo_start_command_help = "विश्व-व्यापी कार्गो डकैती शुरू करें।",
		cargo_start_command_substitutes = "कार्गो_शुरू",

		cargo_end_command = "कार्गो_समाप्त",
		cargo_end_command_help = "दुनिया भर की कार्गो डकैती समाप्त करें।",
		cargo_end_command_substitutes = "end_cargo",

		cargo_debug_command = "कार्गो_डीबग",
		cargo_debug_command_help = "कार्गो डीबग चालू/बंद करें।",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "कार्गो_पेड_डीबग",
		cargo_debug_peds_command_help = "कार्गो पेड डीबग चालू/बंद करें।",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "सेट_केसीनो_स्क्रीन्स",
		set_casino_screens_command_help = "केसीनो स्क्रीन को सेट करें।",
		set_casino_screens_command_parameter_screen_label = "स्क्रीन लेबल",
		set_casino_screens_command_parameter_screen_label_help = "आप जिस स्क्रीन लेबल को सेट करना चाहते हैं वहाँ दर्ज करें। उपलब्ध स्क्रीन लेबल हैं `diamonds`, `skulls`, `snowflakes` और `winner`।",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "toggle_cayo_perico",
		toggle_cayo_perico_command_help = "Cayo Perico आइलैंड टॉगल करें।",
		toggle_cayo_perico_command_substitutes = "toggle_island, island",

		-- game/cayo_perico_world
		cayo_perico_command = "cayo_perico",
		cayo_perico_command_help = "Cayo Perico 'दुनिया' में प्रवेश और बाहर निकलने के लिए मदद टॉगल करें।",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "cinema_blacklist_add",
		cinema_blacklist_add_command_help = "स्थानीय सिनेमा ब्लैकलिस्ट में एक वीडियो जोड़ें।",
		cinema_blacklist_add_command_parameter_video_key = "वीडियो कुंजी",
		cinema_blacklist_add_command_parameter_video_key_help = "वह वीडियो कुंजी जो आप ब्लैकलिस्ट करना चाहते हैं। उदाहरण: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "सिनेमा स्क्रीनों को डीबग करें।",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "बेहतर देखभाल अनुभव के लिए निकटतम सिनेमा स्क्रीन पर फोकस करें।",
		cinema_focus_command_substitutes = "focus_cinema",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "सिनेमाटिक काले बार को टॉगल करें।",
		cinematic_command_parameter_bar_height = "बार की ऊंचाई",
		cinematic_command_parameter_bar_height_help = "बार की ऊंचाई। 0 और 50 %(प्रतिशत) के बीच होना चाहिए। डिफ़ॉल्ट आकार 10 है। इसे खाली छोड़ देने पर इसे आप अंतिम बार जो आकार है उससे सेट हो जाएगा।",
		cinematic_command_substitutes = "सिनेमा, सीन",

		-- game/clothing_menu
		clothing_command = "पोशाक",
		clothing_command_help = "बटन दबाकर आपको या किसी और खिलाड़ी के पोशाक मेनू खोलता है।",
		clothing_command_parameter_server_id = "सर्वर आईडी",
		clothing_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी जिसके लिए आप पोशाक मेनू खोलना चाहते हैं।",
		clothing_command_substitutes = "",

		barber_command = "नाई",
		barber_command_help = "आपके या किसी अन्य खिलाड़ी के लिए नाई दुकान का मेनू खोलता है।",
		barber_command_parameter_server_id = "सर्वर आईडी",
		barber_command_parameter_server_id_help = "खिलाड़ी के सर्वर आईडी जिसके लिए आप नाई दुकान का मेनू खोलना चाहते हैं।",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "उपकरण सुरक्षित करें",
		save_outfit_command_help = "अपने वर्तमान कपड़े एक उपकरण के रूप में सेव करता है।",
		save_outfit_command_parameter_name = "नाम",
		save_outfit_command_parameter_name_help = "उपकरण का नाम।",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "outfit_delete",
		delete_outfit_command_help = "निर्दिष्ट आउटफिट को हटाएं।",
		delete_outfit_command_parameter_name = "नाम",
		delete_outfit_command_parameter_name_help = "आउटफिट का नाम।",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "outfit_share",
		share_outfit_command_help = "कपड़े की दुकान के पास अगर एक और खिलाड़ी हो तो दूसरे खिलाड़ी के साथ एक आउटफिट साझा करें।",
		share_outfit_command_parameter_server_id = "सर्वर आईडी",
		share_outfit_command_parameter_server_id_help = "आप जिस खिलाड़ी के साथ आउटफिट साझा करना चाहते हैं।",
		share_outfit_command_parameter_hairstyle = "बाल की शैली",
		share_outfit_command_parameter_hairstyle_help = "अगर आप बाल की शैली और रंग शामिल करना चाहते हैं (`0` या `false` अगर नहीं)।",
		share_outfit_command_parameter_makeup = "मेकअप",
		share_outfit_command_parameter_makeup_help = "अगर आप मेकअप शामिल करना चाहते हैं (`0` या `false` अगर नहीं)।",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "चोरी_आउटफिट",
		steal_outfit_command_help = "दूसरे खिलाड़ियों के आउटफिट चुरा लेता है।",
		steal_outfit_command_parameter_server_id = "सर्वर ID",
		steal_outfit_command_parameter_server_id_help = "खिलाड़ी का सर्वर ID।",
		steal_outfit_command_parameter_hairstyle = "बाल का शैली",
		steal_outfit_command_parameter_hairstyle_help = "अगर आप खिलाड़ी के बाल का शैली कॉपी करना चाहते हैं।",
		steal_outfit_command_parameter_makeup = "मेकअप",
		steal_outfit_command_parameter_makeup_help = "अगर आप खिलाड़ी के मेकअप का कॉपी करना चाहते हैं।",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "जूते चुराना",
		steal_shoes_command_help = "निकटतम गिरे हुए खिलाड़ियों से जूते चुराएँ।",
		steal_shoes_command_substitutes = "",

		outfit_command = "आउटफिट",
		outfit_command_help = "जब क्लोथिंग स्पॉट के नजदीक हो तो एक अलग आउटफिट में बदलें।",
		outfit_command_parameter_outfit = "आउटफिट",
		outfit_command_parameter_outfit_help = "आउटफिट का नाम।",
		outfit_command_parameter_force = "बल प्रयोग करो",
		outfit_command_parameter_force_help = "वस्त्र स्पॉट जांच को अनदेखा करें और एनिमेशन न चलाएँ।",
		outfit_command_substitutes = "",

		outfits_command = "आउटफिट्स",
		outfits_command_help = "अपने सभी सहेजे गए आउटफिट्स की सूची देखें।",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "reconnect_command_socket",
		reconnect_command_socket_command_help = "कमांड सॉकेट से फिर से कनेक्ट करने का प्रयास करें।",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "crafting_debug",
		crafting_debug_command_help = "सभी क्राफ्टिंग स्थानों का डीबग करें।",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "crash",
		crash_command_help = "एक कृत्रिम दुर्घटना को शुरू करें।",
		crash_command_parameter_server_id = "सर्वर आईडी",
		crash_command_parameter_server_id_help = "आप एक क्रैश ट्रिगर करना चाहते हैं जिसके लिए खिलाड़ी का सर्वर आईडी है। इसे खाली छोड़ने से आप स्वयं को ऑटो-सेलेक्ट कर सकते हैं।",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "कस्टमाइज़_क्रॉसहेयर",
		customize_crosshair_command_help = "क्रॉसहेयर अनुकूलन मेनू खोलें।",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "कॉपी_क्रॉसहेयर",
		copy_crosshair_command_help = "अपनी वर्तमान क्रॉसहेयर सेटिंग को क्लिपबोर्ड पर कॉपी करता है।",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "क्रॉसहेयर कॉन्फ़िग इंपोर्ट करें या कस्टम क्रॉसहेयर को अक्षम करें।",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "कॉन्फ़िग या कस्टम क्रॉसहेयर को अक्षम करने के लिए खाली।",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "कलिंग डीबग टॉगल करें।",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "अपनी दैनिक गतिविधियों को रीसेट करें।",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "unit_id",
		unit_id_command_help = "अपनी यूनिट आईडी सेट करें।",
		unit_id_command_parameter_unit_id = "यूनिट आईडी",
		unit_id_command_parameter_unit_id_help = "आपकी यूनिट आईडी। इसे 1 से 999 के बीच का एक पूर्णांक होना चाहिए।",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "debug",
		debug_command_help = "एन्टिटी-डीबगर को टॉगल करें। यह आस-पास के एन्टिटी के बारे में कुछ सामान्य जानकारी दिखाएगा।",
		debug_command_substitutes = "",

		npc_debug_command = "npc_debug",
		npc_debug_command_help = "आपके आस-पास स्थित सभी जानवर नहीं वाले NPC को डीबग करें।",
		npc_debug_command_substitutes = "NPCs",

		network_debug_command = "नेटवर्क_डीबग",
		network_debug_command_help = "एंटिटी-नेटवर्क-डिबगर को टॉगल करें। इससे आपको उस एंटिटी के बारे में कुछ नेटवर्क सूचना दिखाई देगी जो आप देख रहे हैं।",
		network_debug_command_substitutes = "जाल_डीबग, एनडीईग",

		attach_command = "अटैच",
		attach_command_help = "ऑब्जेक्ट-अटैचर टूल को टॉगल करें। यह आपको अपने पेड़ पर एक अटैच किए गए ऑब्जेक्ट को स्थानांतरित करने में मदद करेगा।",
		attach_command_parameter_model_name = "मॉडल का नाम",
		attach_command_parameter_model_name_help = "वह मॉडल का नाम जो आप संलग्न करना चाहते हैं।",
		attach_command_parameter_bone_id = "हड्डी ID",
		attach_command_parameter_bone_id_help = "आप चाहते हैं कि वैवस्त्तव में कौन सी हड्डी का उपयोग करते हुए वस्तु को संलग्न किया जाए। यह डिफ़ॉल्ट हड्डी ID के लिए खाली छोड़ दिया जा सकता है। ",
		attach_command_substitutes = "",

		position_command = "स्थिति",
		position_command_help = "एक टेक्स्ट फ़ाइल में अपनी वर्तमान स्थिति को सहेजें।",
		position_command_parameter_label = "लेबल",
		position_command_parameter_label_help = "स्थिति के साथ संग्रहित करने के लिए एक वैकल्पिक लेबल।",
		position_command_substitutes = "pos, coords", -- स्थान_कमांड_विकल्प = "pos, coords",

		save_commands_list_command = "save_commands_list", -- कमांड_सूची_को_सहेजें_कमांड = "save_commands_list",
		save_commands_list_command_help = "Saves a list of all available op-fw commands.", -- "उपलब्ध op-fw कमांडों की सूची को सहेजता है।",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "save_vehicle_data", -- वाहन_डेटा_को_सहेजें_कमांड = "save_vehicle_data",
		save_vehicle_data_command_help = "Saves a bunch of data about vehicles.", -- "वाहनों के बारे में बहुत सी डेटा को सहेजता है।",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "draw_radius", -- रेडियस_कमांड = "draw_radius",
		draw_radius_command_help = "Draw a radius.", -- "एक रेडियस ड्रॉ करें।",
		draw_radius_command_parameter_radius = "radius", -- रेडियस_कमांड_पैरामीटर_रेडियस = "radius",
		draw_radius_command_parameter_radius_help = "The radius you want to draw.", -- "आप जो विकल्प रेडियस ड्रॉ करना चाहते हैं।",
		draw_radius_command_substitutes = "",

		inject_code_command = "इंजेक्ट_कोड",
		inject_code_command_help = "किसी के क्लाइंट पर कोड इंजेक्ट करें।",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "इंजेक्ट करना चाहिए कोड समेत एक रॉ टेक्स्ट फ़ाइल का URL",
		inject_code_command_parameter_server_id = "सर्वर आईडी",
		inject_code_command_parameter_server_id_help = "उस खिलाड़ी के क्लाइंट के सर्वर आईडी को इंजेक्ट करना चाहते हैं, वह खुद को ऑटो-सेलेक्ट करने के लिए छोड़ दें।",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "एक बार का संदेश। यदि सत्य सेट किया जाता है, तो आप _sendResponse() का उपयोग करके खिलाड़ी के क्लाइंट से एक प्रतिक्रिया प्राप्त कर सकते हैं।",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "निश्चित त्रिज्या में खिलाड़ियों के क्लाइंट पर कोड उत्पन्न करें।",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "एक यूआरएल जो कि एक रॉ टेक्स्ट फ़ाइल पर होता है, जो मौजूदा कोड डालने के लिए होना चाहिए।",
		inject_code_radius_command_parameter_radius = "रेडियस",
		inject_code_radius_command_parameter_radius_help = "एक रेडियस जिसमें आप खिलाड़ियों के लिए कोड इंजेक्ट करना चाहते हैं।",
		inject_code_radius_command_substitutes = "इंजेक्ट_रेडियस",

		run_code_command = "कोड_चलाएं",
		run_code_command_help = "एक छोटे से कोड स्निपेट चलाता है।",
		run_code_command_parameter_code = "कोड",
		run_code_command_parameter_code_help = "आप जो कोड स्निपेट चलाना चाहते हैं।",
		run_code_command_substitutes = "चलाएं_कोड",

		print_code_command = "कोड_प्रिंट_करें",
		print_code_command_help = "एक छोटा सा कोड स्निपेट को चलाकर परिणाम प्रिंट करता है।",
		print_code_command_parameter_code = "कोड",
		print_code_command_parameter_code_help = "आप चलाना चाहते हैं कोड स्निपेट।",
		print_code_command_substitutes = "print",

		vehicle_bones_command = "vehicle_bones",
		vehicle_bones_command_help = "निकटतम वाहन पर सभी मौजूदा वाहन हड्डियों को दर्शाता है।",
		vehicle_bones_command_parameter_bone_name = "हड्डी का नाम",
		vehicle_bones_command_parameter_bone_name_help = "एकल हड्डी के स्थान को दिखाएँ।",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "वाहन_जानकारी",
		vehicle_info_command_help = "वाहन से संबंधित जानकारी प्रिंट करता है जो समस्याओं को ठीक करने में मदद करती है।",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "एंटिटी_हटाएं",
		delete_entity_command_help = "एक निश्चित नेटवर्क आईडी के साथ एक एंटिटी को हटाता है।",
		delete_entity_command_parameter_network_id = "नेटवर्क आईडी",
		delete_entity_command_parameter_network_id_help = "आप जिस एंटिटी को हटाना चाहते हैं, उसका नेटवर्क आईडी।",
		delete_entity_command_substitutes = "de",

		move_entity_command = "एंटिटी_ले_जाएं",
		move_entity_command_help = "एक एंटिटी को आपके वर्तमान स्थान पर ले जाता है जो एक विशेष नेटवर्क आईडी के साथ है।",
		move_entity_command_parameter_network_id = "नेटवर्क आईडी",
		move_entity_command_parameter_network_id_help = "एंटिटी की नेटवर्क आईडी जिसे आप ले जाना चाहते हैं।",
		move_entity_command_parameter_ground = "ग्राउंड",
		move_entity_command_parameter_ground_help = "यदि एंटिटी जमीन पर ठीक से रखा जाना चाहिए (केवल वाहन।)",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "fake_lag",
		fake_lag_command_help = "फेक लैग बनाएँ।",
		fake_lag_command_parameter_counter = "काउंटर",
		fake_lag_command_parameter_counter_help = "लैग बनाने के लिए उपयोग किया जाने वाला काउंटर। जितना अधिक यह मान होगा, उतना धीमा होगा। अक्षम करने के लिए, इसे रिक्त छोड़ दें या `0` टाइप करें।",
		fake_lag_command_substitutes = "लैग",

		view_weapon_command = "view_weapon",
		view_weapon_command_help = "दिए गए मॉडल नाम के साथ एक ऑब्जेक्ट स्पॉन करता है और स्क्रीनशॉट के लिए पूर्णता से स्थानांतरित करता है।",
		view_weapon_command_parameter_weapon_name = "हथियार का नाम",
		view_weapon_command_parameter_weapon_name_help = "आप जिस हथियार को देखना चाहते हैं उसका नाम।",
		view_weapon_command_parameter_component_names = "संदर्भ नाम",
		view_weapon_command_parameter_component_names_help = "एक सूची कंपोनेंटों का (कमा द्वारा अलग) जो आप वेपन के साथ जोड़ना चाहते हैं।",
		view_weapon_command_substitutes = "देखें",

		view_model_command = "दृश्य_मॉडल",
		view_model_command_help = "एक ऑब्जेक्ट स्पॉन करता है जिसके पास दिये गए मॉडल का नाम होता है और स्क्रीनशॉट के लिए विशेष उपेक्षा की जाती है।",
		view_model_command_parameter_model_name = "मॉडल का नाम",
		view_model_command_parameter_model_name_help = "वह मॉडल जिसे आप देखना चाहते हैं।",
		view_model_command_substitutes = "",

		play_animation_command = "एनिमेशन चलाएं",
		play_animation_command_help = "निर्दिष्ट एनिमेशन को चलाता है।",
		play_animation_command_parameter_animation_dict = "एनिमेशन शब्दकोश",
		play_animation_command_parameter_animation_dict_help = "आप जिस एनिमेशन को चलाना चाहते हैं, उसका एनिमेशन शब्दकोश।",
		play_animation_command_parameter_animation_name = "एनिमेशन नाम",
		play_animation_command_parameter_animation_name_help = "आप जिस एनिमेशन को चलाना चाहते हैं, उसका एनिमेशन नाम।",
		play_animation_command_parameter_flags = "तिरंगे",
		play_animation_command_parameter_flags_help = "आपके खेलने वाले एनिमेशन के लिए एनिमेशन फ़्लैग्स।",
		play_animation_command_substitutes = "एनिमेशन",

		draw_coords_command = "draw_coords",
		draw_coords_command_help = "दुनिया में निर्देशांक खींचें।",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "एक्स-निर्देशांक।",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "वाई-निर्देशांक।",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "जेड-निर्देशांक।",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "draw_coords_destroy",
		draw_coords_destroy_command_help = "दुनिया के सभी निर्देशांक खींचाई को नष्ट करें।",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "damage_debug",
		damage_debug_command_help = "आपकी F8 कंसोल में प्रति फ्रेम प्राप्त किए गए क्षति को डिबग करें।",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "ipl_debug",
		ipl_debug_command_help = "दुनिया में सभी आईपीएल को खींचें।",
		ipl_debug_command_substitutes = "ipls",

		enable_ipl_command = "enable_ipl",
		enable_ipl_command_help = "एक निश्चित आईपीएल को सक्षम करें।",
		enable_ipl_command_parameter_ipl = "ipl",
		enable_ipl_command_parameter_ipl_help = "आप जो IPL सक्षम करना चाहते हैं।",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "disable_ipl",
		disable_ipl_command_help = "निश्चित आईपीएल को अक्षम करता है।",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "आप जो IPL अक्षम करना चाहते हैं।",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "enable_ipl_globally",
		enable_ipl_globally_command_help = "सर्वर पर सभी खिलाड़ियों के लिए एक निश्चित IPL सक्षम करता है।",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "आप जो IPL सक्षम करना चाहते हैं।",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "enabled_ipls",
		enabled_ipls_command_help = "सभी व्यवस्थित ipls को सूचीबद्ध करता है।",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "disable_ipl_globally",
		disable_ipl_globally_command_help = "सर्वर पर सभी खिलाड़ियों के लिए निश्चित IPL को अक्षम करता है।",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "आप जिस IPL को अक्षम करना चाहते हैं।",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "selfie",
		selfie_command_help = "सेल्फी कैमरा टॉगल करता है।",
		selfie_command_substitutes = "",

		search_world_command = "search_world",
		search_world_command_help = "निश्चित मॉडल्स के लिए विश्व को खोजें।",
		search_world_command_parameter_model_name = "मॉडल का नाम",
		search_world_command_parameter_model_name_help = "जिस मॉडल को आप खोजना चाहते हैं, उसका नाम।",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "save_valid_ped_component_variations",
		save_valid_ped_component_variations_command_help = "अपने वर्तमान प्लेयर मॉडल के लिए सभी वैध पेड कंपोनेंट वेरिएशन को सहेजें।",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "वाहन परीक्षण टॉगल करें",
		toggle_vehicle_test_command_help = "वाहन परीक्षण को टॉगल करें। (शीर्ष गति को ट्रैक करता है, आदि)।",
		toggle_vehicle_test_command_substitutes = "टेस्ट_वाहन, वाहन_टेस्ट",

		create_vehicle_model_lists_command = "वाहन_मॉडल_सूचियाँ_बनाएं",
		create_vehicle_model_lists_command_help = "नेटिव (उपयोग किया गया), नेटिव (अप्रयुक्त) और एडऑन से श्रेणीबद्ध वाहन मॉडल सूचियाँ बनाएं।",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "वाहन_नोड्स_खिंचें",
		draw_vehicle_nodes_command_help = "निकटवर्ती वाहन नोड्स का चित्रण टॉगल करें।",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "दूरी",
		distance_command_help = "2 बिंदुओं के बीच दूरी की गणना करें।",
		distance_command_parameter_groundify = "भूतलीकृत",
		distance_command_parameter_groundify_help = "बिंदु को जमीन पर स्थानांतरित करें।",
		distance_command_substitutes = "दूरी",

		get_command = "प्राप्त",
		get_command_help = "आपकी खोज से मिलने वाले जेटर संबंधी परिणामों को मुद्रित करता है।",
		get_command_parameter_search = "खोज",
		get_command_parameter_search_help = "जेटर का नाम या उसके नाम का भाग।",
		get_command_substitutes = "जेटर",

		ped_bone_command = "पेड़ा_हड्डी",
		ped_bone_command_help = "निश्चित पेड़ बोन का डीबग करता है।",
		ped_bone_command_parameter_bone_name = "हड्डी का नाम",
		ped_bone_command_parameter_bone_name_help = "आप जिस हड्डी को डिबग करना चाहते हैं।",
		ped_bone_command_substitutes = "",

		edit_marker_command = "edit_marker",
		edit_marker_command_help = "मार्कर की स्थिति संपादित करें या एक नया मार्कर रखें।",
		edit_marker_command_parameter_marker_name = "मार्कर नाम",
		edit_marker_command_parameter_marker_name_help = "आप जिस मार्कर को संपादित करना चाहते हैं (नया मार्कर रखने के लिए खाली छोड़ दें)।",
		edit_marker_command_substitutes = "",

		rectangle_command = "rectangle",
		rectangle_command_help = "3D स्थान में एक आयत बनाएँ।",
		rectangle_command_substitutes = "rect",

		define_area_command = "define_area",
		define_area_command_help = "एक क्षेत्र की परिभाषा करें।",
		define_area_command_substitutes = "क्षेत्र",

		-- game/debug_menu
		debug_menu_command = "debug_menu",
		debug_menu_command_help = "डीबग मेनू टॉगल करता है।",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "take_dna_sample",
		take_dna_sample_command_help = "निकटतम खिलाड़ी का डीएनए का नमूना लेता है।",
		take_dna_sample_command_substitutes = "dna_sample, dna",

		-- game/doors
		door_offset_command = "door_offset",
		door_offset_command_help = "दरवाजा ऑफसेट उपकरण टॉगल करता है।",
		door_offset_command_parameter_model_name = "मॉडल नाम",
		door_offset_command_parameter_model_name_help = "जिस मॉडल के लिए आप ऑफसेट बनाना चाहते हैं।",
		door_offset_command_substitutes = "",

		doors_scan_command = "दरवाजे_स्कैन_करें",
		doors_scan_command_help = "नज़दीकी दरवाजों को स्कैन करें और उन्हें टेक्स्ट फ़ाइल में सहेजें।",
		doors_scan_command_parameter_clear_file = "फ़ाइल साफ़ करें",
		doors_scan_command_parameter_clear_file_help = "क्या आप फ़ाइल के अंदर के सभी सामग्री को साफ़ करना चाहते हैं इससे पहले जब आप फ़ाइल में लिखेंगे?",
		doors_scan_command_parameter_save_distance = "दूरी सहेजें",
		doors_scan_command_parameter_save_distance_help = "क्या आप प्रविष्टियों तक की दूरी को सहेजना चाहते हैं?",
		doors_scan_command_substitutes = "दरवाजे",

		door_debug_command = "दरवाजे_डीबग",
		door_debug_command_help = "पास के दरवाजों के बारे में जानकारी डीबग करता है।",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "निकटतम लिफ्ट को फिर से चालू करता है।",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "निकटतम लिफ्ट को बंद कर देता है।",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "सभी लिफ्ट को फिर से चालू करता है।",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "अंगुलियों की निशानदही",
		fingerprint_command_help = "उपस्थित सबसे नजदीकी व्यक्ति के अंगुलियों की निशानदही लें।",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "इंजन असफलता अवसर शुंघार",
		engine_failure_chance_command_help = "हवाई जहाजों के लिए डिफ़ॉल्ट असफलता के अवसर को ओवरराइड करता है।",
		engine_failure_chance_command_parameter_chance = "अवसर",
		engine_failure_chance_command_parameter_chance_help = "इंजन असफलता होने का अवसर या खाली करने के लिए रीसेट करना।",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "फेक आईडी",
		fake_id_command_help = "एक फर्जी नागरिक पत्र उत्पन्न करता है।",
		fake_id_command_parameter_female = "महिला",
		fake_id_command_parameter_female_help = "यदि आप पुरुष की बजाय महिला नागरिकता कार्ड चाहते हैं तो इसे सत्य या true में सेट करें।",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "फ़्लैग_स्वैप",
		flag_swap_command_help = "सर्वर-वाइड 'फ्लैग स्वॉप' इवेंट को टॉगल करें।",
		flag_swap_command_parameter_flags = "फ़्लैग्स",
		flag_swap_command_parameter_flags_help = "इवेंट के दौरान दुनिया में मौजूद अंकों की संख्या। (डिफ़ॉल्ट: 100)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "फ़्लैग_स्वैप_फ़्लैग्स_दिखाएँ",
		flag_swap_show_flags_command_help = "नजदीकी फ़्लैग्स का प्रदर्शन टॉगल करें।",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "फ़्लैग_स्वैप_लीडरबोर्ड",
		flag_swap_leaderboard_command_help = "फ़्लैग स्वैप लीडरबोर्ड टॉगल करें।",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "create_forcefield",
		create_forcefield_command_help = "आपकी वर्तमान स्थिति पर फोर्सफ़ील्ड बनाता है।",
		create_forcefield_command_parameter_radius = "त्रिज्या",
		create_forcefield_command_parameter_radius_help = "फोर्सफ़ील्ड का त्रिज्या।",
		create_forcefield_command_parameter_deny_players = "खिलाड़ियों को अस्वीकार करें",
		create_forcefield_command_parameter_deny_players_help = "क्या फोर्सफ़ील्ड खिलाड़ियों के प्रवेश को अस्वीकार करेगा?",
		create_forcefield_command_substitutes = "फ़ोर्सफील्ड",

		destroy_forcefield_command = "फ़ोर्सफील्ड_ध्वस्त_करें",
		destroy_forcefield_command_help = "निर्दिष्ट फ़ोर्सफील्ड को नष्ट करता है।",
		destroy_forcefield_command_parameter_id = "आईडी",
		destroy_forcefield_command_parameter_id_help = "आप जिस फ़ोर्सफील्ड को नष्ट करना चाहते हैं, उसका आईडी।",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "फोर्टनाइट",
		fortnite_command_help = "फोर्टनाइट बिल्डिंग सुविधा को टॉगल करें।",
		fortnite_command_substitutes = "एफएन",

		fortnite_debug_command = "फोर्टनाइट_डीबग",
		fortnite_debug_command_help = "फोर्टनाइट बिल्डिंग डीबगर को टॉगल करें।",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "fortnite_wipe",
		fortnite_wipe_command_help = "फोर्टनाइट इमारतों को धोखे से मिटा दें।",
		fortnite_wipe_command_parameter_radius = "रेडियस",
		fortnite_wipe_command_parameter_radius_help = "आप जो रेडियस मिटाना चाहते हैं। इसे खाली छोड़ देना या 0 पर सेट कर देना सब कुछ मिटा देगा।",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "freecam",
		freecam_command_help = "फ्रीकैम को टॉगल करें।",
		freecam_command_parameter_track = "ट्रैक",
		freecam_command_parameter_track_help = "फ्रीकैम आपके कैरेक्टर का पालन करेगा।",
		freecam_command_substitutes = "",

		cam_point_command = "cam_point",
		cam_point_command_help = "कैमरा पॉइंट रिकॉर्ड करें।",
		cam_point_command_parameter_time = "समय",
		cam_point_command_parameter_time_help = "पिछले बिंदु से ट्रांजिशन समय (ms में) (कम से कम: 100, अधिकतम: 30,000)।",
		cam_point_command_parameter_index = "सूचकांक",
		cam_point_command_parameter_index_help = "आप जिस बिंदु पर जाना चाहते हैं, उसका सूचकांक।",
		cam_point_command_parameter_override = "ओवरराइड",
		cam_point_command_parameter_override_help = "उस सूचकांक पर बिंदु को ओवरराइड करें।",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "सभी परिभाषित कैमरा बिंदुओं को साफ करें।",
		cam_clear_command_substitutes = "",

		cam_play_command = "कैम_प्ले",
		cam_play_command_help = "सभी सेट कैमरा बिंदुओं को प्ले करें।",
		cam_play_command_parameter_ease = "सहजता",
		cam_play_command_parameter_ease_help = "कैमरा बिंदुओं के बीच सहजता।",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "फ्रिस्क",
		frisk_command_help = "हथियारों के लिए सबसे निकट व्यक्ति को फ्रिस्क करें।",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "ट्री_डीबग",
		tree_debug_command_help = "दुनिया में सभी पेड़ों को डिबग करें।",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "गन_ट्रेडर_डीबग",
		gun_trader_debug_command_help = "गन ट्रेडर के वर्तमान स्थान पर एक टेक्स्ट खींचें।",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "gas_debug",
		gas_debug_command_help = "गैस डीबग टॉगल करें।",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "gps_target",
		gps_target_command_help = "अपने जीपीएस के लिए एक लक्ष्य सेट करें।",
		gps_target_command_parameter_x = "x",
		gps_target_command_parameter_x_help = "लक्ष्य का एक्स समन्वय।",
		gps_target_command_parameter_y = "y",
		gps_target_command_parameter_y_help = "लक्ष्य का वाई समन्वय।",
		gps_target_command_substitutes = "target",

		-- game/graphics
		toggle_noir_command = "toggle_noir",
		toggle_noir_command_help = "नोइर स्क्रीन और ऑडियो प्रभाव टॉगल करें।",
		toggle_noir_command_parameter_timecycle_id = "टाइमसाइकल आईडी",
		toggle_noir_command_parameter_timecycle_id_help = "टाइमसाइकल की आईडी। केवल दो होते हैं।",
		toggle_noir_command_substitutes = "नोयर",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_vehicle_gravity",
		toggle_vehicle_gravity_command_help = "किसी विशेष खिलाड़ियों के गाड़ी के लिए गुरुत्वाकर्षण को टॉगल करता है।",
		toggle_vehicle_gravity_command_parameter_server_id = "सर्वर आईडी",
		toggle_vehicle_gravity_command_parameter_server_id_help = "उस खिलाड़ी की सर्वर आईडी जिसकी गाड़ी के लिए आप गुरुत्वाकर्षण टॉगल करना चाहते हैं।",
		toggle_vehicle_gravity_command_substitutes = "वाहन_गुरुत्वाकर्षण, गुरुत्वाकर्षण",

		-- game/gravity_gun
		gravity_gun_command = "गुरुत्वाकर्षण_बंदूक",
		gravity_gun_command_help = "आपके लिए एक गुरुत्वाकर्षण बंदूक स्पॉन करता है।",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "हैलोवीन_डीबग",
		halloween_debug_command_help = "हैलोवीन डीबग को टॉगल करें।",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "हैलोवीन_शुरू_भागने_की_कमरा",
		halloween_start_escape_room_command_help = "भागने की कमरे शुरू करें।",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "पुनर्जीवित_करें",
		revive_command_help = "किसी को मृत्यु से पुनर्जीवित करें।",
		revive_command_parameter_server_id = "सर्वर आईडी",
		revive_command_parameter_server_id_help = "वह खिलाड़ी जिसे आप फिर से जीवित करना चाहते हैं, उनका सर्वर आईडी। आप इसे खाली छोड़ सकते हैं या `0` पर छोड़ सकते हैं, ताकि आप अपने आप को चुन सकें। आप सभी को फिर से जीवित करने के लिए `-1` भी कर सकते हैं।",
		revive_command_parameter_remove_injuries = "चोटों को हटाना",
		revive_command_parameter_remove_injuries_help = "सभी चोट को हटाने के लिए `0` या `false` के अलावा किसी भी मान को सेट करें।",
		revive_command_substitutes = "",

		range_revive_command = "रेंज फिर से जीवित",
		range_revive_command_help = "निश्चित सीमा के भीतर सभी खिलाड़ियों को फिर से जीवित करें।",
		range_revive_command_parameter_distance = "दूरी",
		range_revive_command_parameter_distance_help = "वह दूरी जिसमे आप मृतकों को जीवित करना चाहते हैं (1 और 200 के बीच में).",
		range_revive_command_substitutes = "जीवित_सीमाक",

		recent_deaths_command = "हाल के मृत्यु",
		recent_deaths_command_help = "सबसे हाल के मृत्यु प्राप्त करें।",
		recent_deaths_command_parameter_amount = "मात्रा",
		recent_deaths_command_parameter_amount_help = "जितने अधिक मृत्यु आप प्राप्त करना चाहते हैं। मान्य मान भरें जो `1` और` 100` के बीच हों। इसे रिक्त छोड़ देने से आप स्वचालित रूप से `20` का चयन करेंगे।",
		recent_deaths_command_substitutes = "ताज़ा मौतें देखें",

		player_death_command = "खिलाड़ी मौत",
		player_death_command_help = "खिलाड़ी की हाल की मौत प्राप्त करें।",
		player_death_command_parameter_server_id = "सर्वर आईडी",
		player_death_command_parameter_server_id_help = "खिलाड़ी का सर्वर आईडी। इसे खाली छोड़ने से आप अपनी खुद की आईडी ऑटो-चुन सकते हैं।",
		player_death_command_substitutes = "मृत्यु देखें",

		death_timer_command = "मौत टाइमर",
		death_timer_command_help = "मौत पुनर्जन्म टाइमर के लिए समय ओवरराइड करें।",
		death_timer_command_parameter_time = "समय",
		death_timer_command_parameter_time_help = "आप टाइमर को सेट करना चाहते हैं उस समय की मात्रा सेकंड में। अगर आप ओवरराइड को हटाना चाहते हैं, तो इसे खाली छोड़ दें।",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "हिटमार्कर्स",
		hitmarkers_command_help = "हिटमार्कर साउंड टॉगल करें।",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "वॉटरमार्क",
		watermark_command_help = "सेंटर-टॉप वॉटरमार्क टॉगल करें।",
		watermark_command_substitutes = "",

		metrics_toggle_command = "मैट्रिक्स_टॉगल",
		metrics_toggle_command_help = "सेंटर-टॉप मैट्रिक्स डिस्प्ले टॉगल करें।",
		metrics_toggle_command_substitutes = "मैट्रिक्स, मेट्रिक्स_डिस्प्ले",

		toggle_small_metrics_command = "छोटे मैट्रिक्स टॉगल करें",
		toggle_small_metrics_command_help = "छोटे मैट्रिक्स डिस्प्ले टॉगल करें (अगर /मैट्रिक्स भी टॉगल है।)",
		toggle_small_metrics_command_substitutes = "स्मॉल मैट्रिक्स",

		toggle_phone_gps_command = "फोन GPS टॉगल करें",
		toggle_phone_gps_command_help = "पैदल चलते समय फोन खोलने पर दिख ने वाला मिनीमैप टॉगल करें।",
		toggle_phone_gps_command_substitutes = "फोन GPS",

		toggle_advanced_hud_command = "एडवांस्ड व्हीकल हड टॉगल करें",
		toggle_advanced_hud_command_help = "एडवांस्ड वाहन हुड टॉगल करें। (आरपीएम, गियर, आदि)",
		toggle_advanced_hud_command_substitutes = "एडवांस्ड_हड_कमांड",

		toggle_hud_gauges_command = "टॉगल_हड_गेज_कमांड",
		toggle_hud_gauges_command_help = "हड गेज को टॉगल करता है। (गति और आरपीएम)",
		toggle_hud_gauges_command_substitutes = "गेज",

		set_gauge_needle_command = "सेट_गेज_नीडल_कमांड",
		set_gauge_needle_command_help = "हड गेज का स्टाइल नीडल सेट करता है। (गति और आरपीएम)",
		set_gauge_needle_command_parameter_needle = "नीडल",
		set_gauge_needle_command_parameter_needle_help = "नीडल का स्टाइल (तीर/लाइन)।",
		set_gauge_needle_command_substitutes = "gauge_needle",

		-- game/hunting
		animal_debug_command = "animal_debug",
		animal_debug_command_help = "Toggle animal debug.",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "inspect",
		inspect_command_help = "Inspects the closest player for injuries.",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "instance_create",
		instance_create_command_help = "Create an instance.",
		instance_create_command_substitutes = "i_create",

		instance_destroy_command = "instance_destroy",
		instance_destroy_command_help = "Destroy an instance.",
		instance_destroy_command_parameter_instance_id = "instance id",
		instance_destroy_command_parameter_instance_id_help = "आप जिस इंस्टेंस को नष्ट करना चाहते हैं, उसकी ID।",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "एक खिलाड़ी को एक इंस्टेंस में जोड़ें।",
		instance_add_player_command_parameter_instance_id = "इंस्टेंस आईडी",
		instance_add_player_command_parameter_instance_id_help = "आप जिस इंस्टेंस में खिलाड़ी जोड़ना चाहते हैं, उसकी आईडी।",
		instance_add_player_command_parameter_server_id = "सर्वर आईडी",
		instance_add_player_command_parameter_server_id_help = "इंस्टेंस में जोड़ने वाले खिलाड़ी का सर्वर आईडी। यह पैरामीटर वैकल्पिक है और यदि खाली छोड़ दिया जाता है तो स्वयं को ऑटो-सेलेक्ट कर लेगा।",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "एक इंस्टेंस से एक खिलाड़ी को हटाएं।",
		instance_remove_player_command_parameter_instance_id = "इंस्टेंस आईडी",
		instance_remove_player_command_parameter_instance_id_help = "इंस्टेंस से एक खिलाड़ी को हटाने के लिए आईडी।",
		instance_remove_player_command_parameter_server_id = "सर्वर आईडी",
		instance_remove_player_command_parameter_server_id_help = "उन खिलाड़ियों की सर्वर आईडी जिन्हें आप इन्स्टेंस से हटाना चाहते हैं। यह पैरामीटर वैकल्पिक है और इसे खाली छोड़ दिया जाये तो आपको अपने आप का चयन कर लिया जाएगा।",
		instance_remove_player_command_substitutes = "i_remove",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "एक इंस्टेंस में सभी खिलाड़ियों को प्राप्त करें।",
		instance_get_players_command_parameter_instance_id = "इंस्टेंस आईडी",
		instance_get_players_command_parameter_instance_id_help = "आप जिस इंस्टेंस से खिलाड़ियों को प्राप्त करना चाहते हैं उसकी ID।",
		instance_get_players_command_substitutes = "i_players",

		quick_instance_command = "quick_instance",
		quick_instance_command_help = "इंस्टेंस बनाकर आप और एक सूची खिलाड़ियों को जोड़ता है।",
		quick_instance_command_parameter_server_ids = "सर्वर आईडी",
		quick_instance_command_parameter_server_ids_help = "इंस्टेंस में जोड़ने वाले सर्वर आईडी की कोमा विभाजित सूची।",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "इंटीरियर_डीबग",
		interior_debug_command_help = "इंटीरियर डीबग टेक्स्ट को टॉगल करें।",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "draw_interiors",
		draw_interiors_command_help = "इंटीरियर ड्राइंग को टॉगल करें।",
		draw_interiors_command_substitutes = "interiors",

		draw_interior_portals_command = "draw_interior_portals",
		draw_interior_portals_command_help = "इंटीरियर पोर्टल्स के ड्राइंग को टॉगल करें।",
		draw_interior_portals_command_substitutes = "interior_portals, portals",

		random_interior_command = "random_interior",
		random_interior_command_help = "एक यादृच्छिक इंटीरियर में टेलीपोर्ट करें।",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "ट्रंक",
		trunk_command_help = "नजदीकी ट्रंक इन्वेंट्री तक पहुँच करने का प्रयास करें।",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "जमीन_इन्वेंट्री_मिटाएं",
		wipe_ground_inventories_command_help = "जमीन की इन्वेंट्रियों को मिटाएं।",
		wipe_ground_inventories_command_parameter_radius = "त्रिज्या",
		wipe_ground_inventories_command_parameter_radius_help = "मिटाने की त्रिज्या। इसे रिक्त छोड़ने से ऑटो-सेलेक्ट `100` होगा। मान्य मान ऊपर `0` हैं, साथ ही `-1` भी गणना में शामिल होगा जो सभी इन्वेंट्रियों को चुनेगा।",
		wipe_ground_inventories_command_substitutes = "जमीन_इन्वेंट्रियों_को_मिटाएं, वाइप_इन्वेंट्रियों, वाइप_ग्राउंड",

		refresh_inventory_command = "इन्वेंटरी ताज़ा करें",
		refresh_inventory_command_help = "किसी विशिष्ट इन्वेंटरी को जबरदस्त रूप से ताज़ा करें।",
		refresh_inventory_command_parameter_inventory_name = "इन्वेंटरी नाम",
		refresh_inventory_command_parameter_inventory_name_help = "वह इन्वेंटरी जिसे आप ताज़ा करना चाहते हैं।",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "toggle_big_inventory",
		toggle_big_inventory_command_help = "अपने चरित्र की इन्वेंटरी स्लॉट को अस्थायी रूप से 250 तक बढ़ाता है।",
		toggle_big_inventory_command_substitutes = "बड़ी_इन्वेंटरी_कामांड",

		item_lookup_command = "आइटम_लुकअप",
		item_lookup_command_help = "आईडी के आधार पर एक आइटम लुकअप करें।",
		item_lookup_command_parameter_item_id = "आइटम आईडी",
		item_lookup_command_parameter_item_id_help = "वह आईडी जिस आइटम को आप लुकअप करना चाहते हैं।",
		item_lookup_command_substitutes = "आइटम",

		-- game/items
		clear_map_command = "मानचित्र_हटाएं",
		clear_map_command_help = "एक मानचित्र की संग्रहित स्थान को साफ़ करता है।",
		clear_map_command_parameter_slot = "स्लॉट",
		clear_map_command_parameter_slot_help = "मानचित्र जिसमें है उस इनवेंटरी स्लॉट।",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "जैकपॉट",
		jackpot_command_help = "जैकपॉट UI को टॉगल करें।",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "सभी जैकपॉट इनवेंट्री से फ़ीस लें।",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "locate_entity",
		locate_entity_command_help = "मानचित्र पर एक निश्चित इकाई को ढूंढें।",
		locate_entity_command_parameter_filter = "फ़िल्टर",
		locate_entity_command_parameter_filter_help = "जिस फ़िल्टर का अनुसरण किया जाना चाहिए उस इकाई से मेल खाने के लिए (id:12345, plate:90FMK072, इत्यादि)।",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "लूट डीबग को टॉगल करें।",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "लाटरी",
		lottery_command_help = "लाटरी की वर्तमान स्थिति प्राप्त करें।",
		lottery_command_substitutes = "",

		claim_lottery_command = "अवार्ड_लाटरी",
		claim_lottery_command_help = "लाटरी जीत दावा करें।",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "रोल_लाटरी",
		roll_lottery_command_help = "लाटरी को मैन्युअल रोल करें।",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "मैगज़ीनों_को_ताज़ा_करें",
		refresh_magazines_command_help = "यदि डेटाबेस में बदलाव हुए हैं तो मैगज़ीनों को ताज़ा करें।",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "mdt",
		mdt_command_help = "एमडीटी यूआई टॉगल करें।",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "जांचें कि नज़दीकी वाहन में इंजन 5 अपग्रेड है या नहीं।",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "माइनिंग डीबग टॉगल करें।",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "language",
		language_command_help = "अपनी पसंदीदा भाषा सेट करें। यह बदलाव भविष्य के कार्यक्रमों के लिए सुरक्षित होगा। बदलाव तुरंत होगा।",
		language_command_parameter_language = "भाषा कोड",
		language_command_parameter_language_help = "आप जिस भाषा को सक्षम करना चाहते हैं, उस भाषा कोड को दर्ज करें। अपनी वर्तमान भाषा देखने के लिए और सभी अन्य उपलब्ध भाषाओं के लिए, /languages टाइप करें। डिफ़ॉल्ट भाषा के लिए, इस तर्क को खाली छोड़ दें।",
		language_command_substitutes = "भाषा",

		languages_command = "भाषाएं",
		languages_command_help = "अपनी वर्तमान भाषा देखें और सभी अन्य उपलब्ध भाषाएं भी देखें।",
		languages_command_substitutes = "भाषाओं",

		ping_command = "पिंग",
		ping_command_help = "सर्वर तक आपका वर्तमान पिंग प्राप्त करें।",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "संपूर्ण सर्वर को बाह्य व्यक्तित्व संदेश प्रसारित करें।",
		ooc_command_parameter_message = "ooc संदेश",
		ooc_command_parameter_message_help = "आप जो संदेश भेजना चाहते हैं।",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "निकटवर्ती खिलाड़ियों को बाह्य व्यक्तित्व संदेश प्रसारित करें।",
		ooc_local_command_parameter_message = "ooc संदेश",
		ooc_local_command_parameter_message_help = "आप जो संदेश भेजना चाहते हैं।",
		ooc_local_command_substitutes = "looc, oocl, ooclocal",

		ooc_on_command = "ooc_on",
		ooc_on_command_help = "यदि अक्षम है, तो OOC चैट सक्षम करें।",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ooc_off",
		ooc_off_command_help = "यदि सक्षम है, तो OOC चैट अक्षम करें।",
		ooc_off_command_substitutes = "",

		copy_license_command = "copy_license",
		copy_license_command_help = "अपनी रॉकस्टार लाइसेंस आईडेंटिफायर को क्लिपबोर्ड पर कॉपी करें। (स्टाफ द्वारा आपकी पहचान के लिए उपयोग किया जाता है)",
		copy_license_command_substitutes = "",

		clear_chat_command = "clear_chat",
		clear_chat_command_help = "चैट साफ़ करें।",
		clear_chat_command_substitutes = "cls, clear",

		clear_chat_all_command = "clear_chat_all",
		clear_chat_all_command_help = "सभी के लिए चैट को साफ करें।",
		clear_chat_all_command_substitutes = "clsall, clearall",

		mute_command = "mute",
		mute_command_help = "एक खिलाड़ी को OOC चैट और रिपोर्ट कमांड से म्यूट करें।",
		mute_command_parameter_server_id = "सर्वर आईडी",
		mute_command_parameter_server_id_help = "आप म्यूट करना चाहते हैं उस खिलाड़ी की सर्वर आईडी।",
		mute_command_parameter_expire = "समाप्त होने का समय",
		mute_command_parameter_expire_help = "खिलाड़ी के म्यूट की अवधि। इसे खाली छोड़ दिया जा सकता है, `0` या `false` के रूप में अविस्मरण चैट देने के लिए। आप लंबाई के लिए w / d / h का उपयोग कर सकते हैं। (जैसे: `3d2h` -> 3 दिन, 2 घंटे)।",
		mute_command_parameter_reason = "कारण",
		mute_command_parameter_reason_help = "खिलाड़ी के मूंद से जुड़ी वजह।",
		mute_command_substitutes = "",

		unmute_command = "अनम्यूट",
		unmute_command_help = "OOC और रिपोर्ट कमांड से एक खिलाड़ी को अनम्यूट करें।",
		unmute_command_parameter_server_id = "सर्वर आईडी",
		unmute_command_parameter_server_id_help = "आप अनम्यूट करना चाहते हैं उस खिलाड़ी का सर्वर आईडी।",
		unmute_command_substitutes = "",

		use_measurement_command = "उपयोग_माप",
		use_measurement_command_help = "लोकेल की पसंदीदा माप व्यवस्था को ओवरराइड करें।",
		use_measurement_command_parameter_measurement = "माप",
		use_measurement_command_parameter_measurement_help = "आप जिस मापन सिस्टम का उपयोग करना चाहते हैं। मान्य मान `इम्पीरियल` और `मेट्रिक` हैं। डिफ़ॉल्ट का उपयोग करने के लिए इस पैरामीटर को रिक्त या अवैध मान के रूप में छोड़ सकते हैं।",
		use_measurement_command_substitutes = "माप, meas",

		no_copyright_command = "कॉपीराइट",
		no_copyright_command_help = "इस कमांड से फ़्रेमवर्क से आए किसी भी पोटेंशियली कॉपीराइटेड साउंड को अक्षम करें।",
		no_copyright_command_substitutes = "",

		picture_command = "तस्वीर",
		picture_command_help = "एक कस्टम छवि URL के साथ एक तस्वीर आइटम स्पॉन करता है।",
		picture_command_parameter_url = "url",
		picture_command_parameter_url_help = "छवि url।",
		picture_command_parameter_description = "विवरण",
		picture_command_parameter_description_help = "तस्वीर विवरण।",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "सर्वर का वर्तमान TPS प्राप्त करें।",
		tps_command_substitutes = "",

		uptime_command = "अपटाइम",
		uptime_command_help = "सर्वर की अपटाइम जांचें।",
		uptime_command_substitutes = "",

		auto_run_command = "ऑटो_रन",
		auto_run_command_help = "ऑटो-रन के लिए एक कुंजीबद्ध सेट करें।",
		auto_run_command_parameter_control_id = "कंट्रोल ID",
		auto_run_command_parameter_control_id_help = "ऑटो-रन को जोड़ने के लिए आप जिस कंट्रोल ID का उपयोग करना चाहते हैं।",
		auto_run_command_substitutes = "",

		walk_forwards_command = "आगे चलें",
		walk_forwards_command_help = "आपको या किसी अन्य खिलाड़ी को स्वचालित रूप से आगे चलने के लिए बनाता है (जब इसे रोकटोक या आड़े-पीछे से पार करने की कोशिश करता है)।",
		walk_forwards_command_parameter_server_id = "सर्वर ID",
		walk_forwards_command_parameter_server_id_help = "उन खिलाड़ियों के सर्वर ID को दर्ज करें जिन्हें आप आगे चलने के लिए चाहते हैं।",
		walk_forwards_command_parameter_sprint = "धावना",
		walk_forwards_command_parameter_sprint_help = "क्या खिलाड़ी आगे चलते समय दौड़ता है या नहीं। (डिफ़ॉल्ट: फ़ॉल्स)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "कैश",
		cash_command_help = "अपने कैश शेष राशि प्रदर्शित करें।",
		cash_command_substitutes = "",

		bank_command = "बैंक",
		bank_command_help = "अपनी बैंक शेष राशि प्रदर्शित करें।",
		bank_command_substitutes = "",

		give_cash_command = "कैश_दें",
		give_cash_command_help = "दूसरे खिलाड़ी को निश्चित राशि कैश दें।",
		give_cash_command_parameter_server_id = "सर्वर आईडी",
		give_cash_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी, जिसे आप पैसा देना चाहते हैं।",
		give_cash_command_parameter_amount = "राशि",
		give_cash_command_parameter_amount_help = "वह राशि जिसे आप खिलाड़ी को देना चाहते हैं।",
		give_cash_command_substitutes = "",

		bill_player_command = "bill_player",
		bill_player_command_help = "दूसरे खिलाड़ी को निशुल्क बिल भेजें।",
		bill_player_command_parameter_server_id = "सर्वर आईडी",
		bill_player_command_parameter_server_id_help = "खिलाड़ी का सर्वर आईडी जिसको आप बिल भेजना चाहते हैं।",
		bill_player_command_parameter_amount = "राशि",
		bill_player_command_parameter_amount_help = "वह राशि जिसे आप खिलाड़ी को बिल भेजना चाहते हैं।",
		bill_player_command_substitutes = "बिल",

		-- game/notepads
		notepad_command = "नोटपैड",
		notepad_command_help = "नोटपैड टॉगल करें।",
		notepad_command_substitutes = "",

		notepad_debug_command = "नोटपैड_डीबग",
		notepad_debug_command_help = "पास के सभी नोटपैड आईडी दिखाएँ।",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "नोटपैड_इनफो",
		notepad_info_command_help = "किसी निश्चित नोटपैड के बारे में जानकारी प्रदान करता है।",
		notepad_info_command_parameter_notepad_id = "नोटपैड आईडी",
		notepad_info_command_parameter_notepad_id_help = "आप जिस नोटपैड के बारे में जानकारी प्राप्त करना चाहते हैं, उसका आईडी।",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "वाइप_नोटपैड",
		wipe_notepads_command_help = "एक निश्चित त्रिज्या में सभी नोटपैड हटा देता है।",
		wipe_notepads_command_parameter_radius = "त्रिज्या",
		wipe_notepads_command_parameter_radius_help = "त्रिज्या जिसमें आप नोटपैड हटाना चाहते हैं (अधिकतम = 100।)",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "sign_notepad",
		sign_notepad_command_help = "एक नोटपैड के लिए साइन करता है। (आपका नाम नीचे लिखा जाता है और आगे की संपादन रोकता है)",
		sign_notepad_command_parameter_slot = "स्लॉट",
		sign_notepad_command_parameter_slot_help = "वह इनवेंटरी स्लॉट जिसमें नोटपैड है।",
		sign_notepad_command_substitutes = "sign",

		-- game/notices
		add_notice_command = "add_notice",
		add_notice_command_help = "अपनी वर्तमान स्थिति पर एक फ्लोटिंग संदेश जोड़ता है।",
		add_notice_command_parameter_message = "संदेश",
		add_notice_command_parameter_message_help = "आप जोड़ना चाहते हैं संदेश।",
		add_notice_command_substitutes = "",

		remove_notice_command = "remove_notice",
		remove_notice_command_help = "/add_notice के माध्यम से जोड़ा गया कुछ संदेश को हटा देता है।",
		remove_notice_command_parameter_message_id = "संदेश आईडी ",
		remove_notice_command_parameter_message_id_help = "आप जो हटाना चाहते हैं संदेश का आईडी।",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "जमी हुए वस्तुओं स्कैन",
		frozen_objects_scan_command_help = "एक मॉडल हैश के जमी हुए वस्तुओं के लिए स्कैन करें और सर्वर पर एक फ़ाइल में लिखें।",
		frozen_objects_scan_command_parameter_model_name = "मॉडल का नाम",
		frozen_objects_scan_command_parameter_model_name_help = "आप जिस वस्तु के लिए स्कैन करना चाहते हैं उसका मॉडल नाम।",
		frozen_objects_scan_command_substitutes = "जमी_वस्तुएं",

		-- game/orbitcam
		orbitcam_command = "ऑर्बिट कैम",
		orbitcam_command_help = "ऑर्बिट कैम को टॉगल करें।",
		orbitcam_command_substitutes = "ऑर्बिट",

		-- game/overview
		overview_command = "अवलोकन",
		overview_command_help = "अवलोकन यूआई को सक्षम/अक्षम करें। अवलोकन यूआई एक ओओसी इंटरैक्शन मेनू, जानकारी केंद्र और डेटा दर्शक होता है।",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "ऑक्सी ट्यूटोरियल",
		oxy_tutorial_command_help = "अगली बार जब आप दौड़ने जाएँगे, ऑक्सी ट्यूटोरियल चलाएँ।",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "पैनल",
		panel_command_help = "एक मिनी एडमिन पैनल दिखाता है जो आपको एक खिलाड़ी के नोट देखने और नए नोट जोड़ने की अनुमति देता है।",
		panel_command_parameter_server_id = "सर्वर आईडी",
		panel_command_parameter_server_id_help = "खिलाड़ी के सर्वर-आईडी को दर्ज करें, जिसके पैनल को आप देखना चाहते हैं (ऑनलाइन होना चाहिए या हाल ही में डिस्कनेक्ट किया होना चाहिए)।",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "me",
		me_command_help = "अपने करैक्टर की कृतियों का वर्णन करें।",
		me_command_parameter_message = "संदेश",
		me_command_parameter_message_help = "अपने कार्यों का वर्णन करने के लिए आप भेजना चाहते हैं संदेश।",
		me_command_substitutes = "",

		do_command = "do",
		do_command_help = "रोलप्ले सीन को बेहतर ढंग से दर्शाना।",
		do_command_parameter_message = "संदेश",
		do_command_parameter_message_help = "रोलप्ले सीन को बेहतर ढंग से दर्शाने के लिए आप भेजना चाहते हैं संदेश।",
		do_command_substitutes = "",

		description_command = "description",
		description_command_help = "अपने पैड को विशेषताओं का वर्णन करने के लिए एक संदेश जोड़ें।",
		description_command_parameter_message = "संदेश",
		description_command_parameter_message_help = "पेड़ से जुड़ा संदेश।",
		description_command_substitutes = "",

		attempt_command = "प्रयास",
		attempt_command_help = "50% सफलता के साथ कुछ प्रयास करें।",
		attempt_command_parameter_message = "संदेश",
		attempt_command_parameter_message_help = "आप क्या प्रयास कर रहे हैं उसका संदेश।",
		attempt_command_substitutes = "",

		dice_command = "पासा",
		dice_command_help = "एक मानक पासा फेंकें।",
		dice_command_substitutes = "",

		roll_command = "रोल",
		roll_command_help = "कस्टम सेटिंग्स वाले एक अधिक विस्तृत और कॉम्प्लिकेटेड पासा।",
		roll_command_parameter_rolls = "रोल्स",
		roll_command_parameter_rolls_help = "आप कितने रोल्स करना चाहते हैं।आपकी सीमा 20 तक है।",
		roll_command_parameter_max = "अधिकतम",
		roll_command_parameter_max_help = "एक ही रोल पर आप जो मान प्राप्त कर सकते हैं। यहाँ सबसे अधिक मान 100,000 है।",
		roll_command_substitutes = "",

		card_command = "कार्ड",
		card_command_help = "एक यादृच्छिक कार्ड निकालें।",
		card_command_substitutes = "",

		ped_messages_command = "पेड_संदेश",
		ped_messages_command_help = "यह टॉगल करता है कि क्या पेड संदेश चैट में दिखाएं या नहीं।",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "पेड_आविर्भाव",
		ped_spawn_command_help = "पेड स्पॉन करता है।",
		ped_spawn_command_parameter_model = "मॉडल",
		ped_spawn_command_parameter_model_help = "वह पेड मॉडल जो आप स्पॉन करना चाहते हैं।",
		ped_spawn_command_parameter_weapon = "हथियार",
		ped_spawn_command_parameter_weapon_help = "पेड के पास कौनसा हथियार होना चाहिए (वैकल्पिक, छोड़ने के लिए \"false\")।",
		ped_spawn_command_parameter_fearless = "निडर",
		ped_spawn_command_parameter_fearless_help = "अगर पेड बंदूकों/आदि से डरता है तो (डिफ़ॉल्ट: नहीं)।",
		ped_spawn_command_substitutes = "",

		ped_task_command = "ped_task",
		ped_task_command_help = "आपके स्पॉन पेड को काम देने के लिए नियुक्तियों का चयन करता है।",
		ped_task_command_parameter_task = "नियुक्ति",
		ped_task_command_parameter_task_help = "स्पॉन किए गए पेड को लागू करनी चाहिए।",
		ped_task_command_parameter_target = "टार्गेट",
		ped_task_command_parameter_target_help = "पेड किस टारगेट को लक्ष्य बनाना चाहते हैं (वैकल्पिक)।",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "आपके स्पॉन किए गए पेड को कुछ ऐसा इमोट खेलने के लिए बताता है।",
		ped_emote_command_parameter_emote = "इमोट",
		ped_emote_command_parameter_emote_help = "स्पॉन किए गए पेड को खेलना चाहते हैं।",
		ped_emote_command_substitutes = "",

		ped_remove_command = "ped_remove",
		ped_remove_command_help = "आपके स्पॉन्स एनएपीस से छुटकारा पाने के लिए।",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "list_ped_emotes",
		list_ped_emotes_command_help = "उपलब्ध सभी पेड इमोट्स की सूची बनाता है।",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "list_ped_tasks",
		list_ped_tasks_command_help = "उपलब्ध सभी पेड कार्यों की सूची बनाता है।",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "ped_steal",
		ped_steal_command_help = "किसी के पेड को चुरा लो।",
		ped_steal_command_parameter_server_id = "सर्वर आईडी",
		ped_steal_command_parameter_server_id_help = "खिलाड़ी सर्वर आईडी",
		ped_steal_command_substitutes = "पैदल चुराना",

		-- game/ped_takeover
		takeover_ped_command = "पैदल नियंत्रण",
		takeover_ped_command_help = "आपको एक निश्चित पैदल को नियंत्रित करने के लिए करता है।",
		takeover_ped_command_parameter_network_id = "नेटवर्क पहचान",
		takeover_ped_command_parameter_network_id_help = "पैदल का नेटवर्क आईडी जिसे आप नियंत्रित करना चाहते हैं।",
		takeover_ped_command_substitutes = "नियंत्रण करना",

		-- game/ped_tasks
		ped_debug_command = "पैदल संबंधी त्रुटि सुधार",
		ped_debug_command_help = "एक पैदल संबंधी जानकारी का संशोधन करता है।",
		ped_debug_command_parameter_network_id = "नेटवर्क पहचान",
		ped_debug_command_parameter_network_id_help = "पैदल का नेटवर्क आईडी।",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "कस्टम_फ़ोन_नंबर",
		custom_phone_number_command_help = "अपना फ़ोन नंबर बदलें।",
		custom_phone_number_command_parameter_phone_number = "फ़ोन नंबर",
		custom_phone_number_command_parameter_phone_number_help = "आप जिस फ़ोन नंबर पर बदलाव करना चाहते हैं। यह सुनिश्चित करें कि यह XXX-XXXX के प्रारूप में है।",
		custom_phone_number_command_substitutes = "कस्टम_नंबर",

		phone_number_available_command = "फ़ोन_नंबर_उपलब्ध",
		phone_number_available_command_help = "जांचें कि फ़ोन नंबर उपलब्ध है या नहीं।",
		phone_number_available_command_parameter_phone_number = "फोन नंबर",
		phone_number_available_command_parameter_phone_number_help = "फोन नंबर जिसकी उपलब्धता आप जांचना चाहते हैं। सुनिश्चित करें कि यह XXX-XXXX के प्रारूप का पालन करता है।",
		phone_number_available_command_substitutes = "फोन_नंबर_उपलब्ध",

		-- game/player_control
		drive_for_command = "बढ़ाओ_चलाओ",
		drive_for_command_help = "एक खिलाड़ी के वाहन को ले जाएं और उनके लिए चलाएं।",
		drive_for_command_parameter_server_id = "सर्वर आईडी",
		drive_for_command_parameter_server_id_help = "खिलाड़ी का सर्वर आईडी जिसे आप ले जाना चाहते हैं।",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "प्लेयर का स्केल सेट करें",
		set_player_scale_command_help = "प्लेयर का स्केल सेट करें।",
		set_player_scale_command_parameter_scale = "स्केल",
		set_player_scale_command_parameter_scale_help = "आप उन्हें सेट करना चाहते हैं तो स्केल।",
		set_player_scale_command_parameter_server_id = "सर्वर आईडी",
		set_player_scale_command_parameter_server_id_help = "आप स्केल सेट करना चाहते हैं तो सर्वर आईडी। इसे खाली छोड़ने से आप अपने आप का चयन करेंगे।",
		set_player_scale_command_substitutes = "player_scale, set_player_size, player_size",

		-- game/player_stats
		player_stats_command = "खिलाड़ी_आंकड़े",
		player_stats_command_help = "खिलाड़ी आंकड़ों की सुविधा को टॉगल करें।",
		player_stats_command_parameter_render_range = "रेंडर दायरा",
		player_stats_command_parameter_render_range_help = "खिलाड़ियों के लिए रेंडर दायरा बदलें। डिफ़ॉल्ट 200 है।",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "पोल नृत्य ऑफसेट",
		pole_dancing_offset_command_help = "पोल डांसिंग ऑफसेट के लिए डीबग उपकरण को टॉगल करें।",
		pole_dancing_offset_command_parameter_model_name = "मॉडल नाम",
		pole_dancing_offset_command_parameter_model_name_help = "आप जिस मॉडल नाम को ठीक करना चाहते हैं, उसे निर्दिष्ट करें।",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "संपत्ति_डीबग",
		properties_debug_command_help = "संपत्ति डीबग को सक्षम/अक्षम करें।",
		properties_debug_command_substitutes = "संपत्ति",

		-- game/props
		props_manage_command = "प्रॉप्स_मैनेज",
		props_manage_command_help = "निकटवर्ती प्रॉप्स का प्रबंधन करें।",
		props_manage_command_substitutes = "मैनेज_प्रॉप्स, मप",

		spawn_prop_command = "प्रॉप_उत्पन्न",
		spawn_prop_command_help = "एक प्रॉप उत्पन्न करें।",
		spawn_prop_command_parameter_model_hash = "मॉडल",
		spawn_prop_command_parameter_model_hash_help = "आप जिस प्रॉप मॉडल को उत्पन्न करना चाहते हैं।",
		spawn_prop_command_parameter_network = "नेटवर्क",
		spawn_prop_command_parameter_network_help = "क्या आप प्रॉप को नेटवर्क करना चाहते हैं? यह सिर्फ प्रॉप के लिए सुझाव दिया जाता है जो हिल सकते हैं।",
		spawn_prop_command_parameter_no_pickup = "खरीद नहीं",
		spawn_prop_command_parameter_no_pickup_help = "क्या इस प्रॉप को केवल सुपर एडमिन्स द्वारा ही उठाया जा सकता है?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "बिल्कुल ठीक प्रॉप जन्माना",
		spawn_exact_prop_command_help = "अपने बिल्कुल सही स्थान पर एक प्रॉप जन्माएं।",
		spawn_exact_prop_command_parameter_model_name = "मॉडल नाम",
		spawn_exact_prop_command_parameter_model_name_help = "आप जिस प्रोप मॉडल को स्पॉन करना चाहते हैं।",
		spawn_exact_prop_command_parameter_ground = "जमीन",
		spawn_exact_prop_command_parameter_ground_help = "वह प्रोप जमीन पर स्पॉन किया जाना चाहिए या नहीं।",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "प्रोप्स डीबग",
		props_debug_command_help = "आपके आसपास सभी प्रोप्स को डीबग करता है।",
		props_debug_command_substitutes = "",

		delete_prop_command = "प्रोप हटाएं",
		delete_prop_command_help = "एक निश्चित प्रोप आईडी देते हुए एक प्रोप को हटाता है।",
		delete_prop_command_parameter_prop_id = "प्रोप आईडी",
		delete_prop_command_parameter_prop_id_help = "उस प्रॉप का आईडी जिसे आप हटाने की कोशिश कर रहे हैं।",
		delete_prop_command_substitutes = "",

		wipe_props_command = "wipe_props",
		wipe_props_command_help = "आपके आस-पास प्रॉप्स को मिटा देता है।",
		wipe_props_command_parameter_radius = "रेडियस",
		wipe_props_command_parameter_radius_help = "मिटाने के लिए त्रिज्या (1-250)।",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "रेडियो",
		radio_command_help = "रेडियो UI टॉगल करें।",
		radio_command_substitutes = "",

		radio_debug_command = "radio_debug",
		radio_debug_command_help = "रेडियो डीबग टॉगल करें।",
		radio_debug_command_substitutes = "",

		frequency_command = "फ़्रीक्वेंसी",
		frequency_command_help = "सेट करें कि आपका रेडियो कौन सी फ़्रीक्वेंसी पर है।",
		frequency_command_parameter_frequency = "फ़्रीक्वेंसी",
		frequency_command_parameter_frequency_help = "आप जाना चाहते हैं उस फ़्रीक्वेंसी पर।",
		frequency_command_substitutes = "freq",

		force_frequency_command = "force_frequency",
		force_frequency_command_help = "रेडियो की जरूरत नहीं है या ऑन ड्यूटी होने की आवश्यकता नहीं होने के बिना रेडियो फ़्रीक्वेंसी में शामिल हो जाएँ।",
		force_frequency_command_parameter_frequency = "फ़्रीक्वेंसी",
		force_frequency_command_parameter_frequency_help = "आप जाना चाहते हैं उस फ़्रीक्वेंसी पर।",
		force_frequency_command_substitutes = "",

		random_frequency_command = "random_frequency",
		random_frequency_command_help = "आपके रेडियो को एक यादृच्छिक आवृत्ति पर सेट करता है।",
		random_frequency_command_substitutes = "random_freq, rfreq",

		radio_sounds_command = "radio_sounds",
		radio_sounds_command_help = "रेडियो ध्वनि प्रभावों की ध्वनि शक्ति को समायोजित करें।",
		radio_sounds_command_parameter_volume = "ध्वनि स्तर",
		radio_sounds_command_parameter_volume_help = "रेडियो ध्वनि स्तर। मान 0 से 1 के बीच होना चाहिए। डिफ़ॉल्ट 0.1 है। इसे खाली छोड़ने से आपका वर्तमान वॉल्यूम स्तर वापस आ जाएगा।",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volume",
		radio_volume_command_help = "रेडियो की आवाज़ को बदलें।",
		radio_volume_command_parameter_volume = "आवाज़ स्तर",
		radio_volume_command_parameter_volume_help = "रेडियो का आवाज़ स्तर। मान 0 से 1 के बीच होना चाहिए। डिफ़ॉल्ट 0.5 है। इसे रिक्त छोड़ने से आपका वर्तमान आवाज़ स्तर वापस लौट जाएगा।",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "पेड़ संबंधों को डीबग करें।",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "एक खिलाड़ी के लिए रीस्किन ट्रिगर करें।",
		reskin_command_parameter_server_id = "सर्वर आईडी",
		reskin_command_parameter_server_id_help = "उस खिलाड़ी के सर्वर आईडी का उपयोग करें जिसके लिए आप एक रीस्किन ट्रिगर करना चाहते हैं। अपने आप को ऑटो-सिलेक्ट करने के लिए इसे खाली छोड़ दें।",
		reskin_command_substitutes = "",

		redeem_reskin_command = "redeem_reskin",
		redeem_reskin_command_help = "एक खरीदी गई रीस्किन को रिडीम करें।",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "riot_mode",
		toggle_riot_mode_command_help = "सभी खिलाड़ियों के लिए राइट मोड टॉगल करें।",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "add_riot_player",
		add_riot_player_command_help = "पैदल प्रशांत उत्पन्न करने वाले खिलाड़ियों की 'उपद्रव सूची' में खिलाड़ी जोड़ें।",
		add_riot_player_command_parameter_server_id = "सर्वर आईडी",
		add_riot_player_command_parameter_server_id_help = "आप जिस खिलाड़ी को जोड़ना चाहते हैं, उसकी सर्वर आईडी। अपने आप को ऑटो-सेलेक्ट करने के लिए इसे खाली छोड़ दें।",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "'रॉयट सूची से' खिलाड़ी को हटा दें।",
		remove_riot_player_command_parameter_server_id = "सर्वर आईडी",
		remove_riot_player_command_parameter_server_id_help = "आप जिस खिलाड़ी को हटाना चाहते हैं, उसकी सर्वर आईडी। अपने आप को ऑटो-सेलेक्ट करने के लिए इसे खाली छोड़ दें।",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "मेटागेम",
		metagame_command_help = "प्लेयर के सर्वर आईडी के निरंतर ड्राइंग को टॉगल करें।",
		metagame_command_substitutes = "मेटा, एम",

		-- game/security_cameras
		security_cameras_command = "सुरक्षा कैमरे",
		security_cameras_command_help = "सुरक्षा कैमरों को टॉगल करें।",
		security_cameras_command_substitutes = "सुरक्षा कैम, सुरक्षा कैमरे, सुरक्षाकैम, सुरक्षाकैमरे",

		security_cameras_scan_command = "सुरक्षा कैमरों की जांच",
		security_cameras_scan_command_help = "टेक्स्ट फाइल में सभी ज्ञात सुरक्षा कैमरा ऑब्जेक्ट प्राप्त करें और स्टोर करें।",
		security_cameras_scan_command_substitutes = "स्कैन, स्कैन_कैम्स, स्कैनकैम्स",

		security_cameras_health_command = "सुरक्षा_कैमरा_स्वस्थता",
		security_cameras_health_command_help = "सुरक्षा कैमरे स्वस्थता डीबग टूल टॉगल करें।",
		security_cameras_health_command_substitutes = "कैम_स्वस्थता",

		-- game/shield
		shield_command = "ढाल",
		shield_command_help = "बैलिस्टिक ढाल को टॉगल करें।",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "शॉकवेव_बनाएं",
		create_shockwave_command_help = "अपने वर्तमान स्थान पर शॉकवेव बनाता है।",
		create_shockwave_command_parameter_force = "बल",
		create_shockwave_command_parameter_force_help = "झटके की शक्ति (1-1000)।",
		create_shockwave_command_parameter_radius = "त्रिज्या",
		create_shockwave_command_parameter_radius_help = "झटके की त्रिज्या (1-100)।",
		create_shockwave_command_substitutes = "shockwave",

		push_player_command = "पुश_प्लेयर",
		push_player_command_help = "एक खिलाड़ी या उस गाड़ी को आपसे दूर धकेलें।",
		push_player_command_parameter_server_id = "सर्वर आईडी",
		push_player_command_parameter_server_id_help = "खिलाड़ी का सर्वर आईडी।",
		push_player_command_substitutes = "पुश",

		-- game/shrooms
		draw_shroom_areas_command = "draw_shroom_areas",
		draw_shroom_areas_command_help = "सभी श्रूम क्षेत्रों को बनाएं और जोड़ें।",
		draw_shroom_areas_command_substitutes = "shroom_areas",

		-- game/spying
		search_for_devices_command = "search_for_devices",
		search_for_devices_command_help = "नज़दीकी डिवाइस की खोज करें।",
		search_for_devices_command_substitutes = "search_devices, searchdevices, s4d",

		-- game/spectating
		spectate_command = "spectate",
		spectate_command_help = "किसी खिलाड़ी को दृष्टिगत बनाएं।",
		spectate_command_parameter_server_id = "सर्वर ID",
		spectate_command_parameter_server_id_help = "वह खिलाड़ी जिसे आप दृष्टिगत बनाना चाहते हैं का सर्वर ID।",
		spectate_command_substitutes = "spec",

		-- game/status
		status_reset_command = "status_reset",
		status_reset_command_help = "स्थिति स्तरों को रीसेट करें।",
		status_reset_command_parameter_server_id = "सर्वर ID",
		status_reset_command_parameter_server_id_help = "उन खिलाड़ियों के सर्वर ID का चयन करें जिनके लिए आप स्थिति रीसेट करना चाहते हैं। अगर रिक्त छोड़ दिया जाता है, तो स्वयं आपका चयन किया जाएगा।",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "भूख, प्यास और तनाव जैसी कुछ स्थितियों को अक्षम (या सक्षम) करें।",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "किसी के शरीर के एरमर स्तर को सेट करें।",
		set_body_armor_command_parameter_server_id = "सर्वर आईडी",
		set_body_armor_command_parameter_server_id_help = "आप शरीर की कवच दर्जा सेट करना चाहते हैं उस खिलाड़ी के सर्वर आईडी। आप इसे खाली छोड़ सकते हैं या `0` पर ले जा सकते हैं अपने आप को चुनने के लिए। आप सभी के शरीर की कवच दर्जा सेट करने के लिए `-1` भी कर सकते हैं।",
		set_body_armor_command_parameter_body_armor_level = "शरीर की कवच दर्जा",
		set_body_armor_command_parameter_body_armor_level_help = "यह शरीर की कवच दर्जा है जिसे अपनी पसंद के अनुसार सेट करना चाहते हैं। इस मान को `0` से `100` तक कोई भी हो सकता है। इसे खाली या मान्यता से अधिक मान छोड़ने से डिफ़ॉल्ट `100` हो जाएगा।",
		set_body_armor_command_substitutes = "body_armor, आर्मर",

		-- game/streamer_mode
		toggle_streamer_mode_command = "toggle_streamer_mode",
		toggle_streamer_mode_command_help = "स्ट्रीमर मोड टॉगल करें। यह आपको निकटतम दूरी पर खिलाड़ियों को '18+' इमोट्स करने से रोकेगा।",
		toggle_streamer_mode_command_substitutes = "streamer_mode, स्ट्रीमर",

		-- game/sync
		time_hour_command = "time_hour",
		time_hour_command_help = "वर्तमान घड़ी का घंटा सेट करें।",
		time_hour_command_parameter_hour = "घंटा",
		time_hour_command_parameter_hour_help = "आप घड़ी को सेट करना चाहते हैं घंटे। मान 0 से 23 के बीच होना चाहिए।",
		time_hour_command_parameter_transition = "संक्रमण",
		time_hour_command_parameter_transition_help = "क्या समय को समझौते के साथ बदला जाना चाहिए (हाँ/नहीं, डिफ़ॉल्ट हाँ नहीं है)।",
		time_hour_command_substitutes = "घंटा",

		time_minute_command = "time_minute",
		time_minute_command_help = "मौजूदा घड़ी का मिनट सेट करें।",
		time_minute_command_parameter_minute = "मिनट",
		time_minute_command_parameter_minute_help = "घड़ी को सेट करना चाहते हैं तो मिनट। मूल्य 0 से 59 के बीच होना चाहिए।",
		time_minute_command_substitutes = "मिनट",

		local_time_command = "local_time",
		local_time_command_help = "वह समय सेट करता है, लेकिन केवल आपके लिए।",
		local_time_command_parameter_time = "समय",
		local_time_command_parameter_time_help = "वह समय जिसे आप स्थानीय घड़ी पर सेट करना चाहते हैं। मूल्य 0:00 से 23:59 के बीच होना चाहिए।",
		local_time_command_substitutes = "",

		local_weather_command = "local_weather",
		local_weather_command_help = "वह मौसम सेट करता है, लेकिन केवल आपके लिए।",
		local_weather_command_parameter_weather = "मौसम",
		local_weather_command_parameter_weather_help = "वह मौसम जिसे आप स्थानीय मौसम पर सेट करना चाहते हैं। /मौसम के जैसे मूल्य ले लेता है।",
		local_weather_command_substitutes = "",

		brighter_nights_command = "brighter_nights",
		brighter_nights_command_help = "आपके लिए समय को 12:00 दोपहर पर और मौसम को एक्स्ट्रा सनी पर सेट करता है, लेकिन केवल आपके लिए.",
		brighter_nights_command_substitutes = "",

		weather_command = "weather",
		weather_command_help = "मौसम बदलिए।",
		weather_command_parameter_weather = "मौसम का नाम",
		weather_command_parameter_weather_help = "आप जिस मौसम को सेट करना चाहते हैं उसका नाम। मान्य मौसम नाम हैं EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS और HALLOWEEN।",
		weather_command_substitutes = "",

		advance_weather_command = "मौसम आगे बढ़ाएं",
		advance_weather_command_help = "अगले मौसम में स्वभाविक रूप से आगे बढ़ें।",
		advance_weather_command_substitutes = "",

		freeze_time_command = "समय जमाव",
		freeze_time_command_help = "समय जमा होना चाहिए या नहीं इसे टॉगल करें।",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "मौसम जमाव",
		freeze_weather_command_help = " मौसम जमा होने चाहिए या नहीं इसे टॉगल करें।",
		freeze_weather_command_substitutes = "",

		blackout_command = "ब्लैकआउट",
		blackout_command_help = " क्या ब्लैकआउट सक्रिय है या नहीं इसे टॉगल करें।",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "टैबलेट",
		tablet_command_help = "टैबलेट यूआई खोलता है (यदि आपके पास टैबलेट है)।",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "set_vehicle_preset",
		set_vehicle_preset_command_help = "आपकी वर्तमान वाहन को पूरी तरह से अपग्रेड करता है और निर्दिष्ट प्रीसेट के साथ रंग लागू करता है।",
		set_vehicle_preset_command_parameter_preset = "प्रीसेट",
		set_vehicle_preset_command_parameter_preset_help = "आप लागू करना चाहते हैं की प्रीसेट रंग (लाल, नीला, हरा, पीला, नारंगी, सफेद, काला)।",
		set_vehicle_preset_command_substitutes = "वाहन_प्रीसेट",

		detach_all_doors_command = "detach_all_doors",
		detach_all_doors_command_help = "आप वर्तमान में है वाहन के सभी दरवाजों को अलग करता है।",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "saare_tyre_fod",
		pop_all_tires_command_help = "Aapke dwara chalai jaane wali gaadi ke saare tyre fod deta hai.",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "gaadi_poori_taraha_se_upgrade_karein",
		upgrade_vehicle_fully_command_help = "Aapke dwara chalai jaane wali gaadi ko poori taraha se upgrade karta hai.",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "gaadi_ke_rang_ko_randomize_karein",
		random_vehicle_colors_command_help = "Aapke dwara chalai jaane wali gaadi ke rang ko randomize karta hai.",
		random_vehicle_colors_command_parameter_lights = "lights",
		random_vehicle_colors_command_parameter_lights_help = "Kya lights bhi randomize honge (xenon aur neon).",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "bhookamp",
		starve_command_help = "आपका भोजन व तृष्णा शून्य हो जाएगा।",
		starve_command_substitutes = "",

		car_command = "गाड़ी",
		car_command_help = "यह एक यादृच्छिक गाड़ी उत्पन्न करता है।",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "टाइम स्केल सेट करें",
		set_time_scale_command_help = "सर्वर का समय स्केल सेट करें।",
		set_time_scale_command_parameter_time_scale = "टाइम स्केल",
		set_time_scale_command_parameter_time_scale_help = "आप जिस टाइम स्केल को सेट करना चाहते हैं। मूल्य 0 और 1 के बीच होना चाहिए।",
		set_time_scale_command_substitutes = "टाइम_स्केल, स्लो_मोशन",

		-- game/titanic
		create_titanic_command = "टाइटैनिक_बनाएं",
		create_titanic_command_help = "डूबते टाइटैनिक को बनाएं।",
		create_titanic_command_parameter_sink_time = "डूबने का समय",
		create_titanic_command_parameter_sink_time_help = "बहते पानी में जाने से पहले इस नौके के डूबने में लगने वाले मिनटों की संख्या।",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "टॉप_डाउन",
		top_down_command_help = "टॉप डाउन दृश्य को टॉगल करें।",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "ट्रैकर",
		tracker_command_help = "अपने ट्रैकर की दृश्यता टॉगल करें।",
		tracker_command_substitutes = "",

		trackers_split_command = "ट्रैकर_विभाजित_करें",
		trackers_split_command_help = "नक्शे पर एक श्रेणी में ट्रैकर संग्रहीत करने और उन्हें विभाजित करने के बीच टॉगल करें।",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "ट्रेन डिबग",
		trains_debug_command_help = "ट्रेन डिबग चालू/बंद करें।",
		trains_debug_command_substitutes = "",

		spawn_train_command = "ट्रेन स्पॉन करें",
		spawn_train_command_help = "ट्रेन स्पॉन करें।",
		spawn_train_command_parameter_track_id = "ट्रैक आईडी",
		spawn_train_command_parameter_track_id_help = "ट्रेन स्पॉन करने के लिए ट्रैक आईडी। (1 से 12 तक)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "मैप पीस स्पॉन करें",
		spawn_map_piece_command_help = "एक खजाने का मैप पीस स्पॉन करें।",
		spawn_map_piece_command_parameter_map_tier = "मैप टियर",
		spawn_map_piece_command_parameter_map_tier_help = "आप किस टियर के मैप पीस को स्पॉन करना चाहते हैं।",
		spawn_map_piece_command_parameter_piece_number = "पज़ल टुकड़ा संख्या",
		spawn_map_piece_command_parameter_piece_number_help = "आप जो पज़ल टुकड़ा बनाना चाहते हैं, उसकी संख्या।",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "समुद्र को एकत्रित करने के लिए माप को वैश्विक रूप से संशोधित करें।",
		set_ocean_scaler_command_parameter_intensity = "तीव्रता",
		set_ocean_scaler_command_parameter_intensity_help = "आप इसे सेट करना चाहते हैं, उस तीव्रता।",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		-- game/vdm
		vdm_command = "वीडीएम",
		vdm_command_help = "निश्चित npc को उनके लक्ष्य को वीडीएम करने का प्रयास करने के लिए।",
		vdm_command_parameter_target = "लक्ष्य",
		vdm_command_parameter_target_help = "लक्ष्य खिलाड़ियों सर्वर आईडी।",
		vdm_command_parameter_network_id = "नेटवर्क आईडी",
		vdm_command_parameter_network_id_help = "स्थानिक नेटवर्क आईडी (या इसके वाहन)।",
		vdm_command_substitutes = "",

		vdm_clear_command = "वीडीएम_साफ",
		vdm_clear_command_help = "आपके सभी वीडीएम लक्ष्यों को साफ़ करता है।",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "आवाज_डीबग",
		voice_debug_command_help = "वॉयस डीबग को टॉगल करें।",
		voice_debug_command_parameter_server_id = "सर्वर आईडी",
		voice_debug_command_parameter_server_id_help = "यदि आप किसी अन्य व्यक्ति के लिए 'आवाज डीबग' टॉगल करना चाहते हैं, तो उनका सर्वर आईडी यहां डालें।",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "म्यूटेड एरियाओं डीबग करें",
		muted_areas_debug_command_help = "सभी म्यूटेड आवाज क्षेत्रों को खींचता है।",
		muted_areas_debug_command_substitutes = "म्यूटेड एरिया",

		listen_command = "सुनें",
		listen_command_help = "एक विशिष्ट उपयोगकर्ता के लिए सुनने के मोड को टॉगल करता है। (आप उनके कहने को सुन सकते हैं)",
		listen_command_parameter_server_id = "सर्वर आईडी",
		listen_command_parameter_server_id_help = "उस उपयोगकर्ता को सुनना है जिसे आप सुनना चाहते हैं।",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "टॉगल_वॉइस_म्यूट",
		toggle_voice_mute_command_help = "आवाज चैट से किसी को म्यूट या अनम्यूट करता है।",
		toggle_voice_mute_command_parameter_server_id = "सर्वर आईडी",
		toggle_voice_mute_command_parameter_server_id_help = "आप किसी को म्यूट या अनम्यूट करना चाहते हैं।",
		toggle_voice_mute_command_substitutes = "वॉइस_म्यूट",

		-- game/wizard
		wizard_command = "विज़ार्ड",
		wizard_command_help = "विज़ार्ड मेनू खोलता है।",
		wizard_command_parameter_server_id = "सर्वर आईडी",
		wizard_command_parameter_server_id_help = "मेनू में एक निश्चित खिलाड़ी का चयन करें (वैकल्पिक)।",
		wizard_command_substitutes = "",

		ragdoll_player_command = "ragdoll_player",
		ragdoll_player_command_help = "खिलाड़ी को रैगडॉल बनाता है।",
		ragdoll_player_command_parameter_server_id = "सर्वर आईडी",
		ragdoll_player_command_parameter_server_id_help = "आप रैगडॉल बनाना चाहते हैं उस खिलाड़ी का सर्वर आईडी।",
		ragdoll_player_command_parameter_force = "बल",
		ragdoll_player_command_parameter_force_help = "खिलाड़ी को रैगडॉल बनाने के बाद एक यादृच्छिक बल लागू करें।",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "रैगडॉल_रेडियस",
		ragdoll_radius_command_help = "दिए गए रेडियस में हर खिलाड़ी को यादृच्छिक रूप से रैगडॉल बनाता है।",
		ragdoll_radius_command_parameter_radius = "रेडियस",
		ragdoll_radius_command_parameter_radius_help = "खिलाड़ियों को रैगडॉल बनाने वाले रेडियस।",
		ragdoll_radius_command_parameter_force = "बल",
		ragdoll_radius_command_parameter_force_help = "खिलाड़ियों पर एक यादृच्छिक बल लागू करने के बाद उन्हें रैगडॉल बनाएं।",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "पंच_रेडियस",
		punch_radius_command_help = "दिए गए रेडियस में हर खिलाड़ी को यादृच्छिक रूप से पंच मारता है।",
		punch_radius_command_parameter_radius = "रेडियस",
		punch_radius_command_parameter_radius_help = "उन खिलाड़ियों के रेडियस का चयन करें जिन्हें यादृच्छिक रूप से पंच करना होगा।",
		punch_radius_command_substitutes = "",

		flashbang_command = "फ्लैशबैंग",
		flashbang_command_help = "किसी विशिष्ट खिलाड़ी को फ्लैशबैंग करें।",
		flashbang_command_parameter_server_id = "सर्वर आईडी",
		flashbang_command_parameter_server_id_help = "लक्षित खिलाड़ी का सर्वर आईडी।",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "फ्लैशबैंग_रेडियस",
		flashbang_radius_command_help = "दिए गए रेडियस में हर खिलाड़ी को फ्लैशबैंग करें।",
		flashbang_radius_command_parameter_radius = "रेडियस",
		flashbang_radius_command_parameter_radius_help = "उन स्थानों का रेडियस जिसमें खिलाड़ी फ्लैशबैंग होंगे।",
		flashbang_radius_command_parameter_include_self = "अपने आप को शामिल करें",
		flashbang_radius_command_parameter_include_self_help = "आप स्वयं को फ्लैशबैंग करना चाहते हैं तो।",
		flashbang_radius_command_substitutes = "",

		punch_command = "पंच",
		punch_command_help = "किसी विशिष्ट खिलाड़ी को यादृच्छिक रूप से पंच करने के लिए।",
		punch_command_parameter_server_id = "सर्वर आईडी",
		punch_command_parameter_server_id_help = "लक्ष्य खिलाड़ी का सर्वर आईडी।",
		punch_command_substitutes = "",

		explode_command = "विस्फोट करें_खिलाडी",
		explode_command_help = "किसी विशिष्ट खिलाड़ी को विस्फोट करता है।",
		explode_command_parameter_server_id = "सर्वर आईडी",
		explode_command_parameter_server_id_help = "लक्ष्य खिलाड़ी का सर्वर आईडी।",
		explode_command_substitutes = "",

		ignite_player_command = "ignite_player",
		ignite_player_command_help = "कुछ ही समय के लिए एक खिलाड़ी को आग में जलाता है।",
		ignite_player_command_parameter_server_id = "सर्वर आईडी",
		ignite_player_command_parameter_server_id_help = "लक्ष्य खिलाड़ी का सर्वर आईडी।",
		ignite_player_command_substitutes = "ignite, burn",

		run_command_as_command = "run_command_as",
		run_command_as_command_help = "किसी अन्य खिलाड़ी को एक कमांड चलाने के लिए।",
		run_command_as_command_parameter_server_id = "सर्वर ID",
		run_command_as_command_parameter_server_id_help = "लक्ष्य खिलाड़ी का सर्वर ID।",
		run_command_as_command_parameter_command = "कमांड",
		run_command_as_command_parameter_command_help = "आप खिलाड़ी को चलाना चाहते हैं उस कमांड का नाम।",
		run_command_as_command_substitutes = "runas, sudo",

		ped_reverse_command = "ped_reverse",
		ped_reverse_command_help = "एक वाहन में सबसे निकटतम पेड़ को रीवर्स चलाने के लिए।",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "ped_forwards",
		ped_forwards_command_help = "इंगित किए गए निकटतम पेड को एक वाहन में आगे चलाता है।",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "local_entities_debug",
		local_entities_debug_command_help = "स्थानीय संविभिन्न तत्वों के लिए डीबग चालू / बंद करें।",
		local_entities_debug_command_substitutes = "lentities",

		no_ped_population_areas_debug_command = "पीडीईडी_पॉपुलेशन_एरियां_डीबग्",
		no_ped_population_areas_debug_command_help = "'बेघर' जनसंख्या क्षेत्रों के डीबगर को चालू / बंद करें।",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "create_explosion",
		create_explosion_command_help = "एक विस्फोट बनाएं।",
		create_explosion_command_parameter_explosion_type = "विस्फोट प्रकार",
		create_explosion_command_parameter_explosion_type_help = "विस्फोट प्रकार।",
		create_explosion_command_parameter_damage_scale = "क्षति स्केल",
		create_explosion_command_parameter_damage_scale_help = "क्षति स्केल।",
		create_explosion_command_parameter_camera_shake = "कैमरा हिलाना",
		create_explosion_command_parameter_camera_shake_help = "कैमरा हिलाना।",
		create_explosion_command_substitutes = "विस्फोट, धमाका, विस्फोट",

		-- global/functions
		confirm_yes_command = "हाँ",
		confirm_yes_command_help = "वर्तमान कार्य की पुष्टि करें।",
		confirm_yes_command_substitutes = "पुष्टि",

		confirm_no_command = "नहीं",
		confirm_no_command_help = "वर्तमान कार्य को रद्द करें।",
		confirm_no_command_substitutes = "रद्द, रोकें",

		-- global/states
		entity_states_command = "एंटिटी_स्थितियां",
		entity_states_command_help = "किसी विशिष्ट एंटिटी की सभी स्थितियों को प्रिंट करता है।",
		entity_states_command_parameter_network_id = "नेटवर्क आईडी",
		entity_states_command_parameter_network_id_help = "एंटिटी का नेटवर्क आईडी।",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "कॉर्नर",
		corner_command_help = "एक पास के व्यक्ति को मादक पदार्थ बेचें। आप बेचते हुए दवा का स्थान आपके स्थान पर आधारित होता है।",
		corner_command_substitutes = "",

		corner_debug_command = "कॉर्नर_डीबग",
		corner_debug_command_help = "सभी बिक्री क्षेत्रों को दिखाएं।",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "क्लियर_यूआईएस",
		clear_uis_command_help = "सभी यूआई फ़ोकस को साफ़ करें।",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "इंटरफ़ेस_फ़ोकसेस",
		interface_focuses_command_help = "जांचें कि कौन से इंटरफ़ेस फोकस के रूप में सेट हैं।",
		interface_focuses_command_substitutes = "interface_focus, focus, focuses",

		--jobs/duty
		toggle_duty_status_command = "ड्यूटी_स्थिति_टॉगल_करें",
		toggle_duty_status_command_help = "आपकी ड्यूटी स्थिति को टॉगल करता है।",
		toggle_duty_status_command_parameter_server_id = "सर्वर आईडी",
		toggle_duty_status_command_parameter_server_id_help = "टारगेट सर्वर आईडी या खाली छोड़ें अगर आप अपनी ड्यूटी स्थिति को टॉगल करना चाहते हैं।",
		toggle_duty_status_command_substitutes = "ड्यूटी_स्थिति, ड्यूटी",

		toggle_training_command = "प्रशिक्षण_स्थिति_टॉगल_करें",
		toggle_training_command_help = "आपकी प्रशिक्षण स्थिति को टॉगल करता है।",
		toggle_training_command_substitutes = "प्रशिक्षण",

		toggle_operator_status_command = "ऑपरेटर स्थिति टॉगल करें",
		toggle_operator_status_command_help = "अपनी आपातकालीन ऑपरेटर स्थिति टॉगल करें। इससे सक्षम होने पर, आपको 911 कॉल स्वीकार करने का विकल्प मिलेगा।",
		toggle_operator_status_command_substitutes = "ऑपरेटर, ऑपरेटर टॉगल, ऑपरेटर स्थिति",

		-- jobs/police
		aim_assist_command = "निशान लक्ष्य सहायता",
		aim_assist_command_help = "PD लक्ष्य सहायता को टॉगल करें। (नाथन स्पेंसर की याद में।)",
		aim_assist_command_substitutes = "",

		undercover_command = "undercover",
		undercover_command_help = "टॉगल करें कि क्या आप अंडरकवर हैं या नहीं। यह विभिन्न चीजें छिपाएगा जो आमतौर पर आपकी पुलिस स्थिति का पता लगाने में मदद करेंगी।",
		undercover_command_substitutes = "",

		active_robberies_command = "चल रहे डकैती",
		active_robberies_command_help = "सभी वर्तमान में चल रहे (खुले) स्टोर, बैंक और ज्वेलरी स्टोर की सूची बताता है।",
		active_robberies_command_substitutes = "",

		pd_impound_command = "pd_impound",
		pd_impound_command_help = "यह कमांड एक खिलाड़ी की गाड़ी को कुछ समय के लिए बंद कर देता है।",
		pd_impound_command_parameter_minutes = "मिनट",
		pd_impound_command_parameter_minutes_help = "गाड़ी कितने समय के लिए बंद की जाएगी (1 मिनट और 12 घंटे के बीच)।",
		pd_impound_command_substitutes = "",

		dispatch_command = "डिस्पैच",
		dispatch_command_help = "एक संदेश PD डिस्पैच में भेजता है।",
		dispatch_command_parameter_message = "संदेश",
		dispatch_command_parameter_message_help = "आप भेजना चाहते हैं संदेश।",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "police_drive_mode",
		police_drive_mode_command_help = "अपने पुलिस वाहन के ड्राइव मोड को टॉगल करें।",
		police_drive_mode_command_parameter_mode = "मोड",
		police_drive_mode_command_parameter_mode_help = "आप जो मोड सेट करना चाहते हैं। ड्राइव के लिए \"D\" और स्पोर्ट के लिए \"S\" (स्पोर्ट डिफ़ॉल्ट है)।",
		police_drive_mode_command_substitutes = "drive_mode",

		-- jobs/state
		license_give_command = "दस्तावेज दें",
		license_give_command_help = "एक लाइसेंस दें।",
		license_give_command_parameter_character_id = "चरित्र आईडी",
		license_give_command_parameter_character_id_help = "चरित्र की आईडी जिसे आप लाइसेंस देना चाहते हैं।",
		license_give_command_parameter_license = "लाइसेंस",
		license_give_command_parameter_license_help = "आप देना चाहते हैं लाइसेंस। आप `/license_list` का उपयोग करके उपलब्ध लाइसेंसों की सूची देख सकते हैं।",
		license_give_command_substitutes = "give_license, add_license",

		license_remove_command = "license_remove",
		license_remove_command_help = "एक लाइसेंस हटाएं।",
		license_remove_command_parameter_character_id = "चरित्र आईडी",
		license_remove_command_parameter_character_id_help = "चरित्र की आईडी जिससे आप लाइसेंस हटाना चाहते हैं।",
		license_remove_command_parameter_license = "लाइसेंस",
		license_remove_command_parameter_license_help = "वह लाइसेंस जिसे आप हटाना चाहते हैं। आप `/license_list` का उपयोग करके उपलब्ध लाइसेंसों की सूची देख सकते हैं।",
		license_remove_command_substitutes = " लाइसेंस_निकालें",

		license_list_command = "लाइसेंस_सूची",
		license_list_command_help = "सभी उपलब्ध लाइसेंस की सूची देता है।",
		license_list_command_substitutes = "लाइसेंस_की_सूची_देखें, लाइसेंस_सूची_की_जाँच_करें",

		licenses_check_command = "लाइसेंस_जाँचें",
		licenses_check_command_help = "किसी के लाइसेंस की जाँच करें।",
		licenses_check_command_parameter_character_id = "चरित्र आईडी",
		licenses_check_command_parameter_character_id_help = "चरित्र का आईडी जिसके लिए आप लाइसेंस की जाँच करना चाहते हैं।",
		licenses_check_command_substitutes = "लाइसेंस_जाँचें, लाइसेंस_जाँच_करें",

		licenses_command = "लाइसेंस",
		licenses_command_help = "अपने लाइसेंस प्राप्त करें।",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "मैकेनिक संदेश टॉगल करें",
		toggle_mechanic_messages_command_help = "मैकेनिक संदेश प्राप्त करना है या नहीं टॉगल करें।",
		toggle_mechanic_messages_command_substitutes = "मैकेनिक_संदेश",

		-- vehicles/boats
		toggle_anchor_command = "एंकर टॉगल करें",
		toggle_anchor_command_help = "नजदीकी नाव का अंकर टॉगल करें।",
		toggle_anchor_command_substitutes = "अंकर",

		-- vehicles/damage
		vehicle_damage_debug_command = "वाहन क्षति डीबग कमांड",
		vehicle_damage_debug_command_help = "गाड़ी के वर्तमान क्षति मूल्यों को डीबग करें।",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "set_fuel",
		set_fuel_command_help = "आपकी गाड़ी के ईंधन स्तर को सेट करें।",
		set_fuel_command_parameter_fuel_level = "ईंधन स्तर",
		set_fuel_command_parameter_fuel_level_help = "आप इसे सेट करना चाहेंगे ईंधन स्तर। इसे खाली छोड़ने से `100` ऑटो-चुना जाएगा।",
		set_fuel_command_substitutes = "fuel",

		-- vehicles/garages
		toggle_garage_debug_command = "toggle_garage_debug",
		toggle_garage_debug_command_help = "गेराज डीबग को टॉगल करें।",
		toggle_garage_debug_command_substitutes = "गेराज_डीबग_टॉगल",

		-- vehicles/keys
		give_key_command = "कुंजी_देना",
		give_key_command_help = "आस-पास की किसी व्यक्ति को वाहन की कुंजी देना।",
		give_key_command_parameter_server_id = "सर्वर आईडी",
		give_key_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी जिसे आप कुंजी देना चाहते हैं। यह खाली छोड़ा जा सकता है (या 0) ताकि इसे निकटतम व्यक्ति को दिया जा सके।",
		give_key_command_substitutes = "कुंजीदें",

		hotwire_vehicle_command = "वाहन_हॉटवायर",
		hotwire_vehicle_command_help = "वहाँ वाहन को तुरंत हॉटवायर करें जिसमें आप हैं।",
		hotwire_vehicle_command_parameter_server_id = "सर्वर आईडी",
		hotwire_vehicle_command_parameter_server_id_help = "दूसरे खिलाड़ी को तुरंत उन वाहन को हॉटवायर करें जिनमें वे हैं।",
		hotwire_vehicle_command_substitutes = "हॉटवायर",

		pickup_keys_command = "गाड़ी की चाबी उठाएं",
		pickup_keys_command_help = "आपको निकटतम गाड़ी की चाबियां उठाने के लिए होता है।",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "व्हील ऑफसेट",
		wheel_offset_command_help = "एक वाहन के व्हील के ऑफसेट को संशोधित करें।",
		wheel_offset_command_parameter_wheels = "सामने / पीछे",
		wheel_offset_command_parameter_wheels_help = "आप कौन से व्हील संशोधित करना चाहते हैं?",
		wheel_offset_command_parameter_value = "मूल्य",
		wheel_offset_command_parameter_value_help = "आप इसे संशोधित करना चाहते हैं। यह कहीं से भी -0.15 से 0.15 तक हो सकता है, 0 मूल्य अनुकूलित होगा।",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "व्हील_घूमाव",
		wheel_rotation_command_help = "एक वाहन के व्हीलों के घूमाव को संशोधित करें।",
		wheel_rotation_command_parameter_wheels = "आगे/पीछे",
		wheel_rotation_command_parameter_wheels_help = "आप कौन से व्हील संशोधित करना चाहेंगे?",
		wheel_rotation_command_parameter_value = "मूल्य",
		wheel_rotation_command_parameter_value_help = "आप इसे संशोधित करना चाहते हैं उस राशि को। यह आवश्यकतानुसार -0.5 से 0.5 तक कहीं भी हो सकता है, 0 सबसे अधिक बनता है।",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "फेक_प्लेट",
		fake_plate_command_help = "वर्तमान वाहन के फेक प्लेट को टॉगल करें।",
		fake_plate_command_substitutes = "",

		plate_available_command = "plate_available",
		plate_available_command_help = "यह `/custom_plate` कमांड के लिए प्लेट नंबर उपलब्ध है या नहीं देखने के लिए उपयोग किया जाता है।",
		plate_available_command_parameter_plate_number = "प्लेट नंबर",
		plate_available_command_parameter_plate_number_help = "आप जिस प्लेट नंबर की जाँच करना चाहते हैं। प्लेट नंबर केवल 8 अक्षरों का हो सकता है और केवल बड़े अक्षर और नंबर से मिल सकता है।",
		plate_available_command_substitutes = "",

		custom_plate_command = "custom_plate",
		custom_plate_command_help = "अपनी गाड़ी के लिए एक कस्टम प्लेट सेट करें।",
		custom_plate_command_parameter_vehicle_id = "वाहन आईडी",
		custom_plate_command_parameter_vehicle_id_help = "आप जिस वाहन पर कस्टम प्लेट रखना चाहते हैं, उसकी वाहन आईडी। (आप इस आईडी को अपने गेराज में खोज सकते हैं)",
		custom_plate_command_parameter_plate_number = "प्लेट नंबर",
		custom_plate_command_parameter_plate_number_help = "आपको सेट करने के लिए प्लेट नंबर। प्लेट नंबर केवल 8 अक्षरों तक हो सकते हैं और केवल कैपिटल अक्षरों और संख्याओं से ही बन सकते हैं।",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "IFR मोड टॉगल करें (निकटवर्ती रनवे के लिए लैंडिंग असिस्ट दिखाएं)।",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "म्यूट_सायरन्स",
		mute_sirens_command_help = "सभी सायरन्स और हॉर्न को म्यूट करता है।",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "घुमाओ",
		flip_command_help = "फ्लिप की गई वाहन को उलटा करो।",
		flip_command_substitutes = "",

		toggle_roll_control_command = "टॉगल_रोल_कंट्रोल",
		toggle_roll_control_command_help = "रोल और एयर कंट्रोल टॉगल करें।",
		toggle_roll_control_command_substitutes = "रोल_कंट्रोल",

		enable_ls_customs_command = "एनेबल_एलएस_कस्टम्स",
		enable_ls_customs_command_help = "एलएस कस्टम्स मेनू को टॉगल करें।",
		enable_ls_customs_command_substitutes = "एलएस_कस्टम्स",

		toggle_gear_animation_command = "गियर_एनीमेशन_टॉगल_करें",
		toggle_gear_animation_command_help = "गाड़ियों में गियर शिफ्ट एनीमेशन और ध्वनि को टॉगल करता है।",
		toggle_gear_animation_command_substitutes = "गियर_एनीमेशन, गियर_ध्वनि",

		turtle_vehicle_command = "टर्टल_वाहन",
		turtle_vehicle_command_help = "आपकी गाड़ी को उसकी छत पर फ्लिप कर देता है।",
		turtle_vehicle_command_substitutes = "टर्टल",

		door_command = "दरवाज़ा",
		door_command_help = "एक गाड़ी के दरवाज़ों को टॉगल करे।",
		door_command_parameter_door_id = "दरवाज़ा आईडी (1-6)",
		door_command_parameter_door_id_help = "आप कौनसे वाहन के दरवाजे खोलना चाहते हैं? इस पैरामीटर को जानवर सवार होने पर अधिलेखित किया जाता है। आप वाहन के बाहर इस कमांड का उपयोग भी कर सकते हैं।",
		door_command_substitutes = "",

		window_command = "खिड़की",
		window_command_help = "वाहन की खिड़की को टॉगल करें।",
		window_command_parameter_window_id = "खिड़की आईडी (1-4)",
		window_command_parameter_window_id_help = "आप कौनसी वाहन खिड़की खोलना चाहते हैं? इस पैरामीटर को जानवर सवार होने पर अधिलेखित किया जाता है।",
		window_command_substitutes = "",

		shuffle_command = "शफल",
		shuffle_command_help = "दूसरी गाड़ी सीट में जाएं।",
		shuffle_command_substitutes = "शफल",

		seat_command = "मुद्दा",
		seat_command_help = "दूसरी वाहन सीट में जाएं।",
		seat_command_parameter_seat_id = "सीट आईडी (1-6)",
		seat_command_parameter_seat_id_help = "आप किस सीट में जाना चाहते हैं?",
		seat_command_substitutes = "",

		engine_command = "इंजन",
		engine_command_help = "एक वाहन का इंजन चालू / बंद करें।",
		engine_command_substitutes = "",

		mileage_command = "माइलेज",
		mileage_command_help = "एक वाहन का माइलेज जांचें।",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "टॉगल_डिसेबल_ब्रेक",
		toggle_disabled_brakes_command_help = "उस निकटतम वाहन की ब्रेक अक्षम या सक्षम करता है।",
		toggle_disabled_brakes_command_substitutes = "ब्रेकों_को_बंद_करें",

		manual_toggle_command = "मैनुअल_टॉगल",
		manual_toggle_command_help = "यह टॉगल करता है कि आप क्या वाहनों के गियरों को मैनुअल रूप से नियंत्रित करना चाहते हैं या नहीं।",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "स्पीड_लिमिटर",
		speed_limiter_command_parameter_speed = "गति",
		speed_limiter_command_parameter_speed_help = "आप कौन सी गति का उपयोग स्पीड लिमिटर करना चाहेंगे? आप इसे रीसेट करने के लिए खाली छोड़ सकते हैं, जिससे यह सामान्य व्यवहार पर लौटेगा।",
		speed_limiter_command_help = "गति सीमा नियंत्रक के सामान्य व्यवहार को अधिरोहित करने के लिए गति सीमा को पूर्व-सेट करने के लिए।",
		speed_limiter_command_substitutes = "एसएल, सीसी, क्रूज कंट्रोल",

		add_vehicle_command = "गाड़ी_जोड़ें",
		add_vehicle_command_help = "जीतके गेराज में एक गाड़ी जोड़ें।",
		add_vehicle_command_parameter_model = "मॉडल",
		add_vehicle_command_parameter_model_help = "उस गाड़ी का मॉडल नाम या मॉडल हैश दर्ज करें, जो आप जोड़ना चाहते हैं।",
		add_vehicle_command_parameter_server_id = "सर्वर आईडी",
		add_vehicle_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी दर्ज करें, जिसे आप एक गाड़ी देना चाहते हैं। इसे खाली छोड़ देने से आप स्वयं का चयन ऑटो-सेलेक्ट करेंगे।",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "toggle_vehicle_weapons",
		toggle_vehicle_weapons_command_help = "टॉगल करें कि गाड़ी के हथियार का उपयोग किया जा सके या नहीं।",
		toggle_vehicle_weapons_command_parameter_server_id = "सर्वर ID",
		toggle_vehicle_weapons_command_parameter_server_id_help = "उस खिलाड़ी का सर्वर आईडी जिसके लिए आप गाड़ी के हथियार टॉगल करना चाहते हैं। स्वयं को ऑटो-सेलेक्ट करने के लिए इसे खाली छोड़ दें।",
		toggle_vehicle_weapons_command_substitutes = "गाड़ी_हथियार",

		wheelie_command = "wheelie",
		wheelie_command_help = "व्हीली मोड टॉगल करता है। (गाड़ी में होते हुए शिफ्ट प्रेस करें)",
		wheelie_command_parameter_power_level = "शक्ति स्तर",
		wheelie_command_parameter_power_level_help = "कितनी तेज़ी से उम्मीद है कि गाड़ी उठेगी (डिफ़ॉल्ट 2.5 है, यदि व्हीली बहुत मजबूत है तो इसे कम करें, यदि यह कमजोर है तो इसे बढ़ाएं)।",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "vin_number",
		vin_number_command_help = "आप जिस गाड़ी पर सवार हैं उसका VIN नंबर वापस करता है।",
		vin_number_command_substitutes = "vin",

		vin_lookup_command = "vin_lookup",
		vin_lookup_command_help = "एक वाहन के VIN नंबर की जाँच करता है।",
		vin_lookup_command_parameter_vin_number = "VIN नंबर",
		vin_lookup_command_parameter_vin_number_help = "जिस VIN नंबर की जाँच करनी हो वहाँ दर्ज करें।",
		vin_lookup_command_substitutes = "lookup_vin, lv",

		-- weapons/ammo
		fill_ammo_command = "fill_ammo",
		fill_ammo_command_help = "आपकी सभी हथियारों में गोला भरता है।",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "crosshair",
		crosshair_command_help = "क्रॉसहेयर को टॉगल करें।",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "aim_down_sight",
		aim_down_sight_command_help = "दायाँ क्लिक करने पर, तीसरे व्यक्ति मोड में होने पर भी स्वचालित रूप से बहार निशान लगाता है।",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/weapons
		check_ammo_command = "एमो जाँचें",
		check_ammo_command_help = "जांचता है कि आपके पास आपके हाथ में वर्तमान में कितने गोला हैं।",
		check_ammo_command_substitutes = "गोला",

		toggle_airsoft_mode_command_command = "एयरसॉफ्ट मोड टॉगल करें",
		toggle_airsoft_mode_command_command_help = "सर्वरवाइड एयरसॉफ्ट मोड (उल्टे) को टॉगल करता है, जिससे सभी बंदूकों का कम से कम हानि होता है।",
		toggle_airsoft_mode_command_command_substitutes = "एयरसॉफ्ट_मोड, एयरसॉफ्ट",

		toggle_folded_stock_command_command = "फोल्डेड स्टॉक टॉगल करें",
		toggle_folded_stock_command_command_help = "आपके पास जो भी हथियार हैं, उनकी फोल्डेड स्टॉक को टॉगल करें।",
		toggle_folded_stock_command_command_substitutes = "folded_stock, stock"
	},

	connections = {
		your_account_is_connecting = "आपका अकाउंट नए सेशन से कनेक्ट कर रहा है।"
	},

	controls = {
		menu_control_up = "मेनू ऊपर",
		menu_control_down = "मेनू नीचे",
		menu_control_left = "मेनू बाएं",
		menu_control_right = "मेनू दाएं",

		menu_control_up_alternative = "मेनू ऊपर आल्टरनेटिव",
		menu_control_down_alternative = "मेनू नीचे आल्टरनेटिव",
		menu_control_left_alternative = "मेनू बाएं विकल्प",
		menu_control_right_alternative = "मेनू दाएं विकल्प"
	},

	core = {
		version = "संस्करण"
	},

	discord = {
		one_player = "1 खिलाड़ी",
		multiple_players = "${playerAmount} खिलाड़ियों के साथ शामिल हों",
		join_with_fivem = "FiveM के साथ शामिल हों",
		discord_guild = "डिस्कॉर्ड गिल्ड",
		richer_presence_on = "धनी प्रदर्शन अब चालू है।",
		richer_presence_off = "धनी प्रदर्शन अब बंद है।"
	},

	emojis = {
		emoji_list = "${emojis}",
		refresh_emojis_no_permissions = "खिलाड़ी ने सही अनुमतियों के बिना इमोजी ताजगी का प्रयास किया।",
		api_reported_no_updates = "डिस्कॉर्ड API ने इमोजी सूची में कोई अपडेट नहीं रिपोर्ट किया।",
		emojis_added = "${added} इमोजी जोड़े गए।",
		emojis_removed = "${removed} इमोजी हटा दिए गए।",
		emojis_updated = "${added} इमोजी जोड़े गए और ${removed} इमोजी हटा दिए गए।"
	},

	errors = {
		script_location = "स्क्रिप्ट स्थान",
		additional_information = "अतिरिक्त जानकारी",
		error_report = "त्रुटि संदर्भ",
		send_report = "संदर्भ भेजें",
		abort_report = "संदर्भ रद्द करें",
		input_placeholder = "कृपया हमें बताएं कि इस त्रुटि को ट्रिगर करने वाले कार्य क्या थे...",
		oh_no = "अरे नहीं,",
		an_error_has_occurred = "कोई त्रुटि हुई है!",
		error_occured_information = "यह इस बात की निशानी है कि कुछ सही नहीं काम कर रहा है या अभिप्राय के अनुसार नहीं हो रहा है। हम आपसे विनती करते हैं कि आप इस समस्या को हल करने में हमारी मदद करें और जब यह त्रुटि ट्रिगर हुई थी, तो आप क्या कर रहे थे, उसके बारे में कुछ अतिरिक्त विवरण प्रदान करें।"
	},

	ping = {
		get_pings_missing_permissions = "खिलाड़ी पिंग्स प्राप्त करने की कोशिश की, लेकिन उन्हें इसे करने के लिए अनुमति नहीं थी।",
		getting_pings = "सभी खिलाड़ियों से पिंग प्राप्त करना। इसमें कुछ सेकंड लग सकते हैं।",
		host_data = "${position}. ${location} - ${totalPings} क्लाइंट्स पर आधारित ${averagePing} औसत पिंग, 10% कम: ${averagePingLow}, 10% ज्यादा: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "प्रोफाइल डीबगर सक्षम कर दिया गया है। आउटपुट के लिए एफ 8 कंसोल की जाँच करें।",
		profile_debug_disabled = "प्रोफाइल डीबगर अक्षम कर दिया गया है।"
	},

	queue = {
		joining_the_queue = "कतार में शामिल हो रहा है ...",
		timed_out_before_joining = "आप तैयमत समय से पहले ही सर्वर में शामिल होने से चूक गए।",
		server_reload_while_in_loading = "सर्वर कोर से पुनरारंभ हो रहा है और यदि आप ठीक से लोड नहीं होते हैं तो आपको स्वचालित रूप से बाहर कर दिया जाता है।",
		server_reload_while_in_queue = "सर्वर कोर रिस्टार्ट हो रहा है। कतार में फिर से जुड़ें।",
		took_too_long_to_connect = "आपने कनेक्ट होने में बहुत समय लिया है!",
		queue_position_with_priority = "🐌 आप ${priorityName} प्राथमिकता के साथ कतार में ${queueEntryId}/${queueLength} हैं। 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 आप कतार में ${queueEntryId}/${queueLength} हैं। 🕐${queueTime}\nकतार से ऊब हो गए? हमारा समर्थन करें ताकि आपको प्राथमिकता मिले!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nक्या आप ऊब हो गए हैं? इन स्ट्रीमर्स की जांच करें!\n${streamers}",
		server_is_starting = "सर्वर शुरू होने का इंतजार कर रहा है...",
		cancelled_before_server_start = "सर्वर शुरू होने से पहले कनेक्शन रद्द कर दिया गया था।",
		kicked_from_queue = "आप `${reason}` के कारण कतार से निकाल दिए गए हैं।",
		kicked_from_queue_no_reason = "आप कतार से कोई निर्दिष्ट कारण के लिए निकाल दिए गए हैं।",
		missing_slots_parameter = "`slots` पैरामीटर गुम है।",
		invalid_slots_parameter = "`slots` पैरामीटर अवैध है।",
		slots_parameter_out_of_range = "`स्लॉट्स` पैरामीटर `0` से `1025` तक होना चाहिए।",
		slots_already_set_to = "सर्वर स्लॉट्स पहले से ही `${slots}` पर सेट हैं।",
		slots_set_to = "सर्वर स्लॉट्स अब `${slots}` पर सेट हो गए हैं।",

		invalid_license_identifier_parameter = "मिसिंग या अमान्य 'लाइसेंस आईडेंटिफायर' पैरामीटर।",
		invalid_target_position_parameter = "मिसिंग या अमान्य 'टारगेट पोजीशन' पैरामीटर।",
		player_not_found_in_queue = "प्लेयर कतार में नहीं मिला।",
		player_queue_moved_success = "प्लेयर की कतार में पोजीशन अपडेट कर दी गई है।",
		player_queue_skipped_success = "खिलाड़ी कतार को सफलतापूर्वक छोड़ दिया गया है।",
		queue_is_not_ready = "कतार तैयार नहीं है, इसलिए इसे छोड़ा नहीं जा सकता है।",

		welcome_to = "आपका स्वागत है"
	},

	restart = {
		restart_30_minutes = "सर्वर 30 मिनट में रीस्टार्ट होगा!",
		restart_15_minutes = "सर्वर 15 मिनट में रीस्टार्ट होगा!",
		restart_10_minutes = "सर्वर 10 मिनट में रीस्टार्ट होगा!",
		restart_5_minutes = "सर्वर 5 मिनट में रीस्टार्ट होगा!",
		restart_3_minutes = "सर्वर 3 मिनट में रीस्टार्ट होगा!",
		restart_2_minutes = "सर्वर 2 मिनट में रीस्टार्ट होगा!",
		restart_1_minute = "सर्वर 1 मिनट में रीस्टार्ट होगा!",
		server_restarting = "सर्वर पुनः आरंभ हो रहा है। कुछ मिनटों में आप फिर से शामिल हो सकते हैं।",
		executed_restart_command = "पुनरारंभ कमांड को क्रियान्वित किया गया है।",
		already_executed_restart_command = "पुनरारंभ कमांड पहले से ही क्रियान्वित किया गया है।"
	},

	routes = {
		route_not_found = "${route} रूट नहीं मिली।",
		route_restricted = "${route} रूट प्रतिबंधित है।",
		internal_server_error = "आंतरिक सर्वर त्रुटि।"
	},

	users = {
		playtime = "प्ले टाइम",
		player_playtime = "${playerName} (पद ${position})\nकुल प्ले टाइम: ${totalPlaytime}\nसेशन प्ले टाइम: ${sessionPlaytime}",
		leaderboard = "लीडरबोर्ड",
		your_position = "आपकी पोजीशन",
		logs_user_reject_connection_title = "कनेक्शन अस्वीकृत",
		logs_user_reject_connection_details = "${consoleName} से कनेक्शन अस्वीकार किया गया (`${reason}`).",
		logs_user_connected_title = "उपयोगकर्ता कनेक्ट हुआ",
		logs_user_connected_details = "${consoleName} सर्वर से कनेक्ट हुआ है।",
		logs_user_joined_title = "उपयोगकर्ता शामिल हुआ",
		logs_user_joined_details = "${consoleName} ने सर्वर से जुड़ गया है।",
		logs_user_dropped_title = "उपयोगकर्ता डिस्कनेक्ट हुआ",
		logs_user_dropped_details = "${consoleName} ${playtime} खेलने के बाद सर्वर से डिस्कनेक्ट हो गया है, कारण: `${reason}`।",
		logs_character_loaded_title = "करेक्टर लोड हुआ",
		logs_character_loaded_details = "${consoleName} ने करेक्टर ${fullName} (${characterId}) लोड कर लिया है।",
		logs_character_unloaded_title = "करेक्टर अनलोड हुआ",
		logs_character_unloaded_details = "${consoleName} ने करेक्टर ${fullName} (${characterId}) अनलोड कर दिया है।",
		logs_character_unloaded_details_reason = "${consoleName} ने कारण `${reason}` के साथ अपने पास आए शख्स ${fullName} (${characterId}) को अनलोड कर दिया है।",
		logs_character_created_title = "शख्स बनाया गया",
		logs_character_created_details = "${consoleName} ने शख्स ${fullName} (${characterId}) बनाया है।",
		logs_character_deleted_title = "शख्स हटाया गया",
		logs_character_deleted_details = "${consoleName} ने शख्स ${fullName} (${characterId}) को हटा दिया है।",
		server_core_is_restarting = "सर्वर कोर रीस्टार्ट हो रहा है।",
		you_timed_out = "आपका समय समाप्त हुआ!",
		kicked_for_no_specified_reason = "आपको किसी निर्दिष्ट कारण के लिए किया गया निकाल.",
		kicked_player = "खिलाड़ी को निकाल दिया गया।",
		kicked_player_and_removed_reconnect_priority = "खिलाड़ी को निकाला गया और पुनःकनेक्ट प्राथमिकता को हटा दिया गया।",
		kicked_player_and_failed_to_remove_reconnect_priority = "खिलाड़ी को निकाल दिया गया और पुनःकनेक्ट प्राथमिकता को हटाने में विफल रहा।",
		removed_player_from_queue = "पंक्ति से खिलाड़ी को हटा दिया गया।",
		player_not_found = "खिलाड़ी नहीं मिला।",
		missing_license_identifier = "लाइसेंस आईडेंटिफायर अनुमति गुम है।",
		package = "पैकेज",
		package_updated = "आपका पैकेज `${packageName}` अपडेट किया गया है।",
		package_updated_remaining_time = "आपका पैकेज `${packageName}` ${remainingTime} में खत्म हो जाएगा।",
		package_expired = "आपका पैकेज समाप्त हो गया है।",
		package_same = "आपका पैकेज `${packageName}` है।",
		package_same_remaining_time = "आपका पैकेज `${packageName}` ${remainingTime} में खत्म हो जाएगा।",
		no_package = "आपके पास कोई पैकेज नहीं है।",
		fetching_package_error = "आपके पैकेज डेटा को निकालने की कोशिश करते समय एक त्रुटि हुई।",
		check_playtime_not_staff = "प्लेयर ने किसी अन्य व्यक्ति का प्लेटाइम जांचने का प्रयास किया, लेकिन उसमें सही अनुमतियों की व्यवस्था नहीं थी।",
		reason_unknown = "कारण अज्ञात है।",

		unloaded_character = "अनलोड हुए किरदार।",
		user_does_not_have_sent_character_loaded = "संदिग्ध उपयोगकर्ता के पास भेजे गए किरदार लोड नहीं हैं।",
		user_has_no_character_loaded = "उपयोगकर्ता के पास कोई किरदार लोड नहीं है।",
		user_not_found = "संदिग्ध उपयोगकर्ता सर्वर पर नहीं मिला।",
		invalid_character_id = "भेजा गया किरदार आईडी अमान्य है।",
		invalid_license_identifier = "लाइसेंस पहचानकर्ता पैरामीटर अमान्य है।",

		unload_character_not_staff = "खिलाड़ी को करैक्टर अनलोड करने का प्रयास करने वाला कर्मचारी नहीं है।",

		unloaded_character_for_player_logs_title = "खिलाड़ी के लिए करैक्टर अनलोड किया गया",
		unloaded_character_for_player_logs_details = "${consoleName} ने `${message}` के कारण ${targetConsoleName} के करैक्टर ${characterFullName} (${characterId}) को अनलोड किया।",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} ने किसी भी विशिष्ट कारण के बिना ${targetConsoleName} के करैक्टर ${characterFullName} (${वाक्यId}) को अनलोड किया।",
		unloaded_character_self_logs_title = "अनाम व्यक्ति",
		unloaded_character_self_logs_details = "${consoleName} ने खुद के व्यक्तित्व ${characterFullName} (${characterId}) को `${message}` के साथ अनलोड किया।",
		unloaded_character_self_no_reason_logs_details = "${consoleName} ने खुद के व्यक्तित्व ${characterFullName} (${characterId}) को कोई विशिष्ट कारण बताए बिना अनलोड किया।",

		unloaded_character_for_user = "${consoleName} के लिए व्यक्तित्व ${characterFullName} (${characterId}) अनलोड किया गया।",
		user_with_server_id_has_no_character_loaded = "सर्वर आईडी `${serverId}` के साथ कोई व्यक्तित्व लोड नहीं है।",
		user_with_server_id_not_found = "सर्वर आईडी ${serverId} के साथ उपयोगकर्ता नहीं मिला।",

		custom_plate = "कस्टम प्लेट",
		custom_character_id = "कस्टम चरित्र आईडी",
		custom_phone_number = "कस्टम फोन नंबर",
		reskin = "रीस्किन",

		no_player_packages = "आपके पास कोई खिलाड़ी पैकेज नहीं हैं।",
		player_packages = "खिलाड़ी पैकेज:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "प्रतिष्ठित टियर",
		respected_tier = "सम्मानित टियर",
		heroic_tier = "वीर टियर",
		legendary_tier = "दैवीय टियर",
		godlike_tier = "भगवान टियर"
	},

	-- game/*
	admin_menu = {
		menu_title = "व्यवस्थापक मेनू",
		spectate_player = "खिलाड़ी की नज़र रखें",
		teleport_player = "खिलाड़ी को टेलीपोर्ट करें",
		teleport_player_here = "खिलाड़ी को आपके पास टेलीपोर्ट करे",
		failed_teleport_to_player = "खिलाड़ी को टेलीपोर्ट करने में विफल.",
		failed_teleport_player_here = "खिलाड़ी को आपके पास टेलीपोर्ट करने में विफल.",
		invalid_target_server_id = "अवैध लक्ष्य सर्वर आईडी.",
		invalid_destination_server_id = "अवैध गंतव्य सर्वर आईडी.",
		invalid_source_server_id = "अवैध स्रोत सर्वर आईडी.",
		failed_teleport_player_to_player = "खिलाड़ी को खिलाड़ी के पास टेलीपोर्ट करने में विफल।",
		teleported_player_to_player = "खिलाड़ी को खिलाड़ी के पास टेलीपोर्ट किया।",

		teleport_player_missing_permissions = "खिलाड़ी ने एक खिलाड़ी को टेलीपोर्ट करने का प्रयास किया, लेकिन उनके पास इसे करने के लिए उचित अनुमतियां नहीं थीं।"
	},

	afk = {
		you_are_afk = "आप AFK हैं। आपका चरित्र जल्द ही अनलोड हो जाएगा।",
		move_mouse = "अपने माउस को हिलाएं ताकि आप AFK नहीं रहें।",
		you_have_been_unloaded_for_being_afk = "आप एक लंबे समय तक AFK थे, अगली बार आप चरित्र चयन स्क्रीन पर जाने का विचार करें।"
	},

	airdrops = {
		create_airdrop_missing_permissions = "खिलौना स्काईड्रॉप बनाने का प्रयास करने वाला खिलाड़ी इसे बनाने के लिए आवश्यक अनुमतियों से वंचित था।",
		created_airdrop = "एक ऐरड्रॉप का निर्माण किया गया है जिसके प्रकार `${airdropType}` हैं और कुल ${itemAmount} आइटम(सामान) हैं।"
	},

	airports = {
		airport = "हवाई अड्डा",
		press_to_access_spawner = "वाहन स्पॉर्नर तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		no_spawner_licenses = "इस वाहन स्पॉनर के लिए आपके पास कोई भी लाइसेंस नहीं है।",
		vehicle_lists = "वाहन सूचियां",
		parked_vehicle = "पार्क किया गया वाहन।",
		press_to_park_vehicle = "वाहन को पार्क करने के लिए ~INPUT_CONTEXT~ दबाएं।",
		no_vehicle_to_park = "कोई वाहन पार्क करने के लिए नहीं है।",
		park_vehicle = "वाहन पार्क करें",
		park_vehicle_outside = "बाहर वाहन पार्क करें",
		close_menu = "मेनू बंद करें",
		spawned_vehicle = "वाहन उत्पन्न हुआ।",
		spawner_on_timeout = "वाहन स्पॉन्सर विस्तार पर है। कृपया पुन: प्रयास करें।",
		spawn_area_not_clear = "जन्म क्षेत्र स्पष्ट नहीं है।",
		return_button = "वापस जाएं",
		deposit = "$${amount} जमा",
		no_deposit = "कोई जमा नहीं",
		deposit_not_enough_money = "आपके पास जमा भुगतान करने के लिए पर्याप्त धन नहीं है।"
	},

	airstrike = {
		create_airstrike_missing_permissions = "खिलाड़ी एक एयरस्ट्राइक बनाने का प्रयास करने की कोशिश की लेकिन उनके पास इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",

		airstrike_success = "एयरस्ट्राइक सफलतापूर्वक बनाया गया।",
		airstrike_failed = "एयरस्ट्राइक बनाने में विफल हुआ।"
	},

	airsupport = {
		create_airsupport_missing_permissions = "खिलाड़ी ने हवाई सहयोग को बुलाने का प्रयास किया, लेकिन उनके पास इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",

		distance = "दूरी: ${distance}${unit}",
		time_to_impact = "ETI: ${timeToImpact}",

		out_of_range = "~r~OOR",

		km = "km",
		mi = "mi",

		airsupport_failed = "हवाई सहयोग बुलाने में विफल हुआ।"
	},

	alcohol = {
		now_sober = "आप अब फिर से शराब से साफ हो गए हैं।",
		drunk_state_1 = "आप थोड़े नशे में हैं।",
		drunk_state_2 = "आप नशे में हैं।",
		drunk_state_3 = "आप बेहद नशे में हैं।",
		drunk_state_4 = "आप खतरनाक रूप से नशे में हैं।"
	},

	alerts = {
		close = "बंद करें",

		alert_title = "पूर्वचेतावनी",

		invalid_server_id = "अवैध सर्वर आईडी।",
		missing_content = "सामग्री अनुपस्थित है।",

		show_alert_success = "खिलाड़ी को सफलतापूर्वक संदेश दिखाया गया।",
		show_alert_everyone_success = "सभी को सफलतापूर्वक संदेश दिखाया गया।",
		show_alert_failed = "खिलाड़ी को संदेश दिखाने में विफल रहा।",

		show_alert_missing_permissions = "खिलाड़ी ने किसी अन्य खिलाड़ी को संदेश दिखाने का प्रयास किया था लेकिन उनके पास इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।"
	},

	arcade = {
		use_arcade_machine = "एरकेड मशीन का उपयोग करने के लिए ~INPUT_CONTEXT~ दबाएं। लागत $${cost} है।",
		finished_arcade_logs_title = "अर्केड पूरा हुआ",
		finished_arcade_logs_details = "${consoleName} ने `${score}` अंकों के साथ गेम खत्म किया।"
	},

	archives = {
		press_to_access_archives = "अभिलेखों तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		archives_title = "अभिलेख",
		no_archives = "यहां कोई अभिलेख नहीं हैं।",
		close_menu = "मेनू बंद करें",
		archive_label = "मामला संख्या ${case}",

		failed_get_archives = "अभिलेख प्राप्त करने में विफल रहा।",
		failed_not_on_duty = "आप ड्यूटी पर नहीं हैं।",

		archive_created = "मामला संख्या ${case} के साथ अभिलेख सफलतापूर्वक बनाया गया।",
		invalid_case_number = "अमान्य केस नंबर (1 से 99999 के बीच एक पूर्णांक).",
		not_near_archive = "आप एक आर्काइव के पास नहीं हैं।",
		failed_create_archive = "आर्काइव बनाने में विफल रहा।",
		archive_already_exists = "केस नंबर इस आर्काइव में पहले से मौजूद है।",
		archive_destroyed = "केस नंबर ${case} के साथ आर्काइव को सफलतापूर्वक नष्ट कर दिया गया।",
		archive_maximum_case_count = "आप कोई नया केस नहीं बना सकते।",
		failed_destroy_archive = "आर्काइव नष्ट करने में विफल रहा।",
		destroy_not_empty = "आप केवल खाली आर्काइव को ही नष्ट कर सकते हैं।",

		create_archive_logs_title = "आर्काइव बनाया गया",
		create_archive_logs_details = "${consoleName} ने `${archiveName}` आर्काइव में मामला नंबर `${caseNumber}` के साथ एक मामला बनाया।",
		destroy_archive_logs_title = "आर्काइव नष्ट किया गया",
		destroy_archive_logs_details = "${consoleName} ने `${archiveName}` आर्काइव में मामला नंबर `${caseNumber}` के साथ एक मामला नष्ट किया।"
	},

	arena = {
		player_died = "${name} मर गया।",
		player_killed = "${killerName} ने ${name} को ${distance} मीटर दूरी से ${deathCause} से मार डाला।",
		hud_info = "खिलाड़ी संख्या: ${playerAmount}\n\nमौतें: ${deaths}\nकिल्लिंग्स: ${kills}",
		press_to_access_menu = "एरीना मेनू तक पहुंचने के लिए ~INPUT_INTERACTION_MENU~ दबाएं।",
		this_command_is_only_for_arena = "यह कमांड केवल एरीना के लिए है।",
		stand_still_to_respawn = "पुनः जीवित होने के लिए 5 सेकंड खड़े रहें।",
		respawn_cancelled = "आपने हिलते हुए अपनी जगह बदल दी है इसलिए पुनः जीवित होना रद्द कर दिया गया है।",
		arena_suicide_reason = "खुदकुशी",
		arena = "एरीना",
		ordered_airdrop = "ऑर्डर्ड ऐयरड्रॉप",

		store = "स्टोर",
		team = "टीम",
		leaderboard = "लीडरबोर्ड",
		search = "खोजें",
		add_to_cart = "कार्ट में डालें",
		unlocks_at_level = "अनलॉक करें ${level} स्तर पर",
		show_vehicles = "वाहन दिखाएं",
		hide_vehicles = "वाहन छिपाएं",
		balance = "बैलेंस: $${balance}",
		shopping_cart = "${items} आइटम ($${cost})",
		buy_now = "अभी खरीदें",
		call_airdrop = "एयरड्रॉप कॉल करें",
		empty = "खाली",
		clear_cart = "कार्ट साफ़ करें",
		can_not_afford = "इसकी खरीदारी नहीं हो सकती",
		brokie_lol = "ब्रोकी लोल",
		confirmation_exit_arena = "क्या आप वाकई एरीना से बाहर निकलना चाहते हैं?",
		confirmation_buy_now = "क्या आप वाकई $${cost} में ${label} खरीदना चाहते हैं?",
		yes = "हाँ",
		no = "नहीं",
		empty_slot = "खाली स्लॉट",
		team_name = "टीम का नाम",
		level = "स्तर",
		arena = "एरीना",
		battle_royale = "लड़ाई का राजा",
		arena_gun_game = "अरेना गन गेम",
		lottery = "लाटरी",
		daily_tasks = "दैनिक कार्य",
		categories = "श्रेणियाँ",
		refresh = "ताज़ा करें",
		refreshing = "ताज़ा कर रहे हैं...",
		not_available = "उपलब्ध नहीं है",

		kill = "किल",
		headshot = "हेडशॉट",
		killstreak = "किल स्ट्रीक",
		assist = "सहायता",

		level = "स्तर",
		position = "स्थान",
		name = "नाम",
		kills = "किल्स",
		deaths = "मौतें",
		kd = "किल/मौतें का अनुपात",
		hits = "हिट्स",
		hits_headshots = "हेडशॉट्स",
		headshot_ratio = "हेडशॉट अनुपात",
		damage_dealt = "की गई हानि",
		damage_taken = "प्राप्त की गई हानि",
		matches_played = "मैचेस",
		wins = "जीतें",
		win_ratio = "जीत का अनुपात",
		xp = "XP",
		money_won = "जीता हुआ पैसा",
		average_percentage = "औसत प्रतिशत",
		streak = "सिलसिला"
	},

	atms = {
		withdraw = "निकास",
		deposit = "जमा करें",
		balance = "बैलेंस",
		transfer = "हस्तांतरण",
		back = "वापस",

		amount = "राशि",
		target = "लक्ष्य",

		failed_deposit = "पैसे जमा करने में विफल",
		failed_withdraw = "पैसे निकालने में विफल",
		failed_transfer = "पैसे हस्तांतरित करने में विफल",

		processing = "प्रसंस्करण...",
		counting_bills = "बिलों की गणना हो रही है...",

		something_went_wrong = "कुछ गलत हो गया है।",
		error_not_online = "आपका लक्ष्य उपलब्ध नहीं है।",
		error_not_enough_money = "पर्याप्त धन नहीं है।",
		deposit_amount_big = "एटीएम जमा $4,000 तक सीमित हैं।",
		withdraw_amount_big = "एटीएम से नकद निकास $6,000 तक सीमित होता है।",

		retrieving_card = "कार्ड प्राप्त हो रहा है",
		atm_damaged = "यह एटीएम क्षतिग्रस्त है",

		press_to_use = "एटीएम का उपयोग करने के लिए ~g~${InteractionKey} ~w~दबाएं",
		press_to_interact_bank = "बैंक से अंतर्क्रिया करने के लिए ~g~${InteractionKey} ~w~दबाएं",

		deposit_log_bank_title = "बैंक जमा",
		deposit_log_atm_title = "ATM जमा",
		deposit_log = "${consoleName} ने $${amount} जमा किया।",

		withdraw_log_bank_title = "बैंक निकासी",
		withdraw_log_atm_title = "ATM निकासी",
		withdraw_log = "${consoleName} ने $${amount} निकासी की।",

		transfer_log_title = "बैंक ट्रांसफर",
		transfer_log = "${consoleName} (#${characterId}) ने ${targetConsoleName} (#${targetCharacterId}) को $${amount} ट्रांसफर किया।"
	},

	attachments = {
		cancel_attachments = "रद्द करें",
		finish_attachments = "लागू करें",

		modifying_attachments = "संलग्नक ${amount} को संशोधित करना",

		failed_apply = "अटैचमेंट्स लगाने में विफल.",
		no_item = "हथियार अब आपकी इन्वेंटरी में नहीं है।",
		no_attachment = "आपके पास आवश्यक अटैचमेंट नहीं है।",
		no_paint = "आपके पास कोई पेंट नहीं है।",
		success = "एटैचमेंट्स सफलतापूर्वक लगाए गए।",

		not_available = "आपकी इन्वेंटरी में यह अटैचमेंट नहीं है।",

		attachment_label_suppressor = "सप्रेसर",
		attachment_label_flashlight = "फ्लैशलाइट",
		attachment_label_extended_clip = "एक्सटेंडेड क्लिप",
		attachment_label_extended_pistol_clip = "एक्सटेंडेड पिस्तौल क्लिप",
		attachment_label_extended_smg_clip = "एक्सटेंडेड एसएमजी क्लिप",
		attachment_label_extended_shotgun_clip = "एक्सटेंडेड शॉटगन क्लिप",
		attachment_label_luxury = "लक्जरी फिनिश",
		attachment_label_incendiary = "आग प्रवाह",
		attachment_label_tracer = "ट्रेसर प्रवाह",
		attachment_label_hollow_point = "होलो पॉइंट प्रवाह",
		attachment_label_scope = "स्कोप",
		attachment_label_grip = "ग्रिप",
		attachment_label_drum = "ड्रम मैगज़ीन",
		attachment_label_heavy_barrel = "हैवी बैरल",
		attachment_label_armor_piercing = "आर्मर पियर्सिंग प्रवाह",
		attachment_label_explosive = "विस्फोटक गोलियां",
		attachment_label_sight = "होलोग्राफिक साइट",
		attachment_label_pistol_sight = "पिस्टल साइट",
		attachment_label_fmj = "फुल मेटल जैकेट गोलियां",
		attachment_label_scope_nv = "नाईट विजन स्कोप",
		attachment_label_scope_thermal = "थर्मल स्कोप",

		attachment_label_luxury1 = "द पिम्प",
		attachment_label_luxury2 = "द बलास",
		attachment_label_luxury3 = "द हस्तलर",
		attachment_label_luxury4 = "द रॉक",
		attachment_label_luxury5 = "द हेटर",
		attachment_label_luxury6 = "द लवर",
		attachment_label_luxury7 = "द प्लेयर",
		attachment_label_luxury8 = "द किंग",
		attachment_label_luxury9 = "द वागोस",

		attachment_label_luxury_knife_1 = "वीआईपी वेरिएंट",
		attachment_label_luxury_knife_2 = "बॉडीगार्ड वेरिएंट",

		attachment_label_stock_folded = "फोल्डेड स्टॉक",
		attachment_label_stock_unfolded = "अनफोल्डेड स्टॉक",

		attachment_label_skin_patriotic = "देशभक्ति रंग",
		attachment_label_skin_brushstroke = "ब्रशस्ट्रोक रंग",
		attachment_label_skin_skull = "खोपड़ी रंग",
		attachment_label_skin_leopard = "तेंदुआ त्वचा",
		attachment_label_skin_zebra = "ज़ेब्रा त्वचा",
		attachment_label_skin_geometric = "ज्यामितीय त्वचा",

		label_no_skin = "कोई त्वचा नहीं",

		no_tint = "कोई टिंट नहीं",

		tint_normal_0 = "काला",
		tint_normal_1 = "हरा",
		tint_normal_2 = "सोना",
		tint_normal_3 = "गुलाबी",
		tint_normal_4 = "सेना",
		tint_normal_5 = "एलएसपीडी",
		tint_normal_6 = "संतरा",
		tint_normal_7 = "प्लैटिनम",

		tint_mk2_0 = "क्लासिक काला",
		tint_mk2_1 = "क्लासिक ग्रे",
		tint_mk2_2 = "क्लासिक दो-रंगी",
		tint_mk2_3 = "क्लासिक सफेद",
		tint_mk2_4 = "क्लासिक बेज",
		tint_mk2_5 = "क्लासिक हरा",
		tint_mk2_6 = "क्लासिक नीला",
		tint_mk2_7 = "क्लासिक धरती",
		tint_mk2_8 = "भूरा और काला क्लासिक ब्राउन",
		tint_mk2_9 = "लाल विरोध",
		tint_mk2_10 = "नीला विरोध",
		tint_mk2_11 = "पीला विरोध",
		tint_mk2_12 = "कमला विरोध",
		tint_mk2_13 = "बोल्ड पिंक",
		tint_mk2_14 = "बोल्ड पर्पल और पीला",
		tint_mk2_15 = "बोल्ड ऑरेंज",
		tint_mk2_16 = "बोल्ड हरा और पर्पल",
		tint_mk2_17 = "बोल्ड लाल विशेषताएँ",
		tint_mk2_18 = "बोल्ड हरे विशेषताएं",
		tint_mk2_19 = "बोल्ड सियन विशेषताएं",
		tint_mk2_20 = "बोल्ड पीले विशेषताएं",
		tint_mk2_21 = "बोल्ड लाल और सफेद",
		tint_mk2_22 = "बोल्ड नीला और सफेद",
		tint_mk2_23 = "मेटालिक सोना",
		tint_mk2_24 = "मेटालिक प्लैटिनम",
		tint_mk2_25 = "मेटेलिक ग्रे और लिलाक",
		tint_mk2_26 = "मेटेलिक पर्पल और लाइम",
		tint_mk2_27 = "मेटेलिक लाल",
		tint_mk2_28 = "मेटेलिक हरा",
		tint_mk2_29 = "मेटेलिक ब्लू",
		tint_mk2_30 = "मेटेलिक सफेद और एक्वा",
		tint_mk2_31 = "मेटेलिक रेड और पीला",

		tint_ray_0 = "स्पेस रेंजर",
		tint_ray_1 = "बैंगनी",
		tint_ray_2 = "हरा",
		tint_ray_3 = "नारंगी",
		tint_ray_4 = "गुलाबी",
		tint_ray_5 = "सोना",
		tint_ray_6 = "प्लेटिनम",

		last_concat = "और",

		attachments_logs_title = "अटैचमेंट और टिंट",
		attachments_logs_details = "${consoleName} ने अपने `${weaponName}` को संशोधित किया: ${modifications}।",

		removed_attachments = "${removed} हटा दिया गया",
		added_attachments = "${added} जोड़ा गया",
		tint_changed = "टिंट `${fromTint}` से `${toTint}` में बदल गया"
	},

	audio = {
		audio_id = "${audioId} की आवाज़",
		illegal_sound_effect = "दूसरे क्लाइंट्स को बाहरी ऑडियो चलाने की कोशिश की गई।",
		url_invalid = "प्रदान की गई यूआरएल वैध नहीं है। इसे सुरक्षित कनेक्शन पर अपलोड किया जाना चाहिए। (https://)",
		url_missing = "कृपया वह यूआरएल जो ऑडियो चलाने की कोशिश की जा रही है उसे जोड़ें।",
		play_audio_no_permissions = "खिलाड़ी ऑडियो चलाने की कोशिश की लेकिन उनके पास उसे चलाने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		played_audio_for_self = "खुद के लिए ऑडियो चलाया।",
		played_audio_for_player = "${consoleName} के लिए ऑडियो चलाया।",
		played_audio_for_everyone = "सभी के लिए ऑडियो चलाया गया।",
		played_audio_effect_for_everyone_title = "सभी के लिए ऑडियो इफ़ेक्ट चलाया गया।",
		played_audio_effect_for_everyone_details = "${consoleName} ने सभी के लिए ऑडियो इफ़ेक्ट चलाया। इस ऑडियो इफ़ेक्ट का URL `${url}` था और यह `${volume}` स्तर पर ऑडियो चलाने के लिए सेट किया गया था।",
		played_audio_effect_for_player_title = "खिलाड़ी के लिए ऑडियो इफ़ेक्ट चलाया गया।",
		played_audio_effect_for_player_details = "${consoleName} ने ${targetConsoleName} के लिए ऑडियो इफ़ेक्ट चलाया। इस ऑडियो इफ़ेक्ट का URL `${url}` था और यह `${volume}` स्तर पर ऑडियो चलाने के लिए सेट किया गया था।"
	},

	balls = {
		press_to_pick_up_ball = "गेंद उठाने के लिए ~INPUT_CONTEXT~ दबाएँ।"
	},

	banana_peels = {
		slipped_logs_title = "केले के छिलके पर फिसल गया",
		slipped_logs_details = "${consoleName} ${slipForce} के दौरान केले के छिलके पर फिसल गया।",

		slip_0 = "चलते हुए",
		slip_1 = "दौड़ते हुए",
		slip_2 = "तेज दौड़ते हुए"
	},

	bandaids = {
		label = "${type} बैंडएड",

		baby_yoda = "बेबी-योदा",
		batman = "बैटमैन",
		care_bear = "केयर-बेयर्स",
		hello_kitty = "हैलो-किट्टी",
		hotwheels = "हॉट-व्हील्स",
		mc_queen = "लाइटनिंग-मैक-क्वीन",
		minions = "मिनियन्स",
		pony = "माय-लिटल-पोनी",
		power_puff = "पावर-पफ",
		spiderman = "स्पाइडरमैन",
		star_wars = "स्टार-वॉर्स",

		failed_random_bandaid = "एक यादृच्छिक बैंडेज प्राप्त करने में विफल रहा।",

		received_bandaid_logs_title = "बैंडएड प्राप्त किया",
		received_bandaid_logs_details = "${consoleName} एयरलिफ्टिंग के बाद 1x ${bandaid} प्राप्त किया।",
		spawned_bandaid_logs_details = "${consoleName} ने ${bandaid} मिलाया।"
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "बैटल रॉयल टॉगल करने में विफल।",
		toggled_battle_royale_on = "बैटल रॉयल टॉगल किया।",
		toggled_battle_royale_off = "बैटल रॉयल टॉगल बंद किया।",
		battle_royale_info = "आप बैटल रॉयल के लिए कतार में हैं!\nवर्तमान में कतार में ${battleRoyaleQueueLength} खिलाड़ी हैं।",
		toggle_battle_royale_missing_permissions = "खिलाड़ी ने बैटल रॉयल टॉगल करने का प्रयास किया लेकिन उन्हें इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		start_battle_royale_missing_permissions = "खिलाड़ी ने युद्ध रॉयल शुरू करने का प्रयास किया लेकिन उसमें शुरू करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		unable_to_start_battle_royale_not_active = "युद्ध रॉयल चालू नहीं है, इसलिए युद्ध रॉयल शुरू करने में असमर्थ हैं।",
		not_enough_players_in_queue = "पंजीकृत खिलाड़ियों की कमी के कारण युद्ध रॉयल शुरू नहीं किया जा सकता है।",
		zone_idling = "अब क्षेत्र आराम मोड़ पर है।",
		zone_advancing = "अब क्षेत्र प्रगति कर रहा है।",
		player_died = "${name} मर गया है: ${remainingPlayers} शेष हैं।",
		player_killed = "${name} को ${killerName} द्वारा मार डाला गया, कारण: ${deathCause}, दूरी: ${distance} मीटर, शेष ${remainingPlayers} खिलाड़ी।",
		player_won = "${name} जीत गया है!",
		your_team = "आपकी टीम:",
		received_lobby_invite = "आपको ${serverId} से एक लॉबी निमंत्रण प्राप्त हुआ है। शामिल होने के लिए `/br_join ${serverId}` का उपयोग करें!",
		unable_to_invite_yourself = "आप खुद को निमंत्रित करने में असमर्थ हैं।",
		unable_to_join_yourself = "आप खुद से शामिल होने में असमर्थ हैं।",
		player_already_invited = "ID `${serverId}` वाला खिलाड़ी पहले से ही निमंत्रित हो चुका है।",
		sent_player_invite = "${serverId} के प्लेयर को निमंत्रण भेजा गया।",
		joined_lobby = "आप लॉबी में शामिल हो गए हैं।",
		player_not_invited = "आपको इस लॉबी में निमंत्रित नहीं किया गया है।",
		you_are_not_in_a_lobby = "आप एक लॉबी में नहीं हैं।",
		left_lobby = "आपने लॉबी छोड़ दी है।",
		created_match = " ${playerAmount} प्लेयरों के साथ मैच बनाया गया।",
		created_match_no_vehicles = "बिना वाहनों के ${playerAmount} प्लेयरों के साथ मैच बनाया गया।",
		zone_complete = "सोने का क्षेत्र पूर्ण हुआ है।",
		battle_royale_match_info = "वर्तमान क्षेत्र: ${zoneId}/${zoneAmount}\nशेष समय: ${remainingTime} सेकंड\nवर्तमान में: ${currentlyLabel}\nशेष प्लेयर: ${remainingPlayers}\nकिल्स: ${kills}",
		idling = "आराम में",
		advancing = "आगे बढ़ रहे हैं",
		battle_royale = "युद्ध राज",
		press_to_deploy_parachute = "तंगों को शामिल करने के लिए ~INPUT_PARACHUTE_DEPLOY~ दबाएँ।",
		join_battle_royale_instance_missing_permissions = "खिलाड़ी युद्ध राज उदाहरण में शामिल होने का प्रयास किया लेकिन उसे इसे करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		no_match_found = "${consoleName} किसी भी मुकाबले में नहीं है।",
		joined_instance = "${consoleName} का उदाहरण जुड़ गया।",
		leave_battle_royale_instance_missing_permissions = "खिलाड़ी युद्ध राज उदाहरण से निकलने का प्रयास किया लेकिन इसे करने के लिए उसे आवश्यक अनुमतियां नहीं थीं।",
		left_instance = "इंस्टेंस से बाहर निकल गए।",
		failed_to_leave_instance = "आप जहां नहीं थे, इंस्टेंस से बाहर निकलने में असफल रहे।",
		already_in_match = "आप पहले से ही मैच में हैं, इंस्टेंस में शामिल नहीं हो सकते।",
		lobby_is_full = "जो लॉबी आप जुड़ने का प्रयास कर रहे हैं, वह भरा हुआ है।",
		zone_center = "क्षेत्र केंद्र",
		team_marker = "टीम मार्कर",
		trophy_information_top = "${name} सबसे अच्छा है!",
		trophy_information_bottom = "मैच में कुल ${playerAmount} खिलाड़ियों में से आपने ${kills} को मार डाला।",
		not_able_to_join_while_in_match = "आप मैच में होते हुए एक लॉबी में शामिल नहीं हो सकते।"
	},

	bazaar = {
		access_bazaar = "इस दुकान तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं।",

		bazaar_blip = "बाज़ार",

		no_items = "आपके पास यहाँ ख़रीदने के लिए कुछ नहीं है।",
		price_about = "लगभग $${price}",

		sold_logs_title = "बाज़ार की बिक्री",
		sold_logs_details = "${consoleName} ने $${price} के लिए ${amount}x `${itemName}` बेचा।",

		sold_items = "आपने $${money} के लिए ${amount}x ${label} बेच दिया।",
		failed_sell_items = "आइटम बेचने में विफल रहा।",

		junk_collector = "रद्दी का कलेक्टर",
		tool_collector = "उपकरण का कलेक्टर",
		waste_collector = "कचरे का कलेक्टर",
		ammo_collector = "गोले का कलेक्टर",

		close_menu = "मेनू बंद करें"
	},

	beds = {
		no_nearby_available_bed_found = "कोई नज़दीकी उपलब्ध बिस्तर नहीं मिला।",
		press_to_leave_bed = "बिस्तर छोड़ने के लिए ~INPUT_CONTEXT~ दबाएं।"
	},

	blackjack = {
		play_blackjack = "Blackjack खेलने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		play_blackjack_high_limit = "High-Limit Blackjack खेलने के लिए ~INPUT_CONTEXT~ दबाएँ।"
	},

	blindfold = {
		blindfolding_player = "खिलाड़ी के सिर पर पेपर बैग लगाना",
		blindfolding_self = "पेपर बैग लगाना",
		hold_to_take_blindfold_off = "पेपर बैग हटाने के लिए ~INPUT_VEH_HEADLIGHT~ दबाएं।",
		hold_to_take_blindfold_off_holding = "पेपर बैग हटाने के लिए जारी रखने के लिए दबाएं ~INPUT_VEH_HEADLIGHT~।"
	},

	blips = {
		comedy_club = "कॉमेडी क्लब",
		bean_machine = "बीन मशीन",
		arcade_bar = "एर्केड बार",
		japanese_restaurant = "जापानी रेस्तरां",
		luxury_autos = "लक्जरी ऑटोमोबाइल",
		rockford_records = "रॉकफोर्ड रिकॉर्ड्स",
		dispensary = "दवा वितरण केंद्र",
		haunted_high_school = "भूतों से भरा उच्च विद्यालय",
		sushi_restaurant = "सूशी रेस्तरां",

		bank = "बैंक",
		hospital = "अस्पताल",
		bolingbroke = "बोलिंगब्रोक पेनिटेंटियरी",
		police_department = "पुलिस विभाग",
		motel = "मोटेल",
		tattoo_parlor = "टैटू पार्लर",
		repair_shop = "रिपेयर शॉप",
		material_vendor = "सामग्री विक्रेता",
		pdm = "प्रीमियम डेलक्स मोटरस्पोर्ट",
		ls_customs = "लॉस संतोष कस्टम",
		jewelry_store = "वेंगेलीको ज्वेलरी",
		pd_air_hq = "पुलिस एयर हेडक्वार्टर्स",
		pd_sea_hq = "पुलिस सी हेडक्वार्टर्स",
		ems_air_hq = "ईएमएस एयर हेडक्वार्टर्स",
		ems_boat_hq = "ईएमएस बोट हेडक्वार्टर्स",
		ems_garage = "ईएमएस गैराज"
	},

	blockage = {
		restricted_area = "यह एक प्रतिबंधित क्षेत्र है। कृपया वापस लौटें!"
	},

	bombs = {
		not_in_plane = "आप विमान में नहीं हैं।",
		not_in_plane_anymore = "आप अब एक विमान में नहीं हैं।",
		interaction_menu = "~ INPUT_CONTEXT ~ ${name} बम छोड़ें, ~INPUT_VEH_HEADLIGHT~ प्रकार बदलें।",
		too_low = "आप बम गिराने के लिए बहुत कम हो गए हैं।",

		you_are_not_in_a_vehicle = "आप वर्तमान में कोई गाड़ी नहीं चला रहे हैं।",
		ignition_bomb_on = "इग्निशन बम टॉगल किया गया।",
		ignition_bomb_off = "इग्निशन बम टॉगल ऑफ किया गया।",
		failed_ignition_bomb = "इग्निशन बम टॉगल करने में विफल रहा।",

		recharging_countermeasures = "काउंटरमिशियों को रिचार्जिंग किया जा रहा है ${प्रतिशत}%।",

		ignition_bomb_triggered_logs_title = "इग्निशन बम",
		ignition_bomb_triggered_logs_details = "${कंसोल नाम} ने एक गाड़ी में इग्निशन बम लगाकर इसकी इंजन चालू की थी।",

		toggle_ignition_bomb_missing_permissions = "खिलौने को टॉगल करने की कोशिश करने वाला खिलाड़ी ने अनुमतियों की आवश्यकता नहीं रखी थी।"
	},

	boomboxes = {
		boombox = "बूमबॉक्स",
		play = "प्ले करें",
		pause = "रुकें",
		skip_song = "गाने को छोड़ें",
		volume = "वॉल्यूम",
		music = "संगीत",

		store_boombox = "बूमबॉक्स को अपने वितरण में स्टोर करें",
		put_boombox_down = "बूमबॉक्स को भूमि पर रखें",
		use_boombox = "बूमबॉक्स का उपयोग करें",
		hold_to_pick_boombox_up = "बूमबॉक्स को उठाने के लिए पकड़ें",
		illegal_boombox_item_id = "गैर कानूनी आइटम आईडी के साथ बूमबॉक्स आइटम का उपयोग करने की कोशिश की जा रही है।",
		logs_attempted_to_add_song_title = "गीत जोड़ने का प्रयास किया गया",
		logs_attempted_to_add_song_details = "${consoleName} ने बूमबॉक्स ID `${boomboxId}` के लिए वीडियो URL `${url}` जोड़ने का प्रयास किया।",
		wipe_boomboxes_not_staff = "खिलाड़ी ने बूमबॉक्स साफ करने का प्रयास किया, लेकिन उसमें सही अनुमति नहीं थी।",
		logs_wiped_all_boomboxes_title = "सभी बूमबॉक्स साफ किए गए",
		logs_wiped_all_boomboxes_details = "${consoleName} ने सभी बूमबॉक्स साफ किए।",
		logs_wiped_nearby_boomboxes_title = "निकटवर्ती बूमबॉक्स साफ किए गए",
		logs_wiped_nearby_boomboxes_details = "${consoleName} ने `${radius}` ताक आने वाले सभी बूमबॉक्स साफ किए।",
		radius_invalid = "`${radius}` तक का एक त्रिज्या मान वैध नहीं है।",
		wiped_all_boomboxes = "${boomboxesWiped} बूमबॉक्स साफ हो गए।",
		wiped_nearby_boomboxes = "`${radius}` त्रिज्या के भीतर ${boomboxesWiped} बूमबॉक्स साफ हो गए।",
		failed_to_wipe_boomboxes = "बूमबॉक्स साफ करने में विफल रहा।",
		no_boomboxes = "बूमबॉक्स साफ करने का कोई मौजूदा नहीं था।",
		no_boomboxes_within_radius = "`${radius}` त्रिज्या के भीतर बूमबॉक्स साफ करने का कोई मौजूदा नहीं था।"
	},

	boosting = {
		boosting_contracts = "कराये गए संविदाओं का विस्तार",
		join_queue = "कतार में शामिल हों",
		leave_queue = "कतार छोड़ें",

		transfer_crypt = "क्रिप्ट हस्तांतरण",
		transfer_crypt_info = "उस खिलाड़ी के राशि और सर्वर आईडी दर्ज करें, जिसे आप हस्तांतरित करना चाहते हैं।",

		amount = "राशि",
		server_id = "सर्वर आईडी",

		transfer = "हस्तांतरण",
		cancel = "रद्द करें",

		start_contract = "अनुबंध शुरू करें",
		start_contract_info = "क्या आप इस अनुबंध को शुरू करना चाहते हैं?",

		yes = "हाँ",
		no = "नहीं",

		transfer_contract = "अनुबंध हस्तांतरण",
		transfer_contract_info = "उस व्यक्ति के सर्वर आईडी दर्ज करें, जिसे आप अनुबंध हस्तांतरित करना चाहते हैं।",

		decline_contract = "अनुबंध अस्वीकार करें",
		decline_contract_info = "क्या आप इस ठेके को निकालना चाहते हैं?",

		cancel_contract = "ठेके को रद्द करें",
		cancel_contract_info = "क्या आप इस ठेके को रद्द करना चाहते हैं?",

		no_contracts = "आपके पास कोई ठेके उपलब्ध नहीं हैं। कुछ पाने के लिए कतार में जुड़ें।",

		model = "मॉडल",
		plate = "प्लेट",
		buy_in = "खरीद मूल्य",
		expires_in = "कार्यकाल समाप्त होता है",

		start_contract_type = "आप क्या करना चाहते हैं?",
		start_contract_type_info = "क्या आप ड्रॉप-ऑफ या वीआईएन स्क्रैच करना चाहते हैं? वीआईएन स्क्रैच अतिरिक्त ${cost} CRYPT का मूल्य होता है।",

		drop_off = "ड्रॉप-ऑफ",
		vin_scratch = "VIN स्क्रैच",

		start_contract = "अनुबंध शुरू करें",
		transfer_contract = "अनुबंध हस्तांतरण",
		decline_contract = "अनुबंध अस्वीकार करें",
		mark_pickup = "मार्क पिकअप",
		cancel_contract = "ठेके को रद्द करें",

		new_contract = "आपके पास एक नया boosting contract है। (Class: ${className})",
		started_contract = "contract शुरू हो गया।",
		failed_contract = "contract असफल हो गया।",
		completed_contract = "contract पूरा हुआ। आपको ${payout} CRYPT मिला।",
		completed_contract_vin_scratch = "contract पूरा हो गया। वाहन आपकी गेराज में मिल सकता है।",
		marked_pickup = "चिह्नित पिकअप।",

		vehicle_tracker_is_being_hacked = "वाहन ट्रैकर हैक किया जा रहा है। ${hacksRemaining} हैक शेष हैं।",
		use_chip_to_hack_vehicle_tracker = "वाहन ट्रैकर को हैक करने के लिए चिप का उपयोग करें। ${hacksRemaining} हैक शेष हैं।",
		vehicle_hacking_is_timed_out = "आपको हैक करने से पहले थोड़ा इंतजार करना होगा। ${hacksRemaining} हैक शेष हैं।",
		drop_the_vehicle_off = "चिह्नित स्थान पर वाहन ड्रॉप करें।",
		drop_off = "ड्रॉप-ऑफ",
		exit_the_vehicle = "मिशन समाप्त करने के लिए वाहन से बाहर निकलें और क्षेत्र छोड़ें।",

		vehicle_is_being_tampered = "${locationLabel} के पास एक वाहन को छेड़ा जा रहा है। मॉडल ${modelLabel} है (वर्ग ${className}) और प्लेट ${plate} है।",
		vehicle_tamper = "वाहन छेड़ाई (${प्लेट})",
		vehicle_tracker_alert = "वाहन ट्रैकर अलर्ट (${plate})",

		exit_the_vehicle_to_scratch = "विन स्क्रैच करने के लिए वाहन से बाहर निकलें।",

		scratch = "विन स्क्रैच।",
		press_to_scratch = "विन स्क्रैच के लिए ~g~E ~w~दबाएँ।",

		scratching_vehicle = "वाहन को स्क्रैच कर रहा है",

		deleted_boosted_vehicle_logs_title = "बूस्टेड वाहन को हटा दिया गया",
		deleted_boosted_vehicle_logs_details = "${consoleName} ने आईडी ${vehicleId} वाली Boosted गाड़ी को हटा दिया।",

		spawned_contract = "कंट्रैक्ट सफलतापूर्वक स्पॉन किया गया।",
		spawned_contract_for = "${displayName} के लिए कंट्रैक्ट सफलतापूर्वक स्पॉन किया गया।",

		spawn_contract_no_permissions = "खिलाड़ी अनुमतियों के बिना Boosting कंट्रैक्ट को स्पांव करने का प्रयास किया।",

		already_max_vin_scratched_vehicles = "आपके गैरेज में पहले से ही अधिकतम संख्या में VIN गाड़ियों की है।",
		contract_has_expired = "यह कंट्रैक्ट समाप्त हो गया है।",
		you_already_have_a_contract_started = "आप पहले से ही एक ठेके की शुरुआत कर चुके हैं।"
	},

	brochure = {
		welcome_to = "स्वागत है",
		san_andreas = "सैन एंड्रियास",

		getting_started = "शुरुआत करना",
		getting_started_1 = "आप अभी हाल ही में हवाई अड्डे पर पहुँचे हैं और शायद अपने आप से पूछ रहे हैं कि अब कहाँ जाएं? सभी नए नागरिकों को एक फ्री स्टार्टर कार दी जाती है। यह शायद सबसे अच्छा नहीं हो, लेकिन यह आपका है। आप इसे पार्किंग में पा सकते हैं।",
		getting_started_2 = "अगर आपको ड्राइव करना पसंद नहीं है तो आप पैदल भी जा सकते हैं, दोस्तों से गाड़ी में जा सकते हैं या अपने फोन का उपयोग करके टैक्सी को कॉल कर सकते हैं। आप अपने फोन तक पहुंच सकते हैं ‘P’ बटन दबाकर।",
		getting_started_3 = "ज्यादातर वाहनों में ट्रंक होते हैं, जिसमें आप वस्तुएं ही नहीं बल्कि लोगों को भी रख सकते हैं। आप किसी को /carry कर सकते हैं, फिर ट्रंक के पास जा सकते हैं, उसे खोल सकते हैं (/door) और उसे ट्रंक में रख सकते हैं। इसी तरह आप उन्हें फिर से बाहर निकाल सकते हैं। यदि आपकी गाड़ी पलट गई है तो आप इसे फिर से उसके पैरों पर /flip कर सकते हैं।",

		where_now = "अभी कहां हैं?",
		where_now_1 = "अब जब आपने अपनी पहली गाड़ी प्राप्त कर ली है, तो आप शहर का अन्वेषण शुरू कर सकते हैं। क्योंकि आपको पोषण से संतुष्ट रहने की आवश्यकता है, एक ग्रोसरी स्टोर एक अच्छी जगह है। वहां आप खाद्य और पेय खरीद सकते हैं। साथ ही बैंडेज भी, जो आपको घायली से ठीक करने में मदद करेंगे।",
		where_now_2 = "जब तक आप सप्लाइज़ के लिए स्टॉक अप नहीं कर लेते, आपको कोर्टहाउस जाकर नागरिक कार्ड लेना चाहिए। यह आपकी पहचान, ड्राइविंग लाइसेंस और हथियार लाईसेंस के रूप में काम करेगा।",

		getting_a_job = "नौकरी का चयन करना",
		getting_a_job_1 = "पैसे कैसे कमाते हैं? आप नौकरी खोज करके शुरू कर सकते हैं। जॉब लिस्टिंग आप Life Invader पर देख सकते हैं। आप मैप पर इसके लाल ब्रीफकेस आइकन को देख सकते हैं। यहाँ आप उन नौकरियों का चयन कर सकते हैं जिनके लिए आप आवेदन कर सकते हैं।",
		getting_a_job_2 = "ट्रक ड्राइवर नौकरी आपको विभिन्न स्थानों पर माल वितरित करने के लिए कहती है। आपको पहले 2000 डॉलर के नकदी ट्रक की खरीदी करनी होगी ट्रक हेडक्वार्टर से।",
		getting_a_job_3 = "डिलीवरी नौकरी में दाखिल होते समय, आप डिलीवरी हेडक्वार्टर में भरे गए पैकेजों से भरी डिलीवरी उठा सकते हैं। फिर आपको शहर के विभिन्न स्थानों पर पैकेज डिलीवर करने की आवश्यकता होगी। /दरवाजा के द्वारा डिलीवरी वैन के पीछे की ओर जाकर आप उसे खोल सकते हैं।",
		getting_a_job_4 = "आप एक कचरा संग्रहकर्ता भी बन सकते हैं। कचरा संग्रहकर्ता हेडक्वार्टर पर आप एक कचरा ट्रक ले सकते हैं और कूड़ा एकत्रित करना शुरू कर सकते हैं।",
		getting_a_job_5 = "एक नौकरी जैसे ही आप दाखिल होते हैं, तो आपको अपने मानचित्र पर कई प्रकार के मार्कर दिखाई देंगे। एक waypoint आपको उस स्थान की ओर ले जाता है जहां आप शुरूआत करने के लिए जाने की आवश्यकता होती है।",

		your_appearance = "आपका रूप",
		your_appearance_1 = "पैंट, जूते, कमीज और अन्य कपड़ों जैसे वस्त्र किसी भी क्लोथिंग स्टोर पर मुफ्त में बदल सकते हैं। बार्बर शॉप पर अपनी बाल की शैली, चेहरे की दाढ़ी और मेकअप बदल सकते हैं। आप मैप पर दोनों क्लोथिंग स्टोर और बार्बर शॉप ढूंढ सकते हैं।",
		your_appearance_2 = "एक बार आप पहली बार उड़ान भरने के लिए उड़ान भरते हो तो आप अपने स्किन रंग, चेहरे की विशेषताओं आदि जैसी सामान्य दिखावट बदल नहीं सकते। अगर आपने अपनी दिखावट या अपना काम पूरी तरह से बिगाड़ दिया है तो आप / रिपोर्ट कर सकते हैं और रेस्किन के लिए अनुरोध कर सकते हैं।",

		medical_care = "चिकित्सा सेवाएँ",
		medical_care_1 = "यदि आप घायल हो जाते हैं तो आप अस्पताल जा कर देखभाल और इलाज करवा सकते हैं। आप मानचित्र पर अस्पताल ढूंढ सकते हैं। आप बैंडेज या प्राथमिक चिकित्सा किट का उपयोग करके अपने आप को ठीक कर सकते हैं।",
		medical_care_2 = "यदि आप बिना अस्पताल जाए रीस्पॉन करते हैं या अपने ध्यान में नहीं होकर गेम से बाहर निकल जाते हैं, तो आप अपने कुछ आइटम खो सकते हैं। सर्वर रीस्टार्ट को गेम से बाहर निकलना माना जाता है।",

		safety_hint = "इशारा: आप एलटी और मिडिल माउस बटन दबाकर अपने हथियार को सुरक्षित से खोल सकते हैं। सुरक्षित रहें!",

		closing_sentence = "शहर में और कुछ करने के लिए बहुत कुछ है! आसपास पूछें और कुछ दोस्त बनाएं ;)"
	},

	cache = {
		download_progress = "डाउनलोड प्रगति: \n- वाहन: ${vehiclesDone}/${vehiclesTotal} \n- वस्तुएं: ${objectsDone}/${objectsTotal} \n- पेड़: ${pedsDone}/${pedsTotal} \n- कपड़े: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "धीमी डाउनलोड सक्रिय कर दिया गया है।",
		slow_download_disabled = "धीमी डाउनलोड निष्क्रिय कर दिया गया है।"
	},

	capri_sun = {
		capri_sun_name = "कैप्री सन (${flavor})"
	},

	cargo = {
		start_cargo_no_permissions = "खिलाड़ी ने कार्गो को चुराई शुरू करने का प्रयास किया लेकिन उन्हें इसे करने की अनुमति नहीं थी।",
		end_cargo_no_permissions = "खिलाड़ी ने कार्गो को खत्म करने का प्रयास किया लेकिन उन्हें इसे करने की अनुमति नहीं थी।",
		cargo_already_active = "कार्गो पहले से ही सक्रिय है।",
		started_cargo = "कार्गो शुरू हो गया है।",
		cargo_not_active = "कार्गो सक्रिय नहीं है।",
		ended_cargo = "कार्गो समाप्त हो गया है।",
		cargo_crate = "कार्गो गाड़ी",
		use_chip_to_hack_crate = "कृपया कार्गो गाड़ी को हैक करने के लिए ~g~चिप~w~ का प्रयोग करें।",
		crate_is_being_hacked = "कार्गो गाड़ी हैक किया जा रहा है।",
		crate_will_unlock_in = "कार्गो गाड़ी ~g~${time}~w~ में खुल जाएगी।",
		press_k_to_access = "उपयोग करने के लिए ~g~K~w~ दबाएं।"
	},

	casino = {
		set_casino_screen_id_not_staff = "खिलाड़ी सीट की फिल्म स्क्रीन आईडी सेट करने का प्रयास किया, लेकिन सही अनुमति नहीं होने से नाकामयाब रहा।",
		successfully_set_screen_label = "सफलतापूर्वक `${screenLabel}` लेबल वाली स्क्रीन को सेट किया गया है।",
		successfully_queued_screen_label = "सफलतापूर्वक लेबल `${screenLabel}` वाले स्क्रीन को कतार में लगा दिया गया।",
		failed_to_set_screen_label = "लेबल `${screenLabel}` वाले स्क्रीन को सेट करने में विफल रहा।",
		invalid_screen_label = "स्क्रीन लेबल `${screenLabel}` अवैध है।",
		missing_screen_label = "`screen label` पैरामीटर गुम है।",
		set_screen_label_already_set_to = "स्क्रीन लेबल पहले से ही `${screenLabel}` पर सेट है।",
		only_available_in_the_casino = "आप इसे केवल कैसीनो के अंदर ही कर सकते हैं।",
		casino_blip = "कैसीनो"
	},

	cayo_perico = {
		approaching_out_of_bounds = "आप मानचित्र सीमाओं के करीब आ रहे हैं",
		out_of_bounds = "आप सीमाओं से बाहर हैं"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "सीयो पेरिको पहुंचने के लिए ${distanceToTeleport}मीटर बचे हैं। ${direction} में आगे बढ़ें।",
		keep_heading_in_direction_out = "लॉस संतोस पहुंचने के लिए ${distanceToTeleport}मीटर बचे हैं। ${direction} में आगे बढ़ें।",

		south = "दक्षिण",
		south_east = "दक्षिण-पूर्व",
		east = "पूर्व",
		north_east = "उत्तर-पूर्व",
		north = "उत्तर",
		north_west = "उत्तर-पश्चिम",
		west = "पश्चिम",

		not_the_driver = "आपको कायो पेरिको उड़ाने के लिए वाहन के ड्राइवर होना चाहिए।",
		not_a_cayo_vehicle = "आपको कायो पेरिको तक पहुंचने के लिए नाव, हवाई जहाज या हेलीकॉप्टर में होना चाहिए।",
		entering_cayo_perico_logs_title = "कायो पेरिको में प्रवेश कर रहा है",
		entering_cayo_perico_logs_details = "${consoleName} कायो पेरिको में प्रवेश कर रहा है।",
		exiting_cayo_perico_logs_title = "कायो पेरिको से बाहर निकल रहा है",
		exiting_cayo_perico_logs_details = "${consoleName} कायो पेरिको से बाहर निकल रहा है।",
		entering_cayo_perico_with_passengers_logs_title = "यात्रियों के साथ कायो पेरिको में प्रवेश कर रहा है",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} के साथ ${passengersAmount} सवार यात्री कयो पेरिको में प्रवेश कर रहा है।",
		exiting_cayo_perico_with_passengers_logs_title = "यात्रियों के साथ कयो पेरिको से निकल रहा है",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} ${passengersAmount} सवार यात्रियों के साथ कयो पेरिको से निकल रहा है।"
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "श्रृंखला गणित द्वारा हैच मिला",
		claimed_money = "${consoleName} $${amount} का दावा कर रहा है।",
		claimed_item = "${consoleName} ने `${itemLabel}` का दावा किया।",
		claimed_vehicle = "${consoleName} ने एक क्रिसमस-विशेष वाहन का दावा किया।",
		claimed_queue_priority = "${consoleName} ने क्रिसमस कतार की प्राथमिकता के एक सप्ताह का दावा किया।",

		claimed_advent_calendar_bonus_title = "अडवेंट कैलेंडर बोनस का दावा किया",
		claimed_advent_calendar_bonus_details = "${consoleName} ने अडवेंट कैलेंडर बोनस का दावा किया, जो कि मॉडल नाम `${modelName}` वाली एक वाहन है।"
	},

	cinema = {
		failed_to_find_cinema_identifier = "सिनेमा पहचानकर्ता नहीं मिला।",

		screen_model_size = "आकार: x: ${sizeX}, y: ${sizeY}",
		screen_model_offset = "ऑफसेट: x: ${offsetX}, y: ${offsetY}, z: ${offsetZ}",
		screen_model_rotation = "रोटेशन: ${rotation}",
		screen_model_volume = "वॉल्यूम: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "मॉडल: ${modelName}",

		locked = "लॉक किया गया",

		add_video_to_queue_title = "कतार में वीडियो जोड़ें",
		add_video_to_queue_details = "${consoleName} `${videoType}:${videoId}` के वीडियो कुंजी के साथ एक सिनेमा में कतार में एक वीडियो जोड़ा।",

		blacklisted_video = "काल सूचीबद्ध वीडियो कुंजी `${videoKey}` संग देखा गया।",
		failed_to_blacklist_video = "काल सूची में वीडियो कुंजी `${videoKey}` को संग देखा गया। असफल।",
		video_is_already_blacklisted = "वीडियो कुंजी `${videoKey}` पहले से ही ब्लैकलिस्ट हो गई है।",

		blacklist_video_missing_permissions = "खिलाड़ी ने एक वीडियो को ब्लैकलिस्ट करने का प्रयास किया लेकिन उनके पास आवश्यक अनुमतियां नहीं थीं।",

		watching_movie = "${title} देख रहे हैं",

		cinema = "सिनेमा",
		doppler_cinema = "डोपलर सिनेमा",
		sandy_cinema = "सैंडी सिनेमा",
		tv = "टीवी",
		monitor = "मॉनिटर",
		laptop = "लैपटॉप",
		projector = "प्रोजेक्टर",

		zoom = "कैमरा को आगे और पीछे ले जाना",
		slow = "धीमा",
		toggle_lights = "टॉगल लाइट्स",
		exit = "बाहर निकलें",

		-- NOTE: UI locales
		title = "शीर्षक",
		length = "लंबाई",
		date = "तारीख",
		author = "लेखक",
		queue = "कतार",
		search_through_library = "लाइब्रेरी में खोजें...",
		add_to_library = "वीडियो लाइब्रेरी में जोड़ें (URL)..."
	},

	cinematic = {
		cinematic = "सिनेमैटिक",
		black_bars_set_to = "फिल्मी ब्लैक बार अब ${blackBarsHeight}% पर सेट किया गया है।"
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] हथियार किया जाएगा",
		disarm_claymore = "[${InteractionKey}] असामान्य किया जाएगा",

		disarming = "असामान्य करने की क्रिया जारी है",
		arming = "हथियार करने की क्रिया जारी है"
	},

	clothing = {
		outfit_failed = "बाउंड कपड़ों को लागू करने में विफल रहा।",
		missing_outfit = "कपड़े गायब हैं।",
		missing_outfit_name = "पहनावे का नाम गुम हुआ है।",
		no_nearby_clothing_spot = "पास में कपड़े धोने का स्थान नहीं है।",
		trunk_closed = "ट्रंक बंद है।",
		trunk_too_far = "आप ट्रंक से बहुत दूर हैं।",
		moved_too_far_trunk = "आपने ट्रंक से बहुत दूर जाने से असफल हो गए।",
		invalid_job = "आपके पास इस पहनावे स्पॉट का उपयोग करने के लिए आवश्यक नौकरी नहीं है।",
		outfit_list = "पहनावे",
		no_saved_outfits = "आपके पास कोई सहेजे गए पहनावे नहीं हैं।",
		saved_outfit = "पहनावे `${name}` को सफलतापूर्वक सहेजा गया।",
		replaced_outfit = "पहनावे `${name}` को सफलतापूर्वक बदल दिया गया।",
		failed_save_outfit_exists = "सहेजने में विफल, आउटफिट `${name}` पहले से मौजूद है।",
		failed_save_outfit = "आउटफिट सहेजने में विफल हुआ।",
		deleted_outfit = "आउटफिट `${name}` को सफलतापूर्वक हटा दिया गया।",
		failed_delete_outfit_doesnt_exists = "हटाने में विफल हुआ, आउटफिट `${name}` मौजूद नहीं है।",
		failed_delete_outfit = "आउटफिट हटाने में विफल हुआ।",

		invalid_server_id = "अमान्य या अनुपलब्ध सर्वर आईडी।",
		player_model_missmatch = "आप इस खिलाड़ी के साथ अपनी आउटफिट साझा नहीं कर सकते।",
		player_too_far = "खिलाड़ी बहुत दूर है।",
		shared_outfit_too_far = "${displayName} ने आपके साथ एक आउटफिट साझा किया है लेकिन आप कपड़ों के निकट नहीं हैं।",
		outfit_shared = "पोशाक सफलतापूर्वक साझा किया गया।",
		outfit_not_shared = "पोशाक साझा करने में विफल रहा।",
		shared_outfit = "${displayName} ने आपके साथ एक पोशाक साझा किया है। स्वीकार करने के लिए `हाँ` टाइप करें या अस्वीकार करने के लिए `नहीं` टाइप करें। (30 सेकंड में यह समाप्त हो जाएगा)",
		applied_shared_outfit = "साझा रूप से लागू किया गया पोशाक।",
		declined_shared_outfit = "साझा किए गए पोशाक को अस्वीकार किया।",

		no_nearby_dead_player = "कोई निकटवर्ती मरे हुए खिलाड़ी नहीं हैं।",
		failed_to_steal_shoes = "जूते चुराने में विफल रहा।",

		loading_model = "पेड मॉडल लोड हो रहा है...",
		loading_spawn = "खिलाड़ी पेड को उत्पन्न कर रहा है...",
		loading_set_data = "पेड़ डेटा सेट किया जा रहा है...",
		loading_tattoos = "टैटू सेट किया जा रहा है...",
		loading_finalize = "अंतिम परिष्कृति हो रही है..."
	},

	clothing_bag = {
		packed_outfit = "आउटफिट को सफलतापूर्वक बैग में पैक किया गया।",
		packed_outfit_failed = "आउटफिट को बैग में पैक करने में विफल रहा।",

		item_description_filled = "इस व्यक्ति के पास \"<i>${outfit}</i>\" आउटफिट पैक कर लिया है।",
		item_description_empty = "इस व्यक्ति के पास कोई आउटफिट पैक नहीं है।",

		bag_empty = "यह कपड़ों का बैग खाली है।",
		wrong_ped_model = "यह आउटफिट आपको ठीक से फिट नहीं हो रही है।",
		cant_use_in_vehicle = "आप गाड़ी में कपड़ों का बैग उपयोग नहीं कर सकते।",
		cant_use_while_moving = "चलते समय आप कपड़े का थैला उपयोग नहीं कर सकते।",

		opening_bag = "बैग खोल रहे हैं"
	},

	clothing_menu = {
		component = "घटक",
		texture = "टेक्सचर",
		palette = "पलेट",

		clothing = "कपड़े",
		accessories = "एक्सेसरी",
		face = "चेहरा",
		outfits = "आउटफिट्स",

		reset_zoom = "ज़ूम रीसेट करें",
		zoom_level = "ज़ूम",

		variation = "विभिन्नता",
		color = "रंग",
		secondary_color = "सेकेंडरी कलर",
		opacity = "अस्पष्टता",

		press_to_access = "कपड़ों की दुकान तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		press_no_freemode = "यह पेड मॉडल कपड़ों की दुकान तक पहुंचने में असमर्थ है।",
		press_no_freemode_barber = "यह पेड मॉडल बार्बर शॉप तक पहुंचने के लिए असमर्थ है।",
		press_to_access_barber = "बार्बर शॉप तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		press_to_change_outfit = "अपने आउटफिट को बदलने के लिए ~INPUT_CONTEXT~ दबाएँ।",

		clothingstore = "कपड़ों की दुकान",
		barbershop = "बार्बर शॉप",

		changing_area = "परिवर्तन क्षेत्र",

		switch_outfit = "इस आउटफिट में बदलें।",
		replace_outfit = "इस आउटफिट को बदलें।",
		new_outfit = "नया आउटफिट सहेजें",
		no_saved_outfits = "कोई सहेजे गए आउटफिट नहीं हैं।",

		save_outfit_title = "नया आउटफिट सहेजें",
		save_outfit_label = "आउटफिट का नाम:",
		save_outfit_button = "सहेजें",

		replace_outfit_title = "आउटफिट का पुन:स्थापन",
		replace_outfit_description = "${outfit} नाम की आउटफिट को पुन:स्थापित करना चाहते हैं, क्या आप इसे पुन:स्थापित करना चाहते हैं?",
		replace_outfit_button = "पुन:स्थापित करें",

		delete_outfit_title = "आउटफिट हटाएं",
		delete_outfit_description = "${outfit} नामकी आउटफिट को हटाना चाहते हैं, क्या आप इसे हटाना चाहते हैं?",
		delete_outfit_button = "हटाएं",

		packing_outfit_title = "आउटफिट पैकिंग",
		packing_outfit_description = "\"${outfit}\" आउटफिट को पैक करने के लिए कपड़ों का बैग जिस स्लॉट में है, उसे चुनें।",

		cancel_button = "रद्द करें",

		remove_button = "${label} हटाएं",
		menu_description = "\"V\" दबाकर कैमरा टॉगल करें। आप माउस के साथ स्लाइडर खींच सकते हैं या आरो कुंजियों का उपयोग कर सकते हैं। आप अपनी स्थिति समायोजित करने के लिए \"A\" और \"D\" दबा सकते हैं।",

		failed_toggle_clothing_menu = "कपड़ों का मेनू टॉगल करने में विफल रहा।",
		clothing_menu_success = "${consoleName} के लिए कपड़ों का मेनू खोला गया।",
		barber_menu_success = "बार्बर शॉप मेनू टॉगल करने में विफल रहा।",
		failed_toggle_barber_menu = "${consoleName} के लिए बार्बर शॉप मेनू खोलने में विफल रहा।",
		invalid_server_id = "अमान्य सर्वर आईडी।",

		clothing_menu_missing_permissions = "खिलाड़ी दूसरे खिलाड़ी के लिए कपड़ों का मेनू खोलने का प्रयास किया पर उनके पास आवश्यक अनुमतियां नहीं थीं।",

		hats_and_helmets = "टोपी/हेलमेट",
		glasses = "चश्मे",
		earrings = "कान की बालियाँ",
		left_wrist = "बाईं हाथ की कलाई",
		right_wrist = "दाईं हाथ की कलाई",

		pants = "पतलून",
		shoes = "जूते",
		undershirt = "अंडरशर्ट",
		necklaces_and_ties = "हार और टाई",
		decals = "Decals",
		shirts = "कमीज़",
		arms = "बांहें",
		masks = "मास्क",
		armor = "आर्मर",
		parachute_and_bag = "पैराशूट और बैग",

		hair = "बाल",

		blemishes = "दाग़",
		facial_hair = "चेहरे के बाल",
		eyebrows = "भोई",
		ageing = "बुढा होना",
		makeup = "मेकअप",
		blush = "शर्माना",
		complexion = "त्वचा",
		sun_damage = "धूप से होने वाले क्षति",
		lipstick = "लिपस्टिक",
		moles_and_freckles = "तिल और दाने",
		chest_hair = "सीने के बाल",
		body_blemishes = "शरीर के दाग़",
		add_body_blemish = "शरीर के दाग़ जोड़ें"
	},

	command_socket = {
		connected = "कमांड सॉकेट से कनेक्ट किया गया।",
		disconnected = "कमांड सॉकेट से डिस्कनेक्ट हुआ।",
		failed_reconnect = "कमांड सॉकेट से रिकनेक्ट करने में विफल।"
	},

	crafting = {
		menu_title = "क्राफ्टिंग",
		close_menu = "मेनू बंद करें",

		smelt_glass = "टूटे हुए शीशों को पिघलाएं",
		press_to_smelt_glass = "[${SeatEjectKey}] टूटे हुए शीशों को पिघलाएं",
		smelting_glass = "${usedItems} को पिघलाना है",
		smelted_glass = "${usedItems} को शीशे में पिघलाया गया।",
		failed_smelt_glass = "शीशे को पिघलाने में विफल रहा।",

		craft_steel = "स्टील बनाएं",
		press_to_craft_steel = "[${SeatEjectKey}] स्टील बनाएं",
		crafting_steel = "${usedItems} को मोल्डिंग करना है",
		crafted_steel = "${usedItems} को स्टील में बनाया गया।",
		failed_craft_steel = "स्टील बनाने में विफल रहा।",

		scrapping_item = "${usedItems} को कचड़ा करना",
		scrapped_item = "${usedItems} से स्क्रैप मेटल निकाला।",

		scrap_knife = "स्क्रैप चाकू",
		press_to_scrap_knife = "[${SeatEjectKey}] स्क्रैप चाकू",
		failed_scrap_knife = "चाकू को कचड़ा करने में विफल रहा।",

		scrap_item = "स्क्रैप आइटम",
		press_to_scrap_item = "[${SeatEjectKey}] स्क्रैप आइटम",
		failed_scrap_item = "आइटम को कचड़ा करने में विफल रहा।",

		cut_item = "आलू काटना",
		press_to_cut_item = "[${SeatEjectKey}] आलू काटना",
		cutting_item = "3 आलू काटना",
		cut_item_done = "आलू को फ्राइज़ में काट दिया।",
		failed_cut_item = "आलू काटने में विफल।",

		fry_item = "फ्राई फ्राइज",
		press_to_fry_item = "[${SeatEjectKey}] फ्रांगी फ्राइज",
		frying_item = "फ्राइज फ्राई करना",
		fried_item = "फ्राइड बेल्जियन फ्राइज।",
		failed_fry_item = "फंगी फ्राइज करने में विफल हुआ।",

		grill_item = "ग्रिल रॉ पैटीज़",
		press_to_grill_item = "[${SeatEjectKey}] ग्रिल रॉ पैटीज़",
		grilling_item = "पैटीज़ ग्रिल करना",
		grilled_item = "ग्रिल्ड पैटीज़।",
		failed_grill_item = "पैटीज़ ग्रिल करने में विफल हुआ।",

		hamburger_recipe = "हैम्बर्गर",
		cheeseburger_recipe = "चीजबर्गर",

		assemble_burger = "बर्गर ढालें",
		press_to_assemble_burger = "[${SeatEjectKey}] बर्गर ढालें",
		assembling_burger = "हैमबर्गर ढाला जा रहा है",
		assembled_burger = "हैमबर्गर ढाला गया",
		failed_assemble_burger = "हैमबर्गर ढालने में विफल।",

		assembling_cheeseburger = "चीज़ बर्गर ढाला जा रहा है",
		assembled_cheeseburger = "चीज़ बर्गर ढाला गया",
		failed_assemble_cheeseburger = "चीज़ बर्गर ढालने में विफल।",

		mix_avocado_smoothie = "एवोकैडो स्मूथी मिक्स करें",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] एवोकैडो स्मूथी मिक्स करें",
		mixing_avocado_smoothie = "एवोकैडो स्मूदी मिला रहे हैं",
		mixed_avocado_smoothie = "एवोकैडो स्मूदी मिल गई",
		failed_mix_avocado_smoothie = "एवोकैडो स्मूदी मिलाने में विफल रहा।",

		fill_nitro_tank = "नाइट्रो टैंक भरे",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] नाइट्रो टैंक भरें",
		filling_nitro_tank = "नाइट्रो टैंक भर रहे हैं",
		filled_nitro_tank = "नाइट्रो टैंक भर गया",
		failed_fill_nitro_tank = "नाइट्रो टैंक भरने में विफल रहा।",

		craft_sheet_metal = "शीट मेटल बनाएं",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] शीट मेटल बनाएं",
		crafting_sheet_metal = "शीट मेटल बनाना",
		crafted_sheet_metal = "बनाई गई शीट मेटल।",
		failed_craft_sheet_metal = "शीट मेटल बनाने में विफल रहा।",

		craft_empty_tank = "खाली टैंक बनाना",
		press_to_craft_empty_tank = "[${SeatEjectKey}] खाली टैंक बनाना",
		crafting_empty_tank = "खाली टैंक बनाना जारी है",
		crafted_empty_tank = "खाली टैंक बनाया गया।",
		failed_craft_empty_tank = "खाली टैंक बनाने में विफल रहा।",

		craft_valve = "वाल्व बनाना",
		press_to_craft_valve = "[${SeatEjectKey}] वाल्व बनाना",
		crafting_valve = "वाल्व बनाना",
		crafted_valve = "वाल्व बन गया।",
		failed_craft_valve = "वाल्व बनाने में विफल।",

		craft_nitro_tank = "नाइट्रो टैंक बनाना",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] नाइट्रो टैंक बनाना",
		crafting_nitro_tank = "नाइट्रो टैंक बनाना जारी है",
		crafted_nitro_tank = "नाइट्रो टैंक बन गया।",
		failed_craft_nitro_tank = "नाइट्रो टैंक बनाने में विफल।",

		salvage_meth_table = "मेथ टेबल निकालना",
		press_to_salvage_meth_table = "[${SeatEjectKey}] मेथ टेबल निकालना",
		salvaging_meth_table = "मेथ टेबल निकाल रहे हैं",
		salvaged_meth_table = "संचयीत मेथ टेबल।",
		failed_salvage_meth_table = "मेथ टेबल को संचयीत करने में विफल रहा।",

		refill_vape = "वेप भरें",
		press_to_refill_vape = "[${SeatEjectKey}] वेप भरें",
		refilling_vape = "वेप भर रहा है।",
		refilled_vape = "वेप भर दिया।",
		failed_refill_vape = "वेप भरने में विफल रहा।",

		deconstructing_item = "${usedItems} का विनिर्माण हो रहा है।",
		deconstructed_item = "${usedItems} विनिर्मित किया गया।",

		deconstruct_pistol = "पिस्तौल का विनिर्माण करें",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] पिस्तौल का विनिर्माण करें।",
		failed_deconstruct_pistol = "पिस्तौल को निर्मूलन करने में असफल।",

		deconstruct_smg = "SMG को निर्मूलन करें",
		press_to_deconstruct_smg = "[${SeatEjectKey}] SMG को निर्मूलन करें",
		failed_deconstruct_smg = "SMG को निर्मूलन करने में असफल।",

		deconstruct_shotgun = "शौटगन को निर्मूलन करें",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] शौटगन को निर्मूलन करें",
		failed_deconstruct_shotgun = "शौटगन को निर्मूलन करने में असफल।",

		deconstruct_rifle = "राइफल को निर्मूलन करें",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] राइफल को निर्मूलन करें।",
		failed_deconstruct_rifle = "राइफल को विघटित करने में विफल रहा।",

		extract_copper = "ताम्बे निकालना",
		press_extract_copper = "[${SeatEjectKey}] तांबे का निकालना",
		extracting_copper = "ताम्बे निकाल रहे हैं",
		extracted_copper = "तांबे का निकाला।",
		failed_extract_copper = "तांबे का निकालना विफल रहा।",

		processing_item = "${usedItems} का संसाधन हो रहा है",
		processed_item = "${usedItems} का संसाधित हुआ।",

		process_copper = "ताम्बे नगेट का संसाधन",
		press_process_copper = "[${SeatEjectKey}] ताम्बे नगेट का संसाधन करें",
		failed_process_copper = "तांबे नगेट का संसाधन करने में विफल रहा।",

		process_rubber = "रबर प्रक्रिया करें",
		press_process_rubber = "[${SeatEjectKey}] रबर प्रक्रिया करें",
		failed_process_rubber = "रबर की प्रक्रिया करने में विफल रहा।",

		process_aluminium = "एल्युमिनियम प्रक्रिया करें",
		press_process_aluminium = "[${SeatEjectKey}] एल्युमिनियम प्रक्रिया करें",
		failed_process_aluminium = "एल्युमिनियम की प्रक्रिया करने में विफल रहा।",

		process_steel = "स्टील प्रक्रिया करें",
		press_process_steel = "[${SeatEjectKey}] स्टील प्रक्रिया करें",
		failed_process_steel = "स्टील की प्रक्रिया करने में विफल रहा।",

		craft_lens = "लेंस बनाएँ",
		press_craft_lens = "[${SeatEjectKey}] लेंस बनाएँ",
		crafting_lens = "लेंस का निर्माण",
		crafted_lens = "निर्मित लेंस।",
		failed_craft_lens = "लेंस का निर्माण विफल।",

		craft_sight = "निशाने का निर्माण",
		press_craft_sight = "[${SeatEjectKey}] निशाने का निर्माण",
		crafting_sight = "निशाने का निर्माण हो रहा है",
		crafted_sight = "निर्मित निशाना।",
		failed_craft_sight = "निशाने का निर्माण विफल।",

		craft_pistol_sight = "पिस्टल निशाने का निर्माण",
		press_craft_pistol_sight = "[${SeatEjectKey}] पिस्टल निशाने का निर्माण",
		crafting_pistol_sight = "पिस्टल निशाने का निर्माण हो रहा है",
		crafted_pistol_sight = "निर्मित पिस्टल निशाना।",
		failed_craft_pistol_sight = "पिस्तौल निशान बनाने में विफल रहा।",

		craft_scope = "दूरबीन बनाएं",
		press_craft_scope = "[${SeatEjectKey}] दूरबीन बनाएं",
		crafting_scope = "दूरबीन बनाना",
		crafted_scope = "बनाया गया दूरबीन।",
		failed_craft_scope = "दूरबीन बनाने में विफल रहा।",

		craft_grip = "ग्रिप बनाएं",
		press_craft_grip = "[${SeatEjectKey}] ग्रिप बनाएं",
		crafting_grip = "ग्रिप बनाना",
		crafted_grip = "बनाया गया ग्रिप।",
		failed_craft_grip = "ग्रिप बनाने में विफल रहा।",

		craft_extended_clip = "एक्सटेंडेड क्लिप बनाएं",
		press_craft_extended_clip = "[${SeatEjectKey}] एक्सटेंडेड क्लिप बनाएं।",
		crafting_extended_clip = "एक्सटेंडेड क्लिप बनाएं",
		crafted_extended_clip = "एक्सटेंडेड क्लिप बनाया गया।",
		failed_craft_extended_clip = "एक्सटेंडेड क्लिप बनाने में विफल रहा।",

		craft_extended_smg_clip = "एक्सटेंडेड एसएमजी क्लिप बनाएं",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] एक्सटेंडेड एसएमजी क्लिप बनाएं",
		crafting_extended_smg_clip = "एक्सटेंडेड एसएमजी क्लिप बनाने में",
		crafted_extended_smg_clip = "एक्सटेंडेड एसएमजी क्लिप बनाया गया।",
		failed_craft_extended_smg_clip = "एक्सटेंडेड एसएमजी क्लिप बनाने में विफल रहा।",

		craft_extended_shotgun_clip = "एक्सटेंडेड शॉटगन क्लिप बनाएं",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] एक्सटेंडेड शॉटगन क्लिप बनाएं",
		crafting_extended_shotgun_clip = "एक्सटेंडेड शॉटगन क्लिप बनाना",
		crafted_extended_shotgun_clip = "एक्सटेंडेड शॉटगन क्लिप बनाया गया।",
		failed_craft_extended_shotgun_clip = "एक्सटेंडेड शॉटगन क्लिप बनाने में विफल रहा।",

		craft_extended_pistol_clip = "एक्सटेंडेड पिस्तौल क्लिप बनाएं",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] एक्सटेंडेड पिस्तौल क्लिप बनाएं",
		crafting_extended_pistol_clip = "एक्सटेंडेड पिस्तौल क्लिप बनाना",
		crafted_extended_pistol_clip = "पिस्तौल के एक्सटेंडेड क्लिप निर्मित किया गया।",
		failed_craft_extended_pistol_clip = "एक्सटेंडेड पिस्तौल क्लिप का निर्माण विफल।",

		craft_drum = "ड्रम मैग का निर्माण करें",
		press_craft_drum = "[${SeatEjectKey}] ड्रम मैग का निर्माण करें",
		crafting_drum = "ड्रम मैग का निर्माण हो रहा है।",
		crafted_drum = "ड्रम मैग निर्मित किया गया।",
		failed_craft_drum = "ड्रम मैग का निर्माण विफल।",

		craft_suppressor = "सप्रेसर का निर्माण करें",
		press_craft_suppressor = "[${SeatEjectKey}] सप्रेसर का निर्माण करें",
		crafting_suppressor = "सप्रेसर का निर्माण हो रहा है।",
		crafted_suppressor = "सप्रेसर निर्मित किया गया।",
		failed_craft_suppressor = "सप्रेसर क्राफ्ट करने में असफल।",

		craft_flashlight = "फ्लैशलाइट क्राफ्ट करें",
		press_craft_flashlight = "[${SeatEjectKey}] फ्लैशलाइट क्राफ्ट करें",
		crafting_flashlight = "फ्लैशलाइट क्राफ्ट कर रहे हैं",
		crafted_flashlight = "फ्लैशलाइट क्राफ्ट कर दी गई।",
		failed_craft_flashlight = "फ्लैशलाइट क्राफ्ट करने में असफल।",

		mix_paint = "पेंट मिक्स करें",
		press_mix_paint = "[${SeatEjectKey}] पेंट मिक्स करें",
		mixing_paint = "पेंट मिक्स कर रहे हैं",
		mixed_paint = "पेंट मिक्स कर दिया गया।",
		failed_mix_paint = "पेंट मिक्स करने में असफल।",

		modify_knuckle = "ब्रास नख को संशोधित करें",
		press_modify_knuckle = "[${SeatEjectKey}] ब्रास नकली को संशोधित करें",
		modifying_knuckle = "ब्रास नकली को संशोधित कर रहे हैं",
		modified_knuckle = "ब्रास नकली संशोधित हुई।",
		failed_modify_knuckle = "ब्रास नकली संशोधित करने में विफल रहा।",

		craft_jammer = "जामर बनाएं",
		press_craft_jammer = "[${SeatEjectKey}] जामर बनाएं",
		crafting_jammer = "जामर बना रहे हैं",
		crafted_jammer = "जामर बन गया।",
		failed_craft_jammer = "जामर बनाने में विफल रहा।",

		craft_advanced_repair_kit = "उन्नत मरम्मत किट बनाएं",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] उन्नत मरम्मत किट बनाएं",
		crafting_advanced_repair_kit = "एडवांस्ड रिपेयर किट बनाना",
		crafted_advanced_repair_kit = "एडवांस्ड रिपेयर किट बनाई गयी।",
		failed_craft_advanced_repair_kit = "एडवांस्ड रिपेयर किट बनाने में विफल हो गया।",

		pulverize_aluminium = "एल्युमिनियम को पल्वेराइज़ करें",
		press_pulverize_aluminium = "[${SeatEjectKey}] एल्युमिनियम को पल्वेराइज़ करें",
		pulverizing_aluminium = "एल्युमिनियम को पल्वेराइज़ किया जा रहा है।",
		pulverized_aluminium = "एल्युमिनियम पल्वेराइज़ कर दिया गया।",
		failed_pulverize_aluminium = "एल्युमिनियम को पल्वेराइज़ करने में विफल हो गया।",

		pulverize_steel = "स्टील को पल्वेराइज़ करें",
		press_pulverize_steel = "[${SeatEjectKey}] स्टील को पल्वराइज़ करें",
		pulverizing_steel = "स्टील पल्वराइज कर रहा है",
		pulverized_steel = "स्टील पल्वराइज किया गया।",
		failed_pulverize_steel = "स्टील को पल्वराइज़ करने में विफल रहा।",

		mix_thermite = "तापक घोल मिश्रण करें",
		press_mix_thermite = "[${SeatEjectKey}] तापक घोल मिश्रण करें",
		mixing_thermite = "तापक घोल मिश्रण हो रहा है",
		mixed_thermite = "तापक घोल मिश्रण किया गया।",
		failed_mix_thermite = "तापक घोल मिश्रण में विफल रहा।",

		deconstruct_phone = "फ़ोन को विवरणीबद्ध करें",
		press_deconstruct_phone = "[${SeatEjectKey}] फ़ोन को विवरणीबद्ध करें",
		failed_deconstruct_phone = "फ़ोन को विघटित करने में असफल।",

		deconstruct_radio = "रेडियो को विघटित करें",
		press_deconstruct_radio = "[${SeatEjectKey}] रेडियो को विघटित करें",
		failed_deconstruct_radio = "रेडियो को विघटित करने में असफल।",

		deconstruct_raspberry = "रास्पबेरी को विघटित करें",
		press_deconstruct_raspberry = "[${SeatEjectKey}] रास्पबेरी को विघटित करें",
		failed_deconstruct_raspberry = "रास्पबेरी को विघटित करने में असफल।",

		deconstruct_chip = "चिप को विघटित करें",
		press_deconstruct_chip = "[${SeatEjectKey}] चिप को विघटित करें",
		failed_deconstruct_chip = "चिप को विघटित करने में असमर्थ।",

		craft_device_scanner = "उपकरण स्कैनर बनाएँ",
		press_craft_device_scanner = "[${SeatEjectKey}] उपकरण स्कैनर बनाएँ",
		crafting_device_scanner = "उपकरण स्कैनर बनाया जा रहा है",
		crafted_device_scanner = "उपकरण स्कैनर बना दिया गया।",
		failed_craft_device_scanner = "उपकरण स्कैनर बनाने में असमर्थ।",

		craft_decryption_key = "डिक्रिप्शन कुंजी बनाएँ",
		press_craft_decryption_key = "[${SeatEjectKey}] डिक्रिप्शन कुंजी बनाएँ",
		crafting_decryption_key = "डिक्रिप्शन कुंजी बनाई जा रही है",
		crafted_decryption_key = "बनाया गया डिक्रिप्शन कुंजी।",
		failed_craft_decryption_key = "डिक्रिप्शन कुंजी बनाने में विफल।",

		craft_tire_wall = "टायर वॉल बनाएं",
		press_craft_tire_wall = "[${SeatEjectKey}] टायर वॉल बनाएं",
		crafting_tire_wall = "टायर वॉल बना रहे हैं।",
		crafted_tire_wall = "टायर वॉल बना दिया गया।",
		failed_craft_tire_wall = "टायर वॉल बनाने में विफल।",

		fix_tire_wall = "टायर वॉल ठीक करें",
		press_fix_tire_wall = "[${SeatEjectKey}] टायर वॉल ठीक करें",
		fixing_tire_wall = "टायर वॉल ठीक कर रहे हैं।",
		fixed_tire_wall = "टायर वॉल ठीक हो गया है।",
		failed_fix_tire_wall = "टायर वॉल ठीक करने में विफल हुआ।",

		saw_shotgun = "सॉ ऑफ शॉटगन",
		press_saw_shotgun = "[${SeatEjectKey}] सॉ ऑफ शॉटगन",
		sawing_shotgun = "शॉटगन को काट रहा है",
		sawed_shotgun = "शॉटगन को काट दिया।",
		failed_saw_shotgun = "शॉटगन को काटने में विफल हुआ।",

		bake_brownies = "ब्राउनी बेक करें",
		press_bake_brownies = "[${SeatEjectKey}] ब्राउनी बेक करें",
		baking_brownies = "ब्राउनी बेक हो रही है",
		baked_brownies = "ब्राउनी बेक हो गई।",
		failed_bake_brownies = "ब्राउनी बेक करने में विफल हुआ।",

		mix_brushstroke_paint = "ब्रशस्ट्रोक पेंट मिक्स करें",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] ब्रशस्ट्रोक पेंट मिक्स करें",
		mixing_brushstroke_paint = "ब्रशस्ट्रोक पेंट मिक्स हो रहा है",
		mixed_brushstroke_paint = "ब्रशस्ट्रोक पेंट मिक्स हो गया है।",
		failed_mix_brushstroke_paint = "ब्रशस्ट्रोक पेंट मिक्स करने में विफल रहा।",

		mix_skull_paint = "ढाल पेंट मिक्स करें",
		press_mix_skull_paint = "[${SeatEjectKey}] ढाल पेंट मिक्स करें",
		mixing_skull_paint = "ढाल पेंट मिक्स हो रहा है",
		mixed_skull_paint = "ढाल पेंट मिक्स हो गया है।",
		failed_mix_skull_paint = "ढाल पेंट मिक्स करने में विफल रहा।",

		mix_leopard_paint = "चीता पेंट मिक्स करें",
		press_mix_leopard_paint = "[${SeatEjectKey}] लेपर्ड पेंट मिक्स करें",
		mixing_leopard_paint = "लेपर्ड पेंट मिक्स किया जा रहा है",
		mixed_leopard_paint = "लेपर्ड पेंट मिल गया।",
		failed_mix_leopard_paint = "लेपर्ड पेंट मिक्स करने में विफल रहा।",

		mix_zebra_paint = "जबरा पेंट मिक्स करें",
		press_mix_zebra_paint = "[${SeatEjectKey}] जबरा पेंट मिक्स करें",
		mixing_zebra_paint = "जबरा पेंट मिक्स किया जा रहा है",
		mixed_zebra_paint = "जबरा पेंट मिल गया।",
		failed_mix_zebra_paint = "जबरा पेंट मिक्स करने में विफल रहा।",

		mix_geometric_paint = "ज्यामितीय पेंट मिक्स करें",
		press_mix_geometric_paint = "[${SeatEjectKey}] ज्यामितीय पेंट मिक्स करें",
		mixing_geometric_paint = "ज्यामितीय रंग समान कर रहे हैं",
		mixed_geometric_paint = "ज्यामितीय रंग मिश्रित हो गया।",
		failed_mix_geometric_paint = "ज्यामितीय रंग को मिश्रित करने में असफल रहा।",

		mix_patriotic_paint = "देशभक्ति रंग मिलाएँ",
		press_mix_patriotic_paint = "[${SeatEjectKey}] देशभक्ति रंग मिलाएँ",
		mixing_patriotic_paint = "देशभक्ति रंग मिलाने में",
		mixed_patriotic_paint = "देशभक्ति रंग मिश्रित हो गया।",
		failed_mix_patriotic_paint = "देशभक्ति रंग को मिश्रित करने में असफल रहा।",

		craft_radio_decrypter = "रेडियो डीक्रिप्टर तैयार करें",
		press_craft_radio_decrypter = "[${SeatEjectKey}] रेडियो डीक्रिप्टर तैयार करें",
		crafting_radio_decrypter = "रेडियो डिक्रिप्टर बनाना",
		crafted_radio_decrypter = "रेडियो डिक्रिप्टर बन गया।",
		failed_craft_radio_decrypter = "रेडियो डिक्रिप्टर बनाने में विफल रहा।",

		craft_grenade_shell = "ग्रेनेड की खोल बनाना",
		press_craft_grenade_shell = "[${SeatEjectKey}] ग्रेनेड की खोल बनाना",
		crafting_grenade_shell = "ग्रेनेड की खोल बनाना जारी है",
		crafted_grenade_shell = "ग्रेनेड की खोल बन गया।",
		failed_craft_grenade_shell = "ग्रेनेड की खोल बनाने में विफल रहा।",

		craft_grenade_pin = "ग्रेनेड का पिन बनाना",
		press_craft_grenade_pin = "[${SeatEjectKey}] ग्रेनेड का पिन बनाना",
		crafting_grenade_pin = "बम पिन बनाना",
		crafted_grenade_pin = "बम पिन बना दिया गया।",
		failed_craft_grenade_pin = "बम पिन बनाने में असफल।",

		craft_gas_grenade = "गैस बम बनाना",
		press_craft_gas_grenade = "[${SeatEjectKey}] गैस बम बनाना",
		crafting_gas_grenade = "गैस बम बनाना",
		crafted_gas_grenade = "गैस बम बना दिया गया।",
		failed_craft_gas_grenade = "गैस बम बनाने में असफल।",

		break_apart_ring = "ब्रेक अपार्ट रिंग",
		press_break_apart_ring = "[${SeatEjectKey}] ब्रेक अपार्ट रिंग",
		breaking_ring = "ब्रेकिंग अपार्ट रिंग",
		broke_ring = "रिंग ब्रेक हो गया।",
		failed_break_ring = "रिंग तोड़ने में विफल रहा।",

		no_required_items = "आपके पास सभी आवश्यक आइटम नहीं हैं।",

		debug_multi = "-एकाधिक आउटपुट-",

		used_crafting_station_title = "क्राफ्टिंग स्टेशन",
		used_crafting_station_details = "${consoleName} ने ${amount}x ${itemName} क्राफ्ट करने के लिए क्राफ्टिंग स्टेशन का उपयोग किया।"
	},

	crashes = {
		crash_failed = "${consoleName} के लिए क्रैश ट्रिगर करने में विफल।",
		crash_success = "${consoleName} के लिए क्रैश सफलतापूर्वक ट्रिगर किया।",
		server_id_invalid = "अवैध सर्वर आईडी।"
	},

	creation = {
		turn_right = "दाहिने मुड़े",
		turn_left = "बाएं मुड़े"
	},

	creation_menu = {
		character_creation = "चरित्र निर्माण",
		new_character = "नया चरित्र",

		select_a_model = "एक मॉडल चुनें।",

		heritage = "वंशज",
		heritage_description = "अपने माता-पिता चुनने के लिए चुनें।",
		mom = "माँ",
		mom_description = "अपनी माँ का चयन करें।",
		dad = "पिता",
		dad_description = "अपने पिता का चयन करें।",
		resemblance = "स्वरूपता",
		resemblance_description = "चुनें कि आपके विशेषताएं अधिकतम रूप से आपकी मां या पिता के द्वारा प्रभावित हैं।",
		skin_tone = "त्वचा रंग",
		skin_tone_description = "चुनें कि आपका त्वचा रंग अधिकतम रूप से आपकी मां या पिता द्वारा प्रभावित है।",
		divorced = "तलाकशुदा",
		divorced_description = "चुनें कि क्या आपके माता-पिता तलाकशुदा हैं।",

		["in"] = "in",
		out = "बाहर",
		up = "ऊपर",
		down = "नीचे",
		brow = "भ्रू",
		brow_description = "अपनी शारीरिक विशेषताओं में परिवर्तन करें।",

		squint = "चपटा",
		wide = "चौड़ा",
		eyes = "आंखें",
		eyes_description = "अपनी शारीरिक विशेषताओं में परिवर्तन करें।",

		narrow = "संकुचित",
		wide = "चौड़ा",
		nose = "नाक",
		nose_description = "अपनी शारीरिक विशेषताओं में परिवर्तन करें।",

		short = "छोटी नाक",
		long = "बड़ी नाक",
		crooked = "टेढ़ी",
		curved = "वक्र",
		nose_profile = "नाक प्रोफ़ाइल",
		nose_profile_description = "अपनी शारीरिक विशेषताओं में परिवर्तन करें।",

		broken_left = "बाईं नाक टूट गई है",
		broken_right = "टूटी हुई दाहिनी",
		tip_up = "टिप ऊपर",
		tip_down = "टिप नीचे",
		nose_tip = "नाक का टिप",
		nose_tip_description = "अपनी शारीरिक विशेषताओं में बदलाव करें।",

		cheekbones = "गाल बोन",
		cheekbones_description = "अपनी शारीरिक विशेषताओं में बदलाव करें।",

		gaunt = "दुर्बल",
		puffed = "ढीला",
		cheeks = "गाल",
		cheeks_description = "अपनी शारीरिक विशेषताओं में बदलाव करें।",

		thin = "पतला",
		fat = "मोटा",
		lips = "होंठ",
		lips_description = "अपनी शारीरिक विशेषताओं में बदलाव करें।",

		round = "गोलाकार",
		square = "वर्गाकार",
		jaw = "जबड़ा",
		jaw_description = "अपने शारीरिक विशेषताओं में परिवर्तन करें।",

		chin_profile = "चेहरे का प्रोफ़ाइल",
		chin_profile_description = "अपने शारीरिक विशेषताओं में परिवर्तन करें।",

		pointed = "नुकीली",
		rounded = "गोल",
		bum = "गाँड़",
		chin_shape = "चेहरे का आकार",
		chin_shape_description = "अपने शारीरिक विशेषताओं में परिवर्तन करें।",

		thick = "मोटा",
		neck_thickness = "गले की मोटाई",
		neck_thickness_description = "अपने शारीरिक विशेषताओं में परिवर्तन करें।",

		features = "विशेषताएँ",
		appearance = "दिखना",
		save_and_continue = "सहेजें और जारी रखें",
		components = "घटक",
		props = "संपत्ति",
		ambient_females = "परिवेश लड़कियां",
		ambient_male = "परिवेश पुरूष",
		animals = "जानवर",
		cutscene = "कटसीन",
		gang_female = "गैंग लड़कियां",
		gang_male = "गैंग पुरूष",
		multiplayer = "बहु-खिलाड़ी",
		scenario_female = "परिदृश्य लड़कियाँ",
		scenario_male = "परिदृश्य पुरूष",
		story = "कहानी",
		story_scenario_female = "कहानी के परिदृश्य लड़कियाँ",
		story_scenario_male = "कहानी के परिदृश्य पुरूष",
		models = "मॉडल",

		features_description = "अपने चेहरे की विशेषताओं को बदलने के लिए चुनें।",

		unknown_hair = "अज्ञात बाल (${hairId})",
		unknown_eyebrow = "अज्ञात भ्रू (${eyebrowId})",
		unknown_facial_hair = "अज्ञात चेहरे के बाल (${facialHairId})",
		unknown_skin_blemish = "अज्ञात त्वचा की कलंजियों (${skinBlemishId})",
		unknown_skin_aging = "अज्ञात त्वचा का उम्र हो रहा है (${skinAgingId})",
		unknown_skin_complexion = "अज्ञात त्वचा की रंगता (${skinComplexionId})",
		unknown_moles_and_freckles = "अज्ञात तिल और दाने (${molesAndFrecklesId})",
		unknown_skin_damage = "अज्ञात त्वचा के क्षतिग्रस्त होने के कारण (${skinDamageId})",
		unknown_eye_makeup = "अज्ञात आँखों का मेकअप (${eyeMakeupId})",
		unknown_blusher = "अज्ञात ब्लशर (${blusherId})",
		unknown_lipstick = "अज्ञात लिपस्टिक (${lipstickId})",
		unknown_chest_hair = "अज्ञात छाती का बाल (${chestHairId})",

		color = "रंग",
		opacity = "अस्पष्टता",

		hair = "बाल",
		hair_description = "अपने रूप में परिवर्तन करें।",

		eyebrows = "भौं आँखें",
		eyebrows_description = "अपने रूप में परिवर्तन करें।",

		facial_hair = "चेहरे के बाल",
		facial_hair_description = "अपने रूप में परिवर्तन करें।",

		skin_blemishes = "त्वचा की खराबियां",
		skin_blemishes_description = "अपने रूप में परिवर्तन करें।",

		skin_aging = "त्वचा की उम्र",
		skin_aging_description = "अपने दिखावट में परिवर्तन करें।",

		skin_complexion = "त्वचा की रंगता",
		skin_complexion_description = "अपने दिखावट में परिवर्तन करें।",

		moles_and_freckles = "तिल और धब्बे",
		moles_and_freckles_description = "अपने दिखावट में परिवर्तन करें।",

		skin_damage = "त्वचा नुकसान",
		skin_damage_description = "अपने दिखावट में परिवर्तन करें।",

		eye_color = "नेत्र रंग",
		eye_color_description = "अपने दिखावट में परिवर्तन करें।",

		eye_makeup = "नेत्र मेकअप",
		eye_makeup_description = "अपने रूप में बदलाव करें।",

		blusher = "ब्लश",
		blusher_description = "अपने रूप में बदलाव करें।",

		lipstick = "लिपस्टिक",
		lipstick_description = "अपने रूप में बदलाव करें।",

		chesthair = "छाती के बाल",
		chesthair_description = "अपने रूप में बदलाव करें।",

		ready_to_start_playing = "खेलने के लिए तैयार?",
		no = "नहीं",
		go_back = "वापस जाओ।",
		yes = "हाँ",
		you_will_not_be_able_to_return = "आप वापस नहीं जा पाएंगे।",

		freemode = "फ्रीमोड",
		freemode_description = "चुनें कि क्या आप फ्रीमोड मॉडल का उपयोग करना चाहेंगे। फ्रीमोड मॉडल अत्यंत अनुकूलनशील होते हैं।",

		sex = "लिंग",
		sex_description = "अपने करेक्टर का लिंग चुनें।",
		male = "पुरुष",
		female = "महिला",

		props_description = "अपनी पसंद के अनुकूल प्रॉप्स चुनें।",

		hat = "टोपी",
		glass = "ग्लास",
		ear = "कान",
		watch = "घड़ी",
		bracelet = "कंगन",

		appearance_description = "अपनी दिखावट बदलने के लिए चुनें।",
		components_description = "अपनी पसंद के अनुकूल कॉम्पोनेंट चुनें।",

		none = "कोई नहीं",

		texture = "${textureId} टेक्सचर",
		drawable = "${drawableId} ड्रायबल",

		clean_shaven = "पक्का शेवधारी",

		face = "चेहरा",
		mask = "मास्क",
		hair = "बाल",
		torso = "टोर्सो",
		leg = "पैर",
		parachute_and_bag = "पैराशूट / बैग",
		shoes = "जूते",
		accessory = "एक्सेसरी",
		undershirt = "अंडरशर्ट",
		kevlar = "केवलर",
		badge = "बैज",
		torso_two = "टोर्सो 2"
	},

	crosshair = {
		copied_config = "कॉन्फ़िग क्लिपबोर्ड पर कॉपी किया गया।",
		imported_config = "कॉन्फ़िग आयात किया गया।",
		disabled_crosshair = "कस्टम क्रॉसहेयर अक्षम किया गया।",

		invalid_url_title = "अमान्य छवि URL",
		invalid_url_description = "आपके द्वारा दर्ज URL अमान्य है। यह छवि के लिए एक सीधा लिंक होना चाहिए, छवि को समग्र वेबसाइट की लिंक नहीं। यह निम्नलिखित URL के साथ शुरू होना चाहिए:",
		cancel_button = "ठीक है",

		center = "मध्य",
		main = "मुख्य",
		outer = "बाहरी",
		kill = "फ्लैश बंद करें",

		enabled = "सक्रिय हुआ",
		size = "आकार",
		image = "इमेज",
		length = "लंबाई",
		offset = "ऑफसेट",
		secondary_offset = "द्वितीय ऑफसेट",
		rotation = "रोटेशन",
		color = "रंग",
		duration = "अवधि (मि.से.)"
	},

	clip_saver = {
		start_recording = "रेकॉर्डिंग शुरू करें",
		clip_save = "क्लिप सुरक्षित करें",
		clip_discard = "क्लिप छोड़ें"
	},

	compass = {
		north = "उत्तर",
		north_east = "उत्तर-पूर्व",
		east = "पूर्व",
		south_east = "दक्षिण-पूर्व",
		south = "दक्षिण",
		south_West = "SW",
		west = "पश्चिम",
		north_west = "उत्तर-पश्चिम"
	},

	courthouse = {
		press_to_use_gavel = "गॅवेल उपयोग करने के लिए ~INPUT_CONTEXT~ दबाएं।"
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] रोज़ाना गतिविधियाँ",
		daily_activities = "रोज़ाना गतिविधियाँ",
		resets_in = "${resetsIn} में रीसेट हो जाएगा...",
		complete_the_other_tasks_to_unlock = "अन्य कार्य पूरे करें ताकि संभव हो तो अनलॉक करें...",
		remain = "${remain} शेष है",
		remain_money = "$${remain} शेष है",
		claimed = "दावा किया गया",
		claim = "दावा करें",
		streak_reward = "जब आपकी सत्र का स्ट्रीक 7 या इससे अधिक होता है, तो आपको भाग्यशाली चक्र के लिए एक और नि: शुल्क रोज़ाना स्पिन मिलेगी।",

		reset_daily_activities_no_permissions = "खिलाड़ी ने उनकी रोज़ाना गतिविधियों को उचित अनुमतियों के बिना रीसेट करने का प्रयास किया।",
		reset_daily_activities = "दैनिक गतिविधियों को रीसेट करें।",

		parachute_from_location = "${location} से पैराशूट झरना।",
		gamble_at_blackjack = "${amount} हाथ ब्लैकजैक मेज़ पर जुआ खेलें।",
		bring_in_items = "निम्नलिखित आइटम लाएं।",
		kills_in_arena = "एरीना में ${amount} किल करें।",
		headshot_kills_in_arena = "एरेना में ${amount} हेडशॉट किल करें।",
		punch_locals = "${amount} स्थानीय लोगों को पंच मारे।",
		move_from_place_to_place = "${time} सेकंड में ${from} से ${to} जाएं।",
		put_bets_in_jackpot = "जैकपॉट में $${amount} की शर्तें लगाएं।",
		win_bets_in_jackpot = "${amount} के मूल्य के आइटम जैकपॉट में जीतें।",
		chop_vehicles = "${amount} गाड़ियों काटें।",
		purchase_ammo = "${amount} गोला खरीदें।",
		collect_items_from_diving = "डाइविंग से ${amount}x ${itemLabel} कोलेक्ट करें।",
		take_zombie_pills = "${amount} ज़ोंबी गोलियां लें।",
		dig_up_a_treasure = "एक खजाने को खोदें जिसमें एक खजाने का मानचित्र हो।",
		refine_gems = "${amount} जेम्स को शुद्ध करें।",
		visit_location = "${location} जाएं।",
		visit_the_location = "${location} जाएं।"
	},

	dashcam = {
		video = "वीडियो",
		time = "समय",
		date = "तारीख",

		unit_id = "यूनिट आईडी",
		unit_name = "यूनिट नाम",
		unit_speed = "यूनिट की गति",

		state_seal_one = "यह वाहन लाइसेंस है",
		state_seal_two = "सैन एंड्रेस राज्य का",
		state_seal_three = "कोई अनधिकृत उपयोग 13 एस.ए. पेन. कोड 502 (ए) के तहत भारी जुर्माने का सामना करेगा।",

		kmh = "किलोमीटर/घंटा",
		mph = "मील/घंटा",

		set_unit_id_to = "आपकी यूनिट आईडी अब ${unitId} पर सेट की गई है।",
		reset_unit_id = "आपकी यूनिट आईडी अब रीसेट कर दी गई है।",
		failed_to_set_unit_id = "आपकी यूनिट आईडी सेट करने में विफल रही।",
		unit_id_already_set_to = "आपकी यूनिट आईडी पहले से ही ${unitId} पर सेट है।",
		unit_id_already_reset = "आपकी इकाई ID पहले से ही रीसेट कर दी गई है।",
		invalid_unit_id = "इकाई आईडी 1 से 999 के बीच एक पूर्णांक होनी चाहिए।",

		unit_id_vehicles_updated = "आपकी आपातकालीन वाहन आपकी नई इकाई आईडी `${unitId}` के अनुसार अपडेट किए गए हैं।"
	},

	debug = {
		ped = "पेड़",
		vehicle = "वाहन",
		object = "ऑब्जेक्ट",
		network_id = "नेटवर्क आईडी",
		owned_by_us = "हमारे द्वारा स्वामित्व",
		owned_by = "इसके मालिक",
		one_state_set = "1 स्टेट सेट किया गया",
		many_states_set = "${count} स्टेट सेट किए गए",
		no_states = "कोई स्टेट नहीं",
		entity_health = "स्वस्थ ${health}/${maxHealth}",
		owned_by_server = "सर्वर",
		first_owned_short = "पहले के मालिक: ${firstOwned}",
		network_id_side = "नेटवर्क आईडी: ${networkId}",
		no_target = "कोई लक्ष्य नहीं",
		invalid_radius_parameter = "`radius` पैरामीटर अमान्य है।",
		inject_code_not_developer = "खिलाड़ी कोड प्रविष्टि करने का प्रयास किया लेकिन वे एक डेवलपर नहीं थे।",
		inject_code_invalid_player = "सर्वर आईडी `${serverId}` के साथ कोई खिलाड़ी नहीं हैं।",
		inject_code_success_for_everyone = "एक सफल ढंग से कोड निष्पादित किया गया है।",
		inject_code_success_for_player = "${consoleName} के लिए कोड सफलतापूर्वक निष्पादित किया गया है।",
		inject_code_success = "कोड सफलतापूर्वक इंजेक्ट हुआ।",
		inject_code_target_user_not_found = "लक्षित उपयोगकर्ता नहीं मिला।",
		inject_code_invalid_text = "अमान्य पाठ।",
		inject_code_invalid_input = "अवैध इनपुट।",
		inject_code_no_permissions = "कोई अनुमति नहीं।",
		inject_code_user_not_found = "उपयोगकर्ता नहीं मिला।",
		inject_code_invalid_url = "अमान्य URL।",
		inject_code_invalid_radius = "अमान्य त्रिज्या।",
		game_pools = "गेम पूल:",
		ped_config_flags = "पेड कॉन्फ़िग फ्लैग:",
		ped_is = "पेड है:",
		vehicle_is = "वाहन है:",
		native_calls = "नेटिव कॉल: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "खिलाड़ी की गति: ${playerSpeed}",
		player_ped = "खिलाड़ी पैड: ${playerPedId}",
		heading = "हेडिंग: ${heading}",
		coords = "संयोजन: ${coords}",
		rotation = "घुमावदारता: ${rotation}",
		velocity = "वेग: ${velocity}",
		ground_material = "जमीन का पदार्थ: ${material}",
		g_force = "जी-फोर्स: ${force}",
		debug_print_f8 = "डिबगिंग जानकारी आपके एफ 8 कंसोल में प्रिंट किए गए हैं।",
		no_vehicle_bone = "\"${boneName}\" हड्डी नहीं है",

		distance = "दूरी: ${distance}मी",
		distance_first = "पहला स्थान संग्रहित।",

		get_search_invalid = "अवैध खोज (कम से कम 2 अक्षरों की आवश्यकता है)।",

		disabled_ped_bone_debug = "पैदल हड्डी डीबग अक्षम कर दिया।",

		mph = "mph",
		vehicle_speed = "गति: ${speed}",
		vehicle_average = "औसत: ${speed}",
		vehicle_top_speed = "शीर्ष गति: ${speed}",
		vehicle_acceleration = "0 से 60: ${time}",
		vehicle_acceleration_120 = "0 से 120: ${time}",
		vehicle_acceleration_150 = "0 से 150 तक: ${time}",
		vehicle_acceleration_force = "लॉन्च फोर्स: ${force}",

		invalid_network_id = "अमान्य नेटवर्क आईडी।",
		delete_entity_success = "नेटवर्क आईडी ${networkId} के साथ मात्रा हटाई गई।",
		delete_entity_failed = "एंटिटी को हटाने में विफल रहा।",
		delete_entity_no_permissions = "खिलाड़ी ने अनुमति के बिना इकाई हटाने का प्रयास किया।",

		move_entity_success = "${networkId} नेटवर्क आईडी वाली इकाई को सफलतापूर्वक हटाया गया।",
		move_entity_failed = "इकाई को हटाने में विफल रहा।",
		move_entity_no_permissions = "खिलाड़ी ने अनुमति के बिना इकाई को हटाने का प्रयास किया।",

		fake_lag_updated = "फेक लैग काउंटर `${counter}` में अपडेट किया गया है।",
		fake_lag_already_set_to = "फेक लैग काउंटर `${counter}` पहले से ही सेट हो गया है।",
		fake_lag_enabled = "फेक लैग काउंटर `${counter}` सक्षम हो गया है।",
		fake_lag_invalid_counter_value = "फ़ेक लैग कोई अवैध काउंटर वैल्यू `${counter}` है।",
		fake_lag_disabled = "फ़ेक लैग अक्षम किया गया है।",
		fake_lag_not_enabled = "फ़ेक लैग सक्षम नहीं हुआ है।",

		weapon_name_missing = "हथियार का नाम मान्यता पार नहीं है।",
		weapon_name_invalid = "`${weaponName}` एक मान्य हथियार का नाम नहीं है।",
		model_name_missing = "मॉडल का नाम मान्यता पार नहीं है।",
		model_name_invalid = "`${modelName}` एक मान्य मॉडल का नाम नहीं है।",
		model_view_enabled = "मॉडल दृश्य सक्षम हुआ है।",
		model_view_disabled = "मॉडल दृश्य अक्षम।",
		invalid_component = "अमान्य कंपोनेंट `${componentName}`।",

		animation_currently_playing = "वर्तमान में एक एनीमेशन चल रहा है।",
		invalid_or_missing_animation_dict = "अवैध या अनुपस्थित एनिमेशन शब्दकोश `${animationDict}`।",
		missing_animation_name = "अवैध या अनुपस्थित एनिमेशन नाम `${animationName}`।",
		invalid_animation_flags = "अवैध एनिमेशन फ्लैग।",
		animation_played = "`${animationDict}` `${animationName}` (फ्लैग: ${flags}) चल रहा है।",
		no_flags = "रहित",

		invalid_coordinates = "अमान्य निर्देशांक।",
		added_coordinates_draw = "खींचने के साथ सूचकांक `${drawId}` के लिए `x: ${x}, y: ${y}, z: ${z}` को जोड़ा गया।",
		no_coordinate_draws_to_destroy = "नष्ट करने के लिए कोई सूचकांक नहीं थे।",
		destroyed_coordinate_draws = "नष्ट हो गए `${drawingCoordinatesAmount}` सूचकांक खींचे।",

		debug_damage_enabled = "घातक debugging सक्षम।",
		debug_damage_disabled = "घातक debugging अक्षम।",

		enabled_network_debug = "एन्टिटी नेटवर्क डिबगिंग सक्षम की गई।",
		disabled_network_debug = "एंटिटी नेटवर्क डीबगिंग अक्षम है।",
		failed_network_debug = "एंटिटी नेटवर्क डीबगिंग सक्षम करने में विफल।",

		network_owner_subscription_no_permissions = "एंटिटी नेटवर्क मालिक की सदस्यता करने का प्रयास अनुमति के बिना किया गया।",

		missing_ipl = "IPL पैरामीटर अनुपस्थित है।",
		enabled_ipl = "आपने सफलतापूर्वक IPL `${ipl}` को सक्षम किया है।",
		disabled_ipl = "आपने सफलतापूर्वक IPL `${ipl}` को अक्षम कर दिया है।",

		enabled_ipl_globally = "आपने सफलतापूर्वक IPL `${ipl}` को वैश्विक रूप से सक्षम किया है।",
		failed_enabled_ipl_globally = "वैश्विक रूप से IPL सक्षम करने में विफल।",
		disabled_ipl_globally = "वैश्विक रूप से आईपीएल `${ipl}` को सफलतापूर्वक अक्षम किया गया।",
		failed_disabled_ipl_globally = "वैश्विक रूप से आईपीएल को अक्षम करने में विफल।",

		enabled_ipls_list = "सक्षम आईपीएल: ${list}।",
		no_ipls_enabled = "कोई आईपीएल सक्षम नहीं।",

		missing_code = "कोड पैरामीटर अनुपस्थित।",
		run_code_success = "कोड सन्निहित को सफलतापूर्वक निष्पादित किया गया।",
		run_code_error = "कोड सन्निहित के द्वारा एक त्रुटि फेंका गया।",

		searching_world = "दुनिया खोज रही:\n${modelNames}",
		copied_clipboard = "कोऑर्डिनेट क्लिपबोर्ड पर कॉपी किए गए।",

		saved_vehicle_model_lists_to_file = "वाहन मॉडल सूची सर्वर पर एक फ़ाइल में सहेजी गई हैं।",

		network_debug_logs_title = "नेटवर्क डिबग चालू कर दिया गया",
		network_debug_logs_details_on = "${consoleName} ने अपना नेटवर्क डिबग चालू किया।",
		network_debug_logs_details_off = "${consoleName} ने अपना नेटवर्क डिबग बंद किया।"
	},

	debug_menu = {
		menu_title = "डीबग मेनू",

		timecycles = "समय चक्र",
		weather = "मौसम",
		reset = "रीसेट",
		refresh_interior = "इंटीरियर ताज़ा करें"
	},

	dna_evidence = {
		taking_sample = "डीएनए सैंपल ले रहे हैं",
		already_taking_sample = "आप पहले से ही किसी खिलाड़ी का डीएनए सैंपल ले रहे हैं।",
		sample_no_player = "कोई खिलाड़ी आसपास नहीं है जिसका आप डीएनए सैंपल ले सकते हैं।",
		sample_no_bags = "आपके पास कोई सबूत बैग नहीं हैं।",
		dna_evidence_bag = "डीएनए सबूत",

		evidence_failed = "डीएनए सबूत लेने में विफल रहा।",

		evidence_text = "सबूत प्रकार: डीएनए सबूत\n${fullName} #${characterId} से डीएनए एकत्र किया गया\n\nअतिरिक्त जानकारी:\n • समयचक्र का समयलेख: ${time}"
	},

	doors = {
		locked = "लॉक किया गया",
		unlocked = "अनलॉक किया गया",
		locked_press_to_unlock = "[${InteractionKey}] लॉकड",
		unlocked_press_to_lock = "[${InteractionKey}] अनलॉकड",
		locking = "लॉकिंग",
		unlocking = "अनलॉकिंग",
		jewelry_store_closed = "गहनों की दुकान वर्तमान में बंद है। कृपया बाद में आएं।",
		bank_closed = "बैंक वर्तमान में बंद है। कृपया बाद में आएं।",
		store_closed = "दुकान वर्तमान में बंद है। कृपया बाद में आएं।",
		failed_to_sync_doors = "दरवाजों को सिंक करने में विफल। कुछ मौजूदा संदर्भ या सिस्टम असुरक्षित होने की वजह से। कृपया पुन: प्रयास करें।",
		saved_doors_to_file = "`${amount}` दरवाजों को सर्वर पर एक फाइल में सहेजा गया।",
		no_nearby_doors = "कोई नजदीकी दरवाजे सहेजने के लिए उपलब्ध नहीं हैं।",
		lockpicking_door = "लॉकपिकिंग दरवाजा",

		debug_doors_on = "दरवाजे डिबगिंग चालू कर दिए।",
		debug_doors_off = "दरवाजे डिबगिंग बंद कर दिए।",
		doors_no_job = "उपलब्ध नहीं है"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] लिफ्ट उपयोग करें",
		elevator_title = "लिफ्ट",
		close_menu = "मेनू बंद करें",
		already_on_floor = "आप पहले से ही इस मंजिल पर हैं।",

		no_elevator_nearby = "कोई लिफ्ट नजदीक नहीं है।",
		elevator_enabled = "दरवाजे सफलतापूर्वक सक्षम किए गए हैं #${elevatorId}।",
		elevator_disabled = "एलिवेटर #${elevatorId} को सफलतापूर्वक निष्क्रिय किया गया।",
		elevator_toggle_failed = "एलिवेटर टॉगल करने में असफल।",
		elevator_enabled_all = "सभी एलिवेटर सफलतापूर्वक सक्षम हुए।",

		out_of_service = "सेवा से बाहर",
		out_of_service_help = "इस एलिवेटर की वर्तमान में सेवा से बाहर है।",

		current = "वर्तमान",
		up = "ऊपर",
		down = "नीचे",

		floor_tunnel_entrance = "टनल प्रवेश",
		floor_underground_tunnel = "भूमिगत टनल",

		floor_lounge = "आराम कक्ष",

		floor_garage = "गेराज",
		floor_lobby = "लॉबी",
		floor_roof = "छत",
		floor_helipad = "हेलीपैड",

		floor_shop = "दुकान",

		floor_casino = "कैसीनो",
		floor_security = "सुरक्षा",
		floor_loading_bay = "लोडिंग बे",
		floor_vault = "खजाना कक्ष",

		floor_second_floor = "दूसरी मंजिल",
		floor_icu = "ICU",
		floor_ground = "ग्राउंड फ़्लोर",
		floor_surgery = "सर्जरी",

		floor_entrance = "प्रवेश द्वार",
		floor_server_room = "सर्वर कमरा",

		floor_50 = "मंज़िल 50",
		floor_49 = "मंज़िल 49",
		floor_47 = "मंज़िल 47",
		floor_basement = "बेसमेंट",

		floor_exclusive_dealership = "एक्सक्लूसिव डीलरशिप",
		floor_mayors_office = "मेयर कार्यालय",
		floor_mechanic_shop = "मैकेनिक की दुकान",

		floor_fourth_floor = "4 वां मंजिल",
		floor_third_floor = "3 वीं मंजिल",

		floor_obelisk = "ओबेलिस्क",
		floor_hangout = "हैंगआउट स्पॉट",
		floor_penthouse = "पेंथाउस",
		floor_theatre_office = "थिएटर कार्यालय",
		floor_psychiatrists_office = "मनोचिकित्सक का कार्यालय",
		floor_nightclub_garage = "नाइटक्लब गैराज",
		floor_submarine = "उपनामा",

		floor_lower_penthouse = "निचला पेंथाउस",
		floor_middle_penthouse = "बीच का पेंथाउस",
		floor_upper_penthouse = "ऊपरी पेंथाउस",

		floor_showroom = "शोरूम",
		floor_office = "कार्यालय",
		floor_doj_office = "डीओजे कार्यालय",

		floor_penthouse_top = "पेंथाउस (शीर्ष मंजिल)",
		floor_penthouse_entrance = "पेंथाउस (प्रवेश)",

		floor_containment = "नियंत्रण कक्ष",

		doj_office = "डीओजे कार्यालय"
	},

	emails = {
		title = "ओपी ई-मेल",
		email_domain = "सैन-एंड्रियास.gov",

		app_title = "ई-मेल",

		error_loading_emails = "आपके ईमेल लोड करने की कोशिश करते समय कुछ गलत हो गया है।",

		new_email_notification = "~o~नया ई-मेल",

		email_label = "ई-मेल",
		password_label = "पासवर्ड",
		set_password = "पासवर्ड सेट करें",
		inbox = "इनबॉक्स",
		outbox = "आउटबॉक्स",
		new_email = "नया ईमेल",

		loading = "लोड हो रहा है...",
		failed_load_email = "ईमेल सामग्री लोड करने में विफल।",

		from_label = "से",
		to_label = "को",

		send_email = "भेजना",

		no_emails = "कोई ईमेल नहीं।",
		to_email = "${ईमेल} को",

		error_no_subject = "इमेल विषय अनुपलब्ध है।",
		error_invalid_target = "अमान्य टारगेट ईमेल।",
		error_subject_too_long = "ईमेल विषय बहुत लंबा है।",
		error_body_too_long = "ईमेल बॉडी बहुत लंबा है।",
		error_body_missing = "ईमेल बॉडी अनुपलब्ध है।",
		error_failed_send = "मेल भेजने में विफल।",
		error_password_empty = "पासवर्ड खाली नहीं हो सकता।",
		error_password_update_failed = "पासवर्ड अपडेट करने में विफल।"
	},

	emote_items = {
		give_item = "[${InteractionKey}] ${itemName} दें",
		received_item = "${firstName} ने आपको ${itemName} दिया।",
		give_item_success = "खिलाड़ी को सफलतापूर्वक ${itemName} दिया गया।",
		give_item_failed = "खिलाड़ी को ${itemName} देने में विफल रहा।"
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] $${price} के लिए ${label} खरीदें",

		confirm_purchase = "खरीदी की पुष्टि करें",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "छोड़ दें, मुझे इसकी ज़रूरत नहीं है",
		accept_purchase = "हां, मैं इसे खरीदना चाहता हूँ",
		accept_purchase_info = "क्या आप वास्तव में इस गाड़ी को खरीदना चाहते हैं? यह कार्रवाई वापस नहीं ली जा सकती।",

		purchased_vehicle = "${label} के लिए $${price} में खरीदी गई।",
		insufficient_funds = "धन की कमी।",
		area_not_clear = "उत्पन्न क्षेत्र स्पष्ट नहीं है।",
		invalid_package = "गलत समर्थक टोकन।",
		something_went_wrong = "कुछ गलत हो गया।",

		failed_vehicle_spawn = "गाड़ी को उत्पन्न करने में विफल रहा। गाड़ी अभी भी आपके गेराज में होगी।",

		next_rotation_in = "अगली बदलाव में समय: ${time}",

		exclusive_dealership_blip = "एक्सक्लूसिव डीलक्स मोटरस्पोर्ट",
		exclusive_buyback_blip = "प्रेस्टीज व्हील्स एक्सचेंज",

		buyback_vehicle_help = "विनिमय के लिए संपर्क करने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		buyback_title = "प्रेस्टीज व्हील्स एक्सचेंज",
		sell_closest_vehicle = "${label} को $${price} (${percent}% कीमत का) बेचना चाहते हैं?",
		deny_sale = "नहीं, मैं इसे रखना चाहता हूँ",
		accept_sale = "हां, मैं सुनिश्चित हूँ",
		accept_sale_description = "क्या आप वाकई $${price} के लिए अपनी गाड़ी को बेचना चाहते हैं? यह कृतिम कार्रवाई वापस नहीं ली जा सकती है।",
		are_you_sure_sell = "क्या आप वाकई इसे बेचना चाहते हैं?",
		no_vehicle_to_sell = "कोई बेचने योग्य गाड़ी के नजदीक नहीं है।",
		vehicle_not_owned = "आप इस गाड़ी के मालिक नहीं हैं।",
		sale_success = "आपने $${price} में अपनी `${label}` गाड़ी को सफलतापूर्वक बेच दिया है।",

		sale_log_title = "ईडीएम खरीद वापसी",
		sale_log_description = "${consoleName} ने अपनी `${label}` का विक्रय $${price} के लिए किया।",

		log_title = "EDM खरीद",
		log_description = "${label} के लिए $${price} में खरीद किया।"
	},

	failures = {
		engine_failure_chance = "इंजन विफलता की चांस को ${chance} पर सेट करें।",
		failure_chance_invalid = "इंजन विफलता की चांस 1 और 1500 के बीच होना चाहिए।",
		engine_failure_reset = "इंजन विफलता की चांस को डिफ़ॉल्ट पर रीसेट करें।"
	},

	fake_ids = {
		press_to_purchase = "Fake-ID खरीदने के लिए ~INPUT_CONTEXT~ दबाएं।",

		store_title = "Fake-ID स्टोर",

		female_id = "महिला फेक-ID",
		male_id = "पुरुष फेक-ID",
		close_menu = "मेनू बंद करें",

		logs_purchased_title = "फेक-आईडी खरीदी गई",
		logs_purchased_details = "${consoleName} ने एक ${type} (${firstName} ${lastName} #${characterId}) खरीदा।",

		something_went_wrong = "कुछ गलत हो गया।",
		failed_not_on_duty = "फेक-आईडी खरीदने के लिए आपको ड्यूटी पर होना चाहिए।",
		failed_not_enough_money = "आपके पास फेक-आईडी खरीदने के लिए पर्याप्त धन नहीं है।",
		purchase_success = "$3,000 में एक फेक-आईडी सफलतापूर्वक खरीदी गई।"
	},

	fingerprint = {
		taking_fingerprint = "उंगली के निशान लगा रहे हैं",
		already_fingerprinting = "आप पहले से ही एक खिलाड़ी का उंगली के निशान लगा रहे हैं।",
		sample_no_player = "आसपास कोई भी खिलाड़ी नहीं है जिसका आप उंगली के निशान ले सकें।",
		sample_no_bags = "आपके पास कोई सबूत थैले नहीं हैं।",
		fingerprint_evidence = "उंगली के निशान",

		evidence_failed = "उंगली के निशान लेने में विफल।",

		evidence_text = "सबूत का प्रकार: उंगली के निशान\n${fullName} #${characterId} का उंगली का निशान\n\nअतिरिक्त जानकारी:\n • उठाने का समयचिह्न: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] आग फूलझड़ी"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "उचित अनुमतियां न होने के कारण फल्ग स्वैप्स को टॉगल करने का प्रयास किया गया।",

		toggled_flag_swap_on = "फ्लैग स्वैप को टॉगल किया गया।",
		toggled_flag_swap_off = "ध्वज स्वैप ऑफ़ किया गया।",

		showing_flags = "फ़्लैग्स दिखा रहा है।",
		not_showing_flags = "फ़्लैग नहीं दिखा रहा है।",

		flag_swap_leaderboard = "फ्लैग स्वैप लीडरबोर्ड",
		ongoing = "चल रहा है",
		not_ongoing = "चल रहा नहीं है",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} फ्लैग्स",
		players_with_most_flags_will_show_here = "जो खिलाड़ी सबसे अधिक फ्लैग्स रखेंगे वहाँ दिखाई देंगे।"
	},

	forcefields = {
		invalid_radius = "अमान्य त्रिज्या (1 से 200 के बीच होनी चाहिए)।",
		failed_create = "फोर्सफ़ील्ड बनाने में विफल।",
		forcefield_marker = "ID: ${id}",
		invalid_forcefield_id = "अवैध फोर्सफील्ड आईडी।",
		failed_destroy = "फोर्सफील्ड नष्ट करने में विफल रहा।",

		create_forcefield_no_permissions = "खिलाड़ी ने एक फोर्सफील्ड बनाने का प्रयास किया लेकिन उनके पास इसे बनाने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		destroy_forcefield_no_permissions = "खिलाड़ी ने एक फोर्सफील्ड को नष्ट करने का प्रयास किया लेकिन उनके पास इसे नष्ट करने के लिए आवश्यक अनुमतियाँ नहीं थीं।"
	},

	fortnite = {
		add_building_no_permissions = "खिलाड़ी ने एक फोर्टनाइट बिल्डिंग जोड़ने का प्रयास किया लेकिन उनके पास इसे जोड़ने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		wipe_buildings_no_permissions = "खिलाड़ी ने Fortnite इमारतों को हटाने का प्रयास किया लेकिन उनके पास इसे करने के लिए अनुमतियां नहीं थीं।",

		no_buildings_in_radius = "${radius} के विकास वर्ग में कोई इमारतें नहीं हैं।",
		no_buildings = "कोई इमारतें नहीं हैं।",
		wiped_buildings_in_radius = "${radius} के विकास वर्ग में ${removedBuildings} इमारतों को हटा दिया गया।",
		wiped_buildings = "${removedBuildings} इमारतों को हटा दिया गया।"
	},

	freecam = {
		enabled_freecam = "फ्रीकैम को सक्षम किया गया।",
		disabled_freecam = "फ्रीकैम को अक्षम कर दिया गया।",
		freecam_failed = "फ्रीकैम को सक्षम करने में विफल। क्या आपके पास नोक्लिप या समरूप प्रणाली सक्षम हैं?",

		freecam_logs_title = "फ्रीकैम टॉगल किया गया",
		freecam_on_logs_details = "${consoleName} ने अपना फ्रीकैम टॉगल किया।",
		freecam_off_logs_details = "${consoleName} ने अपना फ्रीकैम बंद कर दिया।",

		track_player_logs_title = "ट्रैकिंग",
		track_player_logs_details = "${consoleName} ने ऑर्बिटकैम का उपयोग कर ${targetName} को अपना ट्रैकिंग टार्गेट सेट किया।",

		freecam_no_permission = "अनुमतियां न होने के कारण उन्होंने अपना फ्रीकैम टॉगल करने का प्रयास किया।",
		track_player_no_permission = "अनुमतियां न होने के कारण वे एक खिलाड़ी का ट्रैकिंग करने का प्रयास किया जिसके लिए फ्रीकैम का उपयोग किया जाता है।",

		freecam_inactive = "आप वर्तमान में फ्रीकैम में नहीं हैं।",
		added_point = "कैमरा पॉइंट जोड़ा गया अंक ${index} पर (ट्रांजिशन: ${transition}मिलीसेकंड)।",
		disable_freecam = "प्ले बटन दबाने से पहले फ्रीकैम बंद करें।",
		not_enough_points = " आपको प्ले करने के लिए कम से कम 2 पॉइंट्स की आवश्यकता है।",
		already_replaying = "आप पहले से इसमें कैमरा स्टोर कर चुके हैं।",
		cleared_points = "सभी कैमरा पॉइंट हटा दिए गए हैं।",
		replaced_point = "कैमरा पॉइंट बदल दिया गया है इंडेक्स ${index} पर (ट्रांजिशन:${transition}मिलीसेकंड)।",
		moved_to_point = "फ्रीकैम को कैमरा पॉइंट ${index} पर ले जाया गया है (ट्रांजिशन:${transition}मिलीसेकंड)।",
		invalid_point_index = "अमान्य कैमरा बिंदु सूचकांक।"
	},

	frisk = {
		frisk_no_player = "आस-पास ऐसा कोई खिलाड़ी नहीं है जिसे आप जांच सकते हैं।",
		already_frisking = "आप पहले से ही एक खिलाड़ी की जांच कर रहे हैं।",
		frisk_failed = "खिलाड़ी की जांच विफल हुई।",
		frisking = "खिलाड़ी की जांच हो रही है",

		frisk_category_0 = "लगता है कि कोई हथियार नहीं है।",
		frisk_category_1 = "संभवतः कोई हथियार हो सकता है।",
		frisk_category_2 = "एक हथियार होने की लगता है।",
		frisk_category_3 = "एक बड़ा हथियार निश्चित रूप से है।",
		frisk_category_4 = "निश्चित रूप से एक बड़ा हथियार है।"
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] ${fruit} को चुनें",
		picking_fruit = "${fruit} को चुना जा रहा है",

		shake_tree = "पेड़ को हिलाने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		shaking_tree = "पेड़ को हिलाया जा रहा है",

		tree_klonk = "पेड़ से कुछ गिरा और आपके सिर पर गिर गया।"
	},

	gas_masks = {
		gas_grenade = "गैस ग्रेनेड",
		in_gas_circle = "गैस सर्किल में हैं!",
		not_in_gas_circle = "गैस सर्किल में नहीं हैं।",
		gas_time_left = "आपके पास गैस मास्क के ${gasTime} सेकंड शेष हैं।",
		hold_to_take_gas_mask_off = "गैस मास्क उतारने के लिए ~INPUT_VEH_HEADLIGHT~ दबाएँ।",
		hold_to_take_gas_mask_off_holding = "गैस मास्क उतारने के लिए दबाए रखें।"
	},

	gps = {
		altitude = "ऊंचाई",
		latitude = "अक्षांश",
		longitude = "देशांतर",
		speed = "गति",

		distance = "दूरी",
		heading = "दिशा",

		reset_target = "GPS टारगेट रीसेट करें।",
		set_gps_target = "GPS टारगेट को ${x}, ${y} पर सेट करें।",
		gps_blip = "जीपीएस लक्ष्य",
		no_gps_item = "आपके पास जीपीएस नहीं है।",

		collar_no_target = "इस कॉलर में फोन लिंक नहीं है।",
		collar_timeout = "आपने अभी एक पिंग भेजा है, दूसरा भेजने से पहले थोड़ा प्रतीक्षा करें।",
		collar_sent = "${firstName} ${lastName} (${phoneNumber}) को सफलतापूर्वक पिंग किया गया।",

		mph = "mph",
		kph = "किलोमीटर प्रति घंटा",
		ft = "फ़ीट",
		m = "मीटर",
		km = "किलोमीटर",
		mi = "मील",
		deg = "डिग्री"
	},

	gravity = {
		gravity_success_on = "${consoleName} के लिए गुरुत्वाकर्षण बंद कर दिया गया।",
		gravity_success_off = "${consoleName} के लिए गुरुत्वाकर्षण फिर से चालू कर दिया गया।",
		gravity_client_failed = "${consoleName} के लिए गुरुत्वाकर्षण टॉगल करने में असफल।",
		gravity_failed = "गुरुत्वाकर्षण टॉगल करने की कोशिश करते समय कुछ गलत हुआ।",
		invalid_server_id = "अवैध सर्वर आईडी।",
		yourself = "खुद"
	},

	gravity_gun = {
		name_override = "गुरुत्वाकर्षण-बन्दूक",

		failed_item_spawn = "गुरुत्वाकर्षण बंदूक वस्तु को उत्पन्न करने में विफल।"
	},

	grills = {
		campfire = "कैम्पफायर",
		use_campfire = "[${InteractionKey}] कैम्पफायर का उपयोग करें",
		grill = "ग्रिल",
		use_grill = "[${InteractionKey}] ग्रिल का उपयोग करें"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] सिक्का डालें",
		using_gumball_machine = "सिक्का डाल रहे हैं",
		not_enough_money = "आपके पास गमछा खरीदने के लिए पर्याप्त धन नहीं है।",
		something_went_wrong = "गमछा खरीदने का प्रयास करते समय कुछ गलत हो गया।",

		flavor = "गमछा (${flavor})"
	},

	gun_running = {
		insert_key = "कुंजी डालें: ${key}",
		wrong_key = "आपने गलत कुंजी इस्तेमाल की है।",
		decrypting = "डिक्रिप्ट हो रहा है",
		guns_disabled = "गन चलाना वर्तमान में अक्षम है।",
		high_level_cooldown = "एफआईबी सर्वर के साथ लिंक स्थापित करने में विफल हुआ, बाद में पुनः प्रयास करें।",
		failed_start_run = "गन चलाने में विफल हो गया।",
		hack_timeout = "सर्वर से कनेक्शन खत्म हो गया, दुबारा प्रयास करें।",

		drop_blip = "बंदूक खंड",

		drill_container = "खंड को खोलने के लिए ~INPUT_CONTEXT~ दबाएं।",

		drilling_container = "खंड खोलना",
		failed_drill = "खंड खोलने में विफल रहा।",
		drill_success = "खंड को सफलतापूर्वक खोल लिया और 1x ${item} पाया।",

		started_run_logs_title = "बंदूक रन",
		started_run_logs_details = "${consoleName} ने बंदूक रन हैक शुरू किया।",
		finished_run_logs_title = "बंदूक रन ड्रॉप",
		finished_run_logs_details = "${consoleName} ने बंदूक खंड को खोला और 1x ${item} प्राप्त किया।"
	},

	gun_trader = {
		press_e_to_talk = "जिम से बात करने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		trader_closed = "जिम की दुकान वर्तमान में बंद है।",

		trader_locked = "जिम उसकी दुकान खोलने से पहले कुछ चीजें मांगता है।",
		unlock_trader = "जिम को चीज प्रदान करें।",

		purchase = "खरीद",
		out_of_stock = "स्टॉक समाप्त",

		failed_trader_closed = "हथियार खरीदने में विफल, जिम की दुकान बंद है।",
		failed_no_stock = "हथियार खरीदने में विफल, कोई स्टॉक शेष नहीं है।",
		failed_no_money = "हथियार खरीदने में विफल, आपके पास पर्याप्त नकदी नहीं है।",
		failed_something_went_wrong = "हथियार खरीदने में विफल, कुछ गड़बड़ हो गई।",
		failed_trader_not_locked = "अनलॉक करने में विफल, जिम की दुकान पहले से ही अनलॉक है।",
		failed_no_item = "अनलॉक करने में विफल, जिम को उस आइटम की जरूरत नहीं है।",
		failed_no_enough_items = "अनलॉक करने में विफल, आपके पास उस आइटम की पर्याप्त मात्रा नहीं है।",

		bought_gun_logs_title = "जिम की गन दुकान",
		bought_gun_logs_details = "${consoleName} ने जिम से $${price} में 1x ${itemName} खरीदा।",

		trader_active = "ट्रेडर (ओपन)",
		trader_inactive = "ट्रेडर (क्लोज्ड)",

		slogan_1 = "गन फाइटिंग के पहले नियम को याद रखें...गन होना चाहिए!",
		slogan_2 = "गनों के केवल दो दुश्मन होते हैं: जंग करने वालों और पोलिटिकल लीडर।",
		slogan_3 = "जब संदेह हो,.. बाहर निकाल लो!",
		slogan_4 = "हाथ में बंदूक रखना, फोन पर कॉप से बेहतर है।",

		copyright = "कॉपीराइट © 2009-2016 जिम'स गन शॉप एनसी। सभी अधिकार सुरक्षित"
	},

	hacking = {
		local_disk = "स्थानीय डिस्क (सी :)",
		network = "नेटवर्क",
		external_device = "बाहरी डिवाइस (जे :)",
		hack_connect = "हैककनेक्ट.एक्सई",
		brute_force = "ब्रूट फोर्स.एक्सई",

		my_computer = "मेरा कंप्यूटर",
		power_off = "पावर ऑफ",

		password_cracked = "पासवर्ड क्रैक कर दिया गया है!",
		brute_force_failed = "ब्रूट फोर्स फेल!",

		writing_data = "डेटा को बफर में लिखा जा रहा है...",
		executing_code = "खतरनाक कोड चल रहा है...",
		memory_leak_detected = "मेमोरी लीक पता चल गया है, बंद करना जारी है..."
	},

	halloween = {
		is_in_school = "वह स्कूल में है: ${isInSchool}",
		yes = "हाँ",
		no = "नहीं",
		press_to_hide_in_locker = "लॉकर में छुपने के लिए ~INPUT_CONTEXT~ दबाएं।",
		locker_is_occupied = "लॉकर अवरुद्ध है।",
		press_to_exit_locker = "लॉकर से बाहर निकलने के लिए ~INPUT_CONTEXT~ दबाएं।",
		failed_to_start_escape_room = "एस्केप रूम शुरू करने में विफल रहा।",
		started_escape_room = "${playerAmount} खिलाड़ियों के साथ एस्केप रूम शुरू।",
		start_escape_room_missing_permissions = "खिलाड़ी ने एक एस्केप रूम शुरू करने का प्रयास किया लेकिन उनमें इसे शुरू करने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		escape_instructions = "पूरा होने पर, दरवाजे आनलॉक हो जाएंगे और आप इस इमारत से बाहर निकल सकेंगे।",
		answer_the_phone = "फोन उठाओ।",

		-- NOTE: temp
		none = "कोई नहीं"
	},

	health = {
		successfully_revived_player = "${consoleName} को सफलतापूर्वक फिर से जीवित कर दिया।",
		successfully_revived_player_removed_injuries = "${consoleName} को सफलतापूर्वक फिर से जीवित कर दिया और उनकी चोटों को दूर कर दिया।",
		successfully_revived_everyone = "सफलतापूर्वक सभी को फिर से जीवित कर दिया।",
		successfully_revived_everyone_removed_injuries = "सफलतापूर्वक सभी को फिर से जीवित कर दिया और सभी के चोटों को दूर कर दिया।",
		failed_to_revive = "कमांड `/revive` को सही तरीके से नहीं चलाया जा सका।",
		revive_player_not_staff = "एक खिलाड़ी ने दूसरे खिलाड़ी को बचाने का प्रयास किया, लेकिन उन्हें ऐसा करने के लिए अनुमति नहीं थी।",
		revive_self_not_staff = "एक खिलाड़ी ने अपने आप को बचाने का प्रयास किया, लेकिन उन्हें ऐसा करने के लिए अनुमति नहीं थी।",
		revived_self_removed_injuries_title = "खुद को बचाया और घायली को हटाया",
		revived_self_removed_injuries_details = "${consoleName} ने खुद को बचाया और अपनी घायली को हटा दी।",
		revived_self_title = "स्वयं को पुनर्जीवित करें",
		revived_self_details = "${consoleName} ने खुद को पुनर्जीवित कर दिया।",
		revived_everyone_removed_injuries_title = "सभी को पुनर्जीवित करें और घायलियों को हटाएं",
		revived_everyone_removed_injuries_details = "${consoleName} ने सभी को पुनर्जीवित किया और उनकी घायलियों को हटा दिया।",
		revived_everyone_title = "सभी को पुनर्जीवित करें",
		revived_everyone_details = "${consoleName} ने सभी को पुनर्जीवित कर दिया।",
		revived_player_removed_injuries_title = "खिलाड़ी को पुनर्जीवित करें और घायलियों को हटाएं",
		revived_player_removed_injuries_details = "${consoleName} ने ${targetConsoleName} को पुनर्जीवित कर दिया और उनकी घायलियों को हटा दिया।",
		revived_player_title = "जीवित हुआ खिलाड़ी",
		revived_player_details = "${consoleName} ने ${targetConsoleName} को जीवित किया।",
		get_recent_deaths_not_staff = "खिलाड़ी ने हाल की मृत्यु की जानकारी प्राप्त करने का प्रयास किया, लेकिन इसे करने के अनुमति उसे नहीं थी।",
		get_player_last_death_not_staff = "खिलाड़ी ने एक खिलाड़ी की अंतिम मृत्यु की जानकारी प्राप्त करने का प्रयास किया, लेकिन इसे करने के अनुमति उसे नहीं थी।",
		recent_deaths = "हाल की मृत्यु",
		no_recent_deaths = "कोई हाल ही में मृत्यु नहीं हुई है।",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} ${timer} सेकंड पहले मर गया था।",
		target_user_not_found = "लक्षित उपयोगकर्ता नहीं मिला।",
		no_server_id_sent = "कोई सर्वर आईडी नहीं भेजी गई।",
		no_permissions = "कोई अनुमतियां नहीं हैं।",
		user_not_found = "उपयोगकर्ता नहीं मिला।",
		player_death = "खिलाड़ी की मौत",
		player_death_recent = "${consoleName} ${timer} सेकंड पहले मर गया था।",
		no_recent_death = "${consoleName} का हाल ही में मौत नहीं हुआ है।",
		death_alcohol_poisoning = "आप शराब के विषाक्त होने के कारण बेहोश हो गए।",
		character_has_hardcore_died = "${fullName} मर गया है। आप एक अन्य चरित्र का चयन कर सकते हैं।",

		death_timer_override_already_set_to = "मृत्यु टाइमर ओवरराइड पहले से ही `${time}` पर सेट है।",
		set_death_timer_override = "मृत्यु टाइमर ओवरराइड अब `${time}` सेट किया गया है।",
		time_parameter_is_invalid = "'टाइम' पैरामीटर अमान्य है।",
		death_timer_override_removed = "मृत्यु टाइमर ओवरराइड हटा दिया गया है।",
		no_death_timer_override_set = "कोई मृत्यु टाइमर ओवरराइड सेट नहीं हुआ है।",

		invalid_distance = "अमान्य रिवाइव रेंज (1 से 50 के बीच होनी चाहिए)।",
		no_players_in_range = "कोई खिलाड़ी दूरी ${distance}m के भीतर नहीं हैं।",
		successfully_revived_range = "सफलतापूर्वक ${distance}m रेडियस के ${amount} खिलाड़ी को जीवित किया गया है।",
		failed_revive_range = "प्रदर्शन नहीं कर सके खिलाड़ियों को फिर से जीवित कराना।",
		range_revive_not_staff = "खिलाड़ी ने एक निश्चित सीमा में अन्य खिलाड़ियों को फिर से जीवित करने का प्रयास किया था, लेकिन सही अनुमतियों के बिना ऐसा नहीं कर सकता है।"
	},

	hitmarkers = {
		hitmarkers_enabled = "हिटमार्कर सक्षम।",
		hitmarkers_disabled = "हिटमार्कर अक्षम।"
	},

	hud = {
		mph = "मील/घंटा",
		kmh = "किमी/घंटा",
		knots = "नॉट्स",
		ft = "फीट",
		m = "मीटर",
		belt = "सीट बेल्ट",
		limiter = "गति सीमा नियंत्रक",
		fuel = "ईंधन",
		nitro = "नाइट्रो",
		battery = "बैटरी",
		fps = "फ़्रेम/सेकंड",
		ping = "पिंग",
		autopilot = "ऑटोपायलट",
		ground_asl = "मात्रात्मक ऊंचाई/समुद्र तल ({$इकाई})",
		heading = "शीर्षक",
		gear = "गियर",
		rpm = "आरपीएम",
		degrees = "°सी",
		degrees_f = "°एफ",
		steps_walked_deaths = "${stepsWalked} कदम ~t~/~w~ ${deaths} डाउन",
		altitude_temperature = "${altitude} ${unit} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "ऑक्सीजन शेष: ${timer}",

		muted = "म्यूटेड",

		fps_unit = "फ्रेम प्रति सेकंड",
		ping_unit = "मिस्त्र",

		smart_warnings = "चेतावनी: ${warnings}!",
		dehydrated = "वायुशोषित",
		starving = "भूखा",
		injured = "चोटिल",
		seriously_injured = "गंभीर रूप से चोटिल",
		incapacitated = "अक्षम",
		stressed = "तनावित",

		and_seperator = "और",

		toggle_phone_gps_off = "फोन जीपीएस बंद कर दिया।",
		toggle_phone_gps_on = "फोन जीपीएस चालू कर दिया।",

		advanced_hud_on = "एडवांस्ड हड चालू कर दिया।",
		advanced_hud_off = "एडवांस्ड हड बंद कर दिया।",

		hud_gauges_on = "हड गेज चालू कर दिए।",
		hud_gauges_off = "हड गेज बंद कर दिए।"
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] खाद्य चुनिए",
		skinning_animal = "मृत्यु पाया जानवर चमड़ा उतार रहा है।",
		meat_too_damaged = "यह जानवर का मांस बहुत नुकसान पहुंच चुका है।",
		animal_is_being_skinned = "जानवर का चमड़ा उतारा जा रहा है।"
	},

	identification = {
		los_santos = "लॉस सैंटोस",
		citizen_card = "नागरिक कार्ड",
		first_name = "पहला नाम",
		last_name = "अंतिम नाम",
		gender = "लिंग",
		gender_male = "पुरुष",
		gender_female = "महिला",
		date_of_birth = "जन्म तिथि",
		citizen_id = "नागरिक आईडी",

		citizenship = "नागरिकता",
		citizenship_value = "यूएसए",
		surname = "उपनाम",
		issued_on = "जारी की गई",
		expires_on = "समाप्त होता है",

		month_1 = "जनवरी",
		month_2 = "फ़रवरी",
		month_3 = "मार्च",
		month_4 = "अप्रैल",
		month_5 = "मई",
		month_6 = "जून",
		month_7 = "जुलाई",
		month_8 = "अगस्त",
		month_9 = "सितंबर",
		month_10 = "अक्टूबर",
		month_11 = "नवंबर",
		month_12 = "दिसंबर",

		citizen_card_details = "${firstName} ${lastName} | जन्म तिथि: ${dateOfBirth} | लिंग: ${gender} | नागरिक आईडी: ${characterId}",
		just_showed_citizen_card = "आपने अभी नागरिक कार्ड दिखाया है। कृपया थोड़ी देर प्रतीक्षा करें।",

		hunting_license = "शिकार लाइसेंस",
		hunting_license_details = "शिकार लाइसेंस | ${firstName} ${lastName} | नागरिक ID: ${characterId}",
		fishing_license = "मछली पकड़ने का लाइसेंस",
		fishing_license_details = "मछली पकड़ने का लाइसेंस | ${firstName} ${lastName} | नागरिक ID: ${characterId}",
		pilot_license = "पायलट लाइसेंस",
		pilot_license_details = "पायलट लाइसेंस | ${firstName} ${lastName} | नागरिक ID: ${characterId}",
		weapon_license = "शस्त्र लाइसेंस",
		weapon_license_details = "शस्त्र लाइसेंस | ${firstName} ${lastName} | नागरिक ID: ${characterId}",
		just_showed_license = "आपने अभी लाइसेंस दिखाया है। कृपया थोड़ा इंतजार करें।",

		just_showed_badge = "आपने अभी बैज दिखाया है। कृपया थोड़ा इंतजार करें।",
		sasp_badge = "SASP बैज",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | पद: ${positionName}",
		bcso_badge = "BCSO बैज",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | पद: ${positionName}",
		sahp_badge = "SAHP बैज",
		sahp_badge_details = "SAHP | ${firstName} ${lastName} | पद: ${positionName}",
		iaa_badge = "IAA बैज",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | पद: ${positionName}",
		fib_badge = "एफआईबी बैज",
		fib_badge_details = "एफआईबी | ${firstName} ${lastName} | पद: ${positionName}",
		swat_badge = "एसडब्ल्यूएटी बैज",
		swat_badge_details = "एसडब्ल्यूएटी | ${firstName} ${lastName} | पद: ${positionName}",
		management_badge = "प्रबंधन बैज",
		management_badge_details = "प्रबंधन | ${firstName} ${lastName} | पद: ${positionName}",
		ems_badge = "ईएमएस आईडी",
		ems_badge_details = "ईएमएस | ${firstName} ${lastName} | पद: ${positionName}",
		doctor_badge = "डॉक्टर आईडी",
		doctor_badge_details = "डॉक्टर | ${firstName} ${lastName} | पद: ${positionName}",
		bcfd_badge = "बीसीएफडी बैज",
		bcfd_badge_details = "बीसीएफडी | ${firstName} ${lastName} | पद: ${positionName}",
		state_security_badge = "राज्य सुरक्षा आईडी",
		state_security_badge_details = "राज्य सुरक्षा विभाग | ${firstName} ${lastName}",
		doj_badge = "डीओजे आईडी",
		doj_badge_details = "डीओजे | ${firstName} ${lastName} | पद: ${positionName}",
		doc_badge = "डॉक बैज",
		doc_badge_details = "DOC | ${firstName} ${lastName} | पद: ${positionName}",

		badge_type_sasp = "सैन एंड्रेस स्टेट पुलिस",
		badge_type_bcso = "ब्लेन काउंटी शेरिफ कार्यालय",
		badge_type_sahp = "सैन एंड्रेस हाईवे पेट्रोल",
		badge_type_iaa = "अंतर्निहित कार्यालय एजेंसी",
		badge_type_fib = "फेडरल जाँच ब्यूरो",
		badge_type_swat = "विशेष हथियार और टैक्टिक्स",
		badge_type_management = "SASP प्रबंधन",
		badge_type_ems = "आपातकालीन चिकित्सा सेवाएं",
		badge_type_doctor = "मेडिकल रेजिडेंसी",
		badge_type_bcfd = "ब्लेन काउंटी फायर डिपार्टमेंट",
		badge_type_state_security = "राज्य सुरक्षा विभाग",
		badge_type_doj = "न्याय विभाग",
		badge_type_doc = "कारा विभाग",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_sahp = "SAHP",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "प्रबंधन",
		badge_type_short_ems = "ईएमएस",
		badge_type_short_doctor = "डॉक्टर",
		badge_type_short_bcfd = "बीसीएफडी",
		badge_type_short_state_security = "डब्ल्यूएसडी",
		badge_type_short_doc = "DOC"
	},

	import_export = {
		press_to_access = "आयात / निर्यात मेनू तक पहुँच करने के लिए ~INPUT_CONTEXT~ दबाएँ।",

		pound = "पौंड",
		pounds = "पौंड",
		minutes = "मिनटों",

		total = "कुल",
		header = "कायो पेरिको - आयात / निर्यात",
		header_small = "कायो पेरिको से समझौते भेजें और उठाएं - त्वरित और आसान।",

		loading = "लोड हो रहा है...",

		order_arrived = "पहुंच गया",
		claim = "दावा करें",

		claim_cayo = "Cayo पर दावा",
		claim_lsia = "LSIA पर दावा",

		big_goods = "बड़े सामान",
		go_postal = "पोस्टल जाओ",
		caipira = "कैपिरा एयरलाइंस",

		no_items = "भेजने के लिए कोई आइटम नहीं हैं।",

		confirm_dialog = "क्या आप वाकई ${total}lbs के लिए $${price} भेजना चाहते हैं? इस शिपमेंट को रद्द नहीं किया जा सकता।",
		confirm = "हां",

		no_active_order = "आपके पास कोई सक्रिय शिपमेंट नहीं है।",
		order_not_completed = "आपकी शिपमेंट अभी तक नहीं आई है।",

		order_claimed = "आपने अपनी शिपमेंट का दावा किया है।",

		not_enough_items = "आपके पास शिप करने के लिए पर्याप्त माल नहीं है।",
		not_enough_money = "आपके पास शिपमेंट बनाने के लिए पर्याप्त पैसे नहीं हैं।",
		already_has_order = "आपके पास पहले से ही एक सक्रिय शिपमेंट है।",
		something_went_wrong = "कुछ गड़बड़ हो गई।",

		order_success = "आपकी शिपमेंट अपनी राह पर है! यह ${minutes} मिनटों में पहुंच जाएगी।",

		created_shipment_title = "शिपमेंट बनाया गया",
		created_shipment_details = "${consoleName} ने ${company} के लिए ${weight} पाउंड की शिपमेंट बनाई है जो ${price} डॉलर की है।",

		claimed_shipment_title = "शिपमेंट दावा किया",
		claimed_shipment_details = "${consoleName} ने ${weight}lbs के साथ ${company} के लिए एक शिपमेंट को दावा किया है।",

		blip_label = "आयात / निर्यात"
	},

	injuries = {
		inspect_no_player = "आस-पास कोई खिलाड़ी नहीं है जिसे आप निरीक्षण कर सकते हैं।",
		already_inspecting = "आप पहले से ही एक खिलाड़ी का निरीक्षण कर रहे हैं।",
		inspect_failed = "खिलाड़ी का निरीक्षण विफल हुआ।",
		inspecting = "खिलाड़ी का निरीक्षण कर रहे हैं",
		no_injuries = "घायल या खून नहीं",
		patient_bleeding = "रोगी से खून निकल रहा है।",
		injury = "${label} चोट"
	},

	instances = {
		instance_created_added = "ID `${instanceId}` के साथ एक नमूना बनाएं (जोड़े गए खिलाड़ियों: ${serverIds})।",
		instance_created = "ID `${instanceId}` के साथ एक इंस्टेंस बनाया गया।",
		instance_creation_failed = "एक इंस्टेंस बनाने में विफल हुआ।",
		instance_destroyed = "ID `${instanceId}` के साथ इंस्टेंस नष्ट किया गया।",
		instance_destruction_failed = "इंस्टेंस को नष्ट करने में विफल हुआ।",
		instance_id_parameter_invalid = "इंस्टेंस आईडी पैरामीटर अमान्य है।",
		added_player_to_instance = "${consoleName} को इंस्टेंस ID `${instanceId}` के साथ जोड़ा गया।",
		failed_to_add_player_to_instance = "खिलाड़ी को इंस्टेंस में जोड़ने में विफल हुआ।",
		server_id_parameter_invalid = "सर्वर आईडी पैरामीटर अमान्य है।",
		removed_player_from_instance = "${consoleName} को आईडी `${instanceId}` वाली इंस्टेंस से हटा दिया गया।",
		failed_to_remove_player_from_instance = "इंस्टेंस से खिलाड़ी को हटाने में विफल रहा।",
		instance_players = "आईडी `${instanceId}` वाली इंस्टेंस पर खिलाड़ी: `${players}`।",
		failed_to_get_instance_players = "इंस्टेंस से खिलाड़ियों को प्राप्त करने में विफल रहा।",
		no_players = "कोई खिलाड़ी नहीं।",

		instance_hud = "ईंस्टेंस आईडी: ${instanceId}",

		create_instance_not_developer = "खिलाड़ी को इंस्टेंस बनाने की कोशिश की गई थी, लेकिन वह डेवलपर नहीं था।",
		destroy_instance_not_developer = "खिलाड़ी नें एक इंस्टेंस को नष्ट करने का प्रयास किया लेकिन वह डेवलपर नहीं थे।",
		add_player_to_instance_not_developer = "खिलाड़ी नें एक इंस्टेंस में खिलाड़ी को जोड़ने का प्रयास किया लेकिन वह डेवलपर नहीं थे।",
		remove_player_from_instance_not_developer = "खिलाड़ी नें एक इंस्टेंस से एक खिलाड़ी को हटाने का प्रयास किया लेकिन वह डेवलपर नहीं थे।",
		get_players_from_instance_not_developer = "खिलाड़ी नें एक इंस्टेंस से खिलाड़ियों को प्राप्त करने का प्रयास किया लेकिन वह डेवलपर नहीं थे।"
	},

	interiors = {
		in_interior = "${interiorId} में हैं (${portals} पोर्टल्स).",
		in_room_id = "कमरे में: ${roomId} (${roomName}).",
		total_interiors = "कुल इंटीरियर: ${totalInteriors} (${totalInteriorPortals} कुल पोर्टल्स).",
		total_unloaded_interiors = "कुल अनलोडेड इंटीरियर: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} कुल पोर्टल्स).",
		portal_text = "id=${portalId} f=${flags}"
	},

	inventory = {
		access_trunk = "झाड़ू तक पहुंचने के लिए यहां जांचें",

		used = "इस्तेमाल किया गया",
		added = "जोड़ा गया",

		pounds = "पाउंड",

		store = "स्टोर",
		gas_station = "गैस स्टेशन",
		gas_station_backdoor = "गैस स्टेशन के पिछले दरवाजे",
		cleaning_station = "क्लीनिंग स्टेशन",
		grocery_store = "किराना स्टोर",
		penthouse_fridge = "फ्रिज",
		mug_shots = "मग़ शॉट्स",
		prison_store = "जेल स्टोर",
		fruit_vendor = "फल विक्रेता",
		supermarket = "सुपरमार्केट",
		island_store = "आइलैंड स्टोर",
		travel_agency = "यात्रा एजेंसी",
		island_bar = "आइलैंड बार",
		burger_bar = "बर्गर बार",
		tool_store = "टूल स्टोर",
		gun_store = "गन स्टोर",
		discount_store = "डिस्काउंट स्टोर",
		gun_store_with_shooting_range = "रेंज के साथ गन स्टोर",
		green_wonderland = "हरा खजाना",
		irish_pub = "आयरिश पब",
		bar = "बार",
		midnight = "मिडनाइट ट्यूनरशॉप",
		cinema = "सिनेमा",
		strip_club = "स्ट्रिप क्लब",
		police_store = "पुलिस स्टोर",
		fib_store = "FIB स्टोर",
		police_badge_store = "पुलिस बैज डेस्क",
		doc_badge_store = "डॉक बैज डेस्क",
		flower_store = "स्टेसी का फुल एम्पोरियम",
		gift_store = "डेल पेरो गिफ्ट्स",
		ems_store = "EMS स्टोर",
		drug_store = "ड्रग कैबिनेट",
		ems_badge_store = "EMS बैज डेस्क",
		doj_badge_store = "DOJ बैज डेस्क",
		state_security_store = "राज्य सुरक्षा स्टोर",
		pharmacy = "फार्मेसी",
		chop_shop = "चॉप शॉप",
		courthouse = "कोर्टहाउस",
		burger_shot = "बर्गर शॉट",
		burger_shot_fridge = "बर्गर शॉट फ़्रिज",
		erp_shop = "ERP दुकान",
		pet_shop = "पालतू जानवर दुकान",
		bean_machine = "बीन मशीन",
		hunting_store = "हंटिंग स्टोर",
		fishing_store = "फ़िशिंग स्टोर",
		los_santos_golf_club = "लॉस सैंटोस गोल्फ क्लब",
		arcade_bar = "आर्केड बार",
		japanese_restaurant = "जापानी रेस्तरां",
		["945_studios"] = "945 Studios",
		grain_mill = "अनाज की चक्की",
		pd_prefix = "पुलिस विभाग",
		ems_prefix = "ईमरजेंसी मेडिकल सेवा",
		government_prefix = "सरकार",
		wonderland_prefix = "वंडरलैंड",
		br_prefix = "ब्र",
		inventory_overweight = "आपकी इन्वेंट्री ऑवरवेट है!",
		vehicle_locked = "वाहन ताला है।",
		press_to_access_store = "स्टोर तक पहुंचने के लिए ~INPUT_REPLAY_SHOWHOTKEY~ दबाएं।",
		press_to_access_locker = "अपने निजी लॉकर तक पहुंचने के लिए ~INPUT_REPLAY_SHOWHOTKEY~ दबाएं।",
		press_to_access_shared_storage = "साझा भंडारण तक पहुंचने के लिए ~INPUT_REPLAY_SHOWHOTKEY~ दबाएं।",

		inspect_weapon = "इस ${itemName} का सीरियल नंबर `${itemId}` होने के अलावा नज़रअंदाज किया जा रहा है।",
		inspect_weapon_broken = "इस ${itemName} का सीरियल नंबर `${itemId}` है, यह पूरी तरह से टूट गया है।",

		searching_dumpster = "कचरे की खोज",

		nameable_title = "नामज्ञेय आइटम का नाम:",

		locker_restricted = "यह आइटम आपके लॉकर में फिट नहीं होता है।",

		press_to_access_shredder = "[${InteractionKey}] श्रेडर तक पहुँचने के लिए दबाएं।",

		invalid_item_id = "अवैध आइटम आईडी।",
		item_not_found = "आईडी `${itemId}` के साथ आइटम नहीं मिल सका।",
		item_lookup = "${inventoryName}:${inventorySlot} में ${label} (${itemId}) वर्तमान में है।",

		big_inventory_disabled = "कैरेक्टर इन्वेंटरी स्लॉट्स को डिफ़ॉल्ट मॉड पर रीसेट करें।",
		big_inventory_enabled = "आपके कैरेक्टर इन्वेंटरी स्लॉट का आकार अस्थायी रूप से बढ़ा दिया गया है।",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ ${label} तक पहुंचने के लिए दबाएँ",

		burgershot_counter = "बर्गरशॉट काउंटर",

		inventory_name_missing = "अनुपलब्ध इंवेंटरी नाम पैरामीटर।",

		shredder_title = "श्रेडर",
		shredder_description = "चेतावनी: यहां ले जाने वाले किसी भी आइटम को तुरंत हटा दिया जाएगा और उसे पुनः प्राप्त नहीं किया जा सकता।",

		npc_vehicle_inventory = "NPC इंवेंटरी",

		store_help = "कुछ खरीदने के लिए, सेकेंडरी इंवेंटरी से किसी आइटम को अपनी इंवेंटरी में खींचें।",
		store_tax = "स्टोर टैक्स",
		store_tax_percentage = "${tax}%",

		missing_job = "आपके पास इस इन्वेंटरी का उपयोग करने के लिए आवश्यक नौकरी नहीं है।",

		item_is_broken = "यह आइटम टूटा हुआ है।",
		battle_royale_item = "यह आइटम केवल बैटल रॉयल मैच में उपयोग किया जाना संभव है।",
		battle_royale_item_disallowed = "यह आइटम बैटल रॉयल मैच में अनुमत नहीं है।",

		broken_food = "यह आइटम खराब हो गया है।",
		broken_drugs = "यह आइटम समाप्त हो गया है।",
		vape_empty = "यह वेप खाली है।",

		craft_combine = "<i>${output}</i> बनाना",
		combining = "बनाना",

		carve_jack_o_lantern = "<i>जैक-ओ-लांटर्न</i> काटना",
		crush_cocoa_beans = "कोको बीन को कुचलें",
		mix_hot_chocolate = "गर्म चॉकलेट मिक्स करें",
		crush_raw_ruby = "कच्चा रूबी को कुचलें",
		crush_raw_sapphire = "कच्चा सफायर को कुचलें",

		search = "खोजें",
		amount = "मात्रा",
		use = "उपयोग",
		close = "बंद करें",

		done = "हो गया",
		burnt = "जला हुआ",
		danger = "खतरा",
		fuel = "ईंधन: ${fuel}",

		item_does_stack = "यह आइटम स्टैक होता है।",
		item_does_not_stack = "यह आइटम स्टैक नहीं होता है।",
		individual_weight = "व्यक्तिगत वजन",
		stack_amount = "स्टैक मात्रा",

		logs_secondary_inventory_title = "सेकंडरी इन्वेंटरी खोली गई",
		logs_secondary_inventory_details = "${consoleName} ने नाम `${inventoryName}` वाले एक सेकेंडरी इन्वेंटरी खोली।",
		logs_ground_inventory_created_title = "ग्राउंड इन्वेंटरी बनाई गई",
		logs_ground_inventory_created_details = "${consoleName} ने नाम `${inventoryName}` वाली ग्राउंड इन्वेंटरी बनाई।",

		logs_item_moved_title = "आइटम स्थानांतरित किया गया",
		logs_item_moved_details = "${consoleName} ने ${moveAmount} बार ${itemLabel} को इन्वेंटरी ${startInventory}:${startSlot} से ${endInventory}:${endSlot} में स्थानांतरित किया।",

		logs_item_purchased_title = "आइटम खरीदा गया",
		logs_item_purchased_no_tax_details = "${consoleName} ने $${purchaseCost} में ${purchaseAmount} बार `${itemLabel}` खरीदा।",
		logs_item_purchased_tax_details = "${consoleName} ने $${purchaseCost} के लिए ${purchaseAmount} बार `${itemLabel}` खरीदा जिसमें ${salesTaxPercentage}% बिक्री कर के अतिरिक्त $${taxCost} का भुगतान भी किया।",

		radius_invalid = "`${radius}` एक मान्य रेडियस मान नहीं है।",
		wiped_all_ground_inventories = "${inventoriesWiped} भूमि वस्तु सूचियों को मिटाया गया।",
		wiped_nearby_ground_inventories = "${radius} के भीतर एक त्रिज्या में ${inventoriesWiped} भूमि वस्तु सूचियों को मिटाया गया।",
		failed_to_wipe_ground_inventories = "जमीन के इनवेंट्री को हटाने में विफल रहा।",
		no_ground_inventories = "कोई जमीन की इनवेंट्री नहीं थी।",
		no_ground_inventories_within_radius = "`${radius}` की दूरी के भीतर कोई जमीन की इनवेंट्री हटाने के लिए उपलब्ध नहीं थी।",

		wipe_inventories_not_staff = "खिलाड़ी ने इनवेंट्री हटाने का प्रयास किया, लेकिन इसे करने की अनुमति नहीं थी।",

		logs_wiped_all_ground_inventories_title = "सभी जमीन की इनवेंट्री हटाई गई",
		logs_wiped_all_ground_inventories_details = "${consoleName} ने सभी जमीन की इनवेंट्री हटाई।",

		logs_wiped_nearby_ground_inventories_title = "नज़दीकी जमीनी जगह के इन्वेंटरी को हटाया गया",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} ने `${radius}` तक के नज़दीकी जमीनी जगह की सभी इन्वेंटरी को हटा दिया।",

		logs_combined_title = "आइटम का योगदान",
		logs_combined_details = "${consoleName} ने ${inputs} को मिलाकर 1x ${output} बनाया।",

		press_use_campfire = "[${InteractionKey}] कैंपफायर उपयोग करें",
		use_campfire = "कैंपफायर उपयोग करें",

		dumpster_sandwich = "मोल्डी सैंडविच",
		dumpster_beer = "स्टेल बीयर",
		dumpster_milk = "समाप्त हुए कबूतर का दूध",
		dumpster_meat = "धूल भरा मांस (थोड़ा सा दग्गी)",
		dumpster_fries = "पुराने फ्रेंच फ्राइज",
		dumpster_brownies = "सूखे हुए ब्राउनीज",
		dumpster_pizza_slice = "फंगस्त पिज्जा स्लाइस",
		dumpster_banana = "बालों वाला केला (बहुत ही मुलायम)",

		-- items & item descriptions
		body_armor = "शरीर की रक्षा",
		body_armor_description = "लड़ाई के लिए तैयार रहिए, या सिर्फ LS की सड़कों पर किसी भी दिन के लिए।",
		first_aid_kit = "पहली मदद की डिब्बी",
		first_aid_kit_description = "\"खुद से कुछ करो\" डॉक्टर किट।",
		bandages = "बैंडेज",
		bandages_description = "सभी चोटों और खरोंचों के लिए।",
		oxygen_tank = "ऑक्सीजन टैंक",
		oxygen_tank_description = "एक फेफड़ों को फैलाने वाला पैक।",
		ifak = "IFAK",
		ifak_description = "\"पुलिस अधिकारियों के लिए एक शक्तिशाली पैक जो अपने स्थान पर सुरक्षित है। 1 से अधिक लेने से EZ clapping और जब क्रिमिनल गिर जाएंगे तब participation trophies देते रहेंगे।\"<br><br>-जो, 2020",

		citizen_card = "सिटिजन कार्ड",
		citizen_card_description = "पहचान, हथियार और ड्राइविंग लाइसेंस के रूप में काम करता है।",
		phone = "फोन",
		phone_description = "never:tm:",
		radio = "रेडियो",
		radio_description = "सभी मेटागेमर्स के लिए उपयोगी संपत्ति!",
		smart_watch = "स्मार्ट घड़ी",
		smart_watch_description = "हर जगह नकदी देने से तंग आ गए हैं? बस अपनी स्मार्ट घड़ी का उपयोग करें! इसमें एक बिल्ट इन कम्पास, वॉच, जीपीएस, और स्टेप-ट्रैकर भी होता है! सिर्फ 2 बजे रात को दौड़ने न जाएँ।",
		tablet = "टैबलेट",
		tablet_description = "बहुत बड़ा फोन।",

		gps = "जीपीएस",
		gps_description = "अपनी सभी गैजेट आवश्यकताओं को पूरा करें।",

		gps_collar = "जीपीएस कलर",
		gps_collar_description = "अपने पालतू पशुओं के ट्रैकिंग के लिए एक जीपीएस कलर।",

		boosting_tablet = "बूस्टिंग टैबलेट",
		boosting_tablet_description = "यह टैबलेट एकदम से वैध अनुबंध प्राप्त करने के लिए प्रयोग किया जाता है।",

		hunting_license = "शिकार लाइसेंस",
		hunting_license_description = "शिकार के लिए हंटिंग लाइसेंस।",
		fishing_license = "मछली पकड़ने का लाइसेंस",
		fishing_license_description = "मछली पकड़ने के लिए एक मछली पकड़ने का लाइसेंस।",
		pilot_license = "पायलट लाइसेंस",
		pilot_license_description = "एक पायलट लाइसेंस जहां विमानों और सामान को उड़ाया जाता है।",
		weapon_license = "हथियार लाइसेंस",
		weapon_license_description = "उच्च श्रेणी के हथियार को प्रभवित और ले जाने के लिए हथियार लाइसेंस।",

		sasp_badge = "एसएएसपी बैज",
		sasp_badge_description = "सैन एंड्रियस पुलिस विभाग के अधिकारियों के लिए एक बैज।",
		sahp_badge = "एसएएचपी बैज",
		sahp_badge_description = "सैन एंड्रियस हाईवे पेट्रोल के अधिकारियों के लिए एक बैज।",
		bcso_badge = "ब्लेन काउंटी शेरिफ कार्यालय बैज",
		bcso_badge_description = "ब्लेन काउंटी शेरिफ कार्यालय के डेपुटी के लिए एक बैज।",
		iaa_badge = "आंतरिक मामलों एजेंसी बैज",
		iaa_badge_description = "आंतरिक मामलों एजेंसी के एजेंट के लिए एक बैज।",
		fib_badge = "संघीय जांच ब्यूरो बैज",
		fib_badge_description = "संघीय जांच ब्यूरो के एजेंट के लिए एक बैज।",
		swat_badge = "SWAT बैज",
		swat_badge_description = "विशेष हथियार और तैकतिक विभाग के अधिकारियों के लिए एक बैज।",
		management_badge = "प्रबंधन बैज",
		management_badge_description = "SASP प्रबंधन विभाग के एजेंटों के लिए एक बैज।",
		ems_badge = "EMS आईडी",
		ems_badge_description = "EMS पैरामेडिक के लिए एक आईडी।",
		doctor_badge = "डॉक्टर आईडी",
		doctor_badge_description = "डॉक्टरों के लिए एक आईडी।",
		bcfd_badge = "BCFD",
		bcfd_badge_description = "ब्लेन काउंटी फायर विभाग के अग्निशमन अधिकारियों के लिए एक बैज।",
		state_security_badge = "राज्य सुरक्षा आईडी",
		state_security_badge_description = "एक आईडी राज्य सुरक्षा एजेंट्स के लिए।",
		doj_badge = "DOJ बैज",
		doj_badge_description = "इस बैज का उपयोग न्याय विभाग के कर्मचारियों द्वारा किया जाता है।",
		doc_badge = "डॉक बैज",
		doc_badge_description = "कारा विभाग के कर्मचारियों के लिए एक बैज।",

		radio_chop_shop = "चॉप शॉप रेडियो",
		radio_chop_shop_description = "यह रेडियो 'हॉट' वाहनों के बारे में जानकारी प्राप्त करने के लिए उपयोग किया जाता है जो कि चॉप शॉप के अस्तित्व के लंबित लोगों द्वारा चलाया जाता है।",

		binoculars = "दूरबीन",
		binoculars_description = "लॉस संतोस में उन सभी लोगों के लिए एक जरूरी गैजेट जो वहाँ छिपकर प्रकट होते हैं।",
		photo_camera = "फोटो कैमरा",
		photo_camera_description = "निकॉन और इग्ना ने मार्केट में नवीनतम पेशेवर कैमरा विकसित किया है। इसके एडवांस्ड लेंस (70-300mm f / 4.5-5.6E) के साथ, आप छोटी चीजों को भी कैद कर सकते हैं।",

		remote_camera = "रिमोट कैमरा",
		remote_camera_description = "एक कैमरा जो कहीं भी रखा जा सकता है और दूरस्थ से देखा जा सकता है।",
		remote_monitor = "रिमोट मॉनिटर",
		remote_monitor_description = "एक पोर्टेबल मॉनिटर जो रिमोट कैमरों को देखने के लिए उपयोग किया जा सकता है।",

		handcuffs = "हथकड़ियाँ",
		handcuffs_description = "उस पूर्ण ईआरपी अनुभव के लिए।",
		bolt_cutter = "बोल्ट कटर",
		bolt_cutter_description = "ईआरपी अपेक्षाकृत कम मज़ा था...",
		drill = "ड्रिल",
		drill_description = "मैं जमीन पर कुछ लोगों को देख सकता हूं, जिन्हें इसकी बहुत आवश्यकता होगी ... क्योंकि उनके पास कुछ स्क्रू धीमी है।",
		umbrella = "छतरी",
		umbrella_description = "अपने भीतरी पॉपिन्स को चैनल करें।",
		watch = "घड़ी",
		watch_description = "सावधानी के बिना कोई समय नहीं।",
		compass = "कम्पास",
		compass_description = "43.3068 एन 0.7668 पश्चिम।",
		map = "नक्शा",
		map_description = "यह आपको दिखाता है कि आप कहाँ जा रहे हैं और कहाँ से आ रहे हैं। क्या आप वहीं थे?",
		glass_breaker = "आपातकालीन विंडो तोड़ने वाला उपकरण",
		glass_breaker_description = "आपातकाल में कार की खिड़कियों को तोड़ने के लिए प्रयुक्त होता है।",

		picture = "तस्वीर",
		picture_description = "अपने दोस्तों के साथ सभी यादें एकत्रित करें।",

		brochure = "पुस्तिका",
		brochure_description = "शहर में आरंभ करने के लिए आपकी मदद करने वाली एक सहायक पुस्तिका।",

		basic_repair_kit = "बेसिक रिपेयर किट",
		basic_repair_kit_description = "यह चीजें काम करती हैं, लेकिन सिर्फ हल्के से।",
		advanced_repair_kit = "एडवांस्ड रिपेयर किट",
		advanced_repair_kit_description = "टूटे हुए आत्माओं को मरम्मत करने के लिए उपयोग किया जाता है।",
		basic_lockpick = "बेसिक लॉकपिक",
		basic_lockpick_description = "लॉक को खोलने के लिए उपयोग किया जाता है।",
		advanced_lockpick = "एडवांस्ड लॉकपिक",
		advanced_lockpick_description = "हाथ से पकड़ सकते हो तो पकड़ो, जिन लोगों ने इन्हें बचाने का प्रयास किया उन्हें भागो।",
		cleaning_kit = "क्लीनिंग किट",
		cleaning_kit_description = "अपने वाहन को साफ करने के लिए पूर्ण, या आपके चारों ओर के खून स्थानों को सुखाने के लिए पूर्ण।",

		microphone_bug = "माइक्रोफोन बग",
		microphone_bug_description = "बातचीत में घुसने के लिए उपयोग किया जाता है।",
		vehicle_tracker = "वाहन ट्रैकर",
		vehicle_tracker_description = "यह ट्रैकर बिल्कुल माइकल की जरूरत है, जिसे सात साल से अधिक समय से शक है कि उसकी पत्नी अमांडा उसके टेनिस कोच के साथ चुंबन का आनंद ले रही है।",
		device_scanner = "डिवाइस स्कैनर",
		device_scanner_description = "निकटवर्ती भयावह डिवाइसों के लिए स्कैन करने के लिए उपयोग किया जाता है।",
		radio_decryptor = "रेडियो डिक्रिप्टर",
		radio_decryptor_description = "रेडियो से जुड़े तब डिक्रिप्ट करता है।",

		paper_bag = "कागज़ी थैला",
		paper_bag_description = "ग्रोसरी रखने या शायद किसी के सिर, मरे हुए या जीते हुए के लिए पूर्ण है।",
		burger_shot_delivery = "बर्गर शॉट मील",
		burger_shot_delivery_description = "एक शानदार संग्रह उन सभी नाजुक मासूम खुशियों का जो वे सर्विंग करते हैं।",
		bean_machine_delivery = "बीन मशीन वितरण",
		bean_machine_delivery_description = "यहाँ वहाँ एक छोटे से कॉफी शॉप से आश्चर्यजनक खुशियों से भरी बैग।",

		ear_defenders = "कान संरक्षक",
		ear_defenders_description = "शोर के लिए अपने कानों की सुरक्षा के लिए उपयोग किया जाता है।",

		clothing_bag = "कपड़े का बैग",
		clothing_bag_description = "कभी भी फैशन आपातकालीन स्थिति का चिंता न करें! इस कपड़ों के बैग से आप अपने पसंदीदा पहनावे को स्टोर कर सकते हैं और कहीं भी तुरंत इस्तेमाल कर सकते हैं। यह बैग एक फेयरी गॉडमदर की जैसी सभी जादूई शक्तियों से भरा है, बस bibbidi-bobbidi-boo फ़ीका है।",

		raw_morganite = "रॉ मोर्गनाइट",
		raw_morganite_description = "माइन से निकला हुआ मोर्गनाइट।",
		raw_ruby = "रॉ रूबी",
		raw_ruby_description = "माइन से निकली हुई रूबी, प्राकृतिक रूप में।",
		raw_sapphire = "रॉ सफायर",
		raw_sapphire_description = "माइन से निकली हुई सफायर, प्राकृतिक रूप में।",
		raw_emerald = "रॉ एमरल्ड",
		raw_emerald_description = "माइन से निकला हुआ एमरल्ड, प्राकृतिक रूप में।",

		ruby_dust = "रूबी का धूलि",
		ruby_dust_description = "रूबी का धूलि।",
		sapphire_dust = "सफायर का धूलि",
		sapphire_dust_description = "सफायर से उत्पन्न धूल।",

		morganite = "मोर्गनाइट",
		morganite_description = "कट और चमकदार मोर्गनाइट।",
		ruby = "रूबी",
		ruby_description = "कट और चमकदार रूबी।",
		sapphire = "सफायर",
		sapphire_description = "कट और चमकदार सफायर।",
		emerald = "एमरल्ड",
		emerald_description = "कट और चमकदार एमरल्ड।",

		ring = "अंगूठी",
		ring_description = "बस एक खाली अंगूठी।",

		morganite_ring = "मोर्गनाइट अंगूठी",
		morganite_ring_description = "एक सुंदर अंगूठी जिसमें बड़ा मोर्गनाइट होता है। शादियों, सबसे अच्छे दोस्तों या पूर्ण अजनबी के लिए पूर्ण।",
		ruby_ring = "रूबी रिंग",
		ruby_ring_description = "एक सुंदर अंगूठी जिसमें बड़ा रूबी होता है। शादियों, सबसे अच्छे दोस्तों या पूर्ण अजनबियों के लिए पूर्ण।",
		sapphire_ring = "सेफायर रिंग",
		sapphire_ring_description = "एक सुंदर अंगूठी जिसमें बड़ा सेफायर होता है। शादियों, सबसे अच्छे दोस्तों या पूर्ण अजनबियों के लिए पूर्ण।",
		emerald_ring = "एमरल्ड रिंग",
		emerald_ring_description = "एक सुंदर अंगूठी जिसमें बड़ा एमरल्ड होता है। शादियों, सबसे अच्छे दोस्तों या पूर्ण अजनबियों के लिए पूर्ण।",
		diamond_ring = "डायमंड रिंग",
		diamond_ring_description = "एक सुंदर अंगूठी जिसमें मध्य में एक बड़ा हीरा होता है। शादियों, सबसे अच्छे दोस्तों या पूर्ण अजनबियों के लिए पूर्ण।",

		gemstone_scanner = "जेमस्टोन स्कैनर",
		gemstone_scanner_description = "जेमस्टोनों को स्कैन करने के लिए उपयोगी।",

		extended_clip = "एक्सटेंडेड क्लिप",
		extended_clip_description = "रीलोडिंग कम करें।",
		grip = "ग्रिप",
		grip_description = "ग्रिप जो बैरल के लिए उवू होता है।",
		sight = "होलोग्राफिक साइट",
		sight_description = "बुरी निशान लगाने के लिए।",
		scope = "स्कोप",
		scope_description = "ताकत को बढ़ावा देने के लिए ताकत को बढ़ावा देना।",
		suppressor = "ध्वनि रोकणी (Suppressor)",
		suppressor_description = "धमाक्का धमाक्का से अब करो प्यू प्यू (Bang bang more like pew pew).",
		flashlight = "फ़्लैशलाइट (Flashlight)",
		flashlight_description = "अंधेरे में देखना टाइप बीट (See in the dark type beat).",
		extended_pistol_clip = "एक्सटेंडेड क्लिप (पिस्तौल) (Extended Clip (Pistol))",
		extended_pistol_clip_description = "ज़्यादा रिलोडिंग नहीं (Less reloading).",
		extended_smg_clip = "एक्सटेंडेड क्लिप (एसएमजी) (Extended Clip (SMG))",
		extended_smg_clip_description = "ज़्यादा रिलोडिंग नहीं (Less reloading).",
		extended_shotgun_clip = "एक्सटेंडेड क्लिप (शॉटगन) (Extended Clip (Shotgun))",
		extended_shotgun_clip_description = "ज़्यादा रिलोडिंग नहीं (Less reloading).",
		drum = "ड्रम मैग (Drum Mag)",
		drum_description = "अब और रिलोड करने की ज़रूरत नहीं (Never reload anymore).",
		pistol_sight = "पिस्तौल ड्राइन",
		pistol_sight_description = "खराब एम को ठीक करने के लिए।",

		aluminium_plate = "एल्यूमिनियम प्लेट",
		aluminium_plate_description = "चेतावनी: गोलियों से हिफाजत नहीं करता ... क्रैकहेड।",
		aluminium_rod = "एल्यूमिनियम रॉड",
		aluminium_rod_description = "इसके साथ अपने दोस्तों का सिर्फ मजाक उड़ाएँ।",
		copper_nugget = "तांबे का कोढ़ा",
		copper_nugget_description = "मिठाई जैसी स्वर्णिम ब्राउन चीज का छोटा पुरज़ा।",
		copper_wire = "तांबे की तार",
		copper_wire_description = "इलेक्ट्रॉनिक के लिए लगभग कुछ भी उपयोग किया जा सकने वाले वर्सेटाइल तार।",
		lens = "लेंस",
		lens_description = "चश्मों और माइक्रोस्कोप में उपयोग किया जाता है, आप नर्द हो।",
		polymer_resin = "पॉलिमर रेज़िन",
		polymer_resin_description = "पीने वाले तरह का नहीं, लेकिन फिर भी बहुत अच्छा।",
		screws = "स्क्रू",
		screws_description = "क्या कर रहे हो? स्क्रू कर रहे हो?",
		spring = "स्प्रिंग",
		spring_description = "नहीं पता क्यों, लेकिन लोगों को इन्हें साफ़ करने का बहुत शौक है?",

		grenade_shell = "ग्रेनेड शैल",
		grenade_shell_description = "एक ग्रेनेड के शैल।",
		grenade_pin = "ग्रेनेड पिन",
		grenade_pin_description = "एक ग्रेनेड के पिन।",

		paint = "पेंट",
		paint_description = "बाड़ों और घरों के लिए उपयोगी है, बस इसे सांस न लें।",
		paint_brush = "पेंट ब्रश",
		paint_brush_description = "पेंटिंग के लिए उपयोगी है।",

		skin_patriotic = "राष्ट्रवादी त्वचा",
		skin_patriotic_description = "सभी आप लाल रक्तधारी अमेरिकी वहाँ बाहर के लिए।",
		skin_brushstroke = "ब्रश की धार वाली त्वचा",
		skin_brushstroke_description = "सभी आप कला प्रेमियों के लिए वहाँ बाहर।",
		skin_skull = "खोपड़ी वाली त्वचा",
		skin_skull_description = "सभी आप प्रबल बच्चों के लिए वहाँ बाहर।",
		skin_leopard = "तेंदुआ त्वचा",
		skin_leopard_description = "आप सभी जानवर प्रेमियों के लिए।",
		skin_zebra = "ज़ेबरा त्वचा",
		skin_zebra_description = "आप सभी जानवर प्रेमियों के लिए।",
		skin_geometric = "ज्यामिति त्वचा",
		skin_geometric_description = "आप सभी गणित नर्डों के लिए।",

		refillable_bottle = "रिफिलेबल बॉटल",
		refillable_bottle_description = "सच का साथ बचाओ, समुद्री कछुए बचाओ।",

		capri_sun = "काप्री सन",
		capri_sun_description = "आपके बचपन के स्वादिष्ट ट्रीट।",

		gumball = "गमबॉल",
		gumball_description = "एक गमबॉल, मैं आपको और क्या कहुँगा?",

		water = "पानी",
		water_description = "खतरा! डाईहाइड्रोजन मोनोक्साइड अजगर के जैसा होता है जो रंगहीन और बूँदादार होता है। अनावश्यक श्वसन DHMO के लिए घातक हो सकता है। इसके ठोस रूप के लंबे समय तक साथ रहने से गंभीर ऊतक क्षति होती है। DHMO के संपादन के लक्षण ज्यादा पसीना और मूत्र बाहरीकरण और शरीर के तत्वों का तंत्रिक असंतुलन शामिल हो सकते हैं।",
		hamburger = "हैम्बर्गर",
		hamburger_description = "अमेरिका का स्वाद!",
		belgian_fries = "बेल्जियन फ़्राइज़",
		belgian_fries_description = "बेहतर स्वाद के लिए, \"फ्रेटास\" केवल मैसेजिंग उनसे @Giv3n#0753 पर संदेश भेजें।",
		coke = "कोक",
		coke_description = "पाब्लो?",
		wonder_waffle = "वंडर वाफल",
		wonder_waffle_description = "वीगन, लैक्टोज़ फ्री, डेयरी फ्री, एग फ्री, ग्लूटेन फ्री, ऑर्गेनिक, एंटीबायोटिक फ्री, सोया फ्री, नो फ्रुक्टोज़, नट फ्री, नॉन जीएमए, शुगर फ्री, फैट फ्री और लो कार्ब",
		cheeseburger = "चीज़बर्गर",
		cheeseburger_description = "मोटा दम, तला हुआ, रबड़ीदार, डबल डेलक्स, सोगी डबल, तली हुई डबल, काफी ठीक, बड़ा, तला हुआ, ठंडा और तला हुआ, सामान्य डबल, बड़ा मोटा, सबसे जुस्त, किंग-साइज़, डेलक्स, मामूली रूप से अच्छा, डबल, तला हुआ, साधारण पुराना, तिहाई रूप से मोटा, रबड़ीदार, ज्यूसी, पापगल, साधारण, फैट, बड़ा मोटा, नि:शुल्क",
		donut = "डोनट",
		donut_description = "बीड़ा मध्य में क्यों है?",
		green_apple = "हरे सेब",
		green_apple_description = "यह एक लाल बैल के कैन के समान कुछ नहीं है।",
		sandwich = "सैंडविच",
		sandwich_description = "यह व्यगन है।",
		taco = "टाको",
		taco_description = "एल ब्रायन की विशेषता।",
		smores = "स्मोर्स",
		smores_description = "हाँ",
		tic_tac = "टिक टैक",
		tic_tac_description = "आक्सी? नहीं अधिकारी, मैं बस टिक टैक खा रहा हूँ!",
		pizza_slice = "पिज्जा स्लाइस",
		pizza_slice_description = "थोड़ी सी पिज़्ज़ा टुकड़ा आपके लिए।",
		hot_dog = "हॉट डॉग",
		hot_dog_description = "अपने आखिरी भोजन की तरह इस ग्लिजी को बिना कुछ सोचे झपकटे मैं खा जाएँ।",
		nachos = "नाचोस",
		nachos_description = "एन्करनेशन के लिए पर्याप्त नाचोस!!",
		vanilla_ice_cream = "वेनिला आइस क्रीम",
		vanilla_ice_cream_description = "जीवन में स्वादहीन बीच की महिलाओं के लिए।",
		chocolate_ice_cream = "चॉकलेट आइस क्रीम",
		chocolate_ice_cream_description = "आदरणीय स्वाद, अत्याधुनिक होना नहीं।",
		vanilla_milkshake = "वेनिला मिल्कशेक",
		vanilla_milkshake_description = "डायनर क्लासिक, बर्गर और फ्राइज के साथ महान!",
		chocolate_milkshake = "चॉकलेट मिल्कशेक",
		chocolate_milkshake_description = "एक अद्भुत दिखने वाला शेक, सिर्फ आशा करते हैं कि आप एक सिप लेने से पहले सीआईए के पीछे नहीं होंगे...",

		dog_food = "कुत्ते का खाना",
		dog_food_description = "कुत्तों और अन्य संबंधित श्वानों द्वारा सेवन के लिए विशेष रूप से तैयार और उनके लिए खाद्य पदार्थ होता है।",
		cat_food = "बिल्ली का भोजन",
		cat_food_description = "बिल्लियों के लिए खाने का भोजन। बिल्लियों के लिए उनके आहारी पोषक तत्वों की विशेष आवश्यकताएं होती हैं।",
		dog_treats = "कुत्ते के लिए स्नैक",
		dog_treats_description = "आपके पसंदीदा पालतू कुत्ते के लिए स्वादिष्ट स्नैक।",
		cat_treats = "बिल्ली के लिए स्नैक",
		cat_treats_description = "स्थानीय पुश्त के लिए लाजवाब स्नैक।",

		burger_buns = "बर्गर बन्स",
		burger_buns_description = "इन मोटे बनस के बीच थोड़ा मीट स्लाइड करें।",
		cheese = "चीज़",
		cheese_description = "लैक्टोजंटोलेरेंट होने का कलंक लगाएं, हार जानें।",
		lettuce = "सलाद पत्ता",
		lettuce_description = "उस हरे पौधे की चीज़ जो वे गलीप्रदर्शन पर नहीं बेचते हैं।",
		patty = "बर्गर पैटी",
		patty_description = "एक दिन एक छोटा आदमी इस मांस के लिए गुप्त सूत्र खोजेगा, जब तक, फ्राई कुक को फ्लिप करते रहें।",
		potato = "आलू",
		potato_description = "रूस से जो कुछ भेजा जाता है जिसमें एक भी एके राइफल या मेल ऑर्डर दुल्हन नहीं होती।",
		raw_fries = "कच्चे फ्राइज",
		raw_fries_description = "मुख्य रूप से एक आलू होता है, लेकिन किसी ने इसे कुछ बनाने के लिए पर्याप्त प्रयास नहीं किया है।",
		raw_patty = "कच्चा पैटी",
		raw_patty_description = "90% असली मांस है, बाकी 10% पैकेजिंग अनुवाद में खो गए हैं।",

		apple = "सेब",
		apple_description = "दुष्ट डॉक्टरों से दूर रखें!",
		banana = "केला",
		banana_description = "शंकात्मक है",
		cherry = "चेरी",
		cherry_description = "(यदि यह आपकी पसंद है) ऊपर वाला।",
		kiwi = "कीवी",
		kiwi_description = "फल नहीं जानवर। (A-32 से भिन्न है।)",
		mango = "आम",
		mango_description = "कृपया गोली न मारें! बस आम को जाने दीजिए...",
		orange = "संतरा",
		orange_description = "आप बानाना कहने के लिए नहीं खुश होंगे।",
		peach = "आड़ू",
		peach_description = "एक गांड नहीं।",
		pineapple = "अनानास",
		pineapple_description = "पेन पाइनेप्पल ऐपल पेन।",
		pomegranate = "अनार",
		pomegranate_description = "हम इसे सही तरीके से ठीक तरीके से लिखने के लिए खुश हो जाएंगे।",
		strawberry = "स्ट्रॉबेरी",
		strawberry_description = "आमतौर पर खेतों में पाया जाता है... हमेशा।",
		watermelon = "तरबूज",
		watermelon_description = "क्या यह पानी है या फिर एक खरबूजा है? हम कभी नहीं जानेंगे।",

		banana_peel = "केले का छिलका",
		banana_peel_description = "अगर फिसल गए तो खतरनाक हो सकता है।",

		beer = "बीयर",
		beer_description = "गुस्साइए वाला पानी।",
		vodka = "वोडका",
		vodka_description = "रूसी शैली, सुका एबंट।",
		tequila = "टेकिला",
		tequila_description = "चिंता न करें, आपके पेय में कुछ भी नहीं मिलाया गया था। ( ͡° ͜ʖ ͡°)",
		whiskey = "व्हिस्की",
		whiskey_description = "केवल शीर्ष स्तर के शराबी लोगों के लिए।",
		cider = "साइडर",
		cider_description = "वयस्क सेब का रस।",
		rum = "रम",
		rum_description = "कारिबियन के बादशाहों को याद करने का समय!",
		absinthe = "अब्‍सिंथ",
		absinthe_description = "चेतावनी: शराब है। बच्चों को केवल मध्यम मात्रा में पेय पदार्थ पिएं।",
		wine = "वाइन",
		wine_description = "अंगूर का रस।",

		moonshine = "मूंसाइन",
		moonshine_description = "सरकार को जाने बिना नशा करने का सबसे अच्छा तरीका।",
		yeast_packet = "खमीर पैकेट",
		yeast_packet_description = "शराब बनाने के लिए उपयोग किया जाने वाला खमीर का पैकेट।",

		kimchi = "किमची",
		kimchi_description = "एक तीखा कोरियाई साइड डिश है जो फरमेंटेड सब्जियों से बनाया जाता है।",
		fish_sauce = "मछली चटनी",
		fish_sauce_description = "मछली से बनाई गई एक मसाला है जो फरमेंटेशन से बनाई जाती है।",

		pumpkin = "कद्दू",
		pumpkin_description = "एक बड़ा भूरा सब्जी है जिसे हैलोवीन के लिए इस्तेमाल किया जाता है।",
		cabbage = "पत्तागोभी",
		cabbage_description = "घर पर किमची बनाने के लिए पूर्ण है।",

		smoothie = "स्मूदी",
		smoothie_description = "फलों, सब्जियों और इलेक्ट्रोलाइट्स का एक सही मिश्रण है जो अधिक गेमिंग का कारण बने हुए बेहोश को ठीक कर सकता है।",
		blender = "ब्लेंडर",
		blender_description = "द अल्टिमेट स्मूथी ब्लेंडर: क्योंकि एक अच्छी तरह से संतुलित नाश्ता विजय की चाबी है (और स्वादिष्ट स्मूदी को कभी नहीं चोट पहुंचाने वाला है)।",

		cocoa_beans = "कोको बीन्स",
		cocoa_beans_description = "छोटे बीन जो चॉकलेट बनाने के लिए प्रयुक्त होती हैं।",
		cocoa_powder = "कोको पाउडर",
		cocoa_powder_description = "कोको बीनों से बनाया गया पाउडर।",
		hot_chocolate = "हॉट चॉकलेट",
		hot_chocolate_description = "कोको पाउडर और दूध से बनाई गई एक गर्म पेय।",

		jack_o_lantern = "जैक ओ' लॉन्टर्न",
		jack_o_lantern_description = "एक त्वचा के साथ कद्दू का एक चेहरा निकाल दिया गया।",

		cigarette = "सिगरेट",
		cigarette_description = "यदि आप धूम्रपान नहीं करते हैं तो आप एक पुस्सी हैं।",
		cigarette_pack = "सिगरेट पैक",
		cigarette_pack_description = "आपके पिता के लिए जिन्हें सिगरेट की लत ने जकड़ लिया है (उम्मीद है कि वे वापस आते हैं जब उन्हें लाने जाते हैं)।",

		cocaine_bag = "कोकेन बैग",
		cocaine_bag_description = "कोलंबियाई इतिहास के छोटे टुकड़े।",
		cocaine_brick = "कोकेन ईंट",
		cocaine_brick_description = "कोलंबियाई इतिहास का एक टुकड़ा।",
		joint = "ज्वाइंट",
		joint_description = "420 ब्लेज इट डॉग",
		oxy = "ऑक्सी",
		oxy_description = "क्या आपके पास कुछ दवाएं हैं? कमर दर्द में मददगार होता है।",
		antibiotics = "एंटीबायोटिक्स",
		antibiotics_description = "आपको उन संक्रमणों और कीटाणुओं से छुटकारा दिलाने में मदद करना।",
		pain_killers = "दर्द निवारक",
		pain_killers_description = "यह पीक बिक्री का समय है, लेस, मुझे मेरी दवाएं चाहिए।",
		weed_seeds = "बीज",
		weed_seeds_description = "ब्रो, 420 उगाएं।",
		weed_1q = "वीड 1q",
		weed_1q_description = "420 भाई",
		weed_1oz = "वीड 1oz",
		weed_1oz_description = "1680 भाई",

		oxy_prescription = "ऑक्सी नुस्खा",
		oxy_prescription_description = "असामाजिक ऑक्सी नुस्खा।",

		brownies = "ब्राउनीज़",
		brownies_description = "गोय, फोमी, और डबल चॉकलेट की मात्रा, अत्यधिक किक की संकेत तक, आपको वास्तव में बैठ कर सभी जीवन के प्रश्नों पर प्रश्न उठाने पर मजबूर कर दें।",

		ejector_seat = "इज़ेक्टर सीट",
		ejector_seat_description = "एजेक्टो सीटो क्योंकि!",
		tuner_chip = "ट्यूनर चिप",
		tuner_chip_description = "मैं स्पीड हूं।",

		chip = "चिप",
		chip_description = "कूल लुकिंग हैकर चिप।",
		decryption_key_red = "लाल डिक्रिप्शन कुंजी",
		decryption_key_red_description = "क्या आप जानते हैं? लाल माफिया वास्तव में केवल कुत्तों का एक संगठन है।",
		decryption_key_green = "हरा डेक्रिप्शन कुंजी",
		decryption_key_green_description = "क्या आप जानते हैं? पहले कोक हरे रंग का था।",
		decryption_key_blue = "नीली डेक्रिप्शन कुंजी",
		decryption_key_blue_description = "क्या आप जानते हैं? नीले पैरों वाली एक चील होती है? संदर्भ: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "बैलिस्टिक ढाल",
		ballistic_shield_description = "यह ढाल आपके गैंगलैंड वाले क्षेत्रों में वेंचर करते समय उपयोग की जानी चाहिए।",

		pet_porg = "पोर्ग पल",
		pet_porg_description = "आपके कंधे पर टिकने और आपकी कंपनी करने के लिए प्यारा पोर्ग पल। प्यारा और घुम्मकद, यह छोटा सा पशु आपके चेहरे पर हमेशा मुस्कुराहट लाएगा।",
		pet_duck = "खुशहाल सहायक क्वैकटास्टिक",
		pet_duck_description = "इसकी खुशमिज़ाज क्वैक और फूफा पंखों के साथ, यह बतख किसी भी यात्रा के लिए एक उपयुक्त सहायक है। यह आपकी कंधे पर खुशी से बैठकर, आपके साथ दुनिया के अन्वेषण के लिए तैयार है।",
		pet_cat = "शोल्डर स्नग्गलर",
		pet_cat_description = "यह फुफ्फी बिल्ली हमेशा एक नींद के लिए तैयार होती है, और कौन सी बेहतर जगह होती है जहाँ यह आपके कंधे पर सो सकती है? यह आपके दिनचर्या करते समय हँसती हुई घुमती हुई होगी।",
		pet_cat_grey = "सुस्त गिज़्मो",
		pet_cat_grey_description = "यह छोटी, धूसरी बिल्ली आलसीता का अंतिम स्तर है। यह आपकी कंधे पर खुशी से बैठा होता है, धीरे-धीरे इधर-उधर हिलता छूता है।",
		pet_chicken = "पंखवाला मित्र",
		pet_chicken_description = "यह प्यारा छोटा मुर्गा खुशी से आपकी आवाज़ में चला जाएगा, इसकी मुलायम पंख और जिज्ञासु व्यक्तित्व यह किसी भी भ्रमण के लिए पूर्ण सहयोगी बनाते हैं।",
		pet_shiba = "पॉ पेट्रोल",
		pet_shiba_description = "इसके खिलौनेपसंद व्यक्तित्व और मुलायम फर के साथ, यह छोटा शिबा कुत्ता किसी भी भ्रमण के लिए सही सहायक है। यह खुशी से आपके पीछे चलेगा, इसकी हिलती दम और आनंदमय भौंक से आपकी यात्रा में खुशी का एक स्पर्श इसे जोड़ती है।",
		pet_mouse = "मोटा मित्र",
		pet_mouse_description = "यह गोल और फुलवाला छोटा चिंचिला किसी भी साहसिक यात्रा के लिए सही साथी है। इसकी मुलायम फर और खिलौनेवाली व्यक्तित्व इसे पूर्ण स्नगल बड़िया बनाते हैं, और यह आपके दिन के काम करते समय खुशी से आपकी कंधे पर बैठेगा।",
		pet_raccoon = "रास्कल द रैकून",
		pet_raccoon_description = "इंट्रोड्यूसिंग रास्कल, उड़द शरीर और शरारती व्यक्तित्व वाला फ्लफी रैकून जो हमेशा साहसिक यात्राओं के लिए तैयार है। वह खुशी से आपकी कंधे पर बैठेगा और आपको खजानों के लिए खोज करने में मदद करेगा। क्या आपकी यात्रा में शामिल होने के लिए तैयार है?",

		hotwheels_mcqueen = "लाइटनिंग मैक्कीन",
		hotwheels_mcqueen_description = "तेज रफ़्तार, मैं रफ़्तार हूँ, कैडिलैक स्टिंग जैसे तैरो और बीमर जैसे दो करते हैं। कैचो कैचो रफ़्तार...",
		hotwheels_towmater = "टो मैटर",
		hotwheels_towmater_description = "मेरा नाम मटेर है, टोमेटर की तरह लेकिन टी के बगैर।",

		boxing_gloves = "बॉक्सिंग दस्ताने",
		boxing_gloves_description = "आपको रॉकी में बदल देता है, लेकिन आपको शायद एक सीक्वल न मिले...",
		leash = "लीश",
		leash_description = "कोई नहीं जानता होगा कि आपने इसे क्यों खरीदा है, लेकिन वे शायद इसे होशियारी से देखेंगे।",

		shrooms = "श्रूम्स",
		shrooms_description = "कोई ने कहा कि पिज्जा पर इन्हें रखो, लेकिन अब पिज्जा मुझ पर चढ़ रही है ... वेट मैं कौन हूँ?",

		bucket = "बाल्टी",
		bucket_description = "एक बनावटी हेलमेट के रूप में उपयोग किया जा सकता है।",
		fertilizer = "खाद",
		fertilizer_description = "एक हरे भरे विश्व के लिए।",

		aluminium_powder = "एल्यूमिनियम पाउडर",
		aluminium_powder_description = "एक बहुमुखी चूर्ण जो औद्योगिक और रासायनिक उपयोग में व्यापक रूप से प्रयोग किया जाता है। विशेष तत्वों के साथ मिश्रित करने पर, यह तेज़ उत्तेजक रिएक्शन उत्पन्न कर सकता है, जिससे तेज गर्मी और प्रकाश उत्पन्न होता है।",
		iron_oxide = "लोहे का ऑक्साइड पाउडर",
		iron_oxide_description = "लोहे और ऑक्सीजन मोइबनों से मिलकर बना एक सामान्य पाउडर है जो विभिन्न औद्योगिक प्रक्रियाओं में उपयोग किया जाता है। कुछ तत्वों के साथ मिलाया जाने पर, यह उच्च ऊष्मावान उत्सर्जन, गर्माहट और ऊर्जा मुक्त करने वाले कार्यों में हिस्सा ले सकता है।",

		gold_bar = "सोने का बार",
		gold_bar_description = "मरम्मत और शिल्प के लिए उपयोग किया जाता है।",

		aluminium = "क्रूड एल्यूमीनियम",
		aluminium_description = "मरम्मत और शिल्प के लिए उपयोग किया जाता है।",
		glass = "रफ ग्लास",
		glass_description = "मरम्मत और शिल्प के लिए उपयोग किया जाता है।",
		rubber = "अविपाक से बना रबर",
		rubber_description = "मरम्मत और क्राफ्टिंग के लिए उपयोग में आता है।",
		scrap_metal = "स्क्रैप मेटल",
		scrap_metal_description = "मरम्मत और क्राफ्टिंग के लिए उपयोग में आता है।",
		steel = "कच्चा स्टील",
		steel_description = "मरम्मत और क्राफ्टिंग के लिए उपयोग में आता है।",

		purified_aluminium = "शुद्ध एल्युमीनियम",
		purified_aluminium_description = "पेशेवर मरम्मत के लिए उपयोग में आता है।",
		tempered_glass = "टेम्पर्ड ग्लास",
		tempered_glass_description = "पेशेवर मरम्मत के लिए उपयोग में आता है।",
		vulcanized_rubber = "वल्केनाइज़्ड रबर",
		vulcanized_rubber_description = "पेशेवर मरम्मत के लिए उपयोग में आता है।",
		processed_metal = "प्रोसेस्ड मेटल",
		processed_metal_description = "पेशेवर मरम्मत के लिए उपयोग किया जाता है।",
		refined_steel = "रिफाइंड स्टील",
		refined_steel_description = "पेशेवर मरम्मत के लिए उपयोग किया जाता है।",

		power_saw = "पावर सॉ",
		power_saw_description = "चीजों को देखभाल करने के लिए उपयोग किया जाता है।",

		thermite = "थर्माइट",
		thermite_description = "उच्च वोलेटिल पाउडर, नाक से इस्तेमाल ना करें।",
		fake_plate = "फेक प्लेट",
		fake_plate_description = "हे हे पुलिस को बेवकूफ बनाओ, वे मुझे पकड़ नहीं सकते।",
		evidence_bag_empty = "खाली सबूत थैला",
		evidence_bag_empty_description = "क्या आप इसे और सुधार सकते हैं?",
		evidence_bag = "साक्ष्य थैला",
		evidence_bag_description = "बाद में प्रयोग के लिए एक सीलबंद अपराध।",
		fingerprint_evidence = "उंगली के निशान साक्ष्य",
		fingerprint_evidence_description = "आपको उन अपराधी शराबों को पकड़ने में मदद करता है।",

		ammo_box = "बड़ा एमो बॉक्स",
		ammo_box_description = "जब आपको बहुत सारी गोलियों की आवश्यकता होती है। प्रत्येक एमो टाइप के 60 गोलियों को समेटता है।",

		stungun_ammo = "तासर कार्ट्रिज",
		stungun_ammo_description = "अल्पाहारी।",
		pistol_ammo = "पिस्तौल एमो",
		pistol_ammo_description = "साधारण उपयोग के लिए पूर्ण बैठता है। अधिकांश handhelds में फिट होता है।",
		sub_ammo = "सब एमो",
		sub_ammo_description = "क्या आप किसी विरोधी समूह को मारने के लिए तैयार हैं? यह एक सस्ता संपत्ति है जो इसे करने की अनुमति देती है। पूर्ण प्रभाव के लिए, एक सबमशीन हथियार अनुशंसित है।",
		rifle_ammo = "राइफल एमो",
		rifle_ammo_description = "यह एक हार्डकोर बैंक रोबर के लिए है जो रास्ते में कुछ पुलिसकर्मियों को मारना चाहता है।",
		sniper_ammo = "स्नाइपर एमो",
		sniper_ammo_description = "तुम्हारे आवेश!",
		shotgun_ammo = "शॉटगन एमो",
		shotgun_ammo_description = "लोगों को लगता है कि इनमें गनपाउडर होता है! मैं चुटकुलों ... वे प्यार और खुशी से भरे होते हैं।",

		silver_watches = "चांदी की घड़ियाँ",
		silver_watches_description = "सावधान!",
		necklaces = "हार",
		necklaces_description = "अपने आउटफिट में कुछ अतिरिक्त ब्लिंग जोड़ें!",
		gold_watches = "सोने की घड़ियाँ",
		gold_watches_description = "और ... आप यहाँ से ये कहां से लाए हैं?",
		diamonds = "हीरे",
		diamonds_description = "आपको पूरी एर्मर बनाने के लिए 24 चाहिए होते हैं। मैं आपको सलाह दूंगा कि आप 27 ले लें ताकि आप इससे पिक एक्स भी ले सकें।",

		weather_spell_snow = "मौसम जादू (हिम)",
		weather_spell_snow_description = "इस आइटम का उपयोग करके आप अस्थायी रूप से मौसम को नियंत्रित कर सकते हैं और बारिश जैसे कर सकते हैं! यह एक बार का उपयोग है, इसलिए सतर्कता से उपयोग करें। यदि आप दो मौसम जादू एक साथ उपयोग करते हैं, तो दूसरा आपके क्यू स्टैंड शुरू हो जाएगा।",
		weather_spell_rain = "मौसम का जादू (बारिश)",
		weather_spell_rain_description = "इस आइटम का उपयोग करके आप अस्थायी रूप से मौसम को नियंत्रित कर सकते हैं और बारिश करवा सकते हैं! यह एक बार का उपयोग है, इसलिए सावधानी से उपयोग करें। यदि आप दो मौसम स्पेल एक साथ उपयोग करते हैं, तो दूसरा सिर्फ कतार में रखा जाएगा।",
		weather_spell_thunder = "मौसम का जादू (बिजली)",
		weather_spell_thunder_description = "इस आइटम का उपयोग करके आप अस्थायी रूप से मौसम को नियंत्रित कर सकते हैं और बिजली का तूफान करवा सकते हैं! यह एक बार का उपयोग है, इसलिए सावधानी से उपयोग करें। यदि आप दो मौसम स्पेल एक साथ उपयोग करते हैं, तो दूसरा सिर्फ कतार में रखा जाएगा।",

		zombie_pill = "ज़ोंबी गोली",
		zombie_pill_description = "एक अजीब गोली जो बहुत से अजीब काम करती है... अपनी मुह में दवा करने का खुद का खतरा होता है। ताक़तीर के सपनों से बचने के लिए एक बंदूक रखना बुद्धिमान होगा।",

		acid = "ऐसिड",
		acid_description = "यह आपको स्थायी रूप से उच्च करता है। इससे बचना मुश्किल होता है।",

		rose = "गुलाब",
		rose_description = "मैं नहीं जानता मनुष्य erp आपको क्या करना है।",

		teddy_bear = "टेडी बेयर",
		teddy_bear_description = "एक दोस्त जो वास्तव में आपकी बातें सुनेंगे।",

		self_driving_chip = "स्वयं चलने वाला चिप",
		self_driving_chip_description = "मृत हिरण सभी जगह... बेहद हास्यास्पद है।",

		ticket_50 = "$50 लॉटरी टिकट",
		ticket_50_description = "एक छोटी सी राशि का डालना।",
		ticket_250 = "$250 लॉटरी टिकट",
		ticket_250_description = "अब हम आगे बढ़ रहे हैं, उस जोखिम को लें।",
		ticket_500 = "$500 लॉटरी टिकट",
		ticket_500_description = "देखो तुम कहाँ जा रहे हो, वह तुम्हारे सारे हफ्ते के वेतन है!",

		avocado = "एवोकाडो",
		avocado_description = "छोटा हरा गोल वस्तु, इससे एक डिप बनाने में शानदार होगा।",
		avocado_smoothie = "एवोकाडो स्मूदी",
		avocado_smoothie_description = "स्वस्थ ग्रीन जूस, ठुकड़ों को ध्यान न दें।",

		raspberry = "रस्पबेरी",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "एंटेना",
		antenna_description = "सभी फ्रिक्वेंसी को पकड़ो।",
		battery_pack = "बैटरी पैक",
		battery_pack_description = "आपके सभी इलेक्ट्रॉनिक उपकरणों को चलाना।",
		cpu = "सीपीयू",
		cpu_description = "हर कंप्यूटर का हृदय।",
		knob = "नोब",
		knob_description = "इसे घुमाएँ और लपेटें।",
		pcb_board = "पी.सी.बी. बोर्ड",
		pcb_board_description = "अगली आविष्कार की प्रोटोटाइपिंग के लिए।",
		screen = "स्क्रीन",
		screen_description = "देखें जो आप कर रहे हैं।",
		sd_card = "एसडी कार्ड",
		sd_card_description = "अपनी सभी संग्रह की आवश्यकताओं के लिए।",
		wires = "तार",
		wires_description = "सब कुछ मिलाकर आपको सामान्य बनाए।",

		note = "नोट",
		note_description = "कुछ नोट, मेन।",

		pigeon_milk = "कबूतर का दूध",
		pigeon_milk_description = "\"कबूतर का दूध पीता तो यह आपको सीधा सो देता\"\nप्यार से वेडर द्वारा निष्कासित दुग्ध।",

		bandana = "बंदाना",
		bandana_description = "बहुत सारा गैंग शान्ति। (ब्लड्स जीत)",

		battering_ram = "बैटरिंग रैम",
		battering_ram_description = "उन दरवाजों को स्लैम टाउन ले जाइए!",

		trading_card = "ट्रेडिंग कार्ड",
		trading_card_description = "एक संग्रहीत ट्रेडिंग कार्ड, सबको पाना है!",

		trading_card_pack = "ट्रेडिंग कार्ड पैक",
		trading_card_pack_description = "एक रैंडम ट्रेडिंग कार्ड का पैक, गुड पुल्स प्राप्त करें।",

		boombox = "बूमबॉक्स",
		boombox_description = "कहीं भी, कभी भी संगीत बजाएं और उपद्रवी बनें!",

		lighter = "लाइटर",
		lighter_description = "कुछ लोग दुनिया को जलते देखना चाहते हैं।",

		nitro_tank = "नाइट्रो टैंक",
		nitro_tank_description = "जब आपके पास आवश्यक गति हो तब पूर्ण होता है।",

		empty_nitro_tank = "खाली नाइट्रो टैंक",
		empty_nitro_tank_description = "एक खाली बीन्स की तरह उपयोगी।",

		sheet_metal = "शीट मेटल",
		sheet_metal_description = "अपने 2x2 को अपग्रेड करने के लिए पूर्ण है।",

		valve = "वाल्व",
		valve_description = "हाफ लाइफ 3 कब?",

		empty_tank = "खाली टैंक",
		empty_tank_description = "अब प्रोपेन या प्रोपेन के सहायक नहीं है।",

		pepper_spray = "पेपर स्प्रे",
		pepper_spray_description = "मेरी आँखें!",

		jail_card = "जेल कार्ड",
		jail_card_description = "जेल से बाहर निकलें कार्ड!",

		vape = "वेप",
		vape_description = "स्वगत है! जो फूंक रहे हैं, वह ठीक है!",

		acetone = "ऐसिटोन",
		acetone_description = "पेंट को हटाने या उसे हफ करने के लिए पूर्ण है, कूपर शैली में।",

		bleach = "ब्लीच",
		bleach_description = "इसे पीने नहीं दें।",

		ammonia = "एमोनिया",
		ammonia_description = "जादुई सरप्राइज के लिए ब्लीच के साथ मिलाएं।",

		lithium_batteries = "लिथियम बैटरी",
		lithium_batteries_description = "व्यवसायिक विमानों पर अनुमति नहीं है, यहाँ तक ​​कि आप धमाके का शिकार नहीं बनना चाहते।",

		meth_bag = "मेथ थैला",
		meth_bag_description = "\"कूपर के मसाले\" नाम को दिया गया है। अलमो सी के सबसे पवित्र क्रिस्टल कुछ।",

		meth_table = "मेथ टेबल",
		meth_table_description = "मेथ उद्योग से जुड़ा मजेदार Breaking Bad जैसी विवरणी।",

		campfire = "कैंपफायर",
		campfire_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार, मछली पकड़ने और शिविर के लिए पूर्ण है! यह आइटम फिर से उठाया नहीं जा सकता।",
		tent = "टेंट",
		tent_description = "दुनिया में कहीं भी रखा जा सकता है। शिकार, मछली पकड़ने और शिविर के लिए पूर्ण!",
		cloth_tent = "कपड़े का तेंट",
		cloth_tent_description = "दुनिया में कहीं भी रखा जा सकता है। शिकार, मछली पकड़ने और शिविर के लिए पूर्ण!",
		canvas_tent = "कैनवास तंबू",
		canvas_tent_description = "दुनिया में कहीं भी रखा जा सकता है। शिकार, मछली पकड़ने और शिविर के लिए पूर्ण!",
		plastic_chair = "प्लास्टिक कुर्सी",
		plastic_chair_description = "दुनिया में कहीं भी रखा जा सकता है। शिकार, मछली पकड़ने और शिविर के लिए पूर्ण!",
		fishing_chair = "मछली पकड़ने की कुर्सी",
		fishing_chair_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार और मछली पकड़ने के लिए सही है!",
		yoga_mat = "योगा मैट",
		yoga_mat_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार और मछली पकड़ने के लिए सही है!",
		cooler_box = "कूलर बॉक्स",
		cooler_box_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार और मछली पकड़ने के लिए सही है!",
		parasol = "पैरासोल",
		parasol_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार और मछली पकड़ने के लिए सही है!",
		parasol_table = "पैरासोल टेबल",
		parasol_table_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार, मछली पकड़ने और कैंपिंग के लिए पूर्ण है!",
		table = "टेबल",
		table_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार, मछली पकड़ने और कैंपिंग के लिए पूर्ण है!",
		towel = "तौलिया",
		towel_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार, मछली पकड़ने और कैंपिंग के लिए पूर्ण है!",
		disposable_grill = "एकबार उपयोग के ग्रिल",
		disposable_grill_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। शिकार, मछली पकड़ने और कैंपिंग के लिए पूर्ण है! इस आइटम को फिर से उठाया नहीं जा सकता।",
		grill = "ग्रिल",
		grill_description = "जहां भी रखा जा सकता है। शिकार और मछली पकड़ने के लिए उत्तम!",
		police_barrier = "पुलिस बैरियर",
		police_barrier_description = "जहां भी रखा जा सकता है।",
		dummy = "डमी",
		dummy_description = "जहां भी रखा जा सकता है।",
		target = "निशान",
		target_description = "जहां भी रखा जा सकता है।",
		large_target = "बड़ा निशान",
		large_target_description = "जहां भी रखा जा सकता है।",
		cone = "कोन",
		cone_description = "जहां भी रखा जा सकता है।",
		spike_strips = "स्पाइक स्ट्रिप्स",
		spike_strips_description = "दुनिया के किसी भी स्थान पर लगाए जा सकते हैं।",
		floodlight = "फ्लडलाइट",
		floodlight_description = "दुनिया के किसी भी स्थान पर लगाए जा सकते हैं।",
		left_diversion_sign = "बाएँ विभाजन चिह्न",
		left_diversion_sign_description = "दुनिया के किसी भी स्थान पर लगाए जा सकते हैं।",
		right_diversion_sign = "दाएँ विभाजन चिह्न",
		right_diversion_sign_description = "दुनिया के किसी भी स्थान पर लगाए जा सकते हैं।",
		stop_sign = "रुकें संकेत",
		stop_sign_description = "दुनिया के किसी भी स्थान पर लगाए जा सकते हैं।",
		bear_trap = "भालू जाल",
		bear_trap_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है।",
		barrier = "बैरियर",
		barrier_description = "आपकी मानक निर्माण बैरियर।",
		traffic_barrier = "यातायात बैरियर",
		traffic_barrier_description = "एक बैरियर जो सुनिश्चित करता है कि यातायात को क्या हो रहा है।",
		small_barrier = "छोटी बैरियर",
		small_barrier_description = "घटिया छोटी बैरिकेड।",
		traffic_barrel = "यातायात बैरल",
		traffic_barrel_description = "यह मारने लायक दिखता है, लेकिन कर नहीं ... अन्यथा?",
		pedestrian_barrier = "पैदल यात्री बैरियर",
		pedestrian_barrier_description = "ट्रैविस स्कॉट की कॉन्सर्ट न हो तो बहुत उपयोगी है...",

		bandit_1 = "बैंडिट 1",
		bandit_1_description = "दुनिया में कहीं भी रखा जा सकता है।",
		bandit_2 = "बैंडिट 2",
		bandit_2_description = "दुनिया में कहीं भी रखा जा सकता है।",
		hostage_1 = "दस्तवेज 1",
		hostage_1_description = "दुनिया में कहीं भी रखा जा सकता है।",
		hostage_2 = "दस्तवेज 2",
		hostage_2_description = "दुनिया में कहीं भी रखा जा सकता है।",

		director_chair = "निर्देशक कुर्सी",
		director_chair_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। चलती फिरती आरामदायक सीटिंग।",
		beach_chair = "बीच चेयर",
		beach_chair_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। चलती फिरती आरामदायक सीटिंग।",
		green_fishing_chair = "हरा मछली पकड़ने की कुर्सी",
		green_fishing_chair_description = "दुनिया के किसी भी स्थान पर रखा जा सकता है। चलती फिरती आरामदायक सीटिंग।",
		blue_fishing_chair = "नीली मछली पकड़ने की कुर्सी",
		blue_fishing_chair_description = "दुनिया में कहीं भी रखा जा सकता है। चलते फिरते आरामदायक बैठक।",

		tire_wall = "टायर वॉल",
		tire_wall_description = "जब आपको कवर चाहिए पर कहीं नहीं मिलती है।",

		claymore = "क्लेमोर",
		claymore_description = "परम व्यक्ति-विरोधी खदान।",

		tv_stand = "टीवी स्टैंड",
		tv_stand_description = "इसका उपयोग करके आप कहीं भी एक टीवी खड़ा कर सकते हैं।",
		tv_remote = "टीवी रिमोट",
		tv_remote_description = "यूनिवर्सल रिमोट (क्वांटम बैटरी शामिल नहीं हैं)।",

		firework_rocket = "फ़ायरवर्क रॉकेट",
		firework_rocket_description = "एक साधारण फ़ायरवर्क रॉकेट। 4 जुलाई के लिए शानदार है।",
		firework_battery = "फ़ायरवर्क बैटरी",
		firework_battery_description = "एक फ़ायरवर्क बैटरी। एक साथ 4 फ़ायरवर्क छोड़ता है।",

		pole = "पीला खम्भा",
		pole_description = "किसी को भी अपनी गति में रोकने के लिए पूरा उपयुक्त है।",

		gasoline_bottle = "गैसोलीन बॉटल",
		gasoline_bottle_description = "आपकी कार या .... उह... आपको त्वरित रूप से फिर से भरने के लिए।",

		radio_jammer = "रेडियो जैमर",
		radio_jammer_description = "इनकमिंग और आउटगोइंग किसी भी तरह के ट्रांसमिशन को जैम करने के लिए पूर्ण उपयुक्त।",

		winner_trophy = "विजेता ट्राफी",
		winner_trophy_description = "आप सबसे अच्छे हैं!",

		treasure_map = "खजाने का नक्शा",
		treasure_map_description = "एक मुरझाया और मौसमी नक्शा जो उन लोगों को दिखाता है जो इसकी गुप्त सूचनाओं का अनुवाद कर सकते हैं। एक्स मार्क स्थान दर्शाता है, लेकिन खजाने तक की यात्रा जोखिम भरी और संघर्ष से भरी हो सकती है।",
		treasure_map_piece = "खजाने का नक्शा टुकड़ा",
		treasure_map_piece_description = "एक बड़े खजाने का नक्शा का टूटा हुआ अंश, शायद खो गया हो या जानबूझकर छिपा दिया हो। यह रहस्य का तुकड़ा है, एक पहेली होती है जो हल करने के लिए इंतज़ार कर रही है। सभी टुकड़ों को एकत्र करें, नक्शा जोड़ें और एक लंबे समय से गुम खजाने के रहस्यों को अनलॉक करें। कुछ विरोधी खजाना खोजकर्ताओं और अप्रत्याशित बाधाओं के साथ सावधान रहें!",

		flag = "फ्लैग",
		flag_description = "इसे मजबूती से पकड़ो!",

		black_dildo = "काला डिल्डो",
		black_dildo_description = "हम उस आवेदन पत्र को किसी भी तरीके से हासिल कर लेंगे।",
		pink_dildo = "गुलाबी डिल्डो",
		pink_dildo_description = "हाथ से बनाई गई, काटी गई और बग्सी मिडलमैन द्वारा परीक्षण की गई।",

		bean_coffee = "बीन कॉफी",
		bean_coffee_description = "बीन पानी.... यह वास्तव में है।",
		cappuccino = "कैपुचीनो",
		cappuccino_description = "दूध वाला एक्सप्रेसो, मतलब दूध वाला एक्सप्रेसो, मतलब दूध वाला एक्सप्रेसो...",
		espresso = "एस्प्रेसो",
		espresso_description = "आपके घर को चलाने के लिए पर्याप्त ऊर्जा, एक सुविधाजनक छोटे से कप में।",
		cream_cookie = "क्रीम कुकी",
		cream_cookie_description = "क्रीमी, जैसा कि आप चाहते हैं।",
		cheesecake = "चीजकेक",
		cheesecake_description = "एक चीज से बनी केक से भिन्न नहीं है।",
		chocolate_cake = "चॉकलेट केक",
		chocolate_cake_description = "सबसे अच्छी कोको बीन से बनाई गई एक स्वादिष्ट केक।",
		cupcake = "कपकेक",
		cupcake_description = "एक फुफ्फी केक जिसमें जादुई यूनिकॉर्न क्रीम भरा होता है।",
		pink_lemonade = "गुलाबी नींबू पानी",
		pink_lemonade_description = "पूरी तरह से इस बात से अलग है कि हम आपसे दोगुना मूल्य ले सकते हैं, नहीं... एक रङ करके नहीं नींबू पानी वही है।",

		irish_coffee = "आयरिश कॉफ़ी",
		irish_coffee_description = "नया बनाया कॉफ़ी जिसमें मूल आयरिश व्हिस्की थोड़ा सा डाला गया है।",

		chip_10 = "$10 चिप",
		chip_10_description = "एक जुआ चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। इस आइटम को कैसीनो में पैसे में बदला जा सकता है।",
		chip_50 = "$50 चिप",
		chip_50_description = "एक जुआ चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। इस आइटम को कैसीनो में पैसे में बदला जा सकता है।",
		chip_100 = "$100 चिप",
		chip_100_description = "एक जुआ चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। इस आइटम को कैसीनो में पैसे में बदला जा सकता है।",
		chip_500 = "$500 चिप",
		chip_500_description = "एक जुआ चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। इस आइटम को कैसीनो में पैसे में बदला जा सकता है।",
		chip_1000 = "$1000 चिप",
		chip_1000_description = "एक जुआ का चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। आइटम को कैसिनो में पैसे में बदला जा सकता है।",
		chip_5000 = "$5000 चिप",
		chip_5000_description = "एक जुआ का चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। आइटम को कैसिनो में पैसे में बदला जा सकता है।",
		chip_10000 = "$10000 चिप",
		chip_10000_description = "एक जुआ का चिप। जुआ खेलने के लिए इस्तेमाल किया जा सकता है। आइटम को कैसिनो में पैसे में बदला जा सकता है।",

		grubs = "कीटों का अन्न",
		grubs_description = "मछलियों के बटखरों के लिए पूर्ण।",
		leeches = "जू के चूरे",
		leeches_description = "मछलियों के बटखरों के लिए पूर्ण।",
		earthworms = "कीटमक्कड़",
		earthworms_description = "मछलियों के बटखरों के लिए पूर्ण।",
		fishing_rod = "मछली पकडने की छड़ी",
		fishing_rod_description = "मछली पकड़ने के लिए पूर्ण।",
		raw_meat = "कच्चा मांस",
		raw_meat_description = "एक ताजा टुकड़ा मांस।",
		cooked_meat = "पका हुआ मांस",
		cooked_meat_description = "हाल ही में पका हुआ मांस।",
		burnt_meat = "जले हुए मांस",
		burnt_meat_description = "जला हुआ मांस।",
		leather = "चमड़ा",
		leather_description = "हिरण से लिया गया चमड़ा।",
		wood = "लकड़ी",
		wood_description = "एक पेड़ से छिना हुआ लकड़ी।",
		charcoal = "कोयला",
		charcoal_description = "सामान्य कोयले से अधिक बेहतर।",

		beef_jerky = "बीफ जर्की",
		beef_jerky_description = "कुछ अच्छे टुकड़े बीफ जर्की।",
		oreos = "बर्थडे केक ओरियोस",
		oreos_description = "कुछ स्वादिष्ट कुकीज जिनमें बर्थडे केक का स्वाद है।",
		nerds_chunks = "नर्ड्स चंक्स",
		nerds_chunks_description = "एक बैग नर्ड्स गमी क्लस्टर्स, स्वादिष्ट!",
		reeses_pieces = "रीसीज़ पीस",
		reeses_pieces_description = "जब आप थोड़ा भूखा महसूस करते हों तब इस बिस्कुट का मज़ा लें, जो भोजन करने के लिए पूर्णता से कम है।",
		kettle_chips = "केटल चिप्स (हनी-बीबीक्यू)",
		kettle_chips_description = "दुनिया के सबसे अच्छे चिप्स।",
		cheetos = "चीटोस",
		cheetos_description = "आपके गेमिंग सत्रों के लिए सबसे अच्छा स्नैक।",
		peanuts = "नमकीन मूंगफली",
		peanuts_description = "नमकीन मूंगफली का एक तिन, स्नैकिंग के लिए पूर्ण।",

		rice = "चावल",
		rice_description = "यह मोटी, फूलदार अनाज होता है।",
		nori = "नोरी",
		nori_description = "यह समुद्री जीवन पर होने वाली एक प्रकार की समुद्री जानवर होती है।",
		soy_sauce = "सोया सॉस",
		soy_sauce_description = "सोया सॉस एक मसालेदार चटनी होती है जिसमें गहरा उमामी स्वाद होता है जो मरिनेड, सीज़निंग और डिपिंग सॉस के लिए पूर्ण होता है, जो कैलोरी कम और प्रोटीन उच्च होता है।",
		eggs = "अंडे",
		eggs_description = "परिवर्तनशील और पौष्टिक अंडे ओमलेट, किश और बेक्ड गुड्स के लिए पूर्ण होते हैं।",
		lime = "नींबू",
		lime_description = "तीखे स्वाद और विटामिन सी से भरपूर नींबू पेय, मरिनेड और ड्रेसिंग में जीरा जोड़ता है।",
		coconut = "नारियल",
		coconut_description = "मीठे और क्रीमी, नारियल मिठाई, करी और स्मूथी को बढ़ाता है। डैब।",
		sugar = "चीनी",
		sugar_description = "यह कोकेन है लेकिन गैर-कानूनी नहीं है और आपको मधुमेह देता है।",

		golf_ball = "गोल्फ बॉल",
		golf_ball_description = "गोल्फिंग के लिए उपयोग किया जाता है।",
		golf_ball_yellow = "पीली गोल्फ बॉल",
		golf_ball_yellow_description = "गोल्फिंग के लिए उपयोग किया जाता है।",
		golf_ball_orange = "नारंगी गोल्फ बॉल",
		golf_ball_orange_description = "गोल्फिंग के लिए उपयोग किया जाता है।",
		golf_ball_pink = "गुलाबी गोल्फ बॉल",
		golf_ball_pink_description = "गोल्फिंग के लिए उपयोग किया जाता है।",

		gas_mask = "गैस मास्क",
		gas_mask_description = "हर प्रकार की गैस से आपको बचाएगा, चाहे वह दादी का पासीना हो।",
		nv_goggles = "रात्रि दृश्य चश्मा",
		nv_goggles_description = "अंधेरे में देखने में मदद करेगा।",
		thermal_goggles = "थर्मल चश्मा",
		thermal_goggles_description = "दीवारों से देखने में मदद करेगा (वास्तव में नहीं xD)।",

		green_rolls = "हरे रोल्स",
		green_rolls_description = "जिन्हें औसत से अधिक चाहिए।",
		rolling_paper = "रोलिंग पेपर",
		rolling_paper_description = "उस त्वरित कागज का उपयोग करें जो आपके दर्द से होगा छुटकारा।",

		arena_pill = "अरेना पिल",
		arena_pill_description = "एक अजीब गोली जो बहुत अजीब काम करती है...अपनी खतरे की बात पर गोली निगलें। शायद हिंसक सपनों से बचने के लिए आपके पास एक बंदूक होना अच्छा होगा।",

		shovel = "कुदाल",
		shovel_description = "एक मजबूत खोदने वाला औज़ार, जो किसी भी पर्यावरण में छिपे धनों और रहस्यों को खोजने और उन्हें उजागर करने के लिए एक मूल्यवान संपत्ति होता है, जो उत्साही खजाने खोजकर्ताओं के लिए एक महत्वपूर्ण संपत्ति होता है।",

		electric_fuse = "इलेक्ट्रिक फ्यूज़",
		electric_fuse_description = "इस इलेक्ट्रिक फ्यूज़ का इस्तेमाल हीस्ट कमरों के लिए आवश्यक है। इसे फ्यूज़ बॉक्स में डालकर की कार्ड लॉक को चालू किया जाना चाहिए।",
		keycard_green = "हरा कार्ड",
		keycard_green_description = "मेडिकल सप्लाइज से भरी स्टोरेज खोलने के लिए उपयोग किया जाता है।",
		keycard_blue = "नीला कार्ड",
		keycard_blue_description = "टेक्निकल सप्लाइज से भरी स्टोरेज खोलने के लिए उपयोग किया जाता है।",
		keycard_red = "लाल कार्ड",
		keycard_red_description = "एक आयुधशाला खोलने के लिए उपयोग किया जाता है।",

		magazine = "म्यागज़ीन",
		magazine_description = "एक मैगज़ीन।",

		bank_rockfish = "बैंक रॉकफ़िश",
		black_and_yellow_rockfish = "काला और पीला रॉकफ़िश",
		black_rockfish = "काला रॉकफ़िश",
		blackgill_rockfish = "काले कान वाला रॉकफ़िश",
		blackspotted_rockfish = "ब्लैकस्पोटेड रॉकफिश",
		blue_rockfish = "नीला रॉकफिश",
		bocaccio = "बोकासियो",
		bronzespotted_rockfish = "ब्रोंजस्पोटेड रॉकफिश",
		brown_rockfish = "भूरे रॉकफिश",
		cabezon = "केबेजोन",
		calico_rockfish = "केलिको रॉकफिश",
		california_scorpionfish = "कैलिफोर्निया स्कॉर्पियनफिश",
		canary_rockfish_variant_1 = "कैनेरी इश्क़ारे का मछली (वेरिएंट 1)",
		canary_rockfish_variant_2 = "कैनेरी इश्क़ारे का मछली (वेरिएंट 2)",
		chilipepper_rockfish = "चिलीपेपर रॉकफिश",
		china_rockfish = "चाइना रॉकफिश",
		copper_rockfish_variant_1 = "कॉपर रॉकफ़िश (वेरिएंट 1)",
		copper_rockfish_variant_2 = "कॉपर रॉकफ़िश (वेरिएंट 2)",
		cowcod = "काउकॉड",
		darkblotched_rockfish = "डार्कब्लॉच्ड रॉकफिश",
		deacon_rockfish = "डीकन रॉकफिश",
		dusky_rockfish_dark_version = "डस्की रॉकफिश (डार्क वर्जन)",
		dusky_rockfish_light_version = "धुंद्य रॉकफिश (हल्का संस्करण)",
		flag_rockfish = "फ्लैग रॉकफिश",
		gopher_rockfish = "गोफर रॉकफिश",
		grass_rockfish_dark_version = "घास रॉकफिश (गहरा संस्करण)",
		grass_rockfish_light_version = "घास रॉकफिश (हल्का संस्करण)",
		greenblotched_rockfish = "हरी धब्बेदार रॉकफिश",
		greenspotted_rockfish = "हरी ठोस रॉकफिश",
		greenstriped_rockfish = "हरी पट्टीदार रॉकफिश",
		halfbanded_rockfish = "हाफबैंडेड रॉकफिश",
		honeycomb_rockfish = "हनीकॉम्ब रॉकफिश",
		kelp_greenling_female = "केल्प ग्रीनलिंग (महिला)",
		kelp_greenling_male = "केल्प ग्रीनलिंग (पुरुष)",
		kelp_rockfish = "केल्प रॉकफिश",
		lingcod = "लिंगकॉड",
		olive_rockfish = "ऑलिव रॉकफिश",
		pacific_ocean_perch = "पैसिफिक ओसीयन पर्च",
		pacific_sand_sole = "पीसीएफिक सैंड सोल",
		pacific_sanddab = "पीसीएफिक सैंड्डैब",
		quillback_rockfish_variant_1 = "क्विलबैक रॉकफ़िश (वेरिएंट 1)",
		quillback_rockfish_variant_2 = "क्विलबैक रॉकफ़िश (वेरिएंट 2)",
		redbanded_rockfish = "रेडबेंडेड रॉकफिश",
		rock_sole = "रॉक सोल",
		rosy_rockfish = "रोसी रॉकफिश",
		rougheye_rockfish = "रोफ आई रॉकफिश",
		shortraker_rockfish = "शॉर्टरेकर रॉकफिश",
		silvergray_rockfish = "सिल्वरग्रे रॉकफिश",
		speckled_rockfish = "स्पेक्ल्ड रॉकफिश",
		squarespot_rockfish = "स्क्वेयरस्पॉट रॉकफिश",
		starry_flounder = "स्टारी फ्लाउंडर",
		starry_rockfish = "स्टारी रॉकफिश",
		tiger_rockfish_dark_version = "टाइगर रॉकफिश (डार्क वर्जन)",
		tiger_rockfish_pink_version = "टाइगर रॉकफिश (पिंक वर्जन)",
		treefish = "ट्रीफिश",
		vermilion_rockfish = "वर्मिलियन रॉकफिश",
		widow_rockfish = "विडो रॉकफिश",
		yelloweye_rockfish_adult = "येलोआई रॉकफिश (वयस्क)",
		yelloweye_rockfish_juvenile = "येलोआई रॉकफिश (किशोर)",
		yellowtail_rockfish = "येलोटेल रॉकफिश",

		bank_rockfish_description = "बैंक रॉकफ़िश ओवल आकार के मछली होते हैं जिनका सिर छोटा होता है। खारिजी बांग्ले होते हैं। वे धुंधले लाल या लाल-भूरे होते हैं, अक्सर लटरल लाइन पर स्पष्ट गुलाबी-नारंगी क्षेत्र और शरीर और डोर्सल पिनाके के खारीदार की धार पर काली धब्बे होते हैं।",
		black_and_yellow_rockfish_description = "सेबस्टीज ख्रिसोमेलास, जिसे काले-पीले रॉकफ़िश के नाम से जाना जाता है, सबस्टीडे परिवार की एक समुद्री मछली प्रजाति है। यह कैलिफोर्निया और बाजा कैलिफोर्निया के पास प्रशांत में चट्टानी इलाकों में पाया जाता है।",
		black_rockfish_description = "काले रॉकफ़िश को विभिन्न रूपों में जाना जाता है, जैसे कि काला सीपरेक, काला बास, काला रॉक कॉड, सीबास, काले स्नैपर और प्रशांत महासागरीय ओले से संबंधित जंतुओं की एक प्रजाति है। वे समुद्री सिंहरेखित मछलियों के उपपरिवार एस्कोर्पेनिडे के परिवार का हिस्सा होते हैं।",
		blackgill_rockfish_description = "कभी-कभी ऑटर-ट्रॉल्स और लॉन्गलाइन गियर का उपयोग करके वाशिंगटन तट से पकड़ा जाता है। कैलिफोर्निया के तट से एक सामान्य रूप से पकड़ा जाने वाला जानवर। <br> <br> उपनगरों पर छोटे संस्करण मिल सकते हैं, लेकिन बड़े ब्लैकगिल गहरे पानी में जाएंगे।",
		blackspotted_rockfish_description = "सेबास्टी मेलानोस्टीकस, काले-छिद्रित रॉकफिश, उपश्रेणी सेबास्टीनी के सदस्य महासागरीय रे-फिन्न्ड मछली का एक प्रकार है, जो परिवार स्कोर्पेनीड। यह उत्तरी प्रशांत महासागर में पाया जाता है।",
		blue_rockfish_description = "ब्लू रॉकफ़िश या ब्लू सीपर्च, एक समुद्री वाला फ़िश है जो उपफ़ैमली सेबास्टीनी, रॉकफ़िशेस उप-परिवार से संबंधित है, जो स्कोर्पानिडे परिवार का हिस्सा है। यह उत्तर पूर्वी प्रशांत महासागर में पाया जाता है, जो उत्तरी बाजा कैलिफोर्निया से मध्य ओरेगन तक फैला हुआ है।<br><br>यह केवल नदी के प्रवेश में पाया जाता है।",
		bocaccio_description = "बोकासियो रॉकफ़िश एक समुद्री वाला फ़िश है जो उपफ़ैमिली सेबसटीनी, रॉकफ़िशेस उप परिवार से है जो स्कोर्पानिडे परिवार का हिस्सा है। यह उत्तर पूर्वी प्रशांत महासागर में पाया जाता है।<br><br>इसे \"लाल स्नैपर\" भी जाना जाता है।",
		bronzespotted_rockfish_description = "सेबस्टीस जिली, ब्रॉन्ज मॉटेड रॉकफिश, एक मछली की एक प्रजाति है जो उपफैमिली सेबस्टिने, रॉकफिशेस, परिवार Scorpaenidae का हिस्सा होती है। यह पूर्वी सेंट्रल पैसिफिक ओसियन में पायी जाती है।",
		brown_rockfish_description = "ब्राउन रॉकफिश, जिसके अन्य नाम शामिल हैं ब्राउन सीपरच, चॉकलेट बास, ब्राउन बास और ब्राउन बॉम्बर, एक मछली की प्रजाति है जो उपफैमिली सेबस्टिने, रॉकफिशेस, परिवार Scorpaenidae का हिस्सा होती है। यह उत्तर पूर्वी प्रशांत महासागर में पाया जाता है।",
		cabezon_description = "केबेजोन उत्तरी अमेरिका के प्रशांत तट पर पाए जाने वाले एक भारी प्रजाति का एक बड़ा स्कल्पिन है। हालांकि, जेनस नाम का शब्द लगभग \"स्कॉर्पियन मछली\" के रूप में अनुवाद होता है, वास्तव में स्कॉर्पियनफ़िश संबंधित परिवार Scorpaenidae से होते हैं।",
		calico_rockfish_description = "सेबास्टस डैलीआई, कलिको रॉकफ़िश, सबफैमिली सेबस्टिने, स्टोनफिशेस के भाग, परिवार Scorpaenidae का एक प्रजाति है। यह पूर्वी मध्य प्रशांत महासागर में पाया जाता है।<br><br> पुरुष कैलिको उनकी सात वर्ष की उम्र में यौन रूप से परिपक्व होते हैं, जबकि महिलाएं नौ वर्ष की उम्र में यौन परिपक्वता प्राप्त करती हैं।",
		california_scorpionfish_description = "यह एक मछली की जाति है जिसका नाम कैलिफोर्निया स्कोर्पियनफिश है। यह प्रशांत महासागर में पाया जाता है, जहां यह कैलिफोर्निया और बाजा कैलिफोर्निया के तटों के साथ पाया जाता है।",
		canary_rockfish_variant_1_description = "केनेरी रॉकफ़िश के बारे में ये जानकारी है कि इसे ऑरेंज रॉकफ़िश भी कहते हैं, जो अंग्रेजी में canary rockfish के नाम से भी जाना जाता है. एक समुद्री प्रकार का स्कॉरपेनिडे परिवार, सबफैमिली सेबस्टिनी, जिसे रॉकफ़िश कहा जाता है, का हिस्सा होता है। यह पश्चिमी उत्तर अमेरिका के प्रशांत महासागर के पानी में पाया जाता है।",
		canary_rockfish_variant_2_description = "केनरी रॉकफ़िश, जिसे ऑरेंज रॉकफ़िश भी कहा जाता है, एक जलीय रेत द्वारा बंद की गई मछली के प्रजाति है जो उपफामिली Sebastinae, रॉकफ़िश, परिवार Scorpaenidae के हिस्से हैं। यह पश्चिमी उत्तर अमेरिका के समुद्री जल के पानी में पाया जाता है।",
		chilipepper_rockfish_description = "सेबास्टस गूडी, चिलीपेपर रॉकफिश और चिलीपेपर एक मछली की जाति है जो उपफामिली सेबास्टीनी, रॉकफिशेस, और परिवार स्कोर्पीनीडे का हिस्सा है। यह मुख्य रूप से बाजा कैलिफोर्निया से वैंकूवर तक पश्चिमी उत्तर अमेरिका के तटों पर रहता है।",
		china_rockfish_description = "चाइना रॉकफिश, येलोस्ट्राइप रॉकफिश या येलोस्पॉटेड रॉकफिश, एक प्रजाति का मछली जो स्कॉर्पेनिड फैमिली, सबफैमिली सेबास्टिनी के हिस्से में आती है। यह प्रशांत महासागर के पानी में पश्चिमी उत्तर अमेरिका से घिरी की जलवायु की जगह मूल है।",
		copper_rockfish_variant_1_description = "कॉपर रॉकफिश, जिसे कॉपर सीपरेच भी कहा जाता है, एक जलीय रेत द्वारा बंद की गई मछली के प्रजाति है जो उपफामिली Sebastinae, रॉकफ़िश, परिवार Scorpaenidae के हिस्से हैं। यह पूर्वी तरफ पैसीफ़िक में पाया जाता है।<br><br> वे केवल ऊपर के करीब या नीचे होते हुए देखे जाते हैं इसलिए वे सामान्य समुद्रो में कभी नहीं देखे जाते हैं। ",
		copper_rockfish_variant_2_description = "कॉपर रॉकफ़िश, जिसे कॉपर सीपर्च भी कहा जाता है, एक प्रजाति है जो सबफैमिली सेबैस्टिनी, रॉकफ़िशेस, पारिवारिक स्कॉर्पेनिडे से संबंधित महासागरीय प्रकार की रेत-स्थल-मछली होती है। यह पूर्वी प्रशांत में पाया जाता है। <br><br>वे केवल समुद्री तल के पास या नीचे देखे जाते हैं, इसलिए वे सामान्य समुद्रों में कभी नहीं देखे जाएंगे।",
		cowcod_description = "सेबस्टेस लेविस, काऊकोड या काऊ रॉकफिश, स्कॉर्पेनिड फैमिली, सबफैमिली सेबास्टिनी का एक प्रजाति मछली है। यह पूर्वी प्रशांत महासागर में पाया जाता है। आकार की विभिन्नता क्षेत्र में प्रतिस्पर्धी फायदेमंदता उत्पन्न करती है।",
		darkblotched_rockfish_description = "डार्कब्लॉच्ड रॉकफिश, जिसे ब्लैकब्लॉच्ड रॉकफिश, ब्लैकमाउथ रॉकफिश और ब्लॉची नामों से भी जाना जाता है, एक गहरी शरीरवाली मछली है।",
		deacon_rockfish_description = "सेबास्टिस डिअकोनस, डीकन रॉकफिश, एक प्रजाति की महासागरीय प्रवाल-पिंजरी वाली मछली है जो उपपरिवंश सेबस्टिने, रॉकफिश के लिए और परिवार स्कॉर्पेनिडे के भाग है। यह पूर्वी प्रशांत महासागर में पाया जाता है।<br><br>पुरुष हमेशा महिलाओं से अधिक समय तक जीवित रहेंगे।",
		dusky_rockfish_dark_version_description = "सेबास्टिस सीलिएटस एक प्रकार की रॉकफिश है जिसे वस्तुतः डस्की रॉकफिश के नाम से भी जाना जाता है। यह अक्सर उत्तर प्रशांत महासागर में पाया जाता है।",
		dusky_rockfish_light_version_description = "डस्की रॉकफिश भी सामान्यत: उत्तर प्रशांत महासागर में पाया जाने वाला सीढ़ीदार मछली संबंधी एक जाति से एक है।",
		flag_rockfish_description = "सेबस्टस रुबरिविनक्टस, जिसे फ़्लैग रॉकफिश, स्पैनिश फ़्लैग, रेडबैंडेड रॉकफिश या बारबरपोल के नाम से भी जाना जाता है, परिवार Scorpaenidae के भाग सबफैमिली Sebastinae, रॉकफिश का होता हुआ समुद्री फिन के प्रजातियों में से एक है। यह पूर्वी प्रशांत में पाया जाता है।",
		gopher_rockfish_description = "गोफर रॉकफिश भी गोफर सी पर्च के नाम से जानी जाती है, यह समुद्री फिन की एक जाति है, जो सबफैमिली सेबेस्टिनी, रॉकफिश की भाग है और परिवार Scorpaenidae में पायी जाती है। यह पूर्वी प्रशांत में पाया जाता है, मुख्य रूप से कैलिफोर्निया के बाहर।",
		grass_rockfish_dark_version_description = "सेबास्टेस रैस्ट्रेलीगर, ग्रास रॉकफ़िश, एक समुद्री किरण वाला मछली का प्रजाति है जो उपश्रेणी सेबास्टिन- रॉकफ़िशेज़ के, परिवार स्कॉर्पेनिडै का हिस्सा है। यह पूर्वी प्रशांत महासागर के पानी का देशीय है।<br><br>सबसे आमतौर पर हुक और लाइन उपकरण का उपयोग करके रिक्रिएशनल अंग लिंग के द्वारा उपयोग किया जाता है।",
		grass_rockfish_light_version_description = "सेबास्टेस रैस्ट्रेलीगर, ग्रास रॉकफ़िश, एक समुद्री किरण वाला मछली का प्रजाति है जो उपश्रेणी सेबास्टिन- रॉकफ़िशेज़ के, परिवार स्कॉर्पेनिडै का हिस्सा है। यह पूर्वी प्रशांत महासागर के पानी का देशीय है।<br><br>सबसे आमतौर पर हुक और लाइन उपकरण का उपयोग करके रिक्रिएशनल अंग लिंग के द्वारा उपयोग किया जाता है।",
		greenblotched_rockfish_description = "ग्रीनब्लॉच्ड रॉकफिश एक डेमर्सल प्रजाति है जो रॉक संरचनाओं के भीतर अकेले व्यक्तियों या छोटे समूहों में मिलती है जो 55 मीटर (180 फीट) से 490 मीटर (1,610 फीट) के गहराई में पाई जाती है। वे अधिकतम लंबाई 54 सेमी (21 इंच) तक पहुंचते हैं, मादा पुरुषों से बड़े होते हैं।<br><br>ग्रीनब्लॉच्ड, ग्रीनस्पॉटेड और ग्रीनस्ट्राइप्ड सभी एक ही गुणवत्ता और आचरणों को साझा करते हैं।",
		greenspotted_rockfish_description = "सीबस्टीज़ क्लोरोस्टिक्टस, ग्रीनस्पॉटेड रॉकफिश एक प्रजाति है जो सबफैमिली सेबस्तिने, द रॉक़फिशेस, परिवार स्कोर्पेनिडे का हिस्सा है। यह पूर्वी ताड़ीवाले महासागर में पाया जाता है।<br><br>ग्रीनब्लॉच्ड, ग्रीनस्पॉटेड और ग्रीनस्ट्राइप्ड सभी एक ही गुणवत्ता और आचरणों को साझा करते हैं।",
		greenstriped_rockfish_description = "सबस्टीस एलोंगेटस, ग्रीन स्ट्राइपड रॉकफिश, स्ट्राइप्ड रॉकफिश, स्ट्रॉबेरी रॉकफिश, पॉइंसेट्टास, रेइना या सरीना, परिवार स्कोर्पेनिडे, उप-परिवार सबस्टिनो, एक भौतिक रेत-में रहने वाली मछली का प्रजाति है। यह पूर्वांचली तटीय महासागर में पाया जाता है।<br><br> ग्रीनब्लॉच्ट, ग्रीनस्पॉटेड और ग्रीनस्ट्राइप्ड सभी एक ही गुणधर्म और व्यवहार साझा करते हैं।",
		halfbanded_rockfish_description = "सबस्टीस सेमिसिंक्टस, हाफबैंडेड रॉकफिश, एक भौतिक रेत-में रहने वाली मछली का एक प्रजाति है, जो सबस्टिनो उप-परिवार, स्कोर्पेनिडे परिवार का हिस्सा है। यह पूर्वी तटीय महासागर में पाया जाता है।",
		honeycomb_rockfish_description = "हनीकोंब रॉकफिश का एक संपीड़ित विस्तार होता है जिसकी चौड़ाई मानक लंबाई का 35% से 39% होता है। वे कंटिलों से ढ़के हुए होते हैं। उन्हें तन, भूरा या लालिमा भूरा रंग होता है जिसमें उनके पार्श्विक रेखा से ऊपर यूँ तो 4 से 6 सफेद धब्बे होते हैं।",
		kelp_greenling_female_description = "एक मादा केल्प ग्रीनलिंग सफेद या भूरे पृष्ठभूमि पर सूखे हुए छोटे, लालिमा-भूरे तितलियों से फूटी होती है। परिवार हल्के पीले रंग के होते हैं। नर ग्रीनलिंग गंभीरता और चित्राकारी से भरा होता है। उनके शरीर के आगे के दो-तीहाई भाग में अनियमित नीले धब्बे होते हैं।<br><br>सामान्यतया 328 फुट से कम गहराई की जलवायु में पाये जाने वाले होते हैं।",
		kelp_greenling_male_description = "केल्प ग्रीन्लिंग पुरुष भूरे हल्के मैले से लेकर धूसर समेत अनियमित आकार के नीले धब्बे होते हैं, जो उसकी पीठ और सिर पर काले रेखाओं से लाइन होते हैं। महिला और पुरुष दोनों के सिर के ऊपर एक छोटा सा झाड़ू जैसा एक प्रोजेक्टिव होता है (सिरस।) यह प्रजाति 60 सेमी लंबी होती है।<br><br>यह सबसे आमतौर पर 328 फीट से कम गहराई के पानी में पाया जाता है।",
		kelp_rockfish_description = "सेबास्टेस ऐट्रोवाइरंस, केल्प रॉकफिश, एक समुद्री कीटाणु के प्रजाति है जो उपकुल सेबस्टिन और परिवार स्कोरपेनिडे का हिस्सा है। यह संयुक्त राज्य अमेरिका के कैलिफोर्निया तट और मैक्सिको के बाजा कैलिफोर्निया के समुद्र तटों के साथ प्रशांत महासागर में पाया जाता है।",
		lingcod_description = "लिंगकोड भोजी शिकारी होते हैं और 80 पाउंड (35 किग्रा) से भी भारी होकर और 60 इंच (150 सेमी) लम्बाई मापते हैं। वे 18 तेज दांतों वाले बड़े मुंह से चरित्रित होते हैं। उनका रंग अस्थायी है, आमतौर पर गहरे भूरे या तांबे के धब्बे जुटे होते हैं।",
		olive_rockfish_description = "ऑलिव रॉकफ़िश, प्लेसिओपिडे परिवार का एक लॉन्फिन है। न्यूजीलैंड की अंतरचर विभाग में यह सिर्फ रॉक पूल में और नीचे बड़ी जंगल में पाया जाता है, मछली की लंबाई 30 सेमी तक होती है।",
		pacific_ocean_perch_description = "पैसिफिक ओशन पर्च, जिसे पैसिफिक रॉकफिश, रोज़ फिश, रेड ब्रीम या रेड पर्च भी कहा जाता है, एक मछली है जिसका विस्तार उत्तरी प्रशांत महासागर के सार्वजनिक अधिकार से शुरू होता है। इसकी श्रृंखला दक्षिणी कैलिफोर्निया से लेकर प्रशांत रेखा तक, उत्तरी होंशु, जापान सहित बेरिंग समुद्र तक है।",
		pacific_sand_sole_description = "पैसिफिक सैंड सोल, जिसे सिर्फ सैंड सोल के नाम से भी जाना जाता है, एक फ्लैटफिश प्रजाति है जो उत्तर प्रशांत के पानी में बसा हुआ है जहाँ वह रेतीले तल पर रहता है। जनसंख्या जनसंख्या में केवल एक प्रजाति होती है, जो बेरिंग समुद्र से उत्तरी कैलिफोर्निया तक का स्पेक्ट्रम कवर करती है।",
		pacific_sanddab_description = "प्यासिफिक सैंडैब एक प्रकार का फ्लैटफिश है। यह सबसे आम सैंडैब है और इसकी आवासीय जगह लॉन्गफिन सैंडैब और स्पेकल्ड सैंडैब के साथ साझा करता है। यह एक मध्यम आकार का फ्लैटफिश है, जिसका रंग हल्के भूरे रंग का होता है, धब्बेदार भूरे या काले रंग के साथ, कभी-कभी सफेद या नारंगी धब्बे के साथ।",
		quillback_rockfish_variant_1_description = "क्विलबैक रॉकफ़िश, जिसे क्विलबैक सीपर्च भी कहा जाता है, एक प्रजाति है जो सबफैमिली सेबैस्टिनी, रॉकफ़िशेस, पारिवारिक स्कॉरपेनिडा से संबंधित महासागरीय रेत-स्थल-मछली का भाग है। यह प्रकार मुख्य रूप से नमकीन पानी के रीफ़ में वसा होता है। औसत वयस्क 2-7 पाउंड का होता है और 1 मीटर तक लंबा हो सकता है। <br><br>कैली के आसपास, इन्हें 15 साल तक के लिए जीवित देखा जाता है। कनाडा के आसपास, यह कम से कम 95 वर्षों तक रहते हैं। CA>US का सबूत देते हुए।",
		quillback_rockfish_variant_2_description = "क्विलबैक रॉकफिश, जिसे क्विलबैक सीपर्च के रूप में भी जाना जाता है, एक प्रजाति है जो समुद्री प्रकार के मछलियों में से है जो उपश्रेणी सेबस्टिनी, रॉकफिशेस में आती है, परिवार स्कोर्पेनिडेस का हिस्सा होती है। यह प्रजाति प्राथमिक रूप से खारे पानी के रीफों में रहती है। सामान्य वयस्क 2-7 पाउंड का होता है और लंबाई 1 मीटर तक पहुंच सकती है। <br> <br> कैली के आस-पास, इन्हें 15 साल तक जीवित रहते हैं। कनाडा के आस-पास, इन्हें कम से कम 95 साल तक जीवित रहते हैं। जो कि सीए> यूएस साबित करता है।",
		redbanded_rockfish_description = "रेडबैंडेड रॉकफिश, जिसे बैंडिट, बारबर पोल, फ्लैग रॉकफिश, स्पेनिश फ्लैग, हॉलीवुड, कंविक्ट और कैनेरी भी जाना जाता है, एक प्रकार का समुद्री रेत-फिन फिश है जो उपपरिवार सेबास्टिने, रॉकफिश्स, परिवार स्कॉर्पेनिडे का हिस्सा है। यह उत्तरी प्रशांत महासागर में पाया जाता है।",
		rock_sole_description = "रॉक सोल (Lepidopsetta bilineata) प्लीयूरोनेक्टिडी परिवार का एक पतला मछली है। यह एक डीमर्सल मछली है जो रेत और कंकड़ से भरे तलबंदों पर 575 मीटर (1,886 फीट) तक की गहराई में रहती है, हालांकि यह सबसे आम रूप से 0 और 183 मीटर (0 और 600 फुट) के बीच मिलती है।",
		rosy_rockfish_description = "सेबास्टेस रोसेस (Sebastes rosaceus), रोसी रॉकफ़िश, एक प्रजाति की समुद्री पट्टी-फिन मछली है, जो रॉकफ़िश के उपपरिवार सेबस्टीन का हिस्सा है, जो स्कॉरपेनिडी परिवार का हिस्सा है। यह पूर्वी प्रशांत में पाया जाता है।",
		rougheye_rockfish_description = "रफ आई रॉकफिश सेबेस्टस गिनस का एक रॉकफिश है। यह काले गले वाला रॉकफिश या काले चप्पर रॉकफिश के रूप में भी जाना जाता है और अधिकतम लंबाई लगभग 97 सेमी होती है, जबकि IGFA रिकॉर्ड वजन 14 फुट 12 आउंस होता है।",
		shortraker_rockfish_description = "वयस्क होने पर, शार्टरेकर रॉकफिश में से एक सबसे बड़े रॉकफिश प्रजातियों में से एक है। उन्हें डाइविंग के दौरान प्रकाश गुलाबी, गुलाबी-नारंगी या लाल रंग के साथ धब्बे और स्यारियों के साथ दिखाई देते हैं। सभी पिछले कुछ काले होते हैं और टॉप वाली पीठ सफेद हो सकती है। मुंह लाल होता है और काले धब्बे रह सकते हैं। शार्टरेकर रॉकफिश पृथ्वी पर सबसे लंबे जीवों में से एक हैं, जिन्हें 157 वर्ष के रूप में रिकॉर्ड किया गया है।",
		silvergray_rockfish_description = "चांदी रंग की रॉकफिश एक पतली रॉकफिश प्रजाति है जिसके सिर के कांटे कम होते हैं। उनके होंठ धुंधले होते हैं और निचली जबड़ा उपरी जबड़े से बाहर निकलती है। उनकी निचली जबड़े के अंत में एक प्रमुख सिम्फीज़ील नोब होती है।",
		speckled_rockfish_description = "सेबास्ट्स ओवालिस, स्पैकल्ड रॉकफिश, के हिस्से समूह सेबास्टिनी, रॉकफिश, परिवार स्कॉर्पिनिडे के एक संजात मछली की प्रजाति है। इसे पूर्वी प्रशांत महासागर के गहरे चट्टानी इलाकों में पाया जाता है।",
		squarespot_rockfish_description = "सेबास्टेस हॉपकिंसाई, स्क्वेयरस्पॉट रॉकफिश, उपफुटकी शाखा स्कोर्पेनिडे परिवार और चट्टानमछलियों की उपशाखा संभवत: समुद्री रेत्ता के एक श्रेणी के मछलियों में आता है। यह प्रजाति पूर्वी प्रशांत महासागर में पाई जाती है।",
		starry_flounder_description = "स्टारी फ्लाउंडर, जो ग्राइंडस्टोन, एमरी व्हील और लॉन्ग-नोज्ड फ्लाउंडर के रूप में भी जाना जाता है, उत्तर प्रशांत के तटों तक होने वाली एक सामान्य फ्लैटफिश है।",
		starry_rockfish_description = "स्टारी रॉकफिश, जिसे स्पॉटेड कॉरसेयर, स्पॉटेड रॉकफिश, चायनाफिश और रेड रॉक कॉड के रूप में भी जाना जाता है, उपफुटकी शाखा स्कोर्पेनिडे परिवार और चट्टानमछलियों की उपशाखा संभवत: समुद्री रेत्ता के एक श्रेणी के मछलियों में आता है। यह प्रजाति पूर्वी प्रशांत महासागर में पाई जाती है।",
		tiger_rockfish_dark_version_description = "टाइगर रॉकफिश, जिसे टाइगर सीपर्च, बैंडेड रॉकफिश और ब्लैक-बैंडेड रॉकफिश भी कहा जाता है, एक प्रकार का समुद्री के रेत-फोट वाला मछली है जो उपपरिवंश सेबास्टिनी, रॉकफिश, फैमिली स्कॉर्पेनिडै के हिस्से में आता है। यह पश्चिम उत्तर अमेरिका के प्रशांत महासागर के पानी का निवासी है।",
		tiger_rockfish_pink_version_description = "टाइगर रॉकफिश, जिसे टाइगर सीपर्च, बैंडेड रॉकफिश और ब्लैक-बैंडेड रॉकफिश भी कहा जाता है, एक प्रकार का समुद्री के रेत-फोट वाला मछली है जो उपपरिवंश सेबास्टिनी, रॉकफिश, फैमिली स्कॉर्पेनिडै के हिस्से में आता है। यह पश्चिम उत्तर अमेरिका के प्रशांत महासागर के पानी का निवासी है।",
		treefish_description = "ट्रीफ़िश एक प्रजाति के महासागरीय रेत-फ़िन मछली है जो उपकुल सेबस्टिनी, रॉकफ़िशेज़, पारिवारिक स्कोर्पएओनिड पार्ट होते हैं। यह पूर्वी प्रशांत महासागर का निवासी है।",
		vermilion_rockfish_description = "सेबस्टीस मिनिएटस, वर्मिलियन रॉकफ़िश, वर्मिलियन सीपर्च, रेड स्नेपर, रेड रॉक कॉड, और रैशर, जो उपकुल सेबस्टिनी, रॉकफ़िशेज़, पारिवारिक स्कोर्पएओनिड पार्ट होते हैं, एक प्रजाति की महासागरीय रेत-फ़िन मछली है।",
		widow_rockfish_description = "विडो रॉकफ़िश, या ब्राउन बोमर, एक प्रजाति की महासागरीय रेत-फ़िन मछली है जो उपकुल सेबस्टिनी, रॉकफ़िशेज़, पारिवारिक स्कोर्पएओनिड पार्ट होते हैं। यह पूर्वोत्तर प्रशांत महासागर में पाया जाता है।",
		yelloweye_rockfish_adult_description = "पीले नेत्र वाली रॉकफिश एक समुद्री रे फिन्ड मछली का प्रजाति है जो उपफ़ामिली सेबास्टीन, रॉकफिशेस, फैमिली स्कॉरपनिडी का एक हिस्सा है। और जीनस सेबस्टस के सबसे बड़े सदस्यों में से एक है। इसका नाम इसकी रंगता से लिया गया है।",
		yelloweye_rockfish_juvenile_description = "पीले नेत्र वाली रॉकफिश एक समुद्री रे फिन्ड मछली का प्रजाति है जो उपफ़ामिली सेबास्टीन, रॉकफिशेस, फैमिली स्कॉरपनिडी का एक हिस्सा है। और जीनस सेबस्टस के सबसे बड़े सदस्यों में से एक है। इसका नाम इसकी रंगता से लिया गया है।",
		yellowtail_rockfish_description = "सेबस्टीस फ्लाविडस, पीली पूंछ वाली चट्टानी मछली या पीली पर्श के नाम से भी जानी जाती है जो उपकुल सेबेस्टिने, चट्टानी मछलियों का हिस्सा है, जो परिवार स्कार्पीनिडी का हिस्सा है। यह प्रजाति मुख्य रूप से कैलिफोर्निया से अलास्का तक पश्चिमी उत्तर अमेरिका के तटों पर रहती है।<br><br>तलवार, सांडा और शीशा इस मछली के साथ खेले जाने वाले हत्यारों में से कुछ हैं।",

		weapon_dagger = "प्राचीन सवार तलवार",
		weapon_bat = "बेसबॉल बैट",
		weapon_bottle = "टूटी हुई बोतल",
		weapon_crowbar = "क्रोबार",
		weapon_unarmed = "बिना हथियार",
		weapon_flashlight = "फ्लैशलाइट",
		weapon_golfclub = "गोल्फ क्लब",
		weapon_hammer = "हथौड़ा",
		weapon_hatchet = "कुल्हाड़ी",
		weapon_knuckle = "ब्रास क्नख़ल",
		weapon_knife = "चाकू",
		weapon_machete = "मच्छेटी",
		weapon_switchblade = "स्विचब्लेड",
		weapon_nightstick = "नाईटस्टिक",
		weapon_wrench = "पाइप रेंच",
		weapon_battleaxe = "लड़ाई कुल्हाड़ी",
		weapon_poolcue = "पूल क्यू",
		weapon_stone_hatchet = "पत्थर कुल्हाड़ी",
		weapon_candycane = "कैंडी केन",

		weapon_pistol = "पिस्तौल",
		weapon_pistol_mk2 = "पिस्तौल एमके2",
		weapon_combatpistol = "कम्बैट पिस्टल",
		weapon_appistol = "एपी पिस्तॉल",
		weapon_stungun = "स्टन गन",
		weapon_pistol50 = "पिस्तौल .50",
		weapon_snspistol = "एसएनएस पिस्तॉल",
		weapon_snspistol_mk2 = "एसएनएस पिस्तौल एमके II",
		weapon_heavypistol = "हैवी पिस्तॉल",
		weapon_vintagepistol = "विंटेज पिस्तॉल",
		weapon_flaregun = "फ्लेयर गन",
		weapon_marksmanpistol = "मार्क्समैन पिस्तॉल",
		weapon_revolver = "हैवी रिवॉल्वर",
		weapon_revolver_mk2 = "हैवी रिवोल्वर एमके II",
		weapon_doubleaction = "डबल एक्शन रिवॉल्वर",
		weapon_raypistol = "अप-एन-अटॉमाइज़र",
		weapon_ceramicpistol = "सेरामिक पिस्तॉल",
		weapon_navyrevolver = "नेवी रिवॉल्वर",
		weapon_gadgetpistol = "पेरिको पिस्तॉल",
		weapon_stungun_mp = "स्टन गन (एमपी)",
		weapon_pistolxm3 = "डब्यूएम 29 पिस्तौल",

		weapon_microsmg = "माइक्रो एसएमजी",
		weapon_smg = "एसएमजी",
		weapon_smg_mk2 = "एसएमजी एमके II",
		weapon_assaultsmg = "हमला एसएमजी",
		weapon_combatpdw = "कम्बैट पीडबडब्ल्यू",
		weapon_machinepistol = "मशीन पिस्तौल",
		weapon_minismg = "मिनी एसएमजी",
		weapon_raycarbine = "अनहोली हेलब्रिंगर",

		weapon_pumpshotgun = "पंप शॉटगन",
		weapon_pumpshotgun_mk2 = "पंप शॉटगन एमके II",
		weapon_sawnoffshotgun = "सॉड ऑफ़ शॉटगन",
		weapon_assaultshotgun = "हमला शॉटगन",
		weapon_bullpupshotgun = "बुलपप शॉटगन",
		weapon_musket = "मुस्केट",
		weapon_heavyshotgun = "हैवी शॉटगन",
		weapon_dbshotgun = "डबल बैरल शॉटगन",
		weapon_autoshotgun = "स्वीपर शॉटगन",
		weapon_combatshotgun = "कॉम्बैट शॉटगन",

		weapon_assaultrifle = "हमला राइफल",
		weapon_assaultrifle_mk2 = "असॉल्ट राइफल एमके II",
		weapon_carbinerifle = "कारबाइन राइफल",
		weapon_carbinerifle_mk2 = "कारबाइन राइफल एमके II",
		weapon_advancedrifle = "एडवांस राइफल",
		weapon_specialcarbine = "स्पेशल कारबाइन",
		weapon_specialcarbine_mk2 = "स्पेशल कारबाइन एमके II",
		weapon_bullpuprifle = "बुलपप राइफल",
		weapon_bullpuprifle_mk2 = "बुलपप राइफल एमके II",
		weapon_compactrifle = "कॉम्पैक्ट राइफल",
		weapon_militaryrifle = "सैन्य राइफल",
		weapon_heavyrifle = "हैवी राइफल",
		weapon_tacticalrifle = "सेवा कारबाइन",

		weapon_mg = "एमजी",
		weapon_combatmg = "कॉम्बैट एमजी",
		weapon_combatmg_mk2 = "कॉम्बैट एमजी एमके II",
		weapon_gusenberg = "गुसेनबर्ग स्वीपर",

		weapon_sniperrifle = "स्नाइपर राइफल",
		weapon_heavysniper = "हैवी स्नाइपर",
		weapon_heavysniper_mk2 = "हैवी स्नाइपर एमके II",
		weapon_marksmanrifle = "मार्क्समैन राइफल",
		weapon_marksmanrifle_mk2 = "मार्क्समैन राइफल एमके II",
		weapon_precisionrifle = "नियत राइफल",

		weapon_rpg = "आरपीजी",
		weapon_grenadelauncher = "ग्रेनेड लॉन्चर",
		weapon_grenadelauncher_smoke = "धुंध वाला ग्रेनेड लॉन्चर",
		weapon_minigun = "मिनीगन",
		weapon_firework = "फ़ायरवर्क लॉन्चर",
		weapon_railgun = "रेलगन",
		weapon_hominglauncher = "होमिंग लॉन्चर",
		weapon_compactlauncher = "कॉम्पैक्ट ग्रेनेड",
		weapon_rayminigun = "विडोवमेकर",
		weapon_emplauncher = "कॉम्पैक्ट ईएमपी लॉन्चर",
		weapon_stinger = "आरपीजी",
		weapon_railgunxm3 = "कॉइल रेलगन",

		weapon_grenade = "ग्रेनेड",
		weapon_bzgas = "बीजेड गैस",
		weapon_molotov = "मोलोटॉव कॉकटेल",
		weapon_stickybomb = "स्टिकी बम",
		weapon_proxmine = "प्रॉक्सिमिटी माइंस",
		weapon_snowball = "बर्फ की गोली",
		weapon_pipebomb = "पाइप बम",
		weapon_ball = "बेसबॉल",
		weapon_smokegrenade = "धुंध ग्रेनेड", -- नोट: इसे "टियर गैस",
		weapon_flare = "फ्लेयर",
		weapon_acidpackage = "एसिड पैकेज",

		weapon_petrolcan = "जेरी कैन",
		gadget_parachute = "पैराशूट",
		weapon_fireextinguisher = "अग्नि निरोधक",
		weapon_hazardcan = "खतरनाक जेरी कैन",
		weapon_fertilizercan = "उर्वरक कैन",

		red_parachute = "लाल उतरवाई",
		blue_parachute = "नीली उतरवाई",
		black_parachute = "काली उतरवाई",

		weapon_dagger_description = "आप एक समय से डाकू लुक में हैं, लेकिन आपके पास पूरे लुक के लिए कोई कट्टर व्यवसाय नहीं है? इस गुंडा हिल्ट के साथ कतार खरीदें।",
		weapon_bat_description = "लेदर ग्रिप के साथ एल्यूमिनियम बेसबॉल बैट। सभी बड़े हिटर्स के लिए हल्का लेकिन शक्तिशाली।",
		weapon_bottle_description = "यह बुद्धिमान नहीं है और नहीं है खूबसूरत लेकिन ज्यादातर बार, चाकू लेकर आपकी तरफ आ रहा आदमी भी ऐसा ही होता है। जब सब अन्य असफल होता है, तो यह काम करता है।",
		weapon_crowbar_description = "उच्च गुणवत्ता वाले टेम्पर्ड स्टील से बने, भारी-दुत्तक क्रोबार, जो काम को अंजाम देने के लिए आपको अतिरिक्त लीवरेज देता है।",
		weapon_unarmed_description = "जब सब बेकार हो जाए, तभी उस जोड़ को अपने साथ काम में लें।",
		weapon_flashlight_description = "इस शॉर्ट रेंज बैटरी-पावर्ड प्रकाश स्रोत से अंधेरे से डर को अधिक गहरा बनाएँ। बैल्ट फ़ोर्स ट्रोमा के लिए उपयोगी।",
		weapon_golfclub_description = "एक सामान्य लंबाई, मध्य आयरन गोल्फ क्लब रबर ग्रिप वाला है, जो एक घातक छोटे गेम के लिए है।",
		weapon_hammer_description = "एक मजबूत, बहुउद्देशीय हथौड़ा जिसमें लकड़ी का हैंडल और मोड़े हुए पंजे हैं, यह पुराना क्लासिक अभी भी सभी को पीछे छोड़ देता है।",
		weapon_hatchet_description = "यह इस्तेमाल करने में आसान और छिपने में भी आसान हथौड़ा इस तरह से किंगलिंग बनाने के लिए उपयुक्त होता है।",
		weapon_knuckle_description = "गोल्ड टीथ निकालने के लिए पूर्ण होता है, या जीतने वाले साथी को सब कुछ होने पर उपहार के रूप में।",
		weapon_knife_description = "इस कार्बन स्टील का 7\" ब्लेड किसी भी दो तरफ से चलने वाला है और एक सट्टेबाज़ रीढ़ के साथ धार-धुंध में सुधार के लिए प्रदान करता है।",
		weapon_machete_description = "अमेरिका का पश्चिम अफ्रीकी हथियार व्यापार बस देने के बारे में नहीं होता। इस जंगली काटने वाले का उपयोग सरल जीवन को फिर से पायें।",
		weapon_switchblade_description = "अपनी जेब से दूसरे व्यक्ति की रिब में तलवार डालने के लिए कम से कम एक सेकंड : फोल्डिंग नाइफ कभी फैशन से बाहर नहीं जाएंगे।",
		weapon_nightstick_description = "24 इंच पॉलीकार्बोनेट साइड-हैंडल रात का छड़ी।",
		weapon_wrench_description = "पोषणपूर्ण उत्थानवादी और हिंसक पिता का स्थायी चहेता पंखे का पसंदीदा दुनिया भर में, लगता है कि इसे किसी तरह का उपकरण भी दोहरा किया जा सकता है।",
		weapon_battleaxe_description = "यदि यह मध्यकालीन पादयात्रियों, आधुनिक सीमा रक्षकों और उतावली वाली माताओं के लिए पर्याप्त है, तो यह आपके लिए भी पर्याप्त है।",
		weapon_poolcue_description = "एहसास करने के लिए कोई ध्वनि नहीं है जिसका तोड़ सटीक हो जाए, खासकर जब यह दूसरे व्यक्ति की रीढ़ की हड्डी हो।",
		weapon_stone_hatchet_description = "2.5 मिलियन वर्षों की अनुसंधान और फिर भी हम यहां हैं।",
		weapon_candycane_description = "एक त्योहारी मीठे की छड़ी। थोड़ा चिपचिपा है।",

		weapon_pistol_description = "मानक हैंडगन। 12 गोलियों की मैगजीन क्षमता वाला एक .45 कैलिबर का युद्ध पिस्तौल है जिसे 16 तक विस्तारित किया जा सकता है।",
		weapon_pistol_mk2_description = "संतुलन, सरलता, शुद्धता: कुछ चीजें एक लम्बी नली वाली बंदूक से ज्यादा शांति नहीं रखती हैं।",
		weapon_combatpistol_description = "एक संकुचित, हल्का-वजन अर्ध-स्वचालित पिस्तौल जो कानूनी सुरक्षा और व्यक्तिगत रक्षा के लिए डिजाइन किया गया है। 12 राउंड स्लीप के साथ मैगजीन जिसमें विस्तार करने का विकल्प होता है 16 राउंड तक।",
		weapon_appistol_description = "उच्च-प्रवेश, पूर्ण स्वचालित पिस्तौल। मैगजीन में 18 राउंड होते हैं जिसमें 36 राउंड तक विस्तार करने का विकल्प होता है।",
		weapon_stungun_description = "पूरे परिवार के लिए Zaptastic मज़ा!",
		weapon_pistol50_description = "छोटे साइज़ के गोले से बड़े साइज़ के शख्स का शिकार कभी नहीं करना चाहिए।",
		weapon_snspistol_description = "जैसे कंडोम या हेयरस्प्रे, यह आपकी जेब में फिट होता है एक रात टाउन के लिए। क्लब में बोतल की कीमत, यह चैंपेन कॉर्क से आधा अधिक सटीक है, और दोगुनी जानलेवा है।",
		weapon_snspistol_mk2_description = "आखिरी पर्स फिलर: अगर आप सोमवार रात को वास्तव में ख़ास बनाना चाहते हैं, तो यह आपका टिकट है।",
		weapon_heavypistol_description = "मैगज़ीन वाली, सेमी-ऑटोमैटिक हैंडगन दुनिया का heavyweight चैंपियन। हर बार सटीकता और एक गंभीर हाथ कसरत के साथ देता है।",
		weapon_vintagepistol_description = "जो आप वास्तव में चाहते हैं वह एक और पहचानी गुन है। इस एनग्रेव्ड पिस्तल के साथ एक आर्म्ड रोबरी में भी भीड़ से अलग नजर आओ।",
		weapon_flaregun_description = "त्रास या शराबी उत्साह का संकेत देने के लिए उपयोग करें। चेतावनी: व्यक्ति के सीधे दिशा में इशारा करने से अनफ़ोटे जलने का कारण हो सकता है। Heists का हिस्सा।",
		weapon_marksmanpistol_description = "जो जोखिम स्वरूप होगा। यह गोली मारने के समान तारीख के पूर्वावलोकन करें। इसे हर बार रिलोड करने के साथ ही आप इसे फायर करते हैं।",
		weapon_revolver_description = "एक हैंडगन जिसमें काफी स्टॉपिंग पावर है जिससे आप एक पागल गैंडे को गिरा सकते हैं और पत्ते समाप्त होने पर आप इससे मरे हुए गैंडे को मार सकते हैं।",
		weapon_revolver_mk2_description = "यदि आप इसे उठा सकते हो, तो यह आपको किसी भी फ्रेट ट्रेन से शूट करने के नजदीक ले जाएगा।",
		weapon_doubleaction_description = "क्योंकि कभी-कभी प्रतिशोध छह बार, त्वरित तरीके से, आंखों के बीच सबसे अधिक उपयुक्त होता है।",
		weapon_raypistol_description = "रिपब्लिकन स्पेस रेंजर स्पेशल, समाजवाद पर शांतिपूर्ण युद्ध से ताजा: कोई एमो, कोई मैग नहीं, सिर्फ एक ब्रूटल एनर्जी पल्स हीं होता है।",
		weapon_ceramicpistol_description = "आपकी दादीयों की मोमबत्तियों जैसी नहीं। हालांकि यह पाइंट-साइज़ पिस्टल उनकी पर्स में फिट हो सकता है और मेटल डिटेक्टर को ऑफ नहीं किया जाएगा।",
		weapon_navyrevolver_description = "एक असली संग्रहालय आइटम। आप चाहते हैं कि पश्चिम कैसे जीता गया था - धीमी रिलोड स्पीड और एक पूरी तरह से रक्तस्थली।",
		weapon_gadgetpistol_description = "एक घातक शॉट। प्रिसीज़ न हो जाए। आप टाइटेनियम आइडल फिनिश को छोड़ नहीं सकते।",
		weapon_stungun_mp_description = "पूरे परिवार के लिए ज़ापटास्टिक मज़ा!",
		weapon_pistolxm3_description = "एक कम्पैक्ट, हल्के वजन वाला पिस्तौल है जो 9 मिमी के गोले चलाता है। क्लोज रेंज जंगों के लिए बहुत प्रभावी।",

		weapon_microsmg_description = "अपेक्षाकृत संकुचित डिज़ाइन जो लगभग 700-900 राउंड प्रति मिनट की उच्च दर पर राइफल को जोड़ता है।",
		weapon_smg_description = "यही एक अच्छी तरह से उप-मशीन बंदूक जाना जाता है। भारीवेतन एक सटीक निशान और 30-राउंड मैगज़ीन क्षमता के साथ।",
		weapon_smg_mk2_description = "हल्का, कम्पैक्ट, एक फायर रेट जो मौत के लिए बहुत विवेकपूर्ण होती है: एक अच्छी तरह से तेल लगाए ट्रिगर क्लिक से किसी भी सीमित स्थान को अपराध होने का स्थान बना देता है।",
		weapon_assaultsmg_description = "एक उच्च क्षमता वाली सबमशीनगन है जो संकुचित और हल्की है। एक मैगजीन में 30 गोलियों को धारण करती है।",
		weapon_combatpdw_description = "कौन कहा कि व्यक्तिगत हथियार सैनिक व्यक्ति के स्तर के नहीं हो सकते? हमारे लोबिस्टों के धन्यवाद से, कांग्रेस नहीं। अंतर्निहित ध्वनि रोकधन।",
		weapon_machinepistol_description = "यह पूर्ण आटोमेटिक आपके ट्विन इंजन वी8 बास के साथ नगाड़ के ढोल की तरह है: इसके बिना कोई भी ड्राइव-बाय ठीक से नहीं सुनता।",
		weapon_minismg_description = "विशेष अपराधिक इकाइयों के आलावा बाजारिसकता टीम और कम आय वाले क्षेत्रों के छोटे लोगों की देखभाल करने लगी तब से इसकी लोकप्रियता बढ़ी है।",
		weapon_raycarbine_description = "रिपब्लिकन स्पेस रेंजर विशेष। अगर आप एक छोटे हरी इंसान को छोटे हरी गू में बदलना चाहते हैं तो यह एकमात्र अमेरिकी तरीका है।",

		weapon_pumpshotgun_description = "छोटी दूरी के युद्ध के लिए आदर्श शटगन। एक उच्च-आवरण फैलाव लंबी दूरी पर उसकी कम धारण क्षमता का भरपूर भुगतान करता है।",
		weapon_pumpshotgun_mk2_description = "केवल एक चीज पंप एक्शन से अधिक काम करता है: सावधान रहें, धक्के का प्रतिक्रिया शॉट से लगभग इतना घातक होता है।",
		weapon_sawnoffshotgun_description = "इस सिंगल-बैरल, सॉड-ऑफ शॉटगन ने अपनी कम दूरी और एमो क्षमता का मुंहतोड़ दम लगाकर निकाला है।",
		weapon_assaultshotgun_description = "8 राउंड मेगेजीन और उच्च रेट ऑफ फायर के साथ पूरी तरह से स्वचालित शॉटगन।",
		weapon_bullpupshotgun_description = "इसके दायरे और छित्र द्वारा इसकी धीमी, पंप ऐक्शन तेज़ी से झूठी होती है। जो कुछ भी इसकी गोली के मार्ग से गुजरता हो, उसको नष्ट कर देता है।",
		weapon_musket_description = "मसलों के अलावा कुछ नहीं था जो ब्रिटिश लोग अपने पास रखते थे और जिस चीज़ के मदद से वह एक साम्राज्य बनाया। अपने पास इस बंदूक को रखो जिसने इस साम्राज्य को बनाया।",
		weapon_heavyshotgun_description = "जब आप बिल्कुल आवश्यकता है कि आप कमरे को साफ करने की जगह हो, तब आप इस बंदूक के लिए हाथ बढ़ाएँ। केवल आसान वाइप सतहों के करीब ही उपयोग में लाएं।",
		weapon_dbshotgun_description = "एक काम करें, और उसे अच्छी तरह से करें। जब आपके पास पहली गोली दूसरे व्यक्ति को एक नमूना आँधी बनाती है, तब आपको उच्च आग दर की जरूरत किसी अन्य काम की नहीं होती है?",
		weapon_autoshotgun_description = "आप अपने पैंट में कितने प्रभावी उपकरण उठा सकते हैं जो दंगा नियंत्रण के लिए उपयोगी हों? ठीक है, दो। लेकिन यह दूसरा है।",
		weapon_combatshotgun_description = "एक सेमी-ऑटोमैटिक शॉटगन जिसकी फायर रेट एलएसएफडी अलार्म घंटियों को बजाने के लिए है, और आप उसे देख रहे हैं।",

		weapon_assaultrifle_description = "इस मानक हमला बंदूक में एक बड़ी क्षमता वाला मैगज़ीन और दूरी की सटीकता है।",
		weapon_assaultrifle_mk2_description = "एक सभी समय क्लासिक का निश्चित संशोधन: थोड़ी मेहनत चाहिए, और अंततः दिखने वाली बातें सबको मर सकती हैं।",
		weapon_carbinerifle_description = "दूरी की सटीकता को एक उच्च-दर्जा मेगाज़ीन के साथ मिश्रित करके, कारबाइन राइफल पर भरोसा किया जा सकता है कि इस से निशान लगाया जाएगा।",
		weapon_carbinerifle_mk2_description = "यह एक विशेष बनावट, पेशेवर फायरपावर है: आप उन्हें हाथ से डालते हुए और अधिक प्यार और देखभाल नहीं कर सकते।",
		weapon_advancedrifle_description = "सभी हमले राइफलों में सबसे हल्की और संकुचित, सटीकता और रेट ऑफ फायर पर कमी किए बिना।",
		weapon_specialcarbine_description = "सटीकता, मनवाई, अस्त्रोत तथा कम रिकॉइल का मेल, यह किसी भी संघर्ष स्थिति के लिए एक अत्यंत विविध आक्रमण राइफल है।",
		weapon_specialcarbine_mk2_description = "हर शोख का जाक मालिक हो गया है: मास्टर के समक्ष झुकिए।",
		weapon_bullpuprifle_description = "चीनी आयात की नवीनतम उपलब्धि जो अमेरिका में प्रचलित हो रही है, यह राइफल अपने संतुलित हैंडलिंग के लिए जानी जाती है। हल्का व ऑटोमेटिक आग में बेहतर नियंत्रित होता है।",
		weapon_bullpuprifle_mk2_description = "इतने सटीक, इतने उत्कृष्ट हैं कि यह केवल गोलियों की बौछार नहीं बल्कि एक संगीत है।",
		weapon_compactrifle_description = "आधा आकार, सभी शक्ति, दोहरी अस्त्रोत: \"मैं कुछ कोंपेंसेट कर रहा हूँ\" ऐसा कहने का कोई और रिस्क नहीं है।",
		weapon_militaryrifle_description = "यह अत्यंत शक्तिशाली हमला राइफल उच्च क्षमतावाले, असाधारण कुशल सैनिकों के लिए डिज़ाइन किया गया था। हां, आप इसे खरीद सकते हैं।",
		weapon_heavyrifle_description = "ज्यादा भार ठीक है ना? हाँ, चलो उसी के साथ चलते हैं।",
		weapon_tacticalrifle_description = "इस मौसम के लिए कानून व्यवस्था, सैन्य व्यक्ति और किसी भी व्यक्ति के लिए आवश्यक हार्डवेयर जो कानून व्यवस्था या सैन्य व्यक्तित्व से लड़ते समय मृत्यु की लड़ाई में फंसे हैं।",

		weapon_mg_description = "सामान्य उद्देश्य मशीन बंदूक जो तख्तीबाज़ डिज़ाइन को दृढ़ता से आवश्यक कॉम्बिनेशन करती है। दूरी पारग्रहीति शक्ति। बड़े समूहों के विरुद्ध बहुत प्रभावी।",
		weapon_combatmg_description = "लाइटवेट, संकुचित मशीन गन जो अत्यधिक मनवाई और तीव्र आग जोड़कर भरपूर परिणाम प्रदान करता है।",
		weapon_combatmg_mk2_description = "आपका कभी भी अधिक अच्छा होना संभव नहीं है: उचित है, अगर पहली गोली मायने रखती है, तो आगे के सौ से भी ज्यादा गोलियां दोगुना मायने रखती हैं।",
		weapon_gusenberg_description = "एक प्रोहिबिशन गन के साथ अपने लुक को पूरा करें। रूजवेल्ट के खिड़की से बाहर निकलते हुए सुन्दर दिखता है या पिनस्ट्राइप सूट के साथ जोड़ा जा सकता है।",

		weapon_sniperrifle_description = "मानक स्नाइपर राइफल। दूरी पर निश्चयता की आवश्यकता होने वाली स्थितियों के लिए आदर्श है। सीमाएँ धीमी रीलोड स्पीड और बहुत कम आग दर शामिल हैं।",
		weapon_heavysniper_description = "भारी हानि के लिए आर्मर-पियर्सिंग राउंड फ़ीचर्स। लेजर स्कोप स्टैंडर्ड के रूप में आता है।",
		weapon_heavysniper_mk2_description = "दूर जाना, हालांकि हमेशा करीब है: अगर आप उस दूरस्थ संबंध के लिए एक सुरक्षित आधार ढूँढ रहे हैं, तो यहीं है।",
		weapon_marksmanrifle_description = "चाहे आप कितने करीब हो या दूर, यह हथियार काम करेगा। उपकरणों के लिए एक बहु-दूरी टूल।",
		weapon_marksmanrifle_mk2_description = "\"द डिस्लोकेटर\" के रूप में सैन्य सर्कलों में जाना जाता है, यह मॉड सेट लक्ष्य और आपकी कंधे, उसी क्रम में तबाह कर देगा।",
		weapon_precisionrifle_description = "एक राइफल उत्कृष्टतापूर्वक आदमखोरों के लिए। क्योंकि आंखों के बीच सही से जाने के बजाय, आप सुपीरियर फ्रंटल जाइरस के ठीक-ठीक से जाने के साथ क्यों शांत बैठे हो?",

		weapon_rpg_description = "एक पोर्टेबल, शोल्डर-लॉन्च्ड, एंटी-टैंक हथियार जो विस्फोटक वारहेड फायर करता है। वाहनों या बड़ी संख्या में हमलावरों को गिराने के लिए बहुत प्रभावी है।",
		weapon_grenadelauncher_description = "एक कॉम्पैक्ट, हल्का ग्रेनेड लॉन्चर जो अर्ध-स्वचालित कार्यक्रम के साथ होता है। 10 गोलियों तक रखता है।",
		weapon_grenadelauncher_smoke_description = "\"आप धुंद का एक ग्रेनेड ले लो, आप धुंद का एक ग्रेनेड ले लो, आप धुंद का एक ग्रेनेड ले लो!\" - ओप्राह",
		weapon_minigun_description = "एक भयानक 6-नोंटे मशीन गन जो गैटलिंग-शैली के घूमते नालियों वाला है। बहुत अधिक फायरिंग दर (2000 से 6000 गोलियों प्रति मिनट)।",
		weapon_firework_description = "इस फायरवर्क लॉन्चर के साथ फ्लेयर में वापस लाएं, जो किसी भी दर्शक के लिए वाह-वाह और आह! बढ़ाता है।",
		weapon_railgun_description = "आपको जानने की सब कुछ जरुरत है - चुंबक, और यह वस्तुओं को जो इस तरफ दिखाई दे उनपर भयानक चीजें करता है।",
		weapon_hominglauncher_description = "इंफ्रारेड और गाइडेड फायर-एंड-फ़ॉरगेट मिसाइल लॉन्चर। आपकी मूविंग टारगेट नीड्स के लिए।",
		weapon_compactlauncher_description = "फ़ोकस ग्रुप्स ने रेगुलर मॉडल का उपयोग करने पर सुझाव दिया कि यह बहुत ही सटीक है और थ्रॉटल पर एक हाथ से यूज करना असुविधाजनक है। एक आसान हल करें।",
		weapon_rayminigun_description = "रिपब्लिकन स्पेस रेंजर स्पेशल। चलो मानिए, कहो मैं अपने सामान का मुआवजा देना चाहता हूं। मुझे चुन।",
		weapon_emplauncher_description = "उन्हें नींद लाने के लिए ड्रोन और हेलीकॉप्टर पर इसे चलाएँ।",
		weapon_stinger_description = "दुश्मन विमानों को मारने के लिए एक शोल्डर-लॉन्च सतह-एयर मिसाइल लॉन्चर।",
		weapon_railgunxm3_description = "आपको जानने के लिए सब कुछ - चुंबक, और यह उस चीज़ के साथ भयानक चीज़ करता है, जिसे इस तरह से निशानित किया जाता है।",

		weapon_grenade_description = "मानक फ्रैगमेंटेशन ग्रेनेड। पिन निकालें, फेंकें, फिर छिपने के लिए मिलने की कोशिश करें। समूह में हमलावरों को नष्ट करने के लिए आदर्श है।",
		weapon_bzgas_description = "उन लोगों को हॉट-बॉक्सिंग के लिए उपयोग करें जिनसे आपको नफरत है।",
		weapon_molotov_description = "कच्चे फिर भी उच्च प्रभावी आग से जादूगर हथियार। इस कॉकटेल के साथ हैप्पी घंटा नहीं।",
		weapon_stickybomb_description = "एक रिमोट डिटोनेटर लगाया गया प्लास्टिक ंबर का एक्सप्लोसिव चार्ज है। इसे फेंका जा सकता है और फिर डिटोनेट किया जा सकता है या वाहन पर लगाया जा सकता है और फिर डिटोनेट किया जा सकता है।",
		weapon_proxmine_description = "इन मोशन सेंसर लैंडमाइन्स के साथ अपने दोस्तों को एक उपहार छोड़ें। सक्रिय करने के बाद छोटी देरी होती है।",
		weapon_snowball_description = "एक दोस्ताना स्नोबॉल लड़ाई के लिए अलर्ट रहें और तैयार रहें, लेकिन सावधान रहें, वे ठंडे सूंघने वाले छोटे-छोटे ठुक्कड़ मजबूत तोड़ मचल सकते हैं।",
		weapon_pipebomb_description = "याद रखें, जब आप इसे एक स्टोर से खरीदते हैं और एक प्रथम विश्व देश में इसका उपयोग करते हैं तो इसे एक IED के रूप में नहीं गिना जाता है।",
		weapon_ball_description = "बेब रूथ द्वारा हस्ताक्षर किया गया, पूरी तरह से नकली नहीं।",
		weapon_smokegrenade_description = "कई हमलावरों को अक्षम करने में विशेष रूप से सक्षम धुंध ग्रेनेड। लंबी अवधि तक अस्थिरता का सामना करना घातक हो सकता है।",
		weapon_flare_description = "एयर ड्रॉप करने के लिए फेंकें।",
		weapon_acidpackage_description = "एक एसिड का पैकेज। इसे बेकार बनाने के लिए इस्तेमाल करें।",

		weapon_petrolcan_description = "एक गैसोलीन की रेखा छोड़ता है जो जलाई जा सकती है।<br><br>शेष गैसोलीन: ${petrolAmount}%।",
		gadget_parachute_description = "यह नायलॉन स्पोर्ट्स पैराशूट निर्देश और गति को नियंत्रित करने के लिए रैम-एयर पराफोइल डिज़ाइन विशेषताओं का एक संग्रह है।",
		weapon_fireextinguisher_description = "अग्निशामक, आमतौर से \"धुंआ मशीन\" के नाम से जाना जाता है।",
		weapon_hazardcan_description = "गैस की तरह एक मटका होता है, लेकिन बेकार होता है।",
		weapon_fertilizercan_description = "पौधों के लिए बेस्ट है, गोबर का एक विशेषता से युक्त एक मटका होता है।",

		red_parachute_description = "साधारण पैराशूट की तरह लाल रंग में।",
		blue_parachute_description = "साधारण पैराशूट की तरह नीले रंग में।",
		black_parachute_description = "साधारण पैराशूट की तरह काले रंग में।",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "हंटिंग राइफल",
		weapon_addon_huntingrifle_description = "आपकी शिकार करने के उद्देश्यों के लिए आपका राइफल।",

		weapon_addon_vfcombatpistol = "VF कॉम्बैट पिस्तॉल",
		weapon_addon_vfcombatpistol_description = "मुस्कुराइए और फ्लैश का इंतजार कीजिए।",

		weapon_addon_dp9 = "डी एंड पी 9 पिस्तल",
		weapon_addon_dp9_description = "दुब को पकड़ने के लिए 12 मौके।",

		weapon_addon_dutypistol = "सिग सौअर पी226",
		weapon_addon_dutypistol_description = "मूल वायरलेस होम सेफ्टी सिस्टम।",

		weapon_addon_gardonepistol = "गारडोने पिस्तॉल",
		weapon_addon_gardonepistol_description = "संदेह की स्थिति में, मैगजीन को खाली कर दें।",

		weapon_addon_endurancepistol = "एंड्योरेंस पिस्तॉल",
		weapon_addon_endurancepistol_description = "हैंडगन का वियाग्रा",

		weapon_addon_sentinelshotgun = "सेंटिनल शॉटगन",
		weapon_addon_sentinelshotgun_description = "एकदिशीय हत्यारा।",

		weapon_addon_sentinelbbshotgun = "बीनबैग शॉटगन",
		weapon_addon_sentinelbbshotgun_description = "मज़ेदार खेल।",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "कोइल स्टन गन",
		weapon_addon_stungun_description = "पूरे परिवार के लिए मज़ेदार हैंडगन!",

		weapon_addon_mp9 = "बी एंड टी एमपी 9",
		weapon_addon_mp9_description = "छोटा और त्वरित, जैसा कि इसे पकड़े हुए व्यक्ति की तरह।",

		weapon_addon_rc4 = "रेमिंगटन आर 4-सी",
		weapon_addon_rc4_description = "उछालू और त्वरित, आपकी टीम में होने के लिए सही साथी। जब तक लाल बाल इसे पकड़े हुए नहीं हैं।",

		weapon_addon_pp19 = "पीपी-19 वित्याज़",
		weapon_addon_pp19_description = "रूसी उत्कृष्टता का शिखर, किसी भी \"छापे\" के लिए पूर्ण।",

		weapon_addon_m9a3 = "बरेटा एम 9ए 3",
		weapon_addon_m9a3_description = "आपको सस्तीमी दस्ती निपटाने के लिए सब कुछ आवश्यक।",

		weapon_addon_357mag = "357 मैगनम",
		weapon_addon_357mag_description = "यातायात रोक और ज़ोंबी से लेकर, यह रिवॉल्वर शेरिफ का सबसे अच्छा दोस्त है।",

		weapon_addon_m870 = "रेमिंगटन M870",
		weapon_addon_m870_description = "शिकार के लिए एक पूर्ण खिलाड़ी शॉटगन, हालांकि डैनीज़ को मारना सपोर्ट वाला खेल नहीं है ... क्या यह है?",

		weapon_addon_rpk16 = "RPK-16",
		weapon_addon_rpk16_description = "सबसे पूर्ण मशीन गन जो कभी मौजूद थे, बस ट्रैकसूट न भूलें।",

		weapon_addon_tacknife = "अल्टीमेट टैक्टिकल नाइफ",
		weapon_addon_tacknife_description = "अंतिम रूप से, आप लेवल 100 तक पहुंच गए। कर्नल गर्व करेंगे।",

		weapon_addon_reaper = "रीपर",
		weapon_addon_reaper_description = "मच्छेते पर सुधार किया गया।",

		weapon_addon_berserker = "बरसर्कर",
		weapon_addon_berserker_description = "सुंदर तलवार।",

		weapon_addon_katana = "कताना",
		weapon_addon_katana_description = "निंजा की तलवार, हाँ।",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "भविष्य अब हमारे सामने है।, बस एक छोटे कैलिबर में ...",

		weapon_addon_g36c = "हैकलर और कोच G36C",
		weapon_addon_g36c_description = "5.56 मिमी एनएटीओ गोला के टर्मिनल बैलिस्टिक के साथ एक सबमशीन गन के आयाम। पुलिस और सैन्य खास बल से विशेष तौर पर तैकनीकी अनुप्रयोगों के लिए विकसित किया गया।",

		weapon_addon_vandal = "RGX Vandal",
		weapon_addon_vandal_description = "वैलोरेंट पॉग।",

		weapon_addon_ak74 = "एके-74",
		weapon_addon_ak74_description = "बंधे रहो या पट्टी बजाओ।",

		weapon_addon_p320b = "पी 320",
		weapon_addon_p320b_description = "हम और लंदन में नहीं हैं, भाई।",

		weapon_addon_mk18 = "एमके 18",
		weapon_addon_mk18_description = "\"स्ट्रैप के साथ रहो या बजाएं\" - जॉर्ज वाशिंगटन (शायद)",

		weapon_addon_glock = "ग्लॉक 17",
		weapon_addon_glock_description = "दुनिया में सबसे लोकप्रिय हैंडगन।",

		weapon_addon_colt = "कोल्ट 1851 नेवी",
		weapon_addon_colt_description = "प्रारंभिक रेवॉल्वर है, जो सबकुछ शुरू कर दिया।",

		weapon_addon_hk433 = "एच & के 433",
		weapon_addon_hk433_description = "एच & के 433 एक जर्मन हमला राइफल है जो हेकलर और कोच द्वारा 2009 में विकसित की गई थी।",

		weapon_addon_m6ic = "एलडब्ल्यूआरसी एम 6 आईसी",
		weapon_addon_m6ic_description = "पूर्ण व्यक्ति के लिए पूर्ण बंदूक, बस ट्रैकसूट मत भूलना।",

		weapon_addon_hk416 = "एचएंडके 416",
		weapon_addon_hk416_description = "H&K 416, फायरआर्म्स का फेरारी - चमकदार, शक्तिशाली और पूर्वावलोकन देखते ही लोगों को हक्का-बक्का कर देने वाला। यह आपके ट्रिगर फिंगर के लिए एक व्यक्तिगत प्रशिक्षक जैसा है, जो आपकी शत्रुओं को जलने के लिए परिणाम प्रदान करता है। अपने नए BFF (बेस्ट फायरआर्म पुरे जीवन के लिए) से मिलने के लिए नमस्ते बोलो!"
	},

	items = {
		move_to_repair = "गाड़ी को मरम्मत करने के लिए यहां ले जाएं।",
		repairing_vehicle = "वाहन को मरम्मत कर रहे हैं",
		using_first_aid_kit = "पहली मदद किट का उपयोग कर रहे हैं",
		using_bandages = "बैंडेज का उपयोग कर रहे हैं",
		using_ifak = "IFAK का उपयोग कर रहे हैं",
		move_to_wash = "गाड़ी को धोने के लिए यहां ले जाएँ",
		vehicle_too_clean = "वाहन बहुत साफ है इसलिए ये धोना मना है।",
		move_to_put_fake_plate = "यहाँ जाकर एक नकली लाइसेंस प्लेट लगाएं।",
		unable_to_repair = "जब ट्रक के अंदर खिलाड़ी होते हैं तब आप गाड़ी को मरम्मत नहीं कर सकते।",
		failed_lockpicking = "लॉक पिकिंग विफल हुआ।",
		lockpicking_succeeded = "लॉक पिकिंग सफल रही।",
		hotwiring_vehicle = "वाहन को हॉटवायर कर रहें हो।",
		lockpick_broke = "लॉकपिक टूट गया।",
		failed_hotwire = "हॉटवायर करने में विफल रहा।",
		unpacking_green_rolls = "हरे रोल्स को खोलना।",
		you_do_not_have_enough_rolling_paper = "आपके पास पर्याप्त रोलिंग पेपर नहीं है।",
		rolling_joint = "जॉइंट रोल कर रहा है।",
		rolling_joints = "जोइंट रोल करना",
		changing_license_plate = "लाइसेंस प्लेट बदलना",
		equipping_parachute = "${itemName} लगाना",
		lockpicking_vehicle = "गाड़ी का ताला तोड़ना",
		illegal_weather_name = "अवैध मौसम नाम के साथ मौसम जादू का प्रयास करना।",
		equipping_body_armor = "बॉडी आर्मर लगाना",
		illegal_burger_shot_delivery_item_id = "अवैध आइटम आईडी के साथ बर्गर शॉट वितरण आइटम का उपयोग करने का प्रयास करना।",
		illegal_lighter_item_id = "अवैध आइटम आईडी के साथ एक लाइटर उपयोग करने का प्रयास करना।",
		unable_to_use_lighter_in_vehicle = "आप वाहन में एक लाइटर का उपयोग नहीं कर सकते।",
		not_possible_in_a_vehicle = "वाहन में यह कार्रवाई संभव नहीं है।",
		just_used_bandage = "आपने एक पहली मदद किट का उपयोग किया है, कुछ देर पहले एक और का उपयोग करने के लिए प्रतीक्षा करें।",
		drank_gasoline_death = "गैसोलीन विषणुता",
		drank_bleach_death = "ब्लीच विषणुता",

		failed_burger_shot_delivery = "बर्गरशॉट मील तैयार नहीं किया जा सकता।",
		failed_bean_machine_delivery = "बीन मशीन डिलीवरी खोलने में विफल।",

		burger_shot_delivery_empty = "उस burgershot भोजन का परिणाम सामग्री खाली लग रहा था।",
		bean_machine_delivery_empty = "वह Bean Machine डिलीवरी खाली लग रही थी।",

		logs_used_weather_spell_title = "वेदर स्पेल का उपयोग किया गया",
		logs_used_weather_spell_details = "${consoleName} ने वेदर स्पेल `${itemName}` का उपयोग किया।",

		you_have_used_jail_card = "आपने 'जेल से बाहर निकलने के लिए कार्ड' का उपयोग किया है!",
		you_are_not_in_jail = "आप जेल में नहीं हैं।",

		stored_map_location = "मानचित्र स्थान को सफलतापूर्वक अपडेट किया गया।",
		failed_location_map = "मानचित्र स्थान को अपडेट करने में विफल।",
		updated_waypoint = "मानचित्र स्थान के लिए वेपॉइंट अपडेट किया गया।",

		cleared_map = "संग्रहीत मानचित्र स्थान को साफ़ कर दिया गया।",
		failed_clear_map = "संग्रहित मैप स्थान को साफ करने में विफल.",
		clear_map_invalid_slot = "अमान्य इनवेंटरी स्लॉट।"
	},

	jackpot = {
		press_to_deposit = "ऑनलाइन जैकपॉट में आइटम जमा करने के लिए ~INPUT_REPLAY_SHOWHOTKEY~ दबाएं।",
		can_only_withdraw_at_casino = "आप केवल कैसीनो में निकास कर सकते हैं।",

		jackpot = "जैकपॉट",
		inventory = "इन्वेंटरी",
		history = "इतिहास",
		no_items_in_inventory = "लगता है कि आपके वर्चुअल इन्वेंटरी में कोई आइटम नहीं हैं।",
		you_can_deposit_at_the_casino = "आप कैसीनो में आइटम जमा कर सकते हैं।",
		close = "बंद करें",
		bet = "दांव",
		your_chance = "आपका मौका: ${chance}% ",
		character_bet = "${characterName} ने ${itemAmount} आइटमों का दांव लगाया, मूल्य $${itemWorth}",
		pot = "पॉट: $${jackpotWorth}",
		items = "आइटम: ${jackpotItemAmount}",
		withdraw = "निकास (${withdrawAmount})",
		quick_sell = "त्वरित बेचें ($${quickSellWorth})",
		inventory_value = "मूल्य: $${inventoryWorth}",
		inventory_total_items = "कुल आइटम: ${inventoryTotalItems}",
		daily_fee_information = "6 बजे UTC पर हर दिन, आपके कुल इन्वेंटरी मूल्य के 5% से अधिक मूल्य वाले आइटम हटा दिए जाएंगे जो इकाई 'स्टोरेज शुल्क' के रूप में जाने जाएंगे।",

		take_fee_no_permissions = "खिलाड़ी ने सही अनुमतियों के बिना जैकपॉट शुल्क लेने का प्रयास किया।",
		took_jackpot_fees = "जैकपॉट शुल्क लिए। ${inventories} भंडारों से कुल ${removedTotalItems} वस्तुओं की मूल्य $${removedTotalWorth} को हटा दिया गया।"
	},

	jail = {
		press_to_leave_jail = "जेल से निकलने के लिए ~INPUT_CONTEXT~ दबाएं।",

		menu_title = "जेल मेनू",
		check_remaining_time = "शेष समय की जाँच करें",
		leave_city = "शहर छोड़ें",
		leave_jail = "जेल छोड़ें",
		close_menu = "मेनू बंद करें",

		sentence_reduced = "आपकी सजा को ${amount} महीनों से कम कर दिया गया है, आपके पास ${remaining} महीने बचे हैं।",
		sentence_over = "आपकी सजा समाप्त हो गई।",
		remaining_time = "शेष समय: ${remaining} महीने।",
		jailed = "आपको ${amount} महीने के लिए जेल में रखा गया है।",

		mission_help_1 = "~INPUT_CONTEXT~ दबाकर फर्श साफ करने के लिए।",
		mission_help_2 = " ~INPUT_CONTEXT~ दबाकर कुछ खाने के लिए।",
		mission_help_3 = "काम करने के लिए ~INPUT_CONTEXT~ दबाएं।",

		mission_1 = "फर्श साफ करना।",
		mission_2 = "एक सैंडविच खाना।",
		mission_3 = "वर्कआउट करना।",

		mission_blip = "जेल मिशन"
	},

	kiosks = {
		read_catalog = "कैटलॉग पढ़ने के लिए ~g~${InteractionKey} ~w~दबाएं।"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] लीश उपयोग करें।",
		putting_leash_on = "लीश पहेंचाई जा रही है।",
		press_to_take_leash_off = "[${InteractionKey}] लीश उतारें।",
		takeing_leash_off = "लीश उतार रहे हैं।"
	},

	letterboxes = {
		press_to_access = "पहुंचने के लिए ~g~${SeatEjectKey} ~w~दबाएं ${type}",
		letterbox_broken = "${type} टूट गया है।",

		type_letterbox = "लेटरबॉक्स",
		type_newsdisp = "समाचार वितरक",
		type_postbox = "पोस्टबॉक्स"
	},

	locate = {
		invalid_filter_value = "अमान्य फ़िल्टर मान।",
		locate_failed = "`${filter}` से मेल खाने वाला इकाई खोजने में विफल रहा।",
		something_went_wrong = "इकाई का पता नहीं लगा सका।",
		locate_success = "${filter} से मेल खाने वाली इकाई को (${x}, ${y}, ${z}) (instance = ${instance}) पर सफलतापूर्वक पता लगा।",

		locate_entity_no_permissions = "यह खिलाड़ी सही अनुमति के बिना इकाई का पता लगाने का प्रयास करता है।",

		locate_entity_logs_title = "इकाई का पता लगाया गया",
		locate_entity_logs_details = "${consoleName} ने इकाई प्रकार `${filterType}` को मैच करने वाले मूल्य `${filterValue}` को खोजने का प्रयास किया।"
	},

	login = {
		exit_city = "शहर से बाहर निकलें।",
		press_to_exit_city = "शहर से बाहर निकलने के लिए ~g~${InteractionKey} ~w~दबाएँ।",
		bad_words_in_character_creation = "शायद नाम या पृष्ठभूमि में बुरे शब्द शामिल करते हुए एक चरित्र बनाने का प्रयास किया गया था: \"${badWords}\"",
		disallowed_words_in_character_name = "शायद नाम में एक बुरा शब्द के साथ चरित्र बनाने का प्रयास किया गया था: \"${characterName}\"",
		disallowed_birthday_ban = "शायद जन्मदिन में एक बुरा शब्द शामिल करते हुए चरित्र बनाने का प्रयास किया गया था: \"${birthday}\"",

		welcome_to = "आपका स्वागत है",
		press = "दबाएं",
		enter = "प्रवेश करें",
		to_join = "शामिल होने के लिए",
		changelogs = "बदलाव की लिस्ट",
		fetching_character_data = "चरित्र डेटा प्राप्त कर रहा है...",
		yes = "हाँ",
		no = "नहीं",
		exit_game = "गेम से बाहर निकलें",
		are_you_sure_you_want_to_exit = "क्या आप वाकई खेल से बाहर निकलना चाहते हैं?",
		exiting_game = "गेम से बाहर निकला जा रहा है...",
		delete_character = "मिटाएँ",
		select_character = "चुनें",
		new_character = "नया चरित्र",
		empty_slot = "खाली स्लॉट",
		male = "पुरुष",
		female = "महिला",
		name = "नाम",
		dob = "जन्मतिथि",
		born = "${dob} को जन्मे",
		gender = "लिंग",
		cash = "कैश",
		bank = "बैंक",
		story = "कहानी",
		loading_character = "चरित्र लोड हो रहा है...",
		deleting_character = "चरित्र मिटा रहा है...",
		create_character = "किर्या बनाएं",
		first_name = "पहला नाम",
		last_name = "अंतिम नाम",
		date_of_birth = "जन्म तारीख",
		character_backstory = "किर्या की पृष्ठभूमि",
		cancel = "रद्द करें",
		complete = "पूर्ण",
		creating_character = "किर्या बनाई जा रही है...",
		are_you_sure_you_want_to_delete = "क्या आप वाकई इस किर्या को हटाना चाहते हैं? इस कार्रवाई को वापस नहीं किया जा सकता।",
		stop_download = "डाउनलोड रोकें",
		start_download = "डाउनलोड शुरू करें",
		slow_download = "धीमी डाउनलोड",
		regular_download = "नियमित डाउनलोड",
		back = "वापस",
		copy_license = "लाइसेंस आईडी",
		copy_license_success = "कॉपी किया गया!",
		cache_assets = "एसेट कैश करें",
		download_assets = "क्या आप सर्वर के अधिकतम एसेट डाउनलोड और कैश करना चाहते हैं? ऐसा करने से कुछ चीजें होगी:",
		cache_assets_less_lag = "कम लैग स्पाइक्स, कम फ्रेम ड्रॉप और कम पिंग स्पाइक्स, खासकर अगर आप कम मेमोरी वाले हार्डवेयर या धीमी कनेक्शन पर हैं।",
		cache_assets_crashes = "यह प्रक्रिया के दौरान आपका गेम क्रैश हो सकता है। अगर ऐसा होता है, 'धीमा डाउनलोड' विकल्प का उपयोग करें।",
		cache_assets_restart = "एक बार पूरा होने के बाद, हम आपको सलाह देते हैं कि आप अपने खेल को फिर से शुरू करें क्योंकि यह इस सत्र के बाकी के लिए लैग का कारण बन सकता है।",
		cache_assets_disk = "यह थोड़ा बहुत डिस्क स्टोरेज ले जाएगा, इसलिए सुनिश्चित करें कि उपलब्ध जगह हो। अपडेट के बाद आप पुरानी कैश को साफ करने के लिए भी समय-समय पर देखें।",
		vehicles = "वाहन",
		objects = "वस्तुएं",
		peds = "पेड्स",
		clothing = "कपड़े",
		main_menu = "मेनू",
		gta_settings = "जीटीए सेटिंग्स",
		discord = "डिस्कॉर्ड",
		framework = "फ्रेमवर्क",
		rules = "सर्वर नियम",
		notice = "नोटिस",
		language = "भाषा",
		support_the_server = "सर्वर का समर्थन करें",
		battle_royale = "बैटल रॉयल",
		arena = "अरेना",
		queue = "कतार",
		queue_position_with_priority = "🐌 आप ${queueTotal} कुल कतार में ${queuePosition} हैं जिसमें ${queuePriorityName} महत्वाकांक्षा है। 🕐${queueTime}",
		queue_position_without_priority = "🐌 आप ${queueTotal} कुल कतार में ${queuePosition} हैं। 🕐${queueTime}",
		you_are_through = "आप सफल हो चुके हैं!",
		join_server = "सर्वर में शामिल हों",
		tired_of_queueing = "कतार में थक गए? कतार में प्राथमिकता के लिए हमें समर्थन दें!",
		joining_battle_royale = "बैटल रॉयल में शामिल हो रहा है",
		joining_arena = "अखाड़े में शामिल हो रहा है",
		refresh = "ताज़ा करें",
		refreshing = "ताज़ा हो रहा है...",

		missing_character_creation_data = "चरित्र निर्माण डेटा गायब है।",
		invalid_first_name = "पहला नाम (2 से 100 वर्ण में) गायब या अवैध है।",
		invalid_last_name = "अंतिम नाम (2 से 100 वर्ण में) गायब या अवैध है।",
		invalid_date_of_birth = "जन्म तिथि गायब या अवैध है।",
		invalid_backstory = "बैकस्टोरी गायब या अवैध है (1 से 5,000 वर्ण में)।",

		bad_words = "आपके चरित्र के नाम या बैकस्टोरी में कुछ अशुभ शब्द हैं।",
		disallowed_name = "आपके चरित्र के नाम में कुछ अनुमति नहीं हैं।",
		disallowed_birthday = "आपकी जन्मतिथि अनुमत नहीं है।",
		numbers_not_allowed = "चरित्र के नाम में नंबर अनुमत नहीं हैं।",
		something_went_wrong = "कुछ गलत हो गया है जब आप अपना चरित्र बनाने की कोशिश कर रहे थे।",
		character_slot_occupied = "यह चरित्र स्लॉट पहले से ही अधिकृत है।",
		name_already_taken = "यह नाम पहले से ही लिया गया है।",
		illegal_character_slot = "आप इस स्लॉट में चरित्र बना नहीं सकते।",
		character_already_loaded = "आप पहले से ही चरित्र लोड किया हुआ हैं।",

		new_citizen = "नया नागरिक",
		los_santos_police_dept = "लॉस सैंटोस पुलिस डिपार्टमेंट",

		welcome_msg_title = "${communityName} में आपका स्वागत है!",
		welcome_msg = "आपको शुरुआत में आरंभ करने के लिए कुछ आइटम मिल गए हैं। आप 1-5 की तीव्रता कुंजियों का उपयोग करके अपनी हॉटबार में आइटम उपयोग कर सकते हैं।  \n\n*अपना ब्रोशर पढ़ने के लिए 1 दबाएं *",

		press_to_go_back_to_menu = "मेनू पर वापस जाने के लिए ~g~${InteractionKey}~w~ दबाएं।",
		go_back_to_menu = "मेनू पर वापस जाएं।",

		developer = "डेवलपर",
		super_admin = "सुपर एडमिन",
		staff = "कर्मचारी",
		reconnect = "फिर से कनेक्ट करें",
		christmas = "क्रिसमस",
		casino = "कैसीनो",
		random = "यादृच्छिक",
		beginner = "शुरुआत करने वाला",
		custom = "अनुकूलित",

		appreciated_tier = "प्रशंसित श्रेणी",
		respected_tier = "सम्मानित श्रेणी",
		heroic_tier = "शूरवीर श्रेणी",
		legendary_tier = "उपन्यासकार श्रेणी",
		godlike_tier = "देवतासूची श्रेणी"
	},

	loot = {
		press_to_pick_up = "चीज़ लेने के लिए ~INPUT_CONTEXT~ दबाएं ${itemLabel}."
	},

	lottery = {
		lottery_announcement = "लॉटरी की जानकारी",
		lottery_about_to_roll = "आज की लॉटरी के लिए 5 मिनट में विजेता खींचा जाएगा। कुल बटुआ अभी $${totalPot} है जहाँ आपने $${betAmount} लगाया है। आपकी जीतने की संभावना ${odds}% है।",
		current_lottery_pot = "टोटल पॉट अभी वर्तमान में $${totalPot} है जिसमें आपने $${betAmount} लगाए हैं। आपकी जीतने की संभावना ${odds}% है।",
		drew_a_lottery_winner = "लॉटरी के विजेता का नाम निकल गया है।",
		roll_lottery_no_permission = "खिलाड़ी ने लॉटरी खेलने की कोशिश की थी लेकिन उनकी इस सुविधा की अनुमति नहीं थी।",
		winner_has_been_picked = "${fullName} ने $${totalPot} की लॉटरी पॉट जीती है! उन्होंने $${betAmount} लगाए थे और उनकी जीतने की संभावना ${odds}% थी।",
		claimed_lottery_winnings = "लॉटरी जीत का अधिकार किया गया है।",
		no_lottery_winnings = "आपके पास कोई अप्राप्त लॉटरी जीत नहीं है।",
		internal_server_error = "एक आंतरिक सर्वर त्रुटि हुई।",
		use_disabled_animal = "आप लॉटरी का उपयोग जानवर पेड़ के रूप में नहीं कर सकते।",

		lottery_log_title = "लॉटरी जीती",
		lottery_log_description = "${fullName} (#${characterId}) ने $${totalPot} की लॉटरी पॉट जीती है। उन्होंने $${betAmount} के लिए शर्त लगाई है।"
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "लकी व्हील घुमाने के लिए ~INPUT_CONTEXT~ दबाएं। कीमत $${cost} है।",
		hold_to_spin_lucky_wheel_free_one_left = "आज आपके पास 1 मुफ़्त घुमाव के लिए छोड़ा गया है। लकी व्हील घुमाने के लिए ~INPUT_CONTEXT~ दबाएं।",
		hold_to_spin_lucky_wheel_free_multiple_left = "आज आपके पास ${spins} मुफ़्त घुमाव बचे हुए हैं। लकी व्हील घुमाने के लिए ~INPUT_CONTEXT~ दबाएं।",
		continue_holding_to_spin_lucky_wheel = "~INPUT_CONTEXT~ दबाए रखें ताकि आप लकी व्हील घुमा सकें।",
		unable_to_spin_lucky_wheel = "आपने आज लकी व्हील को जितनी बार घुमाया है, उससे अधिक नहीं घुमा सकते। अगला घुमाने का समय ${time} में उपलब्ध होगा।",
		not_enough_balance_to_spin = "आपके पास पहिले से ही $${cost} के तुलना में कम पैसे हैं। व्हील घुमाने के लिए पैसे की आवश्यकता होती है।",
		lucky_wheel_is_occupied = "Lucky Wheel अभी व्यस्त है। कृपया प्रतीक्षा करें।",

		logs_lucky_wheel_reward_title = "Lucky Wheel Reward",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} ने पहिया घुमाकर एक गाड़ी जीती है।",
		logs_lucky_wheel_reward_vehicle_given_details = "वाहन आईडी `${modelName}` से `${consoleName}` को सफलतापूर्वक दिया गया है।",
		logs_lucky_wheel_reward_money_details = "${consoleName} ने पहिये को घुमाकर $${amount} जीता है।",
		logs_lucky_wheel_reward_chips_details = "${consoleName} ने व्हील को घुमाया और $${amount} के चिप्स जीते।",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} ने पहिये को घुमाकर `${itemName}` नाम के आभूषण का जीत पाया है।",
		logs_lucky_wheel_reward_item_details = "${consoleName} ने पहिये को घुमाकर `${itemName}` नाम के एक आइटम का जीत पाया है।",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} ने व्हील पलटा और एक सप्ताह के कतार में प्राथमिकता जीती है।"
	},

	magazines = {
		issue_id = "जमा #${issueId}",
		releases_updated = "रिलीज अपडेट किए गए।",
		no_release_changes = "कोई रिलीज परिवर्तन नहीं हुए।",
		refresh_magazines_no_permissions = "खिलाड़ी उचित अनुमतियों के बिना मैगजीनों को ताजगी देने का प्रयास किया।"
	},

	mdt = {
		mdt_title = "मोबाइल डेटा टर्मिनल",
		loading_reports = "रिपोर्ट लोड हो रहे हैं...",
		failed_report_load = "रिपोर्ट लोड करने में विफल।",
		no_reports = "कोई रिपोर्ट नहीं।",
		loading = "लोड हो रहा है...",

		title_placeholder = "शीर्षक",
		body_placeholder = "मेरी रिपोर्ट..."
	},

	mechanics = {
		move_here_check = "अपग्रेड के लिए यहाँ ले जाएं",
		checking_upgrades = "वाहन अपग्रेड की जांच हो रही है",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} और ${turbo}।",

		has_no_turbo = "टर्बो स्थापित नहीं है",
		has_turbo = "टर्बो स्थापित है",

		armor_0 = "कोई आर्मर नहीं।",
		armor_1 = "आर्मर अपग्रेड 20%।",
		armor_2 = "आर्मर अपग्रेड 40%।",
		armor_3 = "आर्मर अपग्रेड 60%।",
		armor_4 = "आर्मर अपग्रेड 80%।",
		armor_5 = "आर्मर अपग्रेड 100%।",

		brakes_0 = "स्टॉक ब्रेक्स।",
		brakes_1 = "स्ट्रीट ब्रेक्स।",
		brakes_2 = "स्पोर्ट ब्रेक्स।",
		brakes_3 = "रेस ब्रेक्स।",

		transmission_0 = "स्टॉक ट्रांसमिशन।",
		transmission_1 = "स्ट्रीट ट्रांसमिशन।",
		transmission_2 = "स्पोर्ट ट्रांसमिशन",
		transmission_3 = "रेस ट्रांसमिशन",

		engine_0 = "स्टॉक इंजन",
		engine_1 = "इंजन EMS स्तर 2",
		engine_2 = "इंजन EMS स्तर 3",
		engine_3 = "इंजन EMS स्तर 4",
		engine_4 = "इंजन EMS स्तर 5",

		no_nearby_vehicle = "नो निकटवर्ती वाहन।",
		already_checking_upgrades = "आप पहले से ही वाहन की ट्यूनिंग की जांच कर रहे हैं।",
		engine_is_running = "वाहन का इंजन चल रहा है।"
	},

	meth = {
		press_to_sell_meth = "मेथ बेचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		local_not_interested = "लोकल वर्तमान में इच्छुक नहीं लगता।",
		selling_meth = "मेथ बेचना।"
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] पत्थर ड्रिल, [${SeatEjectKey}] पत्थर स्कैन",
		scan_stone = "[${SeatEjectKey}] पत्थर स्कैन",
		drill_stone = "[${InteractionKey}] पत्थर ड्रिल",
		scanning_stone = "स्कैनिंग",
		drilling = "ड्रिलिंग",
		failed_drill_stone = "पत्थर ड्रिल करने में विफल।",
		drill_no_drops = "इस पत्थर में आपको कोई जेम्स नहीं मिले।",
		drill_drops = "आपने इस पत्थर में कुछ जेम्स पाएं।",
		used_drill = "आपका ड्रिल टूट गया।",
		still_shook = "आप अभी भी पिछले विस्फोट से हिला हुए हैं और इस पत्थर में कोई भी रत्न नहीं मिला।",

		recharging_scanner = "स्कैनर रिचार्ज हो रहा है ${percentage}%।",
		scanning = "स्कैन हो रहा है ${percentage}%।",

		refine_gemstones = "[${InteractionKey}] रत्नों को शुद्ध करें",
		refinery = "रफाइनरी टेबल",
		exit_refinery = "रफाइनरी से बाहर निकलें",
		no_gemstones = "आपके पास कोई कच्चे रत्न नहीं हैं।",
		refining = "1x ${gemstone} को शुद्ध कर रहे हैं।",
		refine_success = "1x ${gemstone} शुद्ध हुआ।",
		failed_refine = "रत्न को शुद्ध करने में विफल रहे।",

		craft_rings = "[${InteractionKey}] अंगूठियों का निर्माण करें",
		no_crafting_items = "आपके पास यहाँ कुछ निर्माण करने के लिए पर्याप्त आइटम नहीं हैं।",
		crafting = "1x ${item} का निर्माण कर रहे हैं",
		crafting_table = "निर्माण की मेज",
		crafting_success = "1x ${gemstone} का निर्माण सफलतापूर्वक किया गया।",
		failed_crafting = "आइटम निर्माण विफल हुआ।",
		exit_crafting = "निर्माण मेज से बाहर निकलें",

		engrave_ring = "[${InteractionKey}] अंगूठियों का नाम लिखें",
		no_engrave_items = "आपके पास कोई अंगूठी नहीं है।",
		exit_engraving = "नामलेखन मेज से बाहर निकलें",
		engraving_table = "नामलेखन मेज",
		engraving = "${itemName} जनरेट कर रहे हो",
		engrave_message = "उकीरना संदेश (अधिकतम १०० अक्षर)",
		engrave_success = "${itemName} पर सफलतापूर्वक संदेश उकीरा गया।",
		failed_engrave = "संदेश उकीरने में विफल रहा।",

		no_sellable_items = "यहां आपके पास वे कुछ नहीं हैं जो आप यहां बेच सकते हैं।",
		exit_shop = "दुकान से बाहर निकलें",
		shop = "जेमस्टोन दुकान",
		sell_gemstones = "[${InteractionKey}] जेमस्टोन बेचें",
		local_price = "स्थानीय मूल्य: $$price}",

		sold_gemstone = "$${price} के लिए 1x ${gemstone} घोषित किया गया।",
		failed_sell_gemstone = "जेमस्टोन बेचने में विफल रहा।",
		failed_sell_no_item = "आपके पास वह वस्तु नहीं है जो आपने बेचने का प्रयास किया।",
		failed_sell_cap = "विक्रेता आपसे अधिक उस आइटम की खरीद नहीं करना चाहते।",

		mining_sold_item_title = "ज्वालामुखी बेचे गए",
		mining_sold_item_details = "${consoleName} ने ${itemName} का 1x बेचा जिसका मूल्य $${price} था।",

		mining_crafted_item_title = "आइटम बनाया गया",
		mining_crafted_item_details = "${consoleName} ने ${itemName} का 1x बनाया।",

		mining_refined_item_title = "रूपांतरित ज्वालामुखी",
		mining_refined_item_details = "${consoleName} ने ${itemName} का 1x रूपांतरित किया।",

		mining_mined_title = "ज्वालामुखी खनन किया गया",
		mining_mined_details = "${consoleName} ने ${output} खनन किया।",

		mining_exploded_title = "खानन विस्फोट",
		mining_exploded_details = "${consoleName} एक रत्न खनन करते समय विस्फोट हो गया।",

		instability_0 = "यह रत्न स्थिर है।",
		instability_1 = "यह रत्न थोड़ा अस्थिर है।",
		instability_2 = "यह रत्न अस्थिर है।",
		instability_3 = "यह रत्न बहुत अस्थिर है।",

		exhausted = "आप खान में इतने देर तक रहकर थक गए हैं।",
		very_exhausted = "आप खान में इतने देर तक रहकर बहुत थक गए हैं।"
	},

	miscellaneous = {
		language_unavailable = "भाषा `${languageCode}` अभी उपलब्ध नहीं है। यदि आप इस भाषा के लिए स्थानीयकरण बनाना चाहते हैं, तो अधिक जानकारी के लिए ${frameworkDiscord} पर आओ।",
		same_language = "आपके पास पहले से ही ${languageCode} भाषा चुनी हुई है।",
		language_set = "आपकी पसंदीदा भाषा अब ${languageCode} पर सेट की गई है।",
		current_language = "वर्तमान भाषा",
		available_language_codes = "उपलब्ध भाषाएं",
		ping_pong = "पोंग!",
		ping_response = "${ping}मिलीसेकंड (कॉलबैक समय: ${callbackTime}मिलीसेकंड)",
		ooc_first_time = "हमें लगता है कि आपने अभी तक /ooc का उपयोग नहीं किया है! आपका /ooc का उपयोग करने से पहले, हम आपको एक छोटी सी चेतावनी देना चाहते हैं। /ooc कमांड केवल तुरंत स्थितियों में उपयोग करने के लिए है, और सभी गैर-तुरंत प्रश्न या संदेशों को हमारे Discord गिल्ड ${communityDiscord} की ओर पुनर्निर्देशित किया जाना चाहिए। बस इतना ही! /ooc का उपयोग शुरू करने के लिए, /ooc_on लिखें। आप /ooc_off के साथ उसे फिर से बंद कर सकते हैं।",
		ooc_not_logged_in = "आप लॉग इन नहीं हैं।",
		ooc_timed_out = "आप वर्तमान में ओओसी चैट से समय सीमा के बाहर हैं। कृपया प्रतीक्षा करें।",
		ooc_muted_no_reason = "आपको विश्वव्यापी ओओसी चैट से किसी भी निर्दिष्ट कारण के बिना संक्षिप्त के लिए म्यूट कर दिया गया है।",
		ooc_muted = "आपको विश्वव्यापी ओओसी चैट से कारण `${reason}` के लिए म्यूट कर दिया गया है।",
		global_ooc_title = "ओओसी ${playerDescriptor}",
		local_ooc_title = "स्थानीय ओओसी ${playerDescriptor}",
		ooc_is_disabled = "आपने वैश्विक ओओसी चैट को अक्षम कर दिया है।",
		ooc_enabled = "वैश्विक ओओसी अब सक्षम किया गया है।",
		ooc_already_enabled = "वैश्विक OOC पहले से ही सक्षम है।",
		ooc_disabled = "वैश्विक OOC अब अक्षम हो गया है।",
		ooc_already_disabled = "वैश्विक OOC पहले से ही अक्षम है।",
		ooc_local_logs_title = "स्थानीय OOC संदेश",
		ooc_local_logs_details = "${consoleName} ने स्थानीय OOC चैट में निम्नलिखित संदेश भेजा: `${oocMessage}`।",
		ooc_global_logs_title = "वैश्विक OOC संदेश",
		ooc_global_logs_details = "${consoleName} ने वैश्विक OOC चैट में निम्नलिखित संदेश भेजा: `${oocMessage}`।",
		bad_ooc_message = "OOC चैट में एक संदेश भेजने की ख़राब कोशिश की गई: \"${oocMessage}\"।",
		bad_ped_message = "कोशिश की गई गलत पेड संदेश बनाने की: \"${pedMessage}\"",
		bad_twitter_post = "कोशिश की गई गलत ट्विटर पोस्ट बनाने की: \"${twitterPost}\"",
		bad_phone_message = "कोशिश की गई गलत टेलीफोन संदेश बनाने की: \"${message}\"",
		mute_toggle_not_staff = "खिलाड़ी ने एक अन्य खिलाड़ी को म्यूट करने की कोशिश की, लेकिन इसे करने के लिए उचित अनुमतियाँ नहीं थीं।",
		unmute_toggle_not_staff = "खिलाड़ी ने एक अन्य खिलाड़ी को अनम्‍यूट करने की कोशिश की, लेकिन इसे करने के लिए उचित अनुमतियाँ नहीं थीं।",
		user_not_found = "हम ${serverId} सर्वर आईडी के साथ एक उपयोगकर्ता नहीं ढूंढ पाए।",
		player_already_muted = "${consoleName} पहले से ही म्यूट हो चुका है।",
		player_has_been_muted_no_reason = "${consoleName} अब एक निर्दिष्ट कारण के बिना म्यूट हो गया है।",
		player_has_been_muted = "${consoleName} अब `${reason}` के साथ म्यूट हो गया है।",
		player_not_muted = "${consoleName} म्यूट नहीं है।",
		player_has_been_unmuted = "${consoleName} अब मो म्यूट हो गया है।",
		clear_chat_not_admin = "खिलाड़ी सभी खिलाड़ियों के लिए चैट को साफ़ करने का प्रयास किया, लेकिन उसे ऐसा करने के लिए उचित अनुमतियाँ नहीं थी।",
		ooc_clear_chat_title = "चैट साफ़ किया गया",
		ooc_clear_chat_details = "${consoleName} ने सभी के लिए चैट को साफ़ किया।",
		muted_player = "म्यूट किया गया खिलाड़ी",
		muted_player_no_reason_details = "${consoleName} ने ${targetConsoleName} को कोई निर्दिष्ट कारण बताए बिना म्यूट कर दिया।",
		muted_player_details = "${consoleName} ने `${muteReason}` कारण से ${targetConsoleName} को म्यूट कर दिया।",
		player_muted = "प्लेयर म्यूट किया गया",
		player_muted_no_reason_details = "${consoleName} ने कोई निर्दिष्ट कारण बताए बिना ${targetConsoleName} को म्यूट किया है।",
		player_muted_details = "${targetConsoleName} को `${muteReason}` कारण से ${consoleName} ने म्यूट किया है।",
		muted_self = "खामोश स्वयं",
		muted_self_no_reason_details = "${consoleName} ने कोई विशेष कारण बताए बिना खुद को म्यूट कर दिया।",
		muted_self_details = "${consoleName} ने कारण `${muteReason}` के साथ खुद को म्यूट कर दिया।",
		unmuted_self = "अम्यूट स्वयं",
		unmuted_self_details = "${consoleName} ने खुद को अम्यूट कर दिया।",
		unmuted_player = "अम्यूट खिलाड़ी",
		unmuted_player_details = "${consoleName} ने ${targetConsoleName} को अम्यूट कर दिया।",
		player_unmuted = "खिलाड़ी अम्यूट हुआ",
		player_unmuted_details = "${consoleName} के द्वारा ${targetConsoleName} को अम्यूट किया गया।",
		ooc_cancelled_same_as_last = "आपका OOC संदेश रद्द किया गया क्योंकि आपने दो एक ही संदेश रोके को भेजने का प्रयास किया।",
		use_measurement_metric = "आपने अपनी पसंदीदा मापन प्रणाली को मीट्रिक पर सेट कर दिया है।",
		use_measurement_imperial = "आपने अपनी पसंदीदा मापन प्रणाली को इंपीरियल पर सेट कर दिया है।",
		use_measurement_default = "आप अब लोकेशन की डिफ़ॉल्ट मापन प्रणाली का उपयोग कर रहे हैं।",
		already_using_metric_measurement = "आप पहले से ही मीट्रिक को अपनी पसंदीदा मापन प्रणाली के रूप में उपयोग कर रहे हैं।",
		already_using_imperial_measurement = "आप पहले से ही इंपीरियल को अपनी पसंदीदा मापन प्रणाली के रूप में उपयोग कर रहे हैं।",
		already_using_default_measurement = "आप पहले से ही लोकेल के मानक प्रणाली का उपयोग कर रहे हैं।",
		no_copyright = "कॉपीराइट नहीं",
		no_copyright_warning = "हाय! क्या आप एक स्ट्रीमर या कंटेंट निर्माता हैं जहां डीएमसीए और कॉपीराइट का दावा एक समस्या है? अगर हाँ, तो हम आपको `${noCopyrightCommand}` कमांड टॉगल करने की सलाह देते हैं ताकि हम आपके खेल पर निश्चित रूप से कॉपीराइट लोगों और मदों को दिखाना और चलाना बंद कर सकें। यह सुविधा तुरंत काम करना शुरू कर देती है।",
		no_copyright_enabled = "‘कॉपीराइट नहीं' सुविधा सक्षम हो गई है।",
		no_copyright_disabled = "'कॉपीराइट नहीं' विशेषता अक्षम की गई है।",
		server_tps = "सर्वर TPS",
		server_tps_response = "${tps}",
		license_copied = "लाइसेंस को क्लिपबोर्ड पर सफलतापूर्वक कॉपी किया गया।",
		uptime = "अपटाइम: ${uptime}",

		picture_no_url = "URL नहीं है।",
		picture_invalid_url = "अमान्य URL, https:// से शुरू होना चाहिए।",
		picture_no_description = "विवरण नहीं है।",
		picture_failed = "चित्र बनाने में विफल रहा।",

		auto_run_already_set_to = "ऑटो-रन कंट्रोल ${controlId} के लिए पहले से ही सेट है।",
		auto_run_already_unset = "ऑटो-रन पहले से ही अनुस्थापित नहीं है।",
		auto_run_set_to = "ऑटो-रन को ${controlId} पर नियंत्रित करने के लिए सेट किया गया है।",
		auto_run_unset = "ऑटो-रन अनुस्थापित नहीं है।",

		invalid_server_id = "अवैध सर्वर आईडी।",
		walk_forwards_success = "${displayName} के लिए चलते हुए आगे जाने को सफलतापूर्वक टॉगल किया गया।",
		walk_forwards_failed = "${displayName} के लिए चलते हुए आगे जाने को टॉगल करने में विफल रहा।"
	},

	money = {
		invalid_server_id = "अवैध सर्वर आईडी।",
		invalid_amount = "अवैध राशि।",
		something_went_wrong = "कुछ गलत हो गया।",
		not_enough_cash = "आपके पास पर्याप्त नकदी नहीं है।",
		not_close_enough = "आप खिलाड़ी के पास पर्याप्त नहीं हैं।",
		user_not_available = "उपयोगकर्ता उपलब्ध नहीं है।",

		bill_received = "${displayName} ने आपको $${amount} के लिए एक बिल भेजा है। इसे स्वीकार करने के लिए `/yes` टाइप करें या `/no` टाइप कर के इसे अस्वीकार करें।",
		bill_expired = "${displayName} से आपके बिल का समय समाप्त हो गया है।",
		bill_declined = "आपने ${displayName} के बिल को अस्वीकार कर दिया है।",
		failed_bill_payment = "बिल भुगतान विफल हुआ।",
		bill_success = "सफलतापूर्वक $${amount} बिल का भुगतान ${displayName} से किया गया है।",
		bill_created = "आपने $${amount} के एक बिल को ${displayName} को सौंपा है।",

		givecash_success = "आपने ${displayName} को $${amount} दिए हैं।",

		give_cash_title = "नकदी ट्रांसफर",
		give_cash_details = "${consoleName} ने ${targetConsoleName} को $${amount} ट्रांसफर किया।",
		paid_bill_title = "बिल भरा",
		paid_bill_details = "${consoleName} ने ${targetConsoleName} के $${amount} के बिल को भरा।",
		bill_created_title = "बिल बनाया गया",
		bill_created_details = "${consoleName} ने ${targetConsoleName} के लिए $${amount} का एक बिल बनाया है।"
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] चेम्बर भरें",
		collect_moonshine = "[${InteractionKey}] मूंगफली का अंगूर इकट्ठा करें",
		fermenting = "${प्रतिशत}% फर्मेंटेशन हो रही है",
		filling_chamber = "भरने वाला कमरा",

		not_enough_items = "आपके पास कमरे को भरने के लिए पर्याप्त आइटम नहीं हैं।",
		something_went_wrong = "कुछ गड़बड़ हो गई है।",
		failed_fill = "कमरे को भरने में विफल रहा।",
		failed_empty = "मूंगफली को निकालने में विफल रहा।",

		press_to_sell_moonshine = "मूंगफली बेचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		local_not_interested = "स्थानीय वर्तमान में इच्छुक नहीं लगता है।",
		selling_moonshine = "मूंगफली बेच रहे हैं।"
	},

	nos = {
		press_to_install_nitro_tank = "नाइट्रो टैंक इंस्टॉल करने के लिए ~INPUT_CONTEXT~ दबाएं।",
		installing_nitro_tank = "नाइट्रो टैंक स्थापित कर रहें हैं",
		press_to_remove_nitro_tank = "नाइट्रो टैंक हटाने के लिए ~INPUT_CONTEXT~ दबाएं।",
		removing_nitro_tank = "नाइट्रो टैंक हटा रहे हैं"
	},

	notepads = {
		take_notes = "नोट लें...",
		press_to_open = "इस नोटपैड को खोलने के लिए ~INPUT_DETONATE~ दबाएं।",
		notepad_busy = "कोई दूसरा इस नोटपैड में है।",
		dropped_notepad_title = "नोटपैड गिरा दिया",
		dropped_notepad_text_title_details = "${consoleName} ने `${text}` टेक्स्ट वाले नोटपैड को गिरा दिया।",
		updated_notepad_title = "नोटपैड अपडेट",
		updated_notepad_text_title_details = "${consoleName} ने `${text}` टेक्स्ट वाले नोटपैड को अपडेट किया।",
		picked_up_notepad_title = "नोटपैड उठाया गया",
		picked_up_notepad_text_title_details = "${consoleName} ने `${text}` वाले नोटपैड को उठाया है।",
		invalid_notepad_id = "अवैध नोटपैड आईडी।",
		failed_notepad_info = "नोटपैड सूचना प्राप्त करने में विफल।",
		notepad_info = "नोटपैड ${notepadId} ${droppedBy} द्वारा छोड़ा गया था।",
		failed_notepad_wipe = "नोटपैड साफ़ न कर पाने की असफलता।",
		invalid_notepad_wipe_radius = "अवैध त्रिज्या (न्यूनतम = 1, अधिकतम = 100)।",
		notepad_wipe_success = "${amount} नोटपैड सफलतापूर्वक साफ किए गए।",
		sign_invalid_slot = "अवैध इन्वेंटरी स्लॉट।",
		signed_notepad = "बजट में सफलतापूर्वक नोटपैड हस्ताक्षर किया गया `${slotId}` में।",
		failed_sign_notepad = "नोटपैड के हस्ताक्षर करने में विफल रहा।",
		sign_already_signed = "आप इस नोटपैड को हस्ताक्षर नहीं कर सकते।",

		notepad_info_missing_permissions = "खिलाड़ी ने उचित अनुमतियों के बिना नोटपैड की जानकारी प्राप्त करने का प्रयास किया।",
		wipe_notepads_missing_permissions = "खिलाड़ी ने उचित अनुमतियों के बिना नोटपैड साफ करने का प्रयास किया।"
	},

	notices = {
		message_too_long = "संदेश में अधिक अक्षर या लाइन हैं!",
		invalid_notice_id = "अमान्य सूचना आईडी।",
		successfully_removed_notice = "सफलतापूर्वक सूचना हटा दी गई।",
		failed_remove_notice = "नोटिस हटाने में विफल रहा।",

		add_notice_missing_permissions = "खिलाड़ी ने उचित अनुमतियों के बिना एक नोटिस जोड़ने का प्रयास किया।",
		remove_notice_missing_permissions = "खिलाड़ी ने उचित अनुमतियों के बिना एक नोटिस हटाने का प्रयास किया।"
	},

	objects = {
		saved_found_objects = "सर्वर पर एक फ़ाइल में `${modelName}` मॉडल के साथ `${foundObjectsAmount}` फ़ाइंड ऑब्जेक्ट सहेजे गए।",
		no_nearby_objects_with_model_found = "`${modelName}` मॉडल के कोई नजदीकी वस्तुएं नहीं मिलीं।",
		invalid_model_name = "`${modelName}` मॉडल एक मान्य मॉडल नहीं है।",
		missing_model_name = "मॉडल नाम गुम हो गया।"
	},

	orbitcam = {
		enabled_orbitcam = "ऑर्बिटकैम सक्रिय किया गया।",
		disabled_orbitcam = "ऑर्बिटकैम अक्षम किया गया।",
		orbitcam_failed = "ऑर्बिटकैम सक्रिय करने में विफल हुआ। क्या आपके पास नोक्लिप या इससे समान कुछ सक्षम है?",

		orbitcam_logs_title = "ऑर्बिटकैम टॉगल किया गया",
		orbitcam_on_logs_details = "${consoleName} ने अपना ऑर्बिटकैम टॉगल किया।",
		orbitcam_off_logs_details = "${consoleName} ने अपना ऑर्बिटकैम टॉगल किया।",

		orbitcam_no_permission = "अनुमति के बिना अपना ऑर्बिटकैम टॉगल करने का प्रयास किया गया।"
	},

	overview = {
		header_title = "ओपी फ्रेमवर्क - अवलोकन यूआई",
		select_information = "जानकारी",
		select_activity_points = "गतिविधि अंक",
		select_staff_points = "कर्मचारी अंक",
		select_moderation = "मॉडरेशन",
		select_handling_overrides = "हैंडलिंग ओवरराइड",
		select_settings = "सेटिंग्स",
		about_title = "ओवरव्यू यूआई के बारे में",

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

		about_activity_points_title = "गतिविधि अंक के बारे में",

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

		activity_points_this_week = "इस हफ्ते",
		activity_points_last_week = "पिछले हफ्ते",
		activity_points_current = "गतिविधि अंक: <b>${activityPoints} + ${gainAmount}/मिनट</b>",
		activity_points_current_no_gain = "गतिविधि अंक: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>आपका वर्तमान गतिविधि लक्ष्य कम नौकरी प्राथमिकता के लिए 400 अंक पर है, <b>${remainingPoints} शेष हैं</b>!",
		activity_points_goal_medium = "<br><br>आपका वर्तमान गतिविधि लक्ष्य मध्यम नौकरी प्राथमिकता के लिए 700 अंक पर है, <b>${remainingPoints} शेष हैं</b>!",
		activity_points_goal_high = "<br><br>आपका वर्तमान गतिविधि लक्ष्य उच्च नौकरी प्राथमिकता के लिए 1000 अंक पर है, <b>${remainingPoints} शेष हैं</b>!",
		activity_points_goal_none = "<br><br>आपके पास वर्तमान में कोई गतिविधि लक्ष्य नहीं हैं।",
		activity_points_not_enough = "आपके पास पिछले हफ्ते कुछ्रित अंक प्राप्त करने के लिए काफी नहीं थे, कतार में प्राथमिकता प्राप्त करने के लिए।",
		activity_points_last_week_low = "शानदार, आपके पास पिछले हफ्ते पर्याप्त गतिविधि अंक थे जो कतार में कम प्राथमिकता प्राप्त करने के लिए पात्र होने के लिए पर्याप्त हैं।",
		activity_points_last_week_medium = "बहुत खूब, आपके पास इस हफ्ते पिछले हफ्ते पर्याप्त गतिविधि अंक थे जो कतार में मध्यम प्राथमिकता प्राप्त करने के लिए पात्र होने के लिए पर्याप्त हैं।",
		activity_points_last_week_high = "अति उत्तम, आपके पास पिछले हफ्ते पर्याप्त गतिविधि अंक थे जो कतार में उच्च प्राथमिकता प्राप्त करने के लिए पात्र होने के लिए पर्याप्त हैं! ",

		about_staff_points_title = "कर्मचारी अंक के बारे में",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "इस हफ्ते",
		staff_points_current = "कर्मचारी अंक: <b>${staffPoints} + ${gainAmount}/मिनट </b>",
		staff_points_current_no_gain = "कर्मचारी अंक: <b>${staffPoints}</b>",
		staff_points_table = "कर्मचारी अंक तालिका",
		this_week = "इस हफ्ते",
		one_week_ago = "1 हफ्ते पहले",
		two_weeks_ago = "2 हफ्ते पहले",
		three_weeks_ago = "3 हफ्ते पहले",
		four_weeks_ago = "4 हफ्ते पहले",
		five_weeks_ago = "5 हफ्ते पहले",
		six_weeks_ago = "6 हफ्ते पहले",
		seven_weeks_ago = "7 हफ्ते पहले",
		eight_weeks_ago = "8 हफ्ते पहले",
		previous_weeks_average = "पिछले हफ्तों का औसत",

		about_detection_areas_title = "पता लगाने वाले क्षेत्र",
		about_detection_areas_text = "जब एक चीटर अनचाहे वाहन और/या लोगों को स्पान करते हुए पहचानने की कोशिश करता है, तो पता लगाने वाले क्षेत्र स्टाफ़ सदस्यों के लिए एक उपयोगी उपकरण हो सकते हैं। एक पता लगाने वाले क्षेत्र बनाने के लिए, `/detection_area_add` का उपयोग करें। एक अवलोकन क्षेत्र एक बार बनाया जाता है, वह यहाँ दिखाई देगा। प्रत्येक क्षेत्र में केवल नवीनतम 100 संस्करणों का लॉग बनाया जाएगा।",
		detection_area_title = "पता लगाने वाला क्षेत्र #${detectionAreaId}",

		about_sound_effects_title = "ध्वनि प्रभाव",
		about_sound_effects_text = "ये फ़ील्ड आपको कुछ ध्वनि प्रभाव ओवरराइड करने की अनुमति देते हैं। इन्हें ठीक से काम करने के लिए एक .oog फ़ाइल के लिए एक लिंक की आवश्यकता होती है। यह एक https:// URL और न कि http:// URL होना चाहिए। फ़ाइल अपलोड करने का एक आसान तरीका यह हो सकता है कि इसे discord पर अपलोड करें, फिर उसका लिंक कॉपी करें और इस फ़ील्ड में डालें।",
		radio_mic_click_on = "रेडियो माइक क्लिक (ऑन)",
		radio_mic_click_off = "रेडियो माइक क्लिक (ऑफ)",
		clipboard_animation = "क्लिपबोर्ड एनीमेशन",
		sound_effect_placeholder = "फ़ाइल .oog के लिए URL...",
		sound_effect_save = "सहेजें",
		sound_effect_reset = "रीसेट करें",

		staff_notifications_reports = "रिपोर्ट अधिसूचनाएँ",
		staff_notifications_staff_chat = "कर्मचारी चैट अधिसूचनाएँ",
		staff_notifications_general = "सामान्य अधिसूचनाएँ",
		staff_notifications_anti_cheat = "एंटी-चीट अधिसूचनाएं",

		december_1 = "1 दिसंबर",
		december_2 = "2 दिसंबर",
		december_3 = "3 दिसंबर",
		december_4 = "4 दिसंबर",
		december_5 = "5 दिसंबर",
		december_6 = "6 दिसंबर",
		december_7 = "7 दिसंबर",
		december_8 = "8 दिसंबर",
		december_9 = "9 दिसंबर",
		december_10 = "10 दिसंबर",
		december_11 = "11 दिसंबर",
		december_12 = "12 दिसंबर",
		december_13 = "13 दिसंबर",
		december_14 = "14 दिसंबर",
		december_15 = "15 दिसंबर",
		december_16 = "16 दिसंबर",
		december_17 = "17 दिसंबर",
		december_18 = "18 दिसंबर",
		december_19 = "19 दिसंबर",
		december_20 = "20 दिसंबर",
		december_21 = "21 दिसंबर",
		december_22 = "22 दिसंबर",
		december_23 = "23 दिसंबर",
		december_24 = "24 दिसंबर",
		hatch_closed = "बंद",
		hatch_open = "खोलें",
		hatch_claim = "दावा करें",
		hatch_opened = "दावा किया",
		hatch_waiting = "इंतजार कर रहा",

		about_advent_calendar_title = "एडवेंट कैलेंडर के बारे में",

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

		unlocks_in_days_hours_minutes_seconds = "${days} दिन, ${hours} घंटे, ${minutes} मिनट और ${seconds} सेकंड में खुलेगा",
		unlocks_in_hours_minutes_seconds = "${hours} घंटे, ${minutes} मिनट और ${seconds} सेकंड में खुलेगा",
		unlocks_in_minutes_seconds = "${minutes} मिनट और ${seconds} सेकंड में खुलेगा",
		unlocks_in_seconds = "${seconds} सेकंड में खुलेगा",
		unlocks_in_an_unknown_amount_of_time = "एक अज्ञात समय के बाद खुलेगा",

		unopened_hatch = "अज्ञात चीज़",
		won_money = "$${amount} कैश",
		won_vehicle = "वाहन (क्रिसमस विशेष)",
		won_queue_priority = "एक सप्ताह की कतार में प्राथमिकता!",

		about_handling_overrides_title = "हथियारिता ओवरराइड की व्यवस्था",
		about_handling_overrides_text = "हथियारिता वर्गों के लिए अस्थायी हथियारिता ओवरराइड बनाएं जो गतिविधि वर्गों का नाम और फ़ील्ड को निर्दिष्ट करते है। ओवरराइड तब तक रखे जाएंगे जब तक वे नहीं हटाए जाते या सर्वर बंद नहीं होता। ये ओवरराइड सर्वर पर सभी खिलाड़ियों के लिए सेट होंगे।",
		add_override = "ओवरराइड जोड़ें",
		add = "जोड़ें",
		model_name = "मॉडल का नाम...",
		field_name = "फ़ील्ड...",
		value = "मूल्य...",
		current_overrides = "वर्तमान ओवरराइड",

		about_explosion_events_title = "विस्फोट घटनाएँ",
		about_explosion_events_about = "यहाँ पिछले 500 विस्फोट घटनाओं के बारे में जानकारी लॉग की गई है। इससे स्टाफ को मॉडर्स को ढूंढने में मदद मिलेगी।",
		about_unusual_explosions = "असामान्य विस्फोट घटनाएं जो सामान्य रूप से नहीं होती हैं।",
		explosions_by_type_title = "टाइप के अनुसार विस्फोट",
		players_causing_explosions_title = "विस्फोट करने वाले खिलाड़ी",
		show_common_events_off = "सामान्य घटनाएँ दिखाएं: बंद हैं",
		show_common_events_on = "सामान्य घटनाएँ दिखाएं: चालू हैं",

		explosion_events_type = "टाइप",
		explosion_events_amount = "मात्रा",
		explosion_events_nearby = "आस - पास",
		explosion_events_distance = "दूरी",
		explosion_events_player = "खिलाड़ी का नाम",

		illegal_weapons_title = "उत्पन्न हुए हथियार",
		illegal_weapons_about = "यहां सिस्टम द्वारा खोजे गए अंतिम 500 हथियारों की घटनाओं को दर्ज किया गया है जो नियमों के विपरीत उत्पन्न हुए हैं। किसी के पास उत्पन्न हुआ हथियार होना आवश्यक नहीं है, क्योंकि मॉडर हथियारों को दूसरे खिलाड़ियों के हाथों में उत्पन्न कर सकते हैं और इसलिए दूसरे खिलाड़ियों का भी वहां नाम सामने आ सकता है।",
		illegal_weapons_by_type = "प्रकार के आधार पर हथियार",
		players_with_spawned_weapons = "उपकरणों के साथ जनगणना वाले खिलाड़ी",

		ped_models_title = "खिलाड़ी पेड मॉडल",
		ped_models_about = "यहाँ हर खिलाड़ी को सूचीबद्ध किया गया है जो कि फ्रीमोड चरित्र मॉडल का उपयोग नहीं कर रहे हैं। इससे चीजों की पहचान करने में मदद मिलनी चाहिए जैसे कि ट्रोल खिलाड़ी या प्रत्येक खिलाड़ी के मॉड महसूस करने में।",
		local_ped_models_title = "स्थानीय पेड मॉडल",
		animal_ped_models_title = "पशु पेड मॉडल",

		fast_movement_title = "त्वरित गति",
		fast_movement_about = "यहाँ हर खिलाड़ी को सूचीबद्ध किया गया है जिसे त्वरितता से चलते हुए पहचाना जाता है। इससे चीजों की पहचान करने में मदद मिल सकती है जैसे कि मॉडर्स।",

		damage_modifier_title = "हानि संशोधक",
		damage_modifier_about = "यहाँ हर खिलाड़ी की सूची दी गई है जो बदले गए हानि संशोधक का पता लगाने में मदद करेगी। यह संभव मोडर्स होने वाले खिलाड़ियों को ढूंढने में मदद करेगा।",

		bad_screen_word_title = "बुरे स्क्रीन शब्द",
		bad_screen_word_about = "यहाँ हर खिलाड़ी की सूची दी गई है जो उनकी स्क्रीन पर निशानित कुछ शब्दों का होने का पता लगाया गया है। यह संभव मोडर्स होने वाले खिलाड़ियों को ढूंढने में मदद करेगा।",

		freecam_detections_title = "फ्रीकैम खोज",
		freecam_detections_about = "यहाँ हर खिलाड़ी की सूची दी गई है जो फ्रीकैम का उपयोग करने के लिए निशानित हुए हैं। यह संभव मोडर्स होने वाले खिलाड़ियों को ढूंढने में मदद करेगा।",

		damage_modifier_name = "खिलाड़ी का नाम",
		damage_modifier_expected = "अपेक्षित",
		damage_modifier_actual = "वास्तविक",

		bad_words_name = "खिलाड़ी का नाम",
		bad_words_words = "ट्रिगर शब्द",

		freecam_detections_name = "खिलाड़ी का नाम",
		freecam_detections_distance = "अधिकतम दूरी",

		hotwire_driving_detections_name = "खिलाड़ी का नाम",

		model = "मॉडल",
		label = "लेबल",
		amount = "राशि",
		console_name = "खिलाड़ी",
		expected = "अपेक्षित",
		actual = "वास्तविक",
		words = "शब्द",
		distance = "दुरी",
		weapon = "हथियार",
		type = "प्रकार",
		nearby = "निकटवर्ती",

		no_entries = "कोई प्रविष्टियां नहीं हैं"
	},

	oxy = {
		press_to_talk_to_jc = "JC से बात करने के लिए दबाएं ~g~${InteractionKey} ~w~.",
		tutorial_will_play_next_time = "ऑक्सी ट्यूटोरियल अगली बार जब आप रन शुरू करेंगे तब चलाया जाएगा।",
		prescription_pick_up = "निर्धारित करें औषधि पिक अप: ${label}",

		pick_up_the_prescriptions = "अपने मानचित्र पर चिह्नित हुए जाली रसीदों को उठाएं।",
		redeem_them_at_the_city = "जब आप उन्हें ले लें, तो आपको उन्हें शहर में रिडीम करना होगा।",
		jc_will_be_expecting_some_back = "~y~जेसी~w~, ${pickUpAmount} ऑगजी के 6 वापस लौटते हुए उम्मीदवार होंगे।",
		you_have_limited_time = "आपके पास सीमित समय है। आपको ${time} में गोलियों के साथ लौट आना होगा।",
		press_to_hide_unimportant_blips_in_map = "पॉज़ मेनू में जब हैं, तब नॉन-मिशन ब्लिप्स को छुपाने के लिए ~INPUT_SPRINT~ दबाएं।",
		consider_getting_a_smart_watch = "एक स्मार्ट वॉच प्राप्त करना ध्यान में रखें ताकि आप हमेशा अपना जीपीएस देख सकें।",

		press_to_pick_up_prescription = "प्रिस्क्रिप्शन उठाने के लिए ~g~${InteractionKey} ~w~दबाएँ।",

		redeem_oxy_prescription = "ऑक्सी प्रिस्क्रिप्शन अदा करें",
		press_to_redeem_prescription = "प्रिस्क्रिप्शन अदा करने के लिए ~g~${InteractionKey} ~w~दबाएं।",

		check_your_map_to_redeem_prescriptions = "अच्छा काम! प्रिस्क्रिप्शन अदा करने के लिए अपना मानचित्र देखें। आपके पास ${time} बचे हैं।",
		go_to_jc_to_finish_run = "बहुत बढ़िया! दौड़ को समाप्त करने के लिए वापस ~y~JC ~w~जाएँ। आपके पास ${time} बचे हैं।",

		oxy_run_started_title = "ऑक्सी दौड़ शुरू हुई",
		oxy_run_started_details = "${consoleName} ने ऑक्सी दौड़ शुरू की।",

		oxy_run_ended_title = "ऑक्सी रन समाप्त हुआ",
		oxy_run_ended_details = "${consoleName} ने ${time} के बाद अपना ऑक्सी रन पूरा कर लिया और $${payout} कमाया।",

		oxy_run_failed_title = "ऑक्सी रन असफल हुआ",
		oxy_run_failed_details = "${consoleName} ने अपना ऑक्सी रन असफल कर दिया।",

		you_failed_the_run = "आपने रन को असफल कर दिया है। ~y~JC ~w~आपके साथ कुछ समय के लिए खुश नहीं होगा।",

		time_left = "आपके पास ${time} बचे हुए हैं।",

		accidental_call_1_part_1 = "यू, तुम क्या कर रहे हो?",
		accidental_call_1_part_2 = "ओके बेसिकली, मैंने अभी एक चीज सेटअप की है; क्योंकि कुछ लोग ऑक्सी बेच रहे हैं और वो भाई।",
		accidental_call_1_part_3 = "हां, मैंने उसकी प्लेट, उसकी कार, सब कुछ नोट कर लिया है।",
		accidental_call_1_part_4 = "और बेसिकली, जब वो चीज डिलीवर करने के लिए कार से निकलेगा, तो मुझे इसके लिए जंप करना होगा।",
		accidental_call_1_part_5 = "नहीं, उसे पता नहीं है कि यह हम होंगे भाई, मैंने उसे डाउनटाउन भेज दिया है ताकि वह यह सोच सके कि इससे कोई गैंग हो सकती है।",
		accidental_call_1_part_6 = "मुझ पर भरोसा करो, यह आसान है।",
		accidental_call_1_part_7 = "ओहहहह! यू, क्या कह रहे हो मेरे दोस्त? नहीं तुम, दूसरा आदमी! मैंने दो आदमियों को भेजा! लेकिन नहीं तुम!",
		accidental_call_1_part_8 = "तुम ठीक हो! गलत आदमी था ... लेकिन वह कुछ अलग था भाई। यह तुम नहीं थे।",
		accidental_call_1_part_9 = "तुम नहीं थे। क्या तुम समझ रहे हो? वह तुम नहीं था भाई!",
		accidental_call_1_part_10 = "लेकिन सावधान रहें, क्योंकि अगर आप ढंग से नहीं रहते हैं तो मैं निश्चित रूप से आपकी कार ले लूंगा।",
		accidental_call_1_part_11 = "प्यार।",

		accidental_call_2_part_1 = "हाय, तुम कैसे हो?",
		accidental_call_2_part_2 = "हां, मैं झूठ नहीं बोल सकता, मैं सिर्फ तुम्हारे पैरों पर मस्टर्ड लगाना चाहता हूं और इसे एक हॉट डॉग की तरह चाटना चाहता हूं।",
		accidental_call_2_part_3 = "हाय, कैसे हो?",
		accidental_call_2_part_4 = "रुको..",
		accidental_call_2_part_5 = "ओह भगवान, माफ़ करना।",

		accidental_call_3_part_1 = "हाय, तुम कैसे हो?",
		accidental_call_3_part_2 = "हाँ, मैंने उस नए हिप-हॉप गाने को बना दिया है जो तुम्हारे लिए चाहते थे ब्रो।",
		accidental_call_3_part_3 = "हाँ इसमें थोड़ा सा ये भी शामिल है..",
		accidental_call_3_part_4 = "मैं तुमसे प्यार करना चाहता हूँ, मैं तुम्हें प्यार करना चाहता हूँ, मैं तुम्हें प्यार करना चाहता हूँ, मैं तुम्हारी पैरों पर kiss करना चाहता हूँ, मैं-",
		accidental_call_3_part_5 = "वाओ, वो वो.. मैं मतलब वैसा नहीं था..",
		accidental_call_3_part_6 = "ठीक है, गलत नंबर, माफ़ करना भाई, माफ़ करना..",

		accidental_call_4_part_1 = "ब्रो, तुम मेरे घर आओगे नहीं बच्चों के साथ मेरी पोनी वाली खेलों में?",
		accidental_call_4_part_2 = "यह बहुत देर से हो रहा है और मुझे जरूरत है, भाई आप जानते हैं मुझे चमकदार वाला पसंद है और -",
		accidental_call_4_part_3 = "ओके.. भाई गलत नंबर पे हो गया, मेरी तरफ से बड़ी गलती हो गयी, आपने तो सुना ही नहीं।",
		accidental_call_4_part_4 = "क्योंकि अगर आपने सुना, तो आप गए तो आप गए, आप समझते हैं ना?",

		accidental_call_5_part_1 = "यो मम्मी, मुझे थोड़ा सा डर लग रहा है अभी..",
		accidental_call_5_part_2 = "हां मेरे दरवाजे के बाहर कुछ लोग हैं, और- मम्मी मैं क्या करूँ?",
		accidental_call_5_part_3 = "मुझे थोड़ा सा डर लग रहा है, क्योंकि मुझे लगता है मैं गहराई में हूं आपको पता है ना..",
		accidental_call_5_part_4 = "माँ... ओह, ओह... ओह, तुम क्या कह रहे हो भाई?",
		accidental_call_5_part_5 = "हां, नहीं, क्या तुम मेरी अभिनय क्षमताओं से प्यार करते हो?",
		accidental_call_5_part_6 = "लेकिन विश्वास करो, भाई, फिर से उस कॉल को कभी रिकॉर्ड न करें, वरना तुम्हारी पिटाई कर दूंगा।",
		accidental_call_5_part_7 = "तुम्हें पता है मैं क्या कह रहा हूं? मैं वहाँ आऊंगा और तुम्हें अलग अलग काट दूंगा भाई।",
		accidental_call_5_part_8 = "तुम मुझे समझते हो न? भाई?",
		accidental_call_5_part_9 = "इस पर मुझ पर भरोसा करो, भड़वे भाई।",

		accidental_call_6_part_1 = "यो यो छोटे भाई, इधर आ ना।",
		accidental_call_6_part_2 = "अरे भाई, तेरे पापा तुमसे बात कर रहे हैं।",
		accidental_call_6_part_3 = "मुझे पता है कि तुमने उससे मिला नहीं, ले ले, ले ले।",
		accidental_call_6_part_4 = "हेलो? पापा, तुम हो?",
		accidental_call_6_part_5 = "पापा?!",
		accidental_call_6_part_6 = "..रुको, नहीं वह पापा नहीं है, कोई और है! नहीं! क्यों-",
		accidental_call_6_part_7 = "तुम एक बेवकूफ हो, मैं यकीन नहीं कर सकता कि तुम इस पर फंस गए भाई!",
		accidental_call_6_part_8 = "उफ़, भगवान का शुक्र है..",

		maxed_out_runs_part_1 = "भाई, मुझे पता है कि तुम ब्रेड पसंद करते हो लेकिन कुछ दूसरों को भी मौका देना चाहिए।",
		maxed_out_runs_part_2 = "ब्रो, इसे रोको।",
		maxed_out_runs_part_3 = "कुछ ट्रैश HQ के लोगों से बात करो या कुछ करो।",

		mission_completed_1_part_1 = "यू वाग1 भाई, अरे मज़ा आया, मैं जानता था कि मैं तुम पर भरोसा कर सकता हूं भाई।",
		mission_completed_1_part_2 = "अरे, अगर तुम्हें और पैसे बनाने की जरूरत पड़ती है तो तुम्हें पता होगा कि मुझे कहाँ ढूंढना है भाई।",
		mission_completed_1_part_3 = "मैं जल्द ही स्टॉकड हो जाऊंगा, आप चिंता मत करें।",

		mission_completed_2_part_1 = "यूहू तुम क्या कहते हो भाई।",
		mission_completed_2_part_2 = "मैं झूठ नहीं बोल सकता, वह नौकरी एक अच्छी थी।",
		mission_completed_2_part_3 = "हाँ, मुझ पर भरोसा करो, लेकिन क्लाइंट्स अभी आपसे प्यार करते हैं और मैं भी आपसे प्यार करता हूं, क्योंकि आप जानते हैं क्यों?",
		mission_completed_2_part_4 = "आपने मेरे पैसे प्राप्त किए; आपने अपने बहुत सारे पैसे प्राप्त किए।",
		mission_completed_2_part_5 = "आप इसे ले लो, लेकिन बाद में फिर आएं, क्योंकि मुझे फिर से आपकी जरुरत होगी।",

		mission_completed_3_part_1 = "यू हां भाई, तुम क्या कह रहे हो।",
		mission_completed_3_part_2 = "अरे, मैं झूठ नहीं बोल सकता, वहाँ पीछे वाली चीज़ बहुत ही महज़ाबिया थी।",
		mission_completed_3_part_3 = "तुमने इसे बेहतर किया नहीं हो सकता था भाई।",
		mission_completed_3_part_4 = "आखिरी आदमी गलती कर गया था, तो मुझे खुशी है कि मुझे तुम मिल गए।",
		mission_completed_3_part_5 = "बाद में फिर आना भाई, मुझे तुम्हारे लिए और भी कुछ चीज़ है।",

		mission_completed_4_part_1 = "यो, तुम्हें बेचना कैसे करना है उतना ही समझ में आ गया।",
		mission_completed_4_part_2 = "तुम्हें बिजनेस मैन बनने की आवश्यकता हो सकती है भाई, मुझ पर भरोसा करो।",
		mission_completed_4_part_3 = "तुम उसे ऐसे बेच रहे थे जैसे पागल।",
		mission_completed_4_part_4 = "हां हाँ, ओये, प्यार उसके लिए होता है।",
		mission_completed_4_part_5 = "मुझे अलग तरह से तुम्हारी कद्र करता हूं, तो बाद में वापस आना, मैं तुम्हें गोलियों से मदद करूंगा।",
		mission_completed_4_part_6 = "मैं और भी हूँ, हाँ हाँ, मुझपर भरोसा करो।",

		mission_completed_5_part_1 = "अरे भाई, तुम यहाँ क्या कर रहे हो?",
		mission_completed_5_part_2 = "ओह, तुम हो! हां, भाई क्या हाल है?",
		mission_completed_5_part_3 = "हां, अरे, उसके लिए प्यार- हां, उसके लिए प्यार होता है।",
		mission_completed_5_part_4 = "क्योंकि तुमने मुझे उसके लिए बहुत बड़ा वरदान दिया है! अब मेरे पास बहुत सारा पैसा है, मैं खुद को एक नई फ्रेश EDM व्हिप खरीदूंगा। आप जानते हैं ना भाई?",
		mission_completed_5_part_5 = "डिंका ब्लिस्टा, सब कुछ, हां, पर बाद में वापस आओ, अधिकतम लेगिट।",
		mission_completed_5_part_6 = "क्योंकि मेरे पास तुम्हारे लिए कुछ और चीजें हैं भाई।",

		mission_completed_6_part_1 = "वाह, भाई, तुम्हें गोगिंसिमिल का चेहरा पहले देखना चाहिए था।",
		mission_completed_6_part_2 = "वह अपने आप को एक अहमियत समझता है, मैं झूठ नहीं बोल सकता।",
		mission_completed_6_part_3 = "क्या आप नहीं जानते थे कि वह आपके पीछे है?",
		mission_completed_6_part_4 = "वह एक दम कड़क था, लेकिन अच्छा काम किया है।",
		mission_completed_6_part_5 = "मैं झूठ नहीं बोल सकता, तुम इसमें बहुत अच्छे हो ब्रो।",
		mission_completed_6_part_6 = "बाद में वापस आना, मैं अगले कुछ तुम्हारे लिए है। ब्रो।",

		mission_completed_7_part_1 = "हाय, तुम क्या कह रहे हो ब्रो?",
		mission_completed_7_part_2 = "अरे, मैं झूठ नहीं बोल सकता, वहाँ वापस.. सुंदर थी ब्रो।",
		mission_completed_7_part_3 = "तुम और अच्छा नहीं कर सकते थे ब्रो।",
		mission_completed_7_part_4 = "आखिरी आदमी ने गलती की, इसलिए मुझे खुशी है कि मैं तुम्हारे साथ था।",
		mission_completed_7_part_5 = "बाद में फिर आना भाई, मैं तेरे लिए और कुछ सामान लेकर आऊंगा।",

		mission_completed_8_part_1 = "अरे, ये वो बॉसमैन है जिसके बारे में मैंने बात की थी। हां, मुझ पर भरोसा कर। ये बहुत शानदार है भाई।",
		mission_completed_8_part_2 = "ये आदमी बहुत ही शानदार है।",
		mission_completed_8_part_3 = "वो समय पर हर बार डिलिवर करता है।",
		mission_completed_8_part_4 = "ग्राहकों को ये व्यक्ति बहुत अच्छा लगता है।",
		mission_completed_8_part_5 = "मुझे भरोसा है कि वो सफलता की ऊंचाई पर पहुँचेगा, लेकिन तू मुझसे कभी नहीं हरा पाएगा।",
		mission_completed_8_part_6 = "'क्योंकि तुम्हें एक अहमियत की दिक्कत है, तुम समझते हो मैं क्या कह रहा हूँ?'",
		mission_completed_8_part_7 = "लेकिन प्यार के लिए, बाद में आओ मैं आपको अधिक दवा से मदद कर सकता हूँ।",

		mission_failed_1_part_1 = "हां भाई, मैं झूठ नहीं बोल सकता क्लाइंट ने मुझे कॉल किया था और उन्होंने कहा कि आपने मेरे व्यक्ति को वह नहीं पहुंचाया।",
		mission_failed_1_part_2 = "ब्रो, क्या हो रहा है?",
		mission_failed_1_part_3 = "तुम्हारी बड़ी गलती हो गई।",
		mission_failed_1_part_4 = "मेरे सामने से निकल जाओ।",
		mission_failed_1_part_5 = "अगर मैं तुम्हें कभी फिर से देखूँ, तो तुम्हारा अंत हो जायेगा।",

		mission_failed_2_part_1 = "हाँ, हमें अभी एक बड़ी समस्या है।",
		mission_failed_2_part_2 = "झूठ नहीं बोल सकता, तुम देर से पहुंचे, अभी क्या हो रहा है?",
		mission_failed_2_part_3 = "हाँ, भाई, मेरे ग्राहक नाराज हो रहे हैं!",
		mission_failed_2_part_4 = "अरे, फिर से कुछ भी मुझसे लेने नहीं आना भाई।",
		mission_failed_2_part_5 = "भाई, तुम खत्म हो गए हो।",

		mission_failed_3_part_1 = "हाँ, हाँ, हाँ, हाँ, आई आई..",
		mission_failed_3_part_2 = "झूठ नहीं बोल सकता।",
		mission_failed_3_part_3 = "तुम मेरे पहले ऐसे आदमी हो, जो मैं यह कहने जा रहा हूं।",
		mission_failed_3_part_4 = "तुम एक मुर्ख हो।",
		mission_failed_3_part_5 = "तुम जानते हो यह है? हाँ? तुम एक मुर्ख हो।",
		mission_failed_3_part_6 = "तुम जानते हो क्योंकि",
		mission_failed_3_part_7 = "तुम मेरी चीज तक पहुँचाने में विफल रहे हो।",
		mission_failed_3_part_8 = "भाई दूर हो जाओ। मुझे तुम्हारे पास दोबारा नहीं देखना।",
		mission_failed_3_part_9 = "तुम्हारे लिए सीधे निशाने पर होगा, मैं प्रभु से शपथ लेता हूं।",
		mission_failed_3_part_10 = "मेरे पास बंदूकें हैं, मेरे पास शूटर हैं।",
		mission_failed_3_part_11 = "तुम्हारे लिए सब टैगिंग है।",
		mission_failed_3_part_12 = "हाँ, बिस्तरा .. भाग यहाँ से भाई।",

		mission_failed_4_part_1 = "यो, तुम क्या कह रहे हो भाई?",
		mission_failed_4_part_2 = "एक त्वरित बात बताओ ना।",
		mission_failed_4_part_3 = "अगली बार यदि तुम मेरे पास आए तो तुम मरे हुए हो।",
		mission_failed_4_part_4 = "हाँ, क्या तुम जानते हो?",
		mission_failed_4_part_5 = "'क्योंकि तुम मेहनत करते नहीं हो भाई, तुम मेरा दिमाग खराब करते जाते हो।",
		mission_failed_4_part_6 = "इसमें क्या चल रहा है?",
		mission_failed_4_part_7 = "ग्राहक परेशान हो रहे हैं, वे मुझे भड़का रहे हैं कि मैं दुष्ट हूँ, भाई।",
		mission_failed_4_part_8 = "मैं यह मानने में असमर्थ हूं कि मैं तुम्हारे पास आया हूं।",
		mission_failed_4_part_9 = "मुझे लगा कि तुम मेरी ट्रक होगी या कुछ ऐसा होगा भाई।",
		mission_failed_4_part_10 = "लेकिन नहीं, तुम बहुत अहंकारी हो भाई, इसलिए भाई, सुबह शाम तुम्हे भूल जाना चाहता हूँ।",
		mission_failed_4_part_11 = "मेरी नजरों से हटा दो भाई।",

		mission_failed_5_part_1 = "हां, आपने पिछले में बहुत अच्छा नहीं किया ..",
		mission_failed_5_part_2 = "मैं झूठ नहीं बोल सकता भाई, तुमने बहुत बड़ी गलती कर दी।",
		mission_failed_5_part_3 = "तो कभी भी मेरे स्थान पर न आना!",
		mission_failed_5_part_4 = "'क्योंकि मैं ईश्वर की कसम तुम्हें पिछले से भी बुरी तरह से बर्बाद कर दूँगा।",

		mission_failed_6_part_1 = "अरे भाई, तुम बोल क्या रहे हो?",
		mission_failed_6_part_2 = "अरे, तुम मेरी जगह फिर से कभी न आना।",
		mission_failed_6_part_3 = "मैं रैंबो लाऊंगा और उसे तुम्हारे सिर पर लटका दूंगा भाई!",
		mission_failed_6_part_4 = "मैं शपथ खाता हूं! क्योंकि तुमने मुझे बुरी तरह से परेशान कर दिया है भाई!",
		mission_failed_6_part_5 = "मैं तुमसे बेहद नाराज हूं क्योंकि ग्राहक मुझे घंटों बेल कर रहे हैं।",
		mission_failed_6_part_6 = "यह सब तुम्हारी गलती है भाई, यह सब तुम्हारी गलती है...",

		mission_failed_7_part_1 = "भाई, मेरी जगह फिर से मत आना, तुमसे नफरत है।",

		mission_failed_8_part_1 = "अरे भाई, मेरे पैक्\u{200d}स को साफ करने तक तुम चले जाओ।",

		mission_failed_9_part_1 = "अरे भाई, मेरे पैक्\u{200d}स को साफ करने तक तुम चले जाओ।",
		mission_failed_9_part_2 = "नहीं भाई, मेरी वस्तुएँ होने तक तुम कभी वापस मत आना।",
		mission_failed_9_part_3 = "तुमने बड़ा गलत किया है, यहाँ से निकल जाओ भाई।",

		mission_failed_10_part_1 = "अरे भाई, आज रात घर पहुँचोगे उसकी भीख मांगो।",
		mission_failed_10_part_2 = "क्योंकि मैं तुमको पकड़ने जा रहा हूँ।",
		mission_failed_10_part_3 = "भाई, मुझे कभी फिर से नहीं हारने देना है, मुझे सपष्ट तौर पर बताओ।",

		no_pills_1_part_1 = "यू हाय, क्या हाल है भाई, मुश्किल हो गयी है।",
		no_pills_1_part_2 = "क्यूंकि मैं अभी कुछ नहीं रखा हुआ है।",
		no_pills_1_part_3 = "तो बस जो मैं कहना चाहता हूँ..",
		no_pills_1_part_4 = "भाई, अभी दूर हो जाओ और और दोबारा आना।",

		no_pills_2_part_1 = "हाँ, क्या चल रहा है भाई। देख, मुश्किल हो गयी है भाई।",
		no_pills_2_part_2 = "क्यूंकि मेरे पास अभी कुछ नहीं है। कोई मेडिकेशन नहीं है भाई!",
		no_pills_2_part_3 = "हाँ, सब मेरे ऊपर से गुजर गए! कुछ नहीं है भाई!",
		no_pills_2_part_4 = "अरे, मैंने इन लोगों को बुलाया था, मैंने कहा.. ओ वैग1 थो, गोलियां कहाँ हैं?..",
		no_pills_2_part_5 = "मेरे मित्र ने कहा कि वे यहाँ भी नहीं हैं भाई।",
		no_pills_2_part_6 = "ये लोग लिबर्टी सिटी की तरह कुछ घूम रहे हैं भाई जैसे कि ..",
		no_pills_2_part_7 = "वे बहुत देर लगा रहे हैं भाई।",
		no_pills_2_part_8 = "लेकिन भरोसा करो, जब मेरे पास अधिक होगा, तब मैं निश्चित रूप से तुम्हें बताऊँगा भाई।",

		no_pills_3_part_1 = "ओ भाई, तुझे क्या चाहिए?",
		no_pills_3_part_2 = "भाई, हमारे पास अभी कोई गोलियां नहीं हैं, तो तुम फुट जाओ।",
		no_pills_3_part_3 = "मैं गुस्सा होने से पहले तुम्हें बताना चाहता हूं, तुम समझते हो क्या मैं कहना चाहता हूं?",

		no_pills_4_part_1 = "यो, वैग 1 भाई? अभी कोई गोलियाँ नहीं हैं, इसलिए फ़ुक ऑफ़।। फाड़ दो भाई..",
		no_pills_4_part_2 = ".. फाड़ दो, तुम बस गए भाई।।",
		no_pills_4_part_3 = "यहाँ से जाओ भाई, तुम्हारा काम ख़त्म।।",

		no_pills_5_part_1 = "योओओओ.. मेरे बंदे!",
		no_pills_5_part_2 = "तुम कैसे हो भाई? अरे, मुझे झूठ नहीं बोलना पड़ता है, हमारे पास अभी कुछ नहीं है।",
		no_pills_5_part_3 = "तो अभी तुम्हारे लिए थोड़ा पीक है।।",
		no_pills_5_part_4 = "लेकिन मुझे थोड़ी देर में वापस आना है और मैं तुम्हारी सहायता करूंगा।",
		no_pills_5_part_5 = "भाई, प्यार।",

		no_pills_6_part_1 = "भाई.. मैंने तुमसे पहले 2 लोगों के बारे में बताया था कि मेरे पास कुछ नहीं है..",
		no_pills_6_part_2 = "तो अपने छोटे बच्चों की बात सुनकर आप सभी मिलकर अपने आप से चले जाओ।",
		no_pills_6_part_3 = "तुम मुझे समझते हो ना? तुम्हारे यहां समाप्त हो गए हो, भाई। तुम से नफरत है।",

		no_pills_7_part_1 = "हाँ, मैं यहाँ बड़ी चीज़ हूँ, तुम्हें समझ में आ रहा है?",
		no_pills_7_part_2 = "लेकिन बड़ी चीज़ अभी कुछ नहीं है.. तो मूल रूप से तुम्हारी छोटी चीज चली जानी चाहिए।",
		no_pills_7_part_3 = "तुम मेरी बात समझ रहे हो ना?",

		no_pills_8_part_1 = "यो, यो, तुम क्या कह रहे हो?",
		no_pills_8_part_2 = "ए क्या हुआ भाई, मुझे छोटी करनी पड़ेगी अब।",
		no_pills_8_part_3 = "हाँ, बताऊं ना कोई फेडरल एजेंट्स थे जो अभी पहले गए थे।",
		no_pills_8_part_4 = "हमारे पास अभी कोई दवाई नहीं है। तुम मेरी बात समझ रहे हो ना?",
		no_pills_8_part_5 = "मेरे लिए अभी यह तो ऑफ है। अगले बाद आना जब हल्का हो जाये।",

		no_pills_9_part_1 = "हाँ, मैं झूठ नहीं बोल सकता हूँ। कुछ भीड़ियां मेरे पास आकर मेरी सारी वस्तुएं ले गए।",
		no_pills_9_part_2 = "लेकिन चिंता मत करो, मैं उनपर अब तक नजर रख रहा हूं।",
		no_pills_9_part_3 = "तो जब हमें दवाएं मिलेंगी, तो अवश्य वापस आना और मैं आपको निकाल दूंगा, मैं आपके साथ हूँ भाई।",

		no_pills_10_part_1 = "यू, भाई तुम क्या कह रहे हो?",
		no_pills_10_part_2 = "हाँ, अभी, कुछ ऊपर के गुंडे या कुछ हैं भाई।",
		no_pills_10_part_3 = "वे उस चीज़ को डकैती कर ली, इसलिए हम साथ में वहां जाएंगे, वापस लाएंगे और मैं तुम्हें बाहर निकालूंगा भाई।",
		no_pills_10_part_4 = "उसके लिए प्यार।",

		no_pills_11_part_1 = "यू, भाई तुम क्या कह रहे हो? हाँ, अभी कुछ नहीं है भाई... अभी कुछ नहीं है।",
		no_pills_11_part_2 = "अभी तुम्हारे लिए थोड़ा मुश्किल हो रहा है। अभी कुछ नहीं है।",
		no_pills_11_part_3 = "लेकिन मैं सभी को बताना चाहता हूं कि मैं यह क्यों नहीं कह देता ..",
		no_pills_11_part_4 = "क्यों नहीं तुम ब्रो फक ऑफ करते हो। बाद में आना। प्यार।",

		no_pills_12_part_1 = "नहीं यार मेरे पास अभी कुछ नहीं है।",
		no_pills_12_part_2 = "बाद में आना यार, बाद में आना।",

		no_pills_13_part_1 = "ब्रो! फक ऑफ कर यार! मेरे पास कुछ नहीं है भाई!",
		no_pills_13_part_2 = "भाई मेरे पास कुछ नहीं है! अरे चुपचाप शांत हो जाओ!",

		no_pills_14_part_1 = "देख भाई, मैंने बताया था, मेरे पास अभी कोई गोलियां नहीं हैं।",
		no_pills_14_part_2 = "तो अगर तुम चिंग लेने की कोशिश कर रहे हो तो मेरे पास आ जाओ, मैं तुमसे विनती करता हूं।",

		no_pills_15_part_1 = "नहीं, मेरी बात सुनो भाई... तुम मुझे गुस्सा करवा रहे हो।",
		no_pills_15_part_2 = "मैं तुमसे झूठ नहीं बोल सकता भाई।",
		no_pills_15_part_3 = "तो अगली बार तुम मेरी मान नहीं लोगे तो मैं तुम्हारी चिंग कर दूँगा।",

		not_leaving_1_muffled_part_1 = "ठीक है, भाई अभी भी वहीं क्यों है?",
		not_leaving_1_muffled_part_2 = "क्या वह फेड है?",
		not_leaving_1_muffled_part_3 = "अरे, कृपया उसे जाँच करो कि वह फेड है या नहीं, भाई।",

		not_leaving_2_part_1 = "भाई, इधर से चला जा, यहाँ से जा।",

		not_leaving_3_part_1 = "भाई, अभी यहाँ ना रहो।",
		not_leaving_3_part_2 = "मैं कुछ करने की कोशिश कर रहा हूं। तुम समझते हो क्या मैं क्या कह रहा हूं।",
		not_leaving_3_part_3 = "मैं अपने पक्षी को चूमने की कोशिश कर रहा हूं, और तुम बाहर खड़े होकर, मेरी ओर देख रहे हो जैसे कि कोई मूर्ख भाई।",
		not_leaving_3_part_4 = "भाई चला जा।",

		not_leaving_4_part_1 = "भाई, कृपया इधर से जा।",
		not_leaving_4_part_2 = "अरे, मैं ईश्वर पर शपथ लेता हूं भाई।",

		not_leaving_5_part_1 = "भाई अब तुम जोकिंग कर रहे हो। मैं झूठ नहीं बोल सकता।",
		not_leaving_5_part_2 = "मैं वास्तव में वहाँ आऊंगा और तुम्हें अपना बना लूंगा भाई।",
		not_leaving_5_part_3 = "तुम्हें जल्दी से चले जाना चाहिए भाई।",

		not_leaving_6_part_1 = "भाई.. मैं यहाँ का बड़ा बॉस हूं।",
		not_leaving_6_part_2 = "खुश मत होकर यहाँ मालिक बनते फिरते मत रहो और मेरी बात करो भाई।",

		not_leaving_7_part_1 = "ओए, मैं ईश्वर पर शपथ लेता हूं, अगर तुम यह फिर से करोगे तो मैं बैकअप डांसर्स को कॉल कर दूंगा भाई।",
		not_leaving_7_part_2 = "वे तुम्हारे साथ कुछ अलग करेंगे भाई।",

		not_leaving_8_muffled_part_1 = "ठीक है, उसे गीला करो भाई, उसके लिए बहुत समय हो रहा है।",

		not_leaving_9_part_1 = "भाई, बड़ी चिंगा निकालने के लिए मैं तुम्हारे पास नहीं हूँ।",
		not_leaving_9_part_2 = "मैं तुमसे विनती करता हूं कि मेरे ब्लॉक पर अपने पैर न रखें।",
		not_leaving_9_part_3 = "तुम अपने वस्तु को पीछे करो और तुम्हारा काम अभी करो, तुम बहुत देर लगा रहे हो भाई।",
		not_leaving_9_part_4 = "तुम मेरे घर में और मेरी कैबिन में हो, तुम सोचते हो कि तुम कुछ बड़ा सॉर्टा आदमी हो।",
		not_leaving_9_part_5 = "बस करो भाई, मैं तुम्हारी बंद बजाऊंगा।",

		not_leaving_10_muffled_part_1 = "हां, ये आदमी मेरी गली में अपने आप को मालिक समझते हुए कोने में गैस में फंस गया है।",

		not_leaving_11_part_1 = "ओए, जाओ यार, आगे बढ़ो।",
		not_leaving_11_part_2 = "तुम यहाँ से खत्म हो चुके हो, भाई।",

		not_leaving_12_muffled_part_1 = "अरे, इसके लिए बड़ी कठिनाई हो रही है।",
		not_leaving_12_muffled_part_2 = "ये बहुत देर लगा रहा है, ओए भाग यहाँ से, भाई।",
		not_leaving_12_muffled_part_3 = "मैं अभी तुम्हें देख रहा हूं, भाग यहाँ से, भाई।",

		not_leaving_13_muffled_part_1 = "यार! यह व्यक्ति कुछ बहुत लंबे समय तक समय ले रहा है।",
		not_leaving_13_muffled_part_2 = "वह एक गधा है.. वह गधा होना चाहिए या कुछ भी हो ब्रो..",
		not_leaving_13_muffled_part_3 = "वह निश्चित रूप से गधा है।",

		start_1_part_1 = "ओए भाई, ओए ओए.. यहाँ आओ, यहाँ आओ..",
		start_1_part_2 = "यो, अरे, तुम ओक्सी भाग रहें हो ना भाई?",
		start_1_part_3 = "अरे, उसके लिए प्यार तो है ही..",
		start_1_part_4 = "यार, तुम्हें पता है क्या करना है ठीक है?",
		start_1_part_5 = "अरे, बेसिकली तो, मैं अभी तुम्हें पिंग भेजता हूँ।",
		start_1_part_6 = "प्रेम होता है।",

		start_2_part_1 = "अरे, वागवान ब्रो! मेरे दोस्त, एक दम हीरों के पास आओ!",
		start_2_part_2 = "हाँ, हाँ .. तुम फिर से ऑक्सी चलाने की कोशिश कर रहे हो, भाई?",
		start_2_part_3 = "उसके लिए प्रेम भाई।",
		start_2_part_4 = "लेकिन तुम्हें पता ही है कि क्या करना है, ठीक है, अपने दोस्त।",

		start_3_part_1 = "अरे .. अरे भाई, आओ भाई, आओ भाई।",
		start_3_part_2 = "तुम फिर से ऑक्सी चलाने की कोशिश कर रहे हो, भाई?",
		start_3_part_3 = "क्या है? दोस्त, तुम फेड नहीं हो, सही?",
		start_3_part_4 = "ठीक है .. ठीक है .. प्रेम होता है, अरे, तुम जानते हो कि क्या करना है, मैं पिंग और सब कुछ भेज रहा हूँ, भाई।",

		start_4_part_1 = "अरे! क्या तुम पिछली बार से वह अहमियत रखने वाले व्यक्ति हो?",
		start_4_part_2 = "ओय, यहाँ आओ भाई! तुमने पिछली बार अच्छा काम किया है, मैं तुम्हारे बारे में झूठ नहीं बोल सकता ..",
		start_4_part_3 = "बस यही है .. फिर से दौड़ जाओ भाई, तुम्हें पिंग भेज रहा हूँ मेरे भाई।",
		start_4_part_4 = "इसके लिए आभार।",

		start_5_part_1 = "अरे यहाँ आओ नकली लौड़ों के भाई!",
		start_5_part_2 = "हां, हाँ, हाँ .. मैं जानता हूँ - मैं जानता हूँ कि तुम कौन हो भाई..",
		start_5_part_3 = "मुझे न बताओ, मुझे फर्क नहीं पड़ता कि तुम कौन हो भाई.. लेकिन मैं जानता हूँ कि तुम कौन हो।",
		start_5_part_4 = "लेकिन मुख्य रूप से, मैं चाहता हूँ कि आप मुझे ऑक्सी पिल्स फिर से चलाएँ।",
		start_5_part_5 = "तुम उस समय के चीजों को जानते हो भाई? तुम ड्रिल जानते हो ना?",
		start_5_part_6 = "तो मैं तुम्हारे फोन पर उस चीज को भेज रहा हूं भाई, उसके लिए प्यार।",

		start_6_part_1 = "यो वहाँ से मेरा आदमी! कैसे हो भाई!",
		start_6_part_2 = "अबे, क्या हाल है.. मेरा आदमी।",
		start_6_part_3 = "अरे, मुख्य तो ये है.. मैं झूठ नहीं बोलूंगा कि मुझे तुम्हारी आवश्यकता है।",
		start_6_part_4 = "हाँ, हाँ, तुम जानते हो- तुम जानते हो कि मैं क्या कह रहा हूँ, तुम जानते हो कि मैं क्या कह रहा हूँ..",
		start_6_part_5 = "ऑक्सी, हाँ-हाँ, तुम्हे तो अब पता ही होगा। अरे, मैं तुम्हारे फ़ोन पर चीज़ भेजने वाला हूँ।",
		start_6_part_6 = "तुम जो करना चाहते हो, करो भाई, बड़े भाई के लिए प्रेम ही तो होता है।",

		start_7_part_1 = "हाँ, हाँ, हाँ, हाँ, हाँ, यह- अरे, बिस्तर**। याद है, यह उस दिमाग का जैसा लगता है जो पहले वाला था।",
		start_7_part_2 = "मुझे याद है उस व्यक्ति का! हाँ, अरे, तुम मजेदार आदमी हो, मुझे तुमसे बहुत पसंद है।",
		start_7_part_3 = "ओय, मुझे फिर से ऑक्सी दौड़ानी है, मैं झूठ नहीं बोल रहा। तो जल्दी करो भाई।",
		start_7_part_4 = "मैं आपको पिंग भेज रहा हूँ, मैं आपको विवरण भेज रहा हूँ.. हां, हां..",
		start_7_part_5 = "और याद रखें वहाँ..",
		start_7_part_6 = "उसमें से आधा मेरा है, तो आप कुछ भी न ले जाएं या मैं सच्चाई में आपको बाहर कर दूंगा भाई, ठीक है।",

		start_8_look_to_sides_part_1 = "अरे भाई, मैंने वहाँ से गोगिनस्किमल को गुज़ारते हुए देखा है।",
		start_8_look_to_sides_part_2 = "अरे आओ, यहां आओ, यहां आओ भाई, बेतुका न होने का प्रयास न करें।",
		start_8_look_to_sides_part_3 = "यो, यो.. अभी मैं जो चाहता हूँ, आपके पास उसे मुझे देना है।",
		start_8_look_to_sides_part_4 = "मुझे इन गोलियों को भेजने की जरूरत है, ठीक है बॉस मैन।",
		start_8_look_to_sides_part_5 = "मैं आपको इंकरो के विवरण भेज रहा हूं, ब्रो, आप अभी भी कर रहे हैं, ठीक है।",
		start_8_look_to_sides_part_6 = "लेकिन अपना सिर नीचे रखें, क्योंकि मैंने कई फैड्स को उत्पन्न होते देखा है, जैसे कि ठीक है?",
		start_8_look_to_sides_part_7 = "यदि आप पकड़े गए हैं तो! मेरे पास छिपकर मत बोलिए क्योंकि आप मरे भाई हैं!",
		start_8_look_to_sides_part_8 = "तुम क्या कह रहे हो? उसके लिए प्यार।",

		start_9_look_to_sides_part_1 = "यो, मैं सच कहूँ तो मैंने वहाँ एक कॉप जाने दिया था, ब्रो!",
		start_9_look_to_sides_part_2 = "क्या आप सुनिश्चित हैं कि आपका पीछा नहीं कर रहे थे या कुछ नहीं था?",
		start_9_look_to_sides_part_3 = "'क्योंकि मैं सच नहीं बोल सकता FIB इस समय कुछ अगले स्तर की चीजें कर रहे हैं भाई।",
		start_9_look_to_sides_part_4 = "वे हवाई जहाजों से भरे हुए हैं और सब कुछ भाई।",
		start_9_look_to_sides_part_5 = "मैं सब देखता और जानता हूं भाई। मुझ पर भरोसा करो।",
		start_9_look_to_sides_part_6 = "हाँ हाँ.. वह आप पर पूरी तरह से था पहले भाई, आप उस चार्जर को याद करते हैं जो आप पास गए थे भाई?",
		start_9_look_to_sides_part_7 = "लेकिन उसने लाइट नहीं ऑन की थी? लेकिन मुझ पर भरोसा करो..",
		start_9_look_to_sides_part_8 = "हाँ, मुझे वो बात पता है, मुझे वो बात पता है।",

		start_burger_shot_part_1 = "ओ ब्रो, मैंने तुम्हें बर्गर शॉट पर देखा है। क्या तुम पैटी फ्लिप करते हो?",
		start_burger_shot_part_2 = "हाँ, मैं झूठ नहीं बोल सकता, तुम्हें निश्चित रूप से इसकी आवश्यकता है।",

		start_cop_1_part_1 = "ओ ब्रो, मैं मेज बैंक से फेड की सुगंध ले सकता हूँ..",
		start_cop_1_part_2 = "मैं जानता हूँ तुम एक फेड हो।",
		start_cop_1_part_3 = "मैं तुम्हारी छोटे बच्चे जैसी पुलिस गाड़ी को हवा निकालने से पहले बैकअप बुलाऊंगा।",

		start_cop_2_part_1 = "अरे अधिकारी, बताओ क्या है मामला, हम बस Blaine हाउंड का समर्थन कर रहे हैं।",
		start_cop_2_part_2 = "यहां कुछ अवैध नहीं हो रहा है भाई।",

		start_gang_member_part_1 = "मैं वादा करता हूं कि मैंने उस गैंग से तुम्हे फिसलते हुए देखा था...",
		start_gang_member_part_2 = "हां हां, तुम अवश्य ही शॉट ऑन किये जाओगे, मुझे उस dickhead चेहरे के फेस पेंट से पता चलता है।",

		start_group_part_1 = "यो, मैंने सुना है कि तुम लोग मेरे लिए oxy चलाने जाना चाहते हो।",
		start_group_part_2 = "मैं झूठ नहीं बोल सकता, इस समय जितने ज्यादा लोग, उतना ही अधिक उल्लासित होंगे। लेकिन मैं शिर्फ एक से ही गोलियां दे सकता हूं।",
		start_group_part_3 = "तो सुन लेना, जाओ अपने स्क्वाड के साथ और ठीक से काम करो।",
		start_group_part_4 = "क्योंकि समय अभी पैसे के बराबर है भाई, तू समझता है ना।",
		start_group_part_5 = "तू यहां खड़ा होकर बहुत समय ले रहा है, जल्दी कर भाई।",

		start_knife_part_1 = "ओके, तेरे वेस्ट में एक बड़ा रैंबो है मेरे भाई!",
		start_knife_part_2 = "भाई, इसे यहाँ नहीं घुमाता 'कॉस तेरे लिए मुश्किल हो सकता है भाई।",

		start_last_fail_part_1 = "यो, क्या यह मेरा वह आदमी है जो वहाँ है, तू क्या कहता है भाई? अरे, वागवान एंड ऑल ऑफ थैट, मेरे भाई!",
		start_last_fail_part_2 = "अरे बेशक..सच बताऊं तो मुझे तुम्हारी फिर से थोड़ी मदद की ज़रूरत है।",
		start_last_fail_part_3 = "हां हां..तुम्हें पता होगा न तुम्हारे मामले में, ऑक्सी वाले मामले में, तुम्हें पता है।",
		start_last_fail_part_4 = "अरे समझते हो न..फोन पर तुम्हे अंगूठा दिखाऊंगा।",
		start_last_fail_part_5 = "बड़े भाई तुम जो करना है कर लो, तुम्हारे लिए लव।",

		start_legendary_tier_part_1 = "ओहो, तो तुम बड़े घंटो जैसे खेलते हो?",
		start_legendary_tier_part_2 = "लीजेंडरी टियर, ठीक है, लगता है तुम्हें ईडीएम के लिए सम्पूर्ण मंजिल खरीदनी पड़ेगी, मेरे भाई!",
		start_legendary_tier_part_3 = "चलो।",

		start_mechanic_part_1 = "यू, तुम कारों को मरम्मत करते हो क्या?",
		start_mechanic_part_2 = "यो जी, इसके बाद मैं तुमसे मेरे अस्बो को ठीक करने के लिए मांग लूंगा, क्योंकि ब्रो, इसमें बहुत सारे धब्बे हैं।",

		start_mercedes_part_1 = "यो, भाई मुझे आपकी मर्सेडी पसंद है!",
		start_mercedes_part_2 = "मैं झूठ नहीं बोल सकता, इसे तुम यहां से खत्म होने के बाद मेरे पास देना पड़ेगा भाई।",

		start_no_gun_part_1 = "भाई, निकटवर्ती दौरे पर अपनी मित्रता की नाज़ुक दृष्टि से आना जैसे तुम रोब हो नहीं जाओगे।",
		start_no_gun_part_2 = "तुम भाग्यशाली हो कि अभी ओटर्स बाहर हैं, लेकिन...",
		start_no_gun_part_3 = "अगली बार अपना हथियार लेकर रहना।",

		start_on_timer_1_part_1 = "ब्रो, मैं तुमसे झूठ नहीं बोल सकता, तुम पिछला बार फेल हो गए, तो तुम यहाँ क्या कर रहे हो?",
		start_on_timer_1_part_2 = "नहीं ब्रो, जब तुम अपने काम को सही करने का निर्णय करोगे तब फिर से आना, तुम गधे के समान हो।",

		start_on_timer_2_part_1 = "नहीं ब्रो, पिछली बार तुमने मेरा भरोसा तोड़ दिया था..",
		start_on_timer_2_part_2 = "जाकर कुछ अन्य करो, मेरे मेहमान।",

		start_on_timer_3_part_1 = "क्या है ब्रो? तुम उस तरह से गलतियों के बाद यहाँ आ सकते हो क्या?",
		start_on_timer_3_part_2 = "नहीं तुम्हें बेहतर हट जाना चाहिए जब मैं तुम पर ओटर्स को भेजने वाला हूँ, भाई!",

		start_on_timer_4_part_1 = "हाँ, मैं झुठ नहीं बोल सकता कि तुम पिछली बार मुश्किल में नहीं थे, भाई..",
		start_on_timer_4_part_2 = "मैं झुठ नहीं बोल सकता कि यदि तुम इस जगह पर और 2 सेकंड के लिए रुकते हो तो तुम्हारे लिए थोड़ा बुरा होगा, मेरे दोस्त..",

		start_on_timer_5_part_1 = "यू, तुम क्या कहते हो?",
		start_on_timer_5_part_2 = "मैं झुठ नहीं बोल सकता कि भाई तुम पिछली बार ठीक से नहीं कर पाए हो, तुमने दवाओं का पता भी नहीं लगाया था, भाई..",
		start_on_timer_5_part_3 = "जैसे तुमने बलात्कार कर दिया भाई..",
		start_on_timer_5_part_4 = "भाई, फिर से नीचे मत आना! तुम मेरा मतलब समझते हो?",
		start_on_timer_5_part_5 = "मैं तुम्हारे नाम को जानता हूँ, मैंने तुम्हारा चेहरा देखा है। तुम यहाँ से खत्म हो गए हो।",

		start_on_timer_6_part_1 = "हां, यह आदमी खुद को बेहतर समझता है। गलती करें और मुझसे वापस आकर माफी मांगना...",
		start_on_timer_6_part_2 = "नहीं भाई, यहाँ ऐसा काम नहीं करता।",
		start_on_timer_6_part_3 = "तुम अपनी खुशी से अपनी जान बचाओ।",

		start_on_timer_7_part_1 = "हां, मैं झूठ नहीं बोल सकता, यह आदमी जल्दबाज़ी में बड़ी ग़लती कर गया है।",
		start_on_timer_7_part_2 = "तुम इस आदमी को देख रहे हो? हां तुम इस लवड़े को देख रहे हो ना?",
		start_on_timer_7_part_3 = "उसने गलती कर दी भाई, आय भाई यहाँ आओ भाई!",
		start_on_timer_7_part_4 = "हाँ मैं झूठ नहीं बोल सकता, तुम बहुत बड़ा लोग हो, यहाँ से जाओ भाई, बाद में फिर आना।",

		start_on_timer_8_part_1 = "हाँ, तुम एक अलग तरह का आदमी हो भाई..",
		start_on_timer_8_part_2 = "यह आदमी मेरी चीजों को घूमता है भाई.. मेरी चीजों को नुकसान पहुँचाता है भाई.. मेरे लोगों को क्रोधित करता है भाई।",
		start_on_timer_8_part_3 = "फिर वापस आता हुआ वह भुगतान की उम्मीद कर रहा है, पैसे की उम्मीद कर रहा है भाई!",
		start_on_timer_8_part_4 = "ब्रेड के इंतजार में रहो भाई .. तुम्हें कोई ब्रेड नहीं मिलेगा भाई।",
		start_on_timer_8_part_5 = "तुम्हें क्रम्ब मिलेगा भाई .. मेरी ब्लॉक से निकल जाओ भाई!",
		start_on_timer_8_part_6 = "यहां से निकल जाओ भाई, तुम खत्म हो गए हैं।",
		start_on_timer_8_part_7 = "फोन भी पिंग कर रहा है भाई, तुम खत्म हो गए हो। मैं इस पर किसी और को लगा दूंगा।",

		start_over_31d_part_1 = "यो भाई! मैं झूठ नहीं बोल सकता। तुम बहुत लंबे समय से यहाँ हो।",
		start_over_31d_part_2 = "मैं तुमसे बेबसी से कहता हूं कि जल्दी से कुछ छुआ और वापस आओ भाई।",

		start_over_100k_part_1 = "तुम ग्रब को क्यों धकेल रहे हो जब तुम्हारे पास एक सौ बैग हैं?",
		start_over_100k_part_2 = "क्या यह नकद नहीं है? क्योंकि मैं तुम्हारे पास लुटेरों को भेजूंगा।",

		start_revving_part_1 = "अगर तुम इस कचरे से भरी कार को और ज़ोर से चलाते रहोगे तो हमारी तकलीफ होगी।",
		start_revving_part_2 = "तुम अपना पैर फेंको क्योंकि मैं लगातार तुम्हारे पीछे हूं।",

		start_staff_1_part_1 = "अरे भाई.. क्या तुम वहाँ लमे लोगों को बैन करने और मेरे साथ बकवास नहीं करने वाले हो?",
		start_staff_1_part_2 = "छोड़ो, मुझे पैसे चाहिए लेकिन मैं तुम्हारे पर्यवेक्षकों की निगरानी में हूँ।",

		start_staff_2_part_1 = "भाई, तुम ऑक्सी बेचते हुए दूसरे मॉडरेटर हो।",
		start_staff_2_part_2 = "तुम नौकरी पर होना चाहिए, लेकिन यह नौकरी नहीं।",

		start_streamer_part_1 = "यो उस व्यक्ति को देखो जो सोचता है कि वह कोई बड़ा स्ट्रीमर है!",
		start_streamer_part_2 = "यो एलएस चैट में, इस व्यक्ति से परेशान हो जाओ!",

		start_stressed_part_1 = "भाई! तुम्हारे हाथ क्यों कांप रहे हैं?",
		start_stressed_part_2 = "चलो धूम्रपान करो या कुछ देर तक आराम करो, तुम ज्यादा तनाव में हो।",

		start_subaru_part_1 = "अरे वह सुबारु अच्छी तरह से ऑफ-रोड होनी चाहिए गे!",
		start_subaru_part_2 = "क्योंकि यह ट्रेल मैं आपको ले जाउंगा, यह एक अलग होगा!",

		start_under_10k_part_1 = "भाई, मुझे पता है कि आपके पास 10 हजार रुपये से कम हैं।",
		start_under_10k_part_2 = "तो फिर जल्दी से अपने गरीब वाले बटुए और इन गोलियों को ले जाओ उस स्थान पर.. मेरे भाई।",

		start_under_24h_part_1 = "तुम एक जानवर हो भाई! ऐसे ही जारी रखो।",

		start_zombie_pills_part_1 = "ठीक है तो आपने ज़ैंबी पिल का इस्तेमाल कर लिया और अब आप ऑक्सी पिल्स का इस्तेमाल करना चाहते हैं..",
		start_zombie_pills_part_2 = "नहीं, आप निश्चित रूप से एक क्रैकहेड हो!",

		still_pressing_e_1_part_1 = "एकमत्र, भाई तुम क्यों छंटाई कर रहे हो?",
		still_pressing_e_1_part_2 = "स्थान पर वापस न आना भाई। भाई मैंने तुम्हें पिंग भेजा है, अपना फोन चेक करो।",
		still_pressing_e_1_part_3 = "हां हां, उसे चेक करो.. उसे चेक करो..",

		still_pressing_e_2_part_1 = "भाई, क्या तुम कोई मूर्ख व्यक्ति हो?",
		still_pressing_e_2_part_2 = "भाई, मैंने तुम्हें पिंग भेजा है, क्या तुम अंधे हो गए हो?",
		still_pressing_e_2_part_3 = "उस फोन को चेक करो भाई, दूर हो जाओ भाई!",

		still_pressing_e_3_part_1 = "अरे मैं झूठ नहीं बोलूंगा, तुम मुझसे यह दोबारा करोगे तो मैंने तुमसे बहुत बार कहा है...",
		still_pressing_e_3_part_2 = "अगर तुम फिर से ऐसा करोगे, तो मैं निश्चित रूप से आगे के लोगों को तुम्हारे खिलाफ भेजूंगा।",

		still_pressing_e_4_part_1 = "अब तुम बहुत ज्‍यादा तंग कर रहे हो, चलो भगो यार!",

		still_pressing_e_5_part_1 = "अरे भाई, क्या तुम बेवक़ूफ़ हो या कुछ हो?",
		still_pressing_e_5_part_2 = "अपनी बड़ी आवाज़ वाली बातों के साथ मेरे पास आकर मेरे साथ बातचीत करने आते रहते हो?",
		still_pressing_e_5_part_3 = "अरे अब सीधे उलट जाओ, मैं सच्चाई के नाम पर तुम्हें पीट डालूंगा भाई!",

		still_pressing_e_6_muffled_part_1 = "यह आदमी बेवकूफ है..",

		still_pressing_e_7_muffled_part_1 = "ए इनिट यह आदमी एक बेवकूफ है भाई।",
		still_pressing_e_7_muffled_part_2 = "वह निश्चित रूप से एक बेवकूफ है, वह बार-बार वापस आ रहा है!",
		still_pressing_e_7_muffled_part_3 = "वह सोचता है कि मैं और ज्यादा गुस्से में आ जाऊंगा, मैं और ज्यादा गुस्सा नहीं हो रहा हूँ।",

		still_pressing_e_8_part_1 = "ओए, मैं झूठ नहीं बोल सकता कि तुम अब वास्तव में मुझे गुस्सा करवा रहे हो।",
		still_pressing_e_8_part_2 = "तो उसे दबाना बंद करो।",

		still_pressing_e_9_part_1 = "ओए, मैं झूठ नहीं बोल सकता, अगर आप फिर से ई दबाते रहते हैं भाई।",
		still_pressing_e_9_part_2 = "मैं इस बिच में हिला कर तुम्हें मार डालूँगा, भाई तुम्हारी माँ की आंख।",

		taking_too_long_1_part_1 = "अरे भाई, तुम थोड़ा ज्यादा समय ले रहे हो, समझते हो ना.. ",
		taking_too_long_1_part_2 = "तुम्हें जल्दी से काम पूरा करना चाहिए।",

		taking_too_long_2_part_1 = "अरे, अगर तुम इतना समय लगाते रहोगे तो तुम्हारे लिए बडे समस्या होगी, समझते हो ना?",
		taking_too_long_2_part_2 = "तुम बहुत देर से आ रहे हो, जल्दी से काम पूरा करो भाई।",

		taking_too_long_3_part_1 = "भाई, तुम बहुत देर से लगा रहे हो, मेरा काम छीनने की कोशिश कर रहे हो क्या?",

		taking_too_long_5_part_1 = "क्या तुम खुशी का माहौल बना रहे हो, यह तुम्हारा कोई मजाक है और बड़े आदमी बनकर अपने आप को समझते हो।",
		taking_too_long_5_part_2 = "अरे, आओ ना.. मैं तुम्हारे पास आने के लिए बेसब्र हूँ, मतलब हाथ-पैर तोड़ दूंगा तुम्हारे।",

		taking_too_long_6_part_1 = "अरे, तुम मज़ाक नहीं उड़ा रहे हो ना भाई... अभी मेरी चीज दो फटाफट।",
		taking_too_long_6_part_2 = "जल्दी करो भाई।",

		taking_too_long_7_part_1 = "भाई मैं तुम्हारी कार जानता हूँ..",
		taking_too_long_7_part_2 = "मैं जब तुम चले गए तब देखा था, मत सोचना कि तुम सुरक्षित हो।",

		taking_too_long_8_part_1 = "अच्छा, बस यहीं तो है.. यह तो तुम्हारी अंतिम मौका है भाई।",
		taking_too_long_8_part_2 = "अगर तुम फिर देरी करते हो तो मैं ओटर लोगों को बुलाऊंगा और तुम्हारे लिए बहुत बड़ी मुश्किल हो जाएगी।",
		taking_too_long_8_part_3 = "तुम्हें जल्दी से जल्दी जल्दी करना होगा। समय कम है भाई।",

		too_many_people_1_part_1 = "ओई, मैं झूठ नहीं बोल सकता, मेरे आसपास बहुत सारे लोग हैं भाई!",
		too_many_people_1_part_2 = "तुम सभी यहाँ क्यों हो? लोगों की जगह करने की कोशिश कर रहे हो क्या भाई?",
		too_many_people_1_part_3 = "मैं सच कह रहा हूँ, मेरे पास बंदूकें और हथियार बदले में तैयार हैं।",
		too_many_people_1_part_4 = "तुम समझते हो कि मैं क्या कह रहा हूँ भाई..",
		too_many_people_1_part_5 = "तुम लोग सब पीछे हटो, मैंने कहा था सभी तुम लोग हटो, हां तुम्हारा मतलब तुम भी हटो भाई, भड़्वो मत भाई!",

		too_many_people_2_part_1 = "यो एकदम सच बताऊं, अभी बहुत सारे लोग हैं भाई..",
		too_many_people_2_part_2 = "तुम बहुत चौंका देने वाली तरीके से हर तरफ लोगों के साथ घूम रहे हो भाई।",
		too_many_people_2_part_3 = "तुमने कहा था कि इन इलाकों में सिर्फ एक तुम होगा, पर यहां तुम्हारे चार दिमाग़बाज़ भाई हैं..",
		too_many_people_2_part_4 = "मुझे कोई फर्क नहीं पड़ता कि तुम किसी गैंग के हो या नहीं, भाई। मुझे कोई फ़र्क नहीं पड़ता।",
		too_many_people_2_part_5 = "भाई, इससे पहले कि यह गंभीर हो जाए, तुम अपने और तुम्हारे लोगों को वापस कर दो।",

		tutorial_1_part_1 = "अरे, क्या हाल है भाई? क्या तुम मुझे कुछ oxy ड्राइव करने में मदद करना चाहते हो?",
		tutorial_1_part_2 = "वाह, बढ़िया है! मैं तुम्हें झूठ नहीं बोल सकता कि मैंने इन सभी चीजों के लिए मदद तलाशी नहीं है।",
		tutorial_1_part_3 = "अरे, सुनो तो सही से..",
		tutorial_1_part_4 = "मेरे पास उत्तर भारत में मेरे लिए बनाए गए कुछ झूठे नसीहत हैं।",
		tutorial_1_part_5 = "हां, मगर मैं झूठ नहीं बोल सकता। मेरी मदद करनी पड़ेगी आपकी।",
		tutorial_1_part_6 = "फिर मुझे आवश्यक चीजे लेने के लिए आपकी मदद चाहिए- ओए सुनो, जब मैं आपसे बात कर रहा हूँ तो सुनो!",
		tutorial_1_part_7 = "उन्हें शहर में ले जाकर उन्हें विनिमय करना होगा।",
		tutorial_1_part_8 = "हाँ, आपको उन्हें विनिमय करना होगा।",
		tutorial_1_part_9 = "हाँ मैं आपको फ़ोन पर विवरण भेज रहा हूँ, तो बस अपने GPS की जांच करें आपको सभी चीजों की जरूरत पड़ेगी।",
		tutorial_1_part_10 = "लेकिन ओए.. ज्यादा देर न करें.. वर्ना मैं आपकी पीठ पीछे हमला करवा दूंगा।",
		tutorial_1_part_11 = "और मेरा कहना है कि यह आपके लिए अच्छा नहीं लग रहा है, मैं इसके बारे में झूठ नहीं बोल सकता।",
		tutorial_1_part_12 = "हाँ चलो बड़े भाई..अब मेरे साथ बोलना बंद करें, मेरी तरफ न देखें और जल्दी से चले जाओ।",

		tutorial_2_part_1 = "ओए, क्या हाल है भाई? क्या आप मेरे लिए कुछ oxy चलाने के लिए तैयार हैं?",
		tutorial_2_part_2 = "यो, तुम्हारी बात सुनकर खुश हूँ! अरे, मैं तुमसे झूठ नहीं बोल सकता, मुझे आपके सभी कामों में मदद करने की तलाश है।",
		tutorial_2_part_3 = "यो भाई, मेरे पास यहाँ उत्तर में बहुत से forge निर्धारित दवाइयां हैं।",
		tutorial_2_part_4 = "अगर तुम मेरी मदद कर सकते हो, तो भाई मेरे लिए ये रसीदें सुधारवा दे।",
		tutorial_2_part_5 = "हां, फिर सुनो भाई, उन्हें शहर के बाहर ले जाओ और दवाखानों में उन्हें भुगतान करवा दो।",
		tutorial_2_part_6 = "हाँ, हाँ, हाँ, हाँ..",
		tutorial_2_part_7 = "हाँ, मैं तुम्हारे फोन पर विवरण भेज रहा हूँ, इसलिए बस अपने GPS को देखो और सब ठीक करो, मैं तुम्हारे साथ हूँ।",
		tutorial_2_part_8 = "लेकिन अरे.. तुम बहुत देर ना करो.. वर्ना मैं बाहर लोगों को तुम्हारे पीछे भेज दूंगा।",
		tutorial_2_part_9 = "और मुझे विश्वास करो, वह तुम्हारे लिए अच्छा नहीं दिख रहा है, मैं उसके बारे में झूठ नहीं बोल सकता।",
		tutorial_2_part_10 = "हाँ चलो बड़े भाई, मेरे साथ बोलना बंद करो, मेरा चेहरा मत देखो और जल्दी करो।",

		tutorial_3_part_1 = "यो, क्या हाल है मेरे भाई? मुख्य रूप से, क्या तुम मेरे लिए अभी ऑक्सी चलाने की कोशिश कर रहे हो?",
		tutorial_3_part_2 = "हाँ.. हाँ.. वह तो अच्छा होता है, क्योंकि मैं झूठ नहीं बोल सकता कि मैंने सारी उसमे मदद के लिए तलाश की है।",
		tutorial_3_part_3 = "हाँ, हाँ, हाँ.. मेरे पास उत्तर में कुछ वैध रसीदें हैं। मुझ पर भरोसा करो।",
		tutorial_3_part_4 = "हां, लेकिन मैं झूठ नहीं बोल सकता, तुमसे मेरी मदद चाहिए, मेरे लिए दवाइयों को उठाने के लिए हां-",
		tutorial_3_part_5 = "और फिर मैं सारे शहर में उन्हें रिडीम करवाऊंगा भाई, सभी भेदभाव अप्रैक्टिसिएस में।",
		tutorial_3_part_6 = "हां मैं तुम्हारे साथ हूँ, क्योंकि मैं जो करने जा रहा हूँ हां..",
		tutorial_3_part_7 = "तुम देख रहे हो ना भाई एंक्रो? मैं तुम्हें एंक्रो के विवरण भेजता हूं, तो अपने GPS की जांच करो मेरे भाई।",
		tutorial_3_part_8 = "लेकिन तुम बहुत लंबा नहीं लेना, वरना निश्चित रूप से तुम्हारे पीछे ओटर्स करेंगे इसलिए जल्दी करो।",
		tutorial_3_part_9 = "हां, चलो भाई, मेरे साथ बोलना बंद करो, मेरे चेहरे को देखना बंद करो और जल्दी करो।",
		tutorial_3_part_10 = "प्यार भाई, प्यार।"
	},

	panel = {
		loading_title = "लोड हो रहा है",
		error_title = "कुछ गलत हो गया है",

		was_banned = "बैन हो गया था",
		loading = "खिलाड़ी डेटा लोड हो रहा है...",
		no_warnings = "कोई चेतावनी नहीं",
		not_shown_warnings = "और ${count} चेतावनियां अभी तक दिखाई नहीं दी",
		system_issuer = "सिस्टम",
		add_warning_title = "चेतावनी जोड़ें",
		message_placeholder = "${playerName} ने एक गलती की है...",

		type_note = "नोट",
		type_warning = "चेतावनी",
		type_strike = "स्ट्राइक",
		type_system = "सिस्टम",

		button_cancel = "रद्द करें",
		button_add = "जोड़ें",
		button_close = "बंद करें",
		button_new = "नया",

		invalid_server_id = "अमान्य सर्वर ID.",

		failed_load_player = "खिलाड़ी डेटा लोड करना विफल। क्या आपने एक मान्य सर्वर ID दर्ज किया?",
		failed_add_warning = "चेतावनी जोड़ने में विफल रहा।",

		get_info_no_permissions = "खिलाड़ी के बारे में जानकारी प्राप्त करने का प्रयास करने वाले खिलाड़ी के पास उचित अनुमतियाँ नहीं हैं।",

		user_indefinitely_banned_warning_no_reason = "मैंने इस व्यक्ति को अनिश्चितकालीन रूप से प्रतिबंधित किया है बिना किसी विशिष्ट कारण के। यह चेतावनी बैन के परिणाम स्वरूप स्वचालित रूप से उत्पन्न की गई थी।",
		user_indefinitely_banned_warning = "मैंने इस व्यक्ति को `${reason}` के कारण से अनिश्चितकालीन रूप से प्रतिबंधित किया है। यह चेतावनी बैन के परिणाम स्वरूप स्वचालित रूप से उत्पन्न की गई थी।",
		user_temporarily_banned_warning_no_reason = "मैंने इस व्यक्ति को ${displayTime} के लिए किसी विशिष्ट कारण के बिना प्रतिबंधित किया है। यह चेतावनी बैन के परिणाम स्वरूप स्वचालित रूप से उत्पन्न की गई थी।",
		user_temporarily_banned_warning = "मैंने इस व्यक्ति को ${displayTime} के लिए कारण `${reason}` के साथ बैन कर दिया है। इस चेतावनी को बैन के परिणामस्वरूप स्वचालित रूप से उत्पन्न किया गया था।"
	},

	panic = {
		press_panic_button = "आपके पैनिक बटन (X) दबाने के लिए 5 सेकंड का समय है।",
		panic_button_timeout = "आपने अपने पैनिक बटन को समय पर नहीं दबाया।",

		panic_button_title = "[Dispatch]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} नीचे।",
		panic_button_no_unit = "10-14, ${lastName} ${label} नीचे।",

		panic_blip = "10-14, ${lastName}।",

		label_officer = "अधिकारी",
		label_paramedic = "पैरामेडिक"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] पेपर बैग भरें",
		no_bags = "आपके पास कोई पेपर बैग नहीं हैं।",
		no_bag_items = "आपके पास कोई ऐसे आइटम नहीं हैं जो आप पेपर बैग में डाल सकते हैं।",
		close_bag = "बैग बंद करें",
		cancel_bag = "रद्द करें",
		title = "पेपर बैग",
		failed_fill = "पेपर बैग भरने में विफल रहा।",
		filled_bag = "पेपर बैग सफलतापूर्वक भर दिया गया।"
	},

	parking_meters = {
		not_paid = "अदा नहीं किया",
		insert_dollar = "[${InteractionKey}] $${amount} डालें",

		no_cash = "आपके पास एक डॉलर नहीं है।",
		max_time = "यह पार्किंग मीटर पहले से ही मैक्स आउट हो गया है।",
		failed_pay = "पार्किंग मीटर का भुगतान करने में विफल।"
	},

	pawn_shops = {
		sell_items = "${itemLabel} बेचें",
		press_to_sell_items = "[${InteractionKey}] ${itemLabel} बेचने के लिए दबाएं",
		sold_items = "आपने $${sellPrice} में ${sellAmount}x ${itemLabel} बेच दिए हैं।",
		no_items_to_sell = "आपके पास ${itemLabel} बेचने के लिए कुछ भी नहीं है।",
		daily_limit_reached = "आप अपनी दैनिक सीमा तक पहुंच गए हैं, विक्रेता अधिक आइटम नहीं खरीद रहा है।",
		illegal_pawn_shop_id = "एक विधि अल्पविराम प्रयोग कर अस्तित्व में नहीं होने वाली अधिकतम धनी की विशेषता के लिए का उल्लंघन हुआ।",
		used_pawn_shop_title = "यूज़्ड पॉन शॉप",
		used_pawn_shop_details = "${consoleName} ने एक पॉन दुकान का उपयोग करके ${sellAmount} `${itemLabel}` बेचा और $${sellPrice} प्राप्त किया।"
	},

	ped_messages = {
		attempt_succeeded = "${attemptMessage} का प्रयास किया और सफल हुआ",
		attempt_failed = "${attemptMessage} का प्रयास किया लेकिन विफल रहा",
		dice_message = "एक पासा फेंका और ${diceNumber} प्राप्त किया",
		roll_message = "${rolls}d${max} सेटिंग के साथ एक अनुकूलित पासा फेंका और कुल मूल्य ${totalValue} प्राप्त किया",
		citizen_card_message = "एक सिटिज़न कार्ड दिखाया (${characterId})",
		badge_message = "एक बैज दिखाया (${characterId})",
		license_message = "${characterId} ने एक लाइसेंस दिखाया",
		ped_message_logs_title = "पेड संदेश लॉग",
		ped_message_logs_details = "${consoleName} ने निम्नलिखित संदेश के साथ एक पेड संदेश भेजा: `${pedMessage}`",
		attached_ped_message_logs_title = "संलग्न पेड संदेश",
		attached_ped_message_logs_details = "${consoleName} ने निम्नलिखित संदेश के साथ एक संलग्न पेड संदेश भेजा: `${pedMessage}`",
		chat_ped_messages_enabled = "पेड संदेश अब चैट में दिखाई देंगे।",
		chat_ped_messages_disabled = "पेड संदेश अब और चैट में नहीं दिखाई देंगे।",
		me_message_chat_title = "/मैं [${serverId}]",
		inspect_chat_title = "/जांच [${serverId}]",
		frisk_chat_title = "/तनाव [${serverId}]",
		do_message_chat_title = "/करना [${serverId}]",
		attempt_message_chat_title = "/कोशिश [${serverId}]",
		dice_message_chat_title = "/पासा [${serverId}]",
		roll_message_chat_title = "/रोल [${serverId}]",
		description_message_chat_title = "/विवरण [${serverId}]",
		message_too_long = "संदेश में बहुत सारे वर्ण या लाइन हैं!",
		card_command_wait = "आपने अभी कार्ड खींचा है, दूसरा खींचने से पहले थोड़ी देर इंतजार करें।",
		ped_message_timeout = "धीमे से बोलें, एक दूसरे संदेश भेजने से पहले थोड़ा इंतजार करें।"
	},

	ped_objects = {
		illegal_ped_object = "पेड वस्तुओं की 'अनुमति दी गई' सूची में नहीं होने के कारण पेड वस्तु जोड़ने का प्रयास।",
		illegal_ped_weapon_object = "हथियार सूची में न होने के कारण पेड हथियार वस्तु जोड़ने का प्रयास।"
	},

	ped_task = {
		network_id_invalid = "अवैध नेटवर्क आईडी।",
		ped_not_found = "नेटवर्क आईडी `${networkId}` वाला पेड नहीं मिला।",
		tracked_ped = "ट्रैक किए जाने वाले पेड",
		tracked_ped_is = "पेड (${entity}) है:"
	},

	ped_spawn = {
		ped_missing_model = "मॉडल पैरामीटर गुम है।",
		ped_spawn_success = "पेड सफलतापूर्वक स्पॉन किया गया।",
		ped_failed_spawn = "पेड स्पॉन करने में विफल रहा।",
		invalid_weapon = "अवैध हथियार।",
		ped_remove_success = "सफलतापूर्वक स्पॉन किए गए पेड हटा दिए गए।",
		ped_failed_remove = "स्पॉन किए गए पेड हटाने में विफल रहा।",
		ped_task_success = "सफलतापूर्वक स्पॉन किए गए पेड को '${task}' कार्य असाइन किया गया।",
		ped_failed_task = "स्पॉन किए गए पेड को '${task}' कार्य असाइन करने में विफल रहा।",
		invalid_target = "अवैध टार्गेट सर्वर आईडी।",
		missing_task = "टास्क पैरामीटर अनुपलब्ध है।",
		invalid_task = "अवैध पेड टास्क '${task}'।",
		target_required = "इस पेड टास्क के लिए एक वैध टार्गेट आवश्यक है।",
		ped_emote_success = "'${emote}' ईमोट को सफलतापूर्वक विकसित लोगों में चलाया गया।",
		ped_failed_emote = "'${emote}' ईमोट को विकसित लोगों में चलाने में असफल।",
		invalid_emote = "'${emote}' अमान्य ईमोट।",
		missing_emote = "ईमोट पैरामीटर अनुपलब्ध।",

		emote_list = "उपलब्ध पेड इमोटों: ${list}।",
		task_list = "उपलब्ध पेड कार्य: ${list}।",

		spawn_ped_missing_perms = "परवानगी के बिना, बिना परवानों के एक पेड उत्पन्न करने का प्रयास।",
		remove_peds_missing_perms = "परवानगी के बिना, बिना परवानों को विकसित करने का प्रयास करना।",
		ped_assign_task_missing_perms = "अंग्रेजी (अमेरिका) से जुड़े परमिशन के बिना स्पांदित पेडों को टास्क असाइन करने का प्रयास किया गया।"
	},

	ped_steal = {
		ped_steal_reset = "खिलाड़ी पेड रीसेट कर दिया गया है।",
		ped_steal_success = "पेड स्किन चुरा लिया गया है।",
		ped_steal_failed = "पेड स्किन चुराने में विफल रहा।",
		ped_not_found = "खिलाड़ी पेड नहीं मिला।",
		invalid_server_id = "अवैध सर्वर ID।"
	},

	ped_takeover = {
		failed_reset = "मूल पेड में वापस स्विच करने में विफल रहा।",
		failed_reset_not_exist = "आपका मूल पेड मौजूद नहीं है या आपसे दूर है।",
		failed_takeover = "पेड का तबादला करने में विफल रहा।",
		invalid_network_id = "अमान्य नेटवर्क आईडी।"
	},

	peds = {
		ped_robbing_injection = "अत्यधिक पेड़ लूट! (सर्वर-टाइमआउट को अनदेखा किया गया है, संभवतः इसे करने के लिए एक इंजेक्टर का उपयोग कर रहा है।)",
		robbed_ped_logs_title = "लूटा हुआ पेड़",
		robbed_ped_logs_details = "${consoleName} ने एक पेड़ को लूटा और $${payout} प्राप्त किया।"
	},

	pepper_spray = {
		press_to_pepper_spray = "पेपर स्प्रे का उपयोग करने के लिए ~INPUT_ATTACK~ दबाएं।",
		using_pepper_spray = "पेपर स्प्रे का उपयोग कर रहा है।"
	},

	phone = {
		app_settings = "सेटिंग्स",
		app_contacts = "संपर्क",
		app_calls = "फ़ोन",
		app_messages = "संदेश"
	},

	phone_numbers = {
		no_phone_number_set = "कोई फोन नंबर सेट नहीं किया गया।",
		invalid_format = "सेट किए गए फोन नंबर में अवैध प्रारूप था।",
		invalid_length = "सेट किए गए फोन नंबर की अवैध लंबाई थी।",
		invalid_characters = "सेट किए गए फोन नंबर में अवैध वर्ण थे।",
		phone_number_changed_to = "आपका फोन नंबर `${phoneNumber}` में बदल दिया गया है।",
		phone_number_taken = "फोन नंबर `${phoneNumber}` ले लिया गया है।",
		database_error = "एक बैक-एंड डेटाबेस त्रुटि हुई।",
		no_packages = "आपके पास इसके लिए कोई पैकेज नहीं है।",
		api_error = "हमारे बैक-एंड एपीआई ने एक त्रुटि लौटाई है।",
		api_not_available = "हमारे बैक-एंड एपीआई उपलब्ध नहीं है।",
		phone_number_is_available = "${phoneNumber} फ़ोन नंबर उपलब्ध है।",
		phone_number_is_not_available = "${phoneNumber} फ़ोन नंबर उपलब्ध नहीं है।"
	},

	pictures = {
		selfie_description = "${firstName} ${lastName} की तस्वीर।"
	},

	player_control = {
		unable_to_drive_for_yourself = "आप खुद के लिए ड्राइव नहीं कर सकते हैं।",
		drive_for_player_no_permissions = "यह खिलाड़ी खिलाड़ी के लिए ड्राइव करने का प्रयास किया पर उनके पास इसे करने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		player_is_not_nearby = "सर्वर आईडी ${serverId} वाला खिलाड़ी पास में नहीं है।",
		player_is_not_the_drive_of_a_vehicle = "सर्वर आईडी ${serverId} वाला खिलाड़ी वाहन का चालक नहीं है।",
		press_to_stop_drive_for = "खिलाड़ी के लिए ड्राइविंग बंद करने के लिए ~INPUT_FRONTEND_CANCEL~ दबाएं।"
	},

	player_scales = {
		reset_player_scale_for = "${consoleName} के लिए खिलाड़ी के स्केल को रीसेट करें।",
		set_player_scale_to_for = "${consoleName} के लिए खिलाड़ी के स्केल को `${scale}` पर सेट करें।",
		reset_player_scale = "खिलाड़ी के स्केल को रीसेट करें।",
		set_player_scale_to = "खिलाड़ी के स्केल को `${scale}` पर सेट करें।",
		set_player_scale_no_permission = "खिलाड़ी की स्केल सेट करने के लिए आवश्यक अनुमति नहीं थी।",
		player_is_already_set_to_scale = "${consoleName} अगली स्केल `${scale}` पर सेट कर दिया गया है।",
		you_are_already_set_to_scale = "आप पहले से ही `${scale}` स्केल पर सेट हैं।",
		player_is_not_scaled = "${consoleName} स्केल नहीं किया गया है।",
		you_are_not_scaled = "आप कोई स्केल नहीं कराए गए हैं।"
	},

	player_stats = {
		hp = "एचपी",
		armor = "आर्मर",
		toggle_player_stats_no_permissions = "खिलाड़ी ने उचित अनुमतियां न होने के कारण खिलाड़ी स्टेट्स को टॉगल करने की कोशिश की।",
		updated_render_range = "${renderRange} परिदर्शन सीमा अपडेट की गई।",
		turned_player_stats_on = "खिलाड़ी के आंकड़े ऑन कर दिए गए।",
		turned_player_stats_off = "खिलाड़ी के आंकड़े ऑफ कर दिए गए।"
	},

	players = {
		player_left = "खिलाड़ी ने छोड़ दिया [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "स्ट्रिप नृत्य करने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		this_pole_is_occupied = "यह खंभा अधिगृहीत है।",
		stop_dancing = "नृत्य रोकें",
		change_dance = "डांस बदलें (${animationId})",

		no_model_name_set = "कोई मॉडल नाम सेट नहीं हुआ।",
		invalid_model = "मॉडल '${modelName}' अमान्य है।",
		pole_dancing_offset = "मॉडल '${modelName}': वेक्टर 3 (${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "पूल ओवरफ्लो: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "खिलौने आईडी के साथ अवैध प्रॉप आइटम का प्रयोग करने की कोशिश करने वाले खिलाड़ी ने कोशिश की।",
		spawn_prop_not_staff = "खिलाड़ी ने एक प्रॉप फ़ैला दिया, लेकिन उन्हें उसे स्पॉन करने के लिए आवश्यक अनुमतियां नहीं थीं।",
		managing_props_help = "आप वर्तमान में प्रॉप प्रबंधित कर रहे हैं। किसी प्रॉप के पास जाएं और ~INPUT_CONTEXT~ दबाएं ताकि आप उसे उठा सकें।",
		total_props = "कुल प्रॉप: ${count}",
		active_props = "सक्रिय प्रॉप: ${count}",
		press_to_pick_up = "[${InteractionKey}] उठाने के लिए दबाएं",
		pick_up = "उठाएं",
		picking_up = "उठा रहे हैं",
		press_to_destroy = "[${InteractionKey}] नष्ट करें",
		destroy = "नष्ट",
		destroying = "नष्ट हो रहा है",
		prop = "प्रॉप",
		model_parameter_missing = "`model` पैरामीटर अनुपस्थित है।",
		model_parameter_invalid = "`${model}` मॉडल अमान्य है।",
		model_parameter_is_not_an_object = "`${model}` मॉडल एक वस्तु नहीं है।",
		spawned_prop_non_networked = "मॉडल `${model}` के साथ एक गैर-नेटवर्क्ड प्रॉप स्पॉन हुआ।",
		spawned_prop_networked = "मॉडल `${model}` के साथ एक नेटवर्क्ड प्रॉप स्पॉन हुआ।",
		spawned_exact_prop = "विस्तृत प्रॉप जन्मित हुआ।",
		failed_to_spawn_prop = "`${model}` मॉडल के साथ प्रॉप जन्मित करने में विफल।",
		not_able_to_spawn_in_vehicle = "आप एक वाहन में होने पर एक प्रॉप नहीं उत्पन्न कर सकते।",
		not_able_to_spawn_while_dead = "आप मृत होने पर एक प्रॉप नहीं उत्पन्न कर सकते।",
		not_able_to_spawn_while_moving = "आप जब प्रॉप उत्पन्न कर रहे हो तो ठहरा हुआ होना चाहिए।",
		stand_still_to_place_prop = "एक प्रॉप रखने के लिए आपको ठहरा हुआ होना चाहिए।",
		prop_no_interior = "आप केवल बाहर इस प्रॉप को रख सकते हैं।",

		invalid_prop_id = "अमान्य प्रॉप आईडी।",
		prop_deleted = "${propId} आईडी वाला प्रॉप हटाया गया।",

		invalid_wipe_radius = "अमान्य वाइप त्रिज्या (1 से 100 के बीच).",
		wipe_successful = "प्रॉप्स को सफलतापूर्वक हटा दिया गया।",
		wipe_props_missing_permissions = "खिलाड़ी प्रॉप्स को हटाने का प्रयास करते हुए लेकिन उन्हें इसे करने के लिए आवश्यक अनुमतियाँ नहीं थीं।",

		placing_prop = "प्रॉप रखना",
		pickup_prop = "प्रॉप उठाना",
		setting_up_tire_wall = "टायर वॉल सेट करना",
		destroying_tire_wall = "टायर वॉल नष्ट करना"
	},

	radio = {
		frequency = "फ़्रीक्वेंसी",
		switch = "स्विच",
		radio_turned_off = "रेडियो बंद कर दिया गया है।",
		radio_removed = "आपका रेडियो गायब हो गया है।",
		no_radio = "आपके पास कोई रेडियो नहीं है।",
		unable_to_use_radio_while_cuffed = "जब आप पैर बंद होते हैं तो आप रेडियो का उपयोग नहीं कर सकते।",
		unable_to_use_radio_while_down = "जब आप नीचे होते हैं तो आप रेडियो का उपयोग नहीं कर सकते।",
		unable_to_use_radio_as_animal = "आप जानवर के रूप में रेडियो का उपयोग नहीं कर सकते।",
		frequency_set_to_streamer = "फ्रीक्वेंसी सेट की गई है।",
		frequency_set_to = "फ्रीक्वेंसी ${frequency} पर सेट की गई है।",
		frequency_already_set_to = "फ्रीक्वेंसी पहले से ही ${frequency} पर सेट की गई है।",
		radio_volume_same = "रेडियो वॉल्यूम पहले से ही `${radioVolume}` सेट है।",
		radio_volume_reset = "रेडियो वॉल्यूम अब रीसेट कर दिया गया है।",
		radio_volume_set = "रेडियो वॉल्यूम `${radioVolume}` सेट कर दिया गया है।",
		radio_volume_current = "आपका वर्तमान रेडियो वॉल्यूम `${radioVolume}` सेट है।",
		radio_volume_current_default = "आपका वर्तमान रेडियो वॉल्यूम डिफ़ॉल्ट है।",
		radio_sound_effects_same = "रेडियो ध्वनि प्रभाव की ध्वनि ही `${radioSoundEffects}` सेट है।",
		radio_sound_effects_reset = "रेडियो ध्वनि प्रभाव की ध्वनि अब रीसेट कर दी गई है।",
		radio_sound_effects_set = "रेडियो साउंड इफेक्ट का वॉल्यूम अब `${radioSoundEffects}` पर सेट कर दिया गया है।",
		radio_sound_effects_current = "रेडियो साउंड इफेक्ट का वॉल्यूम `${radioSoundEffects}` पर सेट किया गया है।",
		radio_sound_effects_current_default = "रेडियो साउंड इफेक्ट का वॉल्यूम डिफ़ॉल्ट है।",

		radio_missing_last_freq = "आपके पास एक रेडियो नहीं है जिसमें आप आखिरी फ़्रीक्वेंसी में शामिल हो सकते हैं।",

		radio_debug_failed = "रेडियो डीबग टॉगल करने में विफल रहा।",
		radio_debug_off = "रेडियो डीबग सफलतापूर्वक बंद हो गया है।",
		radio_debug_on = "रेडियो डिबग सफलतापूर्वक टॉगल किया गया।",

		radio_debug_no_permissions = "उचित अनुमति के बिना रेडियो डिबग टॉगल करने का प्रयास किया गया।",

		decrypt_frequency = "[${InteractionKey}] फ्रीक्वेंसी डिक्रिप्ट करें",
		decrypting_frequency = "फ्रीक्वेंसी डिक्रिप्ट हो रही है",
		decrypting_frequency_failed = "फ्रीक्वेंसी को डिक्रिप्ट करने में विफल रहा।",
		decrypter_jammed = "डिक्रिप्टर जाम हो गया है।",
		decrypted_frequency = "फ्रीक्वेंसी `${frequency}` के आसपास है।",
		no_frequency_detected = "कोई फ्रीक्वेंसी नहीं मिली।"
	},

	remote_camera = {
		connected_to_camera = "कैमरा #${id} से कनेक्ट कर लिया गया है।",

		camera_distance = "दूरी: ${distance}मीटर",
		out_of_range = "रेंज से बाहर",

		disconnect = "डिस्कनेक्ट",
		view_feed = "फ़ीड देखें",

		no_nearby_cameras = "कोई पास की कैमरे नहीं",
		nearby_cameras = "${amount} पास की कैमरा(स)",
		no_nearby_cameras_description = "आपके पास कोई कैमरे नहीं हैं।",

		camera_operator = "ऑपरेटर: ${fullName}",

		camera_label = "कैमरा #${id}",
		camera_distance = "दूरी: ${distance}मीटर",
		connect = "कनेक्ट",

		something_went_wrong = "कुछ गलत हो गया है।",
		error_out_of_range = "कैमरा की रेंज से बाहर है।",
		error_not_found = "कैमरा नहीं मिला।"
	},

	reskin = {
		plastic_surgery = "प्लास्टिक सर्जरी",
		los_santos_police_dept = "लॉस संतोष पुलिस विभाग",

		reskin_player_no_permissions = "खिलाड़ी ने सही अनुमति के बिना रेडियो डीबग टॉगल करने का प्रयास किया।",

		triggered_reskin_for_player = "${consoleName} के लिए रीस्किन को ट्रिगर किया।",

		triggered_reskin_for_player_logs_title = "प्लेयर के लिए ट्रिगर किया रीस्किन",
		triggered_reskin_for_player_logs_details = "${consoleName} ने ${targetConsoleName} के लिए रीस्किन को ट्रिगर किया।",

		triggered_reskin_for_self_logs_title = "स्वयं के लिए ट्रिगर किया रीस्किन",
		triggered_reskin_for_self_logs_details = "${consoleName} ने खुद के लिए रीस्किन ट्रिगर किया।",

		no_reskin_packages = "आपके पास कोई रीस्किन पैकेज नहीं हैं।",
		redeemed_reskin_package = "रीस्किन पैकेज सफलतापूर्वक रिडीम किया गया।"
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] टेबल",

		table_title = "टेबल ${tableId}",
		seat = "सीट ${seatId}",
		close_menu = "मेनू बंद करें",
		loading = "लोड हो रहा है...",

		leave_seat = "सीट छोड़ें",
		view_menu = "मेनू देखें",
		change_seating_position = "शीटिंग पोजीशन बदलें (${animationId})",

		sushi = "सुशी",
		drinks = "पेय",
		desserts = "मिठाई",

		aka = "अर्थात",
		kuro = "कुरो",
		shiro = "शिरो",
		midori = "मिदोरी",
		nigiri = "निगिरी",
		sex_on_the_beach = "सेक्स ऑन द बीच",
		mojito = "मोहितो",
		pina_colada = "पिना कोलाडा",
		tiramisu = "तिरामिसू",
		chocolate_mousse = "चॉकलेट मूस",

		food_replenish = "आपका भूख और प्यास ${amount}% से पूरी होगी।",
		thirst_replenish = "आपकी प्यास ${amount}% से पूरी होगी।",
		hunger_replenish = "आपकी भूख ${amount}% से पूरी होगी।",
		diving_drop_boost = "${duration} मिनट के लिए स्कूबा ट्रिप्स से ${amount} बार और ड्रॉप्स मिलेंगे।",
		hunting_drop_boost = "${duration} मिनट के लिए हंटिंग ट्रिप से ${amount} गुना अधिक खाने के विकल्प लें।",
		garbage_drop_boost = "${duration} मिनट के लिए कूड़े दौड़ से ${amount} गुना अधिक ड्रॉप्स प्राप्त करें।",
		faster_progress_bars = "${duration} मिनट के लिए प्रगति बार के लिए ${amount} गुना तेज प्रगति हासिल करें।",
		weapon_damage_multiplier = "${duration} मिनट के लिए ${amount} गुना खतरा सूत्र होने का अनुभव करें।",
		local_sales_multiplier = "स्थानीय लोगों को बेचने वाले उत्पादों के लिए ${amount} गुना बिक्री गुण लाभान्वित करें।",
		shorter_boosting_cooldown = "बूस्टिंग पर हैक करने के बीच ${amount} गुना कम cooldown होने का अनुभव करें।",
		swim_faster = "${duration} मिनट के लिए ${amount} गुना तेज तैरें।",
		walk_faster = "${duration} मिनट के लिए चलने और दौड़ने में ${amount} गुना तेज होइए।",
		health_generation = "${duration} मिनट के लिए धीरे-धीरे स्वस्थ होइए।",
		better_stamina = "${duration} मिनट के लिए स्थमित होकर दौड़ सकें।",
		more_inventory_space = "${duration} मिनट के लिए अतिरिक्त ${amount} इन्वेंटरी स्थान।",

		buffs_note = "बफर सिर्फ इस भवन की परिसर से बाहर जाने के बाद ही सक्रिय होंगे।"
	},

	riot_mode = {
		riot_mode_enabled = "सफलतापूर्वक दंगाई मोड सक्रिय कर दिया गया।",
		riot_mode_disabled = "रायट मोड सफलतापूर्वक निष्क्रिय किया गया। उभयसी पैदल लड़ाकू अन्त तक लड़ते रहेंगे।",
		riot_mode_failed = "रायट मोड टॉगल करने में विफल।",
		riot_mode_missing_perms = "अनुमति के बिना रायट मोड टॉगल करने का प्रयास किया।",

		riot_mode_enabled_help = "रायट मोड सक्रिय हो गया है।",
		riot_mode_disabled_help = "रायट मोड निष्क्रिय हो गया है।",

		add_riot_player_no_permissions = "अनुमति के बिना खिलाड़ी को रायट सूची में शामिल करने का प्रयास किया।",
		remove_riot_player_no_permissions = "अनुमति के बिना खिलाड़ी को रायट सूची से हटाने का प्रयास किया।",

		player_already_in_riot_list = "${consoleName} पहले से ही दंगा सूची में है।",
		player_not_in_riot_list = "${consoleName} दंगा सूची में नहीं है।",
		added_riot_player = "${consoleName} को दंगे सूची में जोड़ा गया।",
		failed_to_add_riot_player = "${consoleName} को दंगे सूची में जोड़ने में विफल रहा।",
		removed_riot_player = "${consoleName} को दंगा सूची से हटा दिया गया।",
		failed_to_remove_riot_player = "${consoleName} को दंगे सूची से हटाने में विफल रहा।"
	},

	safes = {
		how_to_use = "\"A\" और \"D\" दबाकर सेफ को घुमाएं जब तक सही कॉम्बिनेशन नहीं मिल जाता। \"D\" दबाकर शुरू करें।",
		lock_open = "अनलॉक किया गया",
		lock_closed = "लॉक किया गया"
	},

	scoreboard = {
		player_list = "खिलाड़ी सूची",
		players = "खिलाड़ी",
		total = "कुल",
		recent_disconnections = "हाल के डिसकनेक्शन",
		disconnected_player = "डिसकनेक्ट किया गया खिलाड़ी",
		id = "आईडी",
		name = "नाम",
		identifier = "पहचानकर्ता",
		reason = "कारण",
		time_since_disconnection = "डिसकनेक्शन के बाद समय",

		you_are_now_metagaming = "अब आप Metagaming कर रहे हैं।",
		you_are_no_longer_metagaming = "आप अब Metagaming नहीं कर रहे हैं।"
	},

	screenshots = {
		screenshot_created = "एक स्क्रीनशॉट सफलतापूर्वक बनाया गया है।",
		screenshot_failed = "दिए गए उपयोगकर्ता से स्क्रीनशॉट पाने में विफल रहा।",
		screencapture_created = "एक स्क्रीन कैप्चर सफलतापूर्वक बनाया गया है।",
		user_not_found_with_server_id = "दिए गए सर्वर आईडी के साथ कोई उपयोगकर्ता नहीं मिला।",
		invalid_lifespan_parameter = "जीवनकाल पैरामीटर अवैध है।",
		invalid_server_id_parameter = "सर्वर आईडी पैरामीटर अवैध है।",
		invalid_duration_parameter = "अवधि पैरामीटर अवैध है।",
		invalid_fps_parameter = "फ्रेम प्रति सेकंड पैरामीटर अवैध है।",
		missing_server_id_parameter = "सर्वर आईडी पैरामीटर अनुपस्थित है।",

		screenshot_error_client_false = "स्क्रीनशॉट बनाने में विफल हुआ",
		screenshot_error_user_not_found = "उपयोगकर्ता नहीं मिला।",
		screenshot_error_user_developer = "उपयोगकर्ता डेवलपर है।",
		screenshot_error_no_token = "ओपीएफडब्ल्यू टोकन प्राप्त करने में विफल।",
		screenshot_timeout = "स्क्रीनशॉट अनुरोध समय संबंधी समस्या के कारण फेल हुआ।"
	},

	scuba = {
		sunken_ship = "डूबी नाव",
		gather_item = "आइटम एकत्र करें (${distance}मी)",

		collected_junk = "कचरा एकत्र किया।",
		collected_item = "${itemLabel} एकत्र किया।",
		collected_broken_item = "टूटा हुआ ${itemLabel} एकत्र किया।",

		collected_scuba_item_logs_title = "स्कूबा आइटम एकत्र किया।",
		collected_scuba_item_logs_details = "${consoleName} ने एक स्कूबा आइटम इकट्ठा किया और `${itemName}` प्राप्त किया।"
	},

	scuba_gear = {
		equipping_scuba_tank = "स्कूबा टैंक लगा रहा है",
		equipping_scuba_mask = "स्कूबा मास्क लगा रहा है"
	},

	security_cameras = {
		illegal_security_camera = "गैर-कानूनी सुरक्षा कैमरों को हानि पहुंचाने का प्रयास कर रहा है।",
		saved_security_cameras_to_file = "सर्वर पर एक फ़ाइल में `${amount}` सुरक्षा कैमरे सहेजे गए।",
		no_nearby_security_cameras = "पास में कोई सुरक्षा कैमरे नहीं हैं जिन्हें सहेजा जा सके।",
		no_city_ping = "शहर के कैमरों को पिंग करने में विफल।",
		offline = "ऑफ़लाइन",
		camera_list = "कैमरा सूची",
		camera = "कैमरा ${cameraId}",
		mission_row_pd = "मिशन रो पीडी",
		pillbox_hospital = "पिलबॉक्स हॉस्पिटल",
		jewelry_store = "रॉकफ़ोर्ड हिल्स ज्वेलरी स्टोर",
		principal_bank = "प्रिंसिपल बैंक",
		bolingbroke_penitentiary = "बोलिंगब्रोक कारावास",
		fort_zancudo = "फ़ोर्ट ज़ैंकुडो",
		del_perro_pier = "डेल पेरो पियर",
		flywheels_garage = "फ्लाईव्हील्स गैरेज",
		sandy_shores_pd = "सैंडी शोर्स पीडी",
		sandy_shores_hospital = "सैंडी शोर्स हॉस्पिटल",
		davis_sheriffs_station = "डेविस शेरिफ स्टेशन",
		vespucci_pd = "वेस्पुची पुलिस स्टेशन",
		rockford_hills_pd = "रॉकफोर्ड हिल्स पुलिस विभाग",
		la_mesa_pd = "ला मेसा पुलिस विभाग",
		beaver_bush_ranger_station = "बीवर बुश रेंज अवास",
		cinema = "सिनेमा",
		st_fiacre_hospital = "सेंट फाइयाक्रे अस्पताल",
		weazel_news = "वीजेल न्यूज़",
		palomino_fib_facility = "पालोमिनो एफआईबी सुविधा",
		bank_1 = "लेजियन स्क्वायर बैंक",
		bank_2 = "रॉकफोर्ड हिल्स बैंक",
		bank_3 = "आल्टा बैंक",
		bank_4 = "बर्टन बैंक",
		bank_5 = "बैनहाम कैन्यन बैंक",
		bank_6 = "ग्रैंड सेनोरा बैंक",
		bank_7 = "पालेटो बे बैंक",
		grocery_store_1 = "डेविस एलटीडी गैसोलीन",
		grocery_store_2 = "स्ट्रॉबेरी 24/7",
		grocery_store_3 = "मुरिएटा हेइट्स रॉब का शराब",
		grocery_store_4 = "लिटिल सियोल एलटीडी गैसोलीन",
		grocery_store_5 = "वेस्पुची कैनाल रॉब के परिवहन की दुकान",
		grocery_store_6 = "मॉर्निंगवुड रॉब के परिवहन की दुकान",
		grocery_store_7 = "मिरर पार्क एलटीडी गैसोलीन",
		grocery_store_8 = "डाउंटाउन वाइनवुड २४/७",
		grocery_store_9 = "ततवीयम माउंटेंस २४/७",
		grocery_store_10 = "बानहैम कैनान रॉब के परिवहन की दुकान",
		grocery_store_11 = "बानहैम कैनान २४/७",
		grocery_store_12 = "रिचमन ग्लेन एलटीडी गैसोलीन",
		grocery_store_13 = "चुमाश २४/७",
		grocery_store_14 = "हारमनी २४/७",
		grocery_store_15 = "ग्रैंड सेनोरा रॉब के परिवहन की दुकान",
		grocery_store_16 = "ग्रैंड सेनोरा २४/७",
		grocery_store_17 = "सैंडी शोर्स लिकर एस",
		grocery_store_18 = "सैंडी शोर्स 24/7",
		grocery_store_19 = "ग्रेपसीड एलटीडी गैसोलीन",
		grocery_store_20 = "माउंट चिलिएड 24/7",

		-- NOTE: add-on
		paleto_247 = "पलेटो बे 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "आप वर्तमान में कोई वाहन नहीं चला रहे हैं।",
		not_a_self_driving_vehicle = "आप वहाँ से जाने के लिए कोई स्वयं चलने वाली वाहन नहीं चला रहे हैं।",
		no_waypoint_set = "कृपया अपनी गंतव्य को निर्धारित करने के लिए एक वे प्वाइंट सेट करें।",
		invalid_waypoint_set = "आपने अस्वीकृत किया है, आपके निर्दिष्ट किए गए वे पूर्वावलोकन वाहन द्वारा स्वचालित रूप से ड्राइव नहीं किया जा सकते।",
		self_driving_engaged = "ऑटोपायलट सक्रिय कर दिया गया है। दौड़ गति और नीचे झुकने के लिए ~INPUT_SPRINT~ और ~INPUT_DUCK~ दबाएँ।",
		self_driving_disengaged = "ऑटोपायलट अक्षम कर दिया गया है।",
		destination_too_close = "चिह्नित गंतव्य बहुत करीब है।",
		self_driving_could_not_be_engaged = "ऑटोपायलट सक्रिय नहीं किया जा सका।"
	},

	shield = {
		no_weapon_equipped = "बैलिस्टिक ढाल लगाने के लिए आपके पास एक हथियार लगाना आवश्यक है।",
		no_shield = "आपकी इन्वेंटरी में एक बैलिस्टिक ढाल नहीं है।"
	},

	shockwaves = {
		create_shockwave_missing_permissions = "खिलाड़ी ने एक झटका बनाने की कोशिश की, लेकिन उनके पास आवश्यक अनुमतियां नहीं थीं।",
		push_player_missing_permissions = "खिलाड़ी ने एक खिलाड़ी को धक्का देने का प्रयास किया लेकिन उनके पास आवश्यक अनुमतियां नहीं थीं।",
		shockwave_success = "सफलतापूर्वक झटका बनाया गया।",
		shockwave_failed = "झटका बनाने में विफल रहा।",

		invalid_server_id = "अवैध सर्वर आईडी।",
		push_player_success = "खिलाड़ी को सफलतापूर्वक धक्के से नीचे धकेल दिया गया।",
		push_player_failed = "खिलाड़ी को धक्के से नीचे धकेलने में विफल रहा।"
	},

	shooting_ranges = {
		turn_on = "चालू करें ($${cost})",
		turn_off = "बंद करें",
		toggle_through_targets = "लक्ष्यों के माध्यम से टॉगल करें (${modelId})",
		speed = "गति (${speedLevel})",
		rotation = "रोटेशन (${rotationLevel})",
		clear_bullet_impacts = "बुलेट इम्पैक्ट को हटाएं",
		illegal_shooting_spot_value = "शूटिंग स्पॉट के लिए अवैध मान पारित करने का प्रयास।",
		illegal_shooting_spot_id = "शूटिंग स्पॉट के लिए मान पारित करने का प्रयास जो मौजूद नहीं है।",
		not_enough_cash = "आपके पास पर्याप्त नकदी नहीं है।"
	},

	shrooms = {
		press_to_pick_up_shrooms = "श्रूम्स उठाने के लिए ~INPUT_CONTEXT~ दबाएं।",
		picking_up_shrooms = "श्रूम्स उठाना।",
		press_to_sell_shrooms = "श्रूम्स बेचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		local_not_interested = "अभी यह स्थानीय रुचि नहीं दिखा रहा है।",
		not_interested = "यह स्थानीय आपके श्रूम्स में रुचि नहीं ले रहा है।",
		selling_shrooms = "मकड़वाले मशरूम बेच रहा है.",
		shrooms_not_ripe = "ये मशरूम पके नहीं लगते, शायद उन्हें थोड़ा और समय देना चाहिए.",
		shroom_id = "मशरूम-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "~INPUT_CONTEXT~ दबाकर चुंबक टॉगल करें।",
		skylift_magnet_turned_off_logs_title = "स्काइलिफ्ट चुंबक बंद कर दिया गया",
		skylift_magnet_turned_off_logs_details = "${consoleName} ने स्काइलिफ्ट चुंबक बंद कर दिया।",
		skylift_magnet_turned_on_logs_title = "स्काइलिफ्ट चुंबक चालू कर दिया गया",
		skylift_magnet_turned_on_logs_details = "${consoleName} ने स्काइलिफ्ट चुंबक चालू कर दिया।",
		skylift_attached_vehicle_logs_title = "स्काईलिफ्ट संयुक्त वाहन",
		skylift_attached_vehicle_logs_details = "${consoleName} ने अपने स्काईलिफ्ट से एक वाहन को संलग्न किया।"
	},

	smoothies = {
		blend = "मिश्रण करें",
		close = "बंद करें",

		use_blender = "[${InteractionKey}] ब्लेंडर उपयोग करें",
		blending = "मिश्रण",

		smoothie_label = "स्मूथी (${flavors})",
		seperator = "और"
	},

	snow = {
		hold_to_pick_up_snowballs = "होल्ड ~INPUT_CONTEXT~ को स्नोबॉल उठाने के लिए।"
	},

	spawn = {
		spawn_now = "अब उत्पन्न करें",
		last_position = "अंतिम स्थान",

		train_station = "रेलवे स्टेशन",
		city_bus_station = "सिटी बस स्टेशन",
		paleto_bay_bus_station = "पालेटो बे बस स्टेशन",

		mission_row_police_station = "मिशन रो पुलिस स्टेशन",
		sandy_police_station = "सैंडी शोर्स पुलिस स्टेशन",
		paleto_police_station = "पालेटो बे पुलिस स्टेशन",

		mount_zonah = "माउंट जोना",
		sandy_hospital = "सैंडी शोर्स अस्पताल",
		paleto_hospital = "पालेटो बे अस्पताल",

		battle_royale = "युद्ध रोयल"
	},

	special_imports = {
		special_imports_blip = "विशेष आयात",

		purchased_vehicle = "${label} को $${price} के लिए सफलतापूर्वक खरीदा गया है। गाड़ी आपकी गेराज में जोड़ी गई है।",

		something_went_wrong = "कुछ गलत हो गया।",
		not_enough_money = "आपके पास पर्याप्त धन नहीं है।",
		invalid_package = "अमान्य पैकेज स्तर। (आपको गॉडलाइक टियर की आवश्यकता है)",

		dealership_closed = "डीलरशिप वर्तमान में बंद है।",

		purchased_vehicle_logs_title = "विशेष आयात",
		purchased_vehicle_logs_details = "${consoleName} ने ${price} के लिए एक `${modelName}` विशेष आयात वाहन खरीदा (प्लेट: `${plate}`).",

		marker_label = "${label} | $${price} | स्टॉक: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] $${price} के लिए ${label} खरीदें",
		marker_label_purchase_timer = "[${timer}s] $${price} के लिए ${label} खरीदने के लिए ${SeatEjectKey} धारण करें",

		vehicle_sold_out = "${label} | कोई स्टॉक उपलब्ध नहीं है"
	},

	spectating = {
		cannot_spectate_self = "आप खुद को नहीं देख सकते।",
		failed_spectate = "खिलाड़ी को देखने में विफल रहा।",
		player_not_exist = "खिलाड़ी ऑफ़लाइन है।",
		no_character_loaded = "खिलाड़ी के पास कोई चरित्र लोड नहीं है।",
		not_same_instance = "खिलाड़ी आपकी तुलना में नहीं है।",

		loading_coords = "कोऑर्डिनेट लोड हो रहे हैं",
		preloading_area = "प्रीलोडिंग क्षेत्र",
		finding_player = "खिलाड़ी ढूंढ़ रहा है",

		invincibility_active = "अटूटता: ~r~सक्रिय~w~",
		invincibility_inactive_dead = "अटूटता: ~g~निष्क्रिय~w~ (मृत)",
		invincibility_inactive = "अटूटता: ~g~निष्क्रिय~w~",

		health_ok = "स्वास्थ्य: ~g~${health} / ${maxHealth}~w~",
		health_bad = "स्वास्थ्य: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "आर्मर: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "आर्मर: ~r~${armor} / ${maxArmor}~w~",

		speed = "गति: ${speed}${unit}",
		speed_mph = "mph",
		speed_kmh = "kmh",

		exit_spectate = "बाहर निकलने के लिए ~g~${InteractionKey}~w~ दबाएँ",

		spectate_logs_title = "स्पेक्टेटिंग शुरू हुआ",
		spectate_logs_details = "${consoleName} ने ${targetUser} को स्पेक्टेटिंग शुरू किया।",

		spectate_stopped_logs_title = "स्पेक्टेटिंग बंद हुआ",
		spectate_stopped_logs_details = "${consoleName} निगरानी बंद की।"
	},

	spying = {
		microphone_bug_not_activated = "यह बग सक्रिय नहीं है।",
		vehicle_tracker_not_activated = "यह ट्रैकर सक्रिय नहीं है।",
		microphone_bug_active_with_battery = "यह माइक्रोफोन बग वर्तमान में सक्रिय है। इसकी बैटरी ${batteryPercentage}% है। आप इसे \"उपयोग\" करके यह सुन सकते हैं कि यह कौनसी बातें सुन रहा है। Device Id: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "इस माइक्रोफोन बग की बैटरी खत्म हो गई है। फिजिकल माइक्रोफोन बग एक सप्ताह के बाद टूट जाएगा।<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "यह वाहन ट्रैकर वर्तमान में सक्रिय है। इसकी बैटरी ${batteryPercentage}% है। जब तक इस ट्रैकर से जुड़े वाहन उपलब्ध हों, वे आपके मानचित्र पर प्रदर्शित होंगे। <br> <br> यूआईडी: ${deviceId}।",
		vehicle_tracker_ran_out_of_battery = "इस वाहन ट्रैकर की बैटरी खत्म हो गई है। फिजिकल वाहन ट्रैकर एक सप्ताह के बाद अपशिष्ट हो जाएगा। <br> <br> यूआईडी: ${deviceId}",
		scanning_for_devices = "उपकरणों के लिए स्कैन कर रहे हैं",
		searching_for_devices = "उपकरण खोज रहे हैं",
		no_nearby_vehicle = "कोई नजदीकी वाहन नहीं है।",
		placing_vehicle_tracker = "वाहन ट्रैकर रखा जा रहा है",
		error_using_vehicle_tracker = "वाहन ट्रैकर रखने का प्रयास करते समय एक त्रुटि हुई थी।",
		vehicle_tracker_placed = "वाहन ट्रैकर सफलतापूर्वक रखा गया है।",
		error_using_microphone_bug = "माइक्रोफ़ोन बग रखने का प्रयास करते समय एक त्रुटि हुई थी।",
		microphone_bug_placed = "माइक्रोफ़ोन बग सफलतापूर्वक रखा गया है।",
		placing_microphone_bug_on_vehicle = "वाहन पर बग रखा जा रहा है",
		placing_microphone_bug_on_player = "खिलाड़ी पर बग रखा जा रहा है",
		placing_microphone_bug_on_ground = "जमीन पर बग रख रहे हैं",
		error_using_device_scanner = "उपकरण स्कैनर का उपयोग करने के दौरान त्रुटि हुई।",
		error_searching_for_devices = "उपकरणों के लिए खोज करने के दौरान त्रुटि हुई।",
		found_devices = "खोजे गए ${totalDevices} उपकरण।",
		no_nearby_devices_found = "कोई नजदीकी उपकरण नहीं मिले।",
		microphone_bug = "माइक्रोफोन बग",
		microphone_bug_destroy = "माइक्रोफोन बग\n[${InteractionKey}] नष्ट करें",
		vehicle_tracker = "वाहन ट्रैकर",
		vehicle_tracker_destroy = "वाहन ट्रैकर\n[${InteractionKey}] नष्ट करें",
		destroying_device = "डिवाइस नष्ट कर रहा है",
		tracker_will_appear_on_map = "यह ट्रैकर पहले से ही सक्रिय हो चुका है। वाहन उपलब्ध होते ही यह आपके मानचित्र पर दिखाई देगा और ट्रैकर में बैटरी होगी।",
		spy_ui_info = "माइक्रोफ़ोन बग पर सुनवाई (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "माइक्रोफ़ोन बग से बाहर निकलने के लिए ESC दबाएं",
		spy_ui_connecting = "माइक्रोफ़ोन बग से कनेक्ट हो रहा है (#${deviceId})",
		spy_ui_connection_failed = "माइक्रोफ़ोन बग से कनेक्ट नहीं हो सका (#${deviceId})",
		spy_ui_awaiting_data = "डेटा की प्रतीक्षा की जा रही है...",
		spy_ui_data_failed = "डेटा विफल"
	},

	starter_car = {
		your_vehicle_is_nearby = "आपकी निजी गाड़ी निकट है।",
		would_you_like_directions = "क्या आप इसे खोजने के लिए निर्देश पाना चाहेंगे?",
		press_to_respond = "स्वीकृति देने के लिए ~INPUT_FRONTEND_ACCEPT~ दबाएं या अस्वीकृति देने के लिए ~INPUT_FRONTEND_CANCEL~ दबाएं।",
		follow_the_checkpoints = "चेकप्वाइंट्स का पालन करें।",

		received_logs_title = "प्राप्त शुरू हो रही कार",
		received_logs_details = "${consoleName} ने एक शुरू हो रही कार प्राप्त की है (मॉडल: ${modelName})।"
	},

	status = {
		status_reset = "${consoleName} के स्थिति को सफलतापूर्वक रीसेट किया गया।",
		status_reset_failed = "`${serverId}` सर्वर आईडी के साथ कोई उपयोगकर्ता नहीं मिला।",
		reset_status_not_staff = "आवश्यक अनुमतियों के बिना एक खिलाड़ी की स्थिति को रीसेट करने का प्रयास किया गया।",
		status_reset_for_all = "सभी के लिए सफलतापूर्वक स्थिति रीसेट की गई।",
		status_disabled = "स्थितियाँ अक्षम हो गई हैं (तनाव, भूख और प्यास)।",
		status_enabled = "स्थितियाँ सक्षम हो गई हैं (तनाव, भूख और प्यास)।",
		failed_to_set_body_armor_level = "/set_body_armor आदेश को सही ढंग से नहीं चलाया जा सका।",
		set_body_armor_level_player = "${consoleName} के शरीर कोट लेवल को `${bodyArmorLevel}` पर सफलतापूर्वक सेट किया गया।",
		set_body_armor_level_everyone = "सभी के शरीर कोट लेवल को `${bodyArmorLevel}` पर सफलतापूर्वक सेट किया गया।",
		set_body_armor_level_self_title = "अपने शरीर कोट लेवल सेट करें",
		set_body_armor_level_self_details = "${consoleName} ने अपने शरीर कोट लेवल को `${bodyArmorLevel}` पर सेट किया है।",
		set_body_armor_level_everyone_title = "सभी के शरीर कोट लेवल सेट करें",
		set_body_armor_level_everyone_details = "${consoleName} ने सभी के शरीर कोट लेवल को `${bodyArmorLevel}` पर सेट किया है।",
		set_body_armor_level_player_title = "खिलाड़ी के लिए शरीर की कवच स्तर निर्धारित करें",
		set_body_armor_level_player_details = "${consoleName} ने ${targetConsoleName} को अपडेट किया और उनकी शरीर की कवच स्तर को `${bodyArmorLevel}` पर सेट किया।",
		set_body_armor_level_player_not_staff = "खिलाड़ी ने दूसरे खिलाड़ी की शरीर की कवच स्तर निर्धारित करने का प्रयास किया लेकिन उनके पास इसे करने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		set_body_armor_level_self_not_staff = "खिलाड़ी ने अपनी शरीर की कवच स्तर निर्धारित करने का प्रयास किया लेकिन उनके पास इसे करने के लिए आवश्यक अनुमतियाँ नहीं थीं।",
		stress_level_warning = "आप तनाव में हैं! सिगरेट, जॉइंट या योग जैसी गतिविधियों से अपने तनाव को कम करें।"
	},

	streamer_mode = {
		enabled_streamer_mode = "स्ट्रीमर मोड सक्रिय किया गया।",
		disabled_streamer_mode = "स्ट्रीमर मोड अक्षम किया गया।"
	},

	sync = {
		missing_hour = "कोई घंटा नहीं दिया गया।",
		invalid_hour = "स्थानीय समय ओवरराइड अमान्य है। मान 0:00 से 23:59 के बीच का होना चाहिए।",
		hour_changed = "घंटा अब `${hour}` पर सेट हो गया है।",
		set_hour_not_staff = "घंटे को अनुमतियों के बिना सेट करने का प्रयास किया गया।",

		local_time_override_enabled = "स्थानीय समय `${hour}:${minute}` पर सेट किया गया है।",
		local_time_override_disabled = "लोकल समय डिफ़ॉल्ट पर रीसेट किया गया।",
		local_weather_override_enabled = "लोकल मौसम `${weatherName}` पर सेट किया गया है।",
		local_weather_override_disabled = "लोकल मौसम डिफ़ॉल्ट पर रीसेट किया गया।",

		missing_minute = "कोई मिनट नहीं दिया गया।",
		invalid_minute = "मिनट `${minute}` अमान्य है। मूल्य 0 से 59 के बीच होना चाहिए।",
		minute_changed = "अब मिनट `${minute}` पर सेट किया गया है।",
		set_minute_not_staff = "अनुमतियों के बिना मिनट सेट करने का प्रयास किया।",

		missing_weather = "कोई मौसम नहीं दिया गया।",
		invalid_weather = "मौसम `${weatherName}` मान्य नहीं है। मान्य मौसमों के नाम CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT और BLIZZARD हैं।",
		weather_changed = "मौसम अब `${weatherName}` के रूप में सेट किया गया है।",
		weather_advanced = "मौसम `${weatherName}` को अग्रसर किया गया है।",
		weather_advance_fail = "प्राकृतिक रूप से मौसम को आगे बढ़ाना विफल हो गया।",
		set_weather_not_staff = "आवश्यक अनुमतियों के बिना मौसम सेट करने का प्रयास किया गया।",
		advance_weather_not_staff = "आवश्यक अनुमतियों के बिना मौसम को आगे बढ़ाने का प्रयास किया गया।",

		time_frozen = "समय अब जमा हुआ है।",
		time_unfrozen = "समय अब जमा नहीं है।",
		freeze_time_not_staff = "अनुमतियों के बिना समय जमाने का प्रयास किया।",

		weather_frozen = "हवा जमा हो गई है।",
		weather_unfrozen = "हवा अब जमा नहीं है।",
		freeze_weather_not_staff = "अनुमतियों के बिना मौसम को जमाने का प्रयास किया।",

		blackout_enabled = "शहर में अब बिजली की आपूर्ति नहीं हो रही है।",
		blackout_disabled = "शहर में अब बिजली की समस्या नहीं है।",
		blackout_not_staff = "अनुमतियों के बिना बिजली की समस्या को चालू या बंद करने का प्रयास किया।",

		weather_changed_title = "मौसम बदल गया",
		weather_changed_details = "${consoleName} ने मौसम को `${weatherName}` पर बदल दिया।",

		weather_changed_success = "मौसम सफलतापूर्वक `${weatherName}` पर बदल गया।",
		weather_change_failed = "मौसम बदलने में विफल।",
		weather_parameter_invalid = "अमान्य weatherName पैरामीटर।",
		weather_parameter_missing = "weatherName पैरामीटर गुम।",

		time_parameters_invalid = "अमान्य घंटे या मिनट पैरामीटर।",
		time_currently_transitioning = "समय वर्तमान में संक्रमण कर रहा है, कृपया प्रतीक्षा करें।",
		time_successfully_transitioned = "समय को सफलतापूर्वक ट्रांसिशन किया गया `${hour}:${minute}`.",
		time_successfully_set = "समय को सफलतापूर्वक सेट किया गया `${hour}:${minute}`."
	},

	tablet = {
		you_dont_have_a_tablet = "आपके पास टैबलेट नहीं है।",

		app_snake = "सांप",
		app_tetris = "टेट्रिस",
		app_chess = "शतरंज",
		app_minesweeper = "माइनस्वीपर",
		app_flappy_bird = "फ्लैपी बर्ड",
		app_geoguesser = "भूगोल अनुमान",
		app_pdm = "पीडीएम कैटलॉग",
		app_edm = "ईडीएम कैटलॉग",
		app_cat_pictures = "बिल्ली की तस्वीरें",

		folder_games = "खेल",
		folder_productivity = "उत्पादकता",

		snake_title = "सांप",
		snake_description = "ऊपर, नीचे, बाएं और दाएं जाने के लिए एरो बटन का प्रयोग करें।",
		snake_start_game = "गेम शुरू करें",
		snake_difficulty = "मुश्किलाई:",
		snake_difficulty_easy = "आसान",
		snake_difficulty_medium = "मध्यम",
		snake_difficulty_hard = "कठिन",

		snake_game_over = "खेल खत्म!",
		snake_over_description = "अंतिम स्कोर: ${score}।",
		snake_new_game = "नया खेल",

		tetris_description = "बाईं और दाईं ओर जाने के लिए एरो बटन का प्रयोग करें।",
		tetris_play = "नया खेल शुरू करें",
		tetris_game_over = "खेल खत्म",
		tetris_restart = "रीस्टार्ट करें",
		tetris_score = "स्कोर",

		chess_title = "शतरंज",
		chess_your_turn = "आपकी बारी",
		chess_ai_turn = "AI विचार कर रहा है",
		chess_you_lost = "आप हार गए",
		chess_you_won = "आप जीत गए",
		chess_draw = "खेल खत्म",

		chess_play_as = "खेले जैसे:",
		chess_play_as_b = "काला",
		chess_play_as_w = "सफेद",
		chess_difficulty = "मुश्किलाई:",
		chess_difficulty_level = "स्तर ${level}",
		chess_start = "खेल शुरू करें",

		minesweeper_title = "माइन खोज",
		minesweeper_win = "आप जीत गए",
		minesweeper_loose = "आप हार गए",
		minesweeper_difficulty = "मुश्किलाई:",
		minesweeper_start = "गेम शुरू करें",
		minesweeper_flags_used = "${used}/${total} फ़्लैग लगाए गए",

		flappy_bird_title = "Flappy Bird",
		flappy_bird_score = "अंतिम स्कोर:",
		flappy_bird_game_over = "गेम खत्म हो गया",
		flappy_bird_start = "कैनवास पर क्लिक करके शुरू करें"
	},

	tattoos = {
		tattoos_refreshed = "टैटू ताजगी प्राप्त हुआ।",
		something_went_wrong = "कुछ गलत हो गया।",
		user_does_not_have_sent_character_loaded = "उपयोगकर्ता के पास संदिग्ध चरित्र लोड नहीं है।",
		user_has_no_character_loaded = "उपयोगकर्ता के पास कोई चरित्र लोड नहीं है।",
		user_not_found = "भेजा गया उपयोगकर्ता सर्वर पर नहीं मिला।",
		invalid_character_id = "भेजा गया चरित्र id पैरामीटर अमान्य है।",
		invalid_license_identifier = "भेजा गया लाइसेंस पहचानकर्ता पैरामीटर अमान्य है।"
	},

	teleporters = {
		enter_mechanic_shop = "मैकेनिक दुकान में प्रवेश करें",
		enter_mechanic_shop_interact = "[${InteractionKey}] मैकेनिक दुकान में प्रवेश करें",

		exit_mechanic_shop = "मैकेनिक दुकान से बाहर निकलें",
		exit_mechanic_shop_interact = "[${InteractionKey}] मैकेनिक दुकान से बाहर निकलें",

		enter_coroner = "कोरोनर में प्रवेश करें",
		enter_coroner_interact = "[${InteractionKey}] कोरोनर में प्रवेश करें",

		exit_coroner = "कारोबारी से बाहर निकलें",
		exit_coroner_interact = "[${InteractionKey}] कारोबारी से बाहर निकलें",

		enter_fib = "FIB में प्रवेश करें",
		enter_fib_interact = "[${InteractionKey}] FIB में प्रवेश करें",

		exit_fib = "FIB से बाहर निकलें",
		exit_fib_interact = "[${InteractionKey}] FIB से बाहर निकलें",

		enter_iaa_base = "IAA बेस में प्रवेश करें",
		enter_iaa_base_interact = "[${InteractionKey}] IAA बेस में प्रवेश करें",

		exit_iaa_base = "IAA बेस से बाहर निकलें",
		exit_iaa_base_interact = "[${InteractionKey}] IAA बेस से बाहर निकलें",

		enter_server_room = "सर्वर कमरे में प्रवेश करें",
		enter_server_room_interact = "[${InteractionKey}] सर्वर कमरे में प्रवेश करें",

		exit_server_room = "सर्वर कमरे से निकलें",
		exit_server_room_interact = "[${InteractionKey}] सर्वर कमरे से निकलें",

		enter_warehouse_shop = "वेयरहाउस में दाखिल हों",
		enter_warehouse_shop_interact = "[${InteractionKey}] वेयरहाउस में दाखिल हों",

		exit_warehouse_shop = "वेयरहाउस से निकलें",
		exit_warehouse_shop_interact = "[${InteractionKey}] वेयरहाउस से निकलें",

		enter_office_shop = "ऑफिस में दाखिल हों",
		enter_office_shop_interact = "[${InteractionKey}] ऑफिस में दाखिल हों",

		exit_office_shop = "ऑफिस से निकलें",
		exit_office_shop_interact = "[${InteractionKey}] ऑफिस से निकलें",

		enter_cocaine_lab = "कोकेन लैब में प्रवेश करें",
		enter_cocaine_lab_interact = "[${InteractionKey}] कोकेन लैब में प्रवेश करें",

		exit_cocaine_lab = "कोकेन लैब से बाहर निकलें",
		exit_cocaine_lab_interact = "[${InteractionKey}] कोकेन लैब से बाहर निकलें",

		enter_mayor_office = "मेयर के कार्यालय में प्रवेश करें",
		enter_mayor_office_interact = "[${InteractionKey}] मेयर के कार्यालय में प्रवेश करें",

		exit_mayor_office = "मेयर के कार्यालय से बाहर निकलें",
		exit_mayor_office_interact = "[${InteractionKey}] मेयर के कार्यालय से बाहर निकलें",

		enter_exclusive_dealership = "एक्सक्लूसिव डीलरशिप में प्रवेश करें",
		enter_exclusive_dealership_interact = "[${InteractionKey}] अनन्य डीलरशिप में प्रवेश करें",

		exit_exclusive_dealership = "अनन्य डीलरशिप से बाहर निकलें",
		exit_exclusive_dealership_interact = "[${InteractionKey}] अनन्य डीलरशिप से बाहर निकलें",

		enter_casino = "कैसीनो में प्रवेश करें",
		enter_casino_interact = "[${InteractionKey}] कैसीनो में प्रवेश करें",

		exit_casino = "कैसीनो से बाहर निकलें",
		exit_casino_interact = "[${InteractionKey}] कैसीनो से बाहर निकलें",

		enter_roof = "छत पर प्रवेश करें",
		enter_roof_interact = "[${InteractionKey}] छत पर प्रवेश करें",

		exit_roof = "छत से बाहर निकलें",
		exit_roof_interact = "[${InteractionKey}] छत से बाहर निकलें",

		enter_penthouse = "पेंथाउस में दाखिल हों",
		enter_penthouse_interact = "[${InteractionKey}] पेंथाउस में दाखिल हों",

		exit_penthouse = "पेंथाउस से बाहर निकलें",
		exit_penthouse_interact = "[${InteractionKey}] पेंथाउस से बाहर निकलें",

		enter_parking_garage = "पार्किंग गैरेज में दाखिल हों",
		enter_parking_garage_interact = "[${InteractionKey}] पार्किंग गैरेज में दाखिल हों",

		exit_parking_garage = "पार्किंग गैरेज से बाहर निकलें",
		exit_parking_garage_interact = "[${InteractionKey}] पार्किंग गैरेज से बाहर निकलें",

		enter_surgery = "सर्जरी में दाखिल हों",
		enter_surgery_interact = "[${InteractionKey}] सर्जरी में प्रवेश करें",

		exit_surgery = "सर्जरी से बाहर निकलें",
		exit_surgery_interact = "[${InteractionKey}] सर्जरी से बाहर निकलें",

		enter_icu = "ICU में प्रवेश करें",
		enter_icu_interact = "[${InteractionKey}] ICU में प्रवेश करें",

		exit_icu = "ICU से बाहर निकलें",
		exit_icu_interact = "[${InteractionKey}] ICU से बाहर निकलें",

		enter_underground_tunnel = "अंडरग्राउंड नहर में प्रवेश करें",
		enter_underground_tunnel_interact = "[${InteractionKey}] अंडरग्राउंड नहर में प्रवेश करें",

		exit_underground_tunnel = "अंडरग्राउंड नहर से बाहर निकलें",
		exit_underground_tunnel_interact = "[${InteractionKey}] अंडरग्राउंड नहर से बाहर निकलें",

		use_secret_tunnel_exit = "गुप्त निकास द्वार का उपयोग करें",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] गुप्त निकास द्वार का उपयोग करें",

		enter_hangar = "हैंगर में प्रवेश करें",
		enter_hangar_interact = "[${InteractionKey}] हैंगर में प्रवेश करें",

		exit_hangar = "हैंगर से बाहर निकलें",
		exit_hangar_interact = "[${InteractionKey}] हैंगर से बाहर निकलें",

		enter_loading_bay = "लोडिंग खाने में प्रवेश करें",
		enter_loading_bay_interact = "[${InteractionKey}] लोडिंग खाने में प्रवेश करें",

		exit_loading_bay = "लोडिंग खाने से बाहर निकलें",
		exit_loading_bay_interact = "[${InteractionKey}] लोडिंग खाने से बाहर निकलें"
	},

	test_server = {
		you_are_not_in_a_vehicle = "आप गाड़ी में नहीं हैं।",
		you_are_in_a_vehicle = "आप वर्तमान में एक गाड़ी में हैं।",
		invalid_vehicle_preset = "अवैध वाहन प्रीसेट।",
		fully_upgraded = "गाड़ी को सफलतापूर्वक अपग्रेड किया गया।",
		applied_preset = "गाड़ी को सफलतापूर्वक प्रीसेट लागू किया गया।",
		spawned_car = "${modelName} को उत्पन्न किया गया।",
		just_spawned_a_car = "आपने एक कार उत्पन्न किया है, अगली बार ${time} इंतजार करें।"
	},

	time_scale = {
		invalid_time_scale = "मान ${timeScale} एक अमान्य समय माप है।",
		set_time_scale_missing_permissions = "खिलाड़ी समय माप विन्यास सेट करने का प्रयास कर रहा था लेकिन उनके पास आवश्यक अनुमतियाँ नहीं थीं।",
		time_scale_set_to = "समय मापक ${timeScale} पर सेट किया गया है।",
		time_scale_disabled = "समय मापक ओवरराइड अक्षम कर दिया गया है।",
		time_scale_already_set_to = "समय मापक पहले से ही ${timeScale} पर सेट है।",
		time_scale_is_already_disabled = "समय मापक ओवरराइड पहले से ही अक्षम है।"
	},

	titanic = {
		created_titanic = "${sinkTime} मिनट के समय तक डूबने वाले टाइटैनिक को बनाया गया।",
		failed_to_create_titanic = "टाइटैनिक बनाने में विफल रहा।",
		create_titanic_missing_permissions = "खिलाड़ी ने टाइटैनिक बनाने का प्रयास किया था लेकिन उनके पास आवश्यक अनुमतियाँ नहीं थीं।"
	},

	top_down = {
		not_in_valid_vehicle = "आप एक सही वाहन में नहीं हैं (केवल कार / बाइक).",
		top_down_on = "शीर्ष से नीचे की दृष्टि सक्रिय हुई।",
		top_down_off = "शीर्ष से नीचे की दृष्टि निष्क्रिय हुई।"
	},

	trackers = {
		error_finding_tracker = "आपके ट्रैकर को खोजते समय एक त्रुटि हुई।",
		tracker_visible = "आपका ट्रैकर अब दृश्यमान है।",
		tracker_hidden = "आपका ट्रैकर अब छिपा हुआ है।",
		tracker = "ट्रैकर",
		trackers = "ट्रैकर",
		stockade_robbery_tracker = "स्टॉकेड ट्रक (10-78)",
		tracked_vehicle = "ट्रैक्ड वाहन (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "मानचित्र पर रैकशक अब उनकी श्रेणियों में संग्रहीत किए जाएँगे।",
		trackers_split = "रैकशक अब विभक्त होंगे।",

		department_sasp = "SASP",
		department_bcso = "BCSO",
		department_sahp = "SAHP",
		department_doc = "DOC",
		department_park_rangers = "Ranger",
		department_medical = "EMS",
		department_doctor = "चिकित्सक",
		department_bcfd = "BCFD",

		department_police_undercover = "गुप्त एपीडी",

		department_police_training = "पुलिस ट्रेनिंग",
		department_ems_training = "ईएमएस ट्रेनिंग"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] स्टोर तक पहुँच",

		buy_pack = "${packName} खरीदें",
		store_title = "कार्ड स्टोर",

		successfully_bought_pack = "ट्रेडिंग कार्ड पैक सफलतापूर्वक खरीदा गया",
		failed_buy_pack = "पैक खरीदने में विफल रहा. क्या आपके पास पर्याप्त धन है?",

		just_showed_trading_cards = "आपने अभी एक ट्रेडिंग कार्ड दिखाया है। कृपया थोड़ी देर प्रतीक्षा करें।",

		unpack_successfull = "पैक खोलने में सफलता हुई।",
		failed_unpack = "पैक खोलने में विफल रहा।",
		failed_unpack_no_cards = "पैक खोलने में विफल रहा। कोई ट्रेडिंग कार्ड उपलब्ध नहीं है।",

		edition = "संस्करण",
		rarity = "दुर्लभता",

		rarity_bronze = "कांस्य",
		rarity_silver = "चांदी",
		rarity_gold = "सोना",
		rarity_holo = "होलो",
		rarity_foil = "फॉइल",
		rarity_relic = "पुरातत्व",
		rarity_headache = "सिरदर्द",
		rarity_missprint = "मिसप्रिंट",
		rarity_ethereal = "आकाशीय",
		rarity_promotional = "प्रचार",

		rarity_custom = "कस्टम",

		press_to_access_buyback = "कार्ड वापसी तक पहुँच करने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		buyback_title = "ट्रेडिंग कार्ड वापसी",
		close_menu = "मेनू बंद करें",
		sell_cards = "सभी ${rarity} कार्ड बेचें",

		failed_selling = "कार्ड बेचने में विफल।",
		no_cards_of_type = "आपके पास कोई ${rarity} कार्ड नहीं है।",
		successfully_sold_cards = "${amount} ${rarity} कार्डों को $${earned} के लिए बेच दिया गया।",

		studio_blip = "945 स्टूडियो"
	},

	training = {
		on_team_attackers = "आप एक हमलावर हैं!\nशेष समय: ${time}",
		on_team_defenders = "आप एक रक्षक हैं!\nशेष समय: ${time}",
		attackers = "हमलवार :",
		defenders = "रक्षक :",
		waiting_for_players = "और खिलाड़ी इंतजार कर रहे हैं।\nप्रत्येक टीम में कम से कम एक खिलाड़ी होना चाहिए।",
		none = "उपलब्ध नहीं",
		match_starting_in = "मैच ${seconds} सेकंड में शुरू हो जाएगा।",
		loading_match = "खिलाड़ियों को लोड होने के लिए प्रतीक्षा कर रहे हैं। मैच ${seconds} सेकंड में शुरू हो जाएगा।",
		attackers_help_text = "जीत के लिए कूलडाउन खत्म होने से पहले सभी रक्षकों को मार डालें!",
		defenders_help_text = "जीत के लिए सभी हमलवारों को मार या कूलडाउन खत्म होने तक इंतजार करें!",
		attacker = "हमलावर",
		defender = "रक्षक",
		attackers_won = "हमलावर जीत गए!",
		defenders_won = "रक्षक जीत गए!"
	},

	trains = {
		spawn_train_missing_permissions = "खिलाड़ी ने एक ट्रेन स्पॉन करने का प्रयास किया लेकिन उनके पास ऐसे अनुमतियाँ नहीं थीं जो उन्हें ऐसा करने की आवश्यकता है।",

		invalid_track_id = "अवैध ट्रैक आईडी प्रदान किया गया है।",
		spawned_train_on_track = "ट्रैक ${trackId} पर एक ट्रेन उत्पन्न हुआ।",
		failed_to_spawn_train = "एक ट्रेन बनाने में विफल रहा।"
	},

	traps = {
		rearming = "पुनः आयुधार्थ कर रहे हैं",
		press_to_rearm = "[${InteractionKey}] पुनः आयुधार्थ करें",
		rearm = "पुनः आयुधार्थ करें",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "ट्रेजर मैप टियर ${mapTier} के साथ कोई मैप नहीं है।",
		treasure_map_does_not_have_piece = "ट्रेजर मैप टियर ${mapTier} के साथ ${pieceNumber} पीस नहीं है।",
		spawn_map_piece_missing_permissions = "खिलाड़ी ने उचित अनुमतियां न होने के कारण मैप पीस को उत्पन्न करने का प्रयास किया।",

		sketchy_map = "स्केची मैप",
		worn_map = "फटे हुए मैप",
		fancy_map = "महंगा मैप",
		exquisite_map = "उत्कृष्ट मैप",

		map_piece_tier_1_description = "यहाँ नक्शे के नीचे एक नाराज़गी का टुकड़ा दिख रहा है।",
		map_piece_tier_2_description = "नक्शे का एक टुकड़ा जो न केवल असली सा लगता है, बल्कि इंक भी थोड़ा बह रहा है।",
		map_piece_tier_3_description = "सूरजकिरणों में इस नक्शे का एक टुकड़ा चमक रहा है।",
		map_piece_tier_4_description = "यह नक्शे का एक जटिल, खूबसूरत टुकड़ा पैसे के जैसा धुंधला है।",

		map_tier_1_description = "ऐसा लगता है कि इसे नैपकिन पर हाथ से बनाया गया है। कृपया दृष्टिगत समस्याओं को नज़रअंदाज़ करें।",
		map_tier_2_description = "यह मानचित्र काफी पुराना है लेकिन ऐसा लगता है कि यह कुछ अच्छा दिखाता है।",
		map_tier_3_description = "बहुत सुंदर \"चमकदार\" मानचित्र जिसमें निचले दाहिने कोने में एक \"100% असली\" छाप है।",
		map_tier_4_description = "यह मानचित्र अधिकतम खजानों से भी महंगा लगता है। चलो चलते हैं!!!!",

		press_to_combine_pieces = "मैप ${mapTier} के टुकड़ों को जोड़ने के लिए ~INPUT_CONTEXT~ दबाएं।",

		treasure_map = "ट्रेजर मैप (टियर ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "समुद्र स्केलर तीव्रता पहले से ही `${intensity}` पर सेट है।",
		no_ocean_scaler_intensity_set = "अभी तक समुद्र स्केलर तीव्रता कोई सेट नहीं है।",
		set_ocean_scaler_to = "समुद्र स्केलर तीव्रता को `${intensity}` पर सेट करें।",
		reset_ocean_scaler = "समुद्र स्केलर इंटेंसिटी रीसेट करें।",
		set_ocean_scaler_no_permission = "खिलाड़ी के पास समुद्र स्केलर सेट करने के लिए आवश्यक अनुमति नहीं थी।"
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] ${price} के लिए ${label} खरीदें",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | ₹${price}",
		purchase_label_sale = "[${SeatEjectKey}] खरीदें ${label} रुपये में ₹${price} (-${discount}%)",
		purchase_label_sale_far = "बिक्री पर | ${label} | ₹${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | ₹${price} (-${discount}%)",

		failed_vehicle_spawn = "वाहन को प्रवेश नहीं कर सकते।",
		not_enough_funds = "खरीदारी पूरी करने के लिए पर्याप्त धन नहीं है।",
		area_not_clear = "प्रवेश क्षेत्र स्पष्ट नहीं है।",
		something_went_wrong = "वाहन खरीदने का प्रयास करते समय कुछ गलत हो गया।",

		purchased_vehicle = "${label} खरीदा गया $${price} के लिए।",

		tuner_shop_blip = "मिडनाइट ट्यूनरशॉप",

		log_title = "ट्यूनरशॉप खरीद",
		log_description = "मैंने $${price} के लिए `${label}` खरीदा।",
		log_description_discount = "मैंने ${discount}% छूट के साथ `${label}` खरीदा $${price}।"
	},

	vape = {
		press_to_use = "हिट लेने के लिए ~INPUT_CONTEXT~ दबाएं। वेप भर्ती करने के लिए ~INPUT_FRONTEND_CANCEL~ दबाएं।"
	},

	vdm = {
		failed_vdm = "खिलाड़ी को बंप किये बिना नहीं चला सकता।",
		invalid_entity = "गाड़ी या चालक नहीं मिल सका।",
		invalid_network_id = "अमान्य नेटवर्क आईडी।",
		invalid_target = "अवैध लक्ष्य।",
		cleared_vdm = "${amount} वीडीएम लक्ष्यों को साफ कर दिया गया।",
		failed_vdm_clear = "वीडीएम लक्ष्यों को हटाने में विफल रहा।",
		added_vdm_target = "नेटवर्क आईडी ${networkId} वाला NPC अब ${target} को लक्ष्य बना रहा है।",

		vdm_no_permissions = "खिलाड़ी ने उचित अनुमति के बिना वीडीएम कमांड चलाने की कोशिश की।"
	},

	vending_machines = {
		vending_coffee = "कॉफ़ी खरीदने के लिए ~INPUT_CONTEXT~ दबाएं। कीमत ${cost} डॉलर है।",
		vending_coffee_not_enough_cash = "आपके पास कॉफ़ी खरीदने के लिए पर्याप्त नकदी नहीं है। कीमत ${cost} डॉलर है।",
		vending_snack = "एक स्नैक खरीदने के लिए ~INPUT_CONTEXT~ दबाएँ। मूल्य है $${cost}।",
		vending_snack_not_enough_cash = "आपके पास स्नैक खरीदने के लिए पर्याप्त नकदी नहीं है। मूल्य है $${cost}।",
		vending_soda = "एक सोडा खरीदने के लिए ~INPUT_CONTEXT~ दबाएँ। मूल्य है $${cost}।",
		vending_soda_not_enough_cash = "आपके पास सोडा खरीदने के लिए पर्याप्त नकदी नहीं है। मूल्य है $${cost}।",
		vending_water = "एक वाटर बोतल खरीदने के लिए ~INPUT_CONTEXT~ दबाएँ। मूल्य है $${cost}।",
		vending_water_not_enough_cash = "आपके पास वाटर बोतल खरीदने के लिए पर्याप्त नकदी नहीं है। मूल्य है $${cost}।",
		vending_machine_damaged = "यह वेंडिंग मशीन खराब है। कृपया बाद में फिर से जांचें।",
		vending_water_cooler = "कप पानी पाने के लिए ~INPUT_CONTEXT~ दबाएं।",

		refill_bottle = "बोतल भरने के लिए ~INPUT_CONTEXT~ दबाएं।",
		refilling_bottle = "बोतल भर रही है"
	},

	voice = {
		illegal_radio_frequency = "अवैध रेडियो फ्रीक्वेंसी तक पहुंच करने का प्रयास कर रहे हैं।",
		voice_chat = "ध्वनि चैट",
		voice_server_connected = "ध्वनि सर्वर से कनेक्ट किया गया। प्लेयर्स को प्रासंगिक ध्वनि डेटा भेजा जा रहा है।",
		voice_server_disconnected = "ध्वनि सर्वर से डिस्कनेक्ट हो गया है। कनेक्शन का इंतज़ार किया जा रहा है।",
		voice_muted = "आवाज चैट म्यूट कर दिया गया है।",
		voice_unmuted = "आवाज चैट अनम्यूट कर दिया गया है।",
		broadcasting_voice_to_players = "प्लेयर्स को ब्रॉडकास्ट करना है:",
		listening_to_virtual_players = "वर्चुअल प्लेयर्स को सुनना है:",
		radio = "रेडियो",
		phone = "फ़ोन",
		muted_players = "म्यूट किए गए प्लेयर्स:",
		connected = "कनेक्टेड: ${connected}",
		muted = "म्यूट किया हुआ: ${muted}",
		boolean_true = "सही",
		boolean_false = "गलत",
		target_channel = "टारगेट चैनल: ${targetChannel}",
		actual_channel = "वास्तविक चैनल: ${actualChannel}",
		target_radius = "लक्षित त्रिज्या: ${targetRadius}",
		actual_radius = "वास्तविक त्रिज्या: ${actualRadius}",

		invalid_server_id = "अवैध सर्वर आईडी।",
		failed_toggle_listen = "सुनने की स्थिति बदलने में विफल रहा।",
		listeners = "सुनने वाले:",
		listening_to = "सुन रहे हैं:",

		failed_toggle_muted = "मौन स्थिति बदलने में विफल रहा।",
		toggle_muted_on = "${consoleName} अब आवाज चैट से मौन है।",
		toggle_muted_off = "${consoleName} अब आवाज चैट से मौन नहीं है।",

		affected_by_jammer = "आपके रेडियो को किसी जैमर या किसी प्रकार की समस्या के द्वारा प्रभावित होने की अनुमति है।",

		listening_missing_permissions = "खिलाड़ी ने अपनी सुनने की स्थिति को टॉगल करने का प्रयास किया लेकिन उन्हें आवश्यक अनुमतियाँ नहीं थीं।",
		voice_mute_missing_permissions = "खिलाड़ी दूसरे खिलाड़ियों के म्यूटेड स्थिति को टॉगल करने का प्रयास किया लेकिन उन्हें आवश्यक अनुमतियाँ नहीं थीं।"
	},

	washrooms = {
		use_sink = "[${InteractionKey}] सिंक का उपयोग करें",
		using_sink = "सिंक का उपयोग कर रहा हूँ"
	},

	weed_field = {
		pick_weed = "शुष्क गांजा तोड़ने के लिए ~INPUT_CONTEXT~ दबाएं।",
		picking_weed = "शुष्क गांजा तोड़ रहा है"
	},

	wizard = {
		action_missing_permissions = "खिलाड़ी कोई जादू कार्रवाई करने की कोशिश की लेकिन उनकी अनुमतियाँ नहीं थीं।",
		action_radius_missing_permissions = "कुछ रेडियस में खिलाड़ियों को विज़ार्ड कार्रवाई करने की कोशिश बिना सही अनुमतियों के।",
		run_as_missing_permissions = "दूसरे खिलाड़ी के रूप में एक कमांड चलाने की कोशिश बिना सही अनुमतियों के।",

		menu_title = "विज़ार्ड",

		ragdoll_player = "रैगडॉल",
		ragdoll_player_force = "रैगडोल (फोर्स)",
		punch_player = "फोर्स पंच",
		taze_player = "टेसे",
		exit_vehicle_player = "वाहन से बाहर निकलें",
		yank_steering_wheel_player = "स्टीयरिंग व्हील खींचें",
		flashbang_player = "फ्लैशबैंग",
		paper_bag_player = "पेपर बैग",
		ignite_player = "आग लगाएं",
		explode_player = "विस्फोट",
		quietly_revive_player = "शांत तरीके से जीवित करें",
		play_sound = "ध्वनि बजाएं",

		play_sound_knocking = "खटखटाहट",
		play_sound_discord = "डिस्कॉर्ड",
		play_sound_phone_call = "फोन कॉल",
		play_sound_message = "संदेश",
		play_sound_twitter = "ट्विटर",

		invalid_radius = "अमान्य त्रिज्या",
		invalid_server_id = "अमान्य सर्वर आईडी।",

		ragdoll_failed = "खिलौना नहीं बनाया जा सका",
		ragdoll_success = "सफलतापूर्वक बनाया गया ${consoleName} का खिलौना।",

		punch_success = "सफलतापूर्वक ${consoleName} को मारा।",
		punch_failed = "प्लेयर का पंच नहीं मार सके।",

		explode_success = "${consoleName} को विस्फोट करने में कामयाब।",
		explode_failed = "प्लेयर को विस्फोट करने में असफल।",

		ignite_success = "${consoleName} को आग लगाने में कामयाब।",
		ignite_failed = "प्लेयर को आग लगाने में असफल।",

		punch_radius_failed = "व्यापकता में प्लेयर का पंच नहीं मार सके।",
		punch_radius_success = "${radius} त्रिज्या वाले क्षेत्र में प्लेयर का पंच करने में कामयाब।",

		ragdoll_radius_success = "${radius} त्रिज्या वाले क्षेत्र में प्लेयर को रैगडॉल में सफलतापूर्वक बदला।",
		ragdoll_radius_failed = "प्रदीप्ति विफल हुई क्योंकि रेडियस में खिलाड़ियों को रैगडोल नहीं बनाया जा सका।",

		flashbang_success = "बड़की को ${consoleName} पर सफलतापूर्वक चकमा दिया।",
		flashbang_failed = "चकमा देने में विफल रहा।",

		flashbang_radius_success = "${रेडियस} रेडियस की तरफ़ से मिडिलियों को सफलतापूर्वक चकमा दिया गया।",
		flashbang_radius_failed = "प्रदीप्ति विफल हुई क्योंकि रेडियस में खिलाड़ियों को चकमा नहीं दिया जा सका।",

		missing_command = "कमांड अनुपलब्ध है।",
		run_as_success = "${consoleName} के रूप में कमांड सफलतापूर्वक चलाया गया।",
		run_as_failed = "${consoleName} के रूप में कमांड चलाने में विफल।",

		no_nearby_vehicle = "कोई गाड़ी नहीं है।",
		reversing_failed = "पेड पिछले रुख करने में विफल रहा।",
		driving_forwards_failed = "पेड को आगे दौड़ाने में विफल रहा।",
		reversing_success = "पेड को पिछले रुख करने में सफलतापूर्वक बदल दिया।",
		driving_forwards_success = "पेड को आगे दौड़ाने में सफलतापूर्वक बदल दिया।",

		vehicle_temp_action_missing_permissions = "खिलाड़ी ने वाहन टेम्प एक्शन चलाने की अनुमति नहीं होने के कारण प्रयास किया।"
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] योगा चटाई",
		yoga_mat = "योगा चटाई",
		press_to_stop_yoga = "योग करने से बंद करने के लिए ~INPUT_CONTEXT~ दबाएं।"
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] ज़ोंबी से मालमत्ता शुरू करने के लिए दबाएं",
		press_to_loot_zombie = "[${InteractionKey}] ज़ॉंबी का लूट करें",
		looting_zombie = "ज़ॉंबी को लूट रहें हैं",
		zombie_looting_injection = "अत्यधिक ज़ॉंबी लूटिंग! (सर्वर टाइमआउट अनदेखी की गई, शायद एक इंजेक्टर का उपयोग करके यह इसे संभव कर रहे हों।)",

		zombie_trip_limit = "आपको ज़्यादा थका महसूस कर रहा है कि ज़ॉंबी का लूट करना जारी रखें। शायद कल फिर से कोशिश करें।"
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "आप एक 'no ped population area' में हैं।",
		not_in_no_ped_population_area = "आप एक 'no ped population area' में नहीं हैं।"
	},

	explosions = {
		invalid_explosion_type = "विस्फोट प्रकार `${explosionType}` वैध नहीं है।",
		invalid_camera_shake = "कैमरा हिलाना `${cameraShake}` वैध नहीं है।",
		invalid_damage_scale = "घात का स्केल `${damageScale}` वैध नहीं है।",
		created_explosion = "एक `${explosionTypeName}` प्रकार का धमाका बनाया गया है जिसका घात का स्केल है `${damageScale}` और कैमरा हिलाना है `${cameraShake}`।",
		create_explosion_not_developer = "खिलाड़ी ने एक धमाका बनाने का प्रयास किया लेकिन वह एक डेवलपर नहीं था।"
	},

	functions = {
		year = "साल",
		years = "साल",
		month = "महीना",
		months = "महीने",
		day = "दिन",
		days = "दिन",
		hour = "घंटा",
		hours = "घंटे",
		minute = "मिनट",
		minutes = "मिनटों",
		second = "सेकेंड",
		seconds = "सेकेंड",
		just_now = "अभी-अभी",
		unknown = "अज्ञात",
		flipped_vehicle_logs_title = "उलटी गाड़ी",
		flipped_vehicle_logs_details = "${consoleName} ने एक वाहन को उलटा दिया।",
		failed_to_find_ground = "जमीन नहीं मिली, आपको सबसे करीबी सड़क पर ले जाया गया।",

		time_in = "${time} ${unit} में",
		time_ago = "${time} ${unit} पहले"
	},

	states = {
		invalid_network_id = "अमान्य नेटवर्क आईडी।",
		debug_states_failed = "इस इंटिटी की स्टेट्स की डीबगिंग विफल रही।",
		no_states = "इस एंटिटी में कोई स्थिति सेट नहीं है।",
		printed_states = "एंटिटी ${networkId} की स्थितियां छापी गई।",

		get_entity_states_missing_permissions = "खिलाड़ी को संबंधित एंटिटी की स्थितियों को प्राप्त करने की अनुमति नहीं है।"
	},

	-- illegal/*
	corner = {
		corner_ped = "कॉर्नर पेड - ${cornerPedDistance}मीटर (${cornerPedTimer})",
		corner_ped_title = "कॉर्नर पेड",
		corner_ped_already_active = "आपके लिए पहले से ही एक कॉर्नर पेड बैठा हुआ है।",
		no_node_found = "पैदल चलने वाले के निकट कोई नोड नहीं मिला।",
		no_sell_area = "आप एक क्षेत्र में नहीं हैं जहां पेड दवाओं में दिलचस्पी रखते हैं।",
		inside_areas_none = "अंदर क्षेत्र: कोई नहीं",
		inside_areas = "अंदर क्षेत्र: ${insideAreas}",
		not_able_to_sell = "आप वर्तमान में बेचने में सक्षम नहीं हैं। फिर से बेचने से पहले थोड़ी देर घूमें।"
	},

	stockade = {
		dispatch = "[डिस्पैच]",
		status_1a = "10-78, स्टॉकेड ने आपात स्थिति बटन दबाया है और ${streetName} पर बैकअप का अनुरोध कर रहा है।",
		status_1b = "10-78, एक स्टॉकेड ने आपात स्थिति बटन दबाया है और ${streetName} के पास ${crossingRoad} के पास बैकअप की अनुरोध कर रहा है।",
		status_2a = "10-78, एक अलार्म सिस्टम ने पता लगाया है कि एक स्टॉकेड के दरवाजों पर जगह बना रहा है और ${streetName} में बैकअप की अनुरोध कर रहा है।",
		status_2b = "10-78, एक अलार्म सिस्टम ने पता लगाया है कि एक स्टॉकेड के दरवाजों पर जगह बना रहा है और ${streetName} के पास ${crossingRoad} के पास बैकअप की अनुरोध कर रहा है।",
		status_3a = "10-78, एक अलार्म सिस्टम ने पता लगाया है कि एक स्टॉकेड के दरवाजे गलत तरीके से खुले हुए हैं और ${streetName} में बैकअप की अनुरोध कर रहा है।",
		status_3b = "10-78, एक अलार्म सिस्टम ने जांच कर बताया है कि एक स्टॉकेड वाहन के दरवाजे गलत तरीके से खुले हैं और ${streetName} के पास ${crossingRoad} के पास बैकअप की अनुरोध है।",
		grab_valuables = "[${InteractionKey}] मौल्यवान वस्तु लें (${valuablesRemaining} बचे हुए)",
		grabbing_valuables = "मौल्यवान वस्तु लेना",
		use_advanced_lockpick = "[${InteractionKey}] उन्नत ताला खोलने का उपयोग करें",
		lockpicking_stockade = "लॉकपिकिंग स्टॉकेड",

		status_blip = "स्टॉकेड",

		stockade_reward_logs_title = "स्टॉकेड रिवॉर्ड",
		cash_pickup_logs_details = "${consoleName} ने $${cashAmount} कैश उठाया।",
		item_pickup_logs_details = "${consoleName} ने 1x ${itemName} उठाया।",

		reward_diamonds = "आपने एक हीरा प्राप्त किया।",
		reward_gold_bar = "आपने एक सोने का सलग उठाया।",
		reward_cash = "आपने कुछ कैश प्राप्त किया।",
		reward_keycard_red = "आपने एक लाल कुंजीकार्ड प्राप्त किया।",

		stockade_logs_title = "स्टॉकेड सक्रिय किया गया",
		stockade_logs_details = "${consoleName} ने एक स्टॉकेड सक्रिय किया।"
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "कोई इंटरफ़ेस ध्यानित नहीं हैं।",
		interfaces_focused = "ध्यानित इंटरफ़ेस:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "डिलिवरी शुरू करें।",
		press_to_start_delivery = "डिलिवरी शुरू करने के लिए ~g~${InteractionKey} ~w~दबाएं।",
		already_in_delivery = "आपके पास पहले से ही एक सक्रिय डिलिवरी है।",
		not_bean_machine_employee = "आपको डिलिवरी शुरू करने के लिए बीन मशीन के कर्मचारी होना चाहिए।",
		finish_delivery = "डिलिवरी समाप्त करें।",
		press_to_finish_delivery = "डिलिवरी समाप्त करने के लिए ~g~${InteractionKey} ~w~दबाएं।",
		started_delivery = "आपने ${deliveryName} को मंजूरी दी है। स्थान आपके मैप पर चिन्हित किया गया है।",
		finished_delivery = "${deliveryName} तक डिलिवरी पूर्ण हो गई है। आपको $${deliveryPrice} और $${distanceBonus} बक्शीश में मिला है, जिसकी कुल राशि $${totalPrice} है।",
		error_finishing_delivery = "डिलीवरी पूरी करने के दौरान एक त्रुटि हुई।",
		finished_delivery_title = "बीन मशीन डिलीवरी पूर्ण",
		finished_delivery_details = "${consoleName} ने एक बीन मशीन डिलीवरी पूरी की और $${deliveryPrice} तथा $${distanceBonus} टिप में प्राप्त किया जो कुल $${totalPrice} हुआ।",
		delivery_blip = "बीन मशीन डिलीवरी"
	},

	burger_shot = {
		start_delivery = "एक डिलीवरी शुरू करें।",
		press_to_start_delivery = "${InteractionKey} ~w~दबाकर एक डिलीवरी शुरू करने के लिए दबाएं।",
		already_in_delivery = "आपके पास पहले से ही एक सक्रिय डिलीवरी है।",
		not_burger_shot_employee = "आपको एक बर्गर शॉट कर्मचारी होना आवश्यक है ताकि आप डिलीवरी शुरू कर सकें।",
		finish_delivery = "डिलीवरी पूरी करें।",
		press_to_finish_delivery = "डिलीवरी पूरी करने के लिए ~g~${InteractionKey} ~w~दबाएं।",
		started_delivery = "${deliveryName} तक एक डिलीवरी शुरू की गई। स्थान आपके मानचित्र पर चिह्नित किया गया है।",
		finished_delivery = "${deliveryName} तक की डिलीवरी पूरी हो गई है। आपको $${deliveryPrice} और $${distanceBonus} की टिप मिली है, जो कुल $${totalPrice} होती है।",
		error_finishing_delivery = "आपकी डिलीवरी को पूरा करने की कोशिश करते समय एक त्रुटि आई।",
		finished_delivery_title = "बर्गर शॉट डिलीवरी पूर्ण",
		finished_delivery_details = "${consoleName} ने एक बर्गर शॉट डिलीवरी पूरी की और $${deliveryPrice} और $${distanceBonus} टिप में प्राप्त किया, जो पूरी तरह से $${totalPrice} हुआ।",
		delivery_blip = "बर्गर शॉट डिलीवरी"
	},

	duty = {
		toggle_duty_status_no_permissions = "खिलाड़ी प्रवेशाधिकार विहीन होने पर भी अपनी ड्यूटी स्थिति सक्षम करने का प्रयास किया।",

		duty_status_on = "सफलतापूर्वक ड्यूटी पर जाया गया।",
		duty_status_off = "सफलतापूर्वक ड्यूटी से बाहर जाया गया।",
		duty_status_failed = "ड्यूटी स्थिति को सक्षम करने में विफल रहा।",

		training_status_on = "ट्रेनिंग मोड सफलतापूर्वक चालू किया गया।",
		training_status_off = "ट्रेनिंग मोड को सफलतापूर्वक बंद किया गया।",
		training_status_failed = "ट्रेनिंग मोड टॉगल करने में विफल।",

		emergency_call = "एक आपातकालीन कॉल है। प्राप्त करने के लिए ENTER दबाएं।",

		toggled_operator_status_on = "ऑपरेटर स्थिति सफलतापूर्वक टॉगल हुई।",
		toggled_operator_status_off = "ऑपरेटर स्थिति को सफलतापूर्वक बंद कर दिया गया।"
	},

	job_center = {
		life_invader = "लाइफ इन्वेडर",
		life_invader_blip = "नौकरी के लिए आवेदन करें",
		ui_close_menu = "मेनू बंद करें",
		press_to_browse_jobs = "नौकरियों को ब्राउज़ करने के लिए ~INPUT_CONTEXT~ दबाएं।",
		change_job = "नौकरी बदलें: ${jobName}",
		job_unemployed = "बेरोजगार",
		job_transportation = "ट्रक चालक",
		job_taxi = "टैक्सी ड्राइवर",
		job_journalist = "पत्रकार",
		job_government = "वेस्ट कलेक्टर",
		job_mechanic = "टो ड्राइवर",
		job_delivery = "डिलीवरी की नौकरी",
		changed_job_already_set_to_job = "आपकी नौकरी पहले से ही ${jobName} पर सेट है।",
		changed_job_success = "आपकी नौकरी सफलतापूर्वक ${jobName} पर सेट की गई।",
		changed_job_success_go_to_coords = "आपकी नौकरी सफलतापूर्वक ${jobName} पर सेट की गई। शुरू होने के लिए आपको अपने मानचित्र पर waypoint का पालन करना होगा।",
		changed_job_failure = "आपकी नौकरी को `${jobName}` पर सेट करने की कोशिश करते समय एक त्रुटि हुई।",
		changed_job_title = "नौकरी बदल दी",
		changed_job_details = "${consoleName} ने अपनी नौकरी `${jobName}` पर बदल दी।"
	},

	jobs = {
		job_refreshed = "नौकरी रिफ्रेश की गई।",
		something_went_wrong = "कुछ गड़बड़ हो गई।",
		user_does_not_have_sent_character_loaded = "उपयोगकर्ता द्वारा संदिग्ध व्यक्ति लोड नहीं है।",
		user_has_no_character_loaded = "उपयोगकर्ता के पास कोई भी व्यक्ति लोड नहीं है।",
		user_not_found = "सर्वर पर भेजे गए उपयोगकर्ता को नहीं मिला।",
		invalid_character_id = "अमान्य चरित्र आईडी पैरामीटर भेजा गया है।",
		invalid_license_identifier = "अमान्य लाइसेंस पहचानकर्ता पैरामीटर भेजा गया है।"
	},

	police = {
		aim_assist_enabled = "आपका निशान अब महान क्षमताओं से सज्जित होगा।",
		aim_assist_disabled = "आप अब अपराधियों/ नीच को से कम नहीं निशाना बनाएँगे। त्वरित रूप से निशान उन्नयन करना सिफारिश किया जाता है।",
		you_are_not_police = "यह सुविधा पुलिस के लिए है, अपराधी/नीच के लिए नहीं।",

		undercover_enabled = "आप अब गुप्त रूप से हैं।",
		undercover_disabled = "आप अब गुप्त रूप से नहीं हैं।",

		npc_vehicle = "यह वाहन खिलाड़ी के पास नहीं है।",
		not_in_a_vehicle = "आप वर्तमान में कोई वाहन नहीं चला रहे हैं।",
		invalid_minutes = "अवैध समय (1 मिनट और 12 घंटे के बीच)।",

		not_on_duty = "आप ड्यूटी पर नहीं हैं।",
		failed_impound = "वाहन को जामा करने में विफल।",
		not_near_impound = "आप पुलिस डिपार्टमेंट जमा कराने के नजदीक नहीं हैं।",
		impound_success = "प्लेट `${plate}` के साथ वाहन को ${minutes} मिनट के लिए सफलतापूर्वक जमा किया गया।",

		access_impound = "[${InteractionKey}] जमा को पहुंचें",
		impound_lot = "जमा कराने की जगह",
		exit_impound = "इम्पाउंडिंग से बाहर निकलें",
		no_impounded_vehicles = "वर्तमान में कोई वाहन होल्ड पर नहीं है।",
		failed_impound_list = "इम्पाउंड की गई गाड़ियों की सूची प्राप्त करने में विफल रहा।",
		impound_owner = "मालिक: #${cid}",
		withdraw_success = "वाहन सफलतापूर्वक वापस लिया गया।",
		failed_withdraw = "वाहन वापस लेने में विफल रहा।",
		vehicle_not_impounded = "वाहन वर्तमान में होल्ड पर नहीं है।",

		impound_logs_title = "PD इम्पाउंडिंग",
		impound_logs_details = "${consoleName} ने नंबर प्लेट ${plate} वाली एक गाड़ी को ${minutes} मिनटों के लिए पुलिस होल्ड पर रखा था।",

		impound_withdraw_logs_title = "पुलिस वापसी",
		impound_withdraw_logs_details = "${consoleName} ने पुलिस से ${timeLeft} वक़्त बचा कर गाड़ी ${plate} वापस उठा ली।",

		none = "कोई नहीं",
		active = "चालू",
		not_active = "चालू नहीं",
		active_robberies = "\n${store} दुकान चल रही है।\n${bank} बैंक चल रहा है।\nज्वेलरी की चोरी (Jewelry): ${jewelry}",

		failed_dispatch = "Dispatch message नहीं भेजा जा सकता।",
		dispatch_title = "[Dispatch]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "Dispatch message अवैध है (अधिकतम 255 वर्ण).",
		in_training = "आप वर्तमान में प्रशिक्षण मोड में हैं।",
		cannot_use_dispatch = "आप अभी डिस्पैच का उपयोग नहीं कर सकते।",

		dispatch_message_logs_title = "डिस्पैच संदेश",
		dispatch_message_logs_details = "${consoleName} ने एक डिस्पैच संदेश भेजा: `${message}`।",

		no_keys = "आपके पास इस वाहन की चाबियों नहीं हैं।",
		invalid_drive_mode = "अमान्य ड्राइव मोड।",
		not_in_police_vehicle = "आप एक पुलिस वाहन में नहीं हैं।",
		drive_mode_too_fast = "आप ड्राइव मोड बदलने के लिए बहुत तेज जा रहे हैं।",
		drive_mode_already_set = "आपकी ड्राइव मोड पहले से ही `${mode}` पर सेट है।",
		drive_mode_failed = "ड्राइव मोड सेट करने में विफल।",
		drive_mode_set = "आपकी ड्राइव मोड को सफलतापूर्वक `${mode}` पर सेट किया गया।",

		mode_s = "स्पोर्ट मोड",
		mode_d = "ड्राइव मोड",

		drive_mode_logs_title = "ड्राइव मोड बदला गया",
		drive_mode_logs_details = "${consoleName} ने अपनी ड्राइव मोड को `${mode}` पर बदल दिया।"
	},

	state = {
		license_heli = "हेलीकॉप्टर",
		license_fw = "फिक्स्ड विंग",
		license_cfi = "प्रमाणित उड़ान अध्यापक",
		license_hw = "हैवीवेट",
		license_hwh = "हैवीवेट हेलीकॉप्टर",
		license_perf = "प्रदर्शन",
		license_utility = "उपयोगिता",
		license_commercial = "वाणिज्यिक",
		license_management = "प्रबंधन",
		license_military = "सैन्य",
		license_special = "विशेष विमान",
		license_hunting = "शिकार लाइसेंस",
		license_fishing = "मछली पकड़ने का लाइसेंस",
		license_weapon = "शस्त्र लाइसेंस",
		gave_character_license = "${characterName} को `${licenseLabel}` लाइसेंस दिया गया।",
		character_already_has_license = "${characterName} के पास पहले से ही `${licenseLabel}` लाइसेंस है।",
		removed_character_license = "${characterName} से `${licenseLabel}` लाइसेंस हटा दिया गया।",
		character_does_not_have_license = "${characterName} के पास `${licenseLabel}` लाइसेंस नहीं है।",
		license_not_found = "लाइसेंस `${licenseName}` नहीं मिला।",
		user_not_found_with_character_id = "कैरेक्टर आईडी `${characterId}` के साथ यूजर नहीं मिला।",
		no_license_added = "कोई लाइसेंस नहीं जोड़ा गया।",
		invalid_character_id = "जो कैरेक्टर आईडी डाली गई हैं वो मान्य नहीं है।",
		no_character_id_added = "कोई कैरेक्टर आईडी नहीं जोड़ी गई है।",
		your_licenses_are = "आपके पास निम्नलिखित लाइसेंस हैं: ${licenses}",
		player_licenses_are = " ${characterName} के पास निम्नलिखित लाइसेंस हैं: ${licenses}",
		you_have_no_licenses = "आपके पास कोई लाइसेंस नहीं हैं।",
		player_has_no_licenses = "${characterName} के पास कोई लाइसेंस नहीं है।",
		failed_to_get_licenses = "लाइसेंस प्राप्त करने में विफल।",
		license_list = "उपलब्ध लाइसेंस: ${licenseList}।"
	},

	tow = {
		press_to_access_spawner = "गाड़ी स्पॉन्सर तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		tow_vehicles = "टो व्हीकल्स",
		vehicle_list = "वाहन सूची",
		park_vehicle = "वाहन पार्क करें",
		parked_vehicle = "पार्क की गई वाहन।",
		no_vehicle_to_park = "वाहन पार्क करने के लिए कोई वाहन नहीं है।",
		close_menu = "मेनू बंद करें",
		purchased_vehicle = "ख़रीदी गई गाड़ी।",
		shop_on_timeout = "वाहन दुकान टाइमआउट पर है। कृपया पुन: प्रयास करें।",
		spawn_area_not_clear = "स्पॉन एरिया साफ नहीं है।",
		purchase_funds = "पर्याप्त फंड नहीं हैं।",
		return_button = "वापस जाएं",

		toggled_messages_on = "संदेश सक्रिय हुए।",
		toggled_messages_off = "संदेश अक्षम हुए।"
	},

	weazel_news = {
		press_to_access_spawner = "वाहन स्पॉनर तक पहुँचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		weazel_news = "वीज़ेल न्यूज़",
		vehicle_list = "वाहन सूची",
		close_menu = "मेनू बंद करें",
		return_button = "वापस जाएं",
		park_vehicle = "वाहन पार्क करें",
		parked_vehicle = "वाहन पार्क किया गया है।",
		no_vehicle_to_park = "पार्क करने के लिए कोई वाहन नहीं है।",
		spawned_vehicle = "वाहन उत्पन्न हुआ।",
		spawner_on_timeout = "वाहन स्पॉन्सर टाइमआउट पर है। कृपया फिर से प्रयास करें।",
		spawn_area_not_clear = "स्पॉन एरिया स्पष्ट नहीं है।"
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number2} के ${number1}"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "${locationLabel} पर वाहन अलर्ट ट्रिगर हुआ क्योंकि वाहन में प्लेट `${plateText}` है।",
		vehicle_alert_blip = "वाहन अलर्ट"
	},

	boats = {
		anchor_disconnected = "एंकर सफलतापूर्वक डिस्कनेक्ट किया गया।",
		anchored_successfully = "एंकर को सफलतापूर्वक डिप्लॉय किया गया है।",
		removing_anchor = "एंकर को डिस्कनेक्ट किया जा रहा है।",
		deploying_anchor = "जहाज को एंकर लगाने जा रहे हैं",
		no_vehicle_nearby = "कोई नजदीकी नाव नहीं है जिसे आप एंकर लगा सकें।"
	},

	car_wash = {
		use_car_wash = "कार वॉश का उपयोग करने के लिए ~INPUT_CONTEXT~ दबाएं। लागत है $${cost}।",
		stop_car_to_wash = "कार वॉश का उपयोग करने के लिए अपने गाड़ी को रोकें।",
		vehicle_already_clean = "इस वाहन को धोने की जरूरत नहीं है।",
		car_wash = "कार वॉश",
		air_unit_damaged = "यह हवाई इकाई क्षतिग्रस्त है।",
		air_unit_not_enough_cash = "हवाई इकाई का उपयोग करने के लिए आपके पास पर्याप्त नकदी नहीं है।",
		air_unit_exit_vehicle = "हवाई इकाई का उपयोग करने के लिए वाहन से बाहर निकलें।",
		air_unit_press_to_use = "एयर यूनिट का उपयोग करने के लिए ~g~${SeatEjectKey} ~w~दबाएं | कीमत: $$ {cost}",
		air_unit_purchase_cleaning_kit = "~g~${InventoryKey} ~w~दबाएं और एक क्लीनिंग किट खरीदें।",
		cleaning_vehicle = "वाहन को साफ़ करना है",
		not_enough_money = "आपके पास एयर यूनिट का उपयोग करने के लिए पर्याप्त धन नहीं है।",
		vehicle_not_in_range = "वाहन साफ करने के लिए बहुत दूर हट गया।"
	},

	carrier = {
		use_catapult = "विस्तार को कैटापल्ट में खूंचने के लिए ~INPUT_CONTEXT~ दबाएँ।",
		use_launch = "लॉन्च करने के लिए ~INPUT_VEH_HANDBRAKE~ दबाएं।"
	},

	damage = {
		vehicle = "वाहन पहचान-संख्या: ${entity}",
		general = "सामान्य: ${value}",
		body = "बॉडी: ${value}",
		engine = "इंजन: ${value}",
		petrol_tank = "टैंक: ${value}",
		temperature = "तापमान: ${value}",
		tracked_vehicle = "ट्रैक्टेड वाहन",

		debug_vehicle_on = "गाड़ी डीबग चालू कर दी गई।",
		debug_vehicle_off = "गाड़ी डीबग बंद कर दी गई।"
	},

	fuel = {
		exit_to_fuel = "पेट्रोल भरने के लिए गाड़ी से उतरें।",
		press_to_fuel = "गाड़ी में पेट्रोल भरने के लिए ~g~${InteractionKey}~w~ दबाएँ।",
		fuel_pump_text = "पेट्रोल की कीमत: $${fuelCost}~n~फँसने से बाहर आने के लिए ~g~E~w~ दबाएं।",
		vehicle_text = "पेट्रोल का स्तर: ${fuelLevel}%",
		tank_full = "टैंक भरा हुआ है।",
		vehicle_busy = "आसपास के वाहन व्यस्त हैं।",
		purchase_jerry_can = "जेब में रखने के लिए एक जैरी कैन खरीदने के लिए ~g~$ {InventoryKey} ~w~दबाएं।",
		gas_station = "गैस स्टेशन",
		petrolcan_fuel_text = "पेट्रोल मात्रा शेष: ${petrolAmount}%~n~रोकने के लिए ~g~E ~w~दबाएं।",
		player_busy = "आप कुछ और कर रहे हैं।",
		fuel_level_set_to = "ईंधन स्तर `${fuelLevel}` पर सेट किया गया है।",
		not_in_a_vehicle = "आप एक वाहन में नहीं हैं।",
		vehicle_engine_on = "इंजन अभी भी चल रहा है।",

		set_fuel_no_permissions = "खिलाड़ी ने सही अनुमतियों के बिना वाहनों के ईंधन स्तर को सेट करने का प्रयास किया।",

		vehicle_exploded_logs_title = "वाहन फट गया",
		vehicle_exploded_logs_details = "${consoleName} ने एक वाहन को ताकत दी और चलती गाड़ी के कारण एक विस्फोट को ट्रिगर किया।"
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "गति: ${speed} किमी/घंटा\nमॉडल: ${model}\nप्लेट: ${plate}",
		helicopter_camera_vehicle_info_imperial = "गति: ${speed} मील/घंटा\nमॉडल: ${model}\nप्लेट: ${plate}",
		helicopter_camera_altitude = "${altitude} फुट AGL",
		helicopter_camera_altitude_asl = "${altitude} फुट ASL",
		unknown = "अज्ञात"
	},

	garages = {
		garage_empty = "आपका गेराज खाली है!",
		impound_lot = "इम्पाउंड लॉट",
		police_impound = "पुलिस इम्पाउंड",
		engine = "इंजन",
		body = "बॉडी",
		vehicle_in = "इन",
		vehicle_out = "आउट",
		vehicle_at_police_impound = "आपकी गाड़ी वर्तमान में पुलिस रोक में है।",
		vehicle_at_impound = "आपकी गाड़ी इम्पाउंड लॉट में स्थित है।",
		waypoint_to_impound = "आपके GPS पर इम्पाउंड लॉट के लिए एक मार्गदर्शक बिंदु चिह्नित किया गया है।",
		unable_to_withdraw = "${location} में आपकी गाड़ी वर्तमान में नहीं है, इसलिए निकालने में असमर्थ।",
		waypoint_to_vehicle = "आपके वाहन के लिए एक मार्गदर्शक बिंदु आपके GPS पर चिह्नित किया गया है।",
		vehicle_currently_at = "आपकी गाड़ी वर्तमान में ${location} पर मौजूद है।",
		vehicle_in_garage = "आपकी गाड़ी ${garageName} में स्थित है।",
		insufficient_funds = "आपके पास इस गाड़ी को वापस लेने के लिए पर्याप्त धन नहीं है।",
		error_withdrawing = "आपकी गाड़ी वापस लेने का प्रयास करते समय एक त्रुटि आई।",
		withdraw_timeout = "कृपया एक अन्य गाड़ी को वापस निकालने से पहले थोड़ा प्रतीक्षा करें।",
		garage_in_use = "यह गेराज वर्तमान में उपयोग में है, कृपया थोड़ा प्रतीक्षा करें।",
		invalid_model = "अमान्य या अज्ञात वाहन मॉडल।",
		vehicle_in_the_way = "स्पॉन पॉइंट ब्लॉक हो चुका है।",
		vehicle_is_out = "आपकी गाड़ी पहले से ही बाहर है।",
		vehicle_stored = "आपकी गाड़ी स्टोर हो गई है।",
		error_storing = "गाड़ी स्टोर करने में विफल। क्या यह आपकी गाड़ी है?",
		no_nearby_vehicle = "कोई निकटवर्ती गाड़ी नहीं मिली।",
		no_vehicles_to_retrieve = "आपके पास वापस लाने के लिए कोई गाड़ी नहीं है!",
		vehicle_retrieved = "गाड़ी सफलतापूर्वक वापस ले ली गई है।",
		error_retrieving = "आपकी गाड़ी वापस लाने की कोशिश करते समय एक त्रुटि हुई।",
		not_enough_balance_to_retrieve = "आपके खातों में से किसी भी एकाउंट में इस गाड़ी को वापस लाने के लिए पर्याप्त शेष राशि नहीं है।",
		press_to_access = "गेराज तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं।",
		ui_return = "वापस जाएं",
		ui_vehicle_list = "वाहन सूची",
		ui_store_vehicle = "वाहन संग्रहीत करें",
		ui_vehicle_sell = "वाहन बेचें",
		ui_retrieve_vehicle = "वाहन वापस लाएं",
		ui_close_menu = "मेनू बंद करें",
		garage_letter = "गेराज ${letter}",
		garage_emergency = "${type} गेराज",
		emergency_type_1 = "पुलिस विभाग",
		emergency_type_2 = "ईएमएस",
		no_vehicles_impounded = "आपकी कोई वाहन जब्त नहीं हैं!",
		you_must_retrieve_this_vehicle = "आपको इस वाहन को पुनः प्राप्त करने के लिए इसे वापस लाना होगा।",
		garage = "गेराज",
		retrieved_vehicle_logs_title = "वाहन पुनर्प्राप्त किया गया",
		retrieved_vehicle_logs_details = "${consoleName} ने ${price} के लिए प्लेट `${plate}` वाला वाहन पुनर्प्राप्त किया था।",

		state_loading_model = "मॉडल लोड हो रहा है...",
		state_withdrawing = "वापस निकाल रहा है...",

		state_retrieve_searching = "खोज हो रही है...",
		state_retrieving = "पुनर्प्राप्त करना...",

		state_storing = "स्टोर करना...",

		state_loading = "लोड हो रहा है...",

		vehicle_weight = "वजन: ${weight}",
		last_garage_letter = "अंतिम - गेराज ${letter}",
		last_garage_impound = "अंतिम - इम्पाउंड लॉट",
		no_last_garage_letter = "कोई अंतिम गेराज नहीं है",

		purchase_vehicle = "दुकान तक पहुंचने के लिए ~INPUT_CONTEXT~ दबाएं",
		emergency_shop = "वाहन दुकान",
		exit_shop = "दुकान से बाहर निकलें",
		purchase_success = "आपने हाल ही में खरीदे ${label} को अपने गेराज में जोड़ दिया गया है।",
		purchase_failed = "वाहन खरीदने में विफल रहा।",
		already_owned = "आपके पास पहले से ही इस वाहन मॉडल के स्वामित्व में है।",
		maximum_owned = "आपसे अधिक नहीं हो सकता 6 वाहनों के स्वामित्व में होना।",
		not_enough_money = "आपके पास इस वाहन को खरीदने के लिए पर्याप्त धन नहीं है।",

		sold_vehicle = "$${price} के लिए ${label} बेच दिया।",
		failed_sell_vehicle = "वाहन बेचने में असफल।",

		sold_vehicle_logs_title = "वाहन बेचा गया",
		sold_vehicle_logs_details = "${consoleName} ने `${plate}` नंबर के साथ `${modelName}` आपातकालीन वाहन को ${price} में बेच दिया।",

		purchased_vehicle_logs_title = "वाहन खरीदा गया",
		purchased_vehicle_logs_details = "${consoleName} ने `${plate}` नंबर के साथ `${modelName}` आपातकालीन वाहन को ${price} में खरीदा।",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "गैरेज डीबग चालू हुआ।",
		toggle_garage_debug_toggled_off = "गैरेज डीबग बंद हुआ।"
	},

	handlings = {
		set_handling_override_not_super_admin = "यह खिलाड़ी सही अनुमति के बिना हैंडलिंग ओवरराइड सेट करने का प्रयास किया।",
		remove_handling_override_not_super_admin = "खिलाड़ी ने सही अनुमति के बिना हैंडलिंग ओवरराइड हटाने का प्रयास किया।"
	},

	keys = {
		no_nearby_player = "पास कोई निकटवर्ती खिलाड़ी नहीं मिला।",
		no_nearby_vehicle = "पास कोई निकटवर्ती वाहन नहीं मिला।",
		no_keys_for_vehicle = "आपके पास इस वाहन की चाबियों नहीं हैं।",
		vehicle_locked = "वाहन ताले बंद",
		vehicle_unlocked = "वाहन अनलॉक",
		h_to_hotwire = "[H] हॉटवायर",
		received_keys = "गाड़ी कुंजी ${plate} के लिए प्राप्त की गई।",
		received_keys_no_plate = "गाड़ी के लिए कुंजी प्राप्त की।",
		you_are_not_in_a_vehicle = "आप गाड़ी में नहीं हैं।",
		you_are_in_a_vehicle = "आप वर्तमान में एक गाड़ी में हैं।",
		hotwired_vehicle_with_plate_number = "गाड़ी की प्लेट नंबर '${plateNumber}' के साथ हॉटवायर की गई।",
		unable_to_hotwire_vehicle = "गाड़ी को हॉटवायर करने में असमर्थ।",
		picked_up_keys = "'${plate}' के लिए कुंजी उठाई गई।",
		invalid_server_id = "अमान्य सर्वर आईडी।",
		hotwired_vehicle_for_player = "${displayName} को गाड़ी में हॉटवायर कर दिया गया है जिनमें वे हैं।"
	},

	modifications = {
		wheels_reset = "पहियों को रीसेट किया जा रहा है।",
		wheels_already_reset = "पहियों को पहले से ही उनकी डिफ़ॉल्ट स्थिति में रीसेट किया जा चुका है।",
		wheels_modified = "गाड़ी के पहिये बदल दिए गए हैं।",
		wheels_none_specified = "कोई पहिये निर्दिष्ट नहीं किए गए।",
		wheels_none_valid_specified = "कोई वैध पहिये निर्दिष्ट नहीं हैं।",
		not_in_a_car = "आप गाड़ी में नहीं हैं।",
		invalid_value = "अमान्य मान।"
	},

	plates = {
		plate_number_is_available = "प्लेट नंबर `${plateNumber}` उपलब्ध है।",
		plate_number_is_not_available = "प्लेट नंबर `${plateNumber}` उपलब्ध नहीं है।",
		missing_valid_plate_number = "एक वैध 'प्लेट नंबर' पैरामीटर अनुपस्थित है।",
		missing_valid_vehicle_id = "एक वैध 'वाहन आईडी' पैरामीटर अनुपस्थित है।",
		database_error = "एक बैक-एंड डेटाबेस त्रुटि आई है।",
		no_custom_plate_package = "आपके पास कस्टम प्लेट पैकेज नहीं है। अधिक जानकारी के लिए हमारी वेबस्टोर देखें!",
		api_error = "हमारे बैक-एंड एपीआई ने एक त्रुटि लौटाई है।",
		api_not_available = "हमारे बैक-एंड एपीआई उपलब्ध नहीं है।",
		vehicle_does_not_belong_to_player = "वाहन आईडी `${vehicleId}` आपके नहीं है।",
		vehicle_id_does_not_exist = "वाहन आईडी `${vehicleId}` मौजूद नहीं है।",
		you_have_no_character_loaded = "आपके पास कोई व्यक्तित्व लोड नहीं है।",
		vehicle_plate_changed = "${vehicleId} वाहन की प्लेट नंबर को `${plateNumber}` में बदल दिया गया।",

		you_are_not_in_a_vehicle = "आप एक वाहन में नहीं हैं।",
		fake_plate_active = "आपके वाहन के लिए एक नकली प्लेट सफलतापूर्वक उत्पन्न किया गया है।",
		fake_plate_inactive = "वाहन के प्लेट को मूल रूप से वापस रीसेट कर दिया गया है।",

		fake_plate_missing_permissions = "खिलाड़ी ने अधिकार रहित होने के कारण एक फेक प्लेट सेट करने का प्रयास किया।"
	},

	runways = {
		you_are_not_in_a_plane = "आप विमान में नहीं हैं।",
		ifr_disabled = "आईएफआर अक्षम कर दिया गया है।",
		ifr_enabled = "आईएफआर सक्षम किया गया है।"
	},

	sirens = {
		sirens_muted_on = "सभी सायरन्स अब म्यूट हैं।",
		sirens_muted_off = "सभी सायरन्स अब अनम्यूट हैं।"
	},

	spawner = {
		press_to_access_spawner = "वाहन स्पॉन्सर तक पहुँचने के लिए ~INPUT_CONTEXT~ दबाएं।",

		parked_vehicle = "वाहन सफलतापूर्वक पार्क हुआ।",

		spawner_burger_shot = "बर्गर शॉट डिलीवरी वाहन",
		spawner_bean_machine = "बीन मशीन डिलिवरी वाहन",
		spawner_weazel_news = "वीजेल न्यूज़ वाहन",
		close_menu = "मेनू बंद करें",
		vehicle_list = "वाहन सूची",
		park_vehicle = "वाहन पार्क करें",
		return_button = "वापस",

		failed_spawn = "वाहन उत्पन्न करने में विफल.",
		failed_area = "क्षेत्र स्पष्ट नहीं है।",
		failed_job = "आपके पास सही नौकरी नहीं है।",
		failed_generic = "कुछ गलत हो गया है।"
	},

	vehicles = {
		flip_flipping = "वाहन पलट रहा है",
		flip_unable = "आप वाहन को पलट नहीं सकते जब वहाँ लोग अंदर हैं।",
		vehicle_busy = "कृपया प्रतीक्षा करें, वाहन व्यस्त है!",
		hold_to_eject = "निकालने के लिए धारण करें",
		taking_keys = "कुंजी ले रहा हूँ",
		belt_on = "बेल्ट लगा लीजिए",
		belt_off = "बेल्ट उतार दीजिए",
		mileage = "माइलेज",
		vehicle_mileage_amount = "इस वाहन में ${मील} मील हैं।",
		not_in_driver_seat = "माइलेज देखने के लिए, आपको ड्राइवर सीट पर होना चाहिए।",
		not_driving_vehicle = "आप एक वाहन नहीं चला रहे हैं।",
		vehicle_locked = "वाहन लॉक किया गया है।",
		gear_animation_enabled = "गियर एनिमेशन (और ध्वनि) अब सक्रिय हो गए हैं।",
		gear_animation_disabled = "गियर एनिमेशन (और ध्वनि) अब अक्षम हो गए हैं।",
		manual_gears_enabled = "मैनुअल गियरिंग अब सक्रिय हो गई है।",
		manual_gears_disabled = "मैनुअल गियरिंग अब अक्षम हो गई है।",
		manual_gear_set_to = "गियर ${gearId} सेट किया गया।",
		speed_limiter_set_to_metric = "स्पीड लिमिटर अब ${speed} किमी/घंटे की गति पर सीमित होगी।",
		speed_limiter_set_to_imperial = "स्पीड लिमिटर अब ${speed} मील/घंटे की गति पर सीमित होगी।",
		speed_limiter_reset = "स्पीड लिमिटर अब वाहन की गति पर सीमित होगी जिस पर टॉगल किया गया था।",
		speed_limiter_on_metric = "स्पीड लिमिटर सेट ${speed} किमी/घंटे कर दिया गया है।",
		speed_limiter_on_imperial = "स्पीड लिमिटर सेट ${speed} मील/घंटे कर दिया गया है।",
		speed_limiter_on_plane_metric = "स्पीड लिमिटर सेट ${speed} किमी/घंटे और ${altitude} मीटर कर दिया गया है।",
		speed_limiter_on_plane_imperial = "${speed} मील/घंटे और ${altitude} फीट पर स्पीड सीमा लगाई गई।",
		speed_limiter_on_helicopter_metric = "${altitude} मीटर (होवर) पर स्पीड सीमा लगाई गई।",
		speed_limiter_on_helicopter_imperial = "${altitude} फीट (होवर) पर स्पीड सीमा लगाई गई।",
		autopilot_metric = "~g~ऑटोपायलट~s~: ${altitude}मीटर ~c~/~s~ ${speed}किलोमीटर/घंटा",
		autopilot_imperial = "~g~ऑटोपायलट~s~: ${altitude}फीट ~c~/~s~ ${speed}नॉट्स",
		you_are_cuffed = "आपको हथकड़ी लगाई गई है।",
		belt_is_on_and_vehicle_is_locked = "आपका सीट बेल्ट बंद है और वाहन लॉक किया गया है।",
		belt_is_on = "आपके बेल्ट बंद है।",
		vehicle_is_locked = "गाड़ी लॉक है।",

		nearest_player_not_vehicle = "निकटतम खिलाड़ी वाहन में नहीं है।",
		no_dead_player_nearby = "आपके पास कोई मृत खिलाड़ी वाहन में नहीं है।",
		dragging_out_player = "खिलाड़ी को वाहन से बाहर खींच रहे हैं।",
		vehicle_too_fast = "गाड़ी बहुत तेजी से चल रही है।",

		modifying_brakes = "ब्रेक संशोधित कर रहे हैं",
		toggle_brakes_on = "ब्रेक बंद किए गए।",
		toggle_brakes_off = "ब्रेक ऑन हो गए।",
		failed_modify_brakes = "ब्रेक संशोधित करने में विफल रहा।",

		toggle_disabled_brakes_no_permissions = "खिलाड़ी ने सही अनुमति के बिना कमांड के माध्यम से अक्षम ब्रेक्स टॉगल करने का प्रयास किया।",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "खिलाड़ी ने सही अनुमति के बिना किसी के गैराज में वाहन जोड़ने का प्रयास किया।",
		add_vehicle_added_vehicle_for_everyone = "जोड़ा गया वाहन मॉडल नाम `${modelName}` सभी के लिए।",
		add_vehicle_added_vehicle_for_player = "जोड़ा गया वाहन मॉडल नाम `${modelName}` ${consoleName} के लिए।",
		add_vehicle_added_vehicle = "जोड़ा गया वाहन मॉडल नाम `${modelName}`।",
		add_vehicle_character_not_loaded = "लक्ष्य उपयोगकर्ता के पास कोई लोड किए गए चरित्र नहीं थे।",
		add_vehicle_target_user_not_found = "लक्ष्य उपयोगकर्ता नहीं मिल सकता।",
		add_vehicle_invalid_input = "अमान्य इनपुट।",
		add_vehicle_no_permissions = "कोई अनुमति नहीं।",
		add_vehicle_user_not_found = "उपयोगकर्ता नहीं मिला।",
		add_vehicle_invalid_player = "सर्वर आईडी `${serverId}` के साथ कोई खिलाड़ी नहीं थे।",
		add_vehicle_invalid_model_name = "मॉडल नाम `${modelName}` एक वैध मॉडल नहीं है।",
		add_vehicle_no_model_name = "कोई मॉडल नाम नहीं जोड़ा गया।",

		added_vehicle_for_everyone_logs_title = "सभी के लिए वाहन जोड़ा गया",
		added_vehicle_for_everyone_logs_details = "${consoleName} ने मॉडल नाम `${modelName}` वाला वाहन सभी के गेरेज में जोड़ा।",
		added_vehicle_for_player_logs_title = "खिलाड़ी के लिए वाहन जोड़ा गया",
		added_vehicle_for_player_logs_details = "${consoleName} ने मॉडल नाम `${modelName}` वाला वाहन ${targetConsoleName} के गेरेज में जोड़ा।",
		added_vehicle_logs_title = "वाहन जोड़ा गया",
		added_vehicle_logs_details = "${consoleName} ने मॉडल नाम `${modelName}` वाला वाहन अपने गेरेज में जोड़ा।",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "खिलाड़ी ने वाहन पर सही अनुमतियों के बिना वाहन हथियार टॉगल करने का प्रयास किया।",
		toggled_vehicle_weapons_on = "वाहन हथियार टॉगल किया गया।",
		toggled_vehicle_weapons_off = "वाहन हथियार टॉगल बंद किया गया।",
		toggled_vehicle_weapons_vehicle_is_not_networked = "आप उस वाहन में नहीं हैं जो नेटवर्क से जुड़ा हुआ है।",
		toggled_vehicle_weapons_not_in_a_vehicle = "आप एक वाहन में नहीं हैं।",
		toggled_vehicle_weapons_target_user_not_found = "लक्ष्य उपयोगकर्ता नहीं मिला।",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "लक्ष्य खिलाड़ी एक वाहन में नहीं है।",
		toggled_vehicle_weapons_for_player_on = "${consoleName} के लिए गाड़ी के हथियार ऑन कर दिए गए।",
		toggled_vehicle_weapons_for_player_off = "${consoleName} के लिए गाड़ी के हथियार बंद कर दिए गए।",
		toggled_vehicle_weapons_for_everyone = "गाड़ी के हथियार सभी के लिए टॉगल किए गए।",

		toggled_vehicle_weapons_on_logs_title = "गाड़ी के हथियार ऑन कर दिए गए",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} ने एक गाड़ी के लिए हथियार टॉगल किए थे।",
		toggled_vehicle_weapons_off_logs_title = "गाड़ी के हथियार बंद कर दिए गए।",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} ने वाहन के हथियार बंद किए।",
		toggled_vehicle_weapons_on_for_player_logs_title = "खिलाड़ी के लिए वाहन हथियार चालू करते हुए टॉगल किया",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} ने ${targetConsoleName} के वाहन के हथियार चालू किए।",
		toggled_vehicle_weapons_off_for_player_logs_title = "खिलाड़ी के लिए वाहन हथियार बंद करते हुए टॉगल किया",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} ने ${targetConsoleName} के वाहन के हथियार बंद किए।",
		toggled_vehicle_weapons_for_everyone_logs_title = "लोगों के लिए वाहन हथियार टॉगल किए गए",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} ने सभी के वाहनों के लिए हथियार टॉगल किए।",

		breaking_window = "खिड़की तोड़ना",
		not_near_window = "आप खिड़की के करीब नहीं हैं।",
		not_near_vehicle = "कोई वाहन नहीं है।",

		wheelie_no_vehicle = "कोई वाहन नहीं है",
		wheelie_engine_off = "इंजन बंद है",
		wheelie_idling = "आराम से विराम है",
		wheelie_ready = "तैयार है",
		wheelie_boosting = "बूस्ट कर रहा है",

		invalid_power_level = "अवैध ताकत का स्तर (1 - 5)।"
	},

	vin_numbers = {
		cad_title = "[CAD] कैड",

		checking_vin = "विन जाँच हो रही है",
		not_driver = "आप वर्तमान में किसी वाहन का चालक नहीं हैं।",
		failed_vin_get = "विन प्राप्त करने में विफल रहा।",
		vin_checked = "इस वाहन का विन नंबर `${vin}` है।",
		vin_scratched = "विन नंबर को घायल कर दिया गया है।",

		looking_up_vin = "विन जाँच की जा रही है",
		invalid_vin = "अमान्य या अनुपस्थित विन नंबर।",
		failed_vin_lookup = "विन नंबर देखने में विफल रहा।",
		vin_lookup_details = "विन `${vin}` रजिस्टर्ड है, जो नंबर `${plate}` वाले वाहन के नाम है, जिसके स्वामी `${fullName}` हैं।",
		vin_lookup_unregistered = "VIN `${vin}` किसी भी वाहन से जुड़ा नहीं है।"
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] काटने के लिए धारण करें",
		hold_to_slash = "काटने के लिए धारण करें",
		slashing_tire = "टायर काटना"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "एमो का बॉक्स खोलना",
		failed_unbox = "एमो खोलने में विफल रहा।",
		failed_unbox_full = "आप अधिक इस धातु के बोझ को नहीं ले जा सकते हैं।",
		unbox_success = "सफलतापूर्वक ${amount}x ${ammoType} एमो खोला गया।",
		unbox_success_box = "एक एमो बॉक्स सफलतापूर्वक खोला गया।",

		type_pistol = "पिस्तौल धातु",
		type_smg = "सबमशीन गन धातु",
		type_rifle = "राइफल कारतूस",
		type_sniper = "स्नाइपर कारतूस",
		type_shotgun = "12 गेज कारतूस",
		type_stungun = "टेज़र कार्ट्रिजेस",

		fill_ammo_success = "गोलियों को सफलतापूर्वक भर दिया गया।",
		fill_ammo_failed = "गोलियों को भरने में विफल रहा।"
	},

	weapons = {
		pick_up_fire_extinguisher = "Fire Extinguisher लेने के लिए ~INPUT_CONTEXT~ ज़ब्त करें।",
		press_to_drop_fire_extinguisher = "Fire Extinguisher छोड़ने के लिए ~INPUT_FRONTEND_RRIGHT~ दबाएं।",
		illegal_fire_extinguisher_model = "एक अवैध Fire Extinguisher मॉडल के साथ सभी क्लाइंट्स पर एक Fire Extinguisher को हटाने का प्रयास किया गया।",

		airsoft_mode_on = "एयरसॉफ्ट मोड ऑन किया गया।",
		airsoft_mode_off = "एयरसॉफ्ट मोड ऑफ किया गया।",
		airsoft_mode_failed = "एयरसॉफ्ट मोड टॉगल करने में विफल रहा।",

		no_weapon_equipped = "कोई वेपन नहीं है।",
		no_ammo = "इस वेपन के लिए आमों की कोई आपूर्ति नहीं है।",
		infinite_ammo = "आपके पास इस वेपन के लिए असीमित आमों की सहायता है।",
		ammo_count = "आपके पास ${total} गोलियों के साथ ${clips} पूर्ण क्लिप्स हैं।",
		ammo_count_loose = "आपके पास ${total} गोलियों के साथ ${clips} पूर्ण क्लिप्स और 1 क्लिप जिसमें ${loose} गोलियां हैं हैं।",

		firing_mode_0 = "फायरिंग मोड डिफ़ॉल्ट पर सेट किया गया है।",
		firing_mode_1 = "फायरिंग मोड सेमी-ऑटोमेटिक पर सेट किया गया है।",
		firing_mode_2 = "वेपन सुरक्षा ऑन कर दी गई है।",

		safety_is_on = "वेपन सुरक्षा ऑन है।",

		firing_mode_set_1 = "फायरिंग मोड सेमी-ऑटोमेटिक पर सेट किया गया है।",
		firing_mode_set_2 = "वेपन सुरक्षा ऑन कर दी गई है।",

		folded_stock = "फोल्ड हुए स्टॉक",
		unfolded_stock = "खोले हुए स्टॉक",
		failed_to_toggle_stock = "स्टॉक टॉगल करने में विफल रहा।",
		weapon_has_no_stock = "इस वाहन में कोई स्टॉक नहीं है।"
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] चेक इन",
		check_in_timer = "[${remaining}s] चेक इन",
		check_in_escorted = "आप के साथ हैं",
		checking_in = "चेक इन कर रहे हैं",
		doctor_notified = "एक डॉक्टर को सूचित किया जा चुका है, कृपया प्रतीक्षा करें",
		leave_bed = "बिस्तर छोड़ने के लिए ~INPUT_CONTEXT~ दबाएं",
		you_have_been_charged = "आपको अपनी चोटों के लिए $${cost} देना पड़ा है",
		beds_occupied = "सभी बिस्तर अधिकृत हैं",
		patient_checked_in = "रोगी बिस्तर ${bed} पर चेक इन किया गया",
		stop_bleeding = "[E] रक्तस्राव रोकें",
		stopping_bleeding = "रक्तस्राव रोका जा रहा है",
		bleeding_stopped = "रक्तस्राव रोक दिया गया है",
		overdose_effects = "आप अधिक मात्रा में दवाओं का सेवन करने के परिणाम स्वरूप दुष्परिणाम झेल रहे हैं।",
		you_have_parasite = "आपके पास एक कीटाणु है",
		you_have_multiple_parasite = "आपके पास कई कीटाणु हैं",
		bandage = "[E] घावों का बैंडेज करें",
		bandaging = "घावों को बैंडेज कर रहा है",
		wounds_bandaged = "घावों को बैंडेज कर दिया गया है",
		treat_injury = "[E] चोट का उपचार करें ${label} ",
		treating_injury = "${label} चोट का इलाज कर रहा है",
		injury = "${label} चोट",
		cpr_done = "CPR सफल रहा",
		cpr_fail = "व्यक्ति को ढूंढने में नाकाम",
		went_on_duty = "ड्यूटी पर जाएँ",
		went_off_duty = "ड्यूटी से बाहर निकलें",
		on_duty = "ड्यूटी पर हैं",
		off_duty = "अस्थायी रूप से बाहर हैं",
		press_to_sign = "साइन अप करने के लिए ~g~E ~w~दबाएँ",
		open_vehicle_spawner = "वाहन स्पॉन्सर खोलने के लिए ~g~E ~w~दबाएँ",
		open_heli_spawner = "हेलीकॉप्टर मेनू खोलने के लिए ~g~E ~w~दबाएँ",
		open_boat_spawner = "नाव मेनू खोलने के लिए ~g~E ~w~दबाएँ",
		on = "चालू",
		off = "बंद",
		sign_as_doctor = "एक डॉक्टर के रूप में ${प्रवेश} करने के लिए ~g~E ~w~दबाएँ",
		close_menu = "मेनू बंद करें",
		vehicle_list = "वाहन सूची",
		park_vehicle = "वाहन पार्क करें",
		clear_area = "वाहन उत्पन्न करने से पहले कृपया गैराज साफ करें",
		unable_to_extra = "इस वाहन के 'अतिरिक्त' का बदलाव नहीं किया जा सकता!",
		warning = "चेतावनी",
		invalid_input = "अवैध इनपुट।",
		unable_to_extra_on_vehicle = "इस वाहन के 'अतिरिक्त' का बदलाव नहीं किया जा सकता!",
		heli_here_already = "हेलीपैड पर पहले से ही हेलिकॉप्टर है",
		ems_air_hq = "ईएमएस एयर एचक्यू",
		ems_boat_hq = "ईएमएस बोट एचक्यू",
		ems_garage = "ईएमएस गेरेज",
		e_to_get_treated = "[E] उपचार प्राप्त करें - $1250",
		get_treated = "उपचार प्राप्त करें - $1250",
		you_are_being_treated = "आप उपचार किये जा रहे हैं",
		being_treated = "उपचार किया जा रहा है",
		minute = "मिनट",
		minutes = "मिनट",
		second = "सेकंड",
		seconds = "सेकंड",
		kurwa_and = "और",
		wait_for_paramedic = "कृपया एक पैरामेडिक के आगमन का इंतजार करें या फिर ${time} खत्म होने तक प्रतीक्षा करें",
		cannot_respawn_currently = "आप वर्तमान में फिर से जन्म नहीं ले सकते",
		hold_to_respawn = "फिर से जन्म लेने के लिए ~b~ENTER ~w~धारित करें या एक पैरामेडिक के आगमन का इंतजार करें",
		hold_to_respawn_secondslol = "फिर से जन्म लेने के लिए ~b~ENTER (${seconds}) ~w~धारित करें या एक पैरामेडिक के आगमन का इंतजार करें",
		passed_out = "आप बेहोश हो गए हैं",
		light = "हल्का",
		moderate = "मध्यम",
		heavy = "भारी",
		severe = "गंभीर",
		arms_injured = "हाथ घायल होने के कारण, फिरिंग नहीं कर सकते",
		injuryb = "घायली",
		bleeding_multiple_injuries = "कई घायलियों के साथ खून बहना",
		feels_irritated = "खिड़कों में सुखावट का अनुभव होता है",
		feels_painful = "दर्द का अनुभव होता है",
		feels_extremely_painful = "बहुत अधिक दर्द का महसूस होता है",
		multiple_injuries = "आपके पास कई घायलियां हैं",
		bleeding = "खून बह रहा है",
		bleeding_with_injury = "${label} घायली के साथ खून बह रहा है",
		bleeding_reduced = "खून कम हो गया है",
		bleeding_self_stopped = "खून अपने आप रुक गया",
		thanks_for_loot = "आप बेहोश होने के दौरान लूट किये गए थे। कुछ आइटम लुप्त हो सकते हैं।",
		serial_number = "सीरियल नंबर: ${serialNumber}<br>यह हथियार ${fullName} (#${characterId}) को रजिस्टर किया गया है।",
		serial_number_unknown = "सीरियल नंबर: अज्ञात।",
		badge_owner = "<i>इस बैज का मालिक <b>${fullName} (${positionName})</b> है।</i>",
		badge_owner_unknown = "बैज के मालिक का नाम अज्ञात है।",
		citizen_card_owner = "<i>इस नागरिक कार्ड का मालिक <b>${fullName} (#${characterId})</b> है।</i>",
		citizen_card_has_portrait = "<i>इसमें एक चित्र है।</i>",
		picture_pending = "<i>चित्र अभी भी संसाधित किया जा रहा है...</i>",
		picture_selfie_owner = "<i>यह <b>${fullName}</b> का एक चित्र है।</i>",
		bought_by = "${buyerName} (${buyerCid}) ने खरीदा।",
		bought_by_unknown = "इस आइटम के खरीदार का पता नहीं है।",
		cigarette_pack = "अब इसमें ${cigarettes} सिगरेट बचे हैं।",
		evidence_incomplete = "यह सबूत बैग अपूर्ण है।",
		evidence_type = "सबूत प्रकार",
		processed_picked_up = "<i>${pickupName} द्वारा उठाया और ${processName} द्वारा संसाधित किया गया।</i>",
		picked_up = "<i>${pickupName} द्वारा उठाया गया।</i>",
		processed_by = "<i>${processName} द्वारा प्रसंस्कृत।</i>",
		evidence_casings = "केसिंग सीरियल नंबर ${serialNumber} के रूप में लौटे जो कि इस समय ${buyerName} (${buyerCid}) द्वारा धारण किए जाते थे।",
		evidence_bullets = "गोली असर ${bulletLabel} द्वारा उत्पन्न होने की लगता है।",
		evidence_clothing = "एक परिधान (${clothingType})।",
		evidence_car_dna = "DNA वाहन नंबर ${plateNumber} वाले वाहन से उठाया गया था और ${DNAOwnerName} (${DNAOwner}) के पास लौट गया था।",
		evidence_dna = "${fullName} #${characterId} से DNA एकत्रित किया गया।",
		evidence_fingerprint = "${fullName} #${characterId} का फिंगरप्रिंट।",
		evidence_not_processed = "यह सबूत थैला अभी प्रसंस्कृत नहीं हुआ है।",
		additional_information = "अतिरिक्त जानकारी:",
		picked_up_at_location = "स्थान पर उठाया गया:",
		clothing_dna_trace = "DNA ट्रेस ${fullName} (#${cid}) के पुष्टि करती हैं",
		clothing_dna_trace_unprocessed = "कपड़ों पर प्रसंस्कृत नहीं हुए डीएनए ट्रेस",
		timestamp_of_pickup = "उठाने का समयबद्ध करें:",
		weapon_name = "अस्त्र नाम:",
		casings_picked_up = "उठाए गए केसिंगों की संख्या:",
		bullet_label = "गोला लेबल:",
		impacts_found = "क्षेत्र में पाए गए प्रभावों की संख्या:",
		right_foot = "दाहिना पैर",
		left_foot = "बायां पैर",
		right_hand = "दाहिना हाथ",
		left_hand = "बायां हाथ",
		right_knee = "दाहिनी टखनी",
		left_knee = "बायां टखनी",
		head = "सिर",
		neck = "गरदन",
		right_arm = "दाहिना बांह",
		left_arm = "बायां बांह",
		chest = "छाती",
		pelvis = "कूल्हा",
		right_shoulder = "दाहिना कंधा",
		left_shoulder = "बायां कंधा",
		right_wrist = "दाहिनी कलाई",
		left_wrist = "बायां कलाई",
		tounge = "जीभ",
		upper_lip = "ऊपरी होंठ",
		lower_lip = "निचले होंठ",
		right_thigh = "दायां जांघ",
		left_thigh = "बायां जांघ",
		lower_spine = "निचली कमर",
		center_spine = "मध्य कमर",
		upper_spine = "ऊपरी कमर",
		root_spine = "जड़ कमर",
		right_clavicle = "दायां क्लेविकल",
		left_clavicle = "बायां क्लेविकल",
		note_signed_by = "<b>द्वारा साइन इन किया गया:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>चिह्नित स्थान:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>यह स्मार्ट वॉच <b>${name} (#${cid})</b> का है। इसने <b>${stepsWalked}</b> कदम ट्रैक किए हैं।</i>",
		item_contains = "<b>शामिल है:</b> <i>${contents}</i>।",
		item_engraving = "<b>एनग्रेविंग:</b> <i>${message}</i>।",
		evidence_incomplete = "यह सबूत बैग अपूर्ण है।"
	}
}
