if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

-- AUTO LOCALES: 8 (do not change)

OP.Global.Locales.Languages["bn-BD"] = {
	-- configuration settings for language
	largeNumberSeparator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeparator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "সিস্টেম",
		warning = "সতর্কতা",
		invalid_input = "অবৈধ ইনপুট।",
		missing_input = "ইনপুট অনুপস্থিত।",
		player_not_found = "সার্ভার আইডি দিয়ে প্লেয়ার খুঁজে পাওয়া যায় নি। `${serverId}`।",
		something_went_wrong = "কিছু একটা ভুল হয়েছে। আবার চেষ্টা করুন।",
		yes = "হ্যাঁ",
		no = "না"
	},

	-- animations/*
	emotes = {
		get_in_trunk = "ট্রাঙ্কে প্রবেশ করতে ~INPUT_ENTER~ চাপুন।",
		put_boombox_in_trunk = "ট্রাঙ্কে বুমবক্স রাখতে ~INPUT_ENTER~ চাপুন।",
		put_player_in_trunk = "ট্রাঙ্কে প্লেয়ার রাখতে ~INPUT_ENTER~ চাপুন।",
		put_player_in_seat = "[${VehicleEnterKey}] সিটে বসাতে",
		trunk_interaction_display = "[${VehicleEnterKey}] বাইরে আরোহণ [${InteractionKey}] ট্রাঙ্ক খুলুন / বন্ধ করুন",
		trunk_open_close_display = "[${InteractionKey}] ট্রাঙ্ক খুলুন / বন্ধ করুন",
		boombox_already_in_trunk = "ট্রাঙ্কে ইতিমধ্যে একটি বুমবক্স রয়েছে।",
		the_trunk_is_occupied = "ট্রাঙ্ক ইতিমধ্যে দখলকৃত রয়েছেে।",
		unable_to_toggle_carry = "বহন করার আগে একটু অপেক্ষা করুন।",
		carry_disabled_animal = "প্রাণী NPC বহন করা যাবে না।",

		cancel_piggyback = "পিগিব্যাক বাতিল করতে ~INPUT_FRONTEND_RRIGHT~ চাপুন।",
		piggyback_hop_on = "[${InteractionKey}] হপ অন",
		stop_piggyback = "পিগিব্যাক বন্ধ করার জন্য ~INPUT_VEH_HEADLIGHT~ চাপুন।",

		lockpicking_cuffs = "হাতকড়া লকপিকিং করা হচ্ছে",
		lockpick_cuffs_too_fast = "আপনি অত্যন্ত দ্রুত সরে গেলেন।",
		success_lockpick_cuffs = "হাতকড়া সফলভাবে লকপিক করা হয়েছে।",
		failed_lockpick_cuffs = "হাতকড়া লকপিক করতে ব্যর্থ হয়েছে।",
		lockpick_lost = "আপনি আপনার লকপিক হারিয়ে ফেলেছেন।",

		not_cuffed = "আপনি হাতকড়া পরানো নয়।",
		unable_to_lockpick = "আপনি হাতকড়া লকপিক করতে অক্ষম।",

		lockpick_cuffs_logs_title = "হাতকড়া লকপিকিং করা হচ্ছে",
		lockpick_cuffs_logs_details = "${consoleName} একটি `${itemName}` ব্যবহার করে তাদের হাতকড়া সফলভাবে লকপিক করেছেন।",

		you_are_not_being_carried = "আপনি বর্তমানে বহনকৃত নন।",
		successfully_uncarried = "সাফল্যের সাথে বহন বন্ধ করা হয়েছে।",
		failed_uncarried = "বহন স্থগিত করতে ব্যর্থ হয়েছে।",
		uncarry_missing_permissions = "প্রয়োজনীয় অনুমতি ছাড়া বহন স্থগিত করার চেষ্টা করা হয়েছে।",

		uncarry_logs_title = "বহন স্থগিত করুন",
		uncarry_logs_details = "${consoleName} ${targetName} কে বহন করা থেমে দিয়েছেন।",

		failed_carry_npc = "NPC কে বহন করতে ব্যর্থ হয়েছে।",
		carry_npc_something_wrong = "NPC বহন করার সময় কিছু সমস্যা হয়েছে।",

		e_to_struggle = "বহনকৃত অবস্থা হতে বেরিয়ে আসার জন্য E চাপুন",
		cant_struggle_dead = "আহত অবস্থায় আপনি বহনকৃত অবস্থা হতে বেরিয়ে আসতে পারবেন না।",
		struggle_to_quick = "আপনি বহনকৃত অবস্থা থেকে বেরিয়ে আসার চেষ্টা করার পরে ক্লান্ত বোধ করছেন, একটু অপেক্ষা করুন এবং আবার চেষ্টা করুন।",
		struggle_logs_title = "বহনকৃত অবস্থা থেকে মুক্তি পেলেন",
		struggle_logs_details = "${consoleName}, ${targetName} এর বহনকৃত অবস্থা থেকে মুক্তি লাভ করেছেন।"
	},

	-- base/*
	admin = {
		feature_toggle_not_admin = "'${featureName}' টগল করার চেষ্টা করেছেন তবে তার সঠিক অনুমতি নেই।",
		feature_toggle_activated_logs_title = "রিমোট ভাবে বৈশিষ্ট্য টগল করা হয়েছে",
		feature_toggle_activated_logs_details_state = "${consoleName} খেলোয়াড়ি ${targetConsoleName} জনের জন্য `${featureName}` ${newState} টগল করেছে।",
		feature_toggle_activated_all_logs_title = "সবার জন্য দূরবর্তীভাবে বৈশিষ্ট্য ডিজিটাল টগল করা হয়েছে",
		feature_toggle_activated_all_logs_details = "${consoleName} সকলের জন্য `${featureName}` টগল করেছে।",
		feature_toggle_activated_self_logs_title = "বৈশিষ্ট্য টগল করা হয়েছে",
		feature_toggle_activated_self_on_logs_details = "${consoleName} নিজের জন্য `${featureName}` টগল করেছেন।",
		feature_toggle_activated_self_off_logs_details = "${consoleName} নিজের জন্য `${featureName}` বন্ধ করেছেন।",
		feature_toggle_success = "${consoleName}-এর জন্য `${featureName}` টগল করা হয়েছে।",
		feature_toggle_success_all = "${featureName}`-টি সবার জন্য টগল করা হয়েছে।",
		feature_toggle_failed = "সার্ভার আইডি ${serverId}-এর জন্য `${featureName}` টগল করা ব্যর্থ হয়েছে।",
		feature_toggle_success_on = "${consoleName}-এর জন্য `${featureName}` চালু করা হয়েছে।",
		feature_toggle_success_off = "${consoleName}-এর জন্য `${featureName}` বন্ধ করা হয়েছে।",

		noclip_toggle_activated_self_logs_title = "নক্লিপ টগল করা হয়েছে",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} একেবারে নক্লিপ চালু করেছেন `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`তে। (গাড়ীতে: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} নোক্লিপ অফ টগল করেছেন অবস্থানে `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`।",

		model_name_not_provided = "কোনও মডেল নাম দেওয়া হয় নি।",
		model_name_invalid = "মডেল নাম `${modelName}` অবৈধ।",
		failed_to_spawn_vehicle = "`/spawn_vehicle` কমান্ড ঠিকমত সম্পাদন করা যায় নি।",
		spawned_vehicle_for_player = "${consoleName}-কে ${modelName} সাফল্যের সাথে স্পম করা হয়েছে।",
		spawned_vehicle_for_everyone = "সবার জন্য সাফল্যের সাথে ${modelName} স্পম করা হয়েছে।",
		spawn_vehicle_for_player_not_staff = "প্লেয়ার কোন অন্য ব্যক্তিকে গাড়ি স্পউন করতে চেষ্টা করেছিলেন, কিন্তু তাদের এর জন্য প্রয়োজনীয় অনুমতি নেই।",
		spawn_vehicle_for_self_not_staff = "প্লেয়ার নিজের জন্য গাড়ি স্পউন করতে চেষ্টা করেছিলেন, কিন্তু তাদের এর জন্য প্রয়োজনীয় অনুমতি নেই।",
		replace_vehicle_no_permissions = "প্লেয়ার তাদের গাড়ি প্রতিস্থাপন করতে চেষ্টা করেছিলেন, কিন্তু তাদের এর জন্য প্রয়োজনীয় অনুমতি নেই।",
		create_vehicle_no_permissions = "প্লেয়ার একটি গাড়ি তৈরি করতে চেষ্টা করেছিলেন, কিন্তু তাদের এর জন্য প্রয়োজনীয় অনুমতি নেই।",
		spawned_vehicle_for_self_title = "বাহন উত্পন্ন করা হয়েছে",
		spawned_vehicle_for_self_details = "${consoleName} মডেল নাম `${modelName}` সহ একটি গাড়ি উত্পন্ন করেছে।",
		spawned_vehicle_for_player_title = "প্লেয়ারের জন্য বাহন উত্পন্ন করা হয়েছে",
		spawned_vehicle_for_player_details = "${consoleName} ${targetConsoleName} এর জন্য একটি গাড়ি উত্পন্ন করেছে যা মডেল নাম `${modelName}` এর হবে।",
		spawned_vehicle_for_everyone_title = "সকলের জন্য বাহন উত্পন্ন করা হয়েছে",
		spawned_vehicle_for_everyone_details = "${consoleName} সকল জনের জন্য মডেল নাম হবে `${modelName}` একটি গাড়ি উত্পন্ন করেছে।",

		vehicle_created = "গাড়ি সফলভাবে তৈরি করা হয়েছে।",
		failed_vehicle_creation = "গাড়ি তৈরি করতে ব্যর্থ হয়েছে।",

		invalid_amount = "অবৈধ পরিমাণ।",

		added_cash_title = "নগদ যোগ করা হয়েছে",
		added_cash_details = "${consoleName} এর হিসাবে $${amount} টাকা যোগ করা হয়েছে।",
		added_cash_to_player_title = "প্লেয়ারকে নগদ যোগ করা হয়েছে",
		added_cash_to_player_details = "${consoleName} এর হিসাবে ${targetConsoleName} কে $${amount} টাকা যোগ করা হয়েছে।",
		added_cash_to_everyone_title = "সবাইকে নগদ যোগ করা হয়েছে",
		added_cash_to_everyone_details = "${consoleName} এর হিসাবে সবাইকে $${amount} টাকা যোগ করা হয়েছে।",

		removed_cash_title = "ক্যাশ অপসারণ হয়েছে",
		removed_cash_details = "${consoleName} ক্যাশ $${amount} অপসারণ করেছেন।",
		removed_cash_from_player_title = "খেলোয়াড় থেকে ক্যাশ অপসারণ হয়েছে",
		removed_cash_from_player_details = "${consoleName} ${targetConsoleName} এর থেকে $${amount} ক্যাশ অপসারণ করেছেন।",
		removed_cash_from_everyone_title = "সবাইকে ক্যাশ অপসারণ হয়েছে",
		removed_cash_from_everyone_details = "${consoleName} সবার থেকে $${amount} ক্যাশ অপসারণ করেছেন।",

		added_bank_title = "ব্যাংক যোগ করা হয়েছে",
		added_bank_details = "${consoleName} ব্যাংকে $${amount} টাকা যোগ করেছেন।",
		added_bank_to_player_title = "প্লেয়ারকে ব্যাংক যোগ করা হয়েছে",
		added_bank_to_player_details = "${consoleName} এবং ${targetConsoleName} এর ব্যাংকে ${amount} টাকা যোগ করা হয়েছে।",
		added_bank_to_everyone_title = "সকলকে ব্যাংকে যোগ করা হয়েছে",
		added_bank_to_everyone_details = "${consoleName} সকলকে একসাথে ব্যাংকে ${amount} টাকা যোগ করেছে।",

		removed_bank_title = "ব্যাংক সম্পূর্ণ সরিয়ে দেওয়া হয়েছে",
		removed_bank_details = "${consoleName} থেকে ব্যাংক থেকে ${amount} টাকা সরিয়ে নেওয়া হয়েছে।",
		removed_bank_from_player_title = "প্লেয়ার এর ব্যাংক সম্পূর্ণ সরিয়ে দেওয়া হয়েছে",
		removed_bank_from_player_details = "${consoleName} এবং ${targetConsoleName} থেকে ব্যাংক থেকে ${amount} টাকা সরিয়ে নেওয়া হয়েছে।",
		removed_bank_from_everyone_title = "সবার ব্যাঙ্ক থেকে টাকা সরিয়ে নেওয়া হয়েছে",
		removed_bank_from_everyone_details = "${consoleName} সবার ব্যাঙ্ক থেকে $${amount} টাকা সরিয়ে নেয়েছে।",

		added_cash = "$${amount} নগদ টাকা যোগ করা হয়েছে।",
		added_cash_to_player = "${targetConsoleName} এর মধ্যে $${amount} নগদ টাকা যোগ করা হয়েছে।",
		added_cash_to_everyone = "সবার মধ্যে $${amount} নগদ টাকা যোগ করা হয়েছে।",

		removed_cash = "$${amount} টাকা সরানো হয়েছে।",
		removed_cash_from_player = "${targetConsoleName} এর মধ্যে $${amount} টাকা সরানো হয়েছে।",
		removed_cash_from_everyone = "সবার মধ্যে $${amount} টাকা সরানো হয়েছে।",

		added_bank = "ব্যাংকে টাকা যোগ হয়েছে $${amount}।",
		added_bank_to_player = "${targetConsoleName}-এর ব্যাংকে $${amount} টাকা যোগ হয়েছে।",
		added_bank_to_everyone = "সবার ব্যাংকে $${amount} টাকা যোগ হয়েছে।",

		removed_bank = "$${amount} টাকা সরানো হয়েছে।",
		removed_bank_from_player = "${targetConsoleName}-এর ব্যাংক থেকে $${amount} টাকা সরানো হয়েছে।",
		removed_bank_from_everyone = "সবার ব্যাংক থেকে $${amount} টাকা সরানো হয়েছে।",

		money_event_not_admin = "মানি ইভেন্ট `${moneyEvent}` চালু করতে চেষ্টা করেছেন কিন্তু এটি অ্যাডমিন মোডে নেই।",

		spawned_item_title = "আইটেম স্পন করা হয়েছে",
		spawned_item_details = "${consoleName} নিজের জন্য ${amount}x `${itemName}` স্পন করেছেন।",
		spawned_item_for_player_title = "প্লেয়ারের জন্য জন্মদাতা আইটেম",
		spawned_item_for_player_details = "${consoleName} একজন ${targetConsoleName}-এর জন্য ${itemName} আইটেম উত্পন্ন করেছেন। মোট ${amount}টি।",
		spawned_item_for_everyone_title = "সবার জন্য জন্মদাতা আইটেম",
		spawned_item_for_everyone_details = "${consoleName} সবার জন্য ${itemName} আইটেম উত্পন্ন করেছেন। মোট ${amount}টি।",

		report_title = "রিপোর্ট-${reportId} ${reporterName}",
		report_logs_title = "রিপোর্ট",
		report_logs_details = "${consoleName} নিম্নলিখিত বার্তার সাথে রিপোর্ট ${reportId} তৈরি করেছেন: `${reportMessage}`",

		announcement_staff_title = "কর্মকর্তাগণের ঘোষণা",
		announcement_server_title = "সার্ভার ঘোষণা",

		announcement_logs_title = "সার্ভার ওয়াইড ঘোষণা",
		announcement_logs_details = "${consoleName} পুরো সার্ভারে নিম্নলিখিত বার্তা প্রচার করছেন: `${announcementMessage}`",
		announcement_not_admin = "কর্মকর্তা সংলগ্ন ঘোষণা পোস্ট করতে চেষ্টা করেছেন।",

		announcement_maintenance = "${minutes} মিনিটের মধ্যে সার্ভারটি রক্ষণাবেক্ষণের কারণে বন্ধ হবে।",
		announcement_update = "${minutes} মিনিটের মধ্যে সার্ভারটি আপডেটের জন্য বন্ধ হবে।",
		announcement_restart = "${minutes} মিনিটের মধ্যে সার্ভারটি পুনরারম্ভ হবে।",

		posted_announcement = "ঘোষণা জারি করা হয়েছে।",
		posted_announcement_locale = "লোকেল থেকে ঘোষণা জারি করা হয়েছে।",
		failed_to_post_announcement = "ঘোষণা জারি করা যায়নি, কারণ কোনও বার্তা যুক্ত করা হয়নি।",
		failed_to_post_announcement_locale = "ঘোষণা জারি করা যায়নি, কারণ যোগ করা লোকেল সমর্থিত নয়।",

		staff_title = "স্টাফ ${staffName}",
		staff_message_logs_title = "স্টাফ বার্তা",
		staff_message_logs_details = "${consoleName} কর্মকর্তা চ্যাটে নিম্নলিখিত বার্তা প্রেরণ করেছেন: `${staffMessage}`",
		staff_message_illegal = "খেলোয়াড় একটি বার্তা কর্মকর্তা চ্যাটে প্রেরণ করার চেষ্টা করেছিলেন, কিন্তু তিনি কর্মকর্তা নন।",

		staff_pm_title = "STAFF PM ${transmissionTitle}",
		staff_pm_logs_title = "কর্মকর্তা প্রাইভেট মেসেজ",
		staff_pm_logs_details = "${senderConsoleName} ${recipientConsoleName}-এর দিকে নিম্নলিখিত বার্তা প্রেরণ করেছেন: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "আপনি লগ ইন নন।",
		staff_pm_not_user_not_found = "সার্ভার আইডি ${serverId}-সহ ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		staff_pm_not_recipient_not_staff = "আপনি যে খেলোয়াড়কে মেসেজ পাঠাতে চাচ্ছেন, তিনি একজন স্টাফ মেম্বার না।",
		staff_pm_unable_to_message_self = "আপনি নিজেকে মেসেজ পাঠাতে পারবেন না।",
		staff_pm_warning = "স্টাফ পি এম সতর্কতা",
		staff_pm_first_time = "আপনি দেখছেন আপনি এখনও স্টাফ পি এম ব্যবহার করেননি। কোন স্টাফ পি এম এর জবাব দিতে, আপনাকে /staffpm কমান্ডটি ব্যবহার করতে হবে।",

		external_staff_message = "বাইরের স্টাফ মেসেজ",
		external_staff_message_from_player = "${playerName} এর মাধ্যমে বাইরের স্টাফ মেসেজ",
		external_staff_message_content = "${staffMessage} (আপনি এই মেসেজের উত্তর দিতে পারবেন না।)",

		unable_to_staff_message_yourself = "আপনি নিজেকে বার্তা পাঠাতে পারবেন না।",
		message_sent = "বার্তা প্রেরিত হয়েছে।",
		player_not_found = "প্লেয়ার খুঁজে পাওয়া যায়নি।",
		missing_valid_target_source_parameter = "একটি বৈধ 'টার্গেট সোর্স' পরামিতি অনুপস্থিত।",
		missing_valid_message_parameter = "একটি বৈধ 'বার্তা' পরামিতি অনুপস্থিত।",

		invalid_coordinates = "সঠিক x, y, z বা w সমন্বয় না দেখা গেছে।",
		player_not_loaded_character = "প্লেয়ার চরিত্র লোড করা নেই।",
		teleport_successful = "প্লেয়ারকে সফলভাবে টেলিপোর্ট করা হয়েছে।",

		player_revived_success = "প্লেয়ারকে সফলভাবে পুনরুদ্ধার করা হয়েছে।",

		missing_valid_license_identifier_parameter = "'লাইসেন্স পরিচয়কারী' পরামিতি ভুল বা অনুপস্থিত।",

		illegal_entity_wipe = "প্লেয়ার প্রতিষ্ঠানগুলি মুছে ফেলা চেষ্টা করেছে, কিন্তু অনুমতি নেই।",
		wiped_entities = "প্রতিষ্ঠানগুলি মুছে ফেলা হয়েছে",
		wipe_entities_logs_title = "প্রতিষ্ঠানগুলি মুছে ফেলা হয়েছে",
		wipe_entities_logs_details = "${consoleName} একটি ইতিহাস মুছে ফেলছেন যা নিম্নলিখিত কনফিগারেশনসহ ছিল: দূরত্ব = `${distance}`, লোকাল প্রতিষ্ঠানগুলি উপেক্ষা করুন = `${ignoreLocalEntities}`, মডেল নাম = `${modelName}`",

		wipe_awaiting_confirmation = "মোছাটি এখন নিশ্চিত করার জন্য অপেক্ষমাণ আছে। এটি নিশ্চিত করতে `yes` বা `no` টাইপ করুন (60 সেকেন্ড পর্যন্ত মেয়াদ শেষ হবে)।\n\nনির্বাচিত পরামিতি হল:\n- দূরত্ব: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- মডেল নাম: `${modelName}`",
		wipe_awaiting_big_title = "দূরত্ব মোছার সতর্কতা",
		wipe_awaiting_confirmation_big = "**হেই, আপনি একটি খুব বড় এলাকা মোছা হচ্ছে, অনুগ্রহ করে নিশ্চিত হওয়া যাক যে এটি আপনার উদ্দেশে কি নির্বাচিত হয়েছে!**\n`yes` বা `no` টাইপ করে এটি নিশ্চিত করুন বা বাতিল করুন (60 সেকেন্ড পর্যন্ত মেয়াদ শেষ হবে)।\n\n- দূরত্ব: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- মডেল নাম: `${modelName}`",
		cancelled_wipe = "ওয়াইপ বাতিল করা হয়েছে।",

		there_is_people_nearby = "নকলিপ করলে আপনার পাশে খেলোয়াড়গণ আছে!",

		cant_while_spectating = "আপনি বুঝতে পারছেন না, স্পেক্টেটিং এ থাকার সময় এটি সম্ভব নয়।",

		you_have_been_kicked = "আপনাকে কিক করেছে ${kicker} এর কারণ `${reason}`।",
		you_have_been_kicked_no_reason = "আপনাকে ${kicker} এর কাছ থেকে কোন নির্দিষ্ট কারণ ছাড়াও কিক করা হয়েছে।",

		logs_player_kicked_title = "খেলোয়াড় কিক করা হয়েছে",
		logs_player_kicked_details = "${consoleName} সার্ভার থেকে ${kicker} দ্বারা কারণ `${reason}` দিয়ে খেলোয়াড়টি কিক করা হয়েছে।",
		logs_player_kicked_no_reason_details = "${consoleName} সার্ভার থেকে ${kicker} দ্বারা কোন নির্দিষ্ট কারণ ছাড়াও খেলোয়াড়টি কিক করা হয়েছে।",

		you_have_been_banned = "${banner}-এর কারণে `${reason}` দেওয়ার মাধ্যমে আপনি নিষ্ক্রিয় হয়েছেন।",
		you_have_been_banned_no_reason = "${banner} এর অবস্থান ছাড়াই আপনি নিষ্ক্রিয় হয়েছেন।",

		banner_name_generic = "একজন স্টাফ মেম্বার",

		ban_alert_title = "সার্ভার থেকে নিষ্কাসিত",
		ban_alert_description_banner = "${banner} আপনাকে স্বয়ংক্রিয়ভাবে `${reason}` কারণে অবরোধ করেছেন।",
		ban_alert_description = "সিস্টেম দ্বারা আপনার জন্য কারণ হিসাবে `${reason}` দিয়ে আপনাকে নিষ্ক্রিয়তাৎ করা হয়েছে।",

		logs_player_banned_title = "খেলোয়াড় নিষ্ক্রিয়তাৎ করা হয়েছে",
		logs_player_banned_system_title = "সিস্টেম দ্বারা খেলোয়াড় নিষ্ক্রিয়তাৎ করা হয়েছে",
		logs_player_banned_details = "${consoleName} একটি খেলোয়াড় যাকে ${banner} কারণ হিসাবে `${reason}` দিয়ে সার্ভার থেকে নিষ্ক্রিয়তাৎ করেছেন।",
		logs_player_banned_no_reason_details = "${consoleName} এখন সার্ভার থেকে ব্যান করা হয়েছে ${banner} এর দ্বারা নির্দিষ্ট কোনো কারণ ছাড়াই।",

		player_kicked = "${consoleName} এখন সার্ভার থেকে ছিটিয়ে ফেলা হয়েছে।",
		player_banned = "${consoleName} এখন সার্ভার থেকে ব্যান করা হয়েছে।",

		ban_double_kill = "ডাবল কিল!",
		ban_triple_kill = "😧 ট্রিপল কিল!!!",
		ban_quadrouple_kill = "😨 কুয়াডরুপল কিল!!!!!!",
		ban_killing_spree = "🤯 কিলিং স্প্রি (${count})!!!!!!",

		kick_player_not_staff = "প্রয়োজনীয় অনুমতি বিনা একজন খেলোয়াড়কে ছিটিয়ে ফেলার চেষ্টা করেছেন।",
		ban_player_not_staff = "যথাযথ অনুমতিবিহীন হতে কেউ একটি খেলোয়ারের ব্যান চেষ্টা করেছে।",

		hide_staff_not_staff = "যথাযথ অনুমতিবিহীন হতে কেউ তাদের কর্মী পরিচিতি গোপন করার চেষ্টা করেছে।",
		toggle_staff_not_staff = "যথাযথ অনুমতিবিহীন হতে কেউ কর্মী উপস্থিতি টগল করার চেষ্টা করেছে।",

		logs_hide_staff_title = "কর্মী গোপন করা হল",
		logs_hide_staff_hidden_details = "${consoleName} তাদের কর্মী পরিচিতি গোপন করেছেন।",
		logs_hide_staff_shown_details = "${consoleName} তাদের কর্মী পরিচিতি দেখান।",

		logs_toggle_staff_title = "কর্মী উপস্থিতি টগল করা হল",
		logs_toggle_staff_off_details = "${consoleName} স্টাফ অবস্থান বন্ধ করেছেন।",
		logs_toggle_staff_on_details = "${consoleName} স্টাফ অবস্থান চালু করেছেন।",

		staff_hidden = "আপনার স্টাফ স্ট্যাটাস এখন লুকিয়ে রয়েছে।",
		staff_shown = "আপনার স্টাফ স্ট্যাটাস এখন দেখানো হয়।",
		staff_toggled_on = "আপনার স্টাফ সমস্তকম চালু করা হয়েছে।",
		staff_toggled_off = "আপনার স্টাফ সমস্তকম বন্ধ করা হয়েছে।",

		staff_feature_unavailable = "এই ফিচারটি আপনার স্টাফ অবস্থান বন্ধ করা থাকলে উপলব্ধ নয়।",

		failed_toggle_tracker = "প্লেয়ার ট্র্যাকার চালু করতে ব্যর্থ হয়েছে।",
		unable_track_player = "প্লেয়ার ট্র্যাক করতে অক্ষম।",
		success_enable_tracker = "${playerName} এর জন্য প্লেয়ার ট্র্যাকার সফলভাবে চালু করা হয়েছে।",
		success_disable_tracker = "প্লেয়ার ট্র্যাকার সফলভাবে বন্ধ করা হয়েছে।",
		not_tracking_player = "আপনি কোন প্লেয়ার ট্র্যাক করছেন না।",
		already_tracking_player = "আপনি ইতিমধ্যেই একজন প্লেয়ার ট্র্যাক করছেন।",

		toggle_player_track_no_permissions = "মান appropriate অনুমতিসহ প্লেয়ার ট্র্যাক টগল করার চেষ্টা করা হয়েছে।",
		set_job_no_permissions = "উচিত অনুমতিবিহীনভাবে একটি কাজ সেট করার চেষ্টা করা হয়েছে।",
		toggle_reflection_no_permissions = "সঠিক অনুমতি ছাড়াই ক্ষতি প্রতিবিধি টগল করার চেষ্টা করা হয়েছে।",

		success_enable_reflection = "সফলভাবে প্রতিফলন চালু করা হয়েছে।",
		success_disable_reflection = "সফলভাবে প্রতিফলন বন্ধ করা হয়েছে।",
		failed_toggle_reflection = "প্রতিবিধি টগল করা ব্যর্থ হয়েছে।",

		reflection_logs_title = "প্রতিফলন পাল্টানো হয়েছে",
		reflection_logs_enabled_details = "${consoleName} প্রতিফলন চালু করেছেন।",
		reflection_logs_disabled_details = "${consoleName} প্রতিফলন বন্ধ করেছেন।",

		headache_logs_title = "হেডাচ ট্রিগার হয়েছে",
		headache_logs_details = "${consoleName} একজনের জন্য হেডাচ ট্রিগার করেছেন: ${targetConsoleName}।",
		trigger_headache_no_permissions = "প্রয়োজনীয় অনুমতি ছাড়াই হেডাচ ট্রিগার করা হয়েছে।",

		success_trigger_headache = "${playerName}-এর জন্য সফলভাবে হেডাচ ট্রিগার হয়েছে।",
		failed_trigger_headache = "হেডাচ ট্রিগার করা ব্যর্থ হয়েছে।",

		protective_mode_not_staff = "সঠিক অনুমতি না থাকার কারণে সার্ভার প্রটেক্টিভ মোড টগল করা হয়নি।",
		protective_mode_toggled_on = "সার্ভার প্রটেক্টিভ মোড এখন সক্রিয় হয়েছে। সার্ভারে সংযোগ করতে প্লে টাইমের প্রয়োজনীয় পরিমাণ হয় `${playtime}`।",
		protective_mode_toggled_off = "সার্ভার প্রটেক্টিভ মোড এখন নিষ্ক্রিয় হয়েছে।",
		protective_mode_already_on = "সার্ভার প্রটেক্টিভ মোড ইতিমধ্যে প্রয়োজনীয় প্লে টাইম `${playtime}` দিয়ে সক্রিয় হয়েছে।",
		protective_mode_already_off = "সার্ভার প্রটেক্টিভ মোড ইতিমধ্যে অকার্যকর হয়েছে।",
		logs_protective_mode = "সার্ভারের রক্ষামূলক মোড",
		logs_protective_mode_on = "${consoleName} এ প্লে টাইম সহ সার্ভারের রক্ষামূলক মোডটি টগল করেছেন সেটি: `${playtime}`।",
		logs_protective_mode_off = "${consoleName} এ সার্ভারের রক্ষামূলক মোডটি বন্ধ করেছেন।",

		spawn_item_not_staff = "উপযুক্ত অনুমতি ছাড়া আইটেম স্পল করা চেষ্টা করা হয়েছে",
		no_item_name = "কোন আইটেমের নাম উল্লেখ করা হয়নি।",
		invalid_item_name = "${itemName} একটি বৈধ আইটেম নাম নয়।",
		item_spawned = "${consoleName} জন্য ${amount} টি `${itemName}` আইটেম স্পল হয়েছে।",
		item_spawned_for_everyone = "সবার জন্য ${amount}টি `${itemName}` স্পল হয়েছে।",

		set_warning_message_not_staff = "সঠিক অনুমতি না থাকলে সার্ভারের সতর্কতা বার্তা নির্ধারণ করার চেষ্টা করা হয়েছে।",
		warning_message_set_to = "সতর্কতা বার্তা `${warningMessage}` হয়েছে।",
		warning_message_removed = "সতর্কতা বার্তা সরানো হয়েছে।",
		warning_message_error = "সতর্কতা বার্তা নির্ধারণ করার চেষ্টায় একটি ত্রুটি হয়েছে।",
		warning_message_identical = "আপনি পুনরায় সতর্কতা বার্তা যা যেটা সেট করা হয়েছে সেট করতে পারবেন না।",
		warning_message_set_to_title = "সতর্কতা বার্তা সেট করা হয়েছে",
		warning_message_set_to_details = "${consoleName} এ সতর্কতা বার্তা সেট করেছেন `${warningMessage}`।",
		warning_message_removed_title = "সতর্কতা বার্তা সরানো হয়েছে",
		warning_message_removed_details = "${consoleName} সতর্কতা বার্তা সরে নেয়া হয়েছে।",

		indestructibility_on = "অতলতা চালু করা হয়েছে।",
		indestructibility_off = "অতলতা বন্ধ করা হয়েছে।",
		speed_boost_on = "গতি বৃদ্ধি চালু করা হয়েছে।",
		speed_boost_off = "গতি বৃদ্ধি বন্ধ করা হয়েছে।",
		nitro_boost_on = "নাইট্রো বোস্ট' চালু করা হয়েছে।",
		nitro_boost_off = "নাইট্রো বোস্ট' বন্ধ করা হয়েছে।",
		no_nearby_vehicles_on = "আশে পাশে যানবাহন না থাকার 'চালু করা হয়েছে।",
		no_nearby_vehicles_off = "আশে পাশে যানবাহন না থাকার 'বন্ধ করা হয়েছে।",
		speed_up_progress_bar_on = "'প্রগ্রেস বারটি গতিবৃদ্ধি করুন' চালু করা হয়েছে।",
		speed_up_progress_bar_off = "'প্রগ্রেস বারটি গতিবৃদ্ধি করুন' বন্ধ করা হয়েছে।",
		invisibility_on = "'অদৃশ্যতা' চালু করা হয়েছে।",
		invisibility_off = "'অদৃশ্যতা' বন্ধ করা হয়েছে।",
		wallhack_on = "ওয়ালহ্যাক চালু করা হয়েছে।",
		wallhack_off = "ওয়ালহ্যাক বন্ধ করা হয়েছে।",
		aimbot_on = "টগল করেছেন 'এইমবট।'",
		aimbot_off = "টগল করেছেন 'এইমবট অফ।'",
		player_bones_on = "টগল করেছেন 'প্লেয়ার বোনস অন।'",
		player_bones_off = "টগল করেছেন 'প্লেয়ার বোনস অফ।'",
		vehicle_smoke_on = "টগল করেছেন 'গাড়ি ধোঁয়া অন।'",
		vehicle_smoke_off = "টগল করেছেন 'গাড়ি ধুয়ে অফ।'",

		peeking_on = "পিকিং মোড চালু করে দিয়েছেন টগল।'",
		peeking_off = "পিকিং মোড বন্ধ করে দিয়েছেন টগল।'",

		watching_on = "উপস্থিতি মোড চালু করে দিয়েছেন টগল।'",
		watching_off = "উপস্থিতি মোড বন্ধ করে দিয়েছেন টগল।'",
		watching_label = "উপস্থিতি দেখছেন: ${nearby}",

		evidence_view_on = "তথ্য দেখার মোড চালু করে দিয়েছেন টগল।'",
		evidence_view_off = "সাক্ষ্য দেখার নির্বাচন বন্ধ হয়েছে।",
		evidence_view_title = "সাক্ষ্য দেখার নির্বাচন বন্ধ হয়েছে",
		evidence_view_details_on = "${consoleName} উন্নয়নযোগ্য সাক্ষ্য দেখায় চালু করেছেন।",
		evidence_view_details_off = "${consoleName} উন্নয়নযোগ্য সাক্ষ্য দেখায় বন্ধ করেছেন।",

		report_muted_no_reason = "আপনি বিবেচনা কমান্ড থেকে কারণ না দিয়ে ইংলিশ ভাষায় মিউট হয়েছেন।",
		report_muted = "আপনি বিবেচনা কমান্ড থেকে কারণ `${reason}` দিয়ে মিউট হয়েছেন।",

		already_sending_report = "আপনি ইতিমধ্যে একটি রিপোর্ট পাঠাচ্ছেন। অনুগ্রহপূর্বক অপেক্ষা করুন।",
		unable_to_send_identical_report = "পরের রিপোর্ট পাঠানোর আগে আপনি সমান রিপোর্ট দুটি পাঠাতে পারবেন না।",

		already_sending_staff_message = "আপনি ইতিমধ্যে একটি স্টাফ মেসেজ পাঠাচ্ছেন। অনুগ্রহ করে অপেক্ষা করুন।",
		unable_to_send_identical_staff_message = "পরের স্টাফ মেসেজ পাঠানোর আগে আপনি ৩০ সেকেন্ডের মধ্যে সমান মেসেজ দুটি পাঠাতে পারবেন না।",

		tp_coords_invalid_coordinates = "সঠিক কোয়ার্ড নয়।",
		tp_coords_teleported_to_coordinates = "কোয়ার্ড X: ${x} , Y: ${y}, Z: ${z} এ টেলিপোর্ট করা হয়েছে।",

		teleported_to_waypoint = "${locationLabel} এর উপর টেলিপোর্ট হয়েছে।",
		no_waypoint_set = "আপনাকে একটি উইপয়েন্ট সেট করতে হবে।",

		teleported_to_coordinates_logs_title = "সমন্বিত হয়েছে সংখ্যাংকে টেলিপোর্ট",
		teleported_to_coordinates_logs_details = "${consoleName} সংখ্যাংকে টেলিপোর্ট করেছে এক্স: ${x}, ওয়াই: ${y}, জেড: ${z}।",
		teleported_to_waypoint_logs_title = "উইপয়েন্টে টেলিপোর্ট করা হয়েছে",
		teleported_to_waypoint_logs_details = "${consoleName} একটি উইপয়েন্টে টেলিপোর্ট করেছে ${locationLabel}।",

		teleport_to_coordinates_not_staff = "খেলোয়াড় স্টাফ নয় হওয়া সংখ্যাংকে টেলিপোর্ট করার চেষ্টা করেছে।",
		teleport_to_waypoint_not_staff = "খেলোয়ার একটি waypoint এ টেলিপোর্ট করার চেষ্টা করেছিলেন কিন্তু তারা স্টাফ নন।",

		failed_isolate = "খেলোয়ার অনিবার্য করতে ব্যর্থ হয়েছে।",
		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		isolate_success_on = "${consoleName} সফলভাবে আলাদা হয়েছে।",
		isolate_success_off = "${consoleName} সফলভাবে আলাদা করতে বন্ধ করা হয়েছে।",

		isolate_missing_permissions = "খেলোয়া অন্য খেলোয়ারকে উচিত অনুমতিসহ আলাদা করার চেষ্টা করেছিলেন না।",

		population_density_set_to = "জনসংখ্যার ঘনত্ব বাইরের হারে সেট করা হয়েছে ${multiplierLabel}% এ।",
		population_density_set_off = "জনসংখ্যা ঘনত্ব মাল্টিপ্লায়ার ওভাররাইড বন্ধ হয়েছে।",
		population_density_is_not_on = "জনসংখ্যা ঘনত্ব মাল্টিপ্লায়ার ওভাররাইড চালু নেই।",
		population_density_already_set_to = "জনসংখ্যা ঘনত্ব মাল্টিপ্লায়ার ওভাররাইড আগেই ${multiplierLabel}% হিসেবে সেট করা হয়েছে।",

		population_density_not_super_admin = "প্লেয়ার উচ্চ অ্যাডমিন অনুমতি ছাড়াই জনসংখ্যা ঘনত্ব সেট করার চেষ্টা করেছেন।",

		enabled_features_list = "সক্ষম বৈশিষ্ট্যসমূহ:",
		aimbot_feature = "এইমবট",
		disabled_collisions_feature = "কলিশন অক্ষম করা হয়েছে",
		disabled_recoil_feature = "রেকোইল নিষ্ক্রিয় করা হয়েছে",
		evidence_view_feature = "প্রমাণদাতা দেখুন",
		hit_indicator_feature = "আঘাত নির্দেশিকা",
		indestructibility_feature = "অবঞ্চলতা",
		infinite_ammo_feature = "অসীম গুলি",
		invisibility_feature = "অদৃশ্যতা",
		muted_sirens_feature = "মিউটেড সাইরেনস",
		nitro_boost_feature = "নাইট্রো বুস্ট",
		no_nearby_vehicles_feature = "কোন নিকটবর্তী যানবাহন নেই",
		peeking_feature = "পাশে হতে দেখা",
		roll_control_feature = "স্থিরভাবে থাকুন নিয়ন্ত্রণ",
		speed_boost_feature = "গতি বৃদ্ধি দিন",
		speed_up_progress_bar_feature = "গতি আপ প্রগ্রেস বার",
		sticky_feet_feature = "স্টিকি পা",
		wallhack_feature = "ওয়ালহ্যাক",
		watching_feature = "দেখছে",
		fortnite_feature = "ফর্টনাইট",
		reflection_feature = "ক্ষতি প্রতিপ্রবণতা",
		stable_cam_feature = "স্থিরতা সংযন্ত্র ফিচার",

		you_are_not_in_a_vehicle = "আপনি গাড়ির ভিতরে নেই।",
		repaired_vehicle = "পরিবহন মেরামত হয়েছে।",

		success_nos_refill = "সফলভাবে এনওএস পূর্ণ করা হয়েছে।",
		failed_nos_refill = "এনওএস পূর্ণ করা ব্যর্থ হয়েছে।",

		refill_nitro_missing_permissions = "খেলোয়াড় যখন উচিত অনুমতি না পেয়ে এনওএস পূর্ণ করার চেষ্টা করেছে।",

		register_invalid_character_id = "অবৈধ ক্যারেক্টার আইডি।",
		register_invalid_slot = "অবৈধ ইনভেন্টরি স্লট।",
		register_weapon_success = "${cid} আইডি সংখ্যার ক্যারেক্টারের জন্য স্লট ${slotId} এর অস্ত্র সফলভাবে নিবন্ধিত হয়েছে।",
		register_weapon_failed = "অস্ত্র নিবন্ধন ব্যর্থ হয়েছে।",

		register_weapon_missing_permissions = "প্রযোক্তা রক্ষণহীন অবস্থানে অস্ত্র নিবন্ধন করার চেষ্টা করেছে।",

		vehicle_smoke_invalid_class = "এই গাড়ির ক্লাস জন্য গাড়ি ধোয়ার ধোঁকা সক্ষম করা যাবে না।",

		repair_vehicle_not_super_admin = "অনুমতি ছাড়া গাড়ি প্রতিরক্ষা করতে চেষ্টা করেছেন।",

		repaired_vehicle_logs_title = "মেরামত করা গাড়ি",
		repaired_vehicle_logs_details = "${consoleName} তাদের গাড়ি মেরে ফেললেন।",

		unable_to_enter_vehicle_while_dead = "আপনি মৃত্যুবরণ হওয়ায় গাড়িতে প্রবেশ করতে পারবেন না।",
		the_closest_vehicle_had_no_free_seats = "সর্বনিকটতম গাড়িতে কোনও ফ্রি আসন নেই।",
		there_are_no_nearby_vehicles = "কোনও নিকটবর্তী গাড়ি নেই।",
		vehicle_not_found_network = "নেটওয়ার্ক আইডি সহ গাড়ী পাওয়া যায় নি।",
		entered_vehicle = "${vehicleName} এর নিকটবর্তী একটি গাড়িতে প্রবেশ চেষ্টা করা হয়েছে।",

		set_vehicle_modifications_logs_title = "গাড়ির মর্যাদাবহরণ সেট করুন",
		set_vehicle_modifications_logs_details = "${consoleName} গাড়ির মর্যাদাবহরণ প্রযোজ্য করেছেন যা লেখা হয়েছে  `৳{vehiclePlate}`। সেট করা হয়েছে: modType-${modType}, modIndex-${modIndex}, customTires-${customTires}।",

		set_vehicle_livery_logs_title = "গাড়ির লিভারি সেট করুন",
		set_vehicle_livery_logs_details = "${consoleName} গাড়ি প্লেট `${vehiclePlate}` এর লিভারি `${liveryIndex}` এ সেট করেছেন।",

		set_livery_missing_permissions = "খেলোয়াড় উচিত অনুমতিসহ গাড়ির লিভারি সেট করার চেষ্টা করেছে।",
		set_modifications_missing_permissions = "খেলোয়াড় উচিত অনুমতিসহ গাড়ির পরিবর্তনগুলি সেট করার চেষ্টা করেছে।",

		set_vehicle_modification = "মড টাইপ `${modType}` এর জন্য গাড়ির মডিফিকেশনটি সেট করেছেন মোড ইনডেক্স `${modIndex}`। (কাস্টম টায়ারঃ ${customTires})",
		mod_index_invalid_for_type = "মড ইন্ডেক্স `${modIndex}` মড টাইপ `${modType}` এর জন্য অবৈধ।",
		mod_type_invalid = "মড টাইপ `${modType}` অবৈধ।",
		no_mod_type_set = "কোন মড টাইপ সেট নেই।",

		set_vehicle_livery = "গাড়ির লিভারি সেট করুন `${liveryIndex}`।",
		no_livery_index_set = "কোন লিভারি ইন্ডেক্স সেট করা হয় নি (সর্বনিম্ন: 1)।",
		you_are_not_the_driver = "আপনি গাড়ির ড্রাইভার নয়।",
		vehicle_is_not_a_plane_or_heli = "গাড়ি একটি প্লেন বা হেলিকপ্টার নয়।",
		livery_index_invalid = "অবৈধ লিভারি ইন্ডেক্স (সর্বাধিক: ${maxLiveries})।",
		vehicle_has_no_liveries = "গাড়িতে কোন লিভারি নেই।",

		invalid_plate_number = "অবৈধ প্লেট নম্বর।",
		set_fake_plate_number = "গাড়ির জন্য প্লেট নম্বর `${plateNumber}` সেট করুন।",

		invalid_dirt_level = "অবৈধ ময়লা লেভেল।",
		set_dirt_level = "গাড়ির ময়লা লেভেল `${dirtLevel}` এ সেট করা হয়েছে।",

		set_dirt_level_not_super_admin = "খেলোয়াড় উচ্চাধিকার বিনা অনুমতিতে গাড়ির ময়লা লেভেল সেট করার চেষ্টা করেছেন।",

		set_fake_plate_not_super_admin = "খেলোয়াড় উচ্চাধিকার বিনা অনুমতিতে গাড়ির মিথ্যা প্লেট সেট করার চেষ্টা করেছেন।",

		already_fake_disconnecting = "আপনি ইতিমধ্যে সাঁতারে বিচ্ছিন্ন হওয়ার চেষ্টা করছেন। অনুগ্রহ করে অপেক্ষা করুন।",
		started_fake_disconnect = "সাঁতার বিচ্ছিন্ন হওয়া শুরু হয়েছে। বন্ধ করতে আবার কমান্ডটি পুনরাবৃত্তি করুন।",
		stopped_fake_disconnect = "সাঁতার বিচ্ছিন্ন হওয়া বন্ধ হয়েছে।",

		fake_disconnect_not_super_admin = "ব্যবহারকারী উচ্চাধিকারী বিনা প্রযোজ্য অনুমতি ছাড়াই সাঁতার বিচ্ছিন্ন করার চেষ্টা করেছেন।",

		disabled_idle_cam = "আইডল ক্যাম নিষ্ক্রিয় করা হয়েছে।",
		enabled_idle_cam = "আইডল ক্যাম পুনরায় সক্রিয় করা হয়েছে।",

		created_vehicle_smoke_for_player_logs_title = "গাড়ির ধোঁকার তৈরি করা হয়েছে",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} গাড়ির ধোঁকার তৈরি করেছেন।",

		player_info_not_staff = "বিনামূল্যে অনুমতি না থাকার কারনে খেলোয়ারের চরিত্রের তথ্য পেতে চেষ্টা করা হয়েছে।",
		player_info_title = "${consoleName}",
		player_info = "${fullName} #${characterId}\n${playtime} খেলা হয়েছে।\n${jobName}, ${departmentName}, ${positionName}\n\n${backstory}",

		inventory_name_missing = "ইনভেন্টরি নাম প্যারামিটার অনুপস্থিত।",
		force_inventory_missing_perms = "বিনামূল্যে অনুমতি না থাকার কারনে একটি ইনভেন্টরি ভালোবাসার দ্বারা খোলা হচ্ছে না।",

		auto_driving_engaged = "স্বয়ংক্রিয় চালনা চালু করা হয়েছে (ষ্টাইল: ${style})।",
		auto_driving_updated = "অটো ড্রাইভিং গতি/অবস্থান আপডেট করা হয়েছে।",
		auto_driving_disengaged = "অটো ড্রাইভিং বন্ধ হয়েছে।",
		not_auto_driving = "আপনি অটো ড্রাইভিং করছেন না।",
		invalid_auto_drive_speed = "অবৈধ বা অনুমতি নেই অটো ড্রাইভিং গতি নির্দেশ করতে।",
		reset_auto_drive_speed = "ডিফল্ট অটো ড্রাইভিং গতি পুনরায় সেট করা হয়েছে।",
		set_auto_drive_speed = "আপনার অটো ড্রাইভিং গতি ${speed} মাইল/ঘন্টা হিসেবে সেট করা হয়েছে।",

		disable_collisions_on = "আপনার ধাতুসমুহ এখন অকার্যকর হয়েছে।",
		disable_collisions_off = "আপনার ধাতুসমুহ এখন সক্রিয় হয়েছে।",
		failed_toggle_collisions = "ধাতুসমুহ অকার্যকর করার প্রচেষ্টা ব্যর্থ হয়েছে।",

		disabled_recoil_on = "রিকইল অক্ষম।",
		disabled_recoil_off = "রিকইল সক্ষম।",

		attachment_missing = "অ্যাটাচমেন্ট প্যারামিটার উপস্থিত নেই।",
		no_weapon_equipped = "কোন অস্ত্র সরবরাহ করা হয়নি।",
		attachment_invalid = "অ্যাটাচমেন্ট অবৈধ বা এই অস্ত্রে উপলব্ধ নয়।",
		attachment_failed_toggle = "এই অস্ত্রে অ্যাটাচমেন্ট টগল করতে ব্যর্থ হয়েছে।",
		attachment_on = "${attachment} অ্যাটাচমেন্ট সফলভাবে টগল করা হয়েছে।",
		attachment_off = "${attachment} অ্যাটাচমেন্ট সফলভাবে টগল করা হয়েছে না।",

		tint_invalid = "অবৈধ অস্ত্র টিন্ট।",
		tint_range_invalid = "অবৈধ বর্ননা সীমা (মান 0 এবং ${max} এর মধ্যে হতে হবে)।",
		tint_failed_set = "বর্ণনা সেট করতে ব্যর্থ হয়েছে।",
		tint_removed = "সফলভাবে হয়লো বর্ণনা অপসারণ।",
		tint_set = "বর্ণনা সফলভাবে সেট হয়েছে `${tint}` (${tintIndex})।",
		no_weapon_tint = "এই সশস্ত্রে কোন বর্ণনা নেই।",

		weapon_attachment_missing_perms = "যদিও সঠিক অনুমতি নেই, একটি সশস্ত্রের সংযোগকে টগল করতে চেষ্টা করেছেন।",
		weapon_tint_missing_perms = "যদিও সঠিক অনুমতি নেই, একটি সশস্ত্রের বর্ণনা সেট করতে চেষ্টা করেছেন।",

		no_attachments = "কোন সংযোগস্থল নেই",
		available_attachments = "উপলব্ধ সংযোগস্থল",
		current_attachments = "বর্তমান সংযোগস্থল",
		no_attachments = "কোন সংযোগস্থল নেই",
		attachments_list = "সংযোগস্থুল তালিকা:",
		tint_label = "\"${tintLabel}\" (${tintIndex}) টিন্ট:",

		item_name_failed_set = "আইটেম নাম ওভাররাইড সেট করা হয়নি।",
		item_name_removed = "আইটেম নাম ওভাররাইড সফলভাবে সরিয়ে ফেলা হয়েছে।",
		item_name_set = "আইটেম নাম ওভাররাইড '${itemName}' সফলভাবে সেট করা হয়েছে।",
		item_name_invalid_slot = "অকার্যকর বা অনুপস্থিত আইটেম স্লট।",

		cleaned_ped = "${consoleName}-এর পেড় সফলভাবে পরিষ্কার করা হয়েছে।",
		cleaned_ped_self = "সফলভাবে আপনার পেড় পরিষ্কার করা হয়েছে।",
		clean_ped_failed = "পেড় পরিষ্কার করতে ব্যর্থ হয়েছে।",
		cleaned_ped_for_all = "সফলভাবে সবার পেড় পরিষ্কার করা হয়েছে।",
		clean_ped_no_permission = "প্রয়োজনীয় অনুমতি ছাড়াই একটি খেলোয়াড়ের পেড় পরিষ্কার করতে চেষ্টা করা হয়েছে।",

		item_durability_set_success = "স্লট ${slotId} এর জন্য পণ্যের দক্ষতা সফলভাবে ${amount}% ধারণ করা হয়েছে।",
		item_durability_set_failed = "দক্ষতা সেট করতে ব্যর্থ হয়েছে।",
		item_durability_invalid_amount = "অবৈধ দক্ষতা পরিমাণ (0 <> 100)।",
		item_durability_set_no_permission = "প্রয়োজনীয় অনুমতি ছাড়াই পণ্যের দক্ষতা সেট করতে চেষ্টা করা হয়েছে।",

		item_metadata_set_no_permission = "আবদ্ধ অনুমতি ছাড়াই একটি আইটেমের মেটাডাটা সেট করতে চেষ্টা করা হয়েছে।",
		item_metadata_invalid_metadata = "অকার্যকর আইটেম মেটাডাটা।",
		item_metadata_set_success = "স্লট ${slotId} এর আইটেম এর মেটাডাটা সফলভাবে সেট করা হয়েছে।",
		item_metadata_set_failed = "মেটাডাটা সেট করতে ব্যর্থ হয়েছে।",

		advanced_metagame_on = "উন্নয়নমুখী মেটাগেম চালু করা হয়েছে।",
		advanced_metagame_off = "উন্নয়নমুখী মেটাগেম বন্ধ করা হয়েছে।",

		identity_set = "অভিজ্ঞতা আপনার নামকে `${name}` এ সেট করা হয়েছে।",
		identity_reset = "আপনার অভিজ্ঞতা সেটকরা হয়েছে।",
		identity_set_failed = "আপনার পরিচিতি সেট করা যায়নি।",
		identity_hud = "পরিচিতি: ${playerName}",

		set_identity_no_permission = "প্লেয়ার প্রয়োজনীয় অনুমতিসহ নাম সেট করার চেষ্টা করেছে।",

		invalid_range_parameter = "অবৈধ পরিসীমা পরামিতি।",
		wipe_first_owned_success = "সার্ভার আইডি `${serverId}` সহ প্রথমে মালিকের ${amount} টি ইউনিট সফলভাবে মুছে ফেলা হয়েছে।",
		wipe_first_owned_success_range = "${range}m পরিসীমার মধ্যে সার্ভার আইডি `${serverId}` সহ প্রথমে মালিকের ${amount} টি ইউনিট সফলভাবে মুছে ফেলা হয়েছে।",
		wipe_first_owned_failed = "সার্ভার আইডি দিয়ে প্লেয়ার যাত্রীর একটি উপদেশ মুছতে ব্যর্থ হয়েছে `${serverId}`।",

		invalid_radius_parameter = "বৃত্তাকার ক্ষেত্রফলের মান সঠিক নয় (1 থেকে 500 এর মধ্যে হতে হবে)।",
		scooped_up_players = "${amount} টি খেলোয়াড়ককে উঠিয়ে নেয়া হয়েছে।",
		scoop_invalid = "আপনি কোনও খেলোয়াড়ক উঠিয়ে নেই।",
		unscooped_players = "${total} টি খেলোয়াড়কের মধ্যে থেকে ${amount} জন উঠানো হয়েছে।",
		unscoop_failed = "খেলোয়াড়কের উঠানো ব্যর্থ হয়েছে।",

		unscoop_missing_permissions = "খেলোয়াড়গণকে উঠানো অনুমতি নেই।",

		toggle_collisions_missing_permissions = "খেলোয়াড়ক বিন্যাস টগল করার জন্য প্রয়োজনীয় অনুমতি নেই।",
		wipe_first_owned_missing_permissions = "খেলোয়াড় সঠিক অনুমতি ছাড়াই প্রথম মালিকের সমস্ত বস্তু উপরের তুলে ফেলতে চেষ্টা করেছে।",

		freeze_missing_permissions = "খেলোয়াড় অন্য খেলোয়াড়কে স্থাবিত বা আনফ্রিজ করার জন্য সঠিক অনুমতি নেই।",

		freeze_success = "${consoleName}-কে সফলভাবে স্থাবিত করা হয়েছে।",
		failed_freeze = "খেলোয়াড়কে স্থাবিত করতে ব্যর্থ হয়েছে।",
		unfreeze_success = "${consoleName}-কে সফলভাবে আনফ্রিজ করা হয়েছে।",
		failed_unfreeze = "খেলোয়াড়কে আনফ্রিজ করতে ব্যর্থ হয়েছে।",

		freeze_logs_title = "খেলোয়াড় স্থাবিত হয়েছে",
		freeze_logs_details = "${consoleName} এখন ${targetName}-কে স্থাবিত করেছে।",
		unfreeze_logs_title = "প্লেয়ারকে ফ্রিজ স্থান থেকে মুক্ত করা হয়েছে",
		unfreeze_logs_details = "${consoleName} ${targetName} এর ফ্রিজ স্থান থেকে মুক্ত করেছে।",

		slap_kill_reason = "স্ল্যাপ করেছেন",
		slap_success = "সফলভাবে ${consoleName} কে স্ল্যাপ করা হয়েছে।",
		slap_failed = "প্লেয়ারকে স্ল্যাপ করা যায়নি।",
		slap_logs_title = "প্লেয়ারকে স্ল্যাপ করা হয়েছে",
		slap_logs_details = "${consoleName} ${targetName} কে স্ল্যাপ করেছে।",
		slap_missing_permissions = "প্লেয়ার যদি প্রয়োজনীয় অনুমতি না থাকে তাহলে অন্য প্লেয়ারকে স্ল্যাপ করা যাবে না।",

		damaged_player = "${consoleName} কে ${damage} ডেমেজ দেওয়া হয়েছে।",
		damage_player_failed = "প্লেয়ারকে ডেমেজ দেওয়া যায়নি।",
		damage_player_logs_title = "প্লেয়ার ক্ষয়কারীতা",
		damage_player_logs_details = "${consoleName} ${damage} ক্ষয়কারীতা জন্য ${targetConsoleName} কে ক্ষতি করেছেন।",
		damage_player_missing_permissions = "প্লেয়ার অননুমোদিত ভাবে অন্য প্লেয়ারকে ক্ষতি করার চেষ্টা করেছেন।",

		refill_nitro_logs_title = "নাইট্রো পূর্ণসূচনা",
		refill_nitro_logs_details = "${consoleName} নাইট্রো পূর্ণ করেছেন।",

		isolated_logs_title = "প্লেয়ার আবর্তন",
		isolated_off_logs_details = "${consoleName} ${targetName} এর আবর্তন (অফ) করেছেন।",
		isolated_on_logs_details = "${consoleName} ${targetName} এর আবর্তন (অন) করেছেন।",

		character_data_logs_title = "চরিত্রের তথ্য",
		character_data_logs_details = "${consoleName} ${characterId} এর সিআইডি চেক করেছেন।",

		item_name_logs_title = "নাম ওভাররাইড",
		item_name_logs_details = "${consoleName} ${slot} স্লটের আইটেমগুলি নামকরণ করেছেন `${nameOverride}`।",

		toggle_attachment_logs_title = "সংযোগ টগল",
		toggle_attachment_logs_details = "${consoleName} সংযোগ `${সংযোগ}` টগল করেছেন।",

		tint_logs_title = "টিন্ট সেট করুন",
		tint_logs_details = "${consoleName} তাদের অস্ত্র এর টিন্ট সূচকটি সেট করেছেন ${tintIndex}।",

		population_multiplier_logs_title = "জনসংখ্যা মাল্টিপ্লায়ার",
		population_multiplier_logs_details = "${consoleName} জনসংখ্যা মাল্টিপ্লায়ারটি ${populationMultiplier} এ সেট করেছেন।",

		fake_disconnect_logs_title = "মিথ্যা ডিসকানেক্ট",
		fake_disconnect_on_logs_details = "${consoleName} তাদের মিথ্যা ডিসকানেক্টটি চালু করেছেন।",
		fake_disconnect_off_logs_details = "${consoleName} তাদের মিথ্যা ডিসকানেক্টটি বন্ধ করেছেন।",

		identity_logs_title = "পরিচয় ওভাররাইড",
		identity_on_logs_details = "${consoleName} তাদের পরিচয়টি `${playerName}` এ সেট করেছেন।",
		identity_off_logs_details = "${consoleName} তাদের ব্যক্তিগততা রিসেট করেছেন।",

		clean_ped_logs_title = "পেড পরিষ্কার করা হয়েছে",
		clean_ped_logs_details = "${consoleName} ${targetName} এর পেড পরিষ্কার করা হয়েছে।",

		collisions_logs_title = "সংঘটন",
		collisions_off_logs_details = "${consoleName} তাদের অকার্যকর সংঘটনগুলি বন্ধ করেছেন।",
		collisions_on_logs_details = "${consoleName} তাদের অকার্যকর সংঘটনগুলি চালু করেছেন।",

		invalid_job_search = "অবৈধ কাজ অনুসন্ধান (কমপক্ষে ৩টি অক্ষর থাকতে হবে)।",
		failed_job_search = "কাজ অনুসন্ধান করতে ব্যর্থ হয়েছে।",
		job_search_no_results = "কোনো চাকরি পাওয়া যায় নি।",
		job_search_results = "${consoleName} এর চাকরি হলো \"${departmentName}, ${positionName} এর ${jobName}\" (স্কোর: ${score}).",

		job_reset_success = "${consoleName} এর চাকরি সফলভাবে রিসেট হয়েছে।",
		failed_job_reset = "চাকরি রিসেট করতে ব্যর্থ হয়েছে।"
	},

	anti_cheat = {
		illegal_client_event = "আপনি কারাগারে চলে যান। $200 টাকা একত্র করতে যান না।",
		illegal_server_event = "আপনি কারাগারে চলে যান। $200 টাকা একত্র করতে যান না।",
		bad_entity_spawn = "মডেল নাম \"${modelName}\" নিয়ে ইউনিট স্পটটে তৈরি করা যায় নি।",
		bad_entity_title = "খারাপ এন্টিটি স্পঁদন করা হয়েছে",
		bad_entity_message = "${consoleName} মডেল নাম `${modelName}` সহ এন্টিটি স্পঁদন করেছেন।",
		detected_entity_title = "চেতনা করা হয়েছে যে এন্টিটি স্পঁদন করা হয়েছে",
		detected_entity_message = "${consoleName} মডেল নাম `${modelName}` সহ এন্টিটি স্পঁদন করেছেন।",
		added_model_to_list = "চেকিং লিস্টে মডেল `${modelName}` (${modelHash}) যোগ করা হয়েছে।",
		model_already_added_to_list = "মডেল `${modelName}` (${modelHash}) ইতিমধ্যে চেকিং লিস্টে রয়েছে।",
		removed_model_to_list = "চেকিং লিস্ট থেকে মডেল `${modelName}` (${modelHash}) সরানো হয়েছে।",
		model_not_in_list = "${modelName} (${modelHash}) মডেলটি সনাক্তকরণের তালিকাতে যোগ করা হয়নি।",
		set_model_detected_not_staff = "প্লেয়ার একটি মডেলটি সনাক্ত করতে চেষ্টা করেছিল, কিন্তু সেটি করার জন্য প্রয়োজনীয় অনুমতি ছিল না।",
		set_model_undetected_not_staff = "প্লেয়ার একটি মডেলটি সনাক্তকরণের তালিকা থেকে সরাতে চেষ্টা করেছিল, কিন্তু সেটি করার জন্য প্রয়োজনীয় অনুমতি ছিল না।",
		add_detection_area_not_staff = "প্লেয়ার একটি সনাক্তকরণ এলাকা যোগ করতে চেষ্টা করেছিল, কিন্তু সেটি যোগ করার জন্য প্রয়োজনীয় অনুমতি ছিল না।",
		remove_detection_area_not_staff = "প্লেয়ার একটি সনাক্তকরণ এলাকা সরাতে চেষ্টা করেছিল, কিন্তু সেটি সরার জন্য প্রয়োজনীয় অনুমতি ছিল না।",
		detection_area_close = "[${InteractionKey}] সনাক্তকরণ এলাকা সরান (${areaId})",
		detection_area = "সনাক্তকরণ এলাকা (${areaId})",

		ban_notification_title = "অ্যান্টি-চিট",
		ban_notification = "${consoleName}-কে `${banReason}` এর জন্য নিষিদ্ধ করা হয়েছে।",

		bad_screen_word_ban = "আমরা খুবই সতর্ক হয়েছি!",
		blacklisted_command_ban = "দুঃখিত, তথ্য দেওয়া অক্ষম হওয়ার কারণে এই কমান্ডটি আপনি সম্পাদন করতে পারবেন না। অক্ষম বলে মনে হলে দয়া করে সার্ভার প্রশাসকদের সাথে যোগাযোগ করুন।",
		damage_modifier_ban = "আপনার শক্তির লেভেল ৯০০০ এর বেশি নয়।",
		distance_taze_ban = "দূরত্ব থেকে আপনার স্টানিং পারফরম্যান্স প্রশংসা পাননি।",
		fast_movement_ban = "এই সার্ভারে উড়া না যাওয়া অনুমোদিত নয়।",
		freecam_ban = "আপনার কিছু মনে হয় নি না যে আপনি আত্মার বাইরে চলে গেছেন।",
		honeypot_ban = "আপনি নিজেকে তৈরি মোড চালু করতে চেষ্টা করেছিলেন, তবে করার জন্য অনুমতি ছিল না।",
		hotwire_driving_ban = "ভ্রুম ভ্রুম, আমি আমার মায়ের গাড়িতে।",
		illegal_freeze_ban = "আপনি জানেন উষ্ণ খাবার সবচেয়ে ভালো?",
		illegal_ped_change_ban = "নিজের উপর প্লাস্টিক সার্জারি করা প্রচন্ড জোরালো।",
		illegal_spectating_ban = "আপনাকে কাজ করছা FIB এজেন্ট হতে হবে বা প্রাথমিক ভূমিকার সাথে একটি spectator মোড ব্যবহার করতে হবে।",
		illegal_vehicle_modifier_ban = "Fast and Furious এর মধ্যে Dom Toretto থেকে বিভিন্নভাবে আমরা পরিবার নই।",
		invincibility_ban = "আপনি কোন কালো রাজকুমার নন, আপনি অমর হতে পারবেন না।",
		ped_spawn_ban = "আপনি বিতৃত্তিহীন করতে চেষ্টা করেছেন, তবে ফটোসিংথেসিসের জন্য যথার্থ প্রকাশ নেই।",
		player_blips_ban = "এয়ারস্পেস পূর্ণ হয়ে গেছে, উপলব্ধ নয় ভাফগুয়ে।",
		runtime_texture_ban = "মড মেনু আপনি আছে, তা ব্যবহার করতে আপনি পারবেন না।",
		spiked_resource_ban = "অনুমতি ছাড়াই স্ক্রিপ্ট পরিবর্তন করা খলমের মতো। তাই না যে, আপনি সেটি পছন্দ না করে শেষ করার চেষ্টা করছেন।",
		text_entry_ban = "ইনস্পেক্টিং এলিমেন্ট এই ব্রাউজারে অনুমোদিত নয়।",
		thermal_night_vision_ban = "উজ্জ্বল রাত্রি অনুমোদিত নয়।",
		vehicle_modification_ban = "আপনি আপনার গাড়ির হেডলাইট ফ্লুইড খুঁজতে পারেন না।",
		vehicle_spam_ban = "কাউন্টার টেররিস্ট জিতে গেছে।",
		vehicle_spawn_ban = "আপনি একটি মাইনকার্টে রেডস্টোন ব্যবহার করার চেষ্টা করেছিলেন কিন্তু ফ্রি গাড়িতে পাওয়া যায় নি।",
		weapon_spawn_ban = "আপনি ফাইভএমের \"পে টু উইন রুট\" চেষ্টা করেছেন যেখানে আপনি এখন করে দিয়েছেন ব্যান পেতে জন্য।",

		mp_f_freemode_01_label = "ফ্রিমোড (মহিলা)",
		mp_m_freemode_01_label = "ফ্রিমোড (পুরুষ)",
		player_one_label = "ফ্র্যাঙ্কলিন",
		player_two_label = "ট্রেভর",
		player_zero_label = "মাইকেল",

		notification_distance_taze = "এন্টি-চিট: ${displayName} খুব দূরে (${distance}মিটার) কারওকে তেজ মারলেন।",
		notification_bad_screen_word = "এন্টি-চিট: ${displayName} এর স্ক্রীনে ${count}টি ট্রিগার ওয়ার্ড আছে।",

		notification_freecam_detected = "এন্টি-চিট: ফ্রিক্যাম ট্র্যাক করা হয়েছে",
		notification_illegal_vehicle_modifier = "এন্টি-চিট: যানবাহন পরিবর্তনকারী",
		notification_illegal_vehicle_spawn = "এন্টি-চিট: গাড়ি প্রস্তুত করা হয়েছে",
		notification_fast_movement = "এন্টি-চিট: দ্রুত গতি",
		notification_illegal_freeze = "এন্টি-চিট: অনৈতিক জমাট",
		notification_invincibility = "এন্টি-চিট: অতিরিক্ত সুরক্ষা",
		notification_vehicle_modification = "এন্টি-চিট: যানবাহন পরিবর্তন",
		notification_damage_modifier = "এন্টি-চিট: ক্ষতি পরিবর্তক",
		notification_illegal_weapon = "এন্টি-চিট: অনৈতিক সশস্ত্রবাহী",
		notification_spawned_object = "এন্টি-চিট: জিনিস তৈরি করা হয়েছে",
		notification_driving_hotwire = "এন্টি-চিট: হটওয়ায়ার সময় গাড়ি চালনা",

		ig_orleans_label = "সাসকোচ",
		u_m_m_jesus_01_label = "যীশু",
		u_m_y_babyd_label = "দেহবোধক",
		u_m_y_imporage_label = "সুপার হিরো",
		a_m_m_bevhills_02_label = "সাদা ছেলে",
		a_m_m_fatlatin_01_label = "ফ্যাট ছেলে",
		a_m_m_hasjew_01_label = "ইহুদি পেদোফাইল",
		a_m_m_beach_01_label = "টপলেস পেড (কালো, পুরুষ)",
		a_m_m_beach_02_label = "টপলেস পেড (সাদা, পুরুষ)",
		a_m_m_afriamer_01_label = "ফ্যাট কালো ছেলে",
		ig_jimmydisanto_label = "জিমি",
		ig_jimmydisanto2_label = "জিমি ২",
		a_m_y_musclbeac_01_label = "অর্ধ-নেকেড সমুদ্র ব্যক্তি",
		csb_ramp_marine_label = "মেরিন ব্যক্তি",
		s_f_y_stripperlite_label = "স্ট্রিপার পেড",
		mp_f_stripperlite_label = "স্ট্রিপার পেড ২",
		mp_m_marston_01_label = "হাত-পা নেই",
		mp_m_niko_01_label = "নিকো (জিটিএ আইভি)",

		high_fov_warning = "আপনার এফওভি অসাধারণভাবে উচ্চ।",
		high_fov_description = "এটি সম্ভবত একটি এফওভি মডিফায়ার দ্বারা উত্পন্ন হয়।",
		high_fov_debug = "বর্তমান: ${fov}",

		illegal_oxy_run = "খিলাড়ি মানুষের চাইতে দ্রুত অক্সিটন রান সম্পন্ন করেছে।",

		fast_movement_warning = "আপনাকে অতি দ্রুত চলার জন্য পক্ষটিত করা হয়েছে! দয়া করে একজন উন্নয়নকারীকে জানান এবং বলুন আপনি কি করছেন তার বিষয়ে কারণ এই চ্যাট বার্তাটি আপনি পাচ্ছেন না।",
		invincibility_warning = "আপনাকে অমর হওয়ার জন্য পক্ষটিত করা হয়েছে! দয়া করে একজন উন্নয়নকারীকে জানান এবং বলুন আপনি কি করছেন তার বিষয়ে কারণ এই চ্যাট বার্তাটি আপনি পাচ্ছেন না।",
		damage_modifier_warning = "আপনাকে একটি অবৈধ ক্ষতি সংশোধক প্রয়োগ করার জন্য পক্ষটিত করা হয়েছে! দয়া করে একজন উন্নয়নকারীকে জানান এবং বলুন আপনি কি করছেন তার বিষয়ে কারণ এই চ্যাট বার্তাটি আপনি পাচ্ছেন না।",
		freeze_warning = "আপনি যথাযথ নয় হওয়া পর্যন্ত জমার জন্য পতিত হয়েছেন! এই চ্যাট বার্তাটি পাওয়ার পর কোনও উন্নয়নকর্তাকে জানান এবং তাদের বলুন আপনি কি করছিলেন যাতে এটি হয়েছে, কারণ আপনার এই চ্যাট বার্তাটি প্রাপ্ত করা উচিত নয়।",

		distance_taze_screenshot = "এন্টি-চিট: দূরত্ব টেজ (${distance} মিটার)",
		spectating_screenshot = "এন্টি-চিট: দর্শনকারী",
		fast_movement_screenshot = "এন্টি-চিট: দ্রুত গতি",
		illegal_freeze_screenshot = "এন্টি-চিট: গোপন জমা",
		illegal_vehicle_modifier_screenshot = "এন্টি-চিট: অনৈক্যকর গাড়ি পরিবর্তক (${modifierName} = ${modifierValue})",
		damage_modifier_screenshot = "এন্টি-চিট: অবৈধ ক্ষতি মডিফায়ার (${activeModifier}/${currentModifier})",
		illegal_weapon_screenshot = "এন্টি-চিট: অননুমোদিত সশস্ত্র (${weaponLabel}) স্পউন করা হয়েছে",
		illegal_vehicle_spawn_screenshot = "এন্টি-চিট: অননুমোদিত গাড়ি (${modelName}) স্পউন করা হয়েছে",
		vehicle_modification_screenshot = "এন্টি-চিট: গাড়ি পরিবর্তন করা হয়েছে (${types})",
		thermal_night_vision_screenshot = "এন্টি-চিট: থার্মাল/নাইট ভিশন (${nativeName})",
		text_entry_screenshot = "এন্টি-চিট: টেক্সট ইনপুট (${textEntry})",
		player_blips_screenshot = "এন্টি-চিট: প্লেয়ার ব্লিপস",
		modified_fov_screenshot = "এন্টি-চিট: পরিবর্তিত FOV (${fov})",
		ped_change_screenshot = "এন্টি-চিট: অবৈধ পেড পরিবর্তন",
		invincibility_screenshot = "এন্টি-চিট: অমর",
		runtime_texture_screenshot = "এন্টি-চিট: রানটাইম টেক্সচার (${textureDict}, ${textureName})",
		bad_screen_word_screenshot = "এন্টি-চিট: খারাপ স্ক্রিন শব্দ (${words})",
		freecam_detected_screenshot = "এন্টি-চিট: ফ্রি ক্যাম সনাক্তকরণ করা হয়েছে (${distance}মিটার)",
		driving_hotwire_screenshot = "এন্টি-চিট: হটওয়ায়ার সময় ড্রাইভিং"
	},

	authentication = {
		ip_not_found = "আপনার আইপি ঠিকানা জানতে পারছিনা।",
		authenticating_local_server = "স্থানীয় সার্ভারে প্রমাণীকরণ হচ্ছে...",
		authenticating_global_server = "OP-FW সার্ভার দিয়ে প্রমাণীকরণ হচ্ছে...",
		error_fetching_data = "আপনার ডেটা নিতে সমস্যা দেখা দেওয়ায় একটি ত্রুটি ঘটেছে।",
		region_blocked = "এই সার্ভারটি আপনি যে অঞ্চল থেকে সংযুক্ত হচ্ছেন তাকে ব্লক করেছে।",
		server_config_not_loaded = "সার্ভার কনফিগ লোড করা হয়নি।",
		something_went_horribly_wrong = "কিছু খুব সরু ঝুঁকিপূর্ণ হয়ে গেছে। অনুগ্রহ করে আবার চেষ্টা করুন।",
		local_firewall_enabled = "স্থানীয় ফায়ারওয়াল সক্ষম।",

		local_firewall_on = "${blockMessage} বার্তার সাথে স্থানীয় ফায়ারওয়াল সক্ষম করেছি।",
		local_firewall_re_enabled = "স্থানীয় ফায়ারওয়ালটি পুনঃসক্রিয় করা হয়েছে ব্লক বার্তার সাথে `${blockMessage}`।",
		local_firewall_off = "স্থানীয় ফায়ারওয়াল নিষ্ক্রিয় করা হয়েছে।",
		local_firewall_blocked = "স্থানীয় ফায়ারওয়ালঃ ${playerName} (${licenseIdentifier}) ব্লক হয়েছে",

		developer = "উন্নয়ন কারী",
		super_admin = "সুপার অ্যাডমিন",
		staff = "স্টাফ",
		reconnect = "পুনরায় সংযোগ করুন",
		random = "এলোমেলো",
		beginner = "শুরুকারী",
		custom = "কাস্টম",
		christmas = "ক্রিসমাস",
		casino = "ক্যাসিনো",

		job_low = "নিম্নমানের কাজ",
		job_medium = "মধ্যম কাজ",
		job_high = "উচ্চ কাজ",

		banned_globally = "আপনি সমস্ত OP-FW সার্ভার থেকে গ্লোবালি ব্যান করা হয়েছে।\n\nব্যান হ্যাশ: ${banHash}\nব্যানের কারণ: ${banReason}\n\nযদি আপনি এটি মিথ্যা বন্দোবস্ত মনে করেন তবে ${frameworkDiscord} এ অ্যাপিল করতে আমাদের ডিসকর্ড গিল্ডে যোগদান করুন।",
		banned_locally = "${communityName} থেকে আপনি ব্যান করা হয়েছে।\n\nব্যান হ্যাশ: ${banHash}\nব্যান ব্যবস্থাপক: ${creatorName}\nব্যান কারণ: ${banReason}\nসময়সীমা: ${timestamp}\n\n${indefiniteOrExpires}\n\nআমাদের ডিসকর্ড গিল্ডে যোগদান করে যদি আপনি এই ব্যান চুক্তি অবজ্ঞার জন্য আপিল করতে চান তবে ${communityDiscord} এ অবহিত হোন।",
		banned_locally_no_creator = "${communityName} থেকে আপনার ব্যান হয়েছে।\n\nব্যান হাসট্যাগ: ${banHash}\nব্যানের কারণ: ${banReason}\nসময়চাহিত হয়নি বা শেষ হবে: ${timestamp}\n\n${indefiniteOrExpires}\n\nবিস্তারিত জানতে ${communityDiscord} এ যোগদান করুন।",
		ban_indefinite = "এই ব্যান অসীম।",
		ban_expires = "এই ব্যান ${timeLeft} পর মেয়াদ শেষ হবে।",
		not_whitelisted = "আপনি এই সার্ভারে হোয়াইটলিস্টেড নন। আবেদন করার উপর তথ্য জানতে দয়া করে আমাদের ডিসকর্ড সার্ভারে যোগদান করুন।\n\n${communityDiscord}",
		api_error = "আপনার তথ্য পান্যের সময় একটি ত্রুটি ঘটেছে। (ত্রুটি কোড ${errorCode})",
		pepega_moderate = "আপনার কাছ থেকে কোনও নির্দিষ্ট কারণবিহীনভাবে সকল ওপি-এফডব্লিউ সার্ভার থেকে ব্যান হয়েছে।",
		pepega_ultimate = "আপনি এই সার্ভার থেকে ব্যান হয়েছেন।",
		ban_code_not_found = "আপনি সকল ওপি-এফডব্লিউ সার্ভার থেকে ব্যান হওয়া গেছেন। আপনার ব্যান কোড পাওয়া যায়নি।",
		fraud_chargeback = "প্রতারণা / চার্জব্যাক",
		threatening_ddos = "আমাদের ভৌগোলিক স্ট্রাকচারকে আক্রমণের আশঙ্কা জানানো।",
		unknown = "অজানা",
		api_offline = "আমাদের ব্যাক-এন্ড সেবা বর্তমানে অনুপলব্ধ এবং তাই আপনি আবার চেষ্টা করুন সম্ভব তাড়াতাড়ি।",
		protective_mode_on = "এই সার্ভারে বর্তমানে প্রদর্শিত সার্ভার প্রতিরক্ষামূলক মোড সক্রিয় হয়েছে, যা মাত্র কিছু খেলার সময় আছে তার পাসওয়ার্ড থাকলেই খেলোয়াড়রা সার্ভারে সংযোগ করতে পারবেন। এইটি কেবলমাত্র অস্থায়ী এবং শীঘ্রই সার্ভারটি পুনরায় স্বাভাবিক হবে।\n\nএই ঘটনার বিস্তারিত জানতে আমাদের ডিসকর্ডে যোগ দিন: ${communityDiscord}।",
		server_restarting = "সার্ভারটি বর্তমানে পুনরারম্ভ করা হচ্ছে। দয়া করে কয়েক মিনিট পর আবার চেষ্টা করুন।",
		connection_cancelled = "এই সংযোগটি বাতিল করা হয়েছে কারণ আরেকটি ইতিমধ্যে সক্রিয়।",
		no_reason_provided = "কোন কারণ সরবরাহ করা হয়নি।",
		discord_whitelist_id_not_found = "আমরা আপনার ডিসকর্ড আইডি খুঁজে পাইনি। নিশ্চিত হলুন আপনার ডিসকর্ডে পছন্দসই অবস্থানটি খোলা এবং আপনি ফাইভএমের মাধ্যমে আপনার ডিসকর্ড ক্লায়েন্ট থেকে ডেটা ফেচ করতে অনুমতি দেবেনঃ\n\n${communityDiscord}"
	},

	chat = {
		default = "ডিফল্ট",

		chat_group_information = "আপনাকে একটি চ্যাট গ্রুপে যোগ দেওয়া হয়েছে। আপনার উপলভ্য চ্যাট গ্রুপ পরিবর্তন করতে **ট্যাব** চাপুন।\n\n'/' উপসর্গ ছাড়াই পাঠানো বার্তাগুলি গ্রুপের অন্য সদস্যদের কাছে জানানো হবে।"
	},

	commands = {
		command_unavailable = "এই কমান্ড পাওয়া যায় নি!",

		command_list = "${commands}",
		substitute_list = "${substitutes}",

		substitute_command_for = "${command} এর জন্য একটি প্রতিস্থাপন কমান্ড।",

		-- the "substitutes" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is substitutes will not show as suggestions in the chat
		-- if no substitutes are wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "বাহান করুন",
		carry_command_help = "বাহান চালু করুন।",
		carry_command_substitutes = "",

		uncarry_command = "উত্তর দিন",
		uncarry_command_help = "ব্যক্তি জন্য বাহান করছেন তাকে বাঁধি থেকে মুক্ত করতে প্রয়োজন।",
		uncarry_command_substitutes = "",

		piggyback_command = "পিগিব্যাক",
		piggyback_command_help = "অন্য একটি ব্যক্তিকে পিগিব্যাক করুন।",
		piggyback_command_substitutes = "",

		pick_cuffs_command = "পিক কফ",
		pick_cuffs_command_help = "হ্যান্ডকাফ থেকে লকপিক করে মুক্ত করুন।",
		pick_cuffs_command_substitutes = "",

		struggle_command = "লড়াই",
		struggle_command_help = "অন্যকে আপনাকে নিয়ে তাকে থেকে ছিনতাই করার চেষ্টা করুন।",
		struggle_command_substitutes = "",

		handsup_command = "উপরে হাত নিয়ে দাও",
		handsup_command_help = "আপনার হাত উপরে নিয়ে দিন (বা নিচে নেওন)।",
		handsup_command_substitutes = "হাত, আত্মসমর্পণ, hu",

		-- animations/chairs
		sit_command = "বসো",
		sit_command_help = "আসনে বসার চেষ্টা করুন।",
		sit_command_parameter_variation = "পরিবর্তন",
		sit_command_parameter_variation_help = "কোন বসানো অ্যানিমেশন চালাতে হবে তা নির্দিষ্ট করুন (1 - 6)",
		sit_command_substitutes = "চেয়ার",

		-- animations/emotes
		ragdoll_command = "র্যাগডল",
		ragdoll_command_help = "র্যাগডল চালু / বন্ধ করুন।",
		ragdoll_command_substitutes = "",

		-- base/admin
		report_command = "রিপোর্ট",
		report_command_help = "সকল সক্রিয় স্টাফ মেম্বারদের একটি বার্তা প্রেরণ করুন।",
		report_command_parameter_message = "বার্তা",
		report_command_parameter_message_help = "আপনি যে বার্তা প্রেরণ করতে চান তা।",
		report_command_substitutes = "",

		announce_command = "ঘোষণা",
		announce_command_help = "সমস্ত প্লেয়ারদের জন্য একটি ঘোষণা প্রচার করুন।",
		announce_command_parameter_message = "বার্তা",
		announce_command_parameter_message_help = "আপনি যে বার্তা প্রচার করতে চান তা।",
		announce_command_substitutes = "",

		staff_pm_command = "স্টাফ পিএম",
		staff_pm_command_help = "কর্মী সদস্য বা প্লেয়ারকে একটি বার্তা প্রেরণ করুন, কর্মী হিসেবে।",
		staff_pm_command_parameter_server_id = "সার্ভার আইডি",
		staff_pm_command_parameter_server_id_help = "আপনি যার সাথে আপনি যোগাযোগ করতে চান, সেই প্লেয়ারের সার্ভার আইডি।",
		staff_pm_command_parameter_message = "বার্তা",
		staff_pm_command_parameter_message_help = "বার্তাটি যা আপনি প্রেরণ করতে চান।",
		staff_pm_command_substitutes = "staffpm",

		staff_command = "স্টাফ",
		staff_command_help = "সক্রিয় সকল কর্মীদের জন্য একটি বার্তা প্রচার করুন।",
		staff_command_parameter_message = "বার্তা",
		staff_command_parameter_message_help = "আপনি যে বার্তা পাঠাতে চান তা লিখুন।",
		staff_command_substitutes = "",

		wipe_command = "পরিষ্কার",
		wipe_command_help = "মানচিত্র থেকে অপসর্পিত ইঞ্জিন মুছে ফেলুন।",
		wipe_command_parameter_distance = "দূরত্ব",
		wipe_command_parameter_distance_help = "দূরত্ব ব্যতিক্রম ইঞ্জিনগুলি মুছতে এখানে লিখুন। সম্পূর্ণ মানচিত্রের জন্য এটিকে লিখুন `false` বা`0`।",
		wipe_command_parameter_ignore_local_entities = "স্থানীয় ইঞ্জিনগুলি উপেক্ষা করুন",
		wipe_command_parameter_ignore_local_entities_help = "স্থানীয় ইঞ্জিনগুলি উপেক্ষা করতে চান? আপনি চিটার থেকে পরিস্কার করছেন তাহলে আপনাকে এটি টেনে নেওয়া সুপারিশ করা হয়।",
		wipe_command_parameter_model_name = "মডেল নাম",
		wipe_command_parameter_model_name_help = "আপনি যদি কেবল কোন নির্দিষ্ট মডেল নামের ইণ্টিটি মুছতে চান তাহলে এখানে মডেল এর নাম লিখুন। অন্যথায় এটি ফাঁকা, `false` বা `0` রাখুন। আপনি `vehicles` বা `peds` হিসাবে এটি সেট করতে পারেন।",
		wipe_command_substitutes = "",

		noclip_command = "নক্লিপ",
		noclip_command_help = "নকলিপ চালু করুন।",
		noclip_command_parameter_server_id = "সার্ভার আইডি",
		noclip_command_parameter_server_id_help = "যদি আপনি অন্যকে নকলিপ চালু করতে চান তাহলে এখানে তাদের সার্ভার আইডি লিখুন।",
		noclip_command_substitutes = "",

		safe_noclip_command = "নিরাপদ_নকলিপ",
		safe_noclip_command_help = "কেবলমাত্র যদি কোন লোক আপনাকে দেখতে পারে না তবে নকলিপ চালু করুন (স্টাফ মেম্বারগণ স্টাফ চালু থাকলে উল্লেখ্য নয়).",
		safe_noclip_command_substitutes = "snoclip",

		delete_vehicle_command = "গাড়ি_মুছুন",
		delete_vehicle_command_help = "কাছাকাছি একটি গাড়ি মুছুন।",
		delete_vehicle_command_parameter_ignore_heading = "হ্যাঁ",
		delete_vehicle_command_parameter_ignore_heading_help = "আপনি কি আপনার প্লেয়ারের হেডিং উপেক্ষা করতে চান? খালি রাখা এটি `না` হিসাবে কাজ করবে।",
		delete_vehicle_command_substitutes = "dv",

		delete_vehicle_interactively_command = "delete_vehicle_interactively",
		delete_vehicle_interactively_command_help = "ইন্টারেক্টিভ গাড়ি মুছতে চালু করা যাচ্ছে।",
		delete_vehicle_interactively_command_substitutes = "dvi",

		kick_command = "kick",
		kick_command_help = "সার্ভার থেকে একজন প্লেয়ার কিক করুন।",
		kick_command_parameter_server_id = "সার্ভার আইডি",
		kick_command_parameter_server_id_help = "আপনি যে প্লেয়ারকে কিক করতে চাচ্ছেন সে প্লেয়ারের সার্ভার আইডি।",
		kick_command_parameter_reason = "কারণ",
		kick_command_parameter_reason_help = "খেলোয়ারের বিদায় হওয়ার কারণ। এটি ফাঁকা রাখা যেতে পারে।",
		kick_command_substitutes = "",

		ban_command = "ব্যান",
		ban_command_help = "একজন খেলোয়ারকে সার্ভার থেকে ব্যান করুন।",
		ban_command_parameter_server_id = "সার্ভার আইডি",
		ban_command_parameter_server_id_help = "ব্যান করতে চাইছেন খেলোয়ারের সার্ভার আইডি।",
		ban_command_parameter_expire = "মেয়াদ শেষ",
		ban_command_parameter_expire_help = "খেলোয়ারের ব্যানের দৈর্ঘ্য। এটি ফাঁকা রাখা যেতে পারে, `0` বা `false` এর জন্য অসীম ব্যান এর জন্য। আপনি দৈর্ঘ্যের জন্য ওয়া / ডি / এইচ ব্যবহার করতে পারেন। (উদাহরণঃ`3d2h` -> 3 দিন, 2 ঘণ্টা)",
		ban_command_parameter_reason = "কারণ",
		ban_command_parameter_reason_help = "খেলোয়াড়কে ব্যান করার পাশাপাশি কারণটি জানান। এটি ফাঁকা রাখা যাবে।",
		ban_command_substitutes = "",

		staff_hidden_command = "স্টাফ_হাইডেন",
		staff_hidden_command_help = "অন্য খেলোয়াড়রা আপনার স্টাফ স্থিতি দেখতে পাবেন কি না এই টগলটি টগল করুন।",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "স্টাফ_টগল",
		staff_toggle_command_help = "আপনার স্টাফ উপস্থিতি টগল করুন। টগলিং বন্ধ করলে, রিপোর্ট, স্টাফের পিএম এবং স্টাফ বার্তা দেখার সুযোগ থাকবে না।",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "প্রতিরক্ষা_মোড",
		protective_mode_command_help = "সার্ভারের প্রতিরক্ষামূলক মোড টগল করুন। এটি নতুন খেলোয়াড়দের জন্য সীমিত প্রবেশ বাতিল করবে। স্টাফ সদস্য এবং সার্ভার সমর্থকদের এই চেক এগুলো বাদ দেওয়া হয়।",
		protective_mode_command_parameter_enabled = "সক্ষম",
		protective_mode_command_parameter_enabled_help = "চেকটি সক্ষম থাকলে কি? বৈধ ইনপুট হল: `true`, `false`, `1` এবং `0`।",
		protective_mode_command_parameter_playtime = "খেলার সময়",
		protective_mode_command_parameter_playtime_help = "একটি নতুন সংযোগকে গ্রহণ করার জন্য প্রয়োজনীয় খেলার সময় (সেকেন্ডে)।",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "গাড়ি জন্মান",
		spawn_vehicle_command_help = "একটি গাড়ি উত্পন্ন করুন।",
		spawn_vehicle_command_parameter_model_name = "মডেল নাম",
		spawn_vehicle_command_parameter_model_name_help = "আপনি যে গাড়িটি স্পঁদ করতে চান তার মডেল নাম।",
		spawn_vehicle_command_parameter_server_id = "সার্ভার আইডি",
		spawn_vehicle_command_parameter_server_id_help = "আপনি যে প্লেয়ারের জন্য এই গাড়িটি স্পঁদ করতে চান সেই প্লেয়ারের সার্ভার আইডি। আপনি এটি ফাঁকা রাখতে পারেন বা `0` তে নির্ধারিত করে নিজেকে নির্বাচন করতে পারেন।",
		spawn_vehicle_command_substitutes = "sv",

		create_vehicle_command = "create_vehicle",
		create_vehicle_command_help = "আপনার বর্তমান অবস্থানে একটি গাড়ি স্পঁদ করে তা সমুদ্রপাটিতে না পানি তে না ঢোকা।",
		create_vehicle_command_parameter_model_name = "মডেলের নাম",
		create_vehicle_command_parameter_model_name_help = "স্পট করতে চান যে গাড়ির মডেল নাম।",
		create_vehicle_command_parameter_ground = "মাঠে",
		create_vehicle_command_parameter_ground_help = "গাড়িটি মাঠে স্পট করা হবে কি না?",
		create_vehicle_command_substitutes = "সিভি",

		replace_vehicle_command = "replace_vehicle",
		replace_vehicle_command_help = "আপনার বর্তমান গাড়ি একটি নতুন একটি দিয়ে পরিবর্তন করুন।",
		replace_vehicle_command_parameter_model_name = "মডেলের নাম",
		replace_vehicle_command_parameter_model_name_help = "স্পান করতে চান গাড়ির মডেল নাম।",
		replace_vehicle_command_substitutes = "rv",

		aimbot_command = "aimbot",
		aimbot_command_help = "'এইমবট' চালু/বন্ধ করবে।",
		aimbot_command_parameter_server_id = "সার্ভার আইডি",
		aimbot_command_parameter_server_id_help = "যদি আপনি কারো জন্য 'এইমবট' চালু/বন্ধ করতে চান, তাহলে তাদের সার্ভার আইডি ইনসার্ট করুন।",
		aimbot_command_parameter_targets = "টার্গেটস",
		aimbot_command_parameter_targets_help = "টার্গেট সার্ভার আইডি (একজনকে জন্য মাত্র কাজ করে।) (টার্গেট ফিল্টার করা হবে কেবল এই সার্ভার আইডি ধারণকর্তাদের সাথে)",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "প্লেয়ার হাড় ডিবাগার সার্ভিস টগল করুন",
		player_bones_debug_command_help = "প্লেয়ার হাড় ডিবাগার টগল করুন।",
		player_bones_debug_command_parameter_server_id = "সার্ভার আইডি",
		player_bones_debug_command_parameter_server_id_help = "আপনি যদি কারো জন্য প্লেয়ার হাড় ডিবাগার টগল করতে চান, তবে তাদের সার্ভার আইডি এখানে প্রবেশ করান।",
		player_bones_debug_command_substitutes = "প্লেয়ার_হাড়",

		wallhack_command = "উলট দিন 'ওয়ালহ্যাক'",
		wallhack_command_help = "'ওয়ালহ্যাক' টগল করুন।",
		wallhack_command_parameter_server_id = "সার্ভার আইডি",
		wallhack_command_parameter_server_id_help = "আপনি যদি অন্য কোনও ব্যবহারকারীর 'ওয়ালহ্যাক' চালু/বন্ধ করতে চান তবে তাদের সার্ভার আইডি এখানে প্রবেশ করান।",
		wallhack_command_substitutes = "",

		speed_boost_command = "speed_boost",
		speed_boost_command_help = "'স্পীড বোস্ট' পরিবর্তন করুন।",
		speed_boost_command_parameter_server_id = "সার্ভার আইডি",
		speed_boost_command_parameter_server_id_help = "আপনি যদি অন্য কোনও ব্যবহারকারীর 'স্পীড বোস্ট' চালু/বন্ধ করতে চান তবে তাদের সার্ভার আইডি এখানে প্রবেশ করান।",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "nitro_boost",
		nitro_boost_command_help = "'নাইট্রো বোস্ট' পরিবর্তন করুন।",
		nitro_boost_command_parameter_server_id = "সার্ভার আইডি",
		nitro_boost_command_parameter_server_id_help = "যদি আপনি কারও জন্য 'নাইট্রো বুস্ট' টগল করতে চান তবে এখানে তাদের সার্ভার আইডি ইনসার্ট করুন।",
		nitro_boost_command_substitutes = "নাইট্রো",

		indestructibility_command = "অবিয়োজ্যতা",
		indestructibility_command_help = "অবিয়োজ্যতা চালু / বন্ধ করুন।",
		indestructibility_command_parameter_server_id = "সার্ভার আইডি",
		indestructibility_command_parameter_server_id_help = "যদি আপনি কারও জন্য 'অবিয়োজ্যতা' টগল করতে চান তবে এখানে তাদের সার্ভার আইডি ইনসার্ট করুন।",
		indestructibility_command_substitutes = "অজেয়্যতার কমান্ড, ঈশ্বর, ঈশ্বর_মোড, ঈশ্বরমোড",

		no_nearby_vehicles_command = "পাশে গাড়ি নেই",
		no_nearby_vehicles_command_help = "পাশে গাড়ি নেই চালু/বন্ধ করুন।",
		no_nearby_vehicles_command_parameter_server_id = "সার্ভার আইডি",
		no_nearby_vehicles_command_parameter_server_id_help = "যদি আপনি অন্য কারের জন্য 'পাশে গাড়ি নেই' টগল করতে চান তাহলে এখানে তাদের সার্ভার আইডি লিখুন।",
		no_nearby_vehicles_command_substitutes = "",

		disable_collisions_command = "টিকা-টিকি বন্ধ",
		disable_collisions_command_help = "উচ্চতা ১০ মিটারের মধ্যে গাড়ি এবং পেদের সম্পর্কে টিকা-টিকি বন্ধ করুন।",
		disable_collisions_command_substitutes = "সংঘর্ষবিহীন",

		ghost_command = "ভূত",
		ghost_command_help = "এই কমান্ডটি /peek, অদৃশ্যতা এবং /disable_collisions চালু করবে।",
		ghost_command_substitutes = "",

		job_command = "জব",
		job_command_help = "কেউ অনুসন্ধান করে শ্রম আপডেট করুন।",
		job_command_parameter_server_id = "সার্ভার আইডি",
		job_command_parameter_server_id_help = "খেলোয়ার সার্ভার আইডি বা নিজেকে নির্বাচন করতে সর্বোচ্চ সার্ভার আইডি 0।",
		job_command_parameter_search = "অনুসন্ধান",
		job_command_parameter_search_help = "জব/বিভাগ/পদের নাম বা এর অংশ অনুসন্ধান করুন বা `none` লিখে জব সরানোর চেষ্টা করুন।",
		job_command_substitutes = "",

		reset_job_command = "কাজ রিসেট",
		reset_job_command_help = "কেউকে বেকার করে সেট করে।",
		reset_job_command_parameter_server_id = "সার্ভার আইডি",
		reset_job_command_parameter_server_id_help = "প্লেয়ারের সার্ভার আইডি বা আপনাকে নির্বাচন করুন 0।",
		reset_job_command_substitutes = "",

		watching_command = "দেখছেন",
		watching_command_help = "আসপাসে দেখা হচ্ছে সকল প্লেয়ার যারা নজরদাস্ত করছেন।",
		watching_command_substitutes = "",

		disable_recoil_command = "রিকইল অক্ষম করুন",
		disable_recoil_command_help = "সকল শস্য রিকইল অক্ষম করে।",
		disable_recoil_command_substitutes = "",

		infinite_ammo_command = "অসীম এমু",
		infinite_ammo_command_help = "অসীম এমু টগল করে।",
		infinite_ammo_command_substitutes = "",

		track_player_command = "ট্র্যাক_প্লেয়ার",
		track_player_command_help = "একটি নির্দিষ্ট খেলোয়াড়ের জন্য একটি ট্র্যাকার টগল করুন।",
		track_player_command_parameter_server_id = "সার্ভার আইডি",
		track_player_command_parameter_server_id_help = "আপনি ট্র্যাক করতে চান খেলোয়াড়ের সার্ভার আইডি। নিরবত্ত করলে অক্ষম করুন।",
		track_player_command_substitutes = "",

		reflect_damage_command = "প্রতিফলন_ক্ষতি",
		reflect_damage_command_help = "ক্ষতি প্রতিফলন চালু / বন্ধ করে। (আপনাকে ক্ষতি করে যেকোনো খেলোয়াড়ের পার্থক্য হতে বোঝাও হবে যে তারা তাদের নিজেদের ক্ষতি হবে)",
		reflect_damage_command_substitutes = "প্রতিফলন",

		trigger_headache_command = "হেডাচ ট্রিগার করুন",
		trigger_headache_command_help = "একজন খেলোয়ারকে একটি সংক্ষিপ্ত সময় জারি লেগে দেওয়ার জন্য জড়িত করে।",
		trigger_headache_command_parameter_server_id = "সার্ভার আইডি",
		trigger_headache_command_parameter_server_id_help = "আপনি যার জন্য হেডাচ ট্রিগার করতে চান তার খেলোয়ারের সার্ভার আইডি।",
		trigger_headache_command_substitutes = "হেডাচ",

		stick_command = "স্টিক",
		stick_command_help = "যে গাড়ির উপরে আপনি আছেন সেই গাড়ি স্টিক করুন।",
		stick_command_substitutes = "",

		unstick_command = "আনস্টিক",
		unstick_command_help = "আপনি যেই গাড়ির সঙ্গে সংযুক্ত আছেন সেই গাড়ি থেকে আনস্টিক করুন।",
		unstick_command_substitutes = "",

		clean_ped_command = "পেড়",
		clean_ped_command_help = "কোনও চরিত্রের রক্ত, গুলি প্রভাব, ময়লা ইত্যাদি পরিষ্কার করে দিন।",
		clean_ped_command_parameter_server_id = "সার্ভার আইডি",
		clean_ped_command_parameter_server_id_help = "আপনি যে খেলোয়ারের জন্য পেড পরিষ্কার করতে চান তার সার্ভার আইডি।",
		clean_ped_command_substitutes = "",

		toggle_vehicle_smoke_command = "toggle_vehicle_smoke",
		toggle_vehicle_smoke_command_help = "'গাড়ির ধোঁয়া' টগল করুন।",
		toggle_vehicle_smoke_command_parameter_server_id = "সার্ভার আইডি",
		toggle_vehicle_smoke_command_parameter_server_id_help = "যদি আপনি অন্য কারো গাড়ির ধোঁয়া টগল করতে চান তাহলে তার সার্ভার আইডি ইনসার্ট করুন।",
		toggle_vehicle_smoke_command_parameter_color_r = "রঙ r",
		toggle_vehicle_smoke_command_parameter_color_r_help = "ধূসর রঙের লাল মান (০ - ২৫৫)।",
		toggle_vehicle_smoke_command_parameter_color_g = "রঙ g",
		toggle_vehicle_smoke_command_parameter_color_g_help = "ধূসর রঙের সবুজ মান (০ - ২৫৫)।",
		toggle_vehicle_smoke_command_parameter_color_b = "রঙ b",
		toggle_vehicle_smoke_command_parameter_color_b_help = "ধূসর রঙের নীল মান (০ - ২৫৫)।",
		toggle_vehicle_smoke_command_substitutes = "গাড়ি_ধূম, ধূম",

		speed_up_progress_bar_command = "প্রগ্রেস বার তাড়ান",
		speed_up_progress_bar_command_help = "একটি 'প্রগ্রেস বার তাড়ান' টগল করুন।",
		speed_up_progress_bar_command_parameter_server_id = "সার্ভার আইডি",
		speed_up_progress_bar_command_parameter_server_id_help = "আপনি যদি কারো জন্য 'প্রোগ্রেস বার তাড়ান' চালু করতে চান তবে এখানে তাদের সার্ভার আইডি লিখুন।",
		speed_up_progress_bar_command_substitutes = "প্রগ্রেস",

		invisibility_command = "অদৃশ্যতা",
		invisibility_command_help = "'অদৃশ্যতা' টগল করুন।",
		invisibility_command_parameter_server_id = "সার্ভার আইডি",
		invisibility_command_parameter_server_id_help = "আপনি যদি অন্যকে 'অদৃশ্যতা' চালু/বন্ধ করতে চান, তাহলে তাদের সার্ভার আইডি এখানে লিখুন।",
		invisibility_command_substitutes = "inv, invis, invisible",

		add_cash_command = "add_cash",
		add_cash_command_help = "কোন একজনের চরিত্রে টাকা যোগ করুন।",
		add_cash_command_parameter_amount = "পরিমাণ",
		add_cash_command_parameter_amount_help = "খেলোয়াড়দের যে পরিমাণ টাকা দিতে চান তা লিখুন।",
		add_cash_command_parameter_server_id = "সার্ভার আইডি",
		add_cash_command_parameter_server_id_help = "খেলোয়ার সার্ভার আইডি। যদি খালি রাখা হয় তবে স্বয়ংক্রিয়ভাবে নিজেকে নির্বাচন করা হবে।",
		add_cash_command_substitutes = "",

		remove_cash_command = "remove_cash",
		remove_cash_command_help = "কারো চরিত্র থেকে নগদ মুছে ফেলুন।",
		remove_cash_command_parameter_amount = "পরিমাণ",
		remove_cash_command_parameter_amount_help = "খেলোয়ার পক্ষ থেকে মুছে ফেলতে চান তাকে পরিমাণ প্যারামিটারে লিখুন।",
		remove_cash_command_parameter_server_id = "সার্ভার আইডি",
		remove_cash_command_parameter_server_id_help = "খেলোয়ার সার্ভার আইডি। যদি খালি রাখা হয় তবে স্বয়ংক্রিয়ভাবে নিজেকে নির্বাচন করা হবে।",
		remove_cash_command_substitutes = "",

		add_bank_command = "add_bank",
		add_bank_command_help = "কেউ চারিত্রিক টাকা হিসাবে ব্যাংক ব্যালেন্স যোগ করুন।",
		add_bank_command_parameter_amount = "পরিমান",
		add_bank_command_parameter_amount_help = "আপনি খেলোয়াড়কে দিতে চান ব্যাঙ্ক ব্যালেন্স এর পরিমাণ।",
		add_bank_command_parameter_server_id = "সার্ভার আইডি",
		add_bank_command_parameter_server_id_help = "খেলোয়াড়ের সার্ভার আইডি। খালি রাখলে, আপনি স্বয়ংক্রিয়ভাবে নির্বাচিত হবেন।",
		add_bank_command_substitutes = "",

		remove_bank_command = "remove_bank",
		remove_bank_command_help = "কেউ চারিত্রিক টাকা হিসাবে ব্যাংক ব্যালেন্স সরান।",
		remove_bank_command_parameter_amount = "পরিমাণ",
		remove_bank_command_parameter_amount_help = "প্লেয়ার একাউন্ট থেকে ব্যাংক ব্যালেন্স সরানোর পরিমাণ।",
		remove_bank_command_parameter_server_id = "সার্ভার আইডি",
		remove_bank_command_parameter_server_id_help = "প্লেয়ারের সার্ভার আইডি। যদি ফাঁকা ছেড়ে দেয়া হয়, স্বয়ংক্রিয়ভাবে আপনি নির্বাচিত হন।",
		remove_bank_command_substitutes = "",

		spawn_item_command = "আইটেম স্পউন করুন",
		spawn_item_command_help = "আইটেম স্পউন করতে ব্যবহৃত হয়।",
		spawn_item_command_parameter_item_name = "আইটেম নাম",
		spawn_item_command_parameter_item_name_help = "আপনি যাচাই করতে চান একটি আইটেম স্পউন করার জন্য সেই আইটেমের নাম। এটি *আইটেম নাম* হতে হবে, এবং তাদের লেবেল কাজ করবে না।",
		spawn_item_command_parameter_amount = "পরিমাণ",
		spawn_item_command_parameter_amount_help = "আপনি কতটি আইটেম স্পান করতে চান সেট করুন। যদি ফাঁকা থাকে তবে একটি নির্বাচিত হবে।",
		spawn_item_command_parameter_server_id = "সার্ভার আইডি",
		spawn_item_command_parameter_server_id_help = "আপনি কোন খালাপাত্রের জন্য আইটেম স্পান করতে চান তা নির্দিষ্ট করুন। যদি ফাঁকা থাকে তবে আপনি নিজেকে নির্বাচন করছেন।",
		spawn_item_command_parameter_battle_royale_only = "ব্যাটল রয়েল এর জন্য মাত্র",
		spawn_item_command_parameter_battle_royale_only_help = "এই আইটেমটি কেবল ব্যাটল রয়েলের জন্য মাত্র উপলব্ধ হবে।",
		spawn_item_command_substitutes = "পদার্থসমূহ_উৎপন্ন_কমান্ড",

		warning_message_command = "সতর্কতা_বার্তা_কমান্ড",
		warning_message_command_help = "সমস্ত খেলোয়ারদের জন্য একটি গ্লোবাল সার্ভার বার্তা যোগ করুন।",
		warning_message_command_parameter_message = "বার্তা",
		warning_message_command_parameter_message_help = "আপনার খেলোয়াড়দের প্রদর্শিত করতে চান বার্তা। আপনি এই প্যারামিটারটি ফাঁকা রাখতে পারেন যদি সতর্কতা বার্তা সরানো হয়।",
		warning_message_command_substitutes = "",

		tp_coords_command = "টিপি_কোয়ার্ড",
		tp_coords_command_help = "কিছু স্থানান্তর করুন।",
		tp_coords_command_parameter_x = "এক্স",
		tp_coords_command_parameter_x_help = "আপনি যেখানে টেলিপোর্ট হতে চান সেখানের X কোআর্ডিনেট।",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "আপনি যেখানে টেলিপোর্ট হতে চান সেখানের Y কোআর্ডিনেট।",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "আপনি যেখানে টেলিপোর্ট হতে চান সেখানের Z কোআর্ডিনেট। এই প্যারামিটার ঐচ্ছিক এবং যদি ফাঁকা ছেড়ে দেওয়া হয়, তাহলে অটোম্যাটিকভাবে মানবন্দি কোআর্ডিনেটগুলি অনুসন্ধান করা হবে।",
		tp_coords_command_substitutes = "tpc",

		tp_waypoint_command = "tp_waypoint",
		tp_waypoint_command_help = "আপনার সেট করা ওয়েপয়ণ্টে টেলিপোর্ট করুন।",
		tp_waypoint_command_substitutes = "tp_marker, tp",

		isolate_player_command = "প্লেয়ার আইজোলেট করুন",
		isolate_player_command_help = "একটি প্লেয়ার আইজোলেট করে, উনি যা করতে চেষ্টা করুক সেগুলো বাতিল হবে।",
		isolate_player_command_parameter_server_id = "সার্ভার আইডি",
		isolate_player_command_parameter_server_id_help = "লক্ষ্যযুক্ত প্লেয়ার।",
		isolate_player_command_substitutes = "আইজোলেট",

		show_all_evidence_command = "সমস্ত আখত প্রমাণ করুন",
		show_all_evidence_command_help = "সমস্ত নিকটবর্তী বুলেট কেসিং প্রমাণ প্রদর্শন করুন।",
		show_all_evidence_command_substitutes = "প্রমাণ দেখুন, নির্দেশ দেখুন, প্রমাণ",

		population_density_command = "জনসংখ্যা_ঘনত্ব",
		population_density_command_help = "বিশ্বব্যাপী জনসংখ্যা ঘনত্ব গড়কে ওভাররাইড করুন।",
		population_density_command_parameter_multiplier = "গুণক",
		population_density_command_parameter_multiplier_help = "আপনি যে জনসংখ্যা ঘনত্ব গুণকটি সেট করতে চান তা সেট করুন। এটি খালি রেখে দিলে এটি বন্ধ হবে। বৈধ মান 0.0 থেকে 1.0 পর্যন্ত।",
		population_density_command_substitutes = "জনসংখ্যা, ঘনত্ব, জনসংখ্যাঘনত্ব, পপ",

		repair_vehicle_command = "গাড়ী_মেরামত",
		repair_vehicle_command_help = "আপনি যে গাড়িতে আছেন তা মেরামত করুন।",
		repair_vehicle_command_substitutes = "ঠিক করুন",

		enter_vehicle_command = "গাড়ি প্রবেশ করুন",
		enter_vehicle_command_help = "আপনার প্লেয়ার এসেট ফাঁকা করুন যখন আপনি গাড়ির কাছে নেকটা থাকবেন (যদি আপনি ইতিমধ্যে একটি গাড়ির ভেতর থাকেন তখন অবশ্যই তা থেকে বের হতে হবে)।",
		enter_vehicle_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		enter_vehicle_command_parameter_network_id_help = "আপনি যে গাড়িতে চলে যেতে চান সেটির নেটওয়ার্ক আইডি। (ঐচ্ছিক)",
		enter_vehicle_command_substitutes = "ইভি",

		set_modification_command = "সেট_মডিফিকেশন",
		set_modification_command_help = "আপনি কোন গাড়ির উপর মডিফিকেশন সেট করতে চাচ্ছেন সেই গাড়ির উপর সেট করুন।",
		set_modification_command_parameter_mod_type = "মড টাইপ",
		set_modification_command_parameter_mod_type_help = "সেট করতে চাইতে সকল মড টাইপের আইডি।",
		set_modification_command_parameter_mod_index = "মড আইডি",
		set_modification_command_parameter_mod_index_help = "আপনি যে মডটি সেট করতে চান তার আইডি।",
		set_modification_command_parameter_custom_tires = "কাস্টম টায়ার",
		set_modification_command_parameter_custom_tires_help = "কাস্টম টায়ার?",
		set_modification_command_substitutes = "এসএম",

		set_livery_command = "set_livery",
		set_livery_command_help = "আপনি যে গাড়িতে আছেন তার লিভারি সেট করুন।",
		set_livery_command_parameter_livery_index = "লিভারি আইডি",
		set_livery_command_parameter_livery_index_help = "আপনি সেট করতে চান লিভারির আইডি।",
		set_livery_command_substitutes = "",

		set_fake_plate_command = "সেট_জালি_নম্বর",
		set_fake_plate_command_help = "আপনি যেই গাড়ি ভিত্তিতে আছেন তার জালি নম্বর সেট করুন।",
		set_fake_plate_command_parameter_plate_number = "নম্বর প্লেট",
		set_fake_plate_command_parameter_plate_number_help = "আপনি সেট করতে চান নম্বর প্লেটটি।",
		set_fake_plate_command_substitutes = "প্লেট",

		set_dirt_level_command = "গন্দের_স্তর_সেট_করুন",
		set_dirt_level_command_help = "আপনি যেই গাড়ি ভিত্তিতে আছেন তা পরিষ্কার করুন।",
		set_dirt_level_command_parameter_dirt_level = "গন্দের স্তর",
		set_dirt_level_command_parameter_dirt_level_help = "আপনি যে স্তরে গন্দ সেট করতে চান (০ এবং ১৫ এর মধ্যে)।",
		set_dirt_level_command_substitutes = "এসডি",

		player_info_command = "প্লেয়ার_ইনফো",
		player_info_command_help = "নির্দিষ্ট কোনও খেলোয়াড়ের সম্পর্কে কিছু তথ্য ফেরত দেয়।",
		player_info_command_parameter_server_id = "সার্ভার আইডি",
		player_info_command_parameter_server_id_help = "আপনি আবিষ্কার করতে চান নির্দিষ্ট খেলোয়াড়ের সার্ভার আইডি। যদি ফাঁকা থাকে তবে নিজেকে নির্বাচন করা হয়।",
		player_info_command_substitutes = "খেলোয়াড়, পিআই",

		inventory_command = "ইনভেন্টরি",
		inventory_command_help = "নির্দিষ্ট ইনভেন্টরি খোলো।",
		inventory_command_parameter_inventory_name = "ইনভেন্টরি নাম",
		inventory_command_parameter_inventory_name_help = "আপনার খোলার ইনভেন্টরি নাম।",
		inventory_command_substitutes = "",

		character_inventory_command = "ক্যারেক্টার_ইনভেন্টরি",
		character_inventory_command_help = "একজন অন্যদের ইনভেন্টরি দেখায়।",
		character_inventory_command_parameter_server_id = "সার্ভার আইডি",
		character_inventory_command_parameter_server_id_help = "ঐ খেলোয়াড়ের সার্ভার আইডি।",
		character_inventory_command_substitutes = "জিপস",

		fake_disconnect_command = "মিথ্যা_ডিসকানেকশন",
		fake_disconnect_command_help = "একটি সিরিজ অব ইভেন্ট ত্রিগার করে এটি সেম করবে যে আপনি এখন সার্ভার থেকে ডিসকানেক্টেড। এটি আপনার নোক্লিপকে অন করবে যদি এটি প্রাথমিকভাবে চালু না হয়।",
		fake_disconnect_command_substitutes = "মিথ্যা_ছাড়া, dc",

		set_identity_command = "set_identity",
		set_identity_command_help = "আপনি প্লেয়ার নামটি ওভাররাইড করে দিতে পারেন।",
		set_identity_command_parameter_player_name = "প্লেয়ার নাম",
		set_identity_command_parameter_player_name_help = "নির্দিষ্ট করা নাম বা রিসেট করতে খালি।",
		set_identity_command_substitutes = "আইডেন্টিটি",

		disable_idle_cam_command = "disable_idle_cam",
		disable_idle_cam_command_help = "আইডল ক্যামেরা চালু করতে বন্ধ করে দেয়।",
		disable_idle_cam_command_substitutes = "disable_idle, idle",

		auto_drive_command = "অটো_ড্রাইভ",
		auto_drive_command_help = "সেট করা উইপয়েন্টে স্বয়ংক্রিয়ভাবে ড্রাইভ করে অথবা কোনও শুরু বিন্দু সেট না থাকলে এলোমেলো ড্রাইভ করে।",
		auto_drive_command_parameter_style = "স্টাইল",
		auto_drive_command_parameter_style_help = "ড্রাইভিং স্টাইল (সাধারণ, জলদস্ত, হিসু হিসু).",
		auto_drive_command_substitutes = "",

		drive_speed_command = "ড্রাইভ_গতি",
		drive_speed_command_help = "অটো ড্রাইভ কমান্ডের জন্য ক্রুজ গতি সেট করুন।",
		drive_speed_command_parameter_speed = "গতি",
		drive_speed_command_parameter_speed_help = "আপনি যে গতি সেট করতে চান (মাইল/ঘন্টা এ বি).",
		drive_speed_command_substitutes = "",

		toggle_weapon_attachment_command = "অস্ত্র সংযোগকে টগল করুন",
		toggle_weapon_attachment_command_help = "একটি হত্যার সংযোগকে টগল করে যা আপনি বর্তমানে ধরছেন।",
		toggle_weapon_attachment_command_parameter_attachment = "সংযোগ",
		toggle_weapon_attachment_command_parameter_attachment_help = "আপনি যে সংযোগটি টগল করতে চান।",
		toggle_weapon_attachment_command_substitutes = "হত্যার_সংযোগ, সংযোগ",

		set_weapon_tint_command = "হত্যারের টিন্ট সেট করুন",
		set_weapon_tint_command_help = "আপনি বর্তমানে ধরছেন হত্যার টিন্ট সেট বা সরানো করে।",
		set_weapon_tint_command_parameter_tint = "টিন্ট",
		set_weapon_tint_command_parameter_tint_help = "আপনি যে টিন্টটি সেট করতে চান (এখানে ফাঁকা রাখুন যদি সরানো চান)।",
		set_weapon_tint_command_substitutes = "সশস_টিন্ট, টিন্ট",

		set_item_name_override_command = "আইটেম_নাম_উল্লেখমান_দখল",
		set_item_name_override_command_help = "নির্দিষ্ট আইটেমের নাম ওভাররাইড সেট করে বা সরায় ফেলে।",
		set_item_name_override_command_parameter_slot = "স্লট",
		set_item_name_override_command_parameter_slot_help = "আপনি যে স্লট নং চান সেই আইটেমের নাম ওভাররাইড সেট করতে।",
		set_item_name_override_command_parameter_item_name = "আইটেমের নাম",
		set_item_name_override_command_parameter_item_name_help = "আপনি সেট করতে চান আইটেমের নাম ওভাররাইড (মুছতে চাইলে ফাঁকা রাখুন)।",
		set_item_name_override_command_substitutes = "set_name_override, name_override",

		set_durability_command = "দক্ষতা_নির্ধারণ_করুন",
		set_durability_command_help = "একটি নির্দিষ্ট স্লটে সকল আইটেমের দক্ষতা নির্ধারণ করে।",
		set_durability_command_parameter_slot = "স্লট",
		set_durability_command_parameter_slot_help = "কোন স্লটে আইটেমের দক্ষতা নির্ধারণ করতে হবে।",
		set_durability_command_parameter_amount = "পরিমাণ",
		set_durability_command_parameter_amount_help = "সেট করার জন্য ধৈর্যশীলতা পরিমাণ (ডিফল্ট ১০০).",
		set_durability_command_substitutes = "ধৈর্যশীলতা",

		set_metadata_command = "সেট_মেটাডাটা",
		set_metadata_command_help = "নির্দিষ্ট স্লটে সমস্ত আইটেমের মেটাডাটা সেট করে।",
		set_metadata_command_parameter_slot = "স্লট",
		set_metadata_command_parameter_slot_help = "কোন স্লটে আইটেমের ধৈর্যশীলতা নির্ধারণ করা হবে।",
		set_metadata_command_parameter_metadata = "মেটাডাটা",
		set_metadata_command_parameter_metadata_help = "সেট করার জন্য মেটাডাটা জেসন।",
		set_metadata_command_substitutes = "মেটাডাটা",

		refill_nitro_command = "নিট্রো_পূর্ণকরণ",
		refill_nitro_command_help = "আপনার গাড়ির নিট্রো ট্যাঙ্ক পূর্ণ করে।",
		refill_nitro_command_substitutes = "",

		register_weapon_command = "অস্ত্র_নিবন্ধন",
		register_weapon_command_help = "একটি বিশিষ্ট স্লট এবং নির্দিষ্ট ক্যারেক্টার আইডি একটি অস্ত্র নিবন্ধিত করে।",
		register_weapon_command_parameter_slot = "স্লট",
		register_weapon_command_parameter_slot_help = "স্লট যেখানে অস্ত্রটি রয়েছে।",
		register_weapon_command_parameter_character_id = "ক্যারেক্টার আইডি",
		register_weapon_command_parameter_character_id_help = "অস্ত্রটি নিবন্ধিত করতে চান সে ক্যারেক্টার আইডি।",
		register_weapon_command_substitutes = "",

		advanced_metagame_command = "advanced_metagame",
		advanced_metagame_command_help = "সুপারএডমিন কমান্ড যা আপনাকে মেটাগেমিং নেতি বাড়ানোর সাহায্য করবে।",
		advanced_metagame_command_substitutes = "am",

		list_weapon_attachments_command = "list_weapon_attachments",
		list_weapon_attachments_command_help = "আপনি যে শস্যটি ধরে আছেন তার টিন্ট সেট বা সরানোর জন্য।",
		list_weapon_attachments_command_substitutes = "weapon_attachments, attachments",

		wipe_first_owned_command = "wipe_first_owned",
		wipe_first_owned_command_help = "একটি নির্দিষ্ট গোপনীয়তা বজায় রেখে একজন প্লেয়ার প্রথমটি মালিকানাধীন সমস্ত ইণ্টিটি মুছে ফেলে।",
		wipe_first_owned_command_parameter_server_id = "সার্ভার আইডি",
		wipe_first_owned_command_parameter_server_id_help = "প্রাথমিক মালিকের সার্ভার আইডি।",
		wipe_first_owned_command_parameter_range = "পরিসীমা",
		wipe_first_owned_command_parameter_range_help = "আপনি যে পরিসীমার মধ্যে প্রতিষ্ঠানগুলি মুছতে চাচ্ছেন তা লিখুন বা সম্পূর্ণভাবে সব মুছতে খালি রাখুন।",
		wipe_first_owned_command_substitutes = "",

		freeze_command = "ফ্রিজ করুন",
		freeze_command_help = "একটি প্লেয়ার ফ্রিজ করে।",
		freeze_command_parameter_server_id = "সার্ভার আইডি",
		freeze_command_parameter_server_id_help = "আপনি যে প্লেয়ারকে ফ্রিজ করতে চান সেই প্লেয়ারের সার্ভার আইডি।",
		freeze_command_substitutes = "",

		unfreeze_command = "আনফ্রিজ",
		unfreeze_command_help = "একজন খেলোয়াড়কে আনফ্রিজ করে।",
		unfreeze_command_parameter_server_id = "সার্ভার আইডি",
		unfreeze_command_parameter_server_id_help = "আনফ্রিজ করতে চাইতে প্লেয়ারের সার্ভার আইডি।",
		unfreeze_command_substitutes = "",

		slap_command = "স্ল্যাপ",
		slap_command_help = "একজন খেলোয়াড়কে স্ল্যাপ মারে (তাকে হত্যা করে দেয়)।",
		slap_command_parameter_server_id = "সার্ভার আইডি",
		slap_command_parameter_server_id_help = "স্ল্যাপ দিতে চাইতে প্লেয়ারের সার্ভার আইডি।",
		slap_command_substitutes = "",

		damage_player_command = "প্লেয়ারের জীবনকে ক্ষতি করুন",
		damage_player_command_help = "একজন খেলোয়াড়কে ক্ষতি করে তার জীবন প্রদান করে।",
		damage_player_command_parameter_server_id = "সার্ভার আইডি",
		damage_player_command_parameter_server_id_help = "আপনি যার হিটপয়েন্ট করতে চান সে প্লেয়ারের সার্ভার আইডি।",
		damage_player_command_parameter_health = "হিটপয়েন্ট",
		damage_player_command_parameter_health_help = "আপনি কত হিটপয়েন্ট করতে চান তা উল্লেখ করুন।",
		damage_player_command_substitutes = "দূর্ঘটনা",

		scoop_command = "স্কুপ",
		scoop_command_help = "একটি নির্দিষ্ট ব্যাসার্ধে সব প্লেয়ারকে সংগ্রহ করে। (ব্যবহার করতে /অনির্দিষ্টস্থানে)",
		scoop_command_parameter_radius = "ব্যাসার্ধি",
		scoop_command_parameter_radius_help = "আপনি কোন ব্যাসার্ধে প্লেয়ারদের সংগ্রহ করতে চান তা উল্লেখ করুন। (২ডি)।",
		scoop_command_substitutes = "",

		unscoop_command = "আনস্কুপ",
		unscoop_command_help = "আপনি আগে জিনিসপত্রের সাহায্যে উঠিয়ে নিয়া ছিলেন সকল খেলোয়ারকে আপনার বর্তমান অবস্থানে টেলিপোর্ট করে।",
		unscoop_command_parameter_revive = "রিভাইভ",
		unscoop_command_parameter_revive_help = "উঠিয়ে নিয়া যে খেলোয়াররা অবস্থান্তর অবস্থায় আছে তাদের উদ্ধার করে ফিরিয়ে দিবেন।",
		unscoop_command_substitutes = "",

		peek_command = "পিক",
		peek_command_help = "পিক এমন সকল অদৃশ্য খেলোয়ারদের তালিকা উপস্থাপন করে যারা আপনার সবচেয়ে নিকটবর্তী অবস্থানে আছে (আপনিও অন্তর্দৃষ্টি খেলোয়াড় হিসাবে থাকতে পারেন)।",
		peek_command_substitutes = "",

		hit_indicator_command = "হিটইন্ডিকেটর",
		hit_indicator_command_help = "কাস্টম ক্রসহেয়ার ব্যবহার করলে এই কমান্ডটি হিট ইন্ডিকেটর চালু/বন্ধ করবে।",
		hit_indicator_command_substitutes = "",

		trigger_ems_call_command = "ট্রিগার_ইএমএস_কল",
		trigger_ems_call_command_help = "আপনার অবস্থান থেকে স্থানীয় ইএমএস কল পাঠায়।",
		trigger_ems_call_command_substitutes = "",

		-- base/anti_cheat
		model_detect_add_command = "মডেল_পাতা_যোগ_করুণ",
		model_detect_add_command_help = "একটি মডেলকে জাঁচের তালিকাতে অস্থায়ীভাবে যুক্ত করুন। তালিকা সার্ভার পুনরায় চালু করার পর পুনরায় সেট করা হয়।",
		model_detect_add_command_parameter_model = "মডেল",
		model_detect_add_command_parameter_model_help = "আপনি যেই মডেলটি চেক করতে চান তা হতে পারে মডেল নাম এবং মডেল হ্যাশ উভয়।",
		model_detect_add_command_substitutes = "চেক_করে_নিন",

		model_detect_remove_command = "model_detect_remove",
		model_detect_remove_command_help = "ডিটেকশন লিস্ট থেকে একটি মডেল সরানো।",
		model_detect_remove_command_parameter_model = "মডেল",
		model_detect_remove_command_parameter_model_help = "আপনি যে মডেলটি সরাতে চান সেটি হতে পারে একটি মডেল নাম এবং মডেল হ্যাশ উভয়।",
		model_detect_remove_command_substitutes = "ডিটেকশন-বাতিল",

		detection_area_add_command = "detection_area_add",
		detection_area_add_command_help = "একটি এলাকা তৈরি করুন যেখানে সমস্ত স্পন করা ইউনিট এর তথ্য আপনাকে প্রেরণ করা হবে। তথ্য ওভারভিউ UI তে পাওয়া যাবে।",
		detection_area_add_command_parameter_radius = "রেডিয়াস",
		detection_area_add_command_parameter_radius_help = "ইতিমধ্যে চেক করা যাবে যে কোনও একটি দৈর্ঘ্যের বৃত্তের মধ্যে কেন্দ্রকে ব্যক্তিগতভাবে চেক করতে যাই। সর্বনিম্ন মান `10` এবং সর্বাধিক মান হল `5000`। এটি ফাঁকা রেখে দিলে এর মূল্য `100` হবে।",
		detection_area_add_command_substitutes = "এলাকা_যোগ_করুন",

		detection_area_remove_command = "ডিটেকশন_এলাকা_সরান",
		detection_area_remove_command_help = "ডিটেকশন এলাকা সরানো হয়েছে।",
		detection_area_remove_command_parameter_area_id = "ডিটেকশন এলাকা আইডি",
		detection_area_remove_command_parameter_area_id_help = "আপনি যে ডিটেকশন এলাকা মুছতে চান তার আইডি।",
		detection_area_remove_command_substitutes = "এলাকা_মুছুন",

		screen_text_debug_command = "স্ক্রিন-টেক্সট ডিবাগ",
		screen_text_debug_command_help = "স্ক্রিন-টেক্সট অস্বস্তিতা রেক্টেঙ্গগুলির উপর ডিবাগ করুন।",
		screen_text_debug_command_substitutes = "স্ক্রিন-টেক্সট",

		-- base/commands
		help_command = "হেল্প",
		help_command_help = "সমস্ত উপলব্ধ কমান্ড দেখান।",
		help_command_substitutes = "",

		substitutes_command = "উপস্থাপক",
		substitutes_command_help = "সমস্ত উপস্থাপক দেখান।",
		substitutes_command_substitutes = "",

		-- base/discord
		richer_presence_command = "সমৃদ্ধ উপস্থিতি",
		richer_presence_command_help = "সমৃদ্ধ উপস্থিতি টগল করুন যা রিচ উপস্থিতিতে আরও তথ্য যুক্ত করে, যেমন লোড করা ক্যারেক্টার।",
		richer_presence_command_substitutes = "",

		-- base/emojis
		emojis_list_command = "এমোজি_তালিকা",
		emojis_list_command_help = "সমস্ত উপলব্ধ এমোজি তালিকা দেখান।",
		emojis_list_command_substitutes = "এমোজিস",

		emojis_refresh_command = "এমোজি_তাজা_করুন",
		emojis_refresh_command_help = "উপলব্ধ এমোজি তাজা করুন। এটি সর্বশেষ তালিকা ডিসকর্ড গিল্ড থেকে নিয়ে আসবে।",
		emojis_refresh_command_substitutes = "",

		-- base/ping
		get_pings_command = "পিং_লিস্ট",
		get_pings_command_help = "বিভিন্ন হোস্ট সারাদেশে গড় পিং পান এবং এই সার্ভারের বর্তমান গেমারদের জন্য সবচেয়ে উপযোগী হোস্ট অবস্থান খুঁজে নেওয়ার জন্য।",
		get_pings_command_substitutes = "",

		-- base/profile
		profile_debug_command = "প্রোফাইল_ডিবাগ_কমান্ড",
		profile_debug_command_help = "প্রোফাইল ডিবাগার টগল করুন।",
		profile_debug_command_substitutes = "",

		-- base/users
		playtime_command = "প্লেটাইম",
		playtime_command_help = "এই সার্ভারে মোট প্লেটাইম এবং এই সেশনে প্লেটাইম চেক করুন।",
		playtime_command_parameter_server_id = "সার্ভার আইডি",
		playtime_command_parameter_server_id_help = "আপনি কোন প্লেয়ারের প্লেটাইম পেতে চান সেই প্লেয়ারের সার্ভার আইডি ছেড়ে দিতে পারেন। আপনি নিজেকে নির্বাচন করতেও পারেন। সেটি খালি অথবা `0` এ রাখতে পারেন।",
		playtime_command_substitutes = "",

		leaderboard_command = "লিডারবোর্ড",
		leaderboard_command_help = "প্লেটাইম লিডারবোর্ড চেক করুন।",
		leaderboard_command_substitutes = "",

		package_command = "প্যাকেজ",
		package_command_help = "আপনার পেকেজগুলি পরীক্ষা এবং তা রিফ্রেশ করুন।",
		package_command_substitutes = "refresh_package",

		player_packages_command = "player_packages",
		player_packages_command_help = "আপনার অব্যবহৃত 'প্লেয়ার প্যাকেজ' গুলি পেতে।",
		player_packages_command_substitutes = "",

		unload_character_command = "unload_character",
		unload_character_command_help = "খেলোয়াড়ের চরিত্র আনলোড করুন।",
		unload_character_command_parameter_server_id = "সার্ভার আইডি",
		unload_character_command_parameter_server_id_help = "আপনি যার কারেক্টার আনলোড করতে চান তার প্রতি সার্ভার আইডি। আপনি এটি ফাঁকা বা `0` -এ রাখতে পারেন নিজেকে নির্বাচন করতে।",
		unload_character_command_parameter_message = "বার্তা",
		unload_character_command_parameter_message_help = "যদি আপনি লগইন মেনুতে প্লেয়ারকে দেখানোর জন্য একটি বার্তা প্রদর্শন করতে চান তবে এখানে টাইপ করুন।",
		unload_character_command_substitutes = "আনলোড",

		-- game/admin_menu
		admin_command = "অ্যাডমিন",
		admin_command_help = "অ্যাডমিন মেনু খুলে।",
		admin_command_substitutes = "",

		tp_player_command = "tp_player",
		tp_player_command_help = "প্লেয়ারকে একটি টেলিপোর্ট করে।",
		tp_player_command_parameter_server_id = "সার্ভার আইডি",
		tp_player_command_parameter_server_id_help = "আপনি কোন প্লেয়ারকে টেলিপোর্ট করতে চান তার সার্ভার আইডি।",
		tp_player_command_substitutes = "",

		tp_here_command = "tp_here",
		tp_here_command_help = "একজন খেলোয়াড়কে আপনার কাছে টেলিপোর্ট করে।",
		tp_here_command_parameter_server_id = "সার্ভার আইডি",
		tp_here_command_parameter_server_id_help = "আপনি যার কাছে টেলিপোর্ট করতে চান তার সার্ভার আইডি।",
		tp_here_command_substitutes = "",

		tp_to_command = "tp_to",
		tp_to_command_help = "একজন খেলোয়াড়কে অন্য একজন খেলোয়াড়ের কাছে টেলিপোর্ট করে।",
		tp_to_command_parameter_source_id = "উৎস আইডি",
		tp_to_command_parameter_source_id_help = "আপনি যার কাছ থেকে টেলিপোর্ট করতে চান তার আইডি।",
		tp_to_command_parameter_destination_id = "গন্তব্য আইডি",
		tp_to_command_parameter_destination_id_help = "আপনি যে খেলোয়াড়কে টেলিপোর্ট করতে চান তার আইডি।",
		tp_to_command_substitutes = "",

		-- game/airdrops
		create_airdrop_command = "এয়ারড্রপ_তৈরি_করুন",
		create_airdrop_command_help = "একটি এয়ারড্রপ তৈরি করুন।",
		create_airdrop_command_parameter_airdrop_type = "এয়ারড্রপের ধরণ",
		create_airdrop_command_parameter_airdrop_type_help = "আপনি যে ধরণের এয়ারড্রপ তৈরি করতে চান। (সশস্ত্র, ড্রাগ, মেডিকেল, সরঞ্জাম, স্পর্শ উপকরণ, মূল্যবান দক্ষতা, খাবার)",
		create_airdrop_command_parameter_item_amount = "একটি আইটেমের পরিমাণ",
		create_airdrop_command_parameter_item_amount_help = "এয়ারড্রপটি কতগুলি আইটেম ধারণ করবে তা নির্ধারণ করুন।",
		create_airdrop_command_substitutes = "",

		-- game/airstrike
		call_airstrike_command = "এয়ারস্ট্রাইক_কল",
		call_airstrike_command_help = "আপনার বর্তমান অবস্থানে একটি এয়ারস্ট্রাইক কল করে।",
		call_airstrike_command_substitutes = "",

		-- game/airsupport
		airsupport_command = "বায়ুসহায়ত্য",
		airsupport_command_help = "বায়ুসহায়ত্য কল করে।",
		airsupport_command_substitutes = "",

		-- game/alerts
		show_alert_command = "সতর্ক দেখান",
		show_alert_command_help = "একজন ব্যবহারকারীর জন্য বা সবাইর জন্য একটি সতর্কতা দেখায়।",
		show_alert_command_parameter_server_id = "সার্ভার আইডি",
		show_alert_command_parameter_server_id_help = "আপনি যার কাছে আলার্ট দেখাতে চান তার সার্ভার আইডি।",
		show_alert_command_parameter_content = "বিষয়বস্তু",
		show_alert_command_parameter_content_help = "সতর্কতার বিষয়বস্তু।",
		show_alert_command_substitutes = "সতর্কতা",

		-- game/archives
		create_archive_command = "আর্কাইভ_তৈরি_করুন",
		create_archive_command_help = "আপনি যে আর্কাইভে নিকটতমভাবে দাঁড়িছেন সেটিতে একটি নতুন কেস তৈরি করে।",
		create_archive_command_parameter_case_number = "কেস নম্বর",
		create_archive_command_parameter_case_number_help = "কেস নম্বর (পূর্ণসংখ্যা যা 1 থেকে 99,999 এর মধ্যে অবস্থিত হবে)।",
		create_archive_command_substitutes = "",

		destroy_archive_command = "আর্কাইভ_ধ্বংস_করুন",
		destroy_archive_command_help = "আপনি যে আর্কাইভে নিকটতমভাবে দাঁড়িছেন সেখানে একটি বিদ্যমান কেস ধ্বংস করুন।",
		destroy_archive_command_parameter_case_number = "কেস নম্বর",
		destroy_archive_command_parameter_case_number_help = "কেস নম্বর। (খালি কেসগুলি মাত্র ধ্বংস করতে পারবেন)",
		destroy_archive_command_substitutes = "",

		-- game/arena
		respawn_command = "পুনর্জন্ম",
		respawn_command_help = "আপনার নিজেকে হত্যা করুন। (সংগঠনের জন্য)",
		respawn_command_substitutes = "সুইসাইড",

		-- game/audio
		audio_debug_command = "অডিও_ডিবাগ",
		audio_debug_command_help = "অডিও ডিবাগ চালু করুন।",
		audio_debug_command_substitutes = "",

		play_audio_command = "অডিও_চালান",
		play_audio_command_help = "প্লেয়ার বা সমস্ত প্লেয়ারদের জন্য একটি অডিও চালান।",
		play_audio_command_parameter_url = "URL",
		play_audio_command_parameter_url_help = "অডিও ডাউনলোড করার ইউআরএল।",
		play_audio_command_parameter_volume = "ভলিউম",
		play_audio_command_parameter_volume_help = "অডিও যে ভলিউমে প্লে করা হবে তা নির্দিষ্ট করুন। বৈধ মান হল `0` থেকে `1`। এই মানটি ডিফল্ট হিসাবে `0.1` হবে।",
		play_audio_command_parameter_server_id = "সার্ভার আইডি",
		play_audio_command_parameter_server_id_help = "আপনি কোন প্লেয়ারকে এই অডিও প্লে করতে চান তা নির্দিষ্ট করুন। আপনি সমস্ত প্লেয়ারের ক্ষেত্রে `-1` দিতে পারেন।",
		play_audio_command_substitutes = "",

		-- game/bandaids
		random_bandaid_command = "এলোমেলো_ব্যান্ডেজ",
		random_bandaid_command_help = "আপনাকে একটি এলোমেলো ব্যান্ডএড দেবে। :)",
		random_bandaid_command_substitutes = "ব্যান্ডএড",

		-- game/battle_royale
		battle_royale_toggle_command = "battle_royale_toggle",
		battle_royale_toggle_command_help = "ব্যাটেল রয়েল বৈশিষ্ট্য চালু/বন্ধ করুন।",
		battle_royale_toggle_command_substitutes = "br_toggle",

		battle_royale_start_command = "battle_royale_start",
		battle_royale_start_command_help = "একটি ব্যাটেল রয়েল ম্যাচ শুরু করুন।",
		battle_royale_start_command_parameter_no_vehicles = "কোন গাড়ি",
		battle_royale_start_command_parameter_no_vehicles_help = "যেকোনো গাড়ি ছাড়াই একটি ম্যাচ তৈরি করুন।",
		battle_royale_start_command_substitutes = "br_start",

		battle_royale_invite_command = "battle_royale_invite",
		battle_royale_invite_command_help = "একজন খেলোয়াড়কে আপনার ব্যাটেল রয়েল লবি তে আমন্ত্রণ করুন।",
		battle_royale_invite_command_parameter_server_id = "সার্ভার আইডি",
		battle_royale_invite_command_parameter_server_id_help = "আপনি যাকে আমন্ত্রণ করতে চান তার সার্ভার আইডি।",
		battle_royale_invite_command_substitutes = "br_invite",

		battle_royale_join_command = "battle_royale_join",
		battle_royale_join_command_help = "খেলোয়াড়ের ব্যাটেল রয়েল লবি এ যোগদান করুন।",
		battle_royale_join_command_parameter_server_id = "সার্ভার আইডি",
		battle_royale_join_command_parameter_server_id_help = "আপনি যে খেলোয়াড়ের সাথে যোগদান করতে চান সেই খেলোয়াড়ের সার্ভার আইডি।",
		battle_royale_join_command_substitutes = "br_join",

		battle_royale_leave_command = "battle_royale_leave",
		battle_royale_leave_command_help = "আপনি যে ব্যাটল রয়েল লবি থাকেন সেটি থেকে বের হতে।",
		battle_royale_leave_command_substitutes = "br_leave",

		battle_royale_join_instance_command = "battle_royale_join_instance",
		battle_royale_join_instance_command_help = "একজন খেলোয়াড়ের ব্যাটল রয়েল ইন্সট্যান্সে যোগদান করুন।",
		battle_royale_join_instance_command_parameter_server_id = "সার্ভার আইডি",
		battle_royale_join_instance_command_parameter_server_id_help = "প্লেয়ারের সার্ভার আইডি যেখানে তিনি ইন্সট্যান্স যুক্ত হতে চান।",
		battle_royale_join_instance_command_substitutes = "br_join_instance",

		battle_royale_leave_instance_command = "battle_royale_leave_instance",
		battle_royale_leave_instance_command_help = "আপনি যেই ইন্সট্যান্সে যোগদান করেছেন সেটি ছেড়ে দিন।",
		battle_royale_leave_instance_command_substitutes = "br_leave_instance",

		-- game/beds
		bed_command = "বিছানা",
		bed_command_help = "নিকটতম বিছানায় শয়নে আসার চেষ্টা করুন।",
		bed_command_substitutes = "",

		-- game/bombs
		toggle_bombs_command = "বোমা টগল করুন",
		toggle_bombs_command_help = "আপনার বর্তমান বিমানে বোমাদি টগল করে।",
		toggle_bombs_command_substitutes = "",

		toggle_ignition_bomb_command = "toggle_ignition_bomb",
		toggle_ignition_bomb_command_help = "আপনি যে যানবাহনে আছেন তার জন্য ইগনিশন বোমাটি টগল করে (ইঞ্জিন চালু করলে গাড়ি উড়ে যাবে)।",
		toggle_ignition_bomb_command_substitutes = "ignition_bomb",

		-- game/boomboxes
		wipe_boomboxes_command = "wipe_boomboxes",
		wipe_boomboxes_command_help = "বুমবক্স মুছে ফেলুন।",
		wipe_boomboxes_command_parameter_radius = "radius",
		wipe_boomboxes_command_parameter_radius_help = "মুছার ব্যাস। এটি খালি রাখা হলে অটোমেটিকভাবে `100` বাছাই হবে। `0` এবং `-1` সম্পূর্ণ সকল ইনভেন্টরি বাছাই করে। বৈধ মান হল `0` এর উপরে এবং `0` এর বর্ধিত।",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "বুমবক্স আঁকান",
		draw_boomboxes_command_help = "বুমবক্স আঁকান।",
		draw_boomboxes_command_substitutes = "",

		-- game/boosting
		spawn_contract_command = "কনট্রাক্ট উত্পন্ন করুন",
		spawn_contract_command_help = "একটি বুস্টিং কনট্রাক্ট উত্পন্ন করুন।।",
		spawn_contract_command_parameter_server_id = "সার্ভার আইডি",
		spawn_contract_command_parameter_server_id_help = "আপনি যে সার্ভার বা সার্ভার আইডি দিতে চান সেটি উল্লেখ করুন। যদি ফাঁকা থাকে, তখন স্বয়ংক্রিয়ভাবে আপনাকে নির্বাচন করা হবে।",
		spawn_contract_command_substitutes = "",

		-- game/cache
		cache_assets_command = "এক্টিভ সম্পদ ক্যাশ",
		cache_assets_command_help = "যদি আপনার সংযোগ ধীর হয় এবং সম্পদগুলি চালু হওয়ার কাছে সংযোগ টানে না, তবে আপনি সকল স্ট্রিম করা সম্পদ (যানবাহন, বস্তু এবং জামা) জোরাক্ত অনুরোধ এবং ডাউনলোড করতে পারেন। এটি সুস্থিত নয় যখন এটি ক্রিয়াশীল হবে, ক্লায়েন্ট ক্র্যাশ হওয়া সম্ভব।",
		cache_assets_command_parameter_slow_download = "মন্থর ডাউনলোড",
		cache_assets_command_parameter_slow_download_help = "আপনি কি ক্যেশ এসেটগুলি ধীরে ধীরে করতে চান? এটি খুব বেশি সময় লাগবে, কিন্তু এর মাধ্যমে ক্র্যাশিং এর সম্ভাবনা কমে যাবে।",
		cache_assets_command_substitutes = "ডাউনলোড_সুরক্ষিত, প্রিলোড_সুরক্ষিত, ক্যাশ_লোড",

		-- game/camera
		stable_cam_command = "স্থির ক্যাম",
		stable_cam_command_help = "স্থির ক্যাম চালু / বন্ধ করে।",
		stable_cam_command_substitutes = "",

		-- game/cargo
		cargo_start_command = "cargo_start",
		cargo_start_command_help = "বিশ্বব্যাপী কার্গো ডাকাতি শুরু করুন।",
		cargo_start_command_substitutes = "কার্গো_শুরু",

		cargo_end_command = "cargo_end",
		cargo_end_command_help = "বিশ্বব্যাপী কার্গো ডাকাতি সমাপ্ত করুন।",
		cargo_end_command_substitutes = "end_cargo",

		cargo_debug_command = "cargo_debug",
		cargo_debug_command_help = "কার্গো ডিবাগ চালু / বন্ধ করুন।",
		cargo_debug_command_substitutes = "",

		cargo_debug_peds_command = "cargo_debug_peds",
		cargo_debug_peds_command_help = "কার্গো পেডস ডিবাগ চালু / বন্ধ করুন।",
		cargo_debug_peds_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "set_casino_screens",
		set_casino_screens_command_help = "ক্যাসিনো স্ক্রীন নির্ধারণ করুন।",
		set_casino_screens_command_parameter_screen_label = "স্ক্রীন লেবেল",
		set_casino_screens_command_parameter_screen_label_help = "আপনি যে স্ক্রীন নির্ধারিত করতে চান তার লেবেল। উপলব্ধ স্ক্রীন লেবেল হল: `diamonds`, `skulls`, `snowflakes` এবং `winner`।",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "টগল_কায়ো_পেরিকো",
		toggle_cayo_perico_command_help = "কায়ো পেরিকো দ্বীপটি টগল করুন।",
		toggle_cayo_perico_command_substitutes = "দ্বীপ_টগল, দ্বীপ",

		-- game/cayo_perico_world
		cayo_perico_command = "কায়ো_পেরিকো",
		cayo_perico_command_help = "কায়ো পেরিকোর 'বিশ্ব' এ প্রবেশ ও প্রস্থানের সাহায্য টগল করুন।",
		cayo_perico_command_substitutes = "",

		-- game/cinema
		cinema_blacklist_add_command = "cinema_blacklist_add",
		cinema_blacklist_add_command_help = "স্থানীয় সিনেমা ব্ল্যাকলিস্টে একটি ভিডিও যুক্ত করুন।",
		cinema_blacklist_add_command_parameter_video_key = "ভিডিও কী",
		cinema_blacklist_add_command_parameter_video_key_help = "আপনি যে ভিডিওটি স্বরক্ষার করতে চান তার ভিডিও কী। উদাহরণ: 'youtube:dQw4w9WgXcQ'",
		cinema_blacklist_add_command_substitutes = "",

		cinema_screens_debug_command = "cinema_screens_debug",
		cinema_screens_debug_command_help = "সিনেমা স্ক্রীণগুলি ডিবাগ করুন।",
		cinema_screens_debug_command_substitutes = "",

		cinema_focus_command = "cinema_focus",
		cinema_focus_command_help = "একটি ভাল দর্শন অভিজ্ঞতার জন্য সর্বনিকটের সিনেমা স্ক্রীনে ফোকাস করেন।",
		cinema_focus_command_substitutes = "focus_cinema",

		-- game/cinematic
		cinematic_command = "cinematic",
		cinematic_command_help = "সিনেমাটিক কালো বার চালু/বন্ধ করুন।",
		cinematic_command_parameter_bar_height = "বারের উচ্চতা",
		cinematic_command_parameter_bar_height_help = "বারের উচ্চতা। ০ থেকে ৫০ (শতকরা) পর্যন্ত হতে হবে। ডিফল্ট হাইট হল ১০। খালি ছেড়ে দিলে এটি আপনি শেষ বারে ব্যবহার করা মানের সেট করে দিবে।",
		cinematic_command_substitutes = "সিনেমা, c, cin",

		-- game/clothing_menu
		clothing_command = "পোশাক",
		clothing_command_help = "আপনার বা অন্যকে পোশাক মেনু ওপেন করে।",
		clothing_command_parameter_server_id = "সার্ভার আইডি",
		clothing_command_parameter_server_id_help = "আপনি যার জন্য পোশাক মেনু ওপেন করতে চান তার সার্ভার আইডি।",
		clothing_command_substitutes = "",

		barber_command = "বার্বার",
		barber_command_help = "আপনার বা অন্য কোন খেলোয়াড়কে বার্বার দোকানের মেনু খুলতে সাহায্য করে।",
		barber_command_parameter_server_id = "সার্ভার আইডি",
		barber_command_parameter_server_id_help = "আপনি কোন খেলোয়ার বার্বার দোকানের মেনু খুলতে চান তার সার্ভার আইডি।",
		barber_command_substitutes = "",

		-- game/clothing
		save_outfit_command = "আউটফিট_সংরক্ষণ_করুন",
		save_outfit_command_help = "আপনার বর্তমান পোশাককে একটি আউটফিট হিসাবে সংরক্ষণ করে।",
		save_outfit_command_parameter_name = "নাম",
		save_outfit_command_parameter_name_help = "আউটফিটের নাম।",
		save_outfit_command_substitutes = "",

		delete_outfit_command = "পোষাকতালিকা_মুছুন",
		delete_outfit_command_help = "নির্দিষ্ট পোষাকতালিকা মুছুন।",
		delete_outfit_command_parameter_name = "নাম",
		delete_outfit_command_parameter_name_help = "পোষাকতালিকার নাম।",
		delete_outfit_command_substitutes = "",

		share_outfit_command = "পোষাকতালিকা_ভাগাভাগি",
		share_outfit_command_help = "একজন অন্য গেম প্লেয়ারকে পোষাকতালিকা ভাগাভাগি করুন (যদি একটি পোষাক দোকানের কাছাকাছি থাকেন)।",
		share_outfit_command_parameter_server_id = "সার্ভার আইডি",
		share_outfit_command_parameter_server_id_help = "আপনি যার সাথে পোষাকতালিকা ভাগাভাগি করতে চান তার গেম আইডি।",
		share_outfit_command_parameter_hairstyle = "চুলের স্টাইল",
		share_outfit_command_parameter_hairstyle_help = "যদি আপনি চুলের স্টাইল এবং রং (`0` বা `false` না হওয়া করতে চান তবে এটি লিখুন).",
		share_outfit_command_parameter_makeup = "মেকআপ",
		share_outfit_command_parameter_makeup_help = "যদি আপনি মেকআপ সহ করতে চান (`0` বা `false` না হওয়া করতে চান তবে এটি লিখুন).",
		share_outfit_command_substitutes = "",

		steal_outfit_command = "ষ্টিল আউটফিট",
		steal_outfit_command_help = "একটি অন্যদের আউটফিট চুরি করে নিন।",
		steal_outfit_command_parameter_server_id = "সার্ভার আইডি",
		steal_outfit_command_parameter_server_id_help = "খেলোয়ার সার্ভার আইডি লিখুন।",
		steal_outfit_command_parameter_hairstyle = "হেয়ারস্টাইল",
		steal_outfit_command_parameter_hairstyle_help = "যদি আপনি খেলোয়াড়ের হেয়ারস্টাইল কপি করতে চান।",
		steal_outfit_command_parameter_makeup = "মেকআপ",
		steal_outfit_command_parameter_makeup_help = "যদি আপনি খেলোয়াড়ের মেকআপ কপি করতে চান।",
		steal_outfit_command_substitutes = "",

		steal_shoes_command = "জুতা_চুরি",
		steal_shoes_command_help = "নিকটবর্তী পতিত খেলোয়াড়ের জুতা চুরি করে।",
		steal_shoes_command_substitutes = "",

		outfit_command = "উড়ন্ন_পোশাক",
		outfit_command_help = "একটি পোশাক পরিবর্তন করুন যখন একটি পোশাক দোকানের কাছাকাছি হবেন।",
		outfit_command_parameter_outfit = "পোশাক",
		outfit_command_parameter_outfit_help = "পোশাকের নাম।",
		outfit_command_parameter_force = "ফোর্স",
		outfit_command_parameter_force_help = "পোশাক স্পট চেক করতে না হওয়া এবং অ্যানিমেশন চালাতে না।",
		outfit_command_substitutes = "",

		outfits_command = "পোশাকসমূহ",
		outfits_command_help = "সমস্ত সংরক্ষিত পোশাকের তালিকা দেখানো হচ্ছে।",
		outfits_command_substitutes = "",

		-- game/command_socket
		reconnect_command_socket_command = "কমান্ড সকেট পুনরায় সংযোগ করুন",
		reconnect_command_socket_command_help = "কমান্ড সকেটে পুন: সংযোগ করার চেষ্টা করা হয়।",
		reconnect_command_socket_command_substitutes = "",

		-- game/crafting
		crafting_debug_command = "ব্যবস্থাপনা_ডিবাগ",
		crafting_debug_command_help = "সমস্ত ক্রাফটিং স্থানের ডিবাগ করে।",
		crafting_debug_command_substitutes = "",

		-- game/crashes
		crash_command = "ক্র্যাশ",
		crash_command_help = "একটি কৃত্রিম ক্র্যাশ ট্রিগার করুন।",
		crash_command_parameter_server_id = "সার্ভার আইডি",
		crash_command_parameter_server_id_help = "এটি ছাড়াও রাখলে স্বয়ংক্রিয়ভাবে স্বয়ংক্রিয়ভাবে নির্বাচিত হবে। আপনি যে ব্যবহারকারীর ক্র্যাশ ট্রিগার করতে চান সেই ব্যবহারকারীর সার্ভার আইডি।",
		crash_command_substitutes = "",

		-- game/crosshair
		customize_crosshair_command = "ক্রসহেয়ার কাস্টমাইজ করুন",
		customize_crosshair_command_help = "ক্রসহেয়ার কাস্টমাইজেশন মেনু খুলুন।",
		customize_crosshair_command_substitutes = "",

		copy_crosshair_command = "ক্রসহেয়ার কপি করুন",
		copy_crosshair_command_help = "ক্লিপবোর্ডে আপনার বর্তমান ক্রসহেয়ার সেটিংস কপি করে।",
		copy_crosshair_command_substitutes = "",

		import_crosshair_command = "import_crosshair",
		import_crosshair_command_help = "একটি ক্রসহেয়ার কনফিগ আমদানি করুন বা কাস্টম ক্রসহেয়ার নিষ্ক্রিয় করুন।",
		import_crosshair_command_parameter_config = "config",
		import_crosshair_command_help_parameter_config_help = "কনফিগ বা খালি থাকলে কাস্টম ক্রসহেয়ার নিষ্ক্রিয় করুন।",
		import_crosshair_command_substitutes = "",

		-- game/culling
		culling_debug_command = "culling_debug",
		culling_debug_command_help = "কালিং ডিবাগ চালু / বন্ধ করুন।",
		culling_debug_command_substitutes = "",

		-- game/daily_activities
		reset_daily_activities_command = "reset_daily_activities",
		reset_daily_activities_command_help = "আপনার দৈনিক কাজসমূহ রিসেট করুন।",
		reset_daily_activities_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "ইউনিট_আইডি",
		unit_id_command_help = "আপনার ইউনিট আইডি সেট করুন।",
		unit_id_command_parameter_unit_id = "ইউনিট আইডি",
		unit_id_command_parameter_unit_id_help = "আপনার ইউনিট আইডি। এটি ১ থেকে ৯৯৯ এর মধ্যে একটি ইন্টিজার হতে হবে।",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "ডিবাগ",
		debug_command_help = "এন্টিটি-ডিবাগার টগল করুন। এটি আসলে আপনার কাছে নিকটবর্তী এন্টিটি সম্পর্কে কিছু সাধারণ তথ্য দেখাবে।",
		debug_command_substitutes = "",

		npc_debug_command = "নিপক্ষ_ডিবাগ",
		npc_debug_command_help = "আপনার কাছে নয় প্রাণী না হওয়া সকল এনপিসি ডিবাগ করে।",
		npc_debug_command_substitutes = "npcসমস্যা",

		network_debug_command = "network_debug",
		network_debug_command_help = "ইউনিটি-নেটওয়ার্ক-ডিবাগার চালু / বন্ধ করুন। এটি আপনি দেখছেন ইউনিটির নেটওয়ার্ক সম্পর্কিত কিছু তথ্য প্রদর্শন করবে।",
		network_debug_command_substitutes = "net_debug, ndebug",

		attach_command = "আটাচ",
		attach_command_help = "বস্তু আটাচ টুল টগল করুন। এটি আপনাকে আপনার পেড়ের উপর একটি আটাচড বস্তুটি ভুমিতে তুলে ধরার সাহায্য করবে।",
		attach_command_parameter_model_name = "মডেল নাম",
		attach_command_parameter_model_name_help = "আপনি যে মডেলটি লাগাতে চান সেটি নাম।",
		attach_command_parameter_bone_id = "হাড় আইডি",
		attach_command_parameter_bone_id_help = "আপনি যখন অবজেক্ট লাগাতে চান সেই হাড় আইডি ব্যবহার করতে চান। ডিফল্ট হাড় আইডি এর জন্য এটি ফাঁকা রাখা যেতে পারে।",
		attach_command_substitutes = "",

		position_command = "অবস্থান",
		position_command_help = "আপনার বর্তমান অবস্থানটি একটি টেক্সট ফাইলে সংরক্ষন করুন।",
		position_command_parameter_label = "লেবেল",
		position_command_parameter_label_help = "গবেষণার সাথে সংরক্ষিত করতে একটি ঐচ্ছিক লেবেল।",
		position_command_substitutes = "অবস্থান, স্থানান্তর করা",

		save_commands_list_command = "save_commands_list",
		save_commands_list_command_help = "সম্ভব সকল উপলভ্য অপ-এফডাব্লিউ কমান্ডের একটি তালিকা সংরক্ষণ করে।",
		save_commands_list_command_substitutes = "",

		save_vehicle_data_command = "save_vehicle_data",
		save_vehicle_data_command_help = "যানবাহন সম্পর্কিত তথ্য সংরক্ষণ করে।",
		save_vehicle_data_command_substitutes = "",

		draw_radius_command = "ব্যাসার্ধ",
		draw_radius_command_help = "ব্যাসার্ধ আঁকা।",
		draw_radius_command_parameter_radius = "ব্যাসার্ধ",
		draw_radius_command_parameter_radius_help = "আপনি যে ব্যাসার্ধটি আঁকতে চান তা।",
		draw_radius_command_substitutes = "",

		inject_code_command = "ইনজেক্ট_কোড",
		inject_code_command_help = "কারো ক্লায়েন্ট এ কোড ইনজেক্ট করুন।",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "কোড ইনজেক্ট করতে থাকা টেক্সট ফাইল এর লিঙ্কের ঠিকানা।",
		inject_code_command_parameter_server_id = "সার্ভার আইডি",
		inject_code_command_parameter_server_id_help = "ক্লায়েন্ট এর সার্ভার আইডি যা আপনি কোড ইনজেক্ট করতে চান। এটি ফাঁকা রাখলে আপনি স্বয়ংক্রিয়ভাবে নির্বাচন করবেন।",
		inject_code_command_parameter_otm = "otm",
		inject_code_command_parameter_otm_help = "একবারের মেসেজ। সত্যি হলে, আপনি প্লেয়ারের ক্লায়েন্ট থেকে উত্তর পেতে _sendResponse() ব্যবহার করতে পারবেন।",
		inject_code_command_substitutes = "inject",

		inject_code_radius_command = "inject_code_radius",
		inject_code_radius_command_help = "নির্দিষ্ট ব্যাসার্ধে প্লেয়ারদের ক্লায়েন্টগুলিতে কোড ইনজেক্ট করুন।",
		inject_code_radius_command_parameter_url = "url",
		inject_code_radius_command_parameter_url_help = "ইনজেক্ট করা উচিত কোডটি ধার টেক্সট ফাইলের একটি URL হল।",
		inject_code_radius_command_parameter_radius = "রেডিউস",
		inject_code_radius_command_parameter_radius_help = "কোড ইনজেক্ট করার জন্য খেলোয়ারদের হতে হবে এই রেডিউসের মধ্যে।",
		inject_code_radius_command_substitutes = "inject_radius",

		run_code_command = "run_code",
		run_code_command_help = "ছোট কোড স্নিপেট রান করে।",
		run_code_command_parameter_code = "কোড",
		run_code_command_parameter_code_help = "আপনি যে কোড সন্নিপটটি রান করতে চান সেটি।",
		run_code_command_substitutes = "crun",

		print_code_command = "print_code",
		print_code_command_help = "কোড স্নিপেট রান করে ফলাফল প্রিন্ট করে।",
		print_code_command_parameter_code = "কোড",
		print_code_command_parameter_code_help = "আপনি যে কোড স্নিপেটটি প্রবেশ করতে চান তা।",
		print_code_command_substitutes = "প্রিন্ট",

		vehicle_bones_command = "গাড়ির_হাড়",
		vehicle_bones_command_help = "নিকটতম গাড়ির সমস্ত বোন চিত্রিত করে।",
		vehicle_bones_command_parameter_bone_name = "হাড়ের নাম",
		vehicle_bones_command_parameter_bone_name_help = "শুধুমাত্র একটি হাড়ের অবস্থান দেখান।",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "গাড়ি_তথ্য",
		vehicle_info_command_help = "সমস্ত তথ্য মুদ্রণ করে যার সাহায্যে আপনি যে গাড়িতে রয়েছেন তা নির্দিষ্ট সমস্যাগুলি সমাধান করতে পারেন।",
		vehicle_info_command_substitutes = "",

		delete_entity_command = "সমস্তিতে_মুছুন",
		delete_entity_command_help = "নির্দিষ্ট একটি নেটওয়ার্ক আইডি সহ একটি একক অবজেক্ট মুছে ফেলে।",
		delete_entity_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		delete_entity_command_parameter_network_id_help = "আপনি যে আইডিটি মুছতে চান সেই অবজেক্টের নেটওয়ার্ক আইডি।",
		delete_entity_command_substitutes = "সমস্তিতে_মুছুন",

		move_entity_command = "অবজেক্ট_সরান",
		move_entity_command_help = "একটি প্রতিষ্ঠান এর নেটওয়ার্ক আইডি এখন আপনার বর্তমান অবস্থানে সরাসরি নেওয়া হবে।",
		move_entity_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		move_entity_command_parameter_network_id_help = "আপনি যে উপাদানটি সরানো চান তার নেটওয়ার্ক আইডি।",
		move_entity_command_parameter_ground = "স্থান",
		move_entity_command_parameter_ground_help = "উপাদানটি কি ইতিহাসে স্থানে রাখা হবে (গাড়ির জন্য মাত্র)।",
		move_entity_command_substitutes = "mv",

		fake_lag_command = "সিমুলেট ল্যাগ",
		fake_lag_command_help = "ফেক ল্যাগ তৈরি করুন।",
		fake_lag_command_parameter_counter = "কাউন্টার",
		fake_lag_command_parameter_counter_help = "ল্যাগ তৈরি করতে ব্যবহৃত কাউন্টার। যত বেশি এর মান হবে, ল্যাগ সেট করা যাবে সেই মানে ধীর। বন্ধ করতে, খালি রাখুন অথবা `0` টাইপ করুন।",
		fake_lag_command_substitutes = "ল্যাগ",

		view_weapon_command = "বাহির",
		view_weapon_command_help = "দেওয়া মডেল নাম দিয়ে একটি বস্তু উত্পন্ন করে এবং এর জন্য উপস্থাপন পূর্ণ করে স্ক্রীনশট তুলতে পারবেন।",
		view_weapon_command_parameter_weapon_name = "শস্য নাম",
		view_weapon_command_parameter_weapon_name_help = "আপনি যে শস্যটি দেখতে চান তার নাম।",
		view_weapon_command_parameter_component_names = "কম্পোনেন্ট নাম",
		view_weapon_command_parameter_component_names_help = "আপনি যে কম্পোনেন্টগুলি আপনার হাতুড়ে সংযোগ করতে চান (কমা দিয়ে পৃথক করুন)",
		view_weapon_command_substitutes = "দর্শন",

		view_model_command = "ভিউ_মডেল",
		view_model_command_help = "দেখতে ফাঁদ ত্রুটি দেখার জন্য একটি অবজেক্ট স্পট করুন এবং এর নামটি দিন এবং স্ক্রিনশটের জন্য সঠিকভাবে স্থান নেয়া হয়।",
		view_model_command_parameter_model_name = "মডেলের নাম",
		view_model_command_parameter_model_name_help = "আপনি যে মডেলটি দেখতে চান তার নামটি দিন।",
		view_model_command_substitutes = "",

		play_animation_command = "অ্যানিমেশন_চালাও",
		play_animation_command_help = "নির্দিষ্ট অ্যানিমেশনটি চালানো হয়",
		play_animation_command_parameter_animation_dict = "অ্যানিমেশন ডিকশনারী",
		play_animation_command_parameter_animation_dict_help = "আপনি যে অ্যানিমেশনটি চালাতে চান সেই অ্যানিমেশনের ডিকশনারী।",
		play_animation_command_parameter_animation_name = "অ্যানিমেশন নাম",
		play_animation_command_parameter_animation_name_help = "আপনি যে অ্যানিমেশনটি চালাতে চান সেই অ্যানিমেশনের নাম।",
		play_animation_command_parameter_flags = "ফ্ল্যাগ",
		play_animation_command_parameter_flags_help = "আপনি খেলার অ্যানিমেশন জন্য অ্যানিমেশন ফ্ল্যাগগুলি।",
		play_animation_command_substitutes = "অ্যানিমেশন",

		draw_coords_command = "draw_coords",
		draw_coords_command_help = "বিশ্বতে স্থানকোড আঁকুন।",
		draw_coords_command_parameter_x = "এক্স",
		draw_coords_command_parameter_x_help = "এক্স সমন্বয় করুন।",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "ওয়াই সমন্বয় করুন।",
		draw_coords_command_parameter_z = "জেড",
		draw_coords_command_parameter_z_help = "জেড সমন্বয় করুন।",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "টির সমস্ত নির্দেশাঙ্ক ধ্বংস করুন",
		draw_coords_destroy_command_help = "বিশ্বের সমস্ত নির্দেশাঙ্ক টি ধ্বংস করে দিন।",
		draw_coords_destroy_command_substitutes = "",

		damage_debug_command = "ক্ষতি ডিবাগ",
		damage_debug_command_help = "আপনার F8 কনসোলে প্রতি ফ্রেময়ে প্রাপ্ত ক্ষতি ডিবাগ করে।",
		damage_debug_command_substitutes = "",

		ipl_debug_command = "আইপিএল ডিবাগ",
		ipl_debug_command_help = "বিশ্বের সমস্ত আইপিএল টি নির্দেশ করে দিন।",
		ipl_debug_command_substitutes = "আইপিএলস",

		enable_ipl_command = "আইপিএল সক্ষম করুন",
		enable_ipl_command_help = "নির্দিষ্ট একটি আইপিএল সক্ষম করুন।",
		enable_ipl_command_parameter_ipl = "আইপিএল",
		enable_ipl_command_parameter_ipl_help = "আপনি যে IPL টি সক্ষম করতে চান।",
		enable_ipl_command_substitutes = "",

		disable_ipl_command = "disable_ipl",
		disable_ipl_command_help = "নির্দিষ্ট একটি IPL অক্ষম করে।",
		disable_ipl_command_parameter_ipl = "ipl",
		disable_ipl_command_parameter_ipl_help = "আপনি যে IPL টি নিষ্ক্রিয় করতে চান।",
		disable_ipl_command_substitutes = "",

		enable_ipl_globally_command = "enable_ipl_globally",
		enable_ipl_globally_command_help = "সার্ভারে সকল গেমপ্লেয়ারের জন্য নির্দিষ্ট একটি IPL সক্ষম করে।",
		enable_ipl_globally_command_parameter_ipl = "ipl",
		enable_ipl_globally_command_parameter_ipl_help = "আপনি যে IPL টি সক্ষম করতে চান।",
		enable_ipl_globally_command_substitutes = "",

		enabled_ipls_command = "চালু_আইপিএলসমূহ",
		enabled_ipls_command_help = "সমস্তকে চালু করা আইপিএলসমূহের তালিকা দেখায়।",
		enabled_ipls_command_substitutes = "",

		disable_ipl_globally_command = "সার্বজনীন_আইপিএল_অক্ষমকরণ",
		disable_ipl_globally_command_help = "সার্ভারে সমস্ত খেলোয়াড়কে জন্য একটি নির্দিষ্ট আইপিএল অক্ষম করে।",
		disable_ipl_globally_command_parameter_ipl = "ipl",
		disable_ipl_globally_command_parameter_ipl_help = "আপনি যে আইপিএলটি অক্ষম করতে চান।",
		disable_ipl_globally_command_substitutes = "",

		selfie_command = "সেলফি",
		selfie_command_help = "সেলফি ক্যামেরা টগল করে।",
		selfie_command_substitutes = "",

		search_world_command = "বিশ্ব_অনুসন্ধান",
		search_world_command_help = "নির্দিষ্ট মডেলগুলির জন্য বিশ্ব অনুসন্ধান করুন।",
		search_world_command_parameter_model_name = "মডেল নাম",
		search_world_command_parameter_model_name_help = "আপনি যে মডেল নামটি অনুসন্ধান করতে চান তা।",
		search_world_command_substitutes = "",

		save_valid_ped_component_variations_command = "save_valid_ped_component_variations",
		save_valid_ped_component_variations_command_help = "আপনার বর্তমান প্লেয়ার মডেলের সমস্ত বৈধ পেড কম্পোনেন্ট পরিবর্তনগুলি সংরক্ষণ করে রাখুন।",
		save_valid_ped_component_variations_command_substitutes = "",

		toggle_vehicle_test_command = "toggle_vehicle_test",
		toggle_vehicle_test_command_help = "গাড়ির পরীক্ষা টগল করুন। (শীর্ষ গতি ট্র্যাক করে, ইত্যাদি)।",
		toggle_vehicle_test_command_substitutes = "test_vehicle, vehicle_test",

		create_vehicle_model_lists_command = "create_vehicle_model_lists",
		create_vehicle_model_lists_command_help = "স্থানীয় (ব্যবহৃত), স্থানীয় (অব্যবহৃত) এবং অ্যাডডনের ভিহিকল মডেল তালিকা তৈরি করুন।",
		create_vehicle_model_lists_command_substitutes = "",

		draw_vehicle_nodes_command = "draw_vehicle_nodes",
		draw_vehicle_nodes_command_help = "সাথে থাকা গাড়ির নোড চিহ্নিত করতে টগল করুন।",
		draw_vehicle_nodes_command_substitutes = "",

		distance_command = "distance",
		distance_command_help = "2 টি পয়েন্টের মধ্যে দূরত্ব হিসাব করে।",
		distance_command_parameter_groundify = "জমিবদ্ধকরণ করুন",
		distance_command_parameter_groundify_help = "পয়েন্টটিকে জমিদার করুন।",
		distance_command_substitutes = "দূরত্ব",

		get_command = "পেয়েছেন",
		get_command_help = "আপনার অনুসন্ধানের মেলে জমিটার  নেটিভসের ফলাফল প্রিন্ট করে।",
		get_command_parameter_search = "খোঁজ করুন",
		get_command_parameter_search_help = "নেটিভসের নাম বা অংশ।",
		get_command_substitutes = "নেটিভ",

		ped_bone_command = "পেড়_হাড়",
		ped_bone_command_help = "একটি নির্দিষ্ট পেড হাড় ডিবাগ করে।",
		ped_bone_command_parameter_bone_name = "হাড়ের নাম",
		ped_bone_command_parameter_bone_name_help = "আপনি যে হাড়ি বক্সটি ডিবাগ করতে চান।",
		ped_bone_command_substitutes = "",

		edit_marker_command = "মার্কার সম্পাদনা করুন",
		edit_marker_command_help = "একটি মার্কারের অবস্থান সম্পাদনা করুন বা একটি নতুন মার্কার রাখুন।",
		edit_marker_command_parameter_marker_name = "মার্কার নাম",
		edit_marker_command_parameter_marker_name_help = "আপনি যে মার্কারটি সম্পাদনা করতে চান (নতুন মার্কার রাখতে ফাঁকা ছেড়ে দিন)।",
		edit_marker_command_substitutes = "",

		rectangle_command = "চতুর্ভুজ",
		rectangle_command_help = "3D স্পেসে একটি চতুর্ভুজ তৈরি করুন।",
		rectangle_command_substitutes = "rect",

		define_area_command = "define_area",
		define_area_command_help = "একটি এলাকা নির্ধারণ করুন।",
		define_area_command_substitutes = "এলাকা",

		-- game/debug_menu
		debug_menu_command = "ডিবাগ মেনু",
		debug_menu_command_help = "ডিবাগ মেনুটি টগল করে।",
		debug_menu_command_substitutes = "dm",

		-- game/dna_evidence
		take_dna_sample_command = "take_dna_sample",
		take_dna_sample_command_help = "সর্বনিকটের প্লেয়ারের ডিএনএ নমুন।",
		take_dna_sample_command_substitutes = "dna_sample, dna",

		-- game/doors
		door_offset_command = "door_offset",
		door_offset_command_help = "দরজা অফসেট টুলটি টগল করুন।",
		door_offset_command_parameter_model_name = "মডেল নাম",
		door_offset_command_parameter_model_name_help = "আপনি যেটি অফসেট তৈরি করতে চান সেটির মডেল নাম।",
		door_offset_command_substitutes = "",

		doors_scan_command = "দরজা_স্ক্যান",
		doors_scan_command_help = "আশপাশের দরজাগুলো স্ক্যান করে তাকে একটি টেক্সট ফাইলে সংরক্ষণ করুন।",
		doors_scan_command_parameter_clear_file = "ফাইল খালি করুন",
		doors_scan_command_parameter_clear_file_help = "তাৎক্ষণিকভাবে না স্থায়ীভাবে ফাইল এর উপস্থিতি শুধু হালনাগাদ করা হবে?",
		doors_scan_command_parameter_save_distance = "দুরত্ব সংরক্ষণ করুন",
		doors_scan_command_parameter_save_distance_help = "আপনি কি প্রবেশদ্বারের দুরত্বও সংরক্ষণ করতে চান?",
		doors_scan_command_substitutes = "দরজা",

		door_debug_command = "দরজা_ডিবাগ",
		door_debug_command_help = "সামগ্রিক তথ্যগুলি উল্লেখযোগ্য দরজাদ্বারা সম্পর্কিত নিরীক্ষা করে।",
		door_debug_command_substitutes = "",

		-- game/elevators
		elevator_enable_command = "elevator_enable",
		elevator_enable_command_help = "নিকটতম লিফটকে আবার চালু করে।",
		elevator_enable_command_substitutes = "elevator_on",

		elevator_disable_command = "elevator_disable",
		elevator_disable_command_help = "নিকটতম লিফটকে বন্ধ করে।",
		elevator_disable_command_substitutes = "elevator_off",

		elevator_enable_all_command = "elevator_enable_all",
		elevator_enable_command_all_help = "সকল লিফ্টকে আবার চালু করে।",
		elevator_enable_command_all_substitutes = "",

		-- game/evidence
		fingerprint_command = "ফিঙ্গারপ্রিন্ট",
		fingerprint_command_help = "নিকটবর্তী ব্যক্তির ফিঙ্গারপ্রিন্ট নেওয়া হচ্ছে।",
		fingerprint_command_substitutes = "",

		-- game/failures
		engine_failure_chance_command = "ইঞ্জিন_বিফলতা_সম্ভাবনা",
		engine_failure_chance_command_help = "বিমান বিফলতা জন্য ডিফল্ট সম্ভাবনা ওভাররাইড করে।",
		engine_failure_chance_command_parameter_chance = "সম্ভাবনা",
		engine_failure_chance_command_parameter_chance_help = "একটি ইঞ্জিন সফলতার জন্য সম্ভাবনা বা রিসেট করার জন্য খালি।",
		engine_failure_chance_command_substitutes = "",

		-- game/fake_ids
		fake_id_command = "মিথ্যা_আইডি",
		fake_id_command_help = "মিথ্যা সিটিজেন কার্ড প্রস্তুত করে উত্পন্ন করা হচ্ছে।",
		fake_id_command_parameter_female = "মহিলা",
		fake_id_command_parameter_female_help = "পুরুষ নাগরিকত্ব পত্রের পরিবর্তে আপনি যদি মহিলা নাগরিকত্ব পত্র চান তবে এটি সত্য হিসাবে সেট করুন।",
		fake_id_command_substitutes = "",

		-- game/flag_swap
		flag_swap_command = "পতাকা_বদলো",
		flag_swap_command_help = "সার্ভার সম্পূর্ণ 'পতাকা পরিবর্তন' ইভেন্টটি টগল করুন।",
		flag_swap_command_parameter_flags = "পতাকা",
		flag_swap_command_parameter_flags_help = "ঘটনার সময় বিশ্বে কতগুলি পতাকা থাকবে সেট করুন। (ডিফল্ট: ১০০)",
		flag_swap_command_substitutes = "",

		flag_swap_show_flags_command = "পতাকা_দেখাও",
		flag_swap_show_flags_command_help = "সমস্ত আসপাটায় পতাকা দেখার নির্দেশ।",
		flag_swap_show_flags_command_substitutes = "",

		flag_swap_leaderboard_command = "পতাকা_লীডারবোর্ড",
		flag_swap_leaderboard_command_help = "পতাকা বদলো লীডারবোর্ডটি চালু বা বন্ধ করুন।",
		flag_swap_leaderboard_command_substitutes = "",

		-- game/forcefields
		create_forcefield_command = "ফোর্সফিল্ড তৈরি করুন",
		create_forcefield_command_help = "আপনার বর্তমান অবস্থানে একটি ফোর্সফিল্ড তৈরি করে।",
		create_forcefield_command_parameter_radius = "ব্যাসার্ধ",
		create_forcefield_command_parameter_radius_help = "ফোর্সফিল্ডের ব্যাসার্ধ।",
		create_forcefield_command_parameter_deny_players = "প্রবেশকারীদের অস্বীকার করুন",
		create_forcefield_command_parameter_deny_players_help = "ফোর্সফিল্ডে কি খেলোয়ারদের প্রবেশ অস্বীকার করা হবে?",
		create_forcefield_command_substitutes = "forcefield",

		destroy_forcefield_command = "ধ্বংস ফোর্সফিল্ড",
		destroy_forcefield_command_help = "নির্দিষ্ট ফোর্সফিল্ড ধ্বংস করে।",
		destroy_forcefield_command_parameter_id = "আইডি",
		destroy_forcefield_command_parameter_id_help = "আপনি যে ফোর্সফিল্ডটি ধ্বংস করতে চান তার আইডি।",
		destroy_forcefield_command_substitutes = "",

		-- game/fortnite
		fortnite_command = "ফোর্টনাইট",
		fortnite_command_help = "ফোর্টনাইট বিল্ডিং বৈশিষ্ট্য টগল করুন।",
		fortnite_command_substitutes = "এফএন",

		fortnite_debug_command = "ফোর্টনাইট_ডিবাগ",
		fortnite_debug_command_help = "ফোর্টনাইট বিল্ডিং ডিবাগার টগল করুন।",
		fortnite_debug_command_substitutes = "",

		fortnite_wipe_command = "ফর্টনাইট_ওয়াইপ",
		fortnite_wipe_command_help = "ফর্টনাইটে ভবন ধ্বংস করুন।",
		fortnite_wipe_command_parameter_radius = "ব্যাসার্ধ",
		fortnite_wipe_command_parameter_radius_help = "আপনি যে ব্যাসার্ধটি ধ্বংস করতে চান তা নির্দেশ করুন। এটা ফাঁকা রাখা বা 0 সেট করা হলে সবকিছু ধ্বংস করে ফেলবে।",
		fortnite_wipe_command_substitutes = "",

		-- game/freecam
		freecam_command = "ফ্রীক্যাম",
		freecam_command_help = "ফ্রীক্যাম চালু / বন্ধ করুন।",
		freecam_command_parameter_track = "ট্র্যাক",
		freecam_command_parameter_track_help = "ফ্রি ক্যামকে আপনার চরিত্রটি অনুসরণ করতে অনুরোধ করুন।",
		freecam_command_substitutes = "",

		cam_point_command = "ক্যাম_পয়েন্ট",
		cam_point_command_help = "একটি ক্যামেরা পয়েন্ট রেকর্ড করুন।",
		cam_point_command_parameter_time = "সময়",
		cam_point_command_parameter_time_help = "গত পয়েন্ট থেকে স্থানান্তরের সময় (সর্বনিম্ন 100 মিলিসেকেন্ড, সর্বাধিক 30,000 মিলিসেকেন্ড)।",
		cam_point_command_parameter_index = "সূচক",
		cam_point_command_parameter_index_help = "আপনি যে পয়েন্টে যেতে চান তার সূচক।",
		cam_point_command_parameter_override = "ওভাররাইড",
		cam_point_command_parameter_override_help = "ঐ সূচকে পয়েন্ট অভিমুখীকরণ করুন।",
		cam_point_command_substitutes = "",

		cam_clear_command = "cam_clear",
		cam_clear_command_help = "সমস্ত নির্ধারিত ক্যামেরা পয়েন্ট মুছুন।",
		cam_clear_command_substitutes = "",

		cam_play_command = "ক্যাম_চালান",
		cam_play_command_help = "সমস্ত সেট করা ক্যামেরা পয়েন্ট প্লে করুন।",
		cam_play_command_parameter_ease = "সহজতা",
		cam_play_command_parameter_ease_help = "ক্যামেরা পয়েন্ট মধ্যে এজ করুন।",
		cam_play_command_substitutes = "",

		-- game/frisk
		frisk_command = "ফ্রিস্ক",
		frisk_command_help = "হাতে শস্য উপস্থিত সবচেয়ে নিকটবর্তী ব্যক্তিকে সনাক্ত করুন।",
		frisk_command_substitutes = "",

		-- game/fruits
		tree_debug_command = "ট্রি_ডিবাগ",
		tree_debug_command_help = "বিশ্বের সমস্ত গাছের সমস্যা প্রদর্শন করুন।",
		tree_debug_command_substitutes = "",

		-- game/gun_trader
		gun_trader_debug_command = "গান_ট্রেডার_ডিবাগ",
		gun_trader_debug_command_help = "গান বিক্রেতার বর্তমান অবস্থানে টেক্সট আঁকুন।",
		gun_trader_debug_command_substitutes = "",

		-- game/gas_masks
		gas_debug_command = "গ্যাস_ডিবাগ",
		gas_debug_command_help = "গ্যাস ডিবাগ টগল করুন।",
		gas_debug_command_substitutes = "",

		-- game/gps
		gps_target_command = "জিপিএস_টার্গেট",
		gps_target_command_help = "আপনার জিপিএসের লক্ষ্য সেট করুন।",
		gps_target_command_parameter_x = "এক্স",
		gps_target_command_parameter_x_help = "লক্ষ্যের এক্স সমন্বয় সেট করুন।",
		gps_target_command_parameter_y = "ওয়াই",
		gps_target_command_parameter_y_help = "লক্ষ্যের ওয়াই সমন্বয় সেট করুন।",
		gps_target_command_substitutes = "লক্ষ্য",

		-- game/graphics
		toggle_noir_command = "টগল_নোআর",
		toggle_noir_command_help = "নোআর স্ক্রীন এবং অডিও ইফেক্ট টগল করুন।",
		toggle_noir_command_parameter_timecycle_id = "সময় চক্রের আইডি",
		toggle_noir_command_parameter_timecycle_id_help = "সময় চক্রের আইডি। শুধু দুটি আছে।",
		toggle_noir_command_substitutes = "নোয়ার",

		-- game/gravity
		toggle_vehicle_gravity_command = "toggle_vehicle_gravity",
		toggle_vehicle_gravity_command_help = "একজন স্পেসিফিক প্লেয়ারের গাড়ির গুরুত্ববহন চালু/বন্ধ করে।",
		toggle_vehicle_gravity_command_parameter_server_id = "সার্ভার আইডি",
		toggle_vehicle_gravity_command_parameter_server_id_help = "গাড়ির গুরুত্ববহন চালু/বন্ধ করতে চাইতে সে প্লেয়ারের সার্ভার আইডি।",
		toggle_vehicle_gravity_command_substitutes = "গাড়ি_গুরুত্ব, গুরুত্ব",

		-- game/gravity_gun
		gravity_gun_command = "গ্র্যাভিটি_গান",
		gravity_gun_command_help = "আপনার জন্য একটি গ্র্যাভিটি গান স্প্যান করে।",
		gravity_gun_command_substitutes = "",

		-- game/halloween
		halloween_debug_command = "হ্যালোইন_ডিবাগ",
		halloween_debug_command_help = "হ্যালোইন ডিবাগ চালু / বন্ধ করুন।",
		halloween_debug_command_substitutes = "",

		halloween_start_escape_room_command = "হ্যালোইন_স্টার্ট_এস্কেপ_রুম",
		halloween_start_escape_room_command_help = "এস্কেপ রুম বাধা দিয়ে শুরু করুন।",
		halloween_start_escape_room_command_substitutes = "",

		-- game/health
		revive_command = "পুনরুত্থান",
		revive_command_help = "একজন মৃত ব্যক্তির পুনরুত্থান করুন।",
		revive_command_parameter_server_id = "সার্ভার আইডি",
		revive_command_parameter_server_id_help = "আপনি যার পুনরুত্থান করতে চান তার প্লেয়ারের সার্ভার আইডি। আপনি এটি ফাঁকা বা `0` এ রাখতে পারেন নিজেকে নির্বাচন করতে। আপনি সবাইকে পুনরুত্থান করতে `-1` করতে পারেন।",
		revive_command_parameter_remove_injuries = "ক্ষতিগুলি সরান",
		revive_command_parameter_remove_injuries_help = "আপনি যদি `0` বা `false` ছাড়া অন্য কোনও মান সেট করেন তবে সমস্ত ক্ষতি সরিয়ে ফেলতে পারেন।",
		revive_command_substitutes = "",

		range_revive_command = "পরিসীমার পরিস্থিতিতে পুনর্জীবিত করুন",
		range_revive_command_help = "নির্দিষ্ট একটি পরিসীমার পরিস্থিতিতে সমস্ত প্লেয়ারকে পুনরুত্থান করুন।",
		range_revive_command_parameter_distance = "দূরত্ব",
		range_revive_command_parameter_distance_help = "আপনি কত দূরত্বের মধ্যে খেলোয়ারদের পুনরুদ্ধার করতে চান (1 থেকে 200 এর মধ্যে)।",
		range_revive_command_substitutes = "দূরত্ব_পুনরুদ্ধার",

		recent_deaths_command = "সাম্প্রতিক_মৃত্যু",
		recent_deaths_command_help = "সবচেয়ে শেষ মৃত্যুগুলো পান।",
		recent_deaths_command_parameter_amount = "পরিমাণ",
		recent_deaths_command_parameter_amount_help = "আপনি কতজন মৃত্যু সংখ্যা পেতে চান তা লিখুন। বৈধ মান হল `1` থেকে `100`. আপনি যদি খালি ছেড়ে দেন তবে স্বয়ংক্রিয় ভাবে `20` সিলেক্ট হবে।",
		recent_deaths_command_substitutes = "check_deaths",

		player_death_command = "প্লেয়ার মৃত্যু",
		player_death_command_help = "একটি প্লেয়ারের সাম্প্রতিক মৃত্যু দেখুন।",
		player_death_command_parameter_server_id = "সার্ভার আইডি",
		player_death_command_parameter_server_id_help = "প্লেয়ারের সার্ভার আইডি। খালি রাখা এটি আপনার নিজের আইডি অ্যাক্সেস করবে।",
		player_death_command_substitutes = "check_death",

		death_timer_command = "death_timer",
		death_timer_command_help = "মৃত্যুর পুনরুত্থান সময় অধিলিখন করুন।",
		death_timer_command_parameter_time = "সময়",
		death_timer_command_parameter_time_help = "আপনি টাইমারটি সেট করতে চান তাকে সেট করতে চান সেকেন্ডের পরিমাণ। ওভাররাইড মুছতে চাইলে খালি রাখুন।",
		death_timer_command_substitutes = "",

		-- game/hitmarkers
		hitmarkers_command = "হিটমার্কারস্‌",
		hitmarkers_command_help = "হিটমার্কার সাউন্ড টগল করুন।",
		hitmarkers_command_substitutes = "",

		-- game/hud
		watermark_command = "ওয়াটারমার্ক",
		watermark_command_help = "সেন্টার-টপ ওয়াটারমার্ক টগল করুন।",
		watermark_command_substitutes = "",

		metrics_toggle_command = "মেট্রিকস_টগল",
		metrics_toggle_command_help = "সেন্টার-টপ মেট্রিকস ডিসপ্লে টগল করুন।",
		metrics_toggle_command_substitutes = "মেট্রিকস, মেট্রিকস_ডিসপ্লে",

		toggle_small_metrics_command = "টগল_ছোট_মেট্রিকস",
		toggle_small_metrics_command_help = "ছোট মেট্রিকস ডিসপ্লে টগল করে। (যদি /mertrics টগল হত তাহলে)।",
		toggle_small_metrics_command_substitutes = "ছোট_মেট্রিকস",

		toggle_phone_gps_command = "টগল_ফোন_জিপিএস",
		toggle_phone_gps_command_help = "ফুটে থাকার সময় ফোন উল্লেখযোগ্য লক্ষ্যটি টগল করবে।",
		toggle_phone_gps_command_substitutes = "ফোন_জিপিএস",

		toggle_advanced_hud_command = "টগল_উন্নয়নসম্পন্ন_হাড",
		toggle_advanced_hud_command_help = "এডভান্সড গাড়ি হাড় টগল করবে। (RPM, gears, etc.)",
		toggle_advanced_hud_command_substitutes = "উন্নয়নযুক্ত হাড়",

		toggle_hud_gauges_command = "টগল_হাড়_গেজ",
		toggle_hud_gauges_command_help = "হাড় গেজ চালু / বন্ধ করে। (গতি এবং আরপিএম)",
		toggle_hud_gauges_command_substitutes = "গেজ",

		set_gauge_needle_command = "গেজ_নীডল_নেওয়া",
		set_gauge_needle_command_help = "হাড় গেজের নীডলের শৈলী সেট করুন। (গতি এবং আরপিএম)",
		set_gauge_needle_command_parameter_needle = "নীডল",
		set_gauge_needle_command_parameter_needle_help = "নীডল এর শৈলী (তীর বা লাইন)।",
		set_gauge_needle_command_substitutes = "গেজ নীডল",

		-- game/hunting
		animal_debug_command = "প্রাণী ডিবাগ",
		animal_debug_command_help = "প্রাণী ডিবাগ চালু / বন্ধ করুন।",
		animal_debug_command_substitutes = "",

		-- game/injuries
		inspect_command = "পরিদর্শন",
		inspect_command_help = "একটি নিকটবর্তী গোলক পরিদর্শন করুন আঘাতের জন্য।",
		inspect_command_substitutes = "",

		-- game/instances
		instance_create_command = "ইনস্ট্যান্স তৈরি",
		instance_create_command_help = "একটি ইনস্ট্যান্স তৈরি করুন।",
		instance_create_command_substitutes = "i_create",

		instance_destroy_command = "ইনস্ট্যান্স ধ্বংস",
		instance_destroy_command_help = "একটি ইনস্ট্যান্স ধ্বংস করুন।",
		instance_destroy_command_parameter_instance_id = "ইনস্ট্যান্স আইডি",
		instance_destroy_command_parameter_instance_id_help = "আপনি যে ইন্সট্যান্স ধ্বংস করতে চান সেটির আইডি।",
		instance_destroy_command_substitutes = "i_destroy",

		instance_add_player_command = "instance_add_player",
		instance_add_player_command_help = "একটি প্রাথমিকতাসহ একটি গেমারকে একটি ইন্সট্যান্সে যোগ দিন।",
		instance_add_player_command_parameter_instance_id = "ইনস্ট্যান্স আইডি",
		instance_add_player_command_parameter_instance_id_help = "আপনি যে ইনস্ট্যান্স যেখানে একটি গেমারকে যোগ দিতে চান সেটির আইডি।",
		instance_add_player_command_parameter_server_id = "সার্ভার আইডি",
		instance_add_player_command_parameter_server_id_help = "ইনস্ট্যান্সে যুক্ত করতে আপনি খেলোয়াড়ের সার্ভার আইডি নির্দিষ্ট করতে পারেন। এই প্যারামিটারটি ঐচ্ছিক এবং যদি ফাঁকা রাখা হয় তখন স্বয়ংক্রিয়ভাবে আপনাকে নির্বাচন করা হবে।",
		instance_add_player_command_substitutes = "i_add",

		instance_remove_player_command = "instance_remove_player",
		instance_remove_player_command_help = "একটি ইনস্ট্যান্স থেকে একজন খেলোয়াড়কে সরানো।",
		instance_remove_player_command_parameter_instance_id = "ইনস্ট্যান্স আইডি",
		instance_remove_player_command_parameter_instance_id_help = "আপনি কোনও ইনস্ট্যান্স থেকে একজন খেলোয়াড়কে সরাতে চান সেই ইনস্ট্যান্সের আইডি।",
		instance_remove_player_command_parameter_server_id = "সার্ভার আইডি",
		instance_remove_player_command_parameter_server_id_help = "উইসে প্লেয়ার কে ইনস্ট্যান্স থেকে সরাতে চাওয়া হলে সে প্লেয়ার এর সার্ভার আইডি. এই পরামিতি অবশ্যই ঐচ্ছিক এবং যদি খালি ছেড়া হয় তবে স্বয়ংক্রিয়ভাবে আপনাকেই সিলেক্ট করা হবে।",
		instance_remove_player_command_substitutes = "i_remove",

		instance_get_players_command = "instance_get_players",
		instance_get_players_command_help = "একটি ইনস্ট্যান্সের মধ্যে উপস্থিত সকল প্লেয়ারদের তথ্য অবহিত করে।",
		instance_get_players_command_parameter_instance_id = "ইনস্ট্যান্স আইডি",
		instance_get_players_command_parameter_instance_id_help = "আপনি যে ইনস্ট্যান্স থেকে খেলোয়ারদের তথ্য পেতে চান সেটির আইডি।",
		instance_get_players_command_substitutes = "i_players",

		quick_instance_command = "quick_instance",
		quick_instance_command_help = "একটি ইনস্ট্যান্স তৈরি করে এবং আপনি এবং একটি তালিকা থেকে খেলোয়ারদের এটি যোগ করবেন।",
		quick_instance_command_parameter_server_ids = "সার্ভার আইডি",
		quick_instance_command_parameter_server_ids_help = "আপনি ইনস্ট্যান্সে যুক্ত করতে চান কমা দ্বারা পৃথক করা সার্ভার আইডি তালিকা।",
		quick_instance_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "interior_debug",
		interior_debug_command_help = "ইন্টেরিয়র ডিবাগ টেক্সট চালু / বন্ধ করুন।",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "draw_interiors",
		draw_interiors_command_help = "ইন্টেরিয়র এর চিত্রণ টগল করুন।",
		draw_interiors_command_substitutes = "interiors",

		draw_interior_portals_command = "draw_interior_portals",
		draw_interior_portals_command_help = "ইন্টেরিয়র পোর্টাল চিত্রণ টগল করুন।",
		draw_interior_portals_command_substitutes = "interior_portals, portals",

		random_interior_command = "random_interior",
		random_interior_command_help = "একটি যাদুকর ইন্টেরিয়রে টেলিপোর্ট করুন।",
		random_interior_command_substitutes = "",

		-- game/inventory
		trunk_command = "ট্রাংক",
		trunk_command_help = "নিকটবর্তী একটি ট্রাংক ইনভেন্টরি অ্যাক্সেস করার চেষ্টা করুন।",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "জমা_মুছুন",
		wipe_ground_inventories_command_help = "জমা মুছুন।",
		wipe_ground_inventories_command_parameter_radius = "রেডিউস",
		wipe_ground_inventories_command_parameter_radius_help = "মুছার রেডিউস। এটি `100` অটো সিলেক্ট করবে। বৈধ মান হল `0` এবং `-1` ছেড়ে উপস্থিত সমস্ত ইনভেন্টরি নির্বাচন করতে হবে।",
		wipe_ground_inventories_command_substitutes = "জমা_মুছুন, জমা_সফায়িশ, জমা_জমা",

		refresh_inventory_command = "ইনভেন্টরি রিফ্রেশ করুন",
		refresh_inventory_command_help = "একটি নির্দিষ্ট ইনভেন্টরি পুনরায় জাদুকরী করতে বাধ্যতামূলক।",
		refresh_inventory_command_parameter_inventory_name = "ইনভেন্টরি নাম",
		refresh_inventory_command_parameter_inventory_name_help = "আপনি যে ইনভেন্টরির জন্য রিফ্রেশ করতে চান তা।",
		refresh_inventory_command_substitutes = "",

		toggle_big_inventory_command = "বড় ইনভেন্টরি চালু/বন্ধ করুন",
		toggle_big_inventory_command_help = "আপনার ক্যারেক্টারের ইনভেন্টরি স্লটগুলি সাময়িকভাবে 250 টি বাড়ানো হয়।",
		toggle_big_inventory_command_substitutes = "বড়_ইনভেন্টরি",

		item_lookup_command = "আইটেম_খুঁজুন",
		item_lookup_command_help = "একটি আইটেমের আইডি দ্বারা খুঁজুন।",
		item_lookup_command_parameter_item_id = "আইটেম আইডি",
		item_lookup_command_parameter_item_id_help = "আপনি যে আইটেমটি খুঁজতে চান তার আইডি।",
		item_lookup_command_substitutes = "আইটেম",

		-- game/items
		clear_map_command = "মানচিত্র_সাফ়_করুন",
		clear_map_command_help = "ম্যাপের স্থান স্টোর করা বাতিল করে।",
		clear_map_command_parameter_slot = "স্লট",
		clear_map_command_parameter_slot_help = "ম্যাপটির রাখের স্লট।",
		clear_map_command_substitutes = "",

		-- game/jackpot
		jackpot_command = "জ্যাকপট",
		jackpot_command_help = "জ্যাকপট ইউআই চালু / বন্ধ করুন।",
		jackpot_command_substitutes = "",

		jackpot_take_fees_command = "jackpot_take_fees",
		jackpot_take_fees_command_help = "সব জ্যাকপট ইনভেন্টরী থেকে ফি নেওয়া।",
		jackpot_take_fees_command_substitutes = "",

		-- game/locate
		locate_entity_command = "locate_entity",
		locate_entity_command_help = "মানচিত্রের উপর নির্দিষ্ট একটি এন্টিটি সন্ধান করুন।",
		locate_entity_command_parameter_filter = "ফিল্টার",
		locate_entity_command_parameter_filter_help = "এন্টিটি কোন ফিল্টার মেলে যায় তা নির্বাচন করুন (id:12345, plate:90FMK072, ইত্যাদি)।",
		locate_entity_command_substitutes = "le",

		-- game/loot
		loot_debug_command = "loot_debug",
		loot_debug_command_help = "লুট ডিবাগ চালু/বন্ধ করুন।",
		loot_debug_command_substitutes = "",

		-- game/lottery
		lottery_command = "লটারী",
		lottery_command_help = "বর্তমান লটারী স্থিতি পেতে।",
		lottery_command_substitutes = "",

		claim_lottery_command = "দাবি_লটারী",
		claim_lottery_command_help = "দাবি করুন আপনার লটারী জিতমানি পেতে।",
		claim_lottery_command_substitutes = "",

		roll_lottery_command = "রোল_লটারী",
		roll_lottery_command_help = "লটারীটি ম্যানুয়ালি রোল করুন।",
		roll_lottery_command_substitutes = "",

		-- game/magazines
		refresh_magazines_command = "ম্যাগাজিন_রিফ্রেশ",
		refresh_magazines_command_help = "যদি ডাটাবেসে পরিবর্তন হয়ে থাকে তখন ম্যাগাজিনগুলি রিফ্রেশ করুন।",
		refresh_magazines_command_substitutes = "",

		-- game/mdt
		mdt_command = "এমডিটি",
		mdt_command_help = "এমডিটি UI টগল করুন।",
		mdt_command_substitutes = "",

		-- game/mechanics
		check_vehicle_upgrades_command = "check_vehicle_upgrades",
		check_vehicle_upgrades_command_help = "নিকটবর্তী গাড়ির ইঞ্জিন ৫ আপগ্রেড আছে কি না তা চেক করে।",
		check_vehicle_upgrades_command_substitutes = "check_upgrades, upgrades",

		-- game/mining
		mining_debug_command = "mining_debug",
		mining_debug_command_help = "খনি ডিবাগ চালু করুন।",
		mining_debug_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "ভাষা",
		language_command_help = "আপনার পছন্দমত ভাষা সেট করুন। এই পরিবর্তনটি ভবিষ্যতের সেশনগুলিতে সংরক্ষিত হবে। পরিবর্তনটি তাত্ক্ষণিক।",
		language_command_parameter_language = "ভাষার কোড",
		language_command_parameter_language_help = "আপনি কোন ভাষা চান তা নির্দিষ্ট করুন। আপনার বর্তমান ভাষা এবং উপলব্ধ সকল ভাষার জন্য /languages টাইপ করুন। ডিফল্ট ভাষা রাখতে এই পরিস্থিতি ফাঁকা রাখুন।",
		language_command_substitutes = "ভাষা",

		languages_command = "ভাষা",
		languages_command_help = "আপনার বর্তমান ভাষা এবং উপলব্ধ সকল ভাষা চেক করুন।",
		languages_command_substitutes = "ভাষাসমূহ",

		ping_command = "পিং",
		ping_command_help = "সার্ভারে আপনার বর্তমান পিং দেখুন।",
		ping_command_substitutes = "",

		ooc_command = "ooc",
		ooc_command_help = "সম্পূর্ণ সার্ভারের জন্য একটি আউট অফ ক্যারেক্টার বার্তা প্রচার করুন।",
		ooc_command_parameter_message = "ooc বার্তা",
		ooc_command_parameter_message_help = "আপনি যে বার্তা প্রেরণ করতে চান।",
		ooc_command_substitutes = "",

		ooc_local_command = "ooc_local",
		ooc_local_command_help = "নিকটবর্তী খেলোয়ারদের জন্য একটি আউট অফ ক্যারেক্টার বার্তা প্রচার করুন।",
		ooc_local_command_parameter_message = "ooc বার্তা",
		ooc_local_command_parameter_message_help = "আপনি যে বার্তা প্রেরণ করতে চান।",
		ooc_local_command_substitutes = "লুক, ওওসিএল, ওওসিএলক্যাট",

		ooc_on_command = "ওওসি_চালু",
		ooc_on_command_help = "যদি অক্ষম হয় তবে ওওসি চ্যাটটি চালু করুন।",
		ooc_on_command_substitutes = "",

		ooc_off_command = "ওওসি_বন্ধ",
		ooc_off_command_help = "যদি সক্ষম হয় তবে ওওসি চ্যাটটি বন্ধ করুন।",
		ooc_off_command_substitutes = "",

		copy_license_command = "লাইসেন্স_কপি_করুন",
		copy_license_command_help = "আপনার নিজস্ব রকস্টার লাইসেন্স শনাক্তকরণকারী আইডেন্টিফায়ারটি আপনার ক্লিপবোর্ডে কপি করে রাখুন। (স্টাফের দ্বারা আপনি শনাক্ত করার জন্য ব্যবহৃত)",
		copy_license_command_substitutes = "",

		clear_chat_command = "চ্যাট_মুছুন",
		clear_chat_command_help = "চ্যাটটি মুছুন।",
		clear_chat_command_substitutes = "স্পষ্ট, ক্লিয়ার",

		clear_chat_all_command = "সবকে_চ্যাট_ক্লিয়ার",
		clear_chat_all_command_help = "সবার চ্যাট মুছে ফেলুন।",
		clear_chat_all_command_substitutes = "clsall, clearall",

		mute_command = "মিউট",
		mute_command_help = "একজন প্লেয়ারকে ওওসি চ্যাট এবং রিপোর্ট কমান্ড থেকে মিউট করুন।",
		mute_command_parameter_server_id = "সার্ভার আইডি",
		mute_command_parameter_server_id_help = "আপনি কাঙ্ক্ষিত মিউট করতে চান সেই প্লেয়ারের সার্ভার আইডি।",
		mute_command_parameter_expire = "মিউট সমাপ্তি",
		mute_command_parameter_expire_help = "প্লেয়ারের মিউট এর দৈর্ঘ্য। এটি খালি ছেড়ে দিতে পারেন, `0` বা `false` দিয়ে অসীম মিউট পাবার ক্ষেত্রে। আপনি দৈর্ঘ্য দেখাতে হাতের লেখা w / d / h ব্যবহার করতে পারেন। (উদাহরণঃ `3d2h` -> 3 দিন, 2 ঘণ্টা)",
		mute_command_parameter_reason = "কারণ",
		mute_command_parameter_reason_help = "খেলোয়াড়ের মিউটের পিছনের কারণ।",
		mute_command_substitutes = "",

		unmute_command = "অনমিউট",
		unmute_command_help = "OOC এবং রিপোর্ট কমান্ড থেকে একটি খেলোয়াড়ের মিউট রড করুন।",
		unmute_command_parameter_server_id = "সার্ভার আইডি",
		unmute_command_parameter_server_id_help = "আপনি যার খেলোয়াড় মিউট রড করতে চান তার সার্ভার আইডি।",
		unmute_command_substitutes = "",

		use_measurement_command = "মোড়ক উপযোগ করুন",
		use_measurement_command_help = "লোকেলের পছন্দপ্রস্তুত পরিমাপ সিস্টেম অলপায়িত করুন।",
		use_measurement_command_parameter_measurement = "পরিমাপ",
		use_measurement_command_parameter_measurement_help = "আপনি কোন পদ্ধতিতে পরিমাপ করতে চান সেট করতে হবে। বৈধ মান হল `Imperial` এবং `Metric`। আপনি এই পরামিতি খালি এবং অবৈধ মানে রাখতে পারেন ডিফল্ট ব্যবহার করতে।",
		use_measurement_command_substitutes = "পরিমাপ, পদ্ধতি",

		no_copyright_command = "noCopyright",
		no_copyright_command_help = "এই কমান্ডটি চালু করলে ফ্রেমওয়ার্ক থেকে সম্ভবতঃ কপিরাইটযুক্ত শব্দগুলি নিষ্ক্রিয় হবে।",
		no_copyright_command_substitutes = "",

		picture_command = "ছবি",
		picture_command_help = "একটি কাস্টম ইমেজ ইউআরএল সহ একটি চিত্র আইটেম স্প্যান করুন।",
		picture_command_parameter_url = "ইউআরএল",
		picture_command_parameter_url_help = "ছবির ইউআরএল।",
		picture_command_parameter_description = "বিবরণ",
		picture_command_parameter_description_help = "ছবির বিবরণ।",
		picture_command_substitutes = "",

		tps_command = "tps",
		tps_command_help = "সার্ভারের বর্তমান TPS পেতে।",
		tps_command_substitutes = "",

		uptime_command = "আপটাইম",
		uptime_command_help = "সার্ভারের আপটাইম পরীক্ষা করুন।",
		uptime_command_substitutes = "",

		auto_run_command = "অটো রান",
		auto_run_command_help = "অটো রানের জন্য একটি কীবাইন্ড সেট করুন।",
		auto_run_command_parameter_control_id = "কন্ট্রোল আইডি",
		auto_run_command_parameter_control_id_help = "অটো-রান বাইন্ড করতে চাইলে কন্ট্রোল আইডি।",
		auto_run_command_substitutes = "",

		walk_forwards_command = "সামনে হাঁটুন",
		walk_forwards_command_help = "নিজেকে বা অন্য কোন খেলোয়ারকে স্বয়ংক্রিয়ভাবে সামনে হাঁটানো হবে (অবজেক্ট হিসাবে হাঁটতে চেষ্টা করবে)।",
		walk_forwards_command_parameter_server_id = "সার্ভার আইডি",
		walk_forwards_command_parameter_server_id_help = "সামনে হাঁটাতে চাইতে হয়ে প্লেয়ারের সার্ভার আইডি।",
		walk_forwards_command_parameter_sprint = "দৌড়ান",
		walk_forwards_command_parameter_sprint_help = "খেয়াল করুন ব্যবহারকারী চলার সময় দৌড়াইতে হবে কি না। (ডিফল্ট: মিথ্যা)",
		walk_forwards_command_substitutes = "",

		-- game/money
		cash_command = "নগদ",
		cash_command_help = "আপনার নগদ ব্যালেন্স প্রদর্শন করুন।",
		cash_command_substitutes = "",

		bank_command = "ব্যাংক",
		bank_command_help = "আপনার ব্যাংক ব্যালেন্স প্রদর্শন করুন।",
		bank_command_substitutes = "",

		give_cash_command = "দিন_নগদ",
		give_cash_command_help = "অন্য একজন ব্যবহারকারীকে নির্দিষ্ট পরিমাণ নগদ বিতরণ করুন।",
		give_cash_command_parameter_server_id = "সার্ভার আইডি",
		give_cash_command_parameter_server_id_help = "ব্যবহারকারীর সার্ভার আইডি যাকে আপনি নগদ দিতে চান।",
		give_cash_command_parameter_amount = "পরিমাণ",
		give_cash_command_parameter_amount_help = "প্লেয়ারকে টাকা দেওয়ার পরিমাণ।",
		give_cash_command_substitutes = "",

		bill_player_command = "বিল_প্লেয়ার",
		bill_player_command_help = "একজন অন্য প্লেয়ারকে একটি নির্দিষ্ট পরিমাণ টাকা বিল করুন।",
		bill_player_command_parameter_server_id = "সার্ভার আইডি",
		bill_player_command_parameter_server_id_help = "আপনি বিল পাঠাতে চান তার খেলোয়াড়ের সার্ভার আইডি।",
		bill_player_command_parameter_amount = "পরিমাণ",
		bill_player_command_parameter_amount_help = "বিল প্রেরণ করার জন্য আপনি যে পরিমাণ টাকা বিল করতে চান তা।",
		bill_player_command_substitutes = "বিল",

		-- game/notepads
		notepad_command = "নোটপ্যাড",
		notepad_command_help = "নোটপ্যাড টগল করুন।",
		notepad_command_substitutes = "",

		notepad_debug_command = "নোটপ্যাড_ডিবাগ",
		notepad_debug_command_help = "সম্প্রতি সম্পৃক্ত সকল নোটপ্যাড আইডি দেখায়।",
		notepad_debug_command_substitutes = "",

		notepad_info_command = "নোটপ্যাড_তথ্য",
		notepad_info_command_help = "একটি নির্দিষ্ট নোটপ্যাড সম্পর্কে তথ্য প্রদান করে।",
		notepad_info_command_parameter_notepad_id = "নোটপ্যাড আইডি",
		notepad_info_command_parameter_notepad_id_help = "এটি নিশ্চিত করতে নোটপ্যাডের আইডি হল।",
		notepad_info_command_substitutes = "",

		wipe_notepads_command = "উপস্থাপনা মুছুন",
		wipe_notepads_command_help = "একটি নির্দিষ্ট ব্যাসার্ধে সমস্ত নোটপ্যাড মুছে ফেলে।",
		wipe_notepads_command_parameter_radius = "ব্যাসার্ধ",
		wipe_notepads_command_parameter_radius_help = "আপনি যে ব্যাসার্ধে নোটপ্যাড মুছে ফেলতে চান (সর্বাধিক = ১০০)।",
		wipe_notepads_command_substitutes = "",

		sign_notepad_command = "sign_notepad",
		sign_notepad_command_help = "একটি নোটপ্যাডে স্বাক্ষর করে। (আপনার নামটি নীচে লিখে দেয় এবং পরবর্তী সম্পাদনা বন্ধ করে)",
		sign_notepad_command_parameter_slot = "স্লট",
		sign_notepad_command_parameter_slot_help = "যেখানে নোটপ্যাডটি রয়েছে সেটির ইনভেন্টরি স্লট।",
		sign_notepad_command_substitutes = "sign",

		-- game/notices
		add_notice_command = "বিজ্ঞপ্তি_যোগ_করুন",
		add_notice_command_help = "আপনার বর্তমান অবস্থানে একটি ফ্লোটিং বার্তা যোগ করে।",
		add_notice_command_parameter_message = "বার্তা",
		add_notice_command_parameter_message_help = "আপনি যা যোগ করতে চান।",
		add_notice_command_substitutes = "",

		remove_notice_command = "বিজ্ঞপ্তি_সরান",
		remove_notice_command_help = "একটি নির্দিষ্ট বার্তা সরান যা /add_notice দ্বারা যোগ করা হয়েছে।",
		remove_notice_command_parameter_message_id = "মেসেজ আইডি",
		remove_notice_command_parameter_message_id_help = "আপনি সরাতে চান বার্তার আইডি।",
		remove_notice_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "জমিত বস্তুসমূহের স্ক্যান করা",
		frozen_objects_scan_command_help = "একটি মডেল হ্যাশের জমিত বস্তুসমূহের জন্য স্ক্যান করুন এবং এটি সার্ভারে একটি ফাইলে লিখুন।",
		frozen_objects_scan_command_parameter_model_name = "মডেল নাম",
		frozen_objects_scan_command_parameter_model_name_help = "আপনি যে বস্তুটি স্ক্যান করতে চান তার মডেল নাম।",
		frozen_objects_scan_command_substitutes = "জমিত_বস্তুসমূহ",

		-- game/orbitcam
		orbitcam_command = "অবতরণক্যাম",
		orbitcam_command_help = "অবতরণক্যাম টগল করুন।",
		orbitcam_command_substitutes = "অবতরণ",

		-- game/overview
		overview_command = "সংক্ষিপ্তবিবরণ",
		overview_command_help = "অভিযোগ যুক্ত ইনটারেকশন মেনু, তথ্য কেন্দ্র এবং ডেটা ভিউয়ার চালু/বন্ধ করুন।",
		overview_command_substitutes = "",

		-- game/oxy
		oxy_tutorial_command = "অক্সিজেন টিউটোরিয়াল",
		oxy_tutorial_command_help = "আপনি পরবর্তীতে রান শুরু করতে চাইলে অক্সিজেন টিউটোরিয়াল চালু করুন।",
		oxy_tutorial_command_substitutes = "",

		-- game/panel
		panel_command = "প্যানেল",
		panel_command_help = "একজন অ্যাডমিনের মিনি প্যানেল পরিদর্শন করুন যাতে তিনি খেলোয়াড়ের নোট দেখতে পারেন এবং নতুন নোট জোড়া দিতে পারেন।",
		panel_command_parameter_server_id = "সার্ভার আইডি",
		panel_command_parameter_server_id_help = "আপনি স্যারভার আইডি দিয়ে খেলোয়াড়ের প্যানেল দেখতে পারেন (তিনি অনলাইন অথবা সম্প্রতি সংযুক্তি প্রত্যাহার করেছেন)।",
		panel_command_substitutes = "",

		-- game/ped_messages
		me_command = "আমি",
		me_command_help = "নিজের ক্যারেক্টারের কাজ বর্ণনা করুন।",
		me_command_parameter_message = "বার্তা",
		me_command_parameter_message_help = "আপনি যা বর্ণনা করতে চান তা লিখুন।",
		me_command_substitutes = "",

		do_command = "করছি",
		do_command_help = "ভূমিকা নথিভুক্ত করে রোলপ্লে দৃশ্যটি ভালোভাবে দেখান।",
		do_command_parameter_message = "বার্তা",
		do_command_parameter_message_help = "আপনি যা মানচিত্র দেখানোর সুবিধার্থে লিখুন।",
		do_command_substitutes = "",

		description_command = "বর্ণনা",
		description_command_help = "আপনার পেডটির বৈশিষ্ট্যগুলি বর্ণনা করতে একটি বার্তা সংযুক্ত করুন।",
		description_command_parameter_message = "বার্তা",
		description_command_parameter_message_help = "আপনি যে মানুষ এর সাথে এটাচ করতে চান তার জন্য মেসেজ।",
		description_command_substitutes = "",

		attempt_command = "প্রচেষ্টা",
		attempt_command_help = "সাফলতার সম্ভাবনা সহ কিছু চেষ্টা করুন।",
		attempt_command_parameter_message = "বার্তা",
		attempt_command_parameter_message_help = "আপনি যা চেষ্টা করছেন তা বর্ণনা করুন।",
		attempt_command_substitutes = "",

		dice_command = "পাচা",
		dice_command_help = "একটি স্ট্যান্ডার্ড পাচা রোল করুন।",
		dice_command_substitutes = "",

		roll_command = "রোল",
		roll_command_help = "কাস্টম সেটিংস সহ একটি আধুনিক এবং জামানতযুক্ত পাচা রোল করুন।",
		roll_command_parameter_rolls = "রোল",
		roll_command_parameter_rolls_help = "আপনি কতটি রোল করতে চান তা উল্লেখ করুন। আপনি ২০টির মধ্যে সীমিত।",
		roll_command_parameter_max = "সর্বাধিক",
		roll_command_parameter_max_help = "একটি রোলে আপনি কত বেশি মান পাবেন তা উল্লেখ করুন। এখানে সর্বোচ্চ মান হল ১,০০,০০০।",
		roll_command_substitutes = "",

		card_command = "কার্ড",
		card_command_help = "একটি অজানা কার্ড টি তুলে নিন।",
		card_command_substitutes = "",

		ped_messages_command = "পেডের_বার্তা",
		ped_messages_command_help = "চ্যাটে পেডের বার্তা দেখাবেন কি না সেটি টগল করুন।",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "পেড_স্পলান্‌",
		ped_spawn_command_help = "একটি পেড স্পন করে।",
		ped_spawn_command_parameter_model = "মডেল",
		ped_spawn_command_parameter_model_help = "আপনি যে পেড স্পন করতে চান সেটি মডেল।",
		ped_spawn_command_parameter_weapon = "অস্ত্র",
		ped_spawn_command_parameter_weapon_help = "কোন অস্ত্র পেডটি থাকা উচিত (ঐচ্ছিক, এটি ছাড়াও \"false\" এ দিন)।",
		ped_spawn_command_parameter_fearless = "দমফাঁস না হওয়া",
		ped_spawn_command_parameter_fearless_help = "পেডটি হওয়া উচিত কিনা জুতা / অস্ত্রের কাজেও ভয়ভীত নয়। ডিফল্ট: না।",
		ped_spawn_command_substitutes = "",

		ped_task_command = "পেড টাস্ক",
		ped_task_command_help = "আপনার স্পল করা পেডগুলিকে একটি কাজ দেয়।",
		ped_task_command_parameter_task = "কাজ",
		ped_task_command_parameter_task_help = "স্পল করা পেডগুলিকে কি কাজ সম্পাদন করা উচিত।",
		ped_task_command_parameter_target = "লক্ষ্য",
		ped_task_command_parameter_target_help = "স্পল করা পেডগুলিকে লক্ষ্য করার জন্য সার্ভার আইডি (ঐচ্ছিক)।",
		ped_task_command_substitutes = "",

		ped_emote_command = "ped_emote",
		ped_emote_command_help = "আপনার স্পল করা পেডগুলিকে একটি নির্দিষ্ট ইমোট খেলতে বলে।",
		ped_emote_command_parameter_emote = "ইমোট",
		ped_emote_command_parameter_emote_help = "স্পল করা পেডগুলিকে কোনও ইমোট খেলতে বলা হয়।",
		ped_emote_command_substitutes = "",

		ped_remove_command = "পেড সরাও",
		ped_remove_command_help = "আপনার স্পান করা সকল পেডের বিলুপ্তি করে।",
		ped_remove_command_substitutes = "",

		list_ped_emotes_command = "পেড ইমোটগুলি তালিকা করো",
		list_ped_emotes_command_help = "সমস্ত উপলব্ধ পেড ইমোট তালিকা করে।",
		list_ped_emotes_command_substitutes = "",

		list_ped_tasks_command = "পেড কাজের তালিকা করো",
		list_ped_tasks_command_help = "সমস্ত উপলব্ধ পেড কাজের তালিকা করে।",
		list_ped_tasks_command_substitutes = "",

		-- game/ped_steal
		ped_steal_command = "পেড চুরি করো",
		ped_steal_command_help = "অন্যদের পেড চুরি করো।",
		ped_steal_command_parameter_server_id = "সার্ভার আইডি",
		ped_steal_command_parameter_server_id_help = "লোকের সার্ভার আইডি।",
		ped_steal_command_substitutes = "পেড_চুরি",

		-- game/ped_takeover
		takeover_ped_command = "পেড_নিয়ন্ত্রণ_গ্রহণ",
		takeover_ped_command_help = "একটি নির্দিষ্ট পেডটি আপনি নিয়ন্ত্রণ করতে পারেন।",
		takeover_ped_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		takeover_ped_command_parameter_network_id_help = "আপনি যা নিয়ন্ত্রণ করতে চান তার নেটওয়ার্ক আইডি।",
		takeover_ped_command_substitutes = "নিয়ন্ত্রণ_গ্রহণ",

		-- game/ped_tasks
		ped_debug_command = "পেড_ডিবাগ",
		ped_debug_command_help = "একটি পেডের সম্পর্কে ডিবাগ তথ্য।",
		ped_debug_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		ped_debug_command_parameter_network_id_help = "তথ্য ডিবাগ করার জন্য পেডের নেটওয়ার্ক আইডি।",
		ped_debug_command_substitutes = "",

		-- game/phone_numbers
		custom_phone_number_command = "কাস্টম_ফোন_নম্বর",
		custom_phone_number_command_help = "আপনার ফোন নম্বর পরিবর্তন করুন।",
		custom_phone_number_command_parameter_phone_number = "ফোন নম্বর",
		custom_phone_number_command_parameter_phone_number_help = "যে ফোন নম্বর আপনি পরিবর্তন করতে চান।  নিশ্চিত হউন যে এটি XXX-XXXX ফরম্যাটে অনুসরণ করে।",
		custom_phone_number_command_substitutes = "কাস্টম_নাম্বার",

		phone_number_available_command = "ফোন_নম্বর_উপলব্ধ",
		phone_number_available_command_help = "জানতে দেখুন একটি ফোন নম্বর উপলব্ধ আছে কি না।",
		phone_number_available_command_parameter_phone_number = "ফোন নাম্বার",
		phone_number_available_command_parameter_phone_number_help = "আপনি যাচাই করতে চান তা নির্দিষ্ট ফোন নম্বর। নিশ্চিত হউন যে সেটি XXX-XXXX এর ফরম্যাট অনুসরণ করে।",
		phone_number_available_command_substitutes = "সংখ্যা_উপলভ্য",

		-- game/player_control
		drive_for_command = "গাড়ি_চালান",
		drive_for_command_help = "একজন প্লেয়ারের গাড়ি চালান এবং তার জন্য গাড়ি নেওয়া হবে।",
		drive_for_command_parameter_server_id = "সার্ভার আইডি",
		drive_for_command_parameter_server_id_help = "আপনি যার জন্য গাড়ি চালাতে চান সে প্লেয়ারের সার্ভার আইডি।",
		drive_for_command_substitutes = "",

		-- game/player_scales
		set_player_scale_command = "প্লেয়ারের_স্কেল_সেট_করুন",
		set_player_scale_command_help = "একটি প্লেয়ার এর স্কেল সেট করুন।",
		set_player_scale_command_parameter_scale = "স্কেল",
		set_player_scale_command_parameter_scale_help = "তাদের জন্য যে আপনি সেট করতে চান তাদের স্কেল।",
		set_player_scale_command_parameter_server_id = "সার্ভার আইডি",
		set_player_scale_command_parameter_server_id_help = "আপনি যে সার্ভার আইডি এর জন্য স্কেল সেট করতে চান তা নির্দিষ্ট করুন। এটি ফাঁকা ছেড়ে দেওয়া আপনাকে অটো-সিলেক্ট করবে।",
		set_player_scale_command_substitutes = "player_scale, প্লেয়ারের_আয়তন_সেট_করুন, প্লেয়ার_সাইজ_সেট_করুন",

		-- game/player_stats
		player_stats_command = "খেলোয়াড় পরিসংখ্যান",
		player_stats_command_help = "খেলোয়াড় পরিসংখ্যান বৈশিষ্ট্যটি টগল করতে হবে।",
		player_stats_command_parameter_render_range = "রেন্ডার পরিসীমা",
		player_stats_command_parameter_render_range_help = "খেলোয়াড়দের জন্য রেন্ডার পরিসীমা পরিবর্তন করুন। ডিফল্ট হলো ২০০।",
		player_stats_command_substitutes = "",

		-- game/pole_dancing
		pole_dancing_offset_command = "স্তম্ভ নাচের অফসেট",
		pole_dancing_offset_command_help = "স্তম্ভ নাচের অফসেট টুলটি টগল করুন।",
		pole_dancing_offset_command_parameter_model_name = "মডেল নাম",
		pole_dancing_offset_command_parameter_model_name_help = "টুইক করতে চান মডেল নামটি প্রবেশ করান।",
		pole_dancing_offset_command_substitutes = "",

		-- game/properties
		properties_debug_command = "বিশেষত্ব_ডিবাগ",
		properties_debug_command_help = "বিশেষত্ব ডিবাগ চালু/বন্ধ করুন।",
		properties_debug_command_substitutes = "বিশেষত্ব",

		-- game/props
		props_manage_command = "সম্পদ_ব্যবস্থাপনা",
		props_manage_command_help = "সন্ধানযোগ্য সম্পদগুলি ব্যবস্থাপনা করুন।",
		props_manage_command_substitutes = "ব্যবস্থাপনা_সম্পদ, এমপি",

		spawn_prop_command = "সম্পদ_উৎপন্ন_করুন",
		spawn_prop_command_help = "একটি সম্পদ উৎপন্ন করুন।",
		spawn_prop_command_parameter_model_hash = "মডেল",
		spawn_prop_command_parameter_model_hash_help = "আপনি যে সম্পদ মডেলটি উৎপন্ন করতে চান তা উল্লেখ করুন।",
		spawn_prop_command_parameter_network = "নেটওয়ার্ক",
		spawn_prop_command_parameter_network_help = "আপনি কি প্রপটি নেটওয়ার্ক করতে চান? এটি শুধুমাত্র চলমান অবস্থান পরিবর্তনযোগ্য প্রপটিগুলির জন্য সুপারিশ করা হয়।",
		spawn_prop_command_parameter_no_pickup = "নো পিকআপ",
		spawn_prop_command_parameter_no_pickup_help = "কি এই প্রপটি শুধুমাত্র সুপার অ্যাডমিনগনদ্বারা উঠিয়ে নেওয়া হবে?",
		spawn_prop_command_substitutes = "",

		spawn_exact_prop_command = "স্পনিং এক্স্যাক্ট প্রপ",
		spawn_exact_prop_command_help = "আপনার নির্দিষ্ট অবস্থানে প্রপটি স্পট করুন।",
		spawn_exact_prop_command_parameter_model_name = "মডেলের নাম",
		spawn_exact_prop_command_parameter_model_name_help = "আপনি স্প্যান করতে চান প্রপ মডেল।",
		spawn_exact_prop_command_parameter_ground = "মাটি",
		spawn_exact_prop_command_parameter_ground_help = "প্রপ যদি মাটিতে স্প্যান করা হয় তবে তা নির্ধারণ করুন।",
		spawn_exact_prop_command_substitutes = "",

		props_debug_command = "props_debug",
		props_debug_command_help = "আপনার চারপাশে সব প্রপস ডিবাগ করে।",
		props_debug_command_substitutes = "",

		delete_prop_command = "প্রপ মুছুন",
		delete_prop_command_help = "একটি প্রপ আইডি দেওয়া হলে এটি মুছে ফেলা হয়।",
		delete_prop_command_parameter_prop_id = "প্রপ আইডি",
		delete_prop_command_parameter_prop_id_help = "আপনি যে প্রপ মুছতে চাচ্ছেন সেটির আইডি।",
		delete_prop_command_substitutes = "",

		wipe_props_command = "প্রপস মুছুন",
		wipe_props_command_help = "আপনার চারমিলে প্রপস মুছে ফেলে।",
		wipe_props_command_parameter_radius = "ব্যাসার্ধ",
		wipe_props_command_parameter_radius_help = "ওয়াইপের জন্য ব্যাসার্ধ (1-250)।",
		wipe_props_command_substitutes = "",

		-- game/radio
		radio_command = "রেডিও",
		radio_command_help = "রেডিও ইউআই চালিয়ে দিন।",
		radio_command_substitutes = "",

		radio_debug_command = "রেডিও_ডিবাগ",
		radio_debug_command_help = "রেডিও ডিবাগ চালিয়ে দিন।",
		radio_debug_command_substitutes = "",

		frequency_command = "ফ্রিকোয়েন্সি",
		frequency_command_help = "হালনাগাদ করুন আপনার রেডিওর ফ্রিকোয়েন্সি কত।",
		frequency_command_parameter_frequency = "ফ্রিকোয়েন্সি",
		frequency_command_parameter_frequency_help = "আপনি যে ফ্রিকোয়েন্সিতে যেতে চান।",
		frequency_command_substitutes = "ফ্রিকোয়েন্সি",

		force_frequency_command = "force_frequency",
		force_frequency_command_help = "রেডিও থাকলে না হওয়া যায় বা ডিউটি থাকলেও না হওয়া যায় একটি রেডিও ফ্রিকোয়েন্সিতে যোগদান করুন।",
		force_frequency_command_parameter_frequency = "ফ্রিকোয়েন্সি",
		force_frequency_command_parameter_frequency_help = "আপনি যে ফ্রিকোয়েন্সিতে যেতে চান।",
		force_frequency_command_substitutes = "",

		random_frequency_command = "random_frequency",
		random_frequency_command_help = "আপনার রেডিওকে একটি যিচা ফ্রিকোয়েন্সি দেয়।",
		random_frequency_command_substitutes = "random_freq, rfreq",

		radio_sounds_command = "radio_sounds",
		radio_sounds_command_help = "রেডিও ধ্বনি প্রভাবের ভলিউম সমন্বয় করুন।",
		radio_sounds_command_parameter_volume = "ভলিউম স্তর",
		radio_sounds_command_parameter_volume_help = "রেডিও ধ্বনি সম্পর্কিত ভলিউম স্তর। এর মান 0 এবং 1 এর মধ্যে হতে হবে। ডিফল্ট মান 0.1। এটি খালি রাখলে আপনার বর্তমান ভলিউম স্তর ফিরে দেয়।",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "radio_volume",
		radio_volume_command_help = "হাইফাইর ভলিউম নির্ধারণ করুন।",
		radio_volume_command_parameter_volume = "ভলিউম লেভেল",
		radio_volume_command_parameter_volume_help = "হাইফাইর ভলিউম লেভেল। মানটি 0 থেকে 1 এর মধ্যে হতে হবে। ডিফল্ট মান 0.5। এটি ফাঁকা রাখলে আপনার বর্তমান ভলিউম লেভেল প্রদর্শিত হবে।",
		radio_volume_command_substitutes = "",

		-- game/relationships
		relationships_debug_command = "relationships_debug",
		relationships_debug_command_help = "পেডগুলোর সম্পর্ক ডিবাগকে চালু/বন্ধ করুন।",
		relationships_debug_command_substitutes = "",

		-- game/reskin
		reskin_command = "reskin",
		reskin_command_help = "একটি ব্যবহারকারীর জন্য রিস্কিন ট্রিগার করুন।",
		reskin_command_parameter_server_id = "সার্ভার আইডি",
		reskin_command_parameter_server_id_help = "এই কমান্ড ব্যবহার করে সার্ভার আইডি প্লেয়ার নির্বাচন করতে পারবেন যার জন্য রেসকিন করতে চান। আপনি নিজেই এটি অটো-সিলেক্ট করতে পারেন।",
		reskin_command_substitutes = "",

		redeem_reskin_command = "redeem_reskin",
		redeem_reskin_command_help = "ক্রয়কৃত রেসকিন উত্তোলন করুন।",
		redeem_reskin_command_substitutes = "",

		-- game/riot_mode
		toggle_riot_mode_command = "riot_mode",
		toggle_riot_mode_command_help = "সকল প্লেয়ারের জন্য রাইয়ট মোড টগল করুন।",
		toggle_riot_mode_command_substitutes = "",

		add_riot_player_command = "add_riot_player",
		add_riot_player_command_help = "রাইয়ট সমূহ খেলোয়াড়ের সাথে হামলা করতে আংশিকভাবে সমস্ত প্লেয়ারদের জন্য 'রাইয়ট লিস্ট' এ খেলোয়াড়দের যুক্ত করুন।",
		add_riot_player_command_parameter_server_id = "সার্ভার আইডি",
		add_riot_player_command_parameter_server_id_help = "আপনি যে খেলোয়াড়ের সংখ্যা যুক্ত করতে চান সেই খেলোয়াড়ের সার্ভার আইডি। সম্পূর্ণ নিজস্ব ভাগ হিসেবে এই স্থানটি ফাঁকা রাখুন।",
		add_riot_player_command_substitutes = "",

		remove_riot_player_command = "remove_riot_player",
		remove_riot_player_command_help = "একজন 'রাইয়ট সূচিতে' খেলোয়াড় মুছুন।",
		remove_riot_player_command_parameter_server_id = "সার্ভার আইডি",
		remove_riot_player_command_parameter_server_id_help = "আপনি যে খেলোয়াড় মুছে ফেলতে চান সেই খেলোয়াড়ের সার্ভার আইডি। সম্পূর্ণ নিজস্ব ভাগ হিসেবে এই স্থানটি ফাঁকা রাখুন।",
		remove_riot_player_command_substitutes = "",

		-- game/scoreboard
		metagame_command = "মেটা",
		metagame_command_help = "প্লেয়ারদের সার্ভার আইডি স্থিতিশীল করার টগল করুন।",
		metagame_command_substitutes = "মেটা, এম",

		-- game/security_cameras
		security_cameras_command = "সিকিউরিটি_ক্যামেরা",
		security_cameras_command_help = "সিকিউরিটি ক্যামেরা চালু / বন্ধ করুন।",
		security_cameras_command_substitutes = "সেক, সেক_ক্যাম, সেকক্যাম, সেক_ক্যাম্স, সেকক্যাম্স, সিকিউরিটি_ক্যাম, সিকিউরিটিক্যাম, সিকিউরিটি_ক্যামেরা, সিকিউরিটিক্যামেরা",

		security_cameras_scan_command = "সিকিউরিটি_ক্যামেরা_স্ক্যান",
		security_cameras_scan_command_help = "সমস্ত পরিচিত সিকিউরিটি ক্যামেরা অবজেক্ট একটি টেক্সট ফাইলে স্টোর করুন।",
		security_cameras_scan_command_substitutes = "স্ক্যান, ক্যামেরা_স্ক্যান, স্ক্যানক্য্যামস",

		security_cameras_health_command = "ক্যামেরার_স্বাস্থ্য",
		security_cameras_health_command_help = "সিকিউরিটি ক্যামেরার স্বাস্থ্য ডিবাগ টুল টগল করুন।",
		security_cameras_health_command_substitutes = "ক্যাম_হেলথ",

		-- game/shield
		shield_command = "শিল্ড",
		shield_command_help = "বলিস্টিক শিল্ড টগল করুন।",
		shield_command_substitutes = "",

		-- game/shockwaves
		create_shockwave_command = "শকউইভ_তৈরি_করুন",
		create_shockwave_command_help = "আপনার বর্তমান অবস্থানে একটি শক তৈরি করে।",
		create_shockwave_command_parameter_force = "জোর",
		create_shockwave_command_parameter_force_help = "স্টান্ড বিশেষ সঙ্গে তীব্রতা (1-1000)।",
		create_shockwave_command_parameter_radius = "রেডিউস",
		create_shockwave_command_parameter_radius_help = "স্ট্যান্ড বিশেষের আয়তন (1-100)।",
		create_shockwave_command_substitutes = "দ্রব্যস্ফোরক",

		push_player_command = "পুশ_প্লেয়ার",
		push_player_command_help = "ব্যবহারকারীকে এবং তাদের গাড়ি আপনার থেকে দূরে টাকিয়ে দিন।",
		push_player_command_parameter_server_id = "সার্ভার আইডি",
		push_player_command_parameter_server_id_help = "প্লেয়ারের সার্ভার আইডি।",
		push_player_command_substitutes = "পুশ",

		-- game/shrooms
		draw_shroom_areas_command = "draw_shroom_areas",
		draw_shroom_areas_command_help = "সমস্ত শ্রুম এলাকা আঁকুন এবং অধিক যোগ করুন।",
		draw_shroom_areas_command_substitutes = "shroom_areas",

		-- game/spying
		search_for_devices_command = "search_for_devices",
		search_for_devices_command_help = "নজরবহির্য যন্ত্রসমূহ অনুসন্ধান করুন।",
		search_for_devices_command_substitutes = "অনুসন্ধান_যন্ত্রসমূহ, অনুসন্ধানযন্ত্রসমূহ, s4d",

		-- game/spectating
		spectate_command = "spectate",
		spectate_command_help = "একটি নির্দিষ্ট প্লেয়ারকে ভেঙ্গে দেখুন।",
		spectate_command_parameter_server_id = "সার্ভারের আইডি",
		spectate_command_parameter_server_id_help = "প্লেয়ারের সার্ভার আইডি যাকে আপনি দেখতে চান।",
		spectate_command_substitutes = "দৃষ্টিভঙ্গি",

		-- game/status
		status_reset_command = "status_reset",
		status_reset_command_help = "স্ট্যাটাস স্তরগুলি রিসেট করুন।",
		status_reset_command_parameter_server_id = "সার্ভার আইডি",
		status_reset_command_parameter_server_id_help = "আপনি কোন প্লেয়ারের স্ট্যাটাস রিসেট করতে চান সেটি সেট করুন। যদি খালি রাখা হয়, আপনারই নিজের স্ট্যাটাস রিসেট হবে।",
		status_reset_command_substitutes = "sr",

		toggle_status_command = "toggle_status",
		toggle_status_command_help = "কিছু স্ট্যাটাস যেমন হাঙ্গার, তৃষ্ণা এবং জন্য নিষ্ক্রিয় করে (অথবা সক্রিয় করে)।",
		toggle_status_command_substitutes = "",

		set_body_armor_command = "set_body_armor",
		set_body_armor_command_help = "কারো বডি আরমর স্তর সেট করুন।",
		set_body_armor_command_parameter_server_id = "সার্ভার আইডি",
		set_body_armor_command_parameter_server_id_help = "আপনি কোন ব্যবহারকারীর বডি আর্মার স্তর সেট করতে চান তা নির্দিষ্ট করতে হবে। আপনি এটি খালি রাখতে পারেন বা `0` এ রাখতে পারেন নিজেকে নির্বাচন করতে। সবার বডি আর্মারের স্তর সেট করতে `-1` করতে পারেন।",
		set_body_armor_command_parameter_body_armor_level = "বডি আর্মার স্তর",
		set_body_armor_command_parameter_body_armor_level_help = "আপনি সেট করতে চান বডি আর্মার স্তর নির্দিষ্ট করতে হবে। এই মান `0` থেকে `100` পর্যন্ত হতে পারে। এই মানটি খালি বা সঠিক মান দেওয়া না হলে ডিফল্ট মান `100` হবে।",
		set_body_armor_command_substitutes = "বডি_আরমর, আরমর",

		-- game/streamer_mode
		toggle_streamer_mode_command = "স্ট্রিমার_মোড_টগল",
		toggle_streamer_mode_command_help = "স্ট্রিমার মোড টগল করুন। এটি প্লেয়ারদের বাইরে নেই যখন আপনি নিকটবর্তী হয় এবং এমন কিছুই না করতে দেবে যেমন এমনির ইমোট ইত্যাদি।",
		toggle_streamer_mode_command_substitutes = "স্ট্রিমার_মোড, স্ট্রিমার",

		-- game/sync
		time_hour_command = "সময়_ঘন্টা",
		time_hour_command_help = "বর্তমান ঘড়ির ঘন্টা সেট করুন।",
		time_hour_command_parameter_hour = "ঘন্টা",
		time_hour_command_parameter_hour_help = "আপনি যে ঘন্টাটি ঘড়ি সেট করতে চান তা হলে ঘড়ির মান। মানটি 0 থেকে 23 এর মধ্যে হতে হবে।",
		time_hour_command_parameter_transition = "সংক্রমণ",
		time_hour_command_parameter_transition_help = "সংক্রমণ ব্যবহার করে সময় পরিবর্তন করতে চান কি না (হ্যাঁ/না, ডিফল্ট না).",
		time_hour_command_substitutes = "ঘণ্টা",

		time_minute_command = "time_minute",
		time_minute_command_help = "বর্তমান ঘড়ির মিনিট নির্ধারিত করুন।",
		time_minute_command_parameter_minute = "মিনিট",
		time_minute_command_parameter_minute_help = "ঘড়ি নির্ধারিত করতে চাইতে মিনিটের মান দিন। মানটি ০ থেকে ৫৯ হতে হবে।",
		time_minute_command_substitutes = "মিনিট",

		local_time_command = "স্থানীয়_সময়",
		local_time_command_help = "আপনার জন্য সময় সেট করে।",
		local_time_command_parameter_time = "সময়",
		local_time_command_parameter_time_help = "আপনি যে সময়টি স্থানীয় ঘড়ির জন্য সেট করতে চান। মানটি 0:00 থেকে 23:59 এর মধ্যে হতে হবে।",
		local_time_command_substitutes = "",

		local_weather_command = "স্থানীয়_আবহাওয়া",
		local_weather_command_help = "আপনার জন্য আবহাওয়া সেট করে।",
		local_weather_command_parameter_weather = "আবহাওয়া",
		local_weather_command_parameter_weather_help = "আপনি যে আবহাওয়াটি স্থানীয় আবহাওয়াতে সেট করতে চান। /weather একই মানগুলি নিয়ে।",
		local_weather_command_substitutes = "",

		brighter_nights_command = "উজ্জ্বল রাত্রি",
		brighter_nights_command_help = "একজনকে মাত্র সময়টি 12:00টার সেট করে এবং আবহাওয়াকে অতিরিক্ত-সূর্যের জন্য সেট করে।",
		brighter_nights_command_substitutes = "",

		weather_command = "আবহাওয়া",
		weather_command_help = "আবহাওয়া পরিবর্তন করুন।",
		weather_command_parameter_weather = "আবহাওয়া নাম",
		weather_command_parameter_weather_help = "আপনি সেট করতে চান আবহাওয়ার নাম। বৈধ আবহাওয়ার নাম হল EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS এবং HALLOWEEN।",
		weather_command_substitutes = "",

		advance_weather_command = "পূর্বাভাস আবহাওয়া",
		advance_weather_command_help = "প্রাকৃতিকভাবে পরবর্তী আবহাওয়া এগিয়ে যাওয়া।",
		advance_weather_command_substitutes = "",

		freeze_time_command = "সময় জমাট করুন",
		freeze_time_command_help = "সময় জমাট বা না করা টগল করুন।",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "আবহাওয়া জমাট করুন",
		freeze_weather_command_help = "আবহাওয়া জমাট বা না করা টগল করুন।",
		freeze_weather_command_substitutes = "",

		blackout_command = "সম্পূর্ণ নিরাপত্তাহীনতা",
		blackout_command_help = "সম্পূর্ণ নিরাপত্তাহীনতা সক্রিয় বা না করা টগল করুন।",
		blackout_command_substitutes = "",

		-- game/tablet
		tablet_command = "ট্যাবলেট",
		tablet_command_help = "ট্যাবলেট ইউ আই (যদি আপনার ট্যাবলেট থাকে) খুলে।",
		tablet_command_substitutes = "",

		-- game/test_server
		set_vehicle_preset_command = "set_vehicle_preset",
		set_vehicle_preset_command_help = "আপনি যে গাড়িতে আছেন সেই গাড়িকে পূর্ণরুপে আপগ্রেড করে এবং নির্দিষ্ট প্রিসেটগুলির সাথে রঙ প্রয়োগ করে।",
		set_vehicle_preset_command_parameter_preset = "প্রিসেট",
		set_vehicle_preset_command_parameter_preset_help = "আপনি যেই রঙ প্রিসেট প্রয়োগ করতে চান (লাল, নীল, সবুজ, হলুদ, কমলা, সাদা, কাল)।",
		set_vehicle_preset_command_substitutes = "vehicle_preset",

		detach_all_doors_command = "detach_all_doors",
		detach_all_doors_command_help = "আপনি যে গাড়িতে আছেন সেই গাড়ির সব দরজাগুলি বিচ্ছিন্ন করে দেয়।",
		detach_all_doors_command_substitutes = "",

		pop_all_tires_command = "সবগুলো টায়ার ফোটাও",
		pop_all_tires_command_help = "আপনি যে গাড়িতে আছেন তার সবগুলো টায়ার ফোটায়।",
		pop_all_tires_command_substitutes = "",

		upgrade_vehicle_fully_command = "গাড়িটি সম্পূর্ণ আপগ্রেড করুন",
		upgrade_vehicle_fully_command_help = "আপনি যে গাড়িতে আছেন তা সম্পূর্ণ আপগ্রেড করে।",
		upgrade_vehicle_fully_command_substitutes = "",

		random_vehicle_colors_command = "এলোমেলো গাড়ির রঙ",
		random_vehicle_colors_command_help = "আপনি যে গাড়িতে আছেন তার রঙগুলি এলোমেলো করুন।",
		random_vehicle_colors_command_parameter_lights = "লাইট",
		random_vehicle_colors_command_parameter_lights_help = "আলোক এবং নিয়ন রেন্ডম করা উচিত (ক্সেনন এবং নিওন)।",
		random_vehicle_colors_command_substitutes = "",

		starve_command = "ভোজন_ও_প্যানি_শূন্য",
		starve_command_help = "আপনার খাদ্য ও প্রবাহী শুন্য করে।",
		starve_command_substitutes = "",

		car_command = "গাড়ি",
		car_command_help = "একটি এলোমেলো গাড়ি জন্মাতে দেয়।",
		car_command_substitutes = "",

		-- game/time_scale
		set_time_scale_command = "সময়_স্কেল_নির্ধারণ_করুন",
		set_time_scale_command_help = "সার্ভারের সময় স্কেল নির্ধারণ করুন।",
		set_time_scale_command_parameter_time_scale = "সময় স্কেল",
		set_time_scale_command_parameter_time_scale_help = "আপনি যে সময় স্কেলটি নির্ধারণ করতে চান তা নির্দেশ করুন। মান 0 এবং 1 এর মধ্যে হতে হবে।",
		set_time_scale_command_substitutes = "সময়_স্কেল, মন্থন_মোশন",

		-- game/titanic
		create_titanic_command = "টাইটানিক_তৈরি_করুন",
		create_titanic_command_help = "টাইটানিক তৈরি করুন যা ডুবতে যাচ্ছে।",
		create_titanic_command_parameter_sink_time = "ডুবানো সময়",
		create_titanic_command_parameter_sink_time_help = "উপস্থিতি থাকার আগে নৌকা ডুবানোর পরিমাণ মিনিটে লিখুন।",
		create_titanic_command_substitutes = "",

		-- game/top_down
		top_down_command = "টপ_ডাউন",
		top_down_command_help = "টপ ডাউন দৃশ্য পরিবর্তন করে।",
		top_down_command_substitutes = "",

		-- game/trackers
		tracker_command = "ট্র্যাকার",
		tracker_command_help = "আপনার ট্র্যাকারের দৃশ্যতার টগল করুন।",
		tracker_command_substitutes = "",

		trackers_split_command = "ট্র্যাকারগুলি_বিভাজন",
		trackers_split_command_help = "মানচিত্রে একটি বিভাগে ট্র্যাকারগুলি সংরক্ষণ করার মধ্যে এবং তাদের ভিন্নভাবে থাকার মধ্যে টগল করা।",
		trackers_split_command_substitutes = "",

		-- game/trains
		trains_debug_command = "ট্রেন ডিবাগ",
		trains_debug_command_help = "ট্রেন ডিবাগ চালু / বন্ধ করুন।",
		trains_debug_command_substitutes = "",

		spawn_train_command = "ট্রেন উত্পন্ন করুন",
		spawn_train_command_help = "একটি ট্রেন উত্পন্ন করুন।",
		spawn_train_command_parameter_track_id = "ট্র্যাক আইডি",
		spawn_train_command_parameter_track_id_help = "ট্রেন জন্মানোর জন্য ট্র্যাক আইডি নির্দিষ্ট করুন। (1 থেকে 12 পর্যন্ত)",
		spawn_train_command_substitutes = "",

		-- game/treasure_maps
		spawn_map_piece_command = "ম্যাপ টুকরা উত্পন্ন করুন",
		spawn_map_piece_command_help = "একটি খোজের ম্যাপ টুকরা উত্পন্ন করুন।",
		spawn_map_piece_command_parameter_map_tier = "ম্যাপ টিয়ার",
		spawn_map_piece_command_parameter_map_tier_help = "আপনি যে ম্যাপ টিয়ারের জন্য টুকরা উত্পন্ন করতে চান সেটা নির্দিষ্ট করুন।",
		spawn_map_piece_command_parameter_piece_number = "খনক নম্বর",
		spawn_map_piece_command_parameter_piece_number_help = "আপনি কোন খনক নম্বর স্পন করতে চান তা লিখুন।",
		spawn_map_piece_command_substitutes = "",

		-- game/tsunami
		set_ocean_scaler_command = "set_ocean_scaler",
		set_ocean_scaler_command_help = "সমুদ্র স্কেলার সাধারণত পরিবর্তন করুন।",
		set_ocean_scaler_command_parameter_intensity = "তীব্রতা",
		set_ocean_scaler_command_parameter_intensity_help = "আপনি যা সেট করতে চান সেটির তীব্রতা।",
		set_ocean_scaler_command_substitutes = "ocean_scaler, set_waves_intensity, waves_intensity",

		-- game/vdm
		vdm_command = "ভিডিএম",
		vdm_command_help = "নির্দিষ্ট এনপিসি ট্রাই করে লক্ষ্যবিহীনভাবে লক্ষ্যবিন্যাস চেষ্টা করবে।",
		vdm_command_parameter_target = "লক্ষ্য",
		vdm_command_parameter_target_help = "লক্ষ্যের প্লেয়ারের সার্ভার আইডি।",
		vdm_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		vdm_command_parameter_network_id_help = "লোকাল নেটওয়ার্ক আইডি (বা এর গাড়ি).",
		vdm_command_substitutes = "",

		vdm_clear_command = "ভিডিএম_ক্লিয়ার",
		vdm_clear_command_help = "সমস্ত ভিডিএম লক্ষ্যগুলি মুছে ফেলে।",
		vdm_clear_command_substitutes = "",

		-- game/voice
		voice_debug_command = "ভয়েস_ডিবাগ",
		voice_debug_command_help = "ভয়েস ডিবাগ চালু / বন্ধ করুন।",
		voice_debug_command_parameter_server_id = "সার্ভার আইডি",
		voice_debug_command_parameter_server_id_help = "যদি আপনি কারও জন্য 'ভয়েস ডিবাগ' পরিবর্তন করতে চান, তবে তাদের সার্ভার আইডি এখানে ইনসার্ট করুন।",
		voice_debug_command_substitutes = "",

		muted_areas_debug_command = "মিউট্ড এলাকা ডিবাগ",
		muted_areas_debug_command_help = "সমস্ত মিউট ভয়েস এলাকার উপর চিহ্নিতকরণ করে।",
		muted_areas_debug_command_substitutes = "muted_areas",

		listen_command = "শুনুন",
		listen_command_help = "একজন ব্যবহারকারীর জন্য শোনতে পরিবর্তনশীল মোড টগল করে। (তথ্যবহুলতা করুন যা তারা বলে)",
		listen_command_parameter_server_id = "সার্ভার আইডি",
		listen_command_parameter_server_id_help = "আপনি যার কথা শুনতে চান তা ব্যবহার করুন।",
		listen_command_substitutes = "",

		toggle_voice_mute_command = "toggle_voice_mute",
		toggle_voice_mute_command_help = "কারও ভয়েস চ্যাট অঙ্গীকার / অগ্রহণ করে না।",
		toggle_voice_mute_command_parameter_server_id = "সার্ভার আইডি",
		toggle_voice_mute_command_parameter_server_id_help = "আপনি যার ভয়েস অগ্রহণ / নিরোধ করতে চান তা এখানে লিখুন।",
		toggle_voice_mute_command_substitutes = "voice_mute",

		-- game/wizard
		wizard_command = "wizard",
		wizard_command_help = "উইজার্ড মেনু খুলুন।",
		wizard_command_parameter_server_id = "সার্ভার আইডি",
		wizard_command_parameter_server_id_help = "মেনুতে একটি নির্দিষ্ট খেলোয়াড় নির্বাচন করুন (ঐচ্ছিক)।",
		wizard_command_substitutes = "",

		ragdoll_player_command = "প্লেয়ারকে_রেগডল_করুন",
		ragdoll_player_command_help = "একটি খেলোয়াড়কে রেগডল করে।",
		ragdoll_player_command_parameter_server_id = "সার্ভার আইডি",
		ragdoll_player_command_parameter_server_id_help = "আপনি যে খেলোয়াড়ের রেগডল করতে চান তার সার্ভার আইডি।",
		ragdoll_player_command_parameter_force = "বলসার",
		ragdoll_player_command_parameter_force_help = "রেগডল করার পর কোনও একটি যিনি খেলোয়াড়ের উপর বিভিন্ন প্রকারের বলসার ব্যবহার করতে চান।",
		ragdoll_player_command_substitutes = "",

		ragdoll_radius_command = "র‌্যাগডোল_রেডিউস_কমান্ড",
		ragdoll_radius_command_help = "একটি নির্দিষ্ট ব্যাসার্ধের মধ্যে প্লেয়ারদের কম্পকপক করার জন্য বাধ্য করে।",
		ragdoll_radius_command_parameter_radius = "ব্যাসার্ধ",
		ragdoll_radius_command_parameter_radius_help = "র্যাগডোল করার জন্য এর ব্যাসার্ধ।",
		ragdoll_radius_command_parameter_force = "বল",
		ragdoll_radius_command_parameter_force_help = "প্লেয়ারকে র্যাগডোল করার পরে একটি এলোমেলো বল বিনা যেকোন কোন দিকে প্রয়োগ করা হবে।",
		ragdoll_radius_command_substitutes = "",

		punch_radius_command = "পাঞ্চ_রেডিউস_কমান্ড",
		punch_radius_command_help = "একটি নির্দিষ্ট ব্যাসার্ধের মধ্যে প্লেয়ারদের বিভিন্ন স্থানে পাঞ্চ করার জন্য বাধ্য করে।",
		punch_radius_command_parameter_radius = "ব্যাসার্ধ",
		punch_radius_command_parameter_radius_help = "যে প্রাণীদের মুখ মারা হবে সেই এলাকার ব্যাসার্ধ।",
		punch_radius_command_substitutes = "",

		flashbang_command = "ফ্ল্যাশব্যাং",
		flashbang_command_help = "একজন নির্দিষ্ট প্রাণীকে ফ্ল্যাশব্যাং দেয়।",
		flashbang_command_parameter_server_id = "সার্ভার আইডি",
		flashbang_command_parameter_server_id_help = "লক্ষ্যযোগ্য প্রাণীর সার্ভার আইডি।",
		flashbang_command_substitutes = "",

		flashbang_radius_command = "ফ্ল্যাশব্যাং_ব্যাসার্ধ",
		flashbang_radius_command_help = "দেওয়া ব্যাসার্ধতে প্রতিটি প্রাণীকে ফ্ল্যাশব্যাং নাড়ানো।",
		flashbang_radius_command_parameter_radius = "ব্যাসার্ধ",
		flashbang_radius_command_parameter_radius_help = "এই রেডিউস মধ্যে খেলোয়ারদের ফ্ল্যাশব্যাঙ্গ হবে।",
		flashbang_radius_command_parameter_include_self = "নিজেও হাল্টার",
		flashbang_radius_command_parameter_include_self_help = "যদি আপনি নিজেকে ফ্ল্যাশব্যাঙ্গ করতে চান।",
		flashbang_radius_command_substitutes = "",

		punch_command = "মারলো",
		punch_command_help = "নির্দিষ্ট খেলোয়ারকে এলোমেলো মারতে বাধ্য করে।",
		punch_command_parameter_server_id = "সার্ভার আইডি",
		punch_command_parameter_server_id_help = "লক্ষ্য করছেন কোন খেলোয়ারকে মারতে চান।",
		punch_command_substitutes = "",

		explode_command = "খেলোয়ারকে এক্সপ্লোসন করুন",
		explode_command_help = "একজন নির্দিষ্ট খেলোয়াড়কে বিস্ফোরণ দেয়।",
		explode_command_parameter_server_id = "সার্ভার আইডি",
		explode_command_parameter_server_id_help = "লক্ষ্য করা খেলোয়াড়ের সার্ভার আইডি।",
		explode_command_substitutes = "",

		ignite_player_command = "ignite_player",
		ignite_player_command_help = "একজন খেলোয়াড়কে কিছুটা জ্বলছে দেয়।",
		ignite_player_command_parameter_server_id = "সার্ভার আইডি",
		ignite_player_command_parameter_server_id_help = "লক্ষ্য করা খেলোয়াড়ের সার্ভার আইডি।",
		ignite_player_command_substitutes = "ignite, burn",

		run_command_as_command = "run_command_as",
		run_command_as_command_help = "একজন অন্য খিলাড়ীকে একটি কমান্ড চালানো করে।",
		run_command_as_command_parameter_server_id = "সার্ভার আইডি",
		run_command_as_command_parameter_server_id_help = "লক্ষ্য করা খেলোয়াড়ের সার্ভার আইডি।",
		run_command_as_command_parameter_command = "কমান্ড",
		run_command_as_command_parameter_command_help = "আপনি খেলোয়াড়িকে দিয়ে চালাতে চান সেই কমান্ডটি।",
		run_command_as_command_substitutes = "runas, sudo",

		ped_reverse_command = "ped_reverse",
		ped_reverse_command_help = "গাড়ির সম্পর্কিত নিকটতম পেডটিকে উল্টায়।",
		ped_reverse_command_substitutes = "",

		ped_forwards_command = "পেড_ফরওয়ার্ড",
		ped_forwards_command_help = "নিকটবর্তী গাড়িতে পেডগুলি সামনে ড্রাইভ করে।",
		ped_forwards_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "লোকাল_এন্টিটি_ডিবাগ",
		local_entities_debug_command_help = "লোকাল এন্টিটির জন্য ডিবাগ চালু / বন্ধ করুন।",
		local_entities_debug_command_substitutes = "lentities",

		no_ped_population_areas_debug_command = "কোনো_পেডস_পপুলেশন_এরিয়া_ডিবাগ",
		no_ped_population_areas_debug_command_help = "‘কোনও পেড পপুলেশন এলাকা’ ডিবগারটি টগল করুন।",
		no_ped_population_areas_debug_command_substitutes = "",

		-- global/explosions
		create_explosion_command = "বিস্ফোরণ_তৈরি_করুন",
		create_explosion_command_help = "একটি বিস্ফোরণ তৈরি করুন।",
		create_explosion_command_parameter_explosion_type = "বিস্ফোরণ প্রকার",
		create_explosion_command_parameter_explosion_type_help = "বিস্ফোরণ প্রকার।",
		create_explosion_command_parameter_damage_scale = "ক্ষতিসূচক পরিমাণ",
		create_explosion_command_parameter_damage_scale_help = "ক্ষতিসূচক পরিমাণ।",
		create_explosion_command_parameter_camera_shake = "ক্যামেরা ঝাঁকা",
		create_explosion_command_parameter_camera_shake_help = "ক্যামেরা ঝাঁকা।",
		create_explosion_command_substitutes = "বিস্ফোরণ, বিস্ফোরণ তৈরি করুন, এক্সপ্লোড",

		-- global/functions
		confirm_yes_command = "হ্যাঁ",
		confirm_yes_command_help = "বর্তমান ক্রিয়াকলাপটি নিশ্চিত করুন।",
		confirm_yes_command_substitutes = "confirm",

		confirm_no_command = "না",
		confirm_no_command_help = "বর্তমান ক্রিয়াকলাপটি বাতিল করুন।",
		confirm_no_command_substitutes = "cancel, abort",

		-- global/states
		entity_states_command = "এনটিটি_স্টেটস",
		entity_states_command_help = "একটি নির্দিষ্ট এনটিটির সমস্ত অবস্থা প্রিন্ট করে।",
		entity_states_command_parameter_network_id = "নেটওয়ার্ক আইডি",
		entity_states_command_parameter_network_id_help = "এনটিটির নেটওয়ার্ক আইডি।",
		entity_states_command_substitutes = "",

		-- illegal/corner
		corner_command = "কর্নার",
		corner_command_help = "নিকটবর্তী ব্যক্তিকে মাদক বিক্রি করুন। আপনি কোন মাদক বিক্রি করছেন তা স্থানের উপর ভিত্তি করে।",
		corner_command_substitutes = "",

		corner_debug_command = "কর্নার_debug",
		corner_debug_command_help = "সমস্ত বিক্রয় এলাকা প্রদর্শন করুন।",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "স্পষ্টতা_ইউআইএস",
		clear_uis_command_help = "সমস্ত UI ফোকাস মুছুন।",
		clear_uis_command_substitutes = "",

		interface_focuses_command = "ইন্টারফেস_ফোকাসেস",
		interface_focuses_command_help = "কোনগুলি ইন্টারফেসগুলি ফোকাস হিসেবে নির্ধারিত করা হয়েছে তা চেক করুন।",
		interface_focuses_command_substitutes = "ইন্টারফেস_ফোকাস, ফোকাস, ফোকাসেস",

		--jobs/duty
		toggle_duty_status_command = "দায়িত্ব_অবস্থা_টগল_করুন",
		toggle_duty_status_command_help = "আপনার দায়িত্বের অবস্থা টগল করে।",
		toggle_duty_status_command_parameter_server_id = "সার্ভার আইডি",
		toggle_duty_status_command_parameter_server_id_help = "লক্ষ্য করা সার্ভার আইডি বা আপনার নিজের দায়িত্ব অবস্থা টগল করতে খালি রাখুন।",
		toggle_duty_status_command_substitutes = "দায়িত্ব_অবস্থা, দায়িত্ব",

		toggle_training_command = "প্রশিক্ষণ_অবস্থা_টগল_করুন",
		toggle_training_command_help = "আপনার প্রশিক্ষণের অবস্থা টগল করে।",
		toggle_training_command_substitutes = "প্রশিক্ষণ_অবস্থা",

		toggle_operator_status_command = "অপারেটর স্ট্যাটাস টগল করুন",
		toggle_operator_status_command_help = "আপনার জরুরী অপারেটর স্ট্যাটাস টগল করুন। যখন এটি সক্ষম হবে, তখন ৯১১ কল গ্রহণ করার অপশন পাবেন।",
		toggle_operator_status_command_substitutes = "অপারেটর, অপারেটর পরিস্থিতি পরিবর্তন করুন, অপারেটর স্ট্যাটাস",

		-- jobs/police
		aim_assist_command = "নির্দেশিকা সহায়ক চালু করুন",
		aim_assist_command_help = "পুলিশ ডিপার্টমেন্টের নির্দেশিকা সহায়ক চালু করুন। (নেথান স্পেন্সারের স্মৃতিতে।)",
		aim_assist_command_substitutes = "",

		undercover_command = "অনুগ্রহ করে হিউজার করুন",
		undercover_command_help = "আপনি কিংবা গোপনে থাকছেন এটি টগল করুন। এটি আপনার পুলিশ স্থানটি প্রকাশ করতে পারে না।",
		undercover_command_substitutes = "",

		active_robberies_command = "সক্রিয় লূটপোড়া স্টোরগুলি",
		active_robberies_command_help = "সক্রিয় (খোলা) স্টোর, ব্যাংক এবং জুয়েলারি স্টোরগুলি তালিকা করে।",
		active_robberies_command_substitutes = "",

		pd_impound_command = "পুলিশ পার্কিং",
		pd_impound_command_help = "এই কমান্ডটি একজন রেসিং গাড়ির বিশিষ্ট সময়ের জন্য মহাকাশে ধরে রাখে।",
		pd_impound_command_parameter_minutes = "মিনিট",
		pd_impound_command_parameter_minutes_help = "(1 মিনিট থেকে 12 ঘন্টা পর্যন্ত) গাড়ি বন্ধ থাকবে কতক্ষণের জন্য?",
		pd_impound_command_substitutes = "",

		dispatch_command = "ডিসপ্যাচ",
		dispatch_command_help = "পুলিশ ডিসপ্যাচে একটি বার্তা প্রেরণ করে।",
		dispatch_command_parameter_message = "বার্তা",
		dispatch_command_parameter_message_help = "আপনি যে বার্তা প্রেরণ করতে চান তা।",
		dispatch_command_substitutes = "",

		police_drive_mode_command = "police_drive_mode",
		police_drive_mode_command_help = "আপনার পুলিশ গাড়ির চালনা মোডটি টগল করুন।",
		police_drive_mode_command_parameter_mode = "মোড",
		police_drive_mode_command_parameter_mode_help = "আপনি যে মোডটি সেট করতে চান। \"D\" ড্রাইভ এবং \"S\" স্পোর্ট (স্পোর্ট ডিফল্ট হল)।",
		police_drive_mode_command_substitutes = "drive_mode",

		-- jobs/state
		license_give_command = "লাইসেন্স_দিন",
		license_give_command_help = "লাইসেন্স দেওয়া হবে।",
		license_give_command_parameter_character_id = "ক্যারেক্টার আইডি",
		license_give_command_parameter_character_id_help = "এই লাইসেন্স দিতে চান তার ক্যারেক্টার আইডি।",
		license_give_command_parameter_license = "লাইসেন্স",
		license_give_command_parameter_license_help = "আপনি যে লাইসেন্স দিতে চান তা লিস্ট করতে পারেন `/license_list` ব্যবহার করে।",
		license_give_command_substitutes = "লাইসেন্স_দাও, লাইসেন্স_যোগ",

		license_remove_command = "লাইসেন্স_অপসারণ_করুন",
		license_remove_command_help = "একটি লাইসেন্স অপসারণ করুন।",
		license_remove_command_parameter_character_id = "ক্যারেক্টার আইডি",
		license_remove_command_parameter_character_id_help = "আপনি যে ক্যারেক্টারের লাইসেন্স অপসারণ করতে চান তার আইডি।",
		license_remove_command_parameter_license = "লাইসেন্স",
		license_remove_command_parameter_license_help = "আপনি যে লাইসেন্সটি অপসারণ করতে চান সেটি উল্লেখ করতে পারেন। আপনি `/license_list` ব্যবহার করে উপলব্ধ লাইসেন্স সমূহের তালিকা পেতে পারেন।",
		license_remove_command_substitutes = "লাইসেন্স_সরান",

		license_list_command = "লাইসেন্স_তালিকা",
		license_list_command_help = "সমস্ত উপলব্ধ লাইসেন্স তালিকাভুক্ত করে।",
		license_list_command_substitutes = "লাইসেন্স_তালিকা_নির্দেশ, লাইসেন্স_নির্দেশ_তালিকা",

		licenses_check_command = "লাইসেন্স_চেক",
		licenses_check_command_help = "কারও লাইসেন্সগুলি পরীক্ষা করুন।",
		licenses_check_command_parameter_character_id = "চরিত্রের আইডি",
		licenses_check_command_parameter_character_id_help = "আপনি যার লাইসেন্সগুলি পরীক্ষা করতে চান সে চরিত্রের আইডি।",
		licenses_check_command_substitutes = "লাইসেন্স_পরীক্ষা, লাইসেন্স_পরীক্ষা_নির্দেশ, লাইসেন্স_নির্দেশ_পরীক্ষা, চেক_লাইসেন্স, চেক_লাইসেন্স_নির্দেশ",

		licenses_command = "লাইসেন্স",
		licenses_command_help = "আপনার লাইসেন্সগুলি পান।",
		licenses_command_substitutes = "",

		-- jobs/tow
		toggle_mechanic_messages_command = "toggle_mechanic_messages",
		toggle_mechanic_messages_command_help = "আপনি কি ম্যাসেজ পেতে চান এমানেক পক্ষথেকে না পান।",
		toggle_mechanic_messages_command_substitutes = "mechanic_messages",

		-- vehicles/boats
		toggle_anchor_command = "toggle_anchor",
		toggle_anchor_command_help = "নিকটবর্তী নৌকার আঙ্করটি টগল করুন।",
		toggle_anchor_command_substitutes = "anchor",

		-- vehicles/damage
		vehicle_damage_debug_command = "গাড়ি_ক্ষয়কর্তা_ডিবাগ_কমান্ড",
		vehicle_damage_debug_command_help = "গাড়ির বর্তমান ক্ষতি মানগুলি ডিবাগ করে।",
		vehicle_damage_debug_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "সেট_ফুয়েল",
		set_fuel_command_help = "আপনি যে গাড়িতে আছেন সেট করুন তার ইঞ্জিনের তেল পরিমান।",
		set_fuel_command_parameter_fuel_level = "তেল পরিমান",
		set_fuel_command_parameter_fuel_level_help = "আপনি সেট করতে চান তার ইঞ্জিনের তেল পরিমান। এখানে খালি রাখা যাবে না। `100` অটো সিলেক্ট করা হবে।",
		set_fuel_command_substitutes = "ফুয়েল",

		-- vehicles/garages
		toggle_garage_debug_command = "টগল_গ্যারেজ_ডিবাগ",
		toggle_garage_debug_command_help = "গ্যারেজ ডিবাগ টগল করুন।",
		toggle_garage_debug_command_substitutes = "গেরেজ_ডিবাগ",

		-- vehicles/keys
		give_key_command = "চাবি_দাও",
		give_key_command_help = "একজন নিকটবর্তী ব্যক্তিকে গাড়ি চাবি দিন।",
		give_key_command_parameter_server_id = "সার্ভার আইডি",
		give_key_command_parameter_server_id_help = "আপনি কি চাইছেন যে খেলোয়াড়ের চাবি দিতে, তার সার্ভার আইডি। এটি ফাঁকা রাখা যেতে পারে (বা 0 হতে পারে) যাতে নিকটবর্তী ব্যক্তির কাছে দেওয়া যায়।",
		give_key_command_substitutes = "চাবি_দাও",

		hotwire_vehicle_command = "হটওয়ায়ার্ড_গাড়ি",
		hotwire_vehicle_command_help = "আপনি এখন কি গাড়ির ভিতরে আছে, তা তাতে দক্ষতার সাহায্যে ইনস্ট্যান্টলি হটওয়ায়ার্ড করুন।",
		hotwire_vehicle_command_parameter_server_id = "সার্ভার আইডি",
		hotwire_vehicle_command_parameter_server_id_help = "অন্য একটি খেলোয়াড় গাড়ি তাকে তার গাড়ি তীব্রভাবে সক্রিয় করবে।",
		hotwire_vehicle_command_substitutes = "হটওয়ায়ার",

		pickup_keys_command = "কী উঠান",
		pickup_keys_command_help = "আপনাকে সর্বনিকটে গাড়ির চাবি উঠানোর জন্য উদ্দেশ্য করে।",
		pickup_keys_command_substitutes = "",

		-- vehicles/modifications
		wheel_offset_command = "চাকার অফসেট",
		wheel_offset_command_help = "একটি গাড়ির চাকার অফসেট সংশোধন করুন।",
		wheel_offset_command_parameter_wheels = "ফ্রন্ট/ব্যাক",
		wheel_offset_command_parameter_wheels_help = "আপনি কোন চাকাদানের সংশোধন করতে চান?",
		wheel_offset_command_parameter_value = "মান",
		wheel_offset_command_parameter_value_help = "আপনি যে পরিমাণ এটি পরিবর্তন করতে চান। এটি -0.15 থেকে 0.15 পর্যন্ত যেকোন স্থানে থাকতে পারে, 0 মূল্যপ্রাপ্ত।",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "চাকার ঘুরতে কমান",
		wheel_rotation_command_help = "গাড়ির চাকার ঘুরতে পরিবর্তন করুন.",
		wheel_rotation_command_parameter_wheels = "সামনে/পিছনে",
		wheel_rotation_command_parameter_wheels_help = "কোন চাকা পরিবর্তন করতে চান?",
		wheel_rotation_command_parameter_value = "মান",
		wheel_rotation_command_parameter_value_help = "আপনি যতটা পরিবর্তন করতে চান। এটি হতে পারে -0.5 থেকে 0.5 পর্যন্ত, ডিফল্ট মান 0।",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		fake_plate_command = "মিথ্যা প্লেট",
		fake_plate_command_help = "বর্তমান গাড়ির মিথ্যা প্লেট টগল করুন।",
		fake_plate_command_substitutes = "",

		plate_available_command = "প্লেট_উপলব্ধ",
		plate_available_command_help = "প্রদত্ত `/custom_plate` কমান্ডের জন্য প্লেট নম্বরের উপলব্ধতা চেক করুন।",
		plate_available_command_parameter_plate_number = "প্লেট নম্বর",
		plate_available_command_parameter_plate_number_help = "আপনার চেক করতে চান প্লেট নম্বর। প্লেট নম্বর কেবলমাত্র 8 টি অক্ষর দৈর্ঘ্যের হতে পারে এবং কেবলমাত্র বৃহত্তম অক্ষর এবং সংখ্যা থাকতে পারে।",
		plate_available_command_substitutes = "",

		custom_plate_command = "কাস্টম_প্লেট",
		custom_plate_command_help = "আপনার গাড়ির জন্য একটি কাস্টম প্লেট সেট করুন।",
		custom_plate_command_parameter_vehicle_id = "গাড়ি আইডি",
		custom_plate_command_parameter_vehicle_id_help = "আপনি কি কাস্টম প্লেট ব্যবহার করতে চান সেটার জন্য গাড়ির আইডি? (আপনি এই আইডিটি আপনার গ্যারেজে খুঁজে পেতে পারেন)",
		custom_plate_command_parameter_plate_number = "প্লেট নম্বর",
		custom_plate_command_parameter_plate_number_help = "আপনি কি সেট করতে চান প্লেট নম্বর টি সেট করতে? প্লেট নম্বরগুলি শুধুমাত্র সর্বাধিক 8 টি অক্ষর হতে পারে এবং কেবল বড় অক্ষর এবং সংখ্যা দিয়ে গঠিত হতে পারে।",
		custom_plate_command_substitutes = "",

		-- vehicles/runways
		ifr_command = "ifr",
		ifr_command_help = "আসবাবপত্র ব্‌যবহার অবস্থা টগল করুন (আসবাবপত্রগুলি দেখার জন্য দ্রুত প্রান্তিক রাস্তাসমূহের জন্য ল্যান্ডিং সাহায্য দেখানো হয়)।",
		ifr_command_substitutes = "",

		-- vehicles/sirens
		mute_sirens_command = "সাইরেন মিউট",
		mute_sirens_command_help = "সকল সাইরেন এবং হর্ন মিউট করে।",
		mute_sirens_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "ফ্লিপ",
		flip_command_help = "ফ্লিপ করা গাড়ী পাল্টে।",
		flip_command_substitutes = "",

		toggle_roll_control_command = "রোল নিয়ন্ত্রণ টগল করুন",
		toggle_roll_control_command_help = "রোল এবং এয়ার নিয়ন্ত্রণ চালু / বন্ধ করুন।",
		toggle_roll_control_command_substitutes = "roll_control",

		enable_ls_customs_command = "এলএস কাস্টম সক্ষম করুন",
		enable_ls_customs_command_help = "এলএস কাস্টম মেনু টগল করুন।",
		enable_ls_customs_command_substitutes = "ls_customs",

		toggle_gear_animation_command = "টগল_গিয়ার_এনিমেশন",
		toggle_gear_animation_command_help = "গাড়িতে গিয়ার শিফট এনিমেশন এবং সাউন্ড চালু/বন্ধ করতে ব্যবহৃত হয়।",
		toggle_gear_animation_command_substitutes = "গিয়ার_এনিমেশন, গিয়ার_সাউন্ড",

		turtle_vehicle_command = "turtle_vehicle",
		turtle_vehicle_command_help = "গাড়িটি উল্টানো হবে এবং তার ওপর প্রস্তুত থাকবে।",
		turtle_vehicle_command_substitutes = "turtle",

		door_command = "দরজা",
		door_command_help = "বাহনের দরজা খোলা / বন্ধ করুন।",
		door_command_parameter_door_id = "দরজার আইডি (1-6)",
		door_command_parameter_door_id_help = "আপনি কোন গাড়ির দরজা খুলতে চান? আপনি যদি প্যাসেঞ্জার হন তবে এই পরামিতি ওভাররাইট হয়। আপনি সহযোগী ছাড়াও এই কমান্ডটি গাড়ির বাইরে ব্যবহার করতে পারেন।",
		door_command_substitutes = "",

		window_command = "খিসের উইন্ডো",
		window_command_help = "একটি গাড়ির উইন্ডো টগল করুন।",
		window_command_parameter_window_id = "উইন্ডো আইডি (1-4)",
		window_command_parameter_window_id_help = "আপনি কোন গাড়ি উইন্ডো খুলতে চান? আপনি যদি প্যাসেঞ্জার হন তবে এই পরামিতি ওভাররাইট হয়।",
		window_command_substitutes = "",

		shuffle_command = "ঝুকান",
		shuffle_command_help = "আরেকটি গাড়ি সিটে তুলে নেওয়া।",
		shuffle_command_substitutes = "শাফল",

		seat_command = "সিট",
		seat_command_help = "আরেকটি গাড়ি সিটে সরানো।",
		seat_command_parameter_seat_id = "সিট আইডি (1-6)",
		seat_command_parameter_seat_id_help = "আপনি কোন সিটে সরাতে চান?",
		seat_command_substitutes = "",

		engine_command = "ইঞ্জিন",
		engine_command_help = "একটি গাড়ির ইঞ্জিন টগল করুন।",
		engine_command_substitutes = "",

		mileage_command = "মাইলেজ",
		mileage_command_help = "একটি গাড়ির মাইলেজ চেক করুন।",
		mileage_command_substitutes = "",

		toggle_disabled_brakes_command = "টগল_অক্ষম_ব্রেক",
		toggle_disabled_brakes_command_help = "নিকটবর্তী গাড়ির ব্রেককে অক্ষম বা সক্ষম করে।",
		toggle_disabled_brakes_command_substitutes = "ব্রেক_অক্ষম",

		manual_toggle_command = "ম্যানুয়াল_টগল",
		manual_toggle_command_help = "গাড়ির গিয়ারগুলো ম্যানুয়ালি নিয়ন্ত্রণ করতে চান কি না তা টগল করুন।",
		manual_toggle_command_substitutes = "",

		speed_limiter_command = "স্পিড_লিমিটার",
		speed_limiter_command_parameter_speed = "স্পিড",
		speed_limiter_command_parameter_speed_help = "কোন স্পিড-লিমিটার স্পীড ব্যবহার করতে চান? আপনি এটি রিসেট করতে পারেন, যা সাধারণ আচরণে ফিরে দেবে।",
		speed_limiter_command_help = "সুইচ করে স্পীড লিমিটারের সাধারণ আচরণ পরিবর্তন করে পূর্ব-নির্ধারিত স্পীড লিমিট সেট করুন।",
		speed_limiter_command_substitutes = "এসএল, সিসি, ক্রুজ_কন্ট্রোল",

		add_vehicle_command = "গাড়ি_যুক্ত_করুন",
		add_vehicle_command_help = "আপনার গ্যারেজে একটি গাড়ি যুক্ত করুন।",
		add_vehicle_command_parameter_model = "মডেল",
		add_vehicle_command_parameter_model_help = "যে গাড়ি আপনি যুক্ত করতে চান সেই গাড়ির মডেল নাম বা হ্যাশ।",
		add_vehicle_command_parameter_server_id = "সার্ভার আইডি",
		add_vehicle_command_parameter_server_id_help = "আপনি কারকে গাড়ি দিতে চান সে খেলোয়ারের সার্ভার আইডি। এটি ফাঁকা রাখলে আটো সিলেক্ট হবে।",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "গাড়ির_অস্ত্র_টগলে_করুন",
		toggle_vehicle_weapons_command_help = "গাড়ির উপর অস্ত্রগুলি ব্যবহার করা যেতে পারে কি না তা টগল করুন।",
		toggle_vehicle_weapons_command_parameter_server_id = "সার্ভার আইডি",
		toggle_vehicle_weapons_command_parameter_server_id_help = "আপনি যে খেলোয়াড়ের গাড়ির অস্ত্রগুলি টগল করতে চান সেই খেলোয়াড়ের সার্ভার আইডি। এটি ফাঁকা রাখা হলে স্বয়ংক্রিয়ভাবে আপনি নির্বাচণ করা হবে।",
		toggle_vehicle_weapons_command_substitutes = "গাড়ির_অস্ত্র",

		wheelie_command = "ওড়ানো",
		wheelie_command_help = "ওড়ানো মোডটি টগল করুন। (গাড়ির মধ্যে শিফট কী চাপুন)",
		wheelie_command_parameter_power_level = "পাওয়ার স্তর",
		wheelie_command_parameter_power_level_help = "কত বোস্ট প্রয়োগ করতে হবে (ডিফল্ট 2.5, যদি ওইলি খুব শক্তিশালী হয় তবে এটি কমান, যদি খুব দুর্বল হয় তবে বাড়ান).",
		wheelie_command_substitutes = "",

		-- vehicles/vin_numbers
		vin_number_command = "ভিআইএন নাম্বার",
		vin_number_command_help = "আপনি কোন গাড়ি চালাচ্ছেন তা নির্দেশ করে নাম্বার জানতে হবে।",
		vin_number_command_substitutes = "ভিন",

		vin_lookup_command = "ভিন লুকাপ",
		vin_lookup_command_help = "একটি গাড়ির ভিআইএন নম্বর লুকাপ করুন।",
		vin_lookup_command_parameter_vin_number = "ভিন নম্বর",
		vin_lookup_command_parameter_vin_number_help = "আপনি যেহেতু চেক করতে চান তার ভিন নাম্বার।",
		vin_lookup_command_substitutes = "lookup_vin, lv",

		-- weapons/ammo
		fill_ammo_command = "fill_ammo",
		fill_ammo_command_help = "সকল আপনার অস্ত্রের মুসলধার পূর্ণ করুন।",
		fill_ammo_command_substitutes = "",

		-- weapons/recoil
		crosshair_command = "crosshair",
		crosshair_command_help = "ক্রসহেয়ার চালু / বন্ধ করুন।",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "aim_down_sight",
		aim_down_sight_command_help = "হাইড করার না পরে সরাসরি নিল নেভারে স্কুয়ার বাটন চাপলেও অ্যাইম ডাউন সাইট অ্যাক্টিভ হবে।",
		aim_down_sight_command_substitutes = "ads",

		-- weapons/weapons
		check_ammo_command = "চেক_আমুদ",
		check_ammo_command_help = "যে আযুদ আপনি বর্তমানে ধারণ করছেন তা জন্য মোট কতগুলি এমুদ আপনার রয়েছে তা পরীক্ষা করে।",
		check_ammo_command_substitutes = "এমুদ",

		toggle_airsoft_mode_command_command = "এয়ারসফ্ট_মোড_টগল_করুন",
		toggle_airsoft_mode_command_command_help = "সার্ভারওয়াইডে এয়ারসফট মোড (যা সব বন্দুককে অবশেষের মাত্রায় কম করে দেয়) টগল করে।",
		toggle_airsoft_mode_command_command_substitutes = "এয়ারসফট_মোড, এয়ারসফট",

		toggle_folded_stock_command_command = "ফোল্ড_স্টক_টগল_করুন",
		toggle_folded_stock_command_command_help = "আপনি যে অস্ত্রটি ধরছেন তার ফোল্ড স্টক টগল করে।",
		toggle_folded_stock_command_command_substitutes = "ফোল্ডড স্টক, স্টক"
	},

	connections = {
		your_account_is_connecting = "আপনার অ্যাকাউন্ট নতুন সেশন থেকে সংযোজন করা হচ্ছে।"
	},

	controls = {
		menu_control_up = "মেনু উপরে",
		menu_control_down = "মেনু নীচে",
		menu_control_left = "মেনু বামে",
		menu_control_right = "মেনু ডানে",

		menu_control_up_alternative = "মেনু উপরে বিকল্প",
		menu_control_down_alternative = "মেনু নিচে বিকল্প",
		menu_control_left_alternative = "মেনু বাম বিকল্প",
		menu_control_right_alternative = "মেনু ডান বিকল্প"
	},

	core = {
		version = "সংস্করণ"
	},

	discord = {
		one_player = "1 প্লেয়ার",
		multiple_players = "${playerAmount} প্লেয়ার",
		join_with_fivem = "FiveM দিয়ে যোগদান করুন",
		discord_guild = "ডিসকর্ড গিল্ড",
		richer_presence_on = "মুখ্যমন্ত্রী উপস্থিতি এখন চালু।",
		richer_presence_off = "মুখ্যমন্ত্রী উপস্থিতি এখন বন্ধ।"
	},

	emojis = {
		emoji_list = "${emojis}",
		refresh_emojis_no_permissions = "খেলোয়াড় যখন সঠিক অনুমতি না থাকে তখন ইমোজি পুনরায় লোড করার চেষ্টা করেছে।",
		api_reported_no_updates = "ডিসকর্ড API-এ এমজি লিস্টে কোন আপডেট রিপোর্ট করা হয়নি।",
		emojis_added = "${added} টি এমজি যুক্ত করা হয়েছে।",
		emojis_removed = "${removed} টি এমজি সরানো হয়েছে।",
		emojis_updated = "${added} টি এমজি যুক্ত করা হয়েছে এবং ${removed} টি এমজি সরানো হয়েছে।"
	},

	errors = {
		script_location = "স্ক্রিপ্টের অবস্থান",
		additional_information = "অতিরিক্ত তথ্য",
		error_report = "ত্রুটি রিপোর্ট",
		send_report = "রিপোর্ট পাঠান",
		abort_report = "রিপোর্ট বাতিল করণ",
		input_placeholder = "দয়াকরে আমাদের জানান আপনি কী করে এই ত্রুটি ট্রিগার করেছিলেন...",
		oh_no = "ওহ না,",
		an_error_has_occurred = "একটি ত্রুটি ঘটেছে!",
		error_occured_information = "এটি নির্দেশ করে যে কোনও কিছু ঠিকমত কাজ করছে না। আমরা আপনাদের অনুরোধ করছি যে এই সমস্যাটি সমাধান করতে আপনি যে তথ্যগুলি সরবরাহ করবেন সেগুলি প্রদান করবেন।"
	},

	ping = {
		get_pings_missing_permissions = "খেলোয়াড় পিংস পেতে চেষ্টা করলেও তাদের করার অনুমতিতে সমস্যা হয়েছে।",
		getting_pings = "সমস্ত খেলোয়াড়দের পিংস পাচ্ছি। এটি কয়েক সেকেন্ড সময় নেওয়া হতে পারে।",
		host_data = "${position}. ${location} - ${totalPings} ক্লায়েন্ট ভিত্তিক ${averagePing} গড় পিং, 10% নিম্ন: ${averagePingLow}, 10% উচ্চ: ${averagePingHigh}",
		list_hosts = "${listHosts}"
	},

	profile = {
		profile_debug_enabled = "প্রোফাইল ডিবাগার সক্রিয় করা হয়েছে। আউটপুট দেখতে F8 কনসোলটি দেখুন।",
		profile_debug_disabled = "প্রোফাইল ডিবাগার নিষ্ক্রিয় করা হয়েছে।"
	},

	queue = {
		joining_the_queue = "সারির লিস্টে যোগদান করা হচ্ছে ...",
		timed_out_before_joining = "আপনি সার্ভারে যোগদান করার আগে সময় শেষ হয়ে গেছেন।",
		server_reload_while_in_loading = "সার্ভারের কোর পুনরায় চালু করা হচ্ছে এবং আপনি ঠিক ভাবে লোড না হওয়ায় স্বয়ংক্রিয়ভাবে আপনাকে বাদ দেওয়া হয়েছে।",
		server_reload_while_in_queue = "সার্ভারের কোর পুনরায় চালু হচ্ছে। দয়া করে কিউতে পুনরায় সংযোগ করুন।",
		took_too_long_to_connect = "আপনি সংযোগ করতে অনেক বেশি সময় লেগেছেন!",
		queue_position_with_priority = "🐌 আপনি ${priorityName} প্রাথমিকতাসহ কিউতে ${queueEntryId}/${queueLength} নম্বর। 🕐${queueTime}${liveOnTwitch}",
		queue_position_without_priority = "🐌 আপনি কিউতে ${queueEntryId}/${queueLength} নম্বর। 🕐${queueTime}\nকিউকে অবরোধ করতে চলেছেন? আমাদের সমর্থন করে প্রাথমিকতা লাভ করুন!\n\n${webstoreURL}${liveOnTwitch}",
		live_on_twitch = "\n\nতুমি উবুর হয়ে গেছেন? এই স্ট্রিমারদের দেখে নিন!\n${streamers}",
		server_is_starting = "সার্ভারটি শুরু হওয়ার জন্য অপেক্ষা করা হচ্ছে...",
		cancelled_before_server_start = "সার্ভারটি চালু হওয়ার আগে সংযুক্তি বাতিল করা হয়েছে।",
		kicked_from_queue = "আপনাকে কারণ `${reason}` এর জন্য কিউ থেকে বাতিল করা হয়েছে।",
		kicked_from_queue_no_reason = "আপনাকে কিউ থেকে কোনও নির্দিষ্ট কারণ ছাড়াই বাতিল করা হয়েছে।",
		missing_slots_parameter = "`slots` পরামিতি অনুপস্থিত।",
		invalid_slots_parameter = "`slots` পরামিতি অবৈধ।",
		slots_parameter_out_of_range = "`slots` পরামিতিটি `0` এবং `1025` এর মধ্যে হতে হবে।",
		slots_already_set_to = "সার্ভারের স্লটগুলি ইতিমধ্যে `${slots}` এ সেট করা হয়েছে।",
		slots_set_to = "সার্ভারের স্লটগুলি `${slots}` এ সেট করা হলো।",

		invalid_license_identifier_parameter = "অবৈধ 'licenseIdentifier' পরামিতি অথবা পরামিতি নেই।",
		invalid_target_position_parameter = "অবৈধ 'targetPosition' পরামিতি অথবা পরামিতি নেই।",
		player_not_found_in_queue = "কিউতে খোঁজা যায়নি খেলোয়ার।",
		player_queue_moved_success = "খেলোয়ারের পদবী কিউতে হালনাগাদ করা হয়েছে।",
		player_queue_skipped_success = "প্লেয়ারটি কিউটি সফলভাবে স্কিপ করেছে।",
		queue_is_not_ready = "কিউ প্রস্তুত না, সুতরাং এটি স্কিপ করা যাবে না।",

		welcome_to = "স্বাগতম"
	},

	restart = {
		restart_30_minutes = "সার্ভারটি 30 মিনিট পরে পুনরারম্ভ হবে!",
		restart_15_minutes = "সার্ভারটি 15 মিনিট পরে পুনরারম্ভ হবে!",
		restart_10_minutes = "সার্ভারটি 10 মিনিট পরে পুনরারম্ভ হবে!",
		restart_5_minutes = "সার্ভারটি 5 মিনিট পরে পুনরারম্ভ হবে!",
		restart_3_minutes = "সার্ভারটি 3 মিনিট পরে পুনরারম্ভ হবে!",
		restart_2_minutes = "সার্ভারটি 2 মিনিট পরে পুনরারম্ভ হবে!",
		restart_1_minute = "সার্ভারটি 1 মিনিটে পুনরায় চালু হবে!",
		server_restarting = "সার্ভারটি পুনরায় চালু হচ্ছে। আপনি কয়েকটি মিনিটে পূর্বে যোগদান করতে পারেন।",
		executed_restart_command = "পুনরায় চালু কমান্ড পালন করা হয়েছে।",
		already_executed_restart_command = "পুনরায় চালু কমান্ডটি ইতিমধ্যে পালন করা হয়েছে।"
	},

	routes = {
		route_not_found = "রাউট ${route} পাওয়া যায়নি।",
		route_restricted = "রাউট ${route} সীমিত করা হয়েছে।",
		internal_server_error = "অভ্যন্তরীণ সার্ভার ত্রুটি।"
	},

	users = {
		playtime = "খেলার সময়",
		player_playtime = "${playerName} (পজিশন ${position})\nমোট খেলার সময়: ${totalPlaytime}\nসেশনের খেলার সময়: ${sessionPlaytime}",
		leaderboard = "লিডারবোর্ড",
		your_position = "আপনার অবস্থান",
		logs_user_reject_connection_title = "সংযোগ বাতিলকরণ",
		logs_user_reject_connection_details = "${consoleName} কে সংযোগ বাতিলকরণ করা হয়েছে (`${reason}`).",
		logs_user_connected_title = "ব্যবহারকারী সংযুক্ত হয়েছে",
		logs_user_connected_details = "${consoleName} এখন সার্ভারে সংযুক্ত হয়েছে।",
		logs_user_joined_title = "ব্যবহারকারী যোগদান করেছে",
		logs_user_joined_details = "${consoleName} সার্ভারে যোগদান করেছে।",
		logs_user_dropped_title = "ব্যবহারকারী সংযোগ ছেড়ে দিয়েছে",
		logs_user_dropped_details = "${consoleName} সার্ভার হইতে প্রস্থান করেছেন প্লেটাইম ${playtime} এর পরে এবং কারণ: `${reason}`।",
		logs_character_loaded_title = "ক্যারেক্টার লোড হয়েছে",
		logs_character_loaded_details = "${consoleName} কনসোল নেইম দ্বারা ক্যারেক্টার ${fullName} (${characterId}) লোড করেছেন।",
		logs_character_unloaded_title = "ক্যারেক্টার আনলোড হয়েছে",
		logs_character_unloaded_details = "${consoleName} কনসোল নেইম দ্বারা ক্যারেক্টার ${fullName} (${characterId}) আনলোড করেছেন।",
		logs_character_unloaded_details_reason = "${consoleName} কনসোল নেইম দ্বারা ক্যারেক্টার ${fullName} (${characterId}) আনলোড করেছেন কারণ `${reason}`।",
		logs_character_created_title = "ক্যারেক্টার তৈরি করেছেন",
		logs_character_created_details = "${consoleName} কনসোল নেইম দ্বারা ক্যারেক্টার ${fullName} (${characterId}) তৈরি করেছেন।",
		logs_character_deleted_title = "চরিত্র মুছে ফেলা হয়েছে",
		logs_character_deleted_details = "${consoleName} চরিত্র ${fullName} (${characterId}) মুছে ফেলেছেন।",
		server_core_is_restarting = "সার্ভারের কোর পুনরায় চালু হচ্ছে।",
		you_timed_out = "আপনি সময় অতিত হয়েছেন!",
		kicked_for_no_specified_reason = "আপনাকে সুনির্দিষ্ট কারণ ব্যতিত করে বাতিল করা হয়েছে।",
		kicked_player = "খেলোয়াড় বাতিল হয়েছে।",
		kicked_player_and_removed_reconnect_priority = "খেলোয়াড়কে বাতিল করে রিকনেক্ট প্রাথমিকতা সরানো হয়েছে।",
		kicked_player_and_failed_to_remove_reconnect_priority = "খেলোয়াড়কে বাতিল করা এবং পুনরায় সংযোগ প্রাথমিকতা সরানোর কাজটি ব্যর্থ হয়েছে।",
		removed_player_from_queue = "ক্তিককে সারিতে থেকে সরানো হয়েছে।",
		player_not_found = "কোনও খেলোয়াড় খুঁজে পাওয়া যায়নি।",
		missing_license_identifier = "অনুমতির পরিচিতি অনুপস্থিত।",
		package = "প্যাকেজ",
		package_updated = "আপনার প্যাকেজ আপডেট হয়েছে `${packageName}` এ।",
		package_updated_remaining_time = "আপনার প্যাকেজ আপডেট হয়েছে `${packageName}` এ। এটি ${remainingTime} পর সমাপ্ত হবে।",
		package_expired = "আপনার প্যাকেজ মেয়াদোত্তীর্ণ হয়ে গেছে।",
		package_same = "আপনার প্যাকেজ `${packageName}` একই রয়েছে।",
		package_same_remaining_time = "আপনার প্যাকেজ `${packageName}` একই রয়েছে। এটি ${remainingTime} পর সমাপ্ত হবে।",
		no_package = "আপনার কোন প্যাকেজ নেই।",
		fetching_package_error = "প্যাকেজ ডেটা নিতে চেষ্টা করার সময় একটি ত্রুটি ঘটেছে।",
		check_playtime_not_staff = "খেলোয়াড় অন্য কারও প্লে টাইম চেক করার চেষ্টা করেছে, তবে সঠিক অনুমতি নেই।",
		reason_unknown = "কারণ অজানা।",

		unloaded_character = "আনলোড করা ক্যারেক্টার।",
		user_does_not_have_sent_character_loaded = "ব্যবহারকারী পাঠানো ক্যারেক্টারটি লোড করে নেই।",
		user_has_no_character_loaded = "ব্যবহারকারী কোন চরিত্র লোড করে নেই।",
		user_not_found = "সার্ভারে পাওয়া যায় নি প্রেরিত ব্যবহারকারী।",
		invalid_character_id = "প্রেরিত ক্যারেক্টার আইডি পারামিটারটি অবৈধ।",
		invalid_license_identifier = "অবৈধ লাইসেন্স চিহ্নিত পারামিটার পাঠানো হয়েছে।",

		unload_character_not_staff = "খেলোয়াড় পেইলোড করা খুঁজে পাওয়া নাই কেন স্টাফ নয়।",

		unloaded_character_for_player_logs_title = "খেলোয়াড়ের মাধ্যমে একটি ক্যারেক্টার আনলোড করা হয়েছে",
		unloaded_character_for_player_logs_details = "${consoleName} এর মাধ্যমে ${targetConsoleName}-এর ক্যারেক্টার ${characterFullName} (${characterId}) আনলোড করা হয়েছে যা যথাযথ নয় কারণ হিসাবে `${message}`।",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} কারণবিহীন কোন বিন্যাস না দেখে ${targetConsoleName} এর বর্তমান ব্যক্তিত্ব ${characterFullName} (${characterId}) টি সরিয়ে দিয়েছে।",
		unloaded_character_self_logs_title = "বর্তমান ব্যক্তিত্ব সরে ফেলা হল",
		unloaded_character_self_logs_details = "${consoleName} `${message}` কারণে তাদের নিজস্ব বর্তমান ব্যক্তিত্ব ${characterFullName} (${characterId}) টি সরিয়ে দিয়েছেন।",
		unloaded_character_self_no_reason_logs_details = "${consoleName} কারণবিহীন কোন বিন্যাস না দেখে তাদের নিজস্ব বর্তমান ব্যক্তিত্ব ${characterFullName} (${characterId}) সরিয়ে দিয়েছেন।",

		unloaded_character_for_user = "${consoleName}-এর জন্য অকার্যকর কর্তৃক আনলোড করা হয়েছে ${characterId} (${characterFullName})।",
		user_with_server_id_has_no_character_loaded = "সার্ভার আইডি সহ ব্যবহারকারী `${serverId}` কোন ক্যারেক্টার লোড করেনি।",
		user_with_server_id_not_found = "আইডি সহ ব্যবহারকারী `${serverId}` সার্ভারে খুঁজে পাওয়া যায়নি।",

		custom_plate = "কাস্টম প্লেট",
		custom_character_id = "কাস্টম ক্যারেক্টার আইডি",
		custom_phone_number = "কাস্টম ফোন  নম্বর",
		reskin = "রিস্কিন করুন",

		no_player_packages = "আপনার কোনও প্লেয়ার প্যাকেজ নেই।",
		player_packages = "খেলোয়ার প্যাকেজসমূহ:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x",

		appreciated_tier = "প্রশংসিত স্তর",
		respected_tier = "সম্মানিত স্তর",
		heroic_tier = "শূরত্বপূর্ণ স্তর",
		legendary_tier = "ঐতিহ্যবাহী স্তর",
		godlike_tier = "দৈবশীল স্তর"
	},

	-- game/*
	admin_menu = {
		menu_title = "অ্যাডমিন মেনু",
		spectate_player = "খেলোয়ারকে পর্যবেক্ষণ করুন",
		teleport_player = "খেলোয়ারকে টেলিপোর্ট করুন",
		teleport_player_here = "খেলোয়ারকে আপনার জন্য টেলিপোর্ট করুন",
		failed_teleport_to_player = "খেলোয়ারকে টেলিপোর্ট করা ব্যর্থ হয়েছে।",
		failed_teleport_player_here = "খেলোয়ারকে আপনার জন্য টেলিপোর্ট করা ব্যর্থ হয়েছে।",
		invalid_target_server_id = "অবৈধ লক্ষ্য সার্ভার আইডি।",
		invalid_destination_server_id = "অবৈধ গন্তব্য সার্ভার আইডি।",
		invalid_source_server_id = "অবৈধ উৎস সার্ভার আইডি।",
		failed_teleport_player_to_player = "প্লেয়ারকে প্লেয়ারের জন্য টেলিপোর্ট করতে ব্যর্থ হয়েছে।",
		teleported_player_to_player = "প্লেয়ারকে প্লেয়ারের জন্য টেলিপোর্ট করা হয়েছে।",

		teleport_player_missing_permissions = "প্লেয়ার একটি অন্য প্লেয়ারকে টেলিপোর্ট করার চেষ্টা করেছিল, কিন্তু তার কাছে সেই জন্য উপযুক্ত অনুমতিগুলি ছিল না।"
	},

	afk = {
		you_are_afk = "আপনি এফকে। আপনার চরিত্র শীঘ্রই লোড না থাকলে লোড হবে না।",
		move_mouse = "আপনার এফকে থেকে বের হতে মাউস মুভ করুন।",
		you_have_been_unloaded_for_being_afk = "আপনি অতিদিন এফকে এর জন্য আনলোড করা হয়েছে, পরবর্তীতে চরিত্র বাছাই করার জন্য চিন্তা করুন।"
	},

	airdrops = {
		create_airdrop_missing_permissions = "খেলোয়ার একটি এয়ারড্রপ তৈরি করতে চেষ্টা করেছেন তবে তাদের সেই করার জন্য প্রয়োজনীয় অনুমতি নেই।",
		created_airdrop = "একটি এয়ারড্রপ তৈরি করা হয়েছে, প্রকার - `${airdropType}` এবং মোট শব্দে ${itemAmount} টি আইটেম।"
	},

	airports = {
		airport = "বিমানবন্দর",
		press_to_access_spawner = "~INPUT_CONTEXT~ চাপুন গাড়ি তৈরির বিকল্পে প্রবেশ করতে।",
		no_spawner_licenses = "আপনার এই গাড়ি স্পানার জন্য কোনও লাইসেন্স নেই।",
		vehicle_lists = "গাড়ির তালিকা",
		parked_vehicle = "পার্ক করা গাড়ি।",
		press_to_park_vehicle = "গাড়ি পার্ক করতে ~INPUT_CONTEXT~ চাপুন।",
		no_vehicle_to_park = "পার্ক করার জন্য কোন গাড়ি নেই",
		park_vehicle = "গাড়ি পার্ক করুন",
		park_vehicle_outside = "গাড়ি বাইরে পার্ক করুন",
		close_menu = "মেনু বন্ধ করুন",
		spawned_vehicle = "গাড়ি স্পঁদ করা হয়েছে।",
		spawner_on_timeout = "গাড়ি স্পঁদ করার সময় শেষ হয়েছে। দয়া করে আবার চেষ্টা করুন।",
		spawn_area_not_clear = "স্পঁদ এলাকা পরিষ্কার নয়।",
		return_button = "ফেরত দিন",
		deposit = "$${amount} ডিপোজিট",
		no_deposit = "কোন ডিপোজিট নেই",
		deposit_not_enough_money = "আপনার ডিপোজিট করার জন্য পর্যাপ্ত টাকা নেই।"
	},

	airstrike = {
		create_airstrike_missing_permissions = "প্লেয়ার এয়ারস্ট্রাইক তৈরি করতে চেষ্টা করেছিলেন, তবে এর জন্য প্রয়োজনীয় অনুমতিগুলি ছিল না।",

		airstrike_success = "এয়ারস্ট্রাইক সফলভাবে তৈরি হয়েছে।",
		airstrike_failed = "এয়ারস্ট্রাইক তৈরি করতে ব্যর্থ হয়েছে।"
	},

	airsupport = {
		create_airsupport_missing_permissions = "প্লেয়ার এয়ার সাপোর্ট কল করতে চেষ্টা করেছিলেন, তবে এর জন্য প্রয়োজনীয় অনুমতিগুলি ছিল না।",

		distance = "দূরত্ব: ${distance}${unit}",
		time_to_impact = "এটিআই: ${timeToImpact}",

		out_of_range = "~r~OOR",

		km = "কিলোমিটার",
		mi = "মাইল",

		airsupport_failed = "বায়ুসহায়তা কল করা ব্যর্থ হয়েছে।"
	},

	alcohol = {
		now_sober = "আপনি এখন আবার সদমনত।",
		drunk_state_1 = "আপনি সামান্যভাবে মাতাল।",
		drunk_state_2 = "আপনি মাতাল।",
		drunk_state_3 = "আপনি খুবই মাতাল।",
		drunk_state_4 = "আপনি বিপদজনকভাবে মাতাল।"
	},

	alerts = {
		close = "বন্ধ করুন",

		alert_title = "সতর্কতা",

		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		missing_content = "অনুপস্থিত কন্টেন্ট।",

		show_alert_success = "প্রদর্শন সফলভাবে খেলোয়াড়ের কাছে দেখানো হয়েছে।",
		show_alert_everyone_success = "সমস্তকে সফলভাবে চিত্তস্থল দেখানো হয়েছে।",
		show_alert_failed = "খেলোয়ারকে চিত্তস্থল দেখানো ব্যর্থ হয়েছে।",

		show_alert_missing_permissions = "খেলোয়ার অন্য খেলোয়ারকে চিত্তস্থল দেখাতে চেষ্টা করলেও তার সাথে করার জন্য তিনি অধিকার লাভ করে নি।"
	},

	arcade = {
		use_arcade_machine = "আর্কেড মেশিন ব্যবহার করতে ~INPUT_CONTEXT~ চাপুন। ব্যায়ের মূল্য $${cost}।",
		finished_arcade_logs_title = "আর্কেড শেষ হয়েছে",
		finished_arcade_logs_details = "${consoleName} স্কোর `${score}` দিয়ে একটি আর্কেড গেম শেষ করেছেন।"
	},

	archives = {
		press_to_access_archives = "আর্কাইভ অ্যাক্সেস করতে ~INPUT_CONTEXT~ চাপুন।",
		archives_title = "আর্কাইভ",
		no_archives = "এখানে কোন আর্কাইভ নেই।",
		close_menu = "মেনু বন্ধ করুন",
		archive_label = "কেস নং ${case}",

		failed_get_archives = "আর্কাইভ লাভ করতে ব্যর্থ।",
		failed_not_on_duty = "আপনি দায়িত্বে নেই।",

		archive_created = "কেস নং সহিত আর্কাইভ সফলভাবে তৈরি হয়েছে ${case}।",
		invalid_case_number = "অবৈধ কেস নং (1 এবং 99999 এর মধ্যে পূর্ণসংখ্যাটি হতে হবে)।",
		not_near_archive = "আপনি কোন আর্কাইভের কাছে নন।",
		failed_create_archive = "আর্কাইভ তৈরি করতে ব্যার্থ হয়েছে।",
		archive_already_exists = "মামলা নম্বর পূর্বে ইতিমধ্যে এই আর্কাইভে রয়েছে।",
		archive_destroyed = "মামলার আর্কাইভ সফলভাবে ধ্বংস করা হয়েছে মামলা নম্বর ${case} দ্বারা।",
		archive_maximum_case_count = "আপনি কোনও নতুন মামলা তৈরি করতে পারবেন না।",
		failed_destroy_archive = "আর্কাইভ ধ্বংস করতে ব্যর্থ হয়েছে।",
		destroy_not_empty = "আপনি কেবলমাত্র খালি আর্কাইভ ধ্বংস করতে পারবেন।",

		create_archive_logs_title = "আর্কাইভ তৈরি করা হয়েছে",
		create_archive_logs_details = "${consoleName} একটি মামলা তৈরি করেছে `${archiveName}` আর্কাইভে মামলা নম্বর `${caseNumber}` দ্বারা।",
		destroy_archive_logs_title = "সংগ্রহকক্ষ ধ্বংসকারী",
		destroy_archive_logs_details = "${consoleName} মামলা নম্বর `${caseNumber}` সহ সংগ্রহকক্ষ `${archiveName}` থেকে একটি মামলা ধ্বংস করে।"
	},

	arena = {
		player_died = "${name} মারা গেছে।",
		player_killed = "${killerName} ${distance}মিটারদূরত্বে ${deathCause} ব্যবহার করে ${name}-কে হত্যা করেছেন।",
		hud_info = "খেলোয়ার সংখ্যা: ${playerAmount}\n\nমৃত্যু: ${deaths}\nহত্যা: ${kills}",
		press_to_access_menu = "অ্যারিনা মেনু অ্যাক্সেস করতে ~INPUT_INTERACTION_MENU~ চাপুন।",
		this_command_is_only_for_arena = "এই কমান্ড কেবল অ্যারিনার জন্য।",
		stand_still_to_respawn = "পুনঃজন্ম পেতে ৫ সেকেন্ড অবস্থান ধরুন।",
		respawn_cancelled = "আপনি চলে গেলে পুনঃজন্ম বাতিল হয়ে গেছে।",
		arena_suicide_reason = "আত্মঘাত",
		arena = "মঞ্চস্থল",
		ordered_airdrop = "অর্ডার করা এয়ারড্রপ",

		store = "দোকান",
		team = "দল",
		leaderboard = "লিডারবোর্ড",
		search = "অনুসন্ধান",
		add_to_cart = "কার্টে যোগ করুন",
		unlocks_at_level = "লেভেল ${level} এ আনলক করা হয়।",
		show_vehicles = "গাড়িসমূহ দেখান",
		hide_vehicles = "গাড়িসমূহ লুকান",
		balance = "ব্যালেন্স: $${balance}",
		shopping_cart = "${items} আইটেম ($${cost})",
		buy_now = "এখন কেনো",
		call_airdrop = "এয়ারড্রপ কল করুন",
		empty = "খালি",
		clear_cart = "কার্ট মুছুন",
		can_not_afford = "কেনার জন্য অর্থ নেই",
		brokie_lol = "ব্রোকি লল",
		confirmation_exit_arena = "আপনি কি নিশ্চিত যে আপনি এসে আরেনা ছাড়তে চান?",
		confirmation_buy_now = "আপনি কি নিশ্চিত যে আপনি ${label} কে ${cost} এ কেনতে চান?",
		yes = "হ্যাঁ",
		no = "না",
		empty_slot = "খালি স্লট",
		team_name = "দলের নাম",
		level = "লেভেল",
		arena = "মঞ্চস্থল",
		battle_royale = "বাতলি রয়েল",
		arena_gun_game = "গান গেম",
		lottery = "লটারি",
		daily_tasks = "দৈনিক টাস্ক",
		categories = "বিভাগসমূহ",
		refresh = "পুনরায় লোড করুন",
		refreshing = "পুনরায় লোড হচ্ছে...",
		not_available = "পাওয়া যায় নি",

		kill = "হত্যা করুন",
		headshot = "হেডশট",
		killstreak = "কিলস্ট্রিক",
		assist = "সহায়তা",

		level = "লেভেল",
		position = "অবস্থান",
		name = "নাম",
		kills = "হত্যার সংখ্যা",
		deaths = "মৃত্যুর সংখ্যা",
		kd = "কে/ডি",
		hits = "হিটস",
		hits_headshots = "হেডশট",
		headshot_ratio = "হেডশট অনুপাত",
		damage_dealt = "ক্ষতি করা হয়েছে",
		damage_taken = "হ্রাস হয়েছে",
		matches_played = "খেলা হয়েছে",
		wins = "জয়",
		win_ratio = "জয় অনুপাত",
		xp = "এক্সপি",
		money_won = "টাকা জিতেছেন",
		average_percentage = "গড় শতকরা",
		streak = "ক্রম"
	},

	atms = {
		withdraw = "উত্তোলন",
		deposit = "জমা দিন",
		balance = "ব্যালেন্স",
		transfer = "স্থানান্তর",
		back = "পিছনে যাও",

		amount = "পরিমাণ",
		target = "টার্গেট",

		failed_deposit = "টাকা জমা দেওয়া ব্যর্থ হয়েছে",
		failed_withdraw = "টাকা উত্তোলন করা ব্যর্থ হয়েছে",
		failed_transfer = "টাকা স্থানান্তর করা ব্যর্থ হয়েছে",

		processing = "প্রক্রিয়াজাতকরণ চলছে ...",
		counting_bills = "বিল গণনা করা হচ্ছে...",

		something_went_wrong = "কিছু ভুল হয়েছে।",
		error_not_online = "আপনার লক্ষ্য অনুপস্থিত।",
		error_not_enough_money = "পর্যাপ্ত টাকা নেই।",
		deposit_amount_big = "এটিএম জমা আমানত সীমিত $4,000 টাকা।",
		withdraw_amount_big = "এটিএম থেকে উত্তোলন সীমিত $6,000 টাকা।",

		retrieving_card = "কার্ড উত্তোলন করা হচ্ছে",
		atm_damaged = "এই এটিএমটি ক্ষতিগ্রস্ত",

		press_to_use = "এটিএম ব্যবহার করতে ~g~${InteractionKey} ~w~চাপুন",
		press_to_interact_bank = "ব্যাংকসঙ্গ সম্পর্কিত কাজ করতে ~g~${InteractionKey} ~w~চাপুন",

		deposit_log_bank_title = "ব্যাংক জমা",
		deposit_log_atm_title = "এটিএম জমা",
		deposit_log = "${consoleName} $${amount} জমা করেছেন।",

		withdraw_log_bank_title = "ব্যাংক উত্তোলন",
		withdraw_log_atm_title = "এটিএম হতে উত্তোলন",
		withdraw_log = "${consoleName} $${amount} উত্তোলন করেছেন।",

		transfer_log_title = "ব্যাংক ট্রান্সফার",
		transfer_log = "${consoleName} (#${characterId}) ${targetConsoleName} (#${targetCharacterId}) এক্সচেঞ্জ করেছে $${amount}।"
	},

	attachments = {
		cancel_attachments = "বাতিল করুন",
		finish_attachments = "প্রয়োগ করুন",

		modifying_attachments = "${amount} টি লিপিবদ্ধি পরিবর্তন করা হচ্ছে",

		failed_apply = "লিপিবদ্ধি প্রয়োগ করা যায়নি।",
		no_item = "আপনার ইনভেন্টরিতে আর এই অস্ত্রটি নেই।",
		no_attachment = "আপনার কাছে প্রয়োজনীয় লিপিবদ্ধি নেই।",
		no_paint = "আপনার কোন রঙ নেই।",
		success = "সাফল্যের সাথে সংযোজনগুলি প্রয়োগ করা হয়েছে।",

		not_available = "আপনার ইনভেন্টরিতে এই সংযোজন নেই।",

		attachment_label_suppressor = "সাপ্রেসর",
		attachment_label_flashlight = "ফ্ল্যাশলাইট",
		attachment_label_extended_clip = "এক্সটেন্ডেড ক্লিপ",
		attachment_label_extended_pistol_clip = "এক্সটেন্ডেড পিস্তল ক্লিপ",
		attachment_label_extended_smg_clip = "এক্সটেন্ডেড এসএমজি ক্লিপ",
		attachment_label_extended_shotgun_clip = "এক্সটেন্ডেড শটগান ক্লিপ",
		attachment_label_luxury = "শোভার শেষ",
		attachment_label_incendiary = "একজনকারী রাউন্ড",
		attachment_label_tracer = "ট্রেসার রাউন্ড",
		attachment_label_hollow_point = "হলোপয়েন্ট রাউন্ড",
		attachment_label_scope = "স্কোপ",
		attachment_label_grip = "গ্রিপ",
		attachment_label_drum = "ড্রাম ম্যাগাজিন",
		attachment_label_heavy_barrel = "হেভি ব্যারেল",
		attachment_label_armor_piercing = "আর্মর পিয়ার্সিং রাউন্ড",
		attachment_label_explosive = "বিস্ফোরক রাউন্ড",
		attachment_label_sight = "হলোগ্রাফিক সাইট",
		attachment_label_pistol_sight = "পিস্টল সাইট",
		attachment_label_fmj = "পুর্ণ ধাতু জ্যাকেট রাউন্ডস",
		attachment_label_scope_nv = "নাইট ভিশন স্কোপ",
		attachment_label_scope_thermal = "থার্মাল স্কোপ",

		attachment_label_luxury1 = "দ্য পিম্প",
		attachment_label_luxury2 = "দ্য বালাস",
		attachment_label_luxury3 = "দ্য হাস্টলার",
		attachment_label_luxury4 = "দ্য রক",
		attachment_label_luxury5 = "দ্য হেটার",
		attachment_label_luxury6 = "দ্য লাভার",
		attachment_label_luxury7 = "দ্য প্লেয়ার",
		attachment_label_luxury8 = "দ্য কিং",
		attachment_label_luxury9 = "দ্য ভ্যাগোস",

		attachment_label_luxury_knife_1 = "ভিআইপি ভেরিয়েন্ট",
		attachment_label_luxury_knife_2 = "বডিগার্ড ভেরিয়েন্ট",

		attachment_label_stock_folded = "ফোল্ড স্টক",
		attachment_label_stock_unfolded = "অফোল্ড স্টক",

		attachment_label_skin_patriotic = "জাতীয় স্কিন",
		attachment_label_skin_brushstroke = "ব্রাশস্ট্রোক স্কিন",
		attachment_label_skin_skull = "স্কাল স্কিন",
		attachment_label_skin_leopard = "লেওপার্ড স্কিন",
		attachment_label_skin_zebra = "জেবরা স্কিন",
		attachment_label_skin_geometric = "জ্যামিতি স্কিন",

		label_no_skin = "কোন স্কিন নেই",

		no_tint = "কোন টিন্ট নেই",

		tint_normal_0 = "কালো",
		tint_normal_1 = "সবুজ",
		tint_normal_2 = "স্বর্ণ",
		tint_normal_3 = "গোলাপী",
		tint_normal_4 = "আর্মি",
		tint_normal_5 = "L.S.P.D.",
		tint_normal_6 = "কমলা",
		tint_normal_7 = "প্ল্যাটিনাম",

		tint_mk2_0 = "ক্লাসিক কালো",
		tint_mk2_1 = "ক্লাসিক ধূসর",
		tint_mk2_2 = "ক্লাসিক টু-টোন",
		tint_mk2_3 = "ক্লাসিক সাদা",
		tint_mk2_4 = "ক্লাসিক বেইজ",
		tint_mk2_5 = "ক্লাসিক সবুজ",
		tint_mk2_6 = "ক্লাসিক নীল",
		tint_mk2_7 = "ক্লাসিক ধর্তি",
		tint_mk2_8 = "ক্লাসিক বাদামি এবং কালো",
		tint_mk2_9 = "লাল বিরোধী",
		tint_mk2_10 = "নীল বিরুদ্ধানুপাত",
		tint_mk2_11 = "হলুদ বিরুদ্ধানুপাত",
		tint_mk2_12 = "কমলা বিরুদ্ধানুপাত",
		tint_mk2_13 = "ধীরগমন্ড গোলাপী",
		tint_mk2_14 = "ধীরগমন্ড বেগুনি এবং হলুদ",
		tint_mk2_15 = "ধীরগমন্ড কমলা",
		tint_mk2_16 = "ধীরগমন্ড সবুজ এবং বেগুনি",
		tint_mk2_17 = "ধীরগমন্ড লাল বৈশিষ্ট্য",
		tint_mk2_18 = "ধীরগমন্ড সবুজ বৈশিষ্ট্য",
		tint_mk2_19 = "ধীরগমন্ড সাইয়ান বৈশিষ্ট্য",
		tint_mk2_20 = "ধীরগমন্ড হলুদ বৈশিষ্ট্য",
		tint_mk2_21 = "ধীরগমন্ড লাল এবং সাদা",
		tint_mk2_22 = "ধীরগমন্ড নীল এবং সাদা",
		tint_mk2_23 = "ধাতব স্বর্ণবর্ণ",
		tint_mk2_24 = "ধাতব প্লাটিনাম বর্ণ",
		tint_mk2_25 = "ধাতুজ্বল গ্রে এবং লাইলাক",
		tint_mk2_26 = "ধাতুজ্বল পারপল এবং লাইম",
		tint_mk2_27 = "ধাতুজ্বল লাল",
		tint_mk2_28 = "ধাতুজ্বল সবুজ",
		tint_mk2_29 = "ধাতুজ্বল নীল",
		tint_mk2_30 = "ধাতুজ্বল হোয়াইট এবং একুয়া",
		tint_mk2_31 = "ধাতুজ্বল লাল এবং হলুদ",

		tint_ray_0 = "স্পেস রেঞ্জার",
		tint_ray_1 = "পারপল",
		tint_ray_2 = "সবুজ",
		tint_ray_3 = "কমলা",
		tint_ray_4 = "গোলাপী",
		tint_ray_5 = "সোনার কাঁচকলের মত",
		tint_ray_6 = "প্ল্যাটিনাম",

		last_concat = "এবং",

		attachments_logs_title = "সংযোগিতা এবং রঙ",
		attachments_logs_details = "${consoleName} তাদের `${weaponName}` পরিবর্তন করেছে: ${modifications}.",

		removed_attachments = "${removed}-এর বদলে স্থানান্তর হয়েছে",
		added_attachments = "${added}-এর সংযুক্তি করা হয়েছে",
		tint_changed = "টিন্ট `${fromTint}` থেকে `${toTint}` এ পরিবর্তন হয়েছে"
	},

	audio = {
		audio_id = "অডিও ${audioId}",
		illegal_sound_effect = "অগ্রহণযোগ্যভাবে অন্যান্য ক্লায়েন্টদের বাইরের অডিও প্লে করার চেষ্টা করা হয়েছে।",
		url_invalid = "উল্লিখিত ইউআরএল বৈধ নয়। এটি একটি সুরক্ষিত সংযোগে (https://) আপলোড করা হতে হবে।",
		url_missing = "অনুগ্রহ করে আপনি চাচ্ছিলেন অডিও প্লে করার জন্য ইউআরএল যুক্ত করুন।",
		play_audio_no_permissions = "খেলোয়াড় একটি অডিও চালান চেষ্টা করলেও তাদের পারমিশন না থাকায় এটি হতে পারে না।",
		played_audio_for_self = "আপনার জন্য অডিও চালানো হয়েছে।",
		played_audio_for_player = "${consoleName} এর জন্য অডিও চালানো হয়েছে।",
		played_audio_for_everyone = "সবার জন্য অডিও চালানো হয়েছে।",
		played_audio_effect_for_everyone_title = "সবার জন্য অডিও ইফেক্ট চালানো হয়েছে",
		played_audio_effect_for_everyone_details = "${consoleName} সবার জন্য একটি অডিও ইফেক্ট চালানো হয়েছে। অডিও ইফেক্টটি ইউআরএল `${url}` হয় এবং ভলিউম লেভেল `${volume}` এ সেট করা হয়েছে।",
		played_audio_effect_for_player_title = "খেলোয়াড়ের জন্য অডিও ইফেক্ট চালানো হয়েছে",
		played_audio_effect_for_player_details = "${consoleName} একটি অডিও ইফেক্ট ${targetConsoleName}-এর জন্য চালু করেছেন। অডিও ইফেক্টটি ইউআরএল `${url}` হয়েছে এবং ভলিউমে ঠিক করা হয়েছে `${volume}`।"
	},

	balls = {
		press_to_pick_up_ball = "বল উঠানোর জন্য ~INPUT_CONTEXT~ চাপুন।"
	},

	banana_peels = {
		slipped_logs_title = "কলি পেলে নুপুর সঙ্গে খিসানি",
		slipped_logs_details = "${consoleName} ${slipForce}-এ হতে নেড়ে নুপুর সঙ্গে খিসানি হয়েছে।",

		slip_0 = "হেঁটে চলা",
		slip_1 = "দৌড়ানো",
		slip_2 = "দৌড়ানো (ঝপটে)"
	},

	bandaids = {
		label = "${type} ব্যান্ডেইড",

		baby_yoda = "বেবি-ইয়োডা",
		batman = "ব্যাটম্যান",
		care_bear = "কেয়ার-বেয়ার",
		hello_kitty = "হ্যালো-কিটি",
		hotwheels = "হট-হুইলস",
		mc_queen = "লাইটনিং-এমসি কুইন",
		minions = "মিনিয়নস",
		pony = "মাই-লিটল-পোনি",
		power_puff = "পাওয়ার-পাফ",
		spiderman = "স্পাইডারম্যান",
		star_wars = "স্টার-ওয়ার্স",

		failed_random_bandaid = "এলোমেলো ব্যান্ডএড পাওয়া যায়নি।",

		received_bandaid_logs_title = "ব্যান্ডএড পেয়েছেন",
		received_bandaid_logs_details = "${consoleName} এয়ারলিফটিংয়ের পরে 1টি ${bandaid} পেয়েছেন।",
		spawned_bandaid_logs_details = "${consoleName} নিজেকে 1x ${bandaid} দিয়েছেন।"
	},

	battle_royale = {
		failed_to_toggle_battle_royale = "ব্যাটল রয়েল টগল করা ব্যর্থ হয়েছে।",
		toggled_battle_royale_on = "ব্যাটল রয়েল অনকরণ হয়েছে।",
		toggled_battle_royale_off = "ব্যাটল রয়েল অফ করা হয়েছে।",
		battle_royale_info = "আপনি ব্যাটল রয়েলের জন্য কিউ হয়েছেন!\n বর্তমানে কিউতে ${battleRoyaleQueueLength} জন খেলোয়াড় রয়েছে।",
		toggle_battle_royale_missing_permissions = "খেলা রয়েল চালু করতে খেলোয়াড়টির প্রয়োজনীয় অনুমতিগুলি নেই।",
		start_battle_royale_missing_permissions = "খেলা রয়েল শুরু করতে খেলোয়াড়ের প্রয়োজনীয় অনুমতিগুলি নেই।",
		unable_to_start_battle_royale_not_active = "ব্যাটল রয়েল চালু না থাকা কারণে ব্যাটল রয়েল শুরু করা যায়নি।",
		not_enough_players_in_queue = "কিউতে যথার্থ সংখ্যক খেলোয়ার নেই, বাটল রয়েল শুরু করা সম্ভব নয়।",
		zone_idling = "এলাকা এখন আনতে ছাড়ছে।",
		zone_advancing = "এলাকা এখন অগ্রসর হচ্ছে।",
		player_died = "${name} মারা গেছে: ${remainingPlayers} জনে অবশিষ্ট।",
		player_killed = "${name} ${distance}m দূরত্ব থেকে ${deathCause} কারণে একজন কিল হয়েছেন ${killerName} দ্বারা: ${remainingPlayers} জনে অবশিষ্ট।",
		player_won = "${name} জয় লাভ করেছেন!",
		your_team = "আপনার টিম:",
		received_lobby_invite = "${serverId} থেকে আপনি একটি লবি আমন্ত্রণ পেয়েছেন। যোগদান করতে `/br_join ${serverId}` টাইপ করুন!",
		unable_to_invite_yourself = "আপনি নিজেকে আমন্ত্রণ জানাতে পারবেন না।",
		unable_to_join_yourself = "আপনি নিজেকে যোগ দিতে পারবেন না।",
		player_already_invited = "আইডি সহ প্লেয়ার '${serverId}' ইতিমধ্যে আমন্ত্রিত হয়েছে।",
		sent_player_invite = "প্লেয়ার '${serverId}' একটি আমন্ত্রণ পাঠানো হয়েছে।",
		joined_lobby = "আপনি লবি যোগদান করেছেন।",
		player_not_invited = "এই লবি তে আপনার কোনও আমন্ত্রণ নেই।",
		you_are_not_in_a_lobby = "আপনি কোনও লবিতে না আছেন।",
		left_lobby = "আপনি লবি ছেড়ে দিয়েছেন।",
		created_match = "${playerAmount} টি প্লেয়ার সহ একটি ম্যাচ তৈরি করা হয়েছে।",
		created_match_no_vehicles = "${playerAmount} প্রসঙ্গে কোন গাড়ি ছাড়াই ম্যাচ তৈরি করা হয়েছে।",
		zone_complete = "অঞ্চল সমাপ্ত হয়েছে।",
		battle_royale_match_info = "বর্তমান অঞ্চলঃ ${zoneId}/${zoneAmount}\nবাকি মোট সময়ঃ ${remainingTime}s\nবর্তমানঃ ${currentlyLabel}\nআরও বাকি খেলোয়াড়বিদের সংখ্যাঃ ${remainingPlayers}\nমারও করা হয়েছেঃ ${kills}",
		idling = "আলসি",
		advancing = "এগিয়ে যাওয়া",
		battle_royale = "বর্ণালীর যুদ্ধ",
		press_to_deploy_parachute = "প্যারাশুট প্রবেশ করতে ~INPUT_PARACHUTE_DEPLOY~ চাপুন।",
		join_battle_royale_instance_missing_permissions = "খেলোয়াড় একটি বর্ণালী উদাহরণে যোগ দিতে চেষ্টা করেছিলেন তবে সেটি করার জন্য অনুমতি নেই।",
		no_match_found = "${consoleName} কোন ম্যাচে নেই।",
		joined_instance = "${consoleName} এর ইনস্ট্যান্সে যোগ দিলাম।",
		leave_battle_royale_instance_missing_permissions = "প্লেয়ার ব্যবহারকারী ব্যবস্থাপনা না থাকার কারণে ব্যাটল রয়াল ইনস্ট্যান্স ছেড়ে দেতে চেষ্টা করেছে।",
		left_instance = "ইনস্ট্যান্স ছেড়ে দেওয়া হয়েছে।",
		failed_to_leave_instance = "আপনি কোন ইনস্ট্যান্সে না থাকা কারণে ইনস্ট্যান্স থেকে বের হতে ব্যর্থ হয়েছেন।",
		already_in_match = "আপনি ইতিমধ্যেই ম্যাচে যোগদান করেছেন, তাই ইনস্ট্যান্স যোগদান করতে ব্যার্থ হয়েছে।",
		lobby_is_full = "আপনি চেষ্টা করেছেন যোগদান করতে, কিন্তু লবি পূর্ণ।",
		zone_center = "জোন কেন্দ্র",
		team_marker = "দল মার্কার",
		trophy_information_top = "${name} সেরা!",
		trophy_information_bottom = "ম্যাচে সর্বমোট ${playerAmount} জন খেলোয়াড় ছিল এবং আপনি তাদের মধ্যে ${kills} জনকে হত্যা করেছেন।",
		not_able_to_join_while_in_match = "আপনি ম্যাচে থাকার সময় একটি লবি যোগ করতে পারবেন না।"
	},

	bazaar = {
		access_bazaar = "এই দোকানে প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",

		bazaar_blip = "বাজার",

		no_items = "আপনার কোন জিনিস বিক্রি করার নেই।",
		price_about = "${price} সম্পর্কে",

		sold_logs_title = "বাজার বিক্রয়",
		sold_logs_details = "${consoleName} ${amount}টি `${itemName}` বিক্রি করে ${price} টাকা পেয়েছেন।",

		sold_items = "আপনি ${amount}টি ${label} বিক্রি করে ${money} টাকা পেয়েছেন।",
		failed_sell_items = "পন্য বিক্রি করা ব্যর্থ হয়েছে।",

		junk_collector = "ফাঁদ সংগ্রাহক",
		tool_collector = "টুল সংগ্রাহক",
		waste_collector = "প্রদর্শ সংগ্রাহক",
		ammo_collector = "সামগ্রী সংগ্রাহক",

		close_menu = "মেনু বন্ধ করুন"
	},

	beds = {
		no_nearby_available_bed_found = "কাছাকাছি কোন বিশ্রামদান পাওয়া যায় নি।",
		press_to_leave_bed = "বিশ্রামদান থেকে বের হতে চাইলে টিপুন ~INPUT_CONTEXT~।"
	},

	blackjack = {
		play_blackjack = "ব্ল্যাকজ্যাক খেলার জন্য টিপুন ~INPUT_CONTEXT~।",
		play_blackjack_high_limit = "উচ্চ সীমা সিংহভাব ব্ল্যাকজ্যাক খেলতে প্রেস করুন ~INPUT_CONTEXT~।"
	},

	blindfold = {
		blindfolding_player = "প্লেয়ার এর উপর পেপার ব্যাগ দিয়েছেন",
		blindfolding_self = "আমার উপর পেপার ব্যাগ পরেছেন",
		hold_to_take_blindfold_off = "পেপার ব্যাগ খোলতে এংটি চেপে ধরুন ~INPUT_VEH_HEADLIGHT~।",
		hold_to_take_blindfold_off_holding = "পেপার ব্যাগ নির্দিষ্ট ধারনার জন্য একটি চেপ ধরে রাখুন।"
	},

	blips = {
		comedy_club = "কমেডি ক্লাব",
		bean_machine = "বিন মেশিন",
		arcade_bar = "আরকেড বার",
		japanese_restaurant = "জাপানি রেস্তোরা",
		luxury_autos = "পূর্বাভাসী অটোমোবাইল",
		rockford_records = "রকফোর্ড রেকর্ডস",
		dispensary = "ঔষধপানকর কেন্দ্র",
		haunted_high_school = "ভৌতিক উচ্চ বিদ্যালয়",
		sushi_restaurant = "সুশি রেস্তোরাঁ",

		bank = "ব্যাংক",
		hospital = "হাসপাতাল",
		bolingbroke = "বলিংব্রোক পেনিটেন্টিয়ারি",
		police_department = "পুলিশ বিভাগ",
		motel = "মোটেল",
		tattoo_parlor = "ট্যাটু পার্লার",
		repair_shop = "মেরামত দোকান",
		material_vendor = "উপকরণ বিক্রেতা",
		pdm = "প্রিমিয়াম ডেলাক্স মোটরস্পোর্ট",
		ls_customs = "লস সান্তোস কাস্টমস",
		jewelry_store = "ভ্যানজেলিকো জুয়েলারী",
		pd_air_hq = "পুলিশ এয়ার এইচকিউ",
		pd_sea_hq = "পুলিশ সাগর হেড কোয়ার্টার",
		ems_air_hq = "ইএমএস এয়ার হেড কোয়ার্টার",
		ems_boat_hq = "ইএমএস নৌকা হেড কোয়ার্টার",
		ems_garage = "ইএমএস গেরেজ"
	},

	blockage = {
		restricted_area = "এটি একটি সীমিত এলাকা। দয়া করে ফিরে আসুন!"
	},

	bombs = {
		not_in_plane = "আপনি বিমানে নেইন।",
		not_in_plane_anymore = "আপনি আর বিমানে নেইন।",
		interaction_menu = "~INPUT_CONTEXT~ ${name} বোম ফেলুন, ~INPUT_VEH_HEADLIGHT~ ধরণ পরিবর্তন করুন।",
		too_low = "আপনি খুব নিম্ন হয়ে গেছেন যাতে বোম ফেলা সম্ভব নয়।",

		you_are_not_in_a_vehicle = "আপনি বর্তমানে কোনও গাড়ি চালনা করছেন না।",
		ignition_bomb_on = "ইগনিশন বোম চালু করা হয়েছে।",
		ignition_bomb_off = "ইগনিশন বোম বন্ধ করা হয়েছে।",
		failed_ignition_bomb = "ইগনিশন বোম টগল করতে ব্যর্থ হয়েছে।",

		recharging_countermeasures = "কাউন্টারমেজার রিচার্জ হচ্ছে ${percentage}% হয়েছে।",

		ignition_bomb_triggered_logs_title = "ইগনিশন বোম",
		ignition_bomb_triggered_logs_details = "${consoleName} গাড়ির ইঞ্জিন চালু করেছেন যেখানে ইগনিশন বোম লাগানো আছে।",

		toggle_ignition_bomb_missing_permissions = "খেলোয়াড় ইগনিশন বোম টগল করার চেষ্টা করেছিলেন তবে তাদের পাওনা অনুমতি ছিল না।"
	},

	boomboxes = {
		boombox = "বুমবক্স",
		play = "প্লে",
		pause = "বিরাম করুন",
		skip_song = "গান ছেঁকুন",
		volume = "ভলিউম",
		music = "সঙ্গীত",

		store_boombox = "আপনার ইনভেন্টরিতে বুমবক্সটি সংরক্ষণ করুন",
		put_boombox_down = "জমা দিন বুমবক্সটি",
		use_boombox = "বুমবক্সটি ব্যবহার করুন",
		hold_to_pick_boombox_up = "বুমবক্স উঠানোর জন্য ধরুন",
		illegal_boombox_item_id = "একটি অবৈধ আইডি সহ বুমবক্স আইটেম ব্যবহার করার চেষ্টা করা হচ্ছে।",
		logs_attempted_to_add_song_title = "গান যোগ করার চেষ্টা করা হচ্ছে",
		logs_attempted_to_add_song_details = "${consoleName} একটি গান ভিডিও ইউআরএল `${url}` দিয়ে বুমবক্সে গান যোগ করার চেষ্টা করেছেন, যা আইডি `${boomboxId}` সহ হয়।",
		wipe_boomboxes_not_staff = "প্লেয়ার একটি দলের অনুমতি না থাকা সমস্ত বুমবক্স মুছে ফেলার চেষ্টা করেছে।",
		logs_wiped_all_boomboxes_title = "সমস্ত বুমবক্স মুছে ফেলা হয়েছে",
		logs_wiped_all_boomboxes_details = "${consoleName} এ সমস্ত বুমবক্স মুছে ফেলেছেন।",
		logs_wiped_nearby_boomboxes_title = "সামনে থাকা বুমবক্স মুছে ফেলা হয়েছে",
		logs_wiped_nearby_boomboxes_details = "${consoleName} ${radius} রেডিউস যোগদানকারীর তালিকায় থাকা সমস্ত বুমবক্স মুছে ফেলেছেন।",
		radius_invalid = "${radius} একটি বৈধ মান নয়।",
		wiped_all_boomboxes = "${boomboxesWiped} টি বুমবক্স জটিল হয়ে গেছে।",
		wiped_nearby_boomboxes = "একটি ব্যাক্তি `${radius}` ব্যাসার্ধের মধ্যে `${boomboxesWiped}` টি বুমবক্স মুছে ফেলা হয়েছে।",
		failed_to_wipe_boomboxes = "বুমবক্স মুছতে ব্যর্থ হয়েছে।",
		no_boomboxes = "মুছতে কোন বুমবক্স ছিল না।",
		no_boomboxes_within_radius = "একটি ব্যাসার্ধের মধ্যে `${radius}` রেডিও বুমবক্স মুছতে কোন বুমবক্স ছিল না।"
	},

	boosting = {
		boosting_contracts = "কনট্রাক্ট উন্নয়ন",
		join_queue = "কিউতে যোগদান করুন",
		leave_queue = "কিউ ছেড়ে যান",

		transfer_crypt = "সিপিআরওটি স্থানান্তর",
		transfer_crypt_info = "স্থানান্তর করতে চান তার প্লেয়ারের পরিমাণ এবং সার্ভার আইডি লিখুন।",

		amount = "পরিমাণ",
		server_id = "সার্ভার আইডি",

		transfer = "স্থানান্তর",
		cancel = "বাতিল",

		start_contract = "চুক্তি শুরু করুন",
		start_contract_info = "আপনি কি নিশ্চিত যে আপনি এই চুক্তি শুরু করতে চান?",

		yes = "হ্যা",
		no = "না",

		transfer_contract = "চুক্তি স্থানান্তর করুন",
		transfer_contract_info = "চুক্তি স্থানান্তর করতে আপনি প্রত্যাশিত ব্যক্তির সার্ভার আইডি লিখুন।",

		decline_contract = "চুক্তি প্রত্যাখ্যান করুন",
		decline_contract_info = "আপনি কি নিশ্চিত যে আপনি এই চুক্তি প্রত্যাখ্যান করতে চান?",

		cancel_contract = "চুক্তি বাতিল করুন",
		cancel_contract_info = "আপনি কি নিশ্চিত যে আপনি এই চুক্তি বাতিল করতে চান?",

		no_contracts = "আপনার কোনও চুক্তি উপলব্ধ নেই। কিছু পেতে কিউতে যোগদিন।",

		model = "মডেল",
		plate = "প্লেট",
		buy_in = "ক্রয়-ইন",
		expires_in = "এক্সপায়ার হবে",

		start_contract_type = "আপনি কি করতে চান?",
		start_contract_type_info = "আপনি পরিবহনের পানি দিতে কি নিশ্চিত আছেন না। ভিআইএন স্ক্র্যাচ করতে চান কি না? ভিআইএন স্ক্র্যাচ ${cost} সিপিআরওয়ি অতিরিক্ত খরচ পরিশোধ করবে।",

		drop_off = "পরিবহন দিন",
		vin_scratch = "ভিআইএন স্ক্র্যাচ",

		start_contract = "চুক্তি শুরু করুন",
		transfer_contract = "চুক্তি স্থানান্তর করুন",
		decline_contract = "চুক্তি প্রত্যাখ্যান করুন",
		mark_pickup = "পিকআপ চিহ্নিত করুন",
		cancel_contract = "চুক্তি বাতিল করুন",

		new_contract = "আপনার একটি নতুন বুস্টিং চুক্তি রয়েছে। (ক্লাস: ${className})",
		started_contract = "চুক্তি শুরু হয়েছে।",
		failed_contract = "চুক্তি ব্যর্থ হয়েছে।",
		completed_contract = "চুক্তি সম্পন্ন হয়েছে। আপনি ${payout} CRYPT পেয়েছেন।",
		completed_contract_vin_scratch = "চুক্তি সম্পন্ন হয়েছে। গাড়িটি আপনার গ্যারেজে পাওয়া যাবে।",
		marked_pickup = "চিহ্নিত পিকআপ।",

		vehicle_tracker_is_being_hacked = "যানবাহন ট্র্যাকারটি হ্যাক করা হচ্ছে। ${hacksRemaining} টি হ্যাক বাকি আছে।",
		use_chip_to_hack_vehicle_tracker = "চিপ ব্যবহার করে গাড়ির ট্র্যাকার হ্যাক করুন। ${hacksRemaining} হ্যাক(s) অবশিষ্ট।",
		vehicle_hacking_is_timed_out = "আপনারকে হ্যাকিং করার আগে কিছুটা অপেক্ষা করতে হবে। ${hacksRemaining} হ্যাক(s) অবশিষ্ট।",
		drop_the_vehicle_off = "চিহ্নিত স্থানে গাড়ি পরিবহণ করুন।",
		drop_off = "পরিবহন দিন",
		exit_the_vehicle = "মিশন শেষ করার জন্য গাড়ি থেকে নেমে এবং অঞ্চল থেকে বের হয়ে যান।",

		vehicle_is_being_tampered = "একটি গাড়ি যা ${locationLabel} এর কাছে আছে সেখানে আচমকালিত করা হচ্ছে। মডেলটি ${modelLabel} (ক্লাস ${className}) এবং প্লেট নম্বর টি ${plate}।",
		vehicle_tamper = "যানবাহন নিষ্ক্রিয়করণ করা হয়েছে (${plate})",
		vehicle_tracker_alert = "যানবাহন ট্র্যাকার সতর্কতা (${plate})",

		exit_the_vehicle_to_scratch = "ভিন স্ক্র্যাচ করতে যানবাহন ছেড়ে যান।",

		scratch = "ভিন স্ক্র্যাচ।",
		press_to_scratch = "ভিন স্ক্র্যাচ করতে ~g~E ~w~টি চাপুন।",

		scratching_vehicle = "যানবাহন স্ক্র্যাচ করা হচ্ছে",

		deleted_boosted_vehicle_logs_title = "বুস্টেড যানবাহন মুছে ফেলা হয়েছে",
		deleted_boosted_vehicle_logs_details = "${consoleName} আইডি সহ বুস্টেড যানবাহন মুছে ফেলেছে ${vehicleId}।",

		spawned_contract = "সফলভাবে একটি চুক্তি স্পড়িং করা হয়েছে।",
		spawned_contract_for = "${displayName} এর জন্য একটি চুক্তি সফলভাবে উত্পন্ন হয়েছে।",

		spawn_contract_no_permissions = "প্রকৃত অনুমতি বিনা পার্শ্ববর্তী চুক্তি উত্পন্ন করার চেষ্টা করেছেন।",

		already_max_vin_scratched_vehicles = "আপনি আপনার গ্যারেজে ইতিমধ্যে সর্বাধিক VIN ঘাড় থাকে।",
		contract_has_expired = "এই চুক্তিটি মেয়াদ উত্তীর্ণ হয়েছে।",
		you_already_have_a_contract_started = "আপনি ইতিমধ্যে একটি চুক্তি শুরু করে ফেলেছেন।"
	},

	brochure = {
		welcome_to = "স্বাগতম",
		san_andreas = "সান অ্যানড্রেস",

		getting_started = "শুরু করা হচ্ছে",
		getting_started_1 = "আপনি এই বিমানবন্দরে পহুঁচেছেন এবং এখন নিজেকে জানাচ্ছেন যে এখান থেকে কোথায় যেতে হবে? সমস্ত নতুন নাগরিকদেরকে ফ্রি স্টার্টার কার দেওয়া হয়। এটি সেরা নয়, কিন্তু এটি আপনার নিজের হবে। আপনি পার্কিং লটে এটি খুঁজে নিতে পারেন।",
		getting_started_2 = "আপনি যদি গাড়ি চালনা করতে না চান তবে আপনি হাঁটতে পারেন, একজন বন্ধু আপনাকে নিতে পারে বা আপনার ফোন ব্যবহার করে ট্যাক্সি কল করতে পারেন। আপনি আপনার ফোন ব্যবহার করে আপনার \"P\" মাসল ফ্লেক্স করে এটি ব্যবহার করতে পারেন।",
		getting_started_3 = "সর্বাধিক গাড়ির ট্রাঙ্কে আপনি বস্তুগুলি ছাড়াও অন্যের সঙ্গে থাকতে পারেন। আপনি কেউ /বহন করতে পারেন, তারপর একটি ট্রাঙ্কের দিকে হেঁটে যেতে পারেন, এটি খোলুন (/door) এবং তাকে এখন সেখানে রাখুন। একইভাবে আপনি তাকে বের করতে পারেন। যদি আপনার গাড়ি উल্টে দেওয়া হয় তবে আপনি এটি উল্টে ফেলতে পারেন (/flip)।",

		where_now = "এখন কোথায়?",
		where_now_1 = "আপনি আপনার প্রথম গাড়ি অর্জন করেছেন এবং এখন শহরটি অন্বেষণ করতে শুরু করতে পারেন। যেহেতু আপনাকে পুষ্টিকর এবং জ্বালানি প্রয়োজন তাই একটি মুদিখানা একটি ভাল জায়গা। সেখানে আপনি খাদ্য এবং পানীয় কেনা যেতে পারেন। এছাড়াও, যা আপনাকে ক্ষতি থেকে সুস্থ হতে সহায়তা করবে, তা হলো ব্যান্ডেজ।",
		where_now_2 = "সরকারী দফতরে যেতে এবং একটি সিটিজেন কার্ড প্রাপ্ত করতে আপনাকে হবে। এটি আপনার আইডি, ড্রাইভার লাইসেন্স এবং অস্ত্র লাইসেন্স হিসাবে কাজ করবে।",

		getting_a_job = "কাজ পাওয়া",
		getting_a_job_1 = "কিভাবে টাকা উপার্জন করবেন? কোন কাজের খবর জানতে শুরু করতে পারেন। লাইফ ইনভেডারে কাজের খবর পেতে পারেন। মানচিত্রে লাল স্কটারের আইকন খুঁজে পেতে পারেন। এখানে আপনি নিবন্ধিত হওয়ার জন্য নিবন্ধক একটি নির্বাচন করতে পারবেন।",
		getting_a_job_2 = "ট্রাক চালক কাজে আপনাকে পাঠানো পণ্যগুলি বিভিন্ন স্থানে পৌঁছানোর প্রয়োজনীয়তা হবে। প্রথমে আপনাকে ২,০০০ টাকায় ট্রাক কেনার জন্য চালক হেডকোয়ার্টার থেকে ট্রাক কিনতে হবে।",
		getting_a_job_3 = "ডেলিভারী কাজে নিবন্ধিত হলে আপনি ডেলিভারী হেডকোয়ার্টার থেকে প্যাকেজ ভর্তি করা ডেলিভারী উঠিয়ে নিতে পারেন। তারপর আপনাকে এই প্যাকেজগুলি শহরের বিভিন্ন স্থানে ডেলিভার করতে হবে। আপনি /door ব্যবহার করে ডেলিভারী ভ্যানের পিছনের দিকে হাঁটে গিয়ে দরজাটি খোলতে পারেন।",
		getting_a_job_4 = "আপনি মালবাহী হিসাবেও কাজ করতে পারেন। মালবাহী হিউকে থেকে আপনি একটি ডাম্পিং ট্রাক সংগ্রহ করে ট্র্যাশ কালেক্ট শুরু করতে পারেন।",
		getting_a_job_5 = "কোনো একটি কাজে রেজিস্ট্রেশন করার পরে আপনি আপনার ম্যাপে একটি ভিন্নধর্মী চিহ্ন দেখতে পাবেন। একটি উপস্থাপনা আপনাকে শুরু করার জন্য যেখানে যাওয়া উচিত তা দেখায়।",

		your_appearance = "আপনার প্রদর্শন",
		your_appearance_1 = "প্যান্ট, জুতা, শার্ট এবং আরও কিছু পরিবর্তন করতে আপনি কোনও হালকা দামের পরিবেশে ক্লোথিং স্টোর হতে সরাসরি পরিবর্তন করতে পারবেন। আপনার চুলের স্টাইল, মোহাকালো এবং মেকআপ আপনি একটি বার্বার শপ থেকে পরিবর্তন করতে পারেন। আপনি ম্যাপে উভয় ক্লোথিং স্টোর এবং বার্বার শপ খুঁজতে পারেন।",
		your_appearance_2 = "একবার আপনি প্রথম বার উড়ে আসতে যেতে পারবেন তখন আপনি আর সাধারণভাবে বাদন সংশ্লিষ্ট প্রস্তুতি পরিবর্তন করতে পারবেন না যেমন ত্বকের রঙ, মুখের সুবিধাগুলি ইত্যাদি। আপনি যদি আপনার প্রস্তুতি একটু ভুল করে ফেলেন বা খুব দ্রুত সম্পন্ন করে ফেলেন তবে আপনি /রিপোর্ট করে একটি নতুন বাদন সেট করার অনুরোধ করতে পারেন।",

		medical_care = "মেডিকেল সেবা",
		medical_care_1 = "যদি আপনি ক্ষতিগ্রস্ত হন তবে আপনি হাসপাতালে চেক-ইন করতে এবং চিকিৎসা করতে যেতে পারেন। আপনি মানচিত্রে হাসপাতাল খুঁজতে পারেন। আপনি নিজেকে চিকিৎসা করতে আপনার হাতে ব্যান্ডেজ বা প্রথম চিকিৎসা প্রদানকারী কিট ব্যবহার করতে পারেন।",
		medical_care_2 = "যদি আপনি হাসপাতালে না যেতে এবং অস্থায়ীভাবে মারা গেলেন বা আপনি গেম থেকে উঠে যান তখন আপনি আপনার কিছু সামগ্রী হারাতে পারেন। সার্ভার পুনরায় চালু হওয়ার মতো সম্মতি হিসাবে গণ্য করা হয়।",

		safety_hint = "সতর্কতা: আপনি ALT এবং মাঝের মাউস বাটন চাপ দিয়ে আপনার অসুরক্ষিত শস্য নিকটবর্তী করতে পারেন। সুরক্ষিত থাকুন!",

		closing_sentence = "শহরে করার কিছুই বেশি আছে! চার্দিকে জিজ্ঞাসা করুন এবং কিছু বন্ধু পান ;)"
	},

	cache = {
		download_progress = "ডাউনলোড অগ্রগতি:\n- গাড়ি: ${vehiclesDone}/${vehiclesTotal}\n- অবজেক্টসমূহ: ${objectsDone}/${objectsTotal}\n- পেডসমূহ: ${pedsDone}/${pedsTotal}\n- পোষাক: ${clothingRequested}/${clothingTotal}",
		slow_download_enabled = "ধীর ডাউনলোড সক্রিয় করা হয়েছে।",
		slow_download_disabled = "ধীর ডাউনলোড নিষ্ক্রিয় করা হয়েছে।"
	},

	capri_sun = {
		capri_sun_name = "ক্যাপরি সান (${flavor})"
	},

	cargo = {
		start_cargo_no_permissions = "খেলোয়াড় সামগ্রী চুরি শুরু করার চেষ্টা করেছিলেন, তবে তারা এটি করতে কোনও অনুমতি পান নি।",
		end_cargo_no_permissions = "খেলোয়াড় ক্যারগো লুট শেষ করার চেষ্টা করেছেন তবে তারা সেই অনুমতিটি নেই।",
		cargo_already_active = "ক্যারগো ইতিমধ্যে চলছে।",
		started_cargo = "ক্যারগো শুরু হয়েছে।",
		cargo_not_active = "ক্যারগো চলছে না।",
		ended_cargo = "ক্যারগো শেষ হয়েছে।",
		cargo_crate = "ক্যারগো বাকস",
		use_chip_to_hack_crate = "বাকসটি হ্যাক করতে ~g~চিপ ~w~ব্যবহার করুন।",
		crate_is_being_hacked = "বাকসটি হ্যাক হচ্ছে।",
		crate_will_unlock_in = "বাকসটি ~g~${time}~w~ সময়ে আনলক হবে।",
		press_k_to_access = "প্রবেশ করতে ~g~K ~w~ চাপুন।"
	},

	casino = {
		set_casino_screen_id_not_staff = "প্লেয়ার কোষ্ট স্ক্রীন আইডি সেট করার চেষ্টা করেছেন, তবে সঠিক অনুমতি নেই।",
		successfully_set_screen_label = "সফলভাবে স্ক্রিন ${screenLabel}-এ সেট করা হয়েছে।",
		successfully_queued_screen_label = "সফলভাবে স্ক্রিন ${screenLabel}-এ কিউ করা হয়েছে।",
		failed_to_set_screen_label = "স্ক্রিন ${screenLabel}-এ সেট করার পরিচিতি নেই।",
		invalid_screen_label = "স্ক্রিন ${screenLabel}- এর লেবেল অবৈধ।",
		missing_screen_label = "`স্ক্রিন লেবেল` প্যারামিটার অনুপস্থিত।",
		set_screen_label_already_set_to = "স্ক্রিনের লেবেল ইতিমধ্যে `${screenLabel}` এ সেট করা হয়েছে।",
		only_available_in_the_casino = "আপনি কেবলমাত্র ক্যাসিনোর ভিতরে এটি করতে পারেন।",
		casino_blip = "ক্যাসিনো"
	},

	cayo_perico = {
		approaching_out_of_bounds = "আপনি ম্যাপ বাউন্ডারির কাছাকাছি আসছেন",
		out_of_bounds = "আপনি বাউন্ডারি এর বাইরে আছেন"
	},

	cayo_perico_world = {
		keep_heading_in_direction_in = "কায়ো পেরিকো এ আসতে জন্য সামনে দিকে ${direction} ধরে অগ্রসর থাকুন।\n(${distanceToTeleport}মিটার বাকি)",
		keep_heading_in_direction_out = "লস সেন্টোস এ ফিরতে জন্য  ${direction} ধরে অগ্রসর থাকুন।\n(${distanceToTeleport}মিটার বাকি)",

		south = "দক্ষিণ",
		south_east = "দক্ষিণ-পূর্ব",
		east = "পূর্ব",
		north_east = "উত্তর-পূর্ব",
		north = "উত্তর",
		north_west = "উত্তর-পশ্চিম",
		west = "পশ্চিম",

		not_the_driver = "কারদার হতে হবে কেবলমাত্র সমুদ্রযান, বিমান বা হেলিকপ্টারে উঠতে পারবেন না।",
		not_a_cayo_vehicle = "আপনাকে কেবলমাত্র নৌকা, প্লেন বা হেলিকপ্টারে উঠতে হবে কায়ো পেরিকোতে প্রবেশ করতে।",
		entering_cayo_perico_logs_title = "কায়ো পেরিকোতে প্রবেশ হচ্ছে",
		entering_cayo_perico_logs_details = "${consoleName} কায়ো পেরিকোতে প্রবেশ করছে।",
		exiting_cayo_perico_logs_title = "কায়ো পেরিকো ছেড়ে বের হচ্ছে",
		exiting_cayo_perico_logs_details = "${consoleName} সিয়ো পেরিকো ছেড়ে দিয়েছে।",
		entering_cayo_perico_with_passengers_logs_title = "যাত্রীসহ সিয়ো পেরিকোতে ঢুকছেন",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} ${passengersAmount} যাত্রীসহ সিয়ো পেরিকোতে ঢুকছেন।",
		exiting_cayo_perico_with_passengers_logs_title = "যাত্রীসহ সিয়ো পেরিকো ছেড়ে দিয়েছেন",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} ${passengersAmount} যাত্রীসহ সিয়ো পেরিকো ছেড়ে দিয়েছেন।"
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "অ্যাডভেন্ট ক্যালেন্ডার হ্যাচ দাবি করা হয়েছে",
		claimed_money = "${consoleName} প্রাপ্ত করেছে $${amount}।",
		claimed_item = "${consoleName} প্রাপ্ত করেছে `${itemLabel}`।",
		claimed_vehicle = "${consoleName} একটি ক্রিসমাস বিশেষ গাড়ি দাবি করেছে।",
		claimed_queue_priority = "${consoleName} একটি সপ্তাহ ধরের ক্রিসমাস কিউ প্রায়োরিটি দাবি করেছে।",

		claimed_advent_calendar_bonus_title = "অ্যাডভেন্ট ক্যালেন্ডার বোনাস দাবি করা হয়েছে",
		claimed_advent_calendar_bonus_details = "${consoleName} ${modelName} মডেল নামের গাড়ি সহ অ্যাডভেন্ট ক্যালেন্ডার বোনাস দাবি করেছে।"
	},

	cinema = {
		failed_to_find_cinema_identifier = "সিনেমা আইডেন্টিফায়ার খুঁজে পাওয়া যায়নি।",

		screen_model_size = "সাইজ: এক্স: ${sizeX}, ওয়াই: ${sizeY}",
		screen_model_offset = "অফসেট: এক্স: ${offsetX}, ওয়াই: ${offsetY}, জেড: ${offsetZ}",
		screen_model_rotation = "রোটেশন: ${rotation}",
		screen_model_volume = "ভলিউম: ${volumeRadius} (${volumeCutOffRadius})",
		screen_model_model = "মডেল: ${modelName}",

		locked = "লকড",

		add_video_to_queue_title = "কিউতে ভিডিও যোগ করুন",
		add_video_to_queue_details = "${consoleName} ভিডিও টাইপ `${videoType}:${videoId}` এর সাথে কিউতে ভিডিও যোগ করেছেন।",

		blacklisted_video = "কী `${videoKey}` দিয়ে কার্যবিধি বর্জিত হয়েছে।",
		failed_to_blacklist_video = "কী `${videoKey}` দিয়ে ভিডিও বর্জিত করতে ব্যর্থ হয়েছে।",
		video_is_already_blacklisted = "ভিডিওটি কী দিয়ে বর্জিত হয়েছে `${videoKey}`।",

		blacklist_video_missing_permissions = "খেলোয়াড় একটি ভিডিও বর্জিত করতে চেষ্টা করেছিলেন কিন্তু প্রয়োজনীয় অনুমতিগুলি ছিল না।",

		watching_movie = "${title} দেখা হচ্ছে",

		cinema = "সিনেমা",
		doppler_cinema = "ডপলার সিনেমা",
		sandy_cinema = "স্যান্ডি সিনেমা",
		tv = "টিভি",
		monitor = "মনিটর",
		laptop = "ল্যাপটপ",
		projector = "প্রোজেক্টর",

		zoom = "ক্যামেরা আগাও ও পিছনে নেভিগেট করো",
		slow = "ধীর",
		toggle_lights = "লাইট অন/বন করো",
		exit = "বাহির",

		-- NOTE: UI locales
		title = "শিরোনাম",
		length = "দৈর্ঘ্য",
		date = "তারিখ",
		author = "লেখক",
		queue = "কিউ",
		search_through_library = "লাইব্রেরি থেকে খুঁজুন...",
		add_to_library = "লাইব্রেরি যুক্ত করুন (URL)..."
	},

	cinematic = {
		cinematic = "সিনেম্যাটিক",
		black_bars_set_to = "এখন সিনেম্যাটিক ব্ল্যাক বারগুলি ${blackBarsHeight}% সেট করা হয়েছে।"
	},

	claymores = {
		arm_claymore = "[${InteractionKey}] হথেরপাশের মাইন সক্রিয় করো",
		disarm_claymore = "[${InteractionKey}] হথেরপাশের মাইন অক্ষম করো",

		disarming = "অসংরক্ষিত হচ্ছে",
		arming = "সংরক্ষণ করা হচ্ছে"
	},

	clothing = {
		outfit_failed = "পোশাক পরিবর্তন করতে ব্যর্থ।",
		missing_outfit = "অংশগ্রহণযোগ্য পোশাক নেই।",
		missing_outfit_name = "পোশাকের নাম নেই।",
		no_nearby_clothing_spot = "কোন পোশাকের জন্য স্থান নেই।",
		trunk_closed = "ট্রাঙ্ক বন্ধ আছে।",
		trunk_too_far = "আপনি ট্রাঙ্ক থেকে অনেক দূরে রয়েছেন।",
		moved_too_far_trunk = "আপনি ট্রাঙ্ক থেকে বেশি দূরে চলে গেছেন।",
		invalid_job = "এই পোশাক স্পট ব্যবহার করতে আপনার প্রয়োজনীয় চাকরি নেই।",
		outfit_list = "পোশাক তালিকা",
		no_saved_outfits = "আপনার কোনও সংরক্ষিত পোশাক নেই।",
		saved_outfit = "আপনার ড্রেস সফলভাবে `${name}` আটফিটে সংরক্ষিত হয়েছে।",
		replaced_outfit = "সফলভাবে `${name}` নামের আটফিট পরিবর্তন করে দেওয়া হয়েছে।",
		failed_save_outfit_exists = "আটফিট `${name}` ইতিমধ্যে রয়েছে, সংরক্ষণ করতে ব্যর্থ হলেও হয়েছে।",
		failed_save_outfit = "আটফিট সংরক্ষণ করতে ব্যর্থ হলেও হয়েছে।",
		deleted_outfit = "আপনার `${name}` আটফিট সফলভাবে মুছে ফেলা হয়েছে।",
		failed_delete_outfit_doesnt_exists = "আটফিট `${name}` মুছে ফেলতে ব্যর্থ হলেও হয়েছে, কারণ এটি ইতিমধ্যে নেই।",
		failed_delete_outfit = "আটফিট মুছে ফেলতে ব্যর্থ হলেও হয়েছে।",

		invalid_server_id = "অবৈধ বা আবশ্যক সার্ভার আইডি।",
		player_model_missmatch = "আপনি এই খেলোয়াড়কে আপনার আউটফিট শেয়ার করতে পারবেন না কারণ তার মডেল মিলছে না।",
		player_too_far = "খেলোয়াড়টি অত্যন্ত দূরে আছে।",
		shared_outfit_too_far = "${displayName} আপনার সাথে একটি আউটফিট শেয়ার করেছেন কিন্তু আপনি কাপড় পরিবেশের কাছে নেই।",
		outfit_shared = "আউটফিট ভাগাভাগি সফল হয়েছে।",
		outfit_not_shared = "আউটফিট ভাগাভাগি ব্যর্থ হয়েছে।",
		shared_outfit = "${displayName} আপনার সাথে একটি আউটফিট শেয়ার করেছেন। এটি গ্রহণ করতে `yes` টাইপ করুন বা প্রত্যাখ্যান করতে `no` টাইপ করুন। (এটি ৩০ সেকেন্ডের মধ্যে উত্তর দিতে হবে)",
		applied_shared_outfit = "ভাগাভাগিকৃত আউটফিট সফলভাবে প্রয়োগ করা হয়েছে।",
		declined_shared_outfit = "ভাগাভাগিকৃত আউটফিট প্রত্যাখ্যান করা হয়েছে।",

		no_nearby_dead_player = "কেউ মৃতদেহ এখন আপনার কাছে নেই।",
		failed_to_steal_shoes = "জুতা চুরি করতে ব্যর্থ হয়েছে।",

		loading_model = "আদর্শ লোড করা হচ্ছে...",
		loading_spawn = "প্লেয়ার আদর্শ স্পপ হচ্ছে...",
		loading_set_data = "আদর্শ ডেটা সেট করা হচ্ছে...",
		loading_tattoos = "ট্যাটু সেট করা হচ্ছে...",
		loading_finalize = "চূড়ান্ত করা হচ্ছে..."
	},

	clothing_bag = {
		packed_outfit = "সফলভাবে আউটফিটটি ব্যাগে পোঁচানো হয়েছে।",
		packed_outfit_failed = "আউটফিটটি ব্যাগে পোঁচানো ব্যর্থ হয়েছে।",

		item_description_filled = "\"<i>${outfit}</i>\" আউটফিট পাক করা হয়েছে।",
		item_description_empty = "কোনও আউটফিট পাক করা হয়নি।",

		bag_empty = "এই কাপড় ব্যাগটি খালি।",
		wrong_ped_model = "এই পোশাক আপনার সাথে মিলে না।",
		cant_use_in_vehicle = "আপনি গাড়ির ভিতরে একটি কাপড় ব্যাগ ব্যবহার করতে পারবেন না।",
		cant_use_while_moving = "আপনি চলতে হলে একটি কাপড় ব্যাগ ব্যবহার করতে পারবেন না।",

		opening_bag = "ব্যাগ খোলা হচ্ছে"
	},

	clothing_menu = {
		component = "ঘটনার অংশ",
		texture = "ভাঁজ",
		palette = "প্যালেট",

		clothing = "পোশাক",
		accessories = "একসেসরি",
		face = "মুখ",
		outfits = "আউটফিটস",

		reset_zoom = "জুম রিসেট করুন",
		zoom_level = "জুম স্তর",

		variation = "পার্থক্য",
		color = "রং",
		secondary_color = "দ্বিতীয় রং",
		opacity = "অস্পষ্টতা",

		press_to_access = "কাপড় দোকানে প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",
		press_no_freemode = "এই পেড় মডেল কাপড় দোকানে প্রবেশ করতে অক্ষম।",
		press_no_freemode_barber = "এই পেড় মডেল বার্বার দোকানে প্রবেশ করতে অক্ষম।",
		press_to_access_barber = "বার্বার দোকানে প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",
		press_to_change_outfit = "আপনার জামাকাপড় পরিবর্তন করতে ~INPUT_CONTEXT~ চাপুন।",

		clothingstore = "কাপড় দোকান",
		barbershop = "বার্বার দোকান",

		changing_area = "বদলার এলাকা",

		switch_outfit = "এই জামাকাপড়ে পরিবর্তন করুন।",
		replace_outfit = "এই আউটফিট পরিবর্তন করুন।",
		new_outfit = "আউটফিট সংরক্ষণ করুন",
		no_saved_outfits = "কোন সংরক্ষিত আউটফিট নেই।",

		save_outfit_title = "নতুন আউটফিট সংরক্ষণ করুন",
		save_outfit_label = "আউটফিট নামঃ",
		save_outfit_button = "সংরক্ষণ করুন",

		replace_outfit_title = "আউটফিট পরিবর্তন করুন",
		replace_outfit_description = "${outfit} নামের আউটফিটটি পরিবর্তন করতে আপনি কি নিশ্চিত?",
		replace_outfit_button = "প্রতিস্থাপন করুন",

		delete_outfit_title = "আউটফিট মুছুন",
		delete_outfit_description = "${outfit} নামের আউটফিটটি মুছতে আপনি কি নিশ্চিত?",
		delete_outfit_button = "মুছে ফেলুন",

		packing_outfit_title = "প্যাকিং আউটফিট",
		packing_outfit_description = "\"${outfit}\" আউটফিট প্যাক করতে চাইলে পোশাক ব্যাগটি কোন স্লটে আছে তা নির্বাচন করুন।",

		cancel_button = "বাতিল করুন",

		remove_button = "${label} অপসারণ করুন",
		menu_description = "ক্যামেরা টগল করতে \"V\" চাপুন। স্লাইডারগুলি মাউস দিয়ে খাঁটি নিতে পারেন অথবা তীর কীগুলি ব্যবহার করতে পারেন। আপনি তাকে স্থানান্তর করতে \"A\" এবং \"D\" চাপতে পারেন।",

		failed_toggle_clothing_menu = "পোশাক মেনু টগল করা ব্যর্থ হয়েছে।",
		clothing_menu_success = "${consoleName} এর জন্য পোশাক মেনু খোলা হয়েছে।",
		barber_menu_success = "বার্বার দোকানের মেনু চালু অকরণ হয়েছে।",
		failed_toggle_barber_menu = "${consoleName} জন্য বার্বার শপ মেনু খোলা ব্যর্থ হয়েছে।",
		invalid_server_id = "অবৈধ সার্ভার আইডি।",

		clothing_menu_missing_permissions = "খেলোয়াড় অন্য কোন খেলোয়াড়ের জন্য ক্লোথিং মেনু খোলতে চেষ্টা করল তবে প্রয়োজনীয় অনুমতি তাঁকে নেই।",

		hats_and_helmets = "টুপি / হেলমেট",
		glasses = "চশমা",
		earrings = "কানের হেলা",
		left_wrist = "বাম কলমের ঘন্টা",
		right_wrist = "ডান কলমের ঘন্টা",

		pants = "পায়জামা",
		shoes = "জুতা",
		undershirt = "অন্ডারশার্ট",
		necklaces_and_ties = "নেকলেস এবং টাইস",
		decals = "ডেকাল",
		shirts = "শার্ট",
		arms = "হাতসমূহ",
		masks = "মাস্ক",
		armor = "আর্মর",
		parachute_and_bag = "পেরাশুট এবং ব্যাগ",

		hair = "চুল",

		blemishes = "অস্থিরতা",
		facial_hair = "মুখের চুল",
		eyebrows = "ভ্রূ",
		ageing = "বৃদ্ধি",
		makeup = "মেকআপ",
		blush = "ব্লাশ",
		complexion = "মুখের রঙ্গ",
		sun_damage = "সূর্যালোকে ক্ষতি",
		lipstick = "লিপস্টিক",
		moles_and_freckles = "চর্মরোগ এবং ঝুরঝুরে",
		chest_hair = "ছাতির চুল",
		body_blemishes = "শরীরের অস্থিরতা",
		add_body_blemish = "শরীরে অস্থিরতা যুক্ত করুন"
	},

	command_socket = {
		connected = "কমান্ড সকেট এ সংযুক্ত হয়েছে।",
		disconnected = "কমান্ড সকেট থেকে সংযোগ বিচ্ছিন্ন হয়েছে।",
		failed_reconnect = "কমান্ড সকেট সংযোগ পুনরায় স্থাপন করতে ব্যর্থ হয়েছে।"
	},

	crafting = {
		menu_title = "ক্রাফটিং",
		close_menu = "মেনু বন্ধ করুন",

		smelt_glass = "বিচ্ছিন্ন শিশুদি পিষ্টকরণ করুন",
		press_to_smelt_glass = "[${SeatEjectKey}] বিচ্ছিন্ন শিশুদি পিষ্টকরণ করুন",
		smelting_glass = "${usedItems} পিষ্টকরণ করা হচ্ছে",
		smelted_glass = "${usedItems} থেকে শিশুদি পিষ্টকরণ হয়েছে।",
		failed_smelt_glass = "শিশুদি পিষ্টকরণ ব্যর্থ হয়েছে।",

		craft_steel = "স্টিল তৈরি করুন",
		press_to_craft_steel = "[${SeatEjectKey}] স্টিল তৈরি করুন",
		crafting_steel = "মোল্ডিং ${usedItems}",
		crafted_steel = "${usedItems} থেকে স্টিল তৈরি করেছি।",
		failed_craft_steel = "স্টিল তৈরি করতে ব্যর্থ হয়েছে।",

		scrapping_item = "${usedItems} স্ক্র্যাপ করা হচ্ছে",
		scrapped_item = "${usedItems} থেকে স্ক্র্যাপ মেটাল উত্তোলন করা হয়েছে।",

		scrap_knife = "স্ক্র্যাপ ছুরি",
		press_to_scrap_knife = "[${SeatEjectKey}] স্ক্র্যাপ ছুরি",
		failed_scrap_knife = "ছুরি স্ক্র্যাপ করতে ব্যর্থ হয়েছে।",

		scrap_item = "স্ক্র্যাপ আইটেম",
		press_to_scrap_item = "[${SeatEjectKey}] স্ক্র্যাপ আইটেম",
		failed_scrap_item = "আইটেম স্ক্র্যাপ করতে ব্যর্থ হয়েছে।",

		cut_item = "আলু কাটা হচ্ছে",
		press_to_cut_item = "[${SeatEjectKey}] আলু কাটতে",
		cutting_item = "৩টি আলু কাটা হচ্ছে",
		cut_item_done = "আলুগুলি ফ্রাইজে কাটা হয়েছে।",
		failed_cut_item = "আলু কাটা ব্যর্থ হয়েছে।",

		fry_item = "ফ্রাই ফ্রাইস",
		press_to_fry_item = "[${SeatEjectKey}] ফ্রাই ফ্রাইস করতে",
		frying_item = "ফ্রাই ফ্রাইস করা হচ্ছে",
		fried_item = "ফ্রাইড বেলজিয়ান ফ্রাইস।",
		failed_fry_item = "ফ্রাই ফ্রাইস করা ব্যর্থ হয়েছে।",

		grill_item = "রস্তা করা গরুর টিকি গ্রিলে",
		press_to_grill_item = "[${SeatEjectKey}] গ্রিলে টিকি রস্তা করতে",
		grilling_item = "টিকি রস্তা করা হচ্ছে",
		grilled_item = "গ্রিল্ড প্যাটি।",
		failed_grill_item = "প্যাটি গ্রিল করা যায়নি।",

		hamburger_recipe = "হ্যামবার্গার",
		cheeseburger_recipe = "চিজবার্গার",

		assemble_burger = "বার্গার সংযোজন করুন",
		press_to_assemble_burger = "[${SeatEjectKey}] সংযোজন করুন বার্গার",
		assembling_burger = "হ্যামবার্গার তৈরি করা হচ্ছে",
		assembled_burger = "হ্যামবার্গার তৈরি করা হয়েছে",
		failed_assemble_burger = "হ্যামবার্গার তৈরি করা যায়নি।",

		assembling_cheeseburger = "চিজবার্গার তৈরি করা হচ্ছে",
		assembled_cheeseburger = "চিজবার্গার তৈরি করা হয়েছে",
		failed_assemble_cheeseburger = "চিজবার্গার সংযোজন করতে ব্যর্থ হয়েছে।",

		mix_avocado_smoothie = "এভোকাডো স্মুদি মিশে দিন",
		press_to_mix_avocado_smoothie = "[${SeatEjectKey}] এভোকাডো স্মুদি মিশান",
		mixing_avocado_smoothie = "এভোকাডো স্মুদি মিশিয়ে দিচ্ছি",
		mixed_avocado_smoothie = "এভোকাডো স্মুদি মিশে গেছে",
		failed_mix_avocado_smoothie = "এভোকাডো স্মুদি মিশানো বিফল হয়ে গেছে।",

		fill_nitro_tank = "নাইট্রো ট্যাংক পূর্ণ করুন",
		press_to_fill_nitro_tank = "[${SeatEjectKey}] নাইট্রো ট্যাংক পূর্ণ করুন",
		filling_nitro_tank = "নাইট্রো ট্যাংক পূর্ণ করা হচ্ছে",
		filled_nitro_tank = "পূর্ণ হয়েছে নাইট্রো ট্যাংক।",
		failed_fill_nitro_tank = "নাইট্রো ট্যাঙ্ক পূর্ণ করতে ব্যর্থ হয়েছে।",

		craft_sheet_metal = "শীট মেটাল তৈরি করুন",
		press_to_craft_sheet_metal = "[${SeatEjectKey}] শীট মেটাল তৈরি করুন",
		crafting_sheet_metal = "শীট মেটাল তৈরি করা হচ্ছে",
		crafted_sheet_metal = "শীট মেটাল তৈরি করা হয়েছে।",
		failed_craft_sheet_metal = "শীট মেটাল তৈরি করতে ব্যর্থ হয়েছে।",

		craft_empty_tank = "ফাঁকা ট্যাঙ্ক তৈরি করুন",
		press_to_craft_empty_tank = "[${SeatEjectKey}] ফাঁকা ট্যাঙ্ক তৈরি করুন",
		crafting_empty_tank = "ফাঁকা ট্যাঙ্ক তৈরি হচ্ছে",
		crafted_empty_tank = "ফাঁকা ট্যাঙ্ক তৈরি হয়েছে।",
		failed_craft_empty_tank = "খালি ট্যাঙ্ক সংযোগ করা ব্যার্থ হয়েছে।",

		craft_valve = "একত্র করুন নিড়মিকা",
		press_to_craft_valve = "[${SeatEjectKey}] একত্র করুন নিড়মিকা",
		crafting_valve = "মেরামত করা হচ্ছে নিড়মিকা",
		crafted_valve = "নিড়মিকা সম্পন্ন হয়েছে।",
		failed_craft_valve = "নিড়মিকা বিফল হয়েছে।",

		craft_nitro_tank = "নাইট্রো ট্যাঙ্ক সংযোগ করুন",
		press_to_craft_nitro_tank = "[${SeatEjectKey}] নাইট্রো ট্যাঙ্ক সংযোগ করুন",
		crafting_nitro_tank = "মেরামত করা হচ্ছে নাইট্রো ট্যাঙ্ক",
		crafted_nitro_tank = "নাইট্রো ট্যাঙ্ক সম্পন্ন হয়েছে।",
		failed_craft_nitro_tank = "নাইট্রো ট্যাঙ্ক সম্পন্ন করতে বিফল হয়েছে।",

		salvage_meth_table = "মেথ টেবিল নিষ্ক্রয় করুন",
		press_to_salvage_meth_table = "[${SeatEjectKey}] মেথ টেবিল নিষ্ক্রয় করুন",
		salvaging_meth_table = "মেথ টেবিল নিষ্ক্রয় হচ্ছে",
		salvaged_meth_table = "মেথ টেবিল নিষ্ক্রয় করা হয়েছে।",
		failed_salvage_meth_table = "মেথ টেবিল নিষ্ক্রয় করা ব্যর্থ হয়েছে।",

		refill_vape = "ভেপ পুনর্ভরণ করুন",
		press_to_refill_vape = "[${SeatEjectKey}] ভেপ পুনর্ভরণ করুন",
		refilling_vape = "ভেপ পুনর্ভরণ হচ্ছে",
		refilled_vape = "ভেপ পুনর্ভরণ করা হয়েছে।",
		failed_refill_vape = "ভেপ পুনর্ভরণ ব্যর্থ হয়েছে।",

		deconstructing_item = "${usedItems} নির্মূলন করা হচ্ছে",
		deconstructed_item = "${usedItems} এর বিনিময় রপ্তানি হয়েছে।",

		deconstruct_pistol = "পিস্তল বিনিময় করুন",
		press_to_deconstruct_pistol = "[${SeatEjectKey}] পিস্তল বিনিময় করতে প্রেস করুন",
		failed_deconstruct_pistol = "পিস্তল বিনিময় করতে ব্যর্থ হয়েছে।",

		deconstruct_smg = "এসএমজি বিনিময় করুন",
		press_to_deconstruct_smg = "[${SeatEjectKey}] এসএমজি বিনিময় করতে প্রেস করুন",
		failed_deconstruct_smg = "এসএমজি বিনিময় করতে ব্যর্থ হয়েছে।",

		deconstruct_shotgun = "শটগান বিনিময় করুন",
		press_to_deconstruct_shotgun = "[${SeatEjectKey}] শটগান বিনিময় করতে প্রেস করুন",
		failed_deconstruct_shotgun = "শটগান বিনিময় করতে ব্যর্থ হয়েছে।",

		deconstruct_rifle = "রাইফেল ডিকনস্ট্রাক্ট করুন",
		press_to_deconstruct_rifle = "[${SeatEjectKey}] রাইফেল ডিকনস্ট্রাক্ট করতে চাপুন",
		failed_deconstruct_rifle = "রাইফেল ডিকনস্ট্রাক্ট করা ব্যর্থ হয়েছে।",

		extract_copper = "তামা পৃথক করুন",
		press_extract_copper = "[${SeatEjectKey}] তামা পৃথক করতে চাপুন",
		extracting_copper = "তামা পৃথক করা হচ্ছে",
		extracted_copper = "তামা পৃথক করা হয়েছে।",
		failed_extract_copper = "তামা পৃথক করা ব্যর্থ হয়েছে।",

		processing_item = "${usedItems} প্রক্রিয়াজাতকরণ হচ্ছে",
		processed_item = "${usedItems} প্রক্রিয়াজাত হয়েছে।",

		process_copper = "কপারের নাগেট প্রক্রিয়াজাত করুন",
		press_process_copper = "[${SeatEjectKey}] কপার নাগেট প্রক্রিয়া করুন",
		failed_process_copper = "কপার নাগেটগুলি প্রক্রিয়া করতে ব্যর্থ হয়েছে।",

		process_rubber = "রবার প্রক্রিয়া করুন",
		press_process_rubber = "[${SeatEjectKey}] রবার প্রক্রিয়া করুন",
		failed_process_rubber = "রবারটি প্রক্রিয়া করতে ব্যর্থ হয়েছে।",

		process_aluminium = "এ্যালুমিনিয়াম প্রক্রিয়া করুন",
		press_process_aluminium = "[${SeatEjectKey}] এ্যালুমিনিয়াম প্রক্রিয়া করুন",
		failed_process_aluminium = "এ্যালুমিনিয়ামটি প্রক্রিয়া করতে ব্যর্থ হয়েছে।",

		process_steel = "স্টিল প্রক্রিয়া করুন",
		press_process_steel = "[${SeatEjectKey}] স্টিল প্রক্রিয়া করুন",
		failed_process_steel = "স্টিল প্রক্রিয়াটি ব্যর্থ হয়েছে।",

		craft_lens = "শিল্প লেন্স",
		press_craft_lens = "[${SeatEjectKey}] লেন্স শিল্প করুন",
		crafting_lens = "লেন্স শিল্প করা হচ্ছে",
		crafted_lens = "লেন্স শিল্প হয়েছে।",
		failed_craft_lens = "লেন্স শিল্প ব্যর্থ হয়েছে।",

		craft_sight = "শিল্প দৃষ্টিশক্তি",
		press_craft_sight = "[${SeatEjectKey}] দৃষ্টিশক্তি শিল্প করুন",
		crafting_sight = "দৃষ্টিশক্তি শিল্প করা হচ্ছে",
		crafted_sight = "দৃষ্টিশক্তি শিল্প হয়েছে।",
		failed_craft_sight = "দৃষ্টিশক্তি শিল্প ব্যর্থ হয়েছে।",

		craft_pistol_sight = "শিল্প পিস্তলের দৃষ্টিশক্তি",
		press_craft_pistol_sight = "[${SeatEjectKey}] পিস্তলের দৃষ্টিশক্তি শিল্প করুন",
		crafting_pistol_sight = "পিস্তল সাইট উৎপাদন করা হচ্ছে",
		crafted_pistol_sight = "পিস্তল সাইট উৎপাদিত হয়েছে",
		failed_craft_pistol_sight = "পিস্তল সাইট উৎপাদন ব্যর্থ হয়েছে",

		craft_scope = "স্কোপ উৎপাদন করুন",
		press_craft_scope = "[${SeatEjectKey}] বাটন চাপুন স্কোপ উৎপাদনের জন্য",
		crafting_scope = "স্কোপ উৎপাদন করা হচ্ছে",
		crafted_scope = "স্কোপ উৎপাদিত হয়েছে",
		failed_craft_scope = "স্কোপ উৎপাদন ব্যর্থ হয়েছে",

		craft_grip = "গ্রিপ উৎপাদন করুন",
		press_craft_grip = "[${SeatEjectKey}] বাটন চাপুন গ্রিপ উৎপাদনের জন্য",
		crafting_grip = "গ্রিপ উৎপাদন করা হচ্ছে",
		crafted_grip = "গ্রিপ উৎপাদিত হয়েছে",
		failed_craft_grip = "গ্রিপ উৎপাদন ব্যর্থ হয়েছে",

		craft_extended_clip = "এক্সটেন্ডেড ক্লিপ তৈরি করুন",
		press_craft_extended_clip = "[${SeatEjectKey}] এক্সটেন্ডেড ক্লিপ তৈরি করুন",
		crafting_extended_clip = "এক্সটেন্ডেড ক্লিপ তৈরি হচ্ছে",
		crafted_extended_clip = "এক্সটেন্ডেড ক্লিপ তৈরি হয়েছে।",
		failed_craft_extended_clip = "এক্সটেন্ডেড ক্লিপ তৈরি করতে ব্যর্থ হয়েছে।",

		craft_extended_smg_clip = "এক্সটেন্ডেড এসএমজি ক্লিপ তৈরি করুন",
		press_craft_extended_smg_clip = "[${SeatEjectKey}] এক্সটেন্ডেড এসএমজি ক্লিপ তৈরি করুন",
		crafting_extended_smg_clip = "এক্সটেন্ডেড এসএমজি ক্লিপ তৈরি হচ্ছে",
		crafted_extended_smg_clip = "এক্সটেন্ডেড এসএমজি ক্লিপ তৈরি হয়েছে।",
		failed_craft_extended_smg_clip = "এক্সটেন্ডেড এসএমজি ক্লিপ তৈরি করতে ব্যর্থ হয়েছে।",

		craft_extended_shotgun_clip = "এক্সটেন্ডেড শটগান ক্লিপ তৈরি করুন",
		press_craft_extended_shotgun_clip = "[${SeatEjectKey}] এক্সটেন্ডেড শটগান ক্লিপ ক্রাফট করুন",
		crafting_extended_shotgun_clip = "এক্সটেন্ডেড শটগান ক্লিপ তৈরি করা হচ্ছে",
		crafted_extended_shotgun_clip = "এক্সটেন্ডেড শটগান ক্লিপ তৈরি করা হয়েছে।",
		failed_craft_extended_shotgun_clip = "এক্সটেন্ডেড শটগান ক্লিপ তৈরী করতে ব্যর্থ হয়েছে।",

		craft_extended_pistol_clip = "এক্সটেন্ডেড পিস্তল ক্লিপ তৈরি করুন",
		press_craft_extended_pistol_clip = "[${SeatEjectKey}] এক্সটেন্ডেড পিস্তল ক্লিপ ক্রাফট করুন",
		crafting_extended_pistol_clip = "এক্সটেন্ডেড পিস্তল ক্লিপ উৎপাদন করা হচ্ছে",
		crafted_extended_pistol_clip = "এক্সটেন্ডেড পিস্তল ক্লিপ উৎপাদিত হয়েছে।",
		failed_craft_extended_pistol_clip = "এক্সটেন্ডেড পিস্তল ক্লিপ উৎপাদন করতে ব্যর্থ হল।",

		craft_drum = "ড্রাম ম্যাগ উৎপাদন করা হচ্ছে",
		press_craft_drum = "[${SeatEjectKey}] ড্রাম ম্যাগ উৎপাদন করুন",
		crafting_drum = "ড্রাম ম্যাগ উৎপাদন করা হচ্ছে",
		crafted_drum = "ড্রাম ম্যাগ উৎপাদিত হয়েছে।",
		failed_craft_drum = "ড্রাম ম্যাগ উৎপাদন করতে ব্যর্থ হল।",

		craft_suppressor = "সাপ্রেসর উৎপাদন করা হচ্ছে",
		press_craft_suppressor = "[${SeatEjectKey}] সাপ্রেসর উৎপাদন করুন",
		crafting_suppressor = "সাপ্রেসর তৈরি করা হচ্ছে",
		crafted_suppressor = "সাপ্রেসর তৈরি হয়েছে।",
		failed_craft_suppressor = "সাপ্রেসর তৈরি করতে ব্যর্থ হয়েছে।",

		craft_flashlight = "ফ্ল্যাশলাইট তৈরি করা হচ্ছে",
		press_craft_flashlight = "[${SeatEjectKey}] ফ্ল্যাশলাইট তৈরি করুন",
		crafting_flashlight = "ফ্ল্যাশলাইট তৈরি করা হচ্ছে",
		crafted_flashlight = "ফ্ল্যাশলাইট তৈরি হয়েছে।",
		failed_craft_flashlight = "ফ্ল্যাশলাইট তৈরি করতে ব্যর্থ হয়েছে।",

		mix_paint = "পেইন্ট মিশিয়ে দিন",
		press_mix_paint = "[${SeatEjectKey}] পেইন্ট মিশিয়ে দিন",
		mixing_paint = "পেইন্ট মিশিয়ে হচ্ছে",
		mixed_paint = "পেইন্ট মিশিয়ে হয়েছে।",
		failed_mix_paint = "কালার মিক্স করতে ব্যর্থ।",

		modify_knuckle = "ব্রাস নাকুল পরিবর্তন করুন",
		press_modify_knuckle = "[${SeatEjectKey}] ব্রাস নাকুল পরিবর্তন করুন",
		modifying_knuckle = "ব্রাস নাকুল পরিবর্তন করা হচ্ছে",
		modified_knuckle = "ব্রাস নাকুল পরিবর্তিত হয়েছে।",
		failed_modify_knuckle = "ব্রাস নাকুল পরিবর্তন করতে ব্যর্থ হলে হয়।",

		craft_jammer = "জ্যামার তৈরি করুন",
		press_craft_jammer = "[${SeatEjectKey}] জ্যামার তৈরি করুন",
		crafting_jammer = "জ্যামার তৈরি করা হচ্ছে",
		crafted_jammer = "জ্যামার তৈরি হয়েছে।",
		failed_craft_jammer = "জ্যামার তৈরি করতে ব্যর্থ হয়েছে।",

		craft_advanced_repair_kit = "উন্নয়ন রপ্তানি ক্রাফট করুন",
		press_craft_advanced_repair_kit = "[${SeatEjectKey}] উন্নয়ন রপ্তানি ক্রাফট করুন",
		crafting_advanced_repair_kit = "উন্নয়ন রপ্তানি তৈরি করা হচ্ছে",
		crafted_advanced_repair_kit = "উন্নয়ন রপ্তানি তৈরি করা হয়েছে।",
		failed_craft_advanced_repair_kit = "উন্নয়ন রপ্তানি ক্রাফট করতে ব্যর্থ হয়েছে।",

		pulverize_aluminium = "এলুমিনিয়াম পাড়া করুন",
		press_pulverize_aluminium = "[${SeatEjectKey}] এলুমিনিয়াম পাড়া করুন",
		pulverizing_aluminium = "এলুমিনিয়াম পাড়া করা হচ্ছে",
		pulverized_aluminium = "পাউডার করা এলুমিনিয়াম।",
		failed_pulverize_aluminium = "এলুমিনিয়াম পুলভারাইজ করা ব্যর্থ হয়েছে।",

		pulverize_steel = "স্টিল পুলভারাইজ করুন",
		press_pulverize_steel = "[${SeatEjectKey}] স্টিল পুলভারাইজ করুন",
		pulverizing_steel = "স্টিল পুলভারাইজ করা হচ্ছে",
		pulverized_steel = "স্টিল পুলভারাইজ করা হয়েছে।",
		failed_pulverize_steel = "স্টিল পুলভারাইজ করা ব্যর্থ হয়েছে।",

		mix_thermite = "থার্মাইট মিশিয়ে নিন",
		press_mix_thermite = "[${SeatEjectKey}] থার্মাইট মিশিয়ে নিন",
		mixing_thermite = "থার্মাইট মিশিয়ে হচ্ছে",
		mixed_thermite = "থার্মাইট মিশিয়ে নেয়া হয়েছে।",
		failed_mix_thermite = "থার্মাইট মিশিয়ে নেয়া ব্যর্থ হয়েছে।",

		deconstruct_phone = "ফোন পুনঃনির্মাণ করুন",
		press_deconstruct_phone = "[${SeatEjectKey}] ফোন পুনঃনির্মাণ করুন",
		failed_deconstruct_phone = "ফোন পুনঃনির্মাণ করা ব্যর্থ হয়েছে।",

		deconstruct_radio = "রেডিও পুনঃনির্মাণ করুন",
		press_deconstruct_radio = "[${SeatEjectKey}] রেডিও পুনঃনির্মাণ করুন",
		failed_deconstruct_radio = "রেডিও পুনঃনির্মাণ করা ব্যর্থ হয়েছে।",

		deconstruct_raspberry = "রাসপবেরি পুনঃনির্মাণ করুন",
		press_deconstruct_raspberry = "[${SeatEjectKey}] রাসপবেরি পুনঃনির্মাণ করুন",
		failed_deconstruct_raspberry = "রাসপবেরি পুনঃনির্মাণ করা ব্যর্থ হয়েছে।",

		deconstruct_chip = "চিপ বিন্যাস সরান",
		press_deconstruct_chip = "[${SeatEjectKey}] চিপ বিন্যাস সরান",
		failed_deconstruct_chip = "চিপ বিন্যাস সরান ব্যর্থ।",

		craft_device_scanner = "যন্ত্র স্ক্যানার তৈরি করুন",
		press_craft_device_scanner = "[${SeatEjectKey}] যন্ত্র স্ক্যানার তৈরি করুন",
		crafting_device_scanner = "যন্ত্র স্ক্যানার তৈরি করা হচ্ছে",
		crafted_device_scanner = "যন্ত্র স্ক্যানার তৈরি হয়েছে।",
		failed_craft_device_scanner = "যন্ত্র স্ক্যানার তৈরি করতে ব্যর্থ হয়েছে।",

		craft_decryption_key = "ডিক্রিপশন কী তৈরি করুন",
		press_craft_decryption_key = "[${SeatEjectKey}] ডিক্রিপশন কী তৈরি করুন",
		crafting_decryption_key = "ক্রাফটিং ডিক্রিপশন কী",
		crafted_decryption_key = "ক্রাফটিং দ্বারা তৈরি ডিক্রিপশন কী।",
		failed_craft_decryption_key = "ডিক্রিপশন কী তৈরি করতে ব্যর্থ হয়েছে।",

		craft_tire_wall = "টায়ার ওয়াল তৈরি করুন",
		press_craft_tire_wall = "[${SeatEjectKey}] টায়ার ওয়াল তৈরি করুন",
		crafting_tire_wall = "টায়ার ওয়াল তৈরি হচ্ছে",
		crafted_tire_wall = "ক্রাফটিং দ্বারা তৈরি টায়ার ওয়াল।",
		failed_craft_tire_wall = "টায়ার ওয়াল তৈরি করতে ব্যর্থ হয়েছে।",

		fix_tire_wall = "টায়ার ওয়াল ঠিক করুন",
		press_fix_tire_wall = "[${SeatEjectKey}] টায়ার ওয়াল ঠিক করুন",
		fixing_tire_wall = "টায়ার ওয়াল ঠিক করা হচ্ছে",
		fixed_tire_wall = "পঙ্গ বাঁধা হয়েছে।",
		failed_fix_tire_wall = "পঙ্গ বাঁধা ব্যর্থ।",

		saw_shotgun = "সহজ শটগান",
		press_saw_shotgun = "[${SeatEjectKey}] সহজ শটগান",
		sawing_shotgun = "সহজ শটগান কাটা হচ্ছে",
		sawed_shotgun = "সহজ শটগান কেটে নেওয়া হয়েছে।",
		failed_saw_shotgun = "সহজ শটগান কাটানো ব্যর্থ হয়েছে।",

		bake_brownies = "ব্রাউনী পাকান",
		press_bake_brownies = "[${SeatEjectKey}] ব্রাউনী পাকান",
		baking_brownies = "ব্রাউনী পাকছে",
		baked_brownies = "ব্রাউনী পাকানো হয়েছে।",
		failed_bake_brownies = "ব্রাউনী পাকানো ব্যর্থ হয়েছে।",

		mix_brushstroke_paint = "মিক্স ব্রাশস্ট্রোক পেইন্ট",
		press_mix_brushstroke_paint = "[${SeatEjectKey}] মিক্স ব্রাশস্ট্রোক পেইন্ট করুন",
		mixing_brushstroke_paint = "মিক্সিং ব্রাশস্ট্রোক পেইন্ট",
		mixed_brushstroke_paint = "মিশ্রিত হয়েছে ব্রাশস্ট্রোক পেইন্ট।",
		failed_mix_brushstroke_paint = "ব্রাশস্ট্রোক পেইন্ট মিশ্রণ করতে ব্যর্থ হয়েছে।",

		mix_skull_paint = "মিক্স স্কাল পেইন্ট",
		press_mix_skull_paint = "[${SeatEjectKey}] মিক্স স্কাল পেইন্ট করুন",
		mixing_skull_paint = "মিক্সিং স্কাল পেইন্ট",
		mixed_skull_paint = "মিশ্রিত হয়েছে স্কাল পেইন্ট।",
		failed_mix_skull_paint = "স্কাল পেইন্ট মিশ্রণ করতে ব্যর্থ হয়েছে।",

		mix_leopard_paint = "মিক্স লেওপার্ড পেইন্ট",
		press_mix_leopard_paint = "[${SeatEjectKey}] মিক্স লেওপার্ড পেইন্ট করুন",
		mixing_leopard_paint = "লেওপার্ড পেইন্ট মিক্স করা হচ্ছে",
		mixed_leopard_paint = "লেওপার্ড পেইন্ট মিক্স হয়েছে।",
		failed_mix_leopard_paint = "লেওপার্ড পেইন্ট মিক্স করতে ব্যর্থ হয়েছে।",

		mix_zebra_paint = "মিক্স জেবরা পেইন্ট",
		press_mix_zebra_paint = "[${SeatEjectKey}] মিক্স জেবরা পেইন্ট করুন",
		mixing_zebra_paint = "জেবরা পেইন্ট মিক্স করা হচ্ছে",
		mixed_zebra_paint = "জেবরা পেইন্ট মিক্স হয়েছে।",
		failed_mix_zebra_paint = "জেবরা পেইন্ট মিক্স করতে ব্যর্থ হয়েছে।",

		mix_geometric_paint = "জ্যামিতি পেইন্ট মিক্স করুন",
		press_mix_geometric_paint = "[${SeatEjectKey}] জ্যামিতি রঙ মিশিয়ে দিন",
		mixing_geometric_paint = "জ্যামিতি রঙ মিশিয়ে দিয়েছি",
		mixed_geometric_paint = "জ্যামিতি রঙ মিশ্রণ সফল হয়েছে।",
		failed_mix_geometric_paint = "জ্যামিতি রঙ মিশ্রণ ব্যর্থ হয়েছে।",

		mix_patriotic_paint = "জাতিক রঙ মিশিয়ে দিন",
		press_mix_patriotic_paint = "[${SeatEjectKey}] জাতিক রঙ মিশিয়ে দিন",
		mixing_patriotic_paint = "জাতিক রঙ মিশিয়ে দিয়েছি",
		mixed_patriotic_paint = "জাতিক রঙ মিশ্রণ সফল হয়েছে।",
		failed_mix_patriotic_paint = "জাতিক রঙ মিশ্রণ ব্যর্থ হয়েছে।",

		craft_radio_decrypter = "রেডিও ডিক্রিপটার ক্রাফট করুন",
		press_craft_radio_decrypter = "[${SeatEjectKey}] রেডিও ডিক্রিপটার ক্রাফট করুন",
		crafting_radio_decrypter = "রেডিও ডিক্রিপটার ক্রাফট করা হচ্ছে",
		crafted_radio_decrypter = "রেডিও ডিক্রিপটার ক্রাফট সফল হয়েছে।",
		failed_craft_radio_decrypter = "রেডিও ডিক্রিপটার ক্রাফট ব্যর্থ হয়েছে।",

		craft_grenade_shell = "গ্রেনেড শেল ক্রাফট করুন",
		press_craft_grenade_shell = "[${SeatEjectKey}] গ্রেনেড শেল ক্রাফট করুন",
		crafting_grenade_shell = "গ্রেনেড শেল ক্রাফট করা হচ্ছে",
		crafted_grenade_shell = "গ্রেনেড শেল ক্রাফট সফল হয়েছে।",
		failed_craft_grenade_shell = "হাতে না পড়ে গ্রেনেড শেল তৈরি করা যাবেনি।",

		craft_grenade_pin = "গ্রেনেড পিন তৈরি করুন",
		press_craft_grenade_pin = "[${SeatEjectKey}] গ্রেনেড পিন তৈরি করুন",
		crafting_grenade_pin = "গ্রেনেড পিন তৈরি করা হচ্ছে",
		crafted_grenade_pin = "গ্রেনেড পিন তৈরি করা হয়েছে।",
		failed_craft_grenade_pin = "হাতে না পড়ে গ্রেনেড পিন তৈরি করা যাবেনি।",

		craft_gas_grenade = "গ্যাস গ্রেনেড তৈরি করুন",
		press_craft_gas_grenade = "[${SeatEjectKey}] গ্যাস গ্রেনেড তৈরি করুন",
		crafting_gas_grenade = "গ্যাস গ্রেনেড তৈরি করা হচ্ছে",
		crafted_gas_grenade = "গ্যাস গ্রেনেড তৈরি করা হয়েছে।",
		failed_craft_gas_grenade = "গ্যাস গ্রেনেড তৈরি করতে ব্যর্থ হয়েছে।",

		break_apart_ring = "রিং ভাঙান",
		press_break_apart_ring = "[${SeatEjectKey}] রিং ভাঙান",
		breaking_ring = "রিং ভাঙছে",
		broke_ring = "ভাঙা রিং।",
		failed_break_ring = "রিং ভাঙতে ব্যর্থ হয়েছে।",

		no_required_items = "আপনার সমস্ত প্রয়োজনীয় জিনিসপত্র নেই।",

		debug_multi = "-একাধিক আউটপুট-",

		used_crafting_station_title = "ক্রাফটিং স্টেশন",
		used_crafting_station_details = "${consoleName} একটি ক্রাফটিং স্টেশন ব্যবহার করে ${itemName} এর ${amount}টি তৈরী করেছেন।"
	},

	crashes = {
		crash_failed = "${consoleName} এর ক্র্যাশ উপস্থাপন করতে ব্যর্থ হয়েছে।",
		crash_success = "${consoleName} এর ক্র্যাশ সফলভাবে উপস্থাপন করা হয়েছে।",
		server_id_invalid = "অবৈধ সার্ভার আইডি।"
	},

	creation = {
		turn_right = "ডানদিকে ভাঁজ করো",
		turn_left = "বাম দিকে তেমন পাল্টো না"
	},

	creation_menu = {
		character_creation = "ক্যারেক্টার সৃষ্টি",
		new_character = "নতুন ক্যারেক্টার",

		select_a_model = "একটি মডেল নির্বাচন করুন।",

		heritage = "উত্তরণ",
		heritage_description = "আপনার পিতা-মাতার বিরতি নির্বাচন করতে নির্বাচন করুন।",
		mom = "মা",
		mom_description = "আপনার মা নির্বাচন করুন।",
		dad = "পিতা",
		dad_description = "আপনার পিতা নির্বাচন করুন।",
		resemblance = "প্রতিলিপি",
		resemblance_description = "আপনার বৈশিষ্ট্যগুলি আপনার মা বা পিতা থেকে আরো প্রভাবিত হচ্ছে তা নির্বাচন করুন।",
		skin_tone = "চামড়ার টোন",
		skin_tone_description = "আপনার চামড়ার টোন আপনার মা বা পিতা থেকে আরো প্রভাবিত হচ্ছে তা নির্বাচন করুন।",
		divorced = "তালাকপ্রাপ্ত",
		divorced_description = "যদি আপনার পিতা-মাতা তালাকপ্রাপ্ত হয় তবে এটি নির্বাচন করুন।",

		["in"] = "in",
		out = "বাইরে",
		up = "উপরে",
		down = "নিচে",
		brow = "ভেষ্টি",
		brow_description = "আপনার শারীরিক বৈশিষ্ট্যের পরিবর্তন করুন।",

		squint = "চোখ ঘুমান",
		wide = "পশ্চগামী",
		eyes = "চোখ",
		eyes_description = "আপনার শারীরিক বৈশিষ্ট্যের পরিবর্তন করুন।",

		narrow = "সংকোচিত",
		wide = "পশ্চগামী",
		nose = "নাক",
		nose_description = "আপনার শারীরিক বৈশিষ্ট্যের পরিবর্তন করুন।",

		short = "ছোট",
		long = "দীর্ঘ",
		crooked = "টেঢ়ে",
		curved = "বাঁকা",
		nose_profile = "চেহারা প্রোফাইল",
		nose_profile_description = "আপনার শারীরিক সুবিধা পরিবর্তন করুন।",

		broken_left = "বিদ্রুপতার বাঁমার্ধে",
		broken_right = "বিদ্রুপতার ডানামার্ধে",
		tip_up = "টিপ উপরে",
		tip_down = "টিপ নীচে",
		nose_tip = "নাক টিপ",
		nose_tip_description = "আপনার শারীরিক সুবিধা পরিবর্তন করুন।",

		cheekbones = "গালদুল",
		cheekbones_description = "আপনার শারীরিক সুবিধা পরিবর্তন করুন।",

		gaunt = "দুঃখিত",
		puffed = "ফোঁসা",
		cheeks = "গাল",
		cheeks_description = "আপনার শারীরিক সুবিধা পরিবর্তন করুন।",

		thin = "সামান্য",
		fat = "মোটা",
		lips = "ওষুধ",
		lips_description = "আপনার শারীরিক বৈশিষ্ট্য পরিবর্তন করুন।",

		round = "গোলাকার",
		square = "বর্গাকার",
		jaw = "হালকা",
		jaw_description = "আপনার শারীরিক বৈশিষ্ট্য পরিবর্তন করুন।",

		chin_profile = "চিরদর্শন",
		chin_profile_description = "আপনার শারীরিক বৈশিষ্ট্য পরিবর্তন করুন।",

		pointed = "নোকিয়া",
		rounded = "গোলাকার",
		bum = "উঁচু",
		chin_shape = "চিরকোনা আকৃতি",
		chin_shape_description = "আপনার শারীরিক বৈশিষ্ট্য পরিবর্তন করুন।",

		thick = "মোটা",
		neck_thickness = "গলা পাঠিলতা",
		neck_thickness_description = "আপনার শারীরিক বৈশিষ্ট্য পরিবর্তন করুন।",

		features = "বৈশিষ্ট্যসমূহ",
		appearance = "দৃষ্টিভঙ্গি",
		save_and_continue = "সংরক্ষণ এবং চালিয়ে যান",
		components = "উপাদানসমূহ",
		props = "প্রপস",
		ambient_females = "পরিবেশজনিত নারীদের",
		ambient_male = "পরিবেশজনিত পুরুষদের",
		animals = "প্রাণীসমূহ",
		cutscene = "কাটসিন",
		gang_female = "গ্যাং নারীদের",
		gang_male = "গ্যাং পুরুষদের",
		multiplayer = "মাল্টিপ্লেয়ার",
		scenario_female = "স্কেনারিও নারীদের",
		scenario_male = "স্কেনারিও পুরুষদের",
		story = "গল্প",
		story_scenario_female = "গল্প স্কেনারিও নারীদের",
		story_scenario_male = "গল্প স্কেনারিও পুরুষদের",
		models = "মডেলস",

		features_description = "আপনার মুখের বৈশিষ্ট্য পরিবর্তন করতে নির্বাচন করুন।",

		unknown_hair = "অজানা চুল (${hairId})",
		unknown_eyebrow = "অজানা ভুঁটমানি (${eyebrowId})",
		unknown_facial_hair = "অজানা মুখের চুল (${facialHairId})",
		unknown_skin_blemish = "অজানা ত্বক দোষ (${skinBlemishId})",
		unknown_skin_aging = "অজানা ত্বকের বৃদ্ধি (${skinAgingId})",
		unknown_skin_complexion = "অজানা ত্বকের ধরণ (${skinComplexionId})",
		unknown_moles_and_freckles = "অজানা কালো চেনা এবং ফ্রেকলেস (${molesAndFrecklesId})",
		unknown_skin_damage = "অজানা স্কিন ক্ষতি (${skinDamageId})",
		unknown_eye_makeup = "অজানা চোখ মেকআপ (${eyeMakeupId})",
		unknown_blusher = "অজানা ব্লাশার (${blusherId})",
		unknown_lipstick = "অজানা লিপস্টিক (${lipstickId})",
		unknown_chest_hair = "অজানা চেস্ট স্কোপ্পে চুল (${chestHairId})",

		color = "রং",
		opacity = "অস্বচ্ছতা",

		hair = "চুল",
		hair_description = "আপনার চেহারার রূপান্তর করার জন্য পরিবর্তন করুন।",

		eyebrows = "ভ্রূ",
		eyebrows_description = "আপনার চেহারার রূপান্তর করার জন্য পরিবর্তন করুন।",

		facial_hair = "মুখের চুল",
		facial_hair_description = "আপনার চেহারার মুখের চারম পরিবর্তন করুন।",

		skin_blemishes = "ত্বক মেচে",
		skin_blemishes_description = "আপনার চেহারার মুখের চারম পরিবর্তন করুন।",

		skin_aging = "ত্বক বয়স গতি",
		skin_aging_description = "আপনার চেহারার মুখের চারম পরিবর্তন করুন।",

		skin_complexion = "ত্বক মান",
		skin_complexion_description = "আপনার চেহারার মুখের চারম পরিবর্তন করুন।",

		moles_and_freckles = "তিতলি ও ফ্রেকল",
		moles_and_freckles_description = "আপনার চেহারার মুখের চারম পরিবর্তন করুন।",

		skin_damage = "ত্বক ক্ষতি",
		skin_damage_description = "আপনার চেহারার মুখের চারম পরিবর্তন করুন।",

		eye_color = "চোখের রঙ",
		eye_color_description = "আপনার উপস্থিতির সাথে পরিবর্তন করুন।",

		eye_makeup = "চোখের মেকআপ",
		eye_makeup_description = "আপনার উপস্থিতির সাথে পরিবর্তন করুন।",

		blusher = "ব্লাশার",
		blusher_description = "আপনার উপস্থিতির সাথে পরিবর্তন করুন।",

		lipstick = "লিপস্টিক",
		lipstick_description = "আপনার উপস্থিতির সাথে পরিবর্তন করুন।",

		chesthair = "সিনের চুল",
		chesthair_description = "আপনার উপস্থিতির সাথে পরিবর্তন করুন।",

		ready_to_start_playing = "খেলা শুরু করার জন্য প্রস্তুত?",
		no = "না",
		go_back = "ফিরে যান।",
		yes = "হ্যাঁ",
		you_will_not_be_able_to_return = "আপনি ফেরত ফিরতে পারবেন না।",

		freemode = "ফ্রি মোড",
		freemode_description = "ফ্রি মোড মডেল ব্যবহার করতে চাইলে নির্বাচন করুন। ফ্রি মোড মডেলগুলি বেশ কাস্টমাইজেবল।",

		sex = "লিঙ্গ",
		sex_description = "আপনার চরিত্রের লিঙ্গ নির্বাচন করুন।",
		male = "পুরুষ",
		female = "মহিলা",

		props_description = "আপনার পছন্দমতো প্রপস নির্বাচন করুন।",

		hat = "টুপি",
		glass = "চশমা",
		ear = "কানের নেশা",
		watch = "হাতঘড়ি",
		bracelet = "বেশকটলা",

		appearance_description = "আপনার বাণিজ্যিক দৃষ্টিভঙ্গি পরিবর্তন করতে নির্বাচন করুন।",
		components_description = "আপনার পছন্দমত উপাদানসমূহ নির্বাচন করুন।",

		none = "কোনটি নেই",

		texture = "টেক্সচার ${textureId}",
		drawable = "ড্রয়েবল ${drawableId}",

		clean_shaven = "শব্দমুক্ত",

		face = "মুখ",
		mask = "মাস্ক",
		hair = "চুল",
		torso = "উপরের শরীর",
		leg = "পা",
		parachute_and_bag = "প্যারাশুট / ব্যাগ",
		shoes = "জুতা",
		accessory = "এক্সেসরি",
		undershirt = "আন্ডারশার্ট",
		kevlar = "কেভলার",
		badge = "ব্যাজ",
		torso_two = "উপরের শরীর 2"
	},

	crosshair = {
		copied_config = "কনফিগ ক্লিপবোর্ডে কপিকৃত হয়েছে।",
		imported_config = "কনফিগ ইমপোর্ট করা হয়েছে।",
		disabled_crosshair = "কাস্টম ক্রসহেয়ার নিষ্ক্রিয়।",

		invalid_url_title = "অবৈধ চিত্র URL",
		invalid_url_description = "আপনি যে ছবি ইউআরএলটি লিখেছেন তা অবৈধ। এটি চিত্রটির সরাসরি লিঙ্ক হতে হবে, ছবি বিষয়ক ওয়েবসাইটের লিঙ্ক নয়। এটি নিম্নলিখিত URL গুলির মধ্যে একটির সাথে শুরু হতে হবে:",
		cancel_button = "ঠিক আছে",

		center = "কেন্দ্র",
		main = "প্রধান",
		outer = "আউটার",
		kill = "ফ্লাশ হত্তয়া",

		enabled = "সক্ষম",
		size = "আকার",
		image = "চিত্র",
		length = "দৈর্ঘ্য",
		offset = "অফসেট",
		secondary_offset = "দ্বিতীয় অফসেট",
		rotation = "রোটেশন",
		color = "রং",
		duration = "সময়কাল (মিলিসেকেন্ড)"
	},

	clip_saver = {
		start_recording = "রেকর্ডিং শুরু করুন",
		clip_save = "ক্লিপ সংরক্ষণ করুন",
		clip_discard = "ক্লিপ বাতিল করুন"
	},

	compass = {
		north = "উ",
		north_east = "উত্তর-পূর্ব",
		east = "পূর্ব",
		south_east = "দক্ষিণ-পূর্ব",
		south = "দক্ষিণ",
		south_West = "SW",
		west = "পশ্চিম",
		north_west = "উত্তর-পশ্চিম"
	},

	courthouse = {
		press_to_use_gavel = "গাভেল ব্যবহার করতে ~INPUT_CONTEXT~ চাপুন।"
	},

	daily_activities = {
		press_to_daily_activities = "[${InteractionKey}] দৈনিক কার্যক্রম",
		daily_activities = "দৈনিক কার্যক্রম",
		resets_in = "${resetsIn} এ রিসেট করা হবে...",
		complete_the_other_tasks_to_unlock = "অন্যান্য টাস্কগুলি সম্পন্ন করুন যাতে আনলক করতে পারেন...",
		remain = "${remain} অবশিষ্ট",
		remain_money = "${remain} টাকা অবশিষ্ট",
		claimed = "দাবি করা হয়েছে",
		claim = "দাবি করুন",
		streak_reward = "যখন আপনার সতর্কতা 7 বা তার বেশী হবে, তখন লাকি হুইলে আবার একটি ফ্রি ডেইলি স্পিন পাবেন।",

		reset_daily_activities_no_permissions = "গ্রাহক প্রয়োজনীয় অনুমতি না থাকে তাদের দৈনন্দিন কাজগুলো রিসেট করার চেষ্টা করেছেন।",
		reset_daily_activities = "দৈনন্দিন কাজগুলো রিসেট করুন।",

		parachute_from_location = "${location} থেকে প্যারাশুট করুন।",
		gamble_at_blackjack = "${amount} হাতে ব্ল্যাকজ্যাক টেবিলে জুয়া খেলুন।",
		bring_in_items = "নিম্নলিখিত জিনিসপত্র নিয়ে আন।",
		kills_in_arena = "এলাকায় ${amount} জন খুন।",
		headshot_kills_in_arena = "এলাকায় ${amount} টি হেডশট খুন।",
		punch_locals = "${amount} স্থানীয়কে মুখে মুখে মার।",
		move_from_place_to_place = "${time} সেকেন্ডে ${from} থেকে ${to} এ সরে যাও।",
		put_bets_in_jackpot = "জ্যাকপটে $${amount} টি বাজি করুন।",
		win_bets_in_jackpot = "জ্যাকপটে $${amount} মূল্যের জিনিস জেতুন।",
		chop_vehicles = "${amount}টি গাড়ি কাটাকাটি করুন।",
		purchase_ammo = "${amount}টি অ্যামো ক্রয় করুন।",
		collect_items_from_diving = "${amount}টি ${itemLabel} ডাইভিং করে সংগ্রহ করুন।",
		take_zombie_pills = "${amount}টি জম্বি পিল গ্রহণ করুন।",
		dig_up_a_treasure = "ট্রেজার ম্যাপ ব্যবহার করে ট্রেজার উন্নয়ন করুন।",
		refine_gems = "${amount}টি জ্যেমস পরিষ্কার করুন।",
		visit_location = "${location} ভিজিট করুন।",
		visit_the_location = "${location} ভিজিট করুন।"
	},

	dashcam = {
		video = "ভিডিও",
		time = "সময়",
		date = "তারিখ",

		unit_id = "ইউনিট আইডি",
		unit_name = "ইউনিট নাম",
		unit_speed = "ইউনিট স্পীড",

		state_seal_one = "এই গাড়িটির লাইসেন্স প্রদত্ত হয়েছে",
		state_seal_two = "স্টেট অফ স্যান অ্যানড্রেসের",
		state_seal_three = "13 এস.এ. পেন কোড 502(a) এর তফসিল অনুযায়ী অননুমোদিত ব্যবহারটি ভারী জরিমানা বাধ্যতামূলক।",

		kmh = "কেএম/ঘন্টা",
		mph = "মাইল/ঘন্টা",

		set_unit_id_to = "আপনার ইউনিট আইডি এখন ${unitId}-তে সেট করা হয়েছে।",
		reset_unit_id = "আপনার ইউনিট আইডি এখন রিসেট করা হয়েছে।",
		failed_to_set_unit_id = "আপনার ইউনিট আইডি সেট করা ব্যর্থ হয়েছে।",
		unit_id_already_set_to = "আপনার ইউনিট আইডি ইতিমধ্যে ${unitId}-তে সেট করা হয়েছে।",
		unit_id_already_reset = "আপনার ইউনিট আইডি ইতিমধ্যে রিসেট করা হয়েছে।",
		invalid_unit_id = "ইউনিট-আইডি হতে হবে 1 এবং 999 এর মধ্যে পূর্ণসংখ্যা।",

		unit_id_vehicles_updated = "আপনার আপত্তিজনক গাড়ি আপনার নতুন কার্যকর আইডি `${unitId}` দ্বারা প্রতিবিম্বিত করা হয়েছে।"
	},

	debug = {
		ped = "পেড",
		vehicle = "গাড়ি",
		object = "অবজেক্ট",
		network_id = "নেটওয়ার্ক আইডি",
		owned_by_us = "আমাদের মালিকানাধীন",
		owned_by = "মালিক",
		one_state_set = "1 অবস্থা স্থাপন করা হয়েছে",
		many_states_set = "${count} অবস্থা স্থাপন করা হয়েছে",
		no_states = "কোন অবস্থা নেই",
		entity_health = "স্বাস্থ্য ${health}/${maxHealth}",
		owned_by_server = "সার্ভার",
		first_owned_short = "প্রথম মালিক: ${firstOwned}",
		network_id_side = "নেটওয়ার্ক আইডি: ${networkId}",
		no_target = "কোন টার্গেট নেই",
		invalid_radius_parameter = "ভুল `radius` পরামিতি।",
		inject_code_not_developer = "খেলোয়াড় কোড ইনজেক্ট করে চেষ্টা করেছেন কিন্তু তারা ডেভেলপার নন।",
		inject_code_invalid_player = "সার্ভার আইডি `${serverId}` সহ কোনও খেলোয়াড় নেই।",
		inject_code_success_for_everyone = "সফলভাবে সবার জন্য কোড ইনজেক্ট হয়েছে।",
		inject_code_success_for_player = "${consoleName}-এর জন্য সফলভাবে কোড ইনজেক্ট হয়েছে।",
		inject_code_success = "সফলভাবে কোড ইনজেক্ট হয়েছে।",
		inject_code_target_user_not_found = "লক্ষ্যমূলক ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		inject_code_invalid_text = "অবৈধ লেখা।",
		inject_code_invalid_input = "অবৈধ ইনপুট।",
		inject_code_no_permissions = "কোন অনুমতি নেই।",
		inject_code_user_not_found = "ব্যবহারকারী খুঁজে পাওয়া যায় নি।",
		inject_code_invalid_url = "অবৈধ URL।",
		inject_code_invalid_radius = "অবৈধ ব্যাস।",
		game_pools = "গেম পুলঃ",
		ped_config_flags = "পেড কনফিগ ফ্লাগসঃ",
		ped_is = "পেড হলঃ",
		vehicle_is = "গাড়ি হলঃ",
		native_calls = "নেটিভ কলঃ ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "খেলোয়াড়ের গতিঃ ${playerSpeed}",
		player_ped = "খেলোয়াড়ের পেডঃ ${playerPedId}",
		heading = "হেডিংঃ ${heading}",
		coords = "স্থানঃ ${coords}",
		rotation = "ঘুর্ণনঃ ${rotation}",
		velocity = "বেগঃ ${velocity}",
		ground_material = "মাটির উপাদানঃ ${material}",
		g_force = "জি-ফোর্সঃ ${force}",
		debug_print_f8 = "উপাদেশসূচী তথ্য আপনার F8 কনসোলে মুদ্রিত করা হয়েছে।",
		no_vehicle_bone = "\"${boneName}\" বোন নেই",

		distance = "দূরত্বঃ ${distance}মিটার",
		distance_first = "প্রথম স্থান সংরক্ষিত করা হয়েছে।",

		get_search_invalid = "অবৈধ অনুসন্ধান (কমপক্ষে ২টি অক্ষর লিখুন)।",

		disabled_ped_bone_debug = "পেড হাড় ডিবাগ বন্ধ করা হয়েছে।",

		mph = "মাইল/ঘন্টা",
		vehicle_speed = "গতি: ${speed}",
		vehicle_average = "গড় গতি: ${speed}",
		vehicle_top_speed = "শীর্ষ গতি: ${speed}",
		vehicle_acceleration = "0 থেকে 60: ${time}",
		vehicle_acceleration_120 = "0 থেকে 120: ${time}",
		vehicle_acceleration_150 = "0 থেকে 150: ${time}",
		vehicle_acceleration_force = "শুরুর শক্তি: ${force}",

		invalid_network_id = "অবৈধ নেটওয়ার্ক আইডি।",
		delete_entity_success = "নেটওয়ার্ক আইডি ${networkId} সফলভাবে মোছা হয়েছে।",
		delete_entity_failed = "ইউনিটি মুছতে ব্যর্থ হয়েছে।",
		delete_entity_no_permissions = "খেলোয়াড় উপযুক্ত অনুমতি ছাড়াই একটি ইউনিটি মুছতে চেষ্টা করেছেন।",

		move_entity_success = "নেটওয়ার্ক আইডি ${networkId} সফলভাবে সরানো হয়েছে।",
		move_entity_failed = "ইউনিটি সরাতে ব্যর্থ হয়েছে।",
		move_entity_no_permissions = "খেলোয়াড় উপযুক্ত অনুমতি ছাড়াই একটি ইউনিটি সরাতে চেষ্টা করেছেন।",

		fake_lag_updated = "মিথস্কল ল্যাগ কাউন্টার হয়েছে `${counter}` এ আপডেট হয়েছে।",
		fake_lag_already_set_to = "মিথস্কল ল্যাগ কাউন্টার ইতিমধ্যেই `${counter}` এ সেট করা হয়েছে।",
		fake_lag_enabled = "${counter} কাউন্টার সহ Fake Lag চালু হয়েছে।",
		fake_lag_invalid_counter_value = "${counter} মানটি একটি অবৈধ কাউন্টার অ্যার্গুমেন্ট হলেও।",
		fake_lag_disabled = "Fake Lag নিষ্ক্রিয় করা হয়েছে।",
		fake_lag_not_enabled = "Fake Lag চালু করা হয়নি।",

		weapon_name_missing = "অস্তিত্বমুলক হাতিয়ার নাম পরমিত নেই।",
		weapon_name_invalid = "`${weaponName}` একটি বৈধ হাতিয়ার নাম নয়।",
		model_name_missing = "মডেলের নাম পরমিত নেই।",
		model_name_invalid = "`${modelName}` একটি বৈধ মডেল নাম নয়।",
		model_view_enabled = "মডেল ভিউ সক্ষম।",
		model_view_disabled = "মডেল ভিউ অক্ষম।",
		invalid_component = "${componentName} অবৈধ কম্পোনেন্ট।",

		animation_currently_playing = "বর্তমানে একটি অ্যানিমেশন চলছে।",
		invalid_or_missing_animation_dict = "অবৈধ বা অনুপস্থিত অ্যানিমেশন ডিকশনারি ${animationDict}।",
		missing_animation_name = "অবৈধ বা অনুপস্থিত অ্যানিমেশন নাম ${animationName}।",
		invalid_animation_flags = "অবৈধ অ্যানিমেশন ফ্ল্যাগস্।",
		animation_played = "${flags} ফ্ল্যাগ সহ ${animationDict} ${animationName} চালিয়ে দেওয়া হচ্ছে।",
		no_flags = "সমর্থিত নয়",

		invalid_coordinates = "অবৈধ স্থানাঙ্ক।",
		added_coordinates_draw = "ড্র তালিকায় মুছিবদ্ধ করা হল `${drawId}` আইডিতে `x: ${x}, y: ${y}, z: ${z}` স্থানাঙ্ক।",
		no_coordinate_draws_to_destroy = "ধ্বংস করার জন্য কোনো স্থানাঙ্ক নথি ছিল না।",
		destroyed_coordinate_draws = "ধ্বংস করা হয়েছে `${drawingCoordinatesAmount}` স্থানাঙ্ক নথি।",

		debug_damage_enabled = "ক্ষয় উপাত্ত প্রক্রিয়াধীন।",
		debug_damage_disabled = "ক্ষয় উপাত্ত অক্ষম।",

		enabled_network_debug = "এন্টিটি নেটওয়ার্ক ডিবাগিং সক্রিয় করা হয়েছে।",
		disabled_network_debug = "এটি ইণ্টিটি নেটওয়ার্ক ডিবাগিং নিষ্ক্রিয় করা হয়েছে।",
		failed_network_debug = "ইণ্টিটি নেটওয়ার্ক ডিবাগিং সক্ষম করতে ব্যর্থ হয়েছে।",

		network_owner_subscription_no_permissions = "উচিত অনুমতি না থাকায় ইণ্টিটি নেটওয়ার্ক মালিকের সাথে সাবস্ক্রাইব করার চেষ্টা করা হয়েছে।",

		missing_ipl = "প্যারামিটার ipl অনুপস্থিত।",
		enabled_ipl = "সফলভাবে ipl `${ipl}` সক্ষম করা হয়েছে।",
		disabled_ipl = "সফলভাবে ipl `${ipl}` নিষ্ক্রিয় করা হয়েছে।",

		enabled_ipl_globally = "সফলভাবে ipl `${ipl}` সারাবিশ্বে সক্ষম করা হয়েছে।",
		failed_enabled_ipl_globally = "আন্তর্জাতিকভাবে ipl সক্ষম করতে ব্যর্থ হয়েছে।",
		disabled_ipl_globally = "এই জায়গা সমূহকে এক সাথে মুছে ফেলা হয়েছে `${ipl}` globally।",
		failed_disabled_ipl_globally = "সার্ভারে একটি সমস্যা দেখা দিয়েছে। জায়গা সম্প্রতি সক্ষম করা যায় নি।",

		enabled_ipls_list = "সক্ষম আইপিএলসমূহ: ${list}।",
		no_ipls_enabled = "কোন আইপিএল সক্ষম নয়।",

		missing_code = "কোড পরামিতি অনুপস্থিত।",
		run_code_success = "কোড স্নিপেটটি সফলভাবে কার্যকর করা হয়েছে।",
		run_code_error = "কোড স্নিপেটটি ত্রুটি ফেলেছে।",

		searching_world = "পৃথিবী অনুসন্ধান করা হচ্ছে:\n${modelNames}",
		copied_clipboard = "কোয়ার্ডিনেটগুলি ক্লিপবোর্ডে কপি করা হয়েছে।",

		saved_vehicle_model_lists_to_file = "গাড়ী মডেল তালিকাগুলি সার্ভারে একটি ফাইলে সংরক্ষিত হয়েছে।",

		network_debug_logs_title = "নেটওয়ার্ক ডিবাগ টগল করা হয়েছে",
		network_debug_logs_details_on = "${consoleName} তাদের নেটওয়ার্ক ডিবাগ চালু করেছেন।",
		network_debug_logs_details_off = "${consoleName} তাদের নেটওয়ার্ক ডিবাগ বন্ধ করেছেন।"
	},

	debug_menu = {
		menu_title = "ডিবাগ মেনু",

		timecycles = "সময় চক্র",
		weather = "আবহাওয়া",
		reset = "রিসেট",
		refresh_interior = "ইন্টেরিয়ার রিফ্রেশ করুন"
	},

	dna_evidence = {
		taking_sample = "ডিএনএ নমুনা নেওয়া হচ্ছে",
		already_taking_sample = "আপনি ইতিমধ্যে একটি প্লেয়ারের ডিএনএ নমুনা নিচ্ছেন।",
		sample_no_player = "কোনও প্লেয়ার নেই যার প্রতি আপনি একটি ডিএনএ নমুনা নিতে পারেন।",
		sample_no_bags = "আপনার কোনও প্রমাণ থলে নেই।",
		dna_evidence_bag = "ডিএনএ প্রমাণ",

		evidence_failed = "ডিএনএ প্রমাণ গ্রহণ করতে ব্যর্থ হয়েছে।",

		evidence_text = "প্রমাণের ধরণ: ডিএনএ প্রমাণ\nমোটামুটি ${fullName} #${characterId} থেকে সংগৃহীত ডিএনএ\n\nঅতিরিক্ত তথ্য:\n • সংগ্রহের সময়সীমা: ${time}"
	},

	doors = {
		locked = "তালা করা হয়েছে",
		unlocked = "খোলা হয়েছে",
		locked_press_to_unlock = "[${InteractionKey}] তালা খোলতে",
		unlocked_press_to_lock = "[${InteractionKey}] তালা করতে",
		locking = "লক করা হচ্ছে",
		unlocking = "আনলক করা হচ্ছে",
		jewelry_store_closed = "জুয়েলারি স্টোর বর্তমানে বন্ধ রয়েছে। দয়া করে পরে আবার আসুন।",
		bank_closed = "ব্যাংক বর্তমানে বন্ধ রয়েছে। দয়া করে পরে আবার আসুন।",
		store_closed = "দোকান বর্তমানে বন্ধ রয়েছে। দয়া করে পরে আবার আসুন।",
		failed_to_sync_doors = "দরজাগুলি সিঙ্ক করা ব্যর্থ হয়েছে। কিছু না কিছু ক্ষতিগ্রস্ত হয়েছে। দয়া করে আবার চেষ্টা করুন।",
		saved_doors_to_file = "`${amount}`টি দরজা সার্ভারের ফাইলে সংরক্ষিত হয়েছে।",
		no_nearby_doors = "সঞ্চয় করার জন্য কোন নিকটবর্তী দরজা নেই।",
		lockpicking_door = "লকপিকিং দরজা",

		debug_doors_on = "দরজার ডিবাগিং চালু করা হয়েছে।",
		debug_doors_off = "দরজার ডিবাগিং বন্ধ হয়েছে।",
		doors_no_job = "প্রযোজ্য নয়"
	},

	elevators = {
		use_elevator = "[${InteractionKey}] লিফ্ট ব্যবহার করুন",
		elevator_title = "লিফ্ট",
		close_menu = "মেনু বন্ধ করুন",
		already_on_floor = "আপনি ইতিমধ্যে এই তলার উপরে আছেন।",

		no_elevator_nearby = "নিকটবর্তী কোন লিফ্ট নেই।",
		elevator_enabled = "লিফ্ট # ${elevatorId} সফলভাবে সক্ষম করা হয়েছে।",
		elevator_disabled = "সফলভাবে লিফ্ট #${elevatorId} অক্ষম করা হয়েছে।",
		elevator_toggle_failed = "লিফ্ট টগল করতে ব্যর্থ হয়েছে।",
		elevator_enabled_all = "সমস্ত লিফ্ট সফলভাবে সক্ষম করা হয়েছে।",

		out_of_service = "সার্ভিস বাইরে",
		out_of_service_help = "এই লিফ্টটি বর্তমানে বাইরে সার্ভিসে নেই।",

		current = "বর্তমান",
		up = "ঊপর",
		down = "নীচে",

		floor_tunnel_entrance = "টানেল এন্ট্রান্স",
		floor_underground_tunnel = "সবুজ টানেল",

		floor_lounge = "লাউঞ্জ",

		floor_garage = "গ্যারেজ",
		floor_lobby = "লবি",
		floor_roof = "ছাদ",
		floor_helipad = "হেলিপ্যাড",

		floor_shop = "দোকান",

		floor_casino = "ক্যাসিনো",
		floor_security = "নিরাপত্তা",
		floor_loading_bay = "লোডিং বে",
		floor_vault = "ভল্ট রুম",

		floor_second_floor = "দ্বিতীয় তলা",
		floor_icu = "আইসিইউ",
		floor_ground = "মেঝে",
		floor_surgery = "শস্ত্রক্ষেত্র",

		floor_entrance = "প্রবেশদ্বার",
		floor_server_room = "সার্ভার রুম",

		floor_50 = "ফ্লোর ৫০",
		floor_49 = "ফ্লোর ৪৯",
		floor_47 = "ফ্লোর ৪৭",
		floor_basement = "বেসমেন্ট",

		floor_exclusive_dealership = "এক্সক্লুসিভ দিলারশিপ",
		floor_mayors_office = "মেয়রের অফিস",
		floor_mechanic_shop = "মেকানিক দোকান",

		floor_fourth_floor = "4র্থ তলা",
		floor_third_floor = "3য় তলা",

		floor_obelisk = "অবেলিস্ক",
		floor_hangout = "হ্যাংআউট স্পট",
		floor_penthouse = "পেন্থাউজ",
		floor_theatre_office = "থিয়েটার অফিস",
		floor_psychiatrists_office = "মনোয়মর্ত্তীর অফিস",
		floor_nightclub_garage = "নাইটক্লাব গ্যারেজ",
		floor_submarine = "সাবমেরিন",

		floor_lower_penthouse = "নিচের পেন্থাউজ",
		floor_middle_penthouse = "মধ্য পেন্থাউজ",
		floor_upper_penthouse = "উপরের পেন্থাউজ",

		floor_showroom = "শোরুম",
		floor_office = "অফিস",
		floor_doj_office = "ডিওজে অফিস",

		floor_penthouse_top = "পেন্থাউস (উপরের ফ্লোর)",
		floor_penthouse_entrance = "পেন্থাউস (প্রবেশদ্বার)",

		floor_containment = "সংযোগ কক্ষ",

		doj_office = "ডিওজে অফিস"
	},

	emails = {
		title = "ওপি ই-মেইল",
		email_domain = "san-andreas.gov",

		app_title = "ই-মেইল",

		error_loading_emails = "আপনার ই-মেইলগুলি লোড করা সম্ভব হচ্ছে না।",

		new_email_notification = "~o~নতুন ই-মেইল",

		email_label = "ই-মেইল",
		password_label = "পাসওয়ার্ড",
		set_password = "পাসওয়ার্ড সেট করুন",
		inbox = "ইনবক্স",
		outbox = "পাঠানো মেসেজ",
		new_email = "নতুন ই-মেইল",

		loading = "লোড হচ্ছে...",
		failed_load_email = "ই-মেইল কন্টেন্ট লোড করা ব্যর্থ হয়েছে।",

		from_label = "সেন্ডার",
		to_label = "রিসিভার",

		send_email = "পাঠানো",

		no_emails = "ই-মেইল নেই।",
		to_email = "${email} এ লিখুন",

		error_no_subject = "ই-মেইল সাবজেক্ট অনুপস্থিত।",
		error_invalid_target = "অবৈধ ই-মেইল লক্ষ্যকারী।",
		error_subject_too_long = "ই-মেইল সাবজেক্ট খুব দীর্ঘ।",
		error_body_too_long = "ই-মেইল বডি খুব দীর্ঘ।",
		error_body_missing = "ই-মেইল বডি অনুপস্থিত।",
		error_failed_send = "মেইল পাঠানো ব্যর্থ হয়েছে।",
		error_password_empty = "পাসওয়ার্ড খালি রাখতে পারবেন না।",
		error_password_update_failed = "পাসওয়ার্ড আপডেট করা যায়নি।"
	},

	emote_items = {
		give_item = "[${InteractionKey}] ${itemName} দিন",
		received_item = "${firstName} আপনাকে ${itemName} দিয়েছেন।",
		give_item_success = "সফলভাবে খেলোয়াড়কে ${itemName} দেওয়া হয়েছে।",
		give_item_failed = "খেলোয়াড়কে ${itemName} দেওয়া যায়নি।"
	},

	exclusive_dealership = {
		marker_label = "${label} | $${price}",
		marker_label_purchase = "[${SeatEjectKey}] $${price} এবং ${label} কিনুন",

		confirm_purchase = "ক্রয় নিশ্চিত করুন",
		confirm_purchase_label = "${label} | $${price}",

		deny_purchase = "দুঃখিত, আমি এটি কিনতে চাই না",
		accept_purchase = "হ্যাঁ, আমি এটি কিনতে চাই",
		accept_purchase_info = "আপনি কি নিশ্চিত যে আপনি এই গাড়িটি কিনতে চান? এই কাজটি ফিরে পাল্টা যাবে না।",

		purchased_vehicle = "${label} কে $${price} এ কেনা হয়েছে।",
		insufficient_funds = "যথাযথ অর্থ নেই।",
		area_not_clear = "স্পউন অঞ্চল পরিষ্কার নয়।",
		invalid_package = "ভুল সাপোর্টার প্লেজ।",
		something_went_wrong = "কিছু ভুল হয়েছে।",

		failed_vehicle_spawn = "গাড়ি স্পউন করতে ব্যর্থ হয়েছে। গাড়িটি এখনও আপনার গেরেজে থাকবে।",

		next_rotation_in = "পরবর্তী রোটেশন: ${time}",

		exclusive_dealership_blip = "এক্সক্লুসিভ ডেলাক্স মোটরস্পোর্ট",
		exclusive_buyback_blip = "প্রেস্টিজ হুইলস এক্সচেঞ্জ",

		buyback_vehicle_help = "এক্সচেঞ্জে প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",
		buyback_title = "প্রেস্টিজ হুইলস এক্সচেঞ্জ",
		sell_closest_vehicle = "${label} বিক্রি করুন এবং $${price} (${percent}% দামে) পেয়ে যাবেন?",
		deny_sale = "না, আমি রেখে দিবো।",
		accept_sale = "হ্যাঁ, আমি নিশ্চিত।",
		accept_sale_description = "আপনি কি নিশ্চিত যে আপনি $${price}-এ আপনার গাড়ি বিক্রি করতে চান? এই কাজটি বাতিল করা যাবে না।",
		are_you_sure_sell = "আপনি কি এটি বিক্রি করতে নিশ্চিত?",
		no_vehicle_to_sell = "কোন বিক্রি করা যাবে না যেকোনো গাড়ি।",
		vehicle_not_owned = "আপনি এই গাড়ি মালিক না।",
		sale_success = "আপনি সরফর করেছেন `${label}` এর জন্য $${price}-এ বিক্রি করা হয়েছে।",

		sale_log_title = "EDM পাল্টা কিনুন",
		sale_log_description = "${consoleName} তাঁর `${label}` এর জন্য $${price} মূল্যে বেচে দিলেন।",

		log_title = "ইডিএম ক্রয়",
		log_description = "${label} কে $${price} এ ক্রয় করা হয়েছে।"
	},

	failures = {
		engine_failure_chance = "প্রক্ষেপক ব্যর্থতা সম্ভাবনা সেট করা হয়েছে `${chance}`।",
		failure_chance_invalid = "প্রক্ষেপক ব্যর্থতা সম্ভাবনা 1 থেকে 1500 এর মধ্যে হতে হবে।",
		engine_failure_reset = "প্রক্ষেপক ব্যর্থতা সম্ভাবনা ডিফল্টভাবে রিসেট করা হয়েছে।"
	},

	fake_ids = {
		press_to_purchase = "ফেক-আইডি ক্রয় করতে ~INPUT_CONTEXT~ চাপুন।",

		store_title = "ফেক-আইডি স্টোর",

		female_id = "মহিলা নকল আইডি",
		male_id = "পুরুষ নকল আইডি",
		close_menu = "মেনু বন্ধ করুন",

		logs_purchased_title = "নকল আইডি ক্রয় করা হয়েছে",
		logs_purchased_details = "${consoleName} নেওয়া হয়েছে ${type} (${firstName} ${lastName} #${characterId}).",

		something_went_wrong = "কিছু ভুল হয়েছে।",
		failed_not_on_duty = "আপনাকে নকল আইডি ক্রয় করতে অবশ্যই ডিউটিতে হতে হবে।",
		failed_not_enough_money = "আপনাকে নকল আইডি ক্রয় করতে যথেষ্ট টাকা নেই।",
		purchase_success = "আপনি সফলভাবে $3,000-এ একটি নকল আইডি ক্রয় করেছেন।"
	},

	fingerprint = {
		taking_fingerprint = "ফিঙ্গারপ্রিন্ট নেওয়া হচ্ছে",
		already_fingerprinting = "আপনি ইতিমধ্যে একটি খেলোয়াড়ের উঁচুত্ব নিয়ে ফিঙ্গারপ্রিন্ট নিচ্ছেন।",
		sample_no_player = "কোন খেলোয়াড় আপনার নিকটবর্তীতে নেই যাকে আপনি ফিঙ্গারপ্রিন্ট নিতে পারেন।",
		sample_no_bags = "আপনার কোন প্রমাণ ব্যাগ নেই।",
		fingerprint_evidence = "ফিঙ্গারপ্রিন্ট",

		evidence_failed = "ফিঙ্গারপ্রিন্ট নেওয়া ব্যর্থ হয়েছে।",

		evidence_text = "প্রমাণের ধরন: ফিঙ্গারপ্রিন্ট\n${fullName} #${characterId}-এর ফিঙ্গারপ্রিন্ট\nঅতিরিক্ত তথ্যঃ\n • গ্রহণের সময়সূচী: ${time}"
	},

	fireworks = {
		fire_firework = "[${InteractionKey}] ফায়ারওয়ার্ক"
	},

	flag_swap = {
		toggle_flag_swap_no_permissions = "উচিত অনুমতিসহ ফ্ল্যাগ সোয়াপ টগল করতে চেষ্টা করেছেন না।",

		toggled_flag_swap_on = "ফ্ল্যাগ সোয়াপ চালু করা হয়েছে।",
		toggled_flag_swap_off = "ফ্ল্যাগ পরিবর্তন অফ করা হয়েছে।",

		showing_flags = "পতাকাগুলি দেখাচ্ছি।",
		not_showing_flags = "পতাকাগুলি আর দেখাচ্ছি না।",

		flag_swap_leaderboard = "পতাকা পরিবর্তন লিডারবোর্ড",
		ongoing = "চলমান",
		not_ongoing = "চলমান নয়",
		position_and_name = "${position}. ${name}",
		flag_count = "${flags} পতাকা",
		players_with_most_flags_will_show_here = "এখানে সর্বাধিক পতাকা এনেসহবল খেলোয়াড়দের তালিকা প্রদর্শিত হবে।"
	},

	forcefields = {
		invalid_radius = "অবৈধ ব্যাসার্ধ (1 থেকে 200 এর মধ্যে হতে হবে)।",
		failed_create = "একটি বলবিদ্ধ কর্তব্য তৈরি করা ব্যর্থ হয়েছে।",
		forcefield_marker = "আইডি: ${id}",
		invalid_forcefield_id = "অবৈধ বলবিদ্ধ আইডি।",
		failed_destroy = "বলবিদ্ধ ধ্বংস করা ব্যর্থ হয়েছে।",

		create_forcefield_no_permissions = "একজন প্লেয়ার একটি বলবিদ্ধ তৈরি করার চেষ্টা করেছিলেন কিন্তু তারা এটি করার জন্য প্রয়োজনীয় অনুমতি নেই।",
		destroy_forcefield_no_permissions = "প্লেয়ার একটি বলবিদ্ধ ধ্বংস করার চেষ্টা করেছিলেন কিন্তু তারা এটি করার জন্য প্রয়োজনীয় অনুমতি নেই।"
	},

	fortnite = {
		add_building_no_permissions = "একজন প্লেয়ার একটি ফোর্টনাইট ভবন যোগ করার চেষ্টা করেছিলেন কিন্তু তারা এটি করার জন্য প্রয়োজনীয় অনুমতি নেই।",
		wipe_buildings_no_permissions = "খেলোয়াড় ফর্টনাইট বিল্ডিংগ মুছতে চেষ্টা করেছেন কিন্তু তাদের ঐ কাজটি করার জন্য অনুমতি নেই।",

		no_buildings_in_radius = "${radius}-এর একটি ব্যাসার্ধে কোনও বিল্ডিং নেই।",
		no_buildings = "কোনও বিল্ডিং নেই।",
		wiped_buildings_in_radius = "${radius}-এর একটি ব্যাসার্ধে ${removedBuildings} টি বিল্ডিং মুছে ফেলা হয়েছে।",
		wiped_buildings = "${removedBuildings} টি বিল্ডিং মুছে ফেলা হয়েছে।"
	},

	freecam = {
		enabled_freecam = "মুক্তদৃশ্য (freecam) সক্ষম করা হয়েছে।",
		disabled_freecam = "মুক্তদৃশ্য (freecam) নিষ্ক্রিয় করা হয়েছে।",
		freecam_failed = "ফ্রি-ক্যাম সক্ষম করা যায়নি। কি আপনার হাতে নোক্ষন বা এর মতোই কম্পিউটারি ফাংশন সক্ষম করা আছে?",

		freecam_logs_title = "মুক্ত ক্যাম চালু করা হয়েছে",
		freecam_on_logs_details = "${consoleName} তাদের মুক্ত ক্যামটি চালু করেছেন।",
		freecam_off_logs_details = "${consoleName} তাদের মুক্ত ক্যামটি বন্ধ করেছেন।",

		track_player_logs_title = "অনুসরণ",
		track_player_logs_details = "${consoleName} অর্বিটক্যাম ব্যবহার করে ${targetName} কে তাদের অনুসরণ লক্ষ্য করছেন।",

		freecam_no_permission = "প্রয়োজনীয় অনুমতিগুলি ছাড়াই তাদের মুক্ত ক্যাম চালু করার চেষ্টা করা হয়েছে।",
		track_player_no_permission = "প্রয়োজনীয় অনুমতিগুলি ছাড়াই ফ্রিক্যাম ব্যবহার করে একজন খেলোয়াড়ের অনুসরণ করার চেষ্টা করা হয়েছে।",

		freecam_inactive = "আপনি বর্তমানে ফ্রীক্যামে না।",
		added_point = "সূচীতে ক্যামেরা পয়েন্ট যুক্ত করা হয়েছে ইন্ডেক্স ${index}-এ (সংক্রমণ: ${transition}মিলিসেকেন্ড)।",
		disable_freecam = "পয়েন্ট প্লে করতে ফ্রি ক্যাম বন্ধ করুন।",
		not_enough_points = "আপনাকে কমপক্ষে ২ টি পয়েন্ট থাকতে হবে প্লে করার জন্য।",
		already_replaying = "আপনি ইতিমধ্যে ক্যামেরা পয়েন্ট প্লে করছেন। ",
		cleared_points = "সমস্ত ক্যামেরা পয়েন্ট মুছে ফেলা হয়েছে।",
		replaced_point = "ইনডেক্স ${index}-এ ক্যামেরা পয়েন্ট পরিবর্তন হয়েছে (সংক্রমণ: ${transition}মিলিসেকেন্ড)।",
		moved_to_point = " ক্যামেরা পয়েন্ট ${index}-এ ফ্রীক্যাম স্থানান্তরিত হয়েছে (সংক্রমণ: ${transition}মিলিসেকেন্ড)।",
		invalid_point_index = "অবৈধ ক্যামেরা পয়েন্ট ইনডেক্স।"
	},

	frisk = {
		frisk_no_player = "কোন প্লেয়ার নির্দিষ্ট করা হয় নি যার বিরুদ্ধে ফ্রিস্কিং করা যাবে।",
		already_frisking = "আপনি ইতিমধ্যে একটি প্লেয়ারের বিরুদ্ধে ফ্রিস্কিং করছেন।",
		frisk_failed = "প্লেয়ারকে ফ্রিস্কিং করতে ব্যর্থ হয়েছে।",
		frisking = "প্লেয়ারকে ফ্রিস্কিং করা হচ্ছে",

		frisk_category_0 = "কোন অস্ত্র নেই দেখা দিয়েছে।",
		frisk_category_1 = "সম্ভবতঃ অস্ত্র আছে দেখা দিয়েছে।",
		frisk_category_2 = "অস্ত্র আছে দেখা দিয়েছে।",
		frisk_category_3 = "বড় একটি অস্ত্র নির্দিষ্টভাবে আছে দেখা দিয়েছে।",
		frisk_category_4 = "বড় একটি অস্ত্র নির্দিষ্টভাবে আছে।"
	},

	fruits = {
		pick_fruit = "[${InteractionKey}] একটি ${fruit} তুলুন",
		picking_fruit = "${fruit} তোলা হচ্ছে",

		shake_tree = "ট্রি ঝকঝক করতে ~INPUT_CONTEXT~ চাপুন।",
		shaking_tree = "ট্রি ঝকঝক হচ্ছে",

		tree_klonk = "কিছু ট্রি থেকে আপনার মাথায় পড়েছে।"
	},

	gas_masks = {
		gas_grenade = "গ্যাস হানির গ্রেনেড",
		in_gas_circle = "গ্যাস বদ্ধকৃত কক্ষে!",
		not_in_gas_circle = "গ্যাস বদ্ধকৃত কক্ষে নেই।",
		gas_time_left = "গ্যাস মাস্কের জন্য ${gasTime} সেকেন্ড বাকি আছে।",
		hold_to_take_gas_mask_off = "গ্যাস মাস্ক খুলতে ধরে রাখুন ~INPUT_VEH_HEADLIGHT~ চাপুন।",
		hold_to_take_gas_mask_off_holding = "গ্যাস মাস্ক খুলতে ধরে রাখুন ~INPUT_VEH_HEADLIGHT~ চাপুন। ধরে রাখতে থাকুন।"
	},

	gps = {
		altitude = "উচ্চতা",
		latitude = "অক্ষাংশ",
		longitude = "দ্রাঘিমা",
		speed = "গতি",

		distance = "দূরত্ব",
		heading = "মুখমন্ডল",

		reset_target = "জিপিএস টার্গেট রিসেট করুন।",
		set_gps_target = "${x}, ${y} এ জিপিএস টার্গেট সেট করুন।",
		gps_blip = "জিপিএস টার্গেট",
		no_gps_item = "আপনার কোনও জিপিএস নেই।",

		collar_no_target = "এই কলারে ফোন সংযুক্ত নেই।",
		collar_timeout = "আপনি মুহুর্ত আগে পিং পাঠান, আরেকটি পাঠানোর আগে অপেক্ষা করুন।",
		collar_sent = "${firstName} ${lastName} (${phoneNumber}) কে সফলভাবে পিং পাঠানো হয়েছে।",

		mph = "মাইল/ঘন্টা",
		kph = "কিলোমিটার/ঘন্টা",
		ft = "ফুট",
		m = "মিটার",
		km = "কিলোমিটার",
		mi = "মাইল",
		deg = "ডিগ্রি"
	},

	gravity = {
		gravity_success_on = "${consoleName} এর জন্য গ্র্যাভিটি বন্ধ করা হলো।",
		gravity_success_off = "${consoleName} এর জন্য গ্র্যাভিটি আবার চালু করা হলো।",
		gravity_client_failed = "${consoleName} এর জন্য গ্র্যাভিটি টগল করতে ব্যর্থ হয়েছে।",
		gravity_failed = "গ্র্যাভিটি টগল করার চেষ্টা করতে পারছেন না।",
		invalid_server_id = "ভুল সার্ভার আইডি।",
		yourself = "আপনি নিজে"
	},

	gravity_gun = {
		name_override = "গ্র্যাভিটি-গান",

		failed_item_spawn = "গ্র্যাভিটি গান বসানো যায়নি।"
	},

	grills = {
		campfire = "ক্যাম্পফায়ার",
		use_campfire = "[${InteractionKey}] ক্যাম্পফায়ার ব্যবহার করুন",
		grill = "গ্রিল",
		use_grill = "[${InteractionKey}] গ্রিল ব্যবহার করুন"
	},

	gumballs = {
		use_gumball_machine = "[${InteractionKey}] কয়ন ঢুকান",
		using_gumball_machine = "কয়ন ঢুকাচ্ছেন",
		not_enough_money = "আপনার কাছে কয়টোক্ষণ পর্যন্ত ধন নেই যাতে একটি গামলা কেনা যায়।",
		something_went_wrong = "একটি গামলা কেনার চেষ্টা করার সময় কিছু সমস্যা হয়েছে।",

		flavor = "গামলা (${flavor})"
	},

	gun_running = {
		insert_key = "কী ঢুকান: ${key}",
		wrong_key = "আপনি ভুল কী ব্যবহার করেছেন।",
		decrypting = "ডিক্রিপ্টিং করা হচ্ছে",
		guns_disabled = "গান রানিং বর্তমানে নিষ্ক্রিয়।",
		high_level_cooldown = "এফআইবি সার্ভার সঙ্গে সংযোগ স্থাপনে ব্যর্থ, পরে আবার চেষ্টা করুন।",
		failed_start_run = "গান রান চালু করতে ব্যর্থ হয়েছে।",
		hack_timeout = "সার্ভার সংযোগ হারিয়েছে, আবার চেষ্টা করুন।",

		drop_blip = "গান ধারণকারী",

		drill_container = "কন্টেইনার খোলার জন্য ~INPUT_CONTEXT~ চাপুন।",

		drilling_container = "ড্রিলিং কন্টেইনার",
		failed_drill = "কন্টেইনার খোলার জন্য ড্রিল করতে ব্যর্থ হয়েছে।",
		drill_success = "কন্টেইনার সফলভাবে ড্রিল খোলা হয়েছে এবং 1x ${item} পাওয়া হয়েছে।",

		started_run_logs_title = "গান রান",
		started_run_logs_details = "${consoleName} গান রান হ্যাক চালু করেছেন।",
		finished_run_logs_title = "গান রান ড্রপ",
		finished_run_logs_details = "${consoleName} গানের কনটেনারটি ড্রিল করে 1x ${item} পেয়েছেন।"
	},

	gun_trader = {
		press_e_to_talk = "জিম সঙ্গে কথা বলতে  ~INPUT_CONTEXT~ চাপুন।",
		trader_closed = "জিমের দোকান বর্তমানে বন্ধ রয়েছে।",

		trader_locked = "জিম তাঁর দোকান খোলার আগে কিছু জিনিস প্রয়োজন।",
		unlock_trader = "জিমকে আইটেম সরবরাহ করুন।",

		purchase = "ক্রয়",
		out_of_stock = "স্টক শেষ",

		failed_trader_closed = "সহজে হত্যার যন্ত্রপাতি কিনতে না পেরেছেন, জিমস শপ বন্ধ।",
		failed_no_stock = "সহজে হত্যার যন্ত্রপাতি কিনতে না পেরেছেন, স্টক শেষ হয়েছে।",
		failed_no_money = "সহজে হত্যার যন্ত্রপাতি কিনতে না পেরেছেন, আপনার যথাপুর্ব টাকা নেই।",
		failed_something_went_wrong = "সহজে হত্যার যন্ত্রপাতি কিনতে না পেরেছেন, কিছু ভুল হয়েছে।",
		failed_trader_not_locked = "জিমস শপ খোলা হয়েছে, তাই অনলক করতে ব্যর্থ হলেন।",
		failed_no_item = "অনলক করতে ব্যর্থ হলেন, জিমসের ঐ জিনিসটি দরকার নেই।",
		failed_no_enough_items = "অনলক করতে ব্যর্থ হলেন, আপনার উপলব্ধ জিনিসের পরিমাণ যথাযথ নয়।",

		bought_gun_logs_title = "জিমের বন্দুক দোকান",
		bought_gun_logs_details = "${consoleName} একটি ${itemName} কে $${price} দিয়ে জিম থেকে কিনেছেন।",

		trader_active = "ট্রেডার (খোলা)",
		trader_inactive = "ট্রেডার (বন্ধ)",

		slogan_1 = "গান লড়াইয়ের প্রথম নিয়ম হল...একটি বন্দুক থাকতে হবে!",
		slogan_2 = "বন্দুক দুইটি শত্রু হয়: জামার বাইরে পড়া এবং রাজনীতিবিদগণ",
		slogan_3 = "নিশ্চয়তা না হলে...বের করে ফেলুন!",
		slogan_4 = "হাতে বন্দুক থাকলে একজন পুলিশ অফিসারের দরকার নাই।",

		copyright = "কপিরাইট © ২০০৯-২০১৬ জিমের বন্দুক দোকান এনসি। সমস্ত অধিকার সংরক্ষিত।"
	},

	hacking = {
		local_disk = "প্রথমাংশ ডিস্ক (সি:)",
		network = "নেটওয়ার্ক",
		external_device = "বাইরের ডিভাইস (জে:)",
		hack_connect = "হ্যাক কানেক্ট.এক্সএমএল",
		brute_force = "ব্রুটফোর্স.এক্সএমএল",

		my_computer = "আমার কম্পিউটার",
		power_off = "পাওয়ার বন্ধ",

		password_cracked = "পাসওয়ার্ড ক্র্যাক হয়েছে!",
		brute_force_failed = "ব্রুটফোর্স ব্যর্থ!",

		writing_data = "ডেটা বাফারে লেখা হচ্ছে...",
		executing_code = "দুর্জন কোড চালানো হচ্ছে...",
		memory_leak_detected = "মেমোরি লিক শনাক্ত করা হয়েছে, বন্ধ করা হচ্ছে..."
	},

	halloween = {
		is_in_school = "বিদ্যালয়ে আছেন: ${isInSchool}",
		yes = "হ্যাঁ",
		no = "না",
		press_to_hide_in_locker = "লকারে আড়ালে হোন এবং লুকিয়ে দিন - ~INPUT_CONTEXT~ চাপুন।",
		locker_is_occupied = "লকার অধিকতর হয়ে উঠেছে।",
		press_to_exit_locker = "লকার থেকে বের হতে - ~INPUT_CONTEXT~ চাপুন।",
		failed_to_start_escape_room = "এস্কেপ রুম শুরু করতে ব্যর্থ হয়েছে।",
		started_escape_room = "${playerAmount} টি খেলোয়ার সাথে এস্কেপ রুম শুরু হয়েছে।",
		start_escape_room_missing_permissions = "খেলোয়াড় একটি এস্কেপ রুম শুরু করতে চেষ্টা করেছেন, কিন্তু তাদের এটি করার জন্য প্রয়োজনীয় অনুমতি নেই।",
		escape_instructions = "একবার সম্পর্কিত টাস্ক শেষ হলে দরজাগুলি আনলক হবে এবং আপনি বিল্ডিং ছেড়ে যেতে পারবেন।",
		answer_the_phone = "ফোন উত্তর দিন।",

		-- NOTE: temp
		none = "কোনটিই নেই"
	},

	health = {
		successfully_revived_player = "${consoleName}-কে সফলভাবে পুনরুদ্ধার করা হয়েছে।",
		successfully_revived_player_removed_injuries = "${consoleName}-কে সফলভাবে পুনঃস্থাপিত এবং তাদের আঘাতগুলি সরিয়ে দেওয়া হয়েছে।",
		successfully_revived_everyone = "সফলভাবে সকলকে পুনঃসচেতন করা হয়েছে।",
		successfully_revived_everyone_removed_injuries = "সফলভাবে সমস্ত মানুষ পুনঃস্থাপিত এবং তাদের আঘাতগুলি সরিয়ে দেওয়া হয়েছে।",
		failed_to_revive = "`/revive` কমান্ডটি সঠিকভাবে পালন করা হয়নি।",
		revive_player_not_staff = "খেলোয়াড় অন্য একজন খেলোয়াড় পুনরুদ্ধার চেষ্টা করল তবে তার কাছে এটি করার জন্য প্রয়োজনীয় অনুমতি ছিল না।",
		revive_self_not_staff = "প্লেয়ার একজন অন্য নিজের জীবিত করার চেষ্টা করেছিলেন কিন্তু তারা ঐ অনুমতিটি নেই।",
		revived_self_removed_injuries_title = "নিজেকে পুনরুদ্ধার এবং ক্ষতিগুলি দূর করা হয়েছে",
		revived_self_removed_injuries_details = "${consoleName} নিজেকে পুনরুদ্ধার করে এবং তাদের ক্ষতি দূর করেছেন।",
		revived_self_title = "নিজেকে পুনরুদ্ধার করা হয়েছে",
		revived_self_details = "${consoleName} নিজেকে পুনরুদ্ধার করেছেন।",
		revived_everyone_removed_injuries_title = "সকলকে পুনরুদ্ধার এবং ক্ষতিগুলি দূর করা হয়েছে",
		revived_everyone_removed_injuries_details = "${consoleName} সকলকে পুনরুদ্ধার করে এবং তাদের ক্ষতি দূর করেছেন।",
		revived_everyone_title = "সকলকে পুনরুদ্ধার করা হয়েছে",
		revived_everyone_details = "${consoleName} সকলকে পুনরুদ্ধার করেছে।",
		revived_player_removed_injuries_title = "খেলোয়াড়কে পুনরুদ্ধার করে ক্ষতি দূর করে দেওয়া হয়েছে",
		revived_player_removed_injuries_details = "${consoleName} ${targetConsoleName} কে পুনরুদ্ধার করে এবং তাদের ক্ষতি দূর করে দেওয়া হয়েছে।",
		revived_player_title = "খেলোয়াড়কে পুনরুদ্ধার করা হয়েছে",
		revived_player_details = "${consoleName} ${targetConsoleName} কে পুনরুদ্ধার করেছেন।",
		get_recent_deaths_not_staff = "প্লেয়ার সম্প্রদায় স্থানান্তর করে মৃত্যুগুলো জানতে চেষ্টা করেছিল,কিন্তু সঠিক অনুমতি নেই।",
		get_player_last_death_not_staff = "প্লেয়ার একজনের সর্বশেষ মৃত্যু জানতে চেষ্টা করছিলেন, কিন্তু সে এটা করার জন্য সঠিক অনুমতি নেই।",
		recent_deaths = "সাম্প্রতিক মৃত্যুযোগ",
		no_recent_deaths = "কোন সাম্প্রতিক মৃত্যু নেই।",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} এর মৃত্যু হয়েছে ${timer} সেকেন্ড আগে।",
		target_user_not_found = "লক্ষ্য করা ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		no_server_id_sent = "কোনও সার্ভার আইডি প্রেরিত করা হয়নি।",
		no_permissions = "কোন অনুমতি নেই।",
		user_not_found = "ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		player_death = "প্লেয়ারের মৃত্যু",
		player_death_recent = "${consoleName} সর্বশেষ মৃত্যু হয়েছে ${timer} সেকেন্ড পূর্বে।",
		no_recent_death = "${consoleName} সম্প্রতি মৃত্যু হয়নি।",
		death_alcohol_poisoning = "আপনি এলকোহল পয়সন জনিত শব্দশূন্য হয়েছেন।",
		character_has_hardcore_died = "${fullName} মারা গেছে। আপনি আরেকটি চরিত্র নির্বাচন করতে পারেন।",

		death_timer_override_already_set_to = "মৃত্যু টাইমার ওভাররাইড ইতিমধ্যে `${time}` এ সেট করা হয়েছে।",
		set_death_timer_override = "মৃত্যু টাইমার ওভাররাইড সেট করা হয়েছে `${time}`।",
		time_parameter_is_invalid = "সময় পরামিতি অবৈধ।",
		death_timer_override_removed = "মৃত্যু টাইমার ওভাররাইড সরানো হয়েছে।",
		no_death_timer_override_set = "কোনও মৃত্যু টাইমার ওভাররাইড সেট করা হয়নি।",

		invalid_distance = "অকার্যকর মরণাসন পুনরুদ্ধার পরিসীমা (1 থেকে 50 এর মধ্যে হতে হবে)।",
		no_players_in_range = "${distance}m ব্যাসার্ধের মধ্যে কোনও নিমিত্তহীন খেলোয়াড় নেই।",
		successfully_revived_range = "${distance}m ব্যাসার্ধে ${amount} জন খেলোয়াড়কে সফলভাবে পুনরুদ্ধার করা হয়েছে।",
		failed_revive_range = "খেলোয়াড়কে পুনরুদ্ধার করতে ব্যর্থ হয়েছে।",
		range_revive_not_staff = "খেলোয়াড়কে নির্দিষ্ট পরিসীমার মধ্যে পুনরুদ্ধার করার চেষ্টা করেছে, কিন্তু সে এর জন্য সঠিক অনুমতিগুলি নেই।"
	},

	hitmarkers = {
		hitmarkers_enabled = "হিটমার্কার সক্ষম।",
		hitmarkers_disabled = "হিটমার্কার অক্ষম।"
	},

	hud = {
		mph = "মাইল/ঘন্টা",
		kmh = "কিলোমিটার/ঘন্টা",
		knots = "নৌবহর",
		ft = "ফুট",
		m = "মিটার",
		belt = "বেল্ট",
		limiter = "লিমিটার",
		fuel = "জ্বালানি",
		nitro = "নাইট্রো",
		battery = "ব্যাটারী",
		fps = "ফ্রেম/সেকেন্ড",
		ping = "পিং",
		autopilot = "অটোপাইলট",
		ground_asl = "AGL/ASL (${একক})",
		heading = "হেডিং",
		gear = "গিয়ার",
		rpm = "এক মিনিটের সংখ্যাকে নির্দেশ করতে ব্যবহৃত হয়।",
		degrees = "ডিগ্রি সেলসিয়াস",
		degrees_f = "ডিগ্রি ফারেনহাইট",
		steps_walked_deaths = "${stepsWalked} পদক্ষেপ ~t~/~w~ ${deaths} নেতার আসন।",
		altitude_temperature = "${altitude} ${একক} ~t~/~w~ ${temperature}${degrees}",
		scuba_timer = "বাকি অক্সিজেন: ${timer}",

		muted = "নিঃশব্দভাবে করা হয়েছে",

		fps_unit = "ফ্রেম প্রতি সেকেন্ড",
		ping_unit = "মিলিসেকেন্ড",

		smart_warnings = "সতর্কবার্তা: ${warnings}!",
		dehydrated = "দ্রাবণহীন",
		starving = "ভুখে পীড়িত",
		injured = "আঘাতগ্রস্ত",
		seriously_injured = "গুরুতর আঘাতগ্রস্ত",
		incapacitated = "অক্ষম হচ্ছে",
		stressed = "তন্দ্রাস্পদ",

		and_seperator = "এবং",

		toggle_phone_gps_off = "ফোন gps অফ হয়েছে।",
		toggle_phone_gps_on = "ফোন gps অন হয়েছে।",

		advanced_hud_on = "উন্নয় হাড় অন হয়েছে।",
		advanced_hud_off = "উন্নয় হাড় অফ হয়েছে।",

		hud_gauges_on = "হাড গেজ চালু করা হলো।",
		hud_gauges_off = "হাড গেজ বন্ধ করা হলো।"
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] ত্বক সংগ্রহ করতে ধরুন",
		skinning_animal = "প্রাণী খুন হওয়ার পর ত্বক সংগ্রহ করা হচ্ছে",
		meat_too_damaged = "এই প্রাণীর মাংস অত্যন্ত ক্ষতিগ্রস্ত।",
		animal_is_being_skinned = "প্রাণীটি স্কিন করা হচ্ছে।"
	},

	identification = {
		los_santos = "লস সান্টোস",
		citizen_card = "সিটিজেন কার্ড",
		first_name = "নামের প্রথম অংশ",
		last_name = "নামের শেষাংশ",
		gender = "লিঙ্গ",
		gender_male = "পুরুষ",
		gender_female = "মহিলা",
		date_of_birth = "জন্ম তারিখ",
		citizen_id = "সিটিজেন আইডি",

		citizenship = "জাতীয়তা",
		citizenship_value = "মার্কিন যুক্তরাষ্ট্র",
		surname = "উপনাম",
		issued_on = "ইস্যুকৃত তারিখ",
		expires_on = "মেয়াদ উত্তীর্ণ হয়েছে",

		month_1 = "জানু",
		month_2 = "ফেব্রু",
		month_3 = "মার্চ",
		month_4 = "এপ্রিল",
		month_5 = "মে",
		month_6 = "জুন",
		month_7 = "জুল",
		month_8 = "আগস্ট",
		month_9 = "সেপ্টে",
		month_10 = "অক্টো",
		month_11 = "নভে",
		month_12 = "ডিসেম্বর",

		citizen_card_details = "${firstName} ${lastName} | জন্ম তারিখ: ${dateOfBirth} | লিঙ্গ: ${gender} | সিটিজেন আইডি: ${characterId}",
		just_showed_citizen_card = "আপনি সিটিজেন কার্ড দেখায় দিয়েছেন। দয়া করে অপেক্ষা করুন।",

		hunting_license = "শিকার লাইসেন্স",
		hunting_license_details = "শিকার লাইসেন্স | ${firstName} ${lastName} | সিটিজেন আইডি: ${characterId}",
		fishing_license = "মাছ ধরার লাইসেন্স",
		fishing_license_details = "মাছ ধরার লাইসেন্স | ${firstName} ${lastName} | সিটিজেন আইডি: ${characterId}",
		pilot_license = "পাইলট লাইসেন্স",
		pilot_license_details = "পাইলট লাইসেন্স | ${firstName} ${lastName} | সিটিজেন আইডি: ${characterId}",
		weapon_license = "অস্ত্র লাইসেন্স",
		weapon_license_details = "অস্ত্র লাইসেন্স | ${firstName} ${lastName} | সিটিজেন আইডি: ${characterId}",
		just_showed_license = "আপনি একটি লাইসেন্স দেখিয়েছেন। একটু অপেক্ষা করুন।",

		just_showed_badge = "আপনি একটি বেজ দেখিয়েছেন। একটু অপেক্ষা করুন।",
		sasp_badge = "এসএএসপি বেজ",
		sasp_badge_details = "এসএএসপি | ${firstName} ${lastName} | পদবী: ${positionName}",
		bcso_badge = "বিসিএসও বেজ",
		bcso_badge_details = "বিসিএসও | ${firstName} ${lastName} | পদবী: ${positionName}",
		sahp_badge = "এসএএচপি বেজ",
		sahp_badge_details = "এসএএচপি | ${firstName} ${lastName} | পদবী: ${positionName}",
		iaa_badge = "আইএএ বেজ",
		iaa_badge_details = "আইএএ | ${firstName} ${lastName} | পদবী: ${positionName}",
		fib_badge = "এফআইবি ব্যাজ",
		fib_badge_details = "এফআইবি | ${firstName} ${lastName} | পদবী: ${positionName}",
		swat_badge = "এসডব্লিউএটি ব্যাজ",
		swat_badge_details = "এসডব্লিউএটি | ${firstName} ${lastName} | পদবী: ${positionName}",
		management_badge = "পরিচালনা ব্যাজ",
		management_badge_details = "পরিচালনা | ${firstName} ${lastName} | পদবী: ${positionName}",
		ems_badge = "ইএমএস আইডি",
		ems_badge_details = "ইএমএস | ${firstName} ${lastName} | পদবী: ${positionName}",
		doctor_badge = "ডাক্তার আইডি",
		doctor_badge_details = "ডাক্তার | ${firstName} ${lastName} | পদবী: ${positionName}",
		bcfd_badge = "বি.সি.এফ.ডি ব্যাজ",
		bcfd_badge_details = "বি.সি.এফ.ডি | ${firstName} ${lastName} | পদবী: ${positionName}",
		state_security_badge = "রাজ্য নিরাপত্তা আইডি",
		state_security_badge_details = "রাজ্য নিরাপত্তা বিভাগ | ${firstName} ${lastName}",
		doj_badge = "ডিওজে আইডি",
		doj_badge_details = "ডিওজে | ${firstName} ${lastName} | পদবী: ${positionName}",
		doc_badge = "ডক ব্যাজ",
		doc_badge_details = "ডক | ${firstName} ${lastName} | পদবী: ${positionName}",

		badge_type_sasp = "স্যান অ্যানড্রেস রাজ্য পুলিশ",
		badge_type_bcso = "ব্লেইন কাউন্টি শেরিফ অফিস",
		badge_type_sahp = "স্যান অ্যানড্রেস হাইওয়ে প্যাট্রোল",
		badge_type_iaa = "ইনটারনাল অফেয়ার্স এজেন্সি",
		badge_type_fib = "ফেডারেল ইনভেস্টিগেশন ব্যুরো",
		badge_type_swat = "স্পেশাল ওয়েপনস এন্ড ট্যাকটিক্স",
		badge_type_management = "এসএসপি পরিচালনা",
		badge_type_ems = "জরুরি চিকিৎসা সেবা",
		badge_type_doctor = "মেডিকেল রেসিডেন্সি",
		badge_type_bcfd = "ব্লেইন কাউন্টি ফায়ার ডিপার্টমেন্ট",
		badge_type_state_security = "রাষ্ট্রীয় নিরাপত্তা বিভাগ",
		badge_type_doj = "বিচার বিভাগ",
		badge_type_doc = "কারাগার বিভাগ",

		badge_type_short_sasp = "এসএসপি",
		badge_type_short_bcso = "বিসিএসও",
		badge_type_short_sahp = "এসএএচপি",
		badge_type_short_iaa = "আইএএ",
		badge_type_short_fib = "এফআইবি",
		badge_type_short_swat = "স্বয়ত্নশাসন বাহিনী (এসডাব্লুএটি)",
		badge_type_short_management = "পরিচালনা",
		badge_type_short_ems = "ইমারজেন্সি মেডিকেল সার্ভিস (ইইএস)",
		badge_type_short_doctor = "ডাক্তার",
		badge_type_short_bcfd = "বিসিএফডি",
		badge_type_short_state_security = "রাষ্ট্রীয় সুরক্ষা ডিপার্টমেন্ট (এসএসডি)",
		badge_type_short_doc = "ডক"
	},

	import_export = {
		press_to_access = "ইম্পোর্ট/এক্সপোর্ট মেনু এক্সেস করতে ~INPUT_CONTEXT~ চাপুন।",

		pound = "পাউন্ড",
		pounds = "পাউন্ড",
		minutes = "মিনিট",

		total = "মোট",
		header = "কায়ো পেরিকো - আমদানি/রপ্তানি",
		header_small = "কায়ো পেরিকো হতে জলদি এবং সহজে জাহাজে লোড/আন।",

		loading = "লোডিং...",

		order_arrived = "পৌঁছেছে",
		claim = "দাবি করা",

		claim_cayo = "কায়োতে দাবি করুন",
		claim_lsia = "এলএসআইএতে দাবি করুন",

		big_goods = "বড় জিনিসপত্র",
		go_postal = "পোস্টালে যান",
		caipira = "কাইপেইরা এয়ারলাইন্স",

		no_items = "প্রেরণের জন্য কোনও জিনিস নেই।",

		confirm_dialog = "${total} পাউন্ড জিনিস পাঠানোর জন্য $${price}-এর জন্য আপনি কি নিশ্চিত যে চান? এই পাঠানো বাতিল করা সম্ভব নয়।",
		confirm = "হ্যাঁ",

		no_active_order = "আপনার কোনও সক্রিয় প্রেরণ নেই।",
		order_not_completed = "আপনার পাঠানোটি এখনও পৌঁছে না।",

		order_claimed = "আপনি আপনার পাঠানো দাবি করেছেন।",

		not_enough_items = "আপনার যথার্থ পরিমাণ আইটেম শিপ করার জন্য নেই।",
		not_enough_money = "আপনার শিপমেন্ট তৈরি করার জন্য যথার্থ টাকা নেই।",
		already_has_order = "আপনার একটি সক্রিয় শিপমেন্ট ইতিমধ্যে রয়েছে।",
		something_went_wrong = "কিছু সমস্যা হয়েছে।",

		order_success = "আপনার শিপমেন্ট ${minutes} মিনিটের মধ্যে পৌঁছানো হবে! ।",

		created_shipment_title = "শিপমেন্ট তৈরি করা হয়েছে",
		created_shipment_details = "${consoleName} এর ${weight} পাউন্ড জন্য ${company} এ একটি ${price} ডলারের শিপমেন্ট তৈরি করা হয়েছে।",

		claimed_shipment_title = "শিপমেন্ট দাবী করা হয়েছে",
		claimed_shipment_details = "${consoleName} এর ${company} সঙ্গে ${weight}পাউন্ড ওজনের একটি নিষ্ক্রিয় প্রেরণ দাবি করা হয়েছে।",

		blip_label = "আমদানি / রপ্তানি"
	},

	injuries = {
		inspect_no_player = "আপনার কাছে পরীক্ষা করতে পাওয়া যায় না।",
		already_inspecting = "আপনি ইতিমধ্যে একটি গেমার পরীক্ষণ করছেন।",
		inspect_failed = "গেমার পরীক্ষণ ব্যর্থ হয়েছে।",
		inspecting = "গেমার পরীক্ষা হচ্ছে",
		no_injuries = "কোন আঘাত বা রক্তস্রাব নেই",
		patient_bleeding = "রোগীর রক্তস্রাব হচ্ছে।",
		injury = "${label} আঘাত"
	},

	instances = {
		instance_created_added = "আইডি সহ একটি ইনস্ট্যান্স তৈরি করুন `${instanceId}` (যোগ করা হয়েছে গেমারের পরিবর্তে: ${serverIds})।",
		instance_created = "${instanceId} আইডি সহ ইনস্ট্যান্স তৈরি করা হয়েছে।",
		instance_creation_failed = "ইনস্ট্যান্স তৈরি করতে ব্যর্থ হয়েছে।",
		instance_destroyed = "${instanceId} আইডি সহ ইনস্ট্যান্স ধ্বংস করা হয়েছে।",
		instance_destruction_failed = "ইনস্ট্যান্স ধ্বংস করতে ব্যর্থ হয়েছে।",
		instance_id_parameter_invalid = "ইনস্ট্যান্স আইডি পরামিতি অবৈধ।",
		added_player_to_instance = "${consoleName}-কে ইনস্ট্যান্সে যোগ করা হয়েছে ${instanceId} আইডি সহ।",
		failed_to_add_player_to_instance = "ইনস্ট্যান্সে খেলোয়াড়কে যোগ করতে ব্যর্থ হয়েছে।",
		server_id_parameter_invalid = "সার্ভার আইডি পরামিতি অবৈধ।",
		removed_player_from_instance = "${consoleName}-কে আইডি `${instanceId}` সংক্রান্তে থেকে অপসারণ করা হয়েছে।",
		failed_to_remove_player_from_instance = "প্লেয়ারকে ইন্সট্যান্স থেকে অপসারণ করতে ব্যর্থ হয়েছে।",
		instance_players = "আইডি `${instanceId}` সংক্রান্তে ইনস্ট্যান্সে উপস্থিত প্লেয়ারগণ: `${players}`।",
		failed_to_get_instance_players = "প্লেয়ারগণ থেকে ইনস্ট্যান্সে ডাটা লোড করতে ব্যর্থ হয়েছে।",
		no_players = "কোন প্লেয়ার নেই।",

		instance_hud = "আইডি: ${instanceId}",

		create_instance_not_developer = "প্রস্তুতিশীল নয় তবে প্লেয়ার চেষ্টা করছেন নতুন ইনস্ট্যান্স তৈরি করতে।",
		destroy_instance_not_developer = "খেলোয়াড়টি একটি ইনস্ট্যান্স ধ্বংস করার চেষ্টা করেছিলেন কিন্তু তারা উন্নয়কারী না ছিলেন।",
		add_player_to_instance_not_developer = "খেলোয়াড়টি একটি ইনস্ট্যান্সে একটি খেলোয়ারকে যুক্ত করার চেষ্টা করেছিলেন কিন্তু তারা উন্নয়কারী না ছিলেন।",
		remove_player_from_instance_not_developer = "খেলোয়াড়টি নিজের সেই ইনস্ট্যান্স থেকে খেলোয়ারকে অপসারণ করার চেষ্টা করেছিলেন কিন্তু তারা উন্নয়কারী না ছিলেন।",
		get_players_from_instance_not_developer = "খেলোয়াড়টি একটি ইনস্ট্যান্স থেকে খেলোয়ারদের তথ্য চাইলেও তারা উন্নয়কারী না ছিলেন।"
	},

	interiors = {
		in_interior = "${interiorId} উপতলে: (${portals} পোর্টালের সাহায্যে)",
		in_room_id = "রুমটির ভিতরে: ${roomId} (${roomName})",
		total_interiors = "মোট ইন্টেরিয়রসমূহ: ${totalInteriors} (${totalInteriorPortals} সর্বমোট পোর্টাল)",
		total_unloaded_interiors = "লোড না হওয়া মোট ইন্টেরিয়রসমূহ: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} সর্বমোট পোর্টাল)",
		portal_text = "আইডি=${portalId} ফ্লাগ=${flags}"
	},

	inventory = {
		access_trunk = "বক্সে গিয়ে প্রবেশ করতে এখানে আসুন",

		used = "ব্যবহৃত",
		added = "যুক্ত করা হয়েছে",

		pounds = "পাউন্ড",

		store = "সংরক্ষণ করুন",
		gas_station = "গ্যাস স্টেশন",
		gas_station_backdoor = "গ্যাস স্টেশন ব্যাকডোর",
		cleaning_station = "পরিষ্কার স্টেশন",
		grocery_store = "গ্রোসারি স্টোর",
		penthouse_fridge = "ফ্রিজ",
		mug_shots = "মাগ শট",
		prison_store = "জেল স্টোর",
		fruit_vendor = "ফল বিক্রেতা",
		supermarket = "সুপারমার্কেট",
		island_store = "আইল্যান্ড স্টোর",
		travel_agency = "ট্রাভেল এজেন্সি",
		island_bar = "দ্বীপ বার",
		burger_bar = "বার্গার বার",
		tool_store = "সরঞ্জাম স্টোর",
		gun_store = "গান স্টোর",
		discount_store = "ডিসকাউন্ট স্টোর",
		gun_store_with_shooting_range = "শুটিং রেঞ্জ সহ গান স্টোর",
		green_wonderland = "গ্রিন উদ্যান",
		irish_pub = "আইরিশ পাব",
		bar = "বার",
		midnight = "মিডনাইট টিউনারশপ",
		cinema = "সিনেমা",
		strip_club = "স্ট্রিপ ক্লাব",
		police_store = "পুলিশ স্টোর",
		fib_store = "এফআইবি স্টোর",
		police_badge_store = "পুলিশ বেজ ডেস্ক",
		doc_badge_store = "ডক ব্যাজ ডেস্ক",
		flower_store = "স্টেসির ফুল এম্পোরিয়াম",
		gift_store = "ডেল পেরো গিফটস",
		ems_store = "ইএমএস স্টোর",
		drug_store = "ড্রাগ ক্যাবিনেট",
		ems_badge_store = "ইএমএস বেজ ডেস্ক",
		doj_badge_store = "এমএস বেজ ডেস্ক",
		state_security_store = "স্টেট সিকিউরিটি স্টোর",
		pharmacy = "ফার্মেসি",
		chop_shop = "কাট দোকান",
		courthouse = "আদালত",
		burger_shot = "বার্গার শট",
		burger_shot_fridge = "বার্গার শট ফ্রিজ",
		erp_shop = "ERP দোকান",
		pet_shop = "প্যাট শপ",
		bean_machine = "বিন মেশিন",
		hunting_store = "হান্টিং দোকান",
		fishing_store = "ফিশিং দোকান",
		los_santos_golf_club = "লস সান্টোস গল্ফ ক্লাব",
		arcade_bar = "আরকেড বার",
		japanese_restaurant = "জাপানি রেস্তোরাঁ",
		["945_studios"] = "945 Studios",
		grain_mill = "অনাজ মিল",
		pd_prefix = "পুলিশ",
		ems_prefix = "স্বাস্থ্য সেবা",
		government_prefix = "সরকার",
		wonderland_prefix = "ওয়ন্ডারল্যান্ড",
		br_prefix = "বিআর",
		inventory_overweight = "আপনার ইনভেন্টরি ওভারওয়েট!",
		vehicle_locked = "গাড়ি লক করা হয়েছে।",
		press_to_access_store = "স্টোরে প্রবেশ করতে ~INPUT_REPLAY_SHOWHOTKEY~ চাপুন।",
		press_to_access_locker = "আপনার ব্যক্তিগত লকারে প্রবেশ করতে ~INPUT_REPLAY_SHOWHOTKEY~ চাপুন।",
		press_to_access_shared_storage = "শেয়ারড স্টোরেজ এ প্রবেশ করতে ~INPUT_REPLAY_SHOWHOTKEY~ চাপুন।",

		inspect_weapon = "${itemName}-র এই ${itemId} সিরিয়াল নম্বরটি পরীক্ষা করা হয়েছে।",
		inspect_weapon_broken = "${itemName}-র এই ${itemId} সিরিয়াল নম্বরটি পরীক্ষা করা হয়েছে, এটি সম্পূর্ণ ভাঙ্গা হয়েছে।",

		searching_dumpster = "ডাম্পস্টার খুঁজছি",

		nameable_title = "নামাকরণযোগ্য আইটেম নাম:",

		locker_restricted = "এই আইটেমটি আপনার লকারে পরিবর্তনসাধ্য নয়।",

		press_to_access_shredder = "[${InteractionKey}] শ্রেডারে প্রবেশ করুন।",

		invalid_item_id = "অবৈধ আইটেম আইডি।",
		item_not_found = "${itemId} আইডি সহ আইটেম খুঁজে পাওয়া যায়নি।",
		item_lookup = "${inventoryName}:${inventorySlot} এ ${label} (${itemId}) বর্তমানে রয়েছে।",

		big_inventory_disabled = "ক্যারেক্টারের ইনভেন্টরির স্লটগুলি ডিফল্টে রিসেট করুন।",
		big_inventory_enabled = "অস্থায়ীভাবে আপনার ক্যারেক্টারের ইনভেন্টরির স্লটগুলি বাড়িয়ে দেওয়া হয়েছে।",

		press_to_open_public_inventory = "~INPUT_REPLAY_SHOWHOTKEY~ ${label} অ্যাক্সেস করুন",

		burgershot_counter = "বার্গারশট কাউন্টার",

		inventory_name_missing = "ইনভেন্টরি নাম পরিমাণ অনুসারে অস্তিত্ব নেই।",

		shredder_title = "স্ক্র্যাপার",
		shredder_description = "সতর্কতা: এখানে সরবরাহিত কোন জিনিসপত্র লস্ট হয়ে শুধুমাত্র মুছে ফেলা হয়।",

		npc_vehicle_inventory = "এনপিসি ভাইহেকল ইনভেন্টরি",

		store_help = "কিনতে কোনোকিছু হাতে নিয়ে সেকেন্ডারি ইনভেন্টরি থেকে নিজের ইনভেন্টরিতে পাঠান।",
		store_tax = "স্টোর ট্যাক্স",
		store_tax_percentage = "${tax}% ট্যাক্স",

		missing_job = "আপনার প্রয়োজনীয় চাকরি নেই যাতে আপনি এই ইনভেন্টরিটি ব্যবহার করতে পারেন।",

		item_is_broken = "এই আইটেম ভাঙ্গা হয়েছে।",
		battle_royale_item = "এই আইটেম শুধুমাত্র ব্যাটল রয়েল ম্যাচে ব্যবহার করা যাবে।",
		battle_royale_item_disallowed = "এই আইটেম ব্যাটল রয়েল ম্যাচে অনুমতি প্রদান করা হয় নি।",

		broken_food = "এই আইটেম নষ্ট হয়ে গেছে।",
		broken_drugs = "এই আইটেম মেয়াদ উত্তীর্ণ হয়ে গেছে।",
		vape_empty = "এই ভেপ খালি।",

		craft_combine = "<i>${output}</i> তৈরি করুন",
		combining = "তৈরি করা হচ্ছে",

		carve_jack_o_lantern = "<i>জ্যাক-ওল্যান্টার্ন</i> কাটা হচ্ছে",
		crush_cocoa_beans = "<i>কোকো বীনগুলি</i> মুরক করুন",
		mix_hot_chocolate = "<i>হট চকলেট</i> মিশিয়ে দিন",
		crush_raw_ruby = "<i>কাঁচামনি</i> মুরক করুন",
		crush_raw_sapphire = "<i>স্যাফায়ার</i> মুরক করুন",

		search = "অনুসন্ধান",
		amount = "পরিমান",
		use = "ব্যবহার করুন",
		close = "বন্ধ",

		done = "সম্পন্ন",
		burnt = "দাগ লাগেছে",
		danger = "বিপজ্জনক",
		fuel = "জ্বালানি: ${fuel}",

		item_does_stack = "এই আইটেমগুলি স্ট্যাক করা হয়।",
		item_does_not_stack = "এই আইটেমগুলি স্ট্যাক করা যাবে না।",
		individual_weight = "একক ওজন",
		stack_amount = "স্ট্যাক পরিমান",

		logs_secondary_inventory_title = "দ্বিতীয় ইনভেন্টরি খোলা হয়েছে",
		logs_secondary_inventory_details = "${consoleName} নামের একটি দ্বিতীয় স্টোরেজ খোলা হয়েছে এবং সেটির নাম `${inventoryName}`।",
		logs_ground_inventory_created_title = "গ্রাউন্ড ইনভেন্টরি তৈরি করা হয়েছে",
		logs_ground_inventory_created_details = "${consoleName} গ্রাউন্ড ইনভেন্টরি তৈরি করেছেন এবং সেই ইনভেন্টরির নাম হল `${inventoryName}`।",

		logs_item_moved_title = "আইটেম সরানো হয়েছে",
		logs_item_moved_details = "${consoleName} ${itemLabel} আইটেমটি ${moveAmount}টি সরিয়ে নিয়েছেন এবং সেটি ${startInventory}:${startSlot} ইনভেন্টরিতে থেকে ${endInventory}:${endSlot} ইনভেন্টরিতে উল্লিখিত স্লটে রাখেছেন।",

		logs_item_purchased_title = "আইটেম কেনা হয়েছে",
		logs_item_purchased_no_tax_details = "${consoleName} একটি ${itemLabel} কে $${purchaseCost} দিয়ে ${purchaseAmount} টি ক্রয় করেছে।",
		logs_item_purchased_tax_details = "${consoleName} ${salesTaxPercentage}% সেলস কর পরিশোধ করার কারণে একটি অতিরিক্ত $${taxCost} দিতে হলে সাথে ${purchaseAmount} টি ${itemLabel} কে $${purchaseCost} দিয়ে ক্রয় করেছে।",

		radius_invalid = "${radius} একটি বৈধ মান নয়।",
		wiped_all_ground_inventories = "${inventoriesWiped} টি গ্রাউন্ড ইনভেন্টরি মুছে ফেলা হয়েছে।",
		wiped_nearby_ground_inventories = "${radius} রেডিউসের মধ্যে আশপাশে ${inventoriesWiped} টি গ্রাউন্ড ইনভেন্টরি মুছে ফেলা হয়েছে।",
		failed_to_wipe_ground_inventories = "মেটার ডানাদানি মুছতে ব্যর্থ হয়েছে।",
		no_ground_inventories = "মুছতে কোনও মাটির মধ্যে সম্ভবতাঃ কোনও জমা নেই।",
		no_ground_inventories_within_radius = "একটি ব্যাসার্ধের মধ্যে মুছতে মাটির মধ্যে কোনও জমা নেই `${radius}`।",

		wipe_inventories_not_staff = "খেলোয়াড় মহাপরিচালক অনুমতি না থাকা সমস্ত জমার মুছার চেষ্টা করেছেন।",

		logs_wiped_all_ground_inventories_title = "সমস্ত মাটি মধ্যে যেসব জমা ছিল তাদের মুছে ফেলা হয়েছে",
		logs_wiped_all_ground_inventories_details = "${consoleName} সমস্ত মাটির জমার মধ্যে যেসব জমা ছিল তাদের মুছে ফেলেছেন।",

		logs_wiped_nearby_ground_inventories_title = "আশে পশে ভূমিতে রাখা বস্তুসমূহ মুছে ফেলা হয়েছে",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} একটি ব্যাসার্ধে `${radius}` ব্যাপ্তিতে সকল ভূমি মুছে ফেলেছেন।",

		logs_combined_title = "সংযোজিত আইটেমসমূহ",
		logs_combined_details = "${consoleName} ${inputs} সংযুক্ত করে 1x ${output} তৈরি করেছেন।",

		press_use_campfire = "[${InteractionKey}] ক্যাম্পফায়ার ব্যবহার করুন",
		use_campfire = "ক্যাম্পফায়ার ব্যবহার করুন",

		dumpster_sandwich = "পুরানো স্যান্ডউইচ",
		dumpster_beer = "পুরানো বিয়ার",
		dumpster_milk = "মেলক পাখির দুধ শেষ হয়েছে",
		dumpster_meat = "ধূসর মাংস (কিছুটা কোকরা)",
		dumpster_fries = "পুরানো ফ্রাইস",
		dumpster_brownies = "শুকনো ব্রাউনিজ",
		dumpster_pizza_slice = "কোকরা পিজ্জা স্লাইস",
		dumpster_banana = "চোটপটে কলা (খুব নরম)",

		-- items & item descriptions
		body_armor = "শরীর আর্মর",
		body_armor_description = "যুদ্ধের জন্য প্লেট নিয়ে নিন বা শুধুমাত্র এল এসের রাস্তায় নামতে।",
		first_aid_kit = "প্রাথমিক চিকিৎসা বক্স",
		first_aid_kit_description = "স্ব-চিকিৎসা করার জন্য একটি বক্স।",
		bandages = "ব্যান্ডেজ",
		bandages_description = "সকল ঘাড় ফুটে গেলে ও ব্রণের জন্য।",
		oxygen_tank = "অক্সিজেন ট্যাঙ্ক",
		oxygen_tank_description = "একটি ফুসফুস প্যাকটি।",
		ifak = "IFAK",
		ifak_description = "\"পুলিশ ডিপার্টমেন্ট শক্তি প্যাক যা প্রয়োগ করা হলে ডাবল উইন হয়। আরও একটি গ্রহণ করলে জনসাধারণকে ঈজি ক্লাপিং এর জন্য সন্তুষ্ট করা হবে যখন তারা হতাশ।\"<br><br>-জো, ২০২০",

		citizen_card = "সিটিজেন কার্ড",
		citizen_card_description = "পরিচয়পত্র, ফায়ারাম লাইসেন্স এবং ড্রাইভিং লাইসেন্স হিসাবে কাজ করে।",
		phone = "ফোন",
		phone_description = "কখনওই না: টিএম:",
		radio = "রেডিও",
		radio_description = "সবচেয়ে বড় মেটাগেমারদের জন্য দরকারী সম্পদ!",
		smart_watch = "স্মার্ট ঘড়ি",
		smart_watch_description = "কাশ করে সবখানে পেমেন্ট করতে না চান? আপনার স্মার্ট ঘড়ি ব্যবহার করুন! এর একটি অংশ হিসাবে কমপাস, ঘড়ি, জিপিএস এবং স্টেপ ট্র্যাকার রয়েছে! শুধু রাত ২ টায় দৌড়ায় না চলে যান।",
		tablet = "ট্যাবলেট",
		tablet_description = "বেশিরভাগ মোবাইলের চেয়ে অনেক ছোট নয়।",

		gps = "জিপিএস",
		gps_description = "সব ধরনের গ্যাজেট চাইতেও আপনার চাহিদামাত্র পুরণ করে।",

		gps_collar = "জিপিএস কলার",
		gps_collar_description = "আপনার পালতু জনwar ট্র্যাক করার জন্য একটি জিপিএস কলার।",

		boosting_tablet = "বুস্টিং ট্যাবলেট",
		boosting_tablet_description = "_সম্পূর্ণ বৈধতার সাথে_ চুক্তি অর্জন করতে ব্যবহৃত হয়।",

		hunting_license = "হান্টিং লাইসেন্স",
		hunting_license_description = "হান্টিং জন্য একটি হান্টিং লাইসেন্স।",
		fishing_license = "মাছ ধরার লাইসেন্স",
		fishing_license_description = "মাছ ধরার জন্য একটি মাছ ধরার লাইসেন্স।",
		pilot_license = "পাইলট লাইসেন্স",
		pilot_license_description = "বিমান ও অন্যান্য যন্ত্রপাতি উড়িয়ে নেওয়ার জন্য একটি পাইলট লাইসেন্স।",
		weapon_license = "শস্ত্র লাইসেন্স",
		weapon_license_description = "বেশি শ্রেণির শস্ত্রপান এবং বাহন করার জন্য একটি শস্ত্র লাইসেন্স।",

		sasp_badge = "এসএসপি ব্যাজ",
		sasp_badge_description = "স্যান এ্যান্ড্রিয়াস পুলিশ ডিপার্টমেন্টের অফিসারদের জন্য একটি ব্যাজ।",
		sahp_badge = "এসএইচপি ব্যাজ",
		sahp_badge_description = "স্যান এ্যান্ড্রিয়াস হাইওয়ে প্যাট্রোল অফিসারদের জন্য একটি ব্যাজ।",
		bcso_badge = "ব্লেইন কাউন্টি শেরিফ অফিস ব্যাজ",
		bcso_badge_description = "ব্লেইন কাউন্টি শেরিফের অফিসারদের জন্য একটি ব্যাজ।",
		iaa_badge = "আন্তর্জাতিক বিষয়বস্তু এজেন্সি ব্যাজ",
		iaa_badge_description = "আন্তর্জাতিক বিষয়বস্তু এজেন্সির এজেন্টদের জন্য একটি ব্যাজ।",
		fib_badge = "ফেডারেল ইনভেসটিগেশন বিউরো ব্যাজ",
		fib_badge_description = "ফেডারেল ইনভেস্টিগেশন বিউরোর এজেন্টদের জন্য একটি ব্যাজ।",
		swat_badge = "এসডাবলিউএটি ব্যাজ",
		swat_badge_description = "বিশেষ হত্তয়া এবং ট্যাকটিক্যাল বিভাগের অফিসারদের জন্য একটি ব্যাজ।",
		management_badge = "ব্যবস্থাপনা ব্যাজ",
		management_badge_description = "এসডাবলিউএসপি ব্যবস্থাপনা বিভাগের এজেন্টদের জন্য একটি ব্যাজ।",
		ems_badge = "ইএমএস আইডি",
		ems_badge_description = "ইএমএস প্যারামেডিকের জন্য একটি আইডি।",
		doctor_badge = "ডাক্তার আইডি",
		doctor_badge_description = "ডাক্তারদের জন্য একটি আইডি।",
		bcfd_badge = "ব্লেইন কাউন্টি ফায়ার ডিপার্টমেন্ট ব্যাজ",
		bcfd_badge_description = "ব্লেইন কাউন্টি ফায়ার ডিপার্টমেন্টের ফায়ার ফাইটারদের জন্য একটি ব্যাজ।",
		state_security_badge = "রাষ্ট্রীয় সুরক্ষা আইডি",
		state_security_badge_description = "রাষ্ট্রীয় সুরক্ষার এজেন্টদের জন্য একটি আইডি।",
		doj_badge = "বিচার বিভাগ ব্যাজ",
		doj_badge_description = "বিচার বিভাগ কর্মীদের জন্য একটি ব্যাজ।",
		doc_badge = "ডক ব্যাজ",
		doc_badge_description = "কারাগার বিভাগের কর্মচারীদের জন্যে একটি ব্যাজ।",

		radio_chop_shop = "চপ শপ রেডিও",
		radio_chop_shop_description = "কাটা দোকানগুলি চালাতে অস্তিত্ব নেই বলে ধারণা করা কিছু মানুষ দ্বারা 'গরম' গাড়ির তথ্য পেতে ব্যবহৃত হয়।",

		binoculars = "বিনোকুলার",
		binoculars_description = "লস সান্তোসে সুরক্ষার চেষ্টা করা ব্যক্তিরা জন্য প্রয়োজনীয় নির্দিষ্ট উপকরণ!",
		photo_camera = "ফটো ক্যামেরা",
		photo_camera_description = "নিকন এবং ইগনা বাজারে সর্বশেষ পেশাদার ক্যামেরা উন্নয়ন করেছে। এর উন্নয়নশীল লেন্স (70-300 মিমি এফ / 4.5-5.6E) দিয়ে আপনি ছোট ছোট বিস্তৃতি উপস্থাপন করতে পারবেন। জমিদার বস্তুগুলি সহজেই ছবি তুলতে পারবেন।",

		remote_camera = "রিমোট ক্যামেরা",
		remote_camera_description = "একটি ক্যামেরা যা যেকোনো জায়গায় রাখা যায় এবং দূরদর্শী থেকে দেখা যায়।",
		remote_monitor = "রিমোট মনিটর",
		remote_monitor_description = "একটি পোর্টেবল মনিটর যা দূরবর্তী ক্যামেরা দেখতে ব্যবহার করা যাবে।",

		handcuffs = "হ্যান্ডকাফ",
		handcuffs_description = "সেই পুর্ণ ইআরপি অভিজ্ঞতার জন্য।",
		bolt_cutter = "বল্ট কাটার",
		bolt_cutter_description = "ইআরপি যেতে চেষ্টা করা ছিল তবু সে খুব মজার না হয়েছিল...",
		drill = "ড্রিল",
		drill_description = "যার কাছে কিছুটা তারকা লক্ষ্য করা যেতে পারে তিনি এখানে খুব কাজে লাগবে...",
		umbrella = "ছাতা",
		umbrella_description = "আপনার অভ্যন্তরীণ পোপিনস চলে এসুন।",
		watch = "ঘড়ি",
		watch_description = "সতর্কতার জন্য কোন সময় নেই।",
		compass = "কমপাস",
		compass_description = "43.3068 N 0.7668 W",
		map = "মানচিত্র",
		map_description = "আপনাকে দেখাবে যে আপনি কোথায় এবং কোথায় যাচ্ছেন। বা শায়তো আপনি ওখানে ছিলেন?",
		glass_breaker = "জরুরী উইন্ডো ব্রেকার",
		glass_breaker_description = "এক্সিডেন্ট ঘটলে গাড়ির উইন্ডো ভেঙ্গে যাওয়ার সময় ব্যবহৃত হয়।",

		picture = "ছবি",
		picture_description = "আপনার বন্ধুদের সাথে সমস্ত স্মৃতি সংগ্রহ করুন।",

		brochure = "সহায়ক ব্রোশার",
		brochure_description = "শহরে শুরু করতে সহায়তা করার জন্য একটি উপযোগী ব্রোশার।",

		basic_repair_kit = "বেসিক মেরামত সেট",
		basic_repair_kit_description = "এটা জিনিসগুলি কাজ করে, কিন্তু অল্পতম পরিমাণে কম।",
		advanced_repair_kit = "উন্নয়নকৃত মেরামত কিট",
		advanced_repair_kit_description = "মুর্খ মানুষদের ঠিক করতে ব্যবহৃত হয়।",
		basic_lockpick = "বেসিক লকপিক",
		basic_lockpick_description = "তালা খোলার জন্য ব্যবহৃত হয়।",
		advanced_lockpick = "অ্যাডভান্সড লকপিক",
		advanced_lockpick_description = "লক ওপেন করার জন্য ব্যবহৃত হয়।",
		cleaning_kit = "পরিষ্কারক কিট",
		cleaning_kit_description = "আপনার গাড়ি পরিষ্কার করার জন্য এবং যে রকম নরকের ছায়াপথ থেকে সাফ করার জন্য উপযুক্ত।",

		microphone_bug = "মাইক্রোফোন বাগ",
		microphone_bug_description = "কথোপকথন শুনতে ব্যবহৃত হয়।",
		vehicle_tracker = "গাড়ি ট্র্যাকার",
		vehicle_tracker_description = "এই ট্র্যাকারটি মাইকেল কে প্রয়োজন, যে তার স্ত্রী, আমান্ডা, সব ছয় বছর ধরে তার উপর অবিশ্বাস ছিল যে তিনি তার কোচ দ্বারা ধরিয়েছে।",
		device_scanner = "ডিভাইস স্ক্যানার",
		device_scanner_description = "অগ্রসর ক্রিপ ডিভাইসের জন্য স্ক্যান করার জন্য ব্যবহৃত হয়।",
		radio_decryptor = "রেডিও ডিক্রিপটার",
		radio_decryptor_description = "রেডিও সংযোগ থাকলে রেডিও তথ্যকে ডিক্রিপ্ট করে।",

		paper_bag = "পেপার ব্যাগ",
		paper_bag_description = "মাংস ওজন না সহ জীবিত বা মৃত কারো চেহারা মনে রাখার জন্য সমৃদ্ধ।",
		burger_shot_delivery = "বার্গার শট খাবার",
		burger_shot_delivery_description = "একটি সুন্দর সমষ্টি সবকিছু যা তারা পরিবেশন করে।",
		bean_machine_delivery = "বিন মেশিন ডেলিভারি",
		bean_machine_delivery_description = "একটি ব্যাগ পূর্ণ অদ্ভুত সুস্বাদু জিনিস যা শহরের ঊপর একটি ছোট কফি দোকান থেকে পরিবহণ করা হয়।",

		ear_defenders = "কান রক্ষাকারী",
		ear_defenders_description = "জোরদার শব্দ থেকে আপনার কানকে রক্ষা করতে ব্যবহৃত।",

		clothing_bag = "পোশাকের ব্যাগ",
		clothing_bag_description = "আপনি কখনই ফ্যাশন জটিলতার কারণে চিন্তা করতে না হবে! কাপড়ের ব্যাগটি আপনার পছন্দের পোশাকটি সংরক্ষণ করতে দেয় এবং যেকোনও জায়গাতে তা ত্বরান্বিতভাবে উপকরণ করতে পারেন। এই ব্যাগে একটি পরীর মতো সমস্ত জাদু রয়েছে, কেবল বিবিডি-ববিডি-বু নেই।",

		raw_morganite = "রম মরগেনাইট",
		raw_morganite_description = "মরগেনাইট প্রাকৃতিক উপাদান, মাইন থেকে তাজা আসছে।",
		raw_ruby = "রম রুবি",
		raw_ruby_description = "রুবি প্রাকৃতিক উপাদান, মাইন থেকে তাজা আসছে।",
		raw_sapphire = "রম স্যাপফhire",
		raw_sapphire_description = "স্যাপফhire প্রাকৃতিক উপাদান, মাইন থেকে তাজা আসছে।",
		raw_emerald = "রম এমারাল্ড",
		raw_emerald_description = "এমারাল্ড প্রাকৃতিক উপাদান, মাইন থেকে তাজা আসছে।",

		ruby_dust = "রুবি ধুলো",
		ruby_dust_description = "রুবি উপস্থিতি থেকে ধুলো।",
		sapphire_dust = "স্যাপফhire ধুলো",
		sapphire_dust_description = "একটি স্যাপফায়ার থেকে ধুলো।",

		morganite = "মর্গ্যানাইট",
		morganite_description = "কাটা এবং পরিষ্কার করা মর্গ্যানাইট।",
		ruby = "রুবি",
		ruby_description = "কাটা এবং পরিষ্কার করা রুবি।",
		sapphire = "স্যাপফায়ার",
		sapphire_description = "কাটা এবং পরিষ্কার করা স্যাপফায়ার।",
		emerald = "ইমেরাল্ড",
		emerald_description = "কাটা এবং পরিষ্কার করা ইমেরাল্ড।",

		ring = "বেণ্টে",
		ring_description = "কেবল একটি ফাঁকা বেণ্টে।",

		morganite_ring = "মর্গ্যানাইট বেণ্টে",
		morganite_ring_description = "একটি সুন্দর বেণ্টে যা একটি বড় মর্গ্যানাইট দিয়ে পূর্ণ। বিবাহের জন্য পূর্ণ, সবচেয়ে ভালো বন্ধু বা পূর্ণভাবে অপরিচিত জনকে প্রদান করার জন্য উত্তম।",
		ruby_ring = "রুবি রিং",
		ruby_ring_description = "একটি সুন্দর রিং যেখানে বড় একটি রুবি লম্বভাবে আছে। বিবাহ, সেরা বন্ধুদের জন্য বা পুর্ণ অপরিচিতদের জন্য সুখবর।",
		sapphire_ring = "স্যাফায়ার রিং",
		sapphire_ring_description = "একটি সুন্দর রিং যেখানে বড় একটি স্যাফায়ার লম্বভাবে আছে। বিবাহ, সেরা বন্ধুদের জন্য বা পুর্ণ অপরিচিতদের জন্য সুখবর।",
		emerald_ring = "এমারাল্ড রিং",
		emerald_ring_description = "একটি সুন্দর রিং যেখানে বড় একটি এমারাল্ড লম্বভাবে আছে। বিবাহ, সেরা বন্ধুদের জন্য বা পুর্ণ অপরিচিতদের জন্য সুখবর।",
		diamond_ring = "ডায়মন্ড রিং",
		diamond_ring_description = "একটি সুন্দর রিং যা মধ্যবর্তীতে একটি বড় হীরার সাথে সুশোভিত। বিয়ে, সব চেয়ে ভালো বন্ধু বা সম্পূর্ণ অপরিচিত জনের জন্য এই প্রফুল্ল জুতা।",

		gemstone_scanner = "গেমস্টোন স্ক্যানার",
		gemstone_scanner_description = "গেমস্টোনগুলি স্ক্যান করার জন্য দরকারী।",

		extended_clip = "এক্সটেন্ডেড ক্লিপ",
		extended_clip_description = "রিলোডিং কম হবে।",
		grip = "গ্রিপ",
		grip_description = "ব্যারেল এর গ্রিপ হচ্ছে একটি খুব গুরুত্বপূর্ণ পার্ট।",
		sight = "হলোগ্রাফিক সাইট",
		sight_description = "খারাপ নিশানা ঠিক করার জন্য এই সাইটটি ব্যবহার করতে হয়।",
		scope = "স্কোপ",
		scope_description = "দূরত্ব বোনাস পেতে স্কোপের ব্যবহার করুন।",
		suppressor = "সাপ্রেসর",
		suppressor_description = "ব্যাং ব্যাং না বলে পিউ পিউ বলতে হবে।",
		flashlight = "ফ্ল্যাশলাইট",
		flashlight_description = "অন্ধকারে দেখতে হবে না।",
		extended_pistol_clip = "এক্সটেন্ডেড ক্লিপ (পিস্তল)",
		extended_pistol_clip_description = "কম রিলোডিং হতে হবে।",
		extended_smg_clip = "এক্সটেন্ডেড ক্লিপ (এসএমজি)",
		extended_smg_clip_description = "কম রিলোডিং হতে হবে।",
		extended_shotgun_clip = "এক্সটেন্ডেড ক্লিপ (শটগান)",
		extended_shotgun_clip_description = "কম রিলোডিং হতে হবে।",
		drum = "ড্রাম ম্যাগ",
		drum_description = "আর রিলোড করার দরকার নেই।",
		pistol_sight = "পিস্তোল নজরবিস্তারিকের সাইট",
		pistol_sight_description = "খারাপ লক্ষ্যবিধি কিভাবে ঠিক করবেন।",

		aluminium_plate = "আলুমিনিয়াম প্লেট",
		aluminium_plate_description = "সতর্কতা: গুলি বাঁচাবে না ... বাক্চোখা।",
		aluminium_rod = "আলুমিনিয়াম রড",
		aluminium_rod_description = "আপনার বন্ধুদের মাথা খারাপ করা চেষ্টা করবেন না।",
		copper_nugget = "কপার নাগেট",
		copper_nugget_description = "মিষ্টি সুন্দর স্বর্ণবর্ণ পদার্থের একটি ছোট খনক।",
		copper_wire = "কপার তার",
		copper_wire_description = "প্রায় যেকোনো ইলেকট্রনিক জিনিসে ব্যবহার করা যায় এই বিচ্ছিন্ন তারার মাধ্যমে।",
		lens = "লেন্স",
		lens_description = "চশমার এবং মাইক্রোস্কোপে ব্যবহৃত হয়, তোমাকে নার্ড বলছেই।",
		polymer_resin = "পলিমার রেজিন",
		polymer_resin_description = "খেতাব নেই, তবে এখনো ঠিক ভালো।",
		screws = "স্ক্রু",
		screws_description = "তোমরা কী করে চলছ দেখি, স্ক্রুইন?",
		spring = "স্প্রিং",
		spring_description = "কেন জানিনা, তবে মানুষেরা এগুলি পরিষ্কার করতে ভালবাসে?",

		grenade_shell = "গ্রেনেড শেল",
		grenade_shell_description = "একটি গ্রেনেডের শেল।",
		grenade_pin = "গ্রেনেড পিন",
		grenade_pin_description = "একটি গ্রেনেডের পিন।",

		paint = "পেইন্ট",
		paint_description = "বাড়ির বাড় এবং ঘাটের জন্য উপযোগী, কিন্তু এটা সাস না শুরু করেন।",
		paint_brush = "পেইন্ট ব্রাশ",
		paint_brush_description = "পেইন্ট করার জন্য উপযুক্ত।",

		skin_patriotic = "জাতিক তুলে শহীদ হত্যার স্কিন",
		skin_patriotic_description = "সব সময় আমেরিকান জাতির জন্য।",
		skin_brushstroke = "ব্রাশস্ট্রোক স্কিন",
		skin_brushstroke_description = "সমস্ত আর্ট লাভার জন্য।",
		skin_skull = "খোপ স্কিন",
		skin_skull_description = "সমস্ত এজি ছেলেমেয়ের জন্য।",
		skin_leopard = "চিতার ত্বক",
		skin_leopard_description = "সব প্রাণী ভালবাসীদের জন্য।",
		skin_zebra = "জেব্রা ছাল কাপড়",
		skin_zebra_description = "সব প্রাণী ভালবাসীদের জন্য।",
		skin_geometric = "জ্যামিতি ছাল কাপড়",
		skin_geometric_description = "সব গণিত জ্ঞানীদের জন্য।",

		refillable_bottle = "পুনরায় ভর্তি করা যায় খালি বোতল",
		refillable_bottle_description = "হা ভাই হা, সত্যিই টার্টেন সংরক্ষণ করুন।",

		capri_sun = "কাপ্রি সান",
		capri_sun_description = "আপনার শিশুতের সময়ের একটি সুস্বাদু খাবার।",

		gumball = "চিনির গোলক",
		gumball_description = "একটি চিনির গোলক, আর কি বলতে চান আপনি?",

		water = "পানি",
		water_description = "ঝুঁকিপূর্ণ! ডাইহাইড্রোজেন মনোক্সাইড রঙহীন এবং বাদসম্পন্ন। অসাদৃশ্য উপস্থিতিতে DHMO অস্বস্তিকর। এর ঠাণ্ডা রূপে দীর্ঘতর সময় একটি ব্যক্তির শরীরে ভীষণ ক্ষতি সৃষ্টি করতে পারে। DHMO খাওয়ানুভূতির লক্ষণগুলির মধ্যে ব্যতিক্রমজনক ঘনত্বময় শয্যপদার্থ ও মল প্রতিস্থাপন এবং সম্ভবতঃ একটি ফোলা অনুভূতি, বমি এবং শরীরের ইলেকট্রোলাইট ব্যালান্স উন্মত্ততা থাকতে পারে।",
		hamburger = "হামবার্গার",
		hamburger_description = "আমেরিকার স্বাদ!",
		belgian_fries = "বেলজিয়ান ফ্রাইস",
		belgian_fries_description = "উন্নয়নপ্রাপ্ত স্বাদ জন্য, ম্যাসেজ @Giv3n#0753 একটা করুন তাকে \"ফ্রিটাস\" নামে।",
		coke = "কোক",
		coke_description = "পাবলো?",
		wonder_waffle = "ওয়ন্ডার ওয়াফল",
		wonder_waffle_description = "ভেজান, ল্যাকটোস মুক্ত, ডেয়ারি মুক্ত, ডিম মুক্ত, গ্লুটেন মুক্ত, জৈবিক, এন্টিবায়োটিক মুক্ত, সয়া মুক্ত, কোন ফ্রুক্টোজ নেই, নাট মুক্ত, নন জিএমএ, চিনি মুক্ত, ফ্যাট মুক্ত এবং লো-কার্ব",
		cheeseburger = "চিজবার্গার",
		cheeseburger_description = "ফেটি ষ্ট্রেন্জ, তেলের আরও বেশি, রাবড়ি, ডাবল ডিলাক্স, জমা, হিস্টি ডাবল, তেলের আরও বেশি, ঠান্ডা এবং তেলে সিক্ত, সাধারণ ডাবল, বড় পাঁচনা, জুস্টিস্ট, কিং-সাইজড, ডিলাক্স, পাশাপাশি, তিনটি, রাবড়ি, জুসি, গুনাগুনি, সাধারণ ডাবল, ত্রিপল, রাবড়ি, জুসি, দোষপূর্ণ, বড়, বিনামূল্যে",
		donut = "ডোনাট",
		donut_description = "মধ্যবর্তীতে কেন একটি ছিদ্র আছে ভাই",
		green_apple = "সবুজ আপেল",
		green_apple_description = "রেড বুলের মতো, কিন্তু এখানে কোন বস্তু নেই যা রেড বুলের বাক্সের মত দেখাতে পারে।",
		sandwich = "স্যান্ডউইচ",
		sandwich_description = "ভেজিটেরিয়ান।",
		taco = "টাকো",
		taco_description = "এল ব্রায়ানের বিশেষ খাবার।",
		smores = "স্মোর",
		smores_description = "হ্যাঁ",
		tic_tac = "টিক ট্যাক",
		tic_tac_description = "অক্সি? না অফিসার, আমি শুধুমাত্র টিক ট্যাক খাচ্ছি!",
		pizza_slice = "পিজা স্লাইস",
		pizza_slice_description = "তোমার জন্য একটি চমৎকার পিঁজা!",
		hot_dog = "হট ডগ",
		hot_dog_description = "শেষ হওয়ার মত এই গ্লিজি খেয়ে দিন।",
		nachos = "নাচোস",
		nachos_description = "এনকারনের জন্য এলাকার সর্বশ্রেষ্ঠ নাচোস!!",
		vanilla_ice_cream = "ভ্যানিলা আইসক্রিম",
		vanilla_ice_cream_description = "জীবনে স্বাদ নেই তাই ধরে নিন।",
		chocolate_ice_cream = "চকলেট আইসক্রিম",
		chocolate_ice_cream_description = "সম্মানজনক স্বাদ, অসাধারণ নয়।",
		vanilla_milkshake = "ভ্যানিলা মিল্কশেক",
		vanilla_milkshake_description = "একটি ডাইনারের ক্লাসিক, অসাধারণ বার্গার ও ফ্রাইসের সাথে খুব ভাল!",
		chocolate_milkshake = "চকোলেট মিল্কশেক",
		chocolate_milkshake_description = "একটি উত্তম দেখতে ভাল, কেবল আপনি ঠিক আগে এক সিপ নেওয়া আশা করুন যে CIA আপনাকে তার জন্য চাই না...",

		dog_food = "কুকুরের খাবার",
		dog_food_description = "কুকুর এবং অন্যান্য সম্পর্কিত ক্যানাইন দ্বারা খাওয়ার জন্য বিশেষভাবে তৈরি ও উপযুক্ত খাবার।",
		cat_food = "বিড়ালের খাবার",
		cat_food_description = "বিড়াল খাবার হল বিড়ালদের জন্য খাবার। বিড়ালদের আহার পুষ্টিগুলোর জন্য বিশেষ দরকারী।",
		dog_treats = "কুকুরের ট্রিটস",
		dog_treats_description = "আপনার প্রিয় ভালো ছেলের জন্য মজাদার ট্রিটস।",
		cat_treats = "বিড়ালের ট্রিটস",
		cat_treats_description = "আপনার স্থানীয় পুশির জন্য মজাদার ট্রিটস।",

		burger_buns = "বার্গার বান",
		burger_buns_description = "এই খারাপ ছেলেদের মধ্যে কিছু মাংস আনুন।",
		cheese = "পনির",
		cheese_description = "ল্যাক্টোজ অন্তস্থ হয়ে লোসার হয়ে ভাবুন।",
		lettuce = "লেটুস",
		lettuce_description = "সেই সবজি যা তারা রাস্তায় বিক্রি করে না।",
		patty = "বার্গার প্যাটি",
		patty_description = "একটি দিন একটি ছোট মানুষ এই মাংসের জন্য গোপন সূত্র খুঁজে পেতে পারেন, তবে তখন পর্যন্ত ফ্রাই কুকটি ফ্লিপ করতে থাকুন।",
		potato = "আলু",
		potato_description = "একমাত্র জিনিস রাশিয়ার যেটা একটা এক বছরের স্থানীয় ব্যবসা বা ভারতীয় নববর্ষ একবার সহজ করে।",
		raw_fries = "সেদ্ধমাত্র আলুপাকোড়া",
		raw_fries_description = "মোটামুটি একটা আলু, তবে কেউ এত কষ্ট করেনি যেন এটা কিছু হয়।",
		raw_patty = "সেদ্ধমাত্র মাংসের পাটি",
		raw_patty_description = "৯০% আসল মাংস, অন্য ১০% তলব অনুবাদ করতে চলে গেছে।",

		apple = "আপেল",
		apple_description = "দুষ্টু ডাক্তার দূরে থাকার জন্য!",
		banana = "কলা",
		banana_description = "সন্দেহজনক",
		cherry = "চেরি",
		cherry_description = "উপরে (যদি এটাই আপনার পছন্দ হয়।)",
		kiwi = "কিউই",
		kiwi_description = "গরু নয়, ফল। (এ-৩২ এর সাথে ভুলে না করবেন)",
		mango = "আম",
		mango_description = "দয়া করে গুলি চালান না! শুধু আম টা নিন...",
		orange = "কমলা",
		orange_description = "আমরা কেশবলা না বললেই আরেকটা দুষ্টুমি হয়ে যেত!",
		peach = "পীচ",
		peach_description = "পাছা নয়।",
		pineapple = "পাইনআপল",
		pineapple_description = "পেন পাইনআপল এপল পেন।",
		pomegranate = "ডালিম",
		pomegranate_description = "স্পেলিংটা সঠিক হইছে তো ভাইয়া।",
		strawberry = "স্ট্রবেরি",
		strawberry_description = "সাধারণতঃ ফসলমানদের খেতে পাওয়া যায়... চলে যাওয়াও!",
		watermelon = "তরমুজ",
		watermelon_description = "এটি পানি কি একটি ফল না, আমরা কখনও জানতে পারব না।",

		banana_peel = "কলা ছেলে",
		banana_peel_description = "পরিত্যক্ত হওয়া হালকা স্থানে কিছুটা সমস্যাজনক।",

		beer = "বিয়ার",
		beer_description = "রাগ জল।",
		vodka = "ভড়কা",
		vodka_description = "রুশ স্টাইল, সুকযোগীতে।",
		tequila = "তেকিলা",
		tequila_description = "চিন্তা করবেন না, কিছুই আপনার পানিতে ছুঁইয়ে নেওয়া হয়নি। ( ͡° ͜ʖ ͡°)",
		whiskey = "হুইস্কি",
		whiskey_description = "কেবল শ্রেষ্ঠ মাদকপ্রবণদের জন্য।",
		cider = "সাইডার",
		cider_description = "প্রাপ্তবয়স্ক আপেল রস।",
		rum = "রাম",
		rum_description = "কারিবীয় দ্বীপসমূহ থেকে পুনরায় চলমান Pirates of the Caribbean চলচ্চিত্রটি দেখার সময়।",
		absinthe = "অ্যাবসিন্থ",
		absinthe_description = "সতর্কতা: এলকোহল থাকে। শিশুদের শুধুমাত্র মাঝমাত্র পরিমাণ পান করতে দিন।",
		wine = "ওয়াইন",
		wine_description = "আঙ্গুর রস।",

		moonshine = "মুনশাইন",
		moonshine_description = "সরকারের জ্ঞান না হওয়া সবচেয়ে ভালোভাবে মাত্রাতির ছাড়া মদ পান করার সম্বন্ধে সেরা উপায়।",
		yeast_packet = "ইস্ট প্যাকেট",
		yeast_packet_description = "মদ তৈরি করার জন্য ব্যবহৃত একটি প্যাকেট ইস্ট।",

		kimchi = "কিমচি",
		kimchi_description = "একটি তীক্ষ্ণ কোরিয়ান পাশেরি যা সসিত শাকসবজি দিয়ে তৈরি করা হয়।",
		fish_sauce = "মাছের সস",
		fish_sauce_description = "একটি সস যা মাছ থেকে তৈরি করা হয় এবং পাকানো হয়।",

		pumpkin = "কুমড়া",
		pumpkin_description = "একটি বড় কমলার মতো সবুজপাতা সবজি যা হ্যালোইনের জন্য ব্যবহৃত হয়।",
		cabbage = "বাঁধাকপি",
		cabbage_description = "স্বদেশী কিমচি তৈরির জন্য উপযুক্ত।",

		smoothie = "স্মুথি",
		smoothie_description = "ফল, শাকসবজি এবং ইলেকট্রোলাইটের একটি উপযোগী মিশ্রণ, যা হাতেকলমের কোনও ঝামেলা থেকেও মুক্তি দেয়।",
		blender = "ব্লেন্ডার",
		blender_description = "পরিপূর্ণ স্মুদ্রক ব্লেন্ডার: কারণ একটি ভাল সমন্বয়যুক্ত সকালের কাজে বিজয়ী হওয়া এবং স্মুদ্রক এর স্বাদ কখনও ক্ষতিকর হয় না।",

		cocoa_beans = "কোকো বীনস",
		cocoa_beans_description = "ছোট বীনস যা চকোলেট তৈরি করার জন্য ব্যবহৃত হয়।",
		cocoa_powder = "কোকো পাউডার",
		cocoa_powder_description = "কোকো বীনস থেকে তৈরি পাউডার।",
		hot_chocolate = "গরম চকোলেট",
		hot_chocolate_description = "গরম নির্মিত পাউডার চকোলেট এবং দুধ দ্বারা প্রস্তুত একটি গরম পানীয়।",

		jack_o_lantern = "জ্যাক ও ল্যান্টার",
		jack_o_lantern_description = "মুখ নিখাত করা একটি পাম্পকিন।",

		cigarette = "সিগারেট",
		cigarette_description = "যদি তুমি ধূমপান না কর তবে তুমি একটি পুস্তি মানুষ।",
		cigarette_pack = "সিগারেট প্যাক",
		cigarette_pack_description = "যে তোমার বাবা ধূমপানের ঝোঁক কে বাঁচাতে জেনে এ একটি প্যাক তৈরি হয়েছে (আশা করা হয় তিনি একদিন এসে পুষ্ট হচ্ছেন)।",

		cocaine_bag = "কোকেইন ব্যাগ",
		cocaine_bag_description = "কলম্বিয়ান ইতিহাসের ছোট টুকরো।",
		cocaine_brick = "কোকেইন ব্রিক",
		cocaine_brick_description = "কলম্বিয়ান ইতিহাসের একটি টুকরো।",
		joint = "জয়েন্ট",
		joint_description = "420 ব্লেজ ইট ডগ",
		oxy = "অক্সিজেন",
		oxy_description = "তোমার কাছে কি কোনো ড্রাগ আছে? পিঠ ব্যথার সাথে সাহায্য করে।",
		antibiotics = "এন্টিব্যায়োটিক",
		antibiotics_description = "ইনফেকশন এবং প্যারাসাইটগুলি থেকে মুক্তি পাওয়ার জন্য সাহায্য করে।",
		pain_killers = "পেইন কিলারস",
		pain_killers_description = "সেলিং টাইমে ড্রাগ দরকার, লেস, আমার ড্রাগ দরকার।",
		weed_seeds = "মারিজুয়ানা বীজ",
		weed_seeds_description = "গ্রোস ৪২০, ব্রো",
		weed_1q = "মারিজুয়ানা 1কোয়ার্টার",
		weed_1q_description = "420 ব্রো",
		weed_1oz = "মারিজুয়ানা 1 আউঞ্স",
		weed_1oz_description = "১৬৮০ ভাই",

		oxy_prescription = "Oxy প্রেসক্রিপশন",
		oxy_prescription_description = "দ্বিধাগ্রস্ত oxy রেসিপশন।",

		brownies = "ব্রাউনি",
		brownies_description = "গুদমেজাজ, ফোমি এবং দ্বিগুণ চকোলেট এর পরিমাণ একটু বেশী দিয়ে বাকি সবকটুকুই সমালোচনা করতে উপযোগী।",

		ejector_seat = "ইজেক্টর সিট",
		ejector_seat_description = "ইজেক্টো সিটো কারণ!",
		tuner_chip = "টিউনার চিপ",
		tuner_chip_description = "আমি স্পীড।",

		chip = "চিপ",
		chip_description = "স্টাইলিস লুকিং হ্যাকার চিপ।",
		decryption_key_red = "রেড ডিক্রিপশন কী",
		decryption_key_red_description = "আপনি জানেন কি? লাল মাফিয়া শুধু শির নয়।",
		decryption_key_green = "গ্রীন ডিক্রিপশন কী",
		decryption_key_green_description = "আপনি জানেন কি? কোক একবার হল সবুজ রং এর।",
		decryption_key_blue = "ব্লু ডিক্রিপশন কী",
		decryption_key_blue_description = "আপনি জানেন কি? একটি নীলপদ্ম পাখি অস্তিত্ব রয়েছে। উল্লেখ: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "বলিস্টিক শিল্ড",
		ballistic_shield_description = "আরপিতে গ্যাংবিশ্বে ভ্রমণ করার সময় এই ঢাল ব্যবহার করা উচিত।",

		pet_porg = "পর্গ প্রিয়",
		pet_porg_description = "আপনার কন্ঠে উঁচু হলেও আবেগপ্রবণ পর্গ প্রিয় আপনার সঙ্গে থাকবে এবং আপনাকে সমর্থন করবে। এই দারুণ হাঁটার ক্রিয়াটি আপনার মুখে একটি সুদৃশ হাসি আনবে।",
		pet_duck = "কুয়াক্টাস্টিক সাথী",
		pet_duck_description = "আনন্দময় কুয়াক একটি আদর্শ সাথী, যে আপনার সাথে সফর করে সমস্ত প্রশ্নের সমাধান করতে সদা উদ্যমশীল। এটি আনন্দের সাথে আপনার কন্ধে উঁচু হয়ে থাকবে, প্রস্তুত থাকুন এবং জগতটি অন্বেষণ করার জন্য প্রস্তুত থাকুন।",
		pet_cat = "শোল্ডার স্নাগলার",
		pet_cat_description = "এই মসৃন বিড়াল সবসময় একটি সমাধানের উদ্দেশ্যে তৈরি আছে এবং শ্বসন নেওয়ার জন্য সেরা জায়গা হল আপনার শোল্ডার! আপনি আপনার দিনটি কাটিয়ে দিয়ে এর উপরে উপস্থিত হলে এর সাথে খানিকটা ছেড়ে না পূর্ণরূপে কোম্বলা হয়ে থাকবে।",
		pet_cat_grey = "সুইপা গিজমো",
		pet_cat_grey_description = "এই ছোট ধূসর বিড়াল বিশ্রাম নিশ্চয়তা অতুল সীমার মধ্যে সবসময় আপনার শোল্ডারে বসে থাকে। কোমল পরিস্থিতি ছাড়াও কোনও বস্তু এটি পর্যবেক্ষণে না ধরতে পারে।",
		pet_chicken = "মোজাদার পাখি",
		pet_chicken_description = "এই অদরম সাদা মুরগী আনন্দের সাথে আপনার শোল্ডারে হাঁটতে পারে এবং এর নরম পাখা এবং জিজ্ঞাসু ব্যক্তিত্ব পর্যবেক্ষণে উপযুক্ত। যেকোনো সঙ্গে একটি সুযোগে এই মোজাদার পাখি আপনার অবধি হতে পারে।",
		pet_shiba = "পটভূমি দল",
		pet_shiba_description = "খেলাপ্রিয় ব্যক্তিত্ব ও নরম ফারের সাথে, এই ছোট শিবা কুকুরটি যে কোনও প্রয়াণের জন্য একটি নির্দিষ্ট সহযোগী। এটি আনন্দময়ভাবে আপনাকে উপদেশ দেবে যে ছবিটি যেতে চাইছে তালের সাথে, তার ঠোট দেখতে হাস্যকর এবং উদ্যমপূর্ণ গুঞ্জন একটি ঝকিময় স্পর্শ যুক্ত করে।",
		pet_mouse = "পড়দানদার বন্য প্রাণী",
		pet_mouse_description = "এই গোলাকার এবং পরিবেশনশীল ছোট চিংচিল্লা যে কোনও প্রয়াণের জন্য একটি উত্তম সঙ্গী। এর নরম ফার এবং খেলাপ্রেমী ব্যক্তিত্ব একটি উত্তম স্নাগল বাড়ি, এবং এটি আনন্দদায়কভাবে আপনার কানে কানে বসে থাকবে যখন আপনি আপনার দিন চালিয়ে যাচ্ছেন।",
		pet_raccoon = "রাস্কাল দ্য র্যাকুন",
		pet_raccoon_description = "রাস্কাল যা সর্বদা সাহসী এবং সব সময় আভীষ্ট। একটি বুলবুলে শরীর এবং নকচাটা ব্যক্তিত্ব সম্পন্ন রাস্কাল, আপনার কাছ থেকে ঝটপট যোগদান করে এবং আখেরের জন্য সাহায্য করে হাতে নিয়ে ট্রেজার স্ক্যাভেঞ্জ করতে সদা উপলব্ধ। আপনার অনুসন্ধানে যোগ দিতে সদ্য প্রস্তুত?",

		hotwheels_mcqueen = "লাইটনিং ম্যাককুইন",
		hotwheels_mcqueen_description = "গতি আমি গতি, ম্যাককুইন এর মত ফ্লোট করুন একটি ক্যাডিল্যাক এর মতো আঘাত একটি বিমার এর মতো হউন। ক্যাচোও ক্যাচোও ক্যাচোও",
		hotwheels_towmater = "টো মেটার",
		hotwheels_towmater_description = "আমার নাম ম্যাটার, টমেটার এর মত কিন্তু T ছাড়া।",

		boxing_gloves = "বক্সিং দস্তানা",
		boxing_gloves_description = "আপনাকে রকি তৈরি করে দিবে কিন্তু আপনি সম্ভবতঃ একটি পরবর্তী সিকুয়েল পাবেন না ...",
		leash = "লিশ",
		leash_description = "কেউ জানতে পারবেনা আপনি কেন কিনলেন, কিন্তু নিশ্চয়ই সমস্ত লোক আপনার উপর মূল্যায়ন করবে।",

		shrooms = "শ্রুমস",
		shrooms_description = "কেউ একটি পিজ্জা এর উপর এগুলি ফেলা বলেছিলেন, কিন্তু এখন পিজ্জা আমার ওপর নিজেই ফেলে আসছে ... অপেক্ষা করুন আমি কে ?",

		bucket = "বালতি",
		bucket_description = "একটি নগদ হেলমেট হিসেবে ব্যবহার করা যায়।",
		fertilizer = "সার",
		fertilizer_description = "একটি সবুজ জগতের জন্য।",

		aluminium_powder = "এলুমিনিয়াম পাউডার",
		aluminium_powder_description = "একটি উভয়ব্যবহারী পাউডার যা প্রযুক্তিগত এবং রসায়ন বিষয়ক ব্যবহারে প্রচলিত। নির্দিষ্ট উপাদানসহ মিশিতে ব্যবহার করা হলে, এটি তেম্পার রিয়েকশনে অত্যন্ত সক্রিয় হয় এবং তীব্র তাপ এবং আলো উত্পন্ন হয়।",
		iron_oxide = "আয়রন অক্সাইড পাউডার",
		iron_oxide_description = "বিভিন্ন শিল্প প্রক্রিয়ায় ব্যবহৃত একটি সাধারণ পাউডার যা আয়ন এবং অক্সিজেন মোলেকুল দ্বারা গঠিত। নির্দিষ্ট পদার্থসমূহের সাথে মিশিতে হলে, এটি খুবই উত্তাপমান প্রক্রিয়ায় অংশগ্রহণ করতে পারে, তাপ এবং শক্তি মুক্ত করে।",

		gold_bar = "সোনার বার",
		gold_bar_description = "মেরামত এবং ক্রাফটিং জন্য ব্যবহৃত হয়।",

		aluminium = "ক্রুড এলুমিনিয়াম",
		aluminium_description = "মেরামত এবং ক্রাফটিং জন্য ব্যবহৃত হয়।",
		glass = "রাফ গ্লাস",
		glass_description = "মেরামত এবং ক্রাফটিং জন্য ব্যবহৃত হয়।",
		rubber = "অকচুর রবার",
		rubber_description = "মেরামত এবং ক্রাফটিং জন্য ব্যবহৃত হয়।",
		scrap_metal = "স্ক্র্যাপ মেটাল",
		scrap_metal_description = "মেরামত এবং ক্রাফটিং জন্য ব্যবহৃত হয়।",
		steel = "রও স্টিল",
		steel_description = "মেরামত এবং ক্রাফটিং জন্য ব্যবহৃত হয়।",

		purified_aluminium = "পাবিত্র এলুমিনিয়াম",
		purified_aluminium_description = "পেশাদার মেরামত করার জন্য ব্যবহৃত।",
		tempered_glass = "তাপদণ্ডিত কাঁচ",
		tempered_glass_description = "পেশাদার মেরামত করার জন্য ব্যবহৃত।",
		vulcanized_rubber = "ভালকানাইজড রাবার",
		vulcanized_rubber_description = "পেশাদার মেরামত করার জন্য ব্যবহৃত।",
		processed_metal = "প্রক্রিয়াকৃত ধাতু",
		processed_metal_description = "পেশাদার মেরামত করার জন্য ব্যবহৃত।",
		refined_steel = "পরিষ্কার ইস্পাত",
		refined_steel_description = "পেশাদার মেরামত করার জন্য ব্যবহৃত।",

		power_saw = "পাওয়ার আলোকচাঁদা",
		power_saw_description = "বস্তুগুলি কাঁটানোর জন্য ব্যবহৃত।",

		thermite = "থার্মাইট",
		thermite_description = "বলকলসমূহ জবট পরিহিত, নাকটি না চুষবেন।",
		fake_plate = "জালিয়া প্লেট",
		fake_plate_description = "হেহে, পুলিশদের আমাকে নেই। তারা আমাকে না পাবে।",
		evidence_bag_empty = "ফাঁকা প্রমাণসমূহের ব্যাগ",
		evidence_bag_empty_description = "তোমরা এটি উন্নয়ন করতে পারবেন?",
		evidence_bag = "প্রমাণের ব্যাগ",
		evidence_bag_description = "পরবর্তী ব্যবহারের জন্য একটি ব্যবহারযোগ্য ব্যাগের মধ্যে সিলকৃত অপরাধ।",
		fingerprint_evidence = "ফিঙ্গারপ্রিন্ট প্রমাণ",
		fingerprint_evidence_description = "অপরাধী পুরুষদের ধরে ফেলতে সাহায্য করে।",

		ammo_box = "বড় অ্যামো বক্স",
		ammo_box_description = "যখন আপনাকে অনেক লাফালাফি করতে হবে তখন এটা উপযোগী। প্রতিটি অ্যামো প্রকারের ৬০ রাউন্ড ধারণ করে।",

		stungun_ammo = "টেসার কার্তুজ",
		stungun_ammo_description = "কম ক্ষতিসাধক।",
		pistol_ammo = "পিস্তল এমো",
		pistol_ammo_description = "সাধারণ ব্যবহারের জন্য উপযোগী। সর্বাধিক হাতে ধরে রাখা জায়।",
		sub_ammo = "সাব এমো",
		sub_ammo_description = "কোনও প্রতিবাদক দলের সাথে লড়াই করতে চান? এটি একটি অর্থপ্রাপ্ত সম্পদ এবং এটি সম্পূর্ণ প্রভাবশালী যখন একটি সাবমেশিন বন্দুক ব্যবহার করা হয়।",
		rifle_ammo = "রাইফেল এমো",
		rifle_ammo_description = "এটি সমস্ত হার্ডকোর ব্যাংক ডাকুয়ের জন্য, যারা পথে কিছু শ্বিনদের কুকুর ধরে মারতে চান।",
		sniper_ammo = "স্নাইপার এমো",
		sniper_ammo_description = "আপনার প্রবৃত্তি নেই!",
		shotgun_ammo = "শটগান এমো",
		shotgun_ammo_description = "মানুষদের মনে হল প্রতিফলাদাতায় গানপাউডার আছে! ক্লাউন ... তারা ভরেপুর ভালোবাসা দিয়ে পূর্ণ।",

		silver_watches = "সিলভার ঘড়ি",
		silver_watches_description = "সাবধান হও!",
		necklaces = "নেকলেস",
		necklaces_description = "আপনার পোশাকে কিছু অতিরিক্ত ব্লিং যোগ করুন!",
		gold_watches = "স্বর্ণের ঘড়ি",
		gold_watches_description = "আপনি এগুলি কোথা থেকে পেয়েছেন, অনুগ্রহ করে বলতে পারবেন?",
		diamonds = "হীরা",
		diamonds_description = "আপনার একটি পুরো আরমর তৈরি করতে আপনাকে 24 টি হীরা প্রয়োজন। আমি 27 টি পরামর্শ দিচ্ছি যাতে আপনি একটি পিকাস হাতে পাইতে পারেন।",

		weather_spell_snow = "আবহাওয়া যন্ত্র (তুষারবিশেষ)",
		weather_spell_snow_description = "এই আইটেম ব্যবহার করে আপনি অস্থায়ীভাবে আবহাওয়া নিয়ন্ত্রণ করতে এবং সেই তুষার পড়তে দিতে পারেন! এটি একবার ব্যবহার করা যাবে, তাই যথাযথ ব্যবহার করুন। যদি আপনি দুইটি আবহাওয়া যন্ত্র একসাথে ব্যবহার করেন তবে দ্বিতীয়টি শুধুমাত্র সারিতে জমা হবে।",
		weather_spell_rain = "আবহাওয়া যন্ত্র (বৃষ্টি)",
		weather_spell_rain_description = "এই আইটেম ব্যবহার করে আপনি অস্থায়ীভাবে আবহাওয়া নিয়ন্ত্রণ করতে পারবেন এবং বৃষ্টি করতে পারবেন! এটি একবার ব্যবহার করা যায়, তাই সাবধানে ব্যবহার করুন। যদি আপনি দুটি আবহাওয়া যন্ত্র একসাথে ব্যবহার করেন, তবে দ্বিতীয়টি কিউ হবে।",
		weather_spell_thunder = "আবহাওয়া যন্ত্র (বজ্রপাত)",
		weather_spell_thunder_description = "এই আইটেম ব্যবহার করে আপনি অস্থায়ীভাবে আবহাওয়া নিয়ন্ত্রণ করতে পারবেন এবং এক বজ্রপাত তৈরি করতে পারবেন! এটি একবার ব্যবহার করা যায়, তাই সাবধানে ব্যবহার করুন। যদি আপনি দুটি আবহাওয়া যন্ত্র একসাথে ব্যবহার করেন, তবে দ্বিতীয়টি কিউ হবে।",

		zombie_pill = "জম্বি পিল",
		zombie_pill_description = "একটি অজানা পিল যা এমনই অজানা কিছু করে... নিজের ঝুঁকিতে নিতে গেলে গেজ নিয়ে থাকা সাবধান হবে।",

		acid = "এসিড",
		acid_description = "আপনাকে স্থায়ীভাবে ঊর্ধ্বমুখী করে দেয়। এর থেকে দুর্নীতি আর পরে নেই।",

		rose = "গোলাপ",
		rose_description = "আইডিকে আমাদের বর্ণনা করতে অক্ষম। হয়তো এরপর এরপর পাঠানো গেলে বর্ণনা দেওয়া সম্ভব।",

		teddy_bear = "টেডি বিয়ার",
		teddy_bear_description = "একজন বন্ধু যে সত্যিই আপনার কথা শুনবে।",

		self_driving_chip = "স্ব-ড্রাইভিং চিপ",
		self_driving_chip_description = "অবশ্যই খুব মজার... মৃত হরিণ সব জায়গায়... হাহাহা।",

		ticket_50 = "৳৫০ লটারি টিকেট",
		ticket_50_description = "সমষ্টিতে একটু দিন।",
		ticket_250 = "৳২৫০ লটারি টিকেট",
		ticket_250_description = "এখন আমরা কোথাও হচ্ছি, জোখম নিতে ক্রমশঃ এগিয়ে যাই।",
		ticket_500 = "৳৫০০ লটারি টিকেট",
		ticket_500_description = "তোমার সাপ্তাহিক বেতন শেষ হচ্ছে, তুমি যত্ন নেওয়া তেই!",

		avocado = "এভোকাডো",
		avocado_description = "ছোট সবুজ বস্তু, একটি ডিপ তৈরি করতে ভাল হতে পারে।",
		avocado_smoothie = "এভোকাডো স্মুথি",
		avocado_smoothie_description = "স্বাস্থ্যকর সবুজ জুস, টুকটাক অংশ উপেক্ষা করো।",

		raspberry = "রাসপবেরি",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		antenna = "এন্টেনা",
		antenna_description = "সব ফ্রিকোয়েন্সি ধরার জন্য।",
		battery_pack = "ব্যাটারি প্যাক",
		battery_pack_description = "সমস্ত আপনার ইলেকট্রনিক পাওয়ার দিচ্ছে।",
		cpu = "সিপিইউ",
		cpu_description = "প্রতিটি কম্পিউটারের হৃদয়।",
		knob = "নব",
		knob_description = "এটি ঘুরান, এটি ফিরান।",
		pcb_board = "পিসিবি বোর্ড",
		pcb_board_description = "আপনার পরবর্তী উদ্ভবকে প্রটোটাইপ করতে।",
		screen = "স্ক্রীন",
		screen_description = "যা আপনি করেন তা দেখুন।",
		sd_card = "এসডি কার্ড",
		sd_card_description = "আপনার সমস্ত সংরক্ষণের জন্য।",
		wires = "তার",
		wires_description = "সবকিছু একত্রে ধারণ করবে।",

		note = "নোট",
		note_description = "কিছু নোট ইত্যাদি।",

		pigeon_milk = "পারিব্রত্য দুধ",
		pigeon_milk_description = "\"পারিব্রত্য দুধ পান করতে হয়, এটি আপনিকে খুব শীঘ্রই নিদ্রাতী করবে\"।\n ভেদার দ্বারা প্রেম দিয়ে উত্তোলিত দুধ।",

		bandana = "ব্যান্ডানা",
		bandana_description = "হোল লট্টা গ্যাং শিট। (ব্লাডস জিতে)",

		battering_ram = "ব্যাটারিং র‌্যাম",
		battering_ram_description = "দোকানদারদের নীল করে দিন!",

		trading_card = "ট্রেডিং কার্ড",
		trading_card_description = "সংগ্রহযোগ্য ট্রেডিং কার্ড, সবগুলো নেওয়া হয়!",

		trading_card_pack = "ট্রেডিং কার্ড প্যাক",
		trading_card_pack_description = "একটি প্যাক র‍্যান্ডম ট্রেডিং কার্ড, ভালো পাল্টানো আশা!",

		boombox = "বুমবক্স",
		boombox_description = "যেখানেই যেখানেই সঙ্গীত বাজানো এবং অস্বস্তিকর হওয়া!",

		lighter = "লাইটার",
		lighter_description = "কিছু মানুষ বাঁচানো দেখতে চায় বিশ্বকে জ্বলতে দেখতে",

		nitro_tank = "নাইট্রো ট্যাঙ্ক",
		nitro_tank_description = "দরকার হলে একটি স্পীডি মোটরসাইকের জন্য একটি নাইট্রো ট্যাঙ্ক।",

		empty_nitro_tank = "খালি নাইট্রো ট্যাঙ্ক",
		empty_nitro_tank_description = "বিন বিন ডালো ডালো তেঁতুলে আর কিনা সাহায্য নেই।",

		sheet_metal = "শীট মেটাল",
		sheet_metal_description = "আপনার 2x2 আপগ্রেড করার জন্য একটি সুবিধাজনক উপাদান।",

		valve = "ভ্যালভ",
		valve_description = "হ্যাফ লাইফ ৩ কবে?",

		empty_tank = "খালি ট্যাঙ্ক",
		empty_tank_description = "বর্তমানে প্রোপেন বা প্রোপেন সংযোজন ধারণ করে না।",

		pepper_spray = "মরিচের স্প্রে",
		pepper_spray_description = "আমার চোখ!",

		jail_card = "জেল কার্ড",
		jail_card_description = "জেল থেকে বেরিয়ে ফেলার জন্য কার্ড!",

		vape = "গিক বার",
		vape_description = "সুন্দর দেখতে চাইছেন? না কি? তাহলে নিন একটি হিট, ব্রাদার!",

		acetone = "অ্যাসিটোন",
		acetone_description = "ফালতু রঙ দূর করতে এটি উত্তম। কুপারের মতো হাফিং করতে উপযুক্ত।",

		bleach = "ব্লিচ",
		bleach_description = "এটি খেতে না হয়।",

		ammonia = "এমোনিয়া",
		ammonia_description = "প্রভাবশালী একটি যৌগিক। আশ্চর্যজনক ফলাফল পেতে এটি ব্লিচ এর সাথে মিশিয়ে নিন।",

		lithium_batteries = "লিথিয়াম ব্যাটারিস",
		lithium_batteries_description = "ব্যবহার যোগ্য না করা উড়ানো যাওয়া যায় না, যদি আপনি বিস্ফোরণ হতে চান।",

		meth_bag = "মেথ ব্যাগ",
		meth_bag_description = "জনপ্রিয়তায় \"কুপারের মসলা\" বলা হয়ে থাকে। এলামো সিতে প্রবাহমান কিছু শুদ্ধ ক্রিস্টালগুলোই এটি সুন্দর করে।",

		meth_table = "মেথ টেবিল",
		meth_table_description = "স্মিতকের সুস্বাদু মণ্ডলীর সুগন্ধি রেফারেন্সের উপর ভিত্তি করে এটি মেথ রান্ন করার জন্য একটি অত্যন্ত ভাল অপশন।",

		campfire = "ক্যাম্পফায়ার",
		campfire_description = "এটি বিশ্বের যে কোন স্থানে রাখা যাতে পারে। ক্যাম্পিং, হান্টিং এবং মাছ ধরার জন্য উপযোগী। এই আইটেমটি আর উঠানো যাবে না।",
		tent = "টেন্ট",
		tent_description = "এটি বিশ্বের যে কোন স্থানে রাখা যাতে পারে। ক্যাম্পিং, হান্টিং এবং মাছ ধরার জন্য উপযোগী।",
		cloth_tent = "কাপড়ের টেন্ট",
		cloth_tent_description = "বন্যার ব্যবহার এবং মাছ ধরার জন্য একটি উপযুক্ত পরিবেশস্তম্ভ | যেকোন জায়গায় রাখা যায় |",
		canvas_tent = "ক্যানভাস টেন্ট",
		canvas_tent_description = "বন্যার ব্যবহার এবং মাছ ধরার জন্য একটি উপযুক্ত পরিবেশস্তম্ভ | যেকোন জায়গায় রাখা যায় |",
		plastic_chair = "প্লাস্টিক চেয়ার",
		plastic_chair_description = "বন্যার ব্যবহার এবং মাছ ধরার জন্য একটি উপযুক্ত পরিবেশস্তম্ভ | যেকোন জায়গায় রাখা যায় |",
		fishing_chair = "মাছ ধরার চেয়ার",
		fishing_chair_description = "বন্যার ব্যবহার এবং মাছ ধরার জন্য একটি উপযুক্ত পরিবেশস্তম্ভ | যেকোন জায়গায় রাখা যায় |",
		yoga_mat = "ইয়োগা ম্যাট",
		yoga_mat_description = "যেকোন জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছধরার জন্য একদম উত্তম!",
		cooler_box = "কুলার বক্স",
		cooler_box_description = "যেকোন জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছধরার জন্য একদম উত্তম!",
		parasol = "পারাসোল",
		parasol_description = "যেকোন জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছধরার জন্য একদম উত্তম!",
		parasol_table = "পারাসোল টেবিল",
		parasol_table_description = "যেকোন জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছধরার জন্য একদম উত্তম!",
		table = "টেবিল",
		table_description = "যেকোনো জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছ ধরার জন্য একটি উত্তম সাজেস্ট!",
		towel = "তোয়েল",
		towel_description = "যেকোনো জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছ ধরার জন্য একটি উত্তম সাজেস্ট!",
		disposable_grill = "একবার ব্যবহার করুন গ্রিল",
		disposable_grill_description = "যেকোনো জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছ ধরার জন্য একটি উত্তম সাজেস্ট! এই আইটেমটি আর উঠিয়ে নেওয়া যাবে না।",
		grill = "গ্রিল",
		grill_description = "যেকোনো জায়গায় রাখা যায়। ক্যাম্পিং, হান্টিং এবং মাছ ধরার জন্য একটি উত্তম সাজেস্ট!",
		police_barrier = "পুলিশ ব্যারিয়ার",
		police_barrier_description = "বিশ্বের যে কোনও জায়গায় রাখা যাবে।",
		dummy = "ডামি",
		dummy_description = "বিশ্বের যে কোনও জায়গায় রাখা যাবে।",
		target = "লক্ষ্য",
		target_description = "বিশ্বের যে কোনও জায়গায় রাখা যাবে।",
		large_target = "বড় লক্ষ্য",
		large_target_description = "বিশ্বের যে কোনও জায়গায় রাখা যাবে।",
		cone = "কোন",
		cone_description = "বিশ্বের যে কোনও জায়গায় রাখা যাবে।",
		spike_strips = "স্পাইক স্ট্রিপস",
		spike_strips_description = "বিশ্বের যে কোনও জায়গায় রাখা যাবে।",
		floodlight = "ফ্লাডলাইট",
		floodlight_description = "বিশ্বের যে কোন জায়গায় রাখা যাবে।",
		left_diversion_sign = "বাম দিকের বিরতি চিহ্ন",
		left_diversion_sign_description = "বিশ্বের যে কোন জায়গায় রাখা যাবে।",
		right_diversion_sign = "ডান দিকের বিরতি চিহ্ন",
		right_diversion_sign_description = "বিশ্বের যে কোন জায়গায় রাখা যাবে।",
		stop_sign = "থামানো চিহ্ন",
		stop_sign_description = "বিশ্বের যে কোন জায়গায় রাখা যাবে।",
		bear_trap = "ভালুক জেব",
		bear_trap_description = "বিশ্বের যে কোন জায়গায় রাখা যাবে।",
		barrier = "ব্যারিয়ার",
		barrier_description = "আপনার মানচিত্র দেখতে কাজে আসতে পারে এমন স্ট্যান্ডার্ড নির্মাণ ব্যারিয়ার।",
		traffic_barrier = "ট্রাফিক ব্যারিয়ার",
		traffic_barrier_description = "ট্রাফিকে জানার জন্য একটি ব্যারিয়ার।",
		small_barrier = "ছোট ব্যারিয়ার",
		small_barrier_description = "ছোট এবং নানান ব্যারিকেড।",
		traffic_barrel = "ট্রাফিক ব্যারেল",
		traffic_barrel_description = "এটি হিট করার মত দেখায়, কিন্তু এটি না হিট করুন... যদি না তাহলে?",
		pedestrian_barrier = "পেডেস্ট্রিয়ান ব্যারিয়ার",
		pedestrian_barrier_description = "ট্রাভিস স্কট কনসার্ট না হওয়া পর্যন্ত সুপারিশযোগ্য ...",

		bandit_1 = "ব্যান্ডিট ১",
		bandit_1_description = "বিশ্বের যেকোনো জায়গায় রাখা যেতে পারে।",
		bandit_2 = "ব্যান্ডিট ২",
		bandit_2_description = "বিশ্বের যেকোনো জায়গায় রাখা যেতে পারে।",
		hostage_1 = "হোস্টেজ ১",
		hostage_1_description = "বিশ্বের যেকোনো জায়গায় রাখা যেতে পারে।",
		hostage_2 = "হোস্টেজ ২",
		hostage_2_description = "বিশ্বের যেকোনো জায়গায় রাখা যেতে পারে।",

		director_chair = "পরিচালক চেয়ার",
		director_chair_description = "বিশ্বের যেকোনো জায়গায় রাখা যেতে পারে। চমৎকার সুবিধাজনক সীট।",
		beach_chair = "সমুদ্র সৈকতের চেয়ার",
		beach_chair_description = "বিশ্বের যেকোন জায়গায় রাখা যায়। ভ্রমণে সুখদ আসন।",
		green_fishing_chair = "সবুজ মাছ ধরার চেয়ার",
		green_fishing_chair_description = "বিশ্বের যেকোন জায়গায় রাখা যায়। ভ্রমণে সুখদ আসন।",
		blue_fishing_chair = "নীল মাছ ধরার চেয়ার",
		blue_fishing_chair_description = "বিশ্বের যেকোন জায়গায় রাখা যায়। ভ্রমণে সুখদ আসন।",

		tire_wall = "টায়ারের ওল",
		tire_wall_description = "যখন আপনার কভার দরকার হবে কিন্তু কোন নেই।",

		claymore = "ক্লেমোর",
		claymore_description = "পুরোপুরি ব্যক্তি নিরসন করে ফেলতে একমাত্র আন্তিজানবদ্ধবোধক খাদ্য।",

		tv_stand = "টিভি স্ট্যান্ড",
		tv_stand_description = "চাইলে যেকোনো জায়গায় একটি টিভি প্রভৃতি করতে এটি ব্যবহার করুন।",
		tv_remote = "টিভির রিমোট",
		tv_remote_description = "ইউনিভার্সাল রিমোট (কোয়ান্টাম ব্যাটারি অন্তর্ভুক্ত নয়)।",

		firework_rocket = "ফাঁকা রকেট",
		firework_rocket_description = "একটি সাধারণ ফাঁকা রকেট। জুলাই ৪ তারিখের জন্য বিশাল।",
		firework_battery = "ফাঁকা ব্যাটারি",
		firework_battery_description = "ফাঁকা ব্যাটারি। প্রতিস্থাপন করে চারটি ফাঁকা।",

		pole = "হলুদ তলতলের স্তম্ভ",
		pole_description = "যারা আপনাকে বিরতি দেখিয়ে দেয়, তাদেরকে এই পোল দিয়ে ধ্বংস করতে পারেন।",

		gasoline_bottle = "গ্যাসোলিন বোতল",
		gasoline_bottle_description = "আপনার গাড়ির পূর্ব পরিবর্তন করতে এবং....আপনার নিজেকে করে নিতে একটি দ্রুত পূর্বাভাস করতে এই বোতলটি ব্যবহার করতে পারেন?",

		radio_jammer = "রেডিও জ্যামার",
		radio_jammer_description = "প্রবেশ করছে যেকোন প্রকারের ট্রান্সমিশন এবং বিদ্যমান ট্রান্সমিশন যবহার বন্ধ করা এবং জ্যাম করা এর জন্য এই উপকরণটি একটি আদর্শ নির্বাচন।",

		winner_trophy = "বিজয়ী ট্রফি",
		winner_trophy_description = "আপনি সেরা!",

		treasure_map = "খজনা মানচিত্র",
		treasure_map_description = "একটি ফেডেড এবং ওয়াদপ্রদ মানচিত্র যা গোপনীয়ভাবে সংগৃহীত ধনের মূল্য নির্ণয়ে সহায়তা করে। এই ক্রিপ্টিক সূত্রগুলি বোঝার জন্য যানবাহনটি চালিয়ে তারপর ট্রেজার প্রাপ্তির জন্য যাত্রা করতে হবে। সম্ভবতঃ সঞ্চারটি বিপজ্জনক এবং চাওয়া বা চোরটি প্রসঙ্গটি উন্নয়ন করতে পারে।",
		treasure_map_piece = "সংগ্রহকৃত মানচিত্রের টুকরো",
		treasure_map_piece_description = "একটি বড় খোঁজার মানচিত্রের ছিটকে টোর্ন ফ্র্যাগমেন্ট, হারিয়ে গেছে কিংবা স্বজন প্রতি সাজে গোপন করা হয়েছে। এতে মধ্যে একটি সুষ্ঠু রহস্য, একটি জিগস পাজল আছে। সকল টুকরো সংগ্রহ করুন, মানচিত্র সংঘটিত করুন এবং কোনও দীর্ঘকাল হারিয়ে গেছে খোঁজের রহস্যগুলি আনলক করুন। প্রতিপক্ষী খোঁজক এবং অপ্রত্যাশিত অবরোধগুলির জন্য সাবধান থাকুন!",

		flag = "পতাকা",
		flag_description = "এটি সুবিধাজনকভাবে ধরে রাখুন!",

		black_dildo = "কালো ডিলডো",
		black_dildo_description = "আমরা আবশ্যকতানুসারে স্বাক্ষর প্রাপ্ত করব",
		pink_dildo = "গোলাপী ডিলডো",
		pink_dildo_description = "বাগসি মিডলম্যান দ্বারা হাতে তৈরি, কাটা এবং পরীক্ষিত।",

		bean_coffee = "বিন কফি",
		bean_coffee_description = "বিন পানি .... সবকিছুই হক!!",
		cappuccino = "ক্যাপুচিনো",
		cappuccino_description = "ব্রেস্ট মিল্ক দিয়ে এক্সপ্রেসো, আমি ব্রেস্ট মিল্ক বলছিলাম, আবারও ব্রেস্ট মিল্ক ...",
		espresso = "এস্প্রেসো",
		espresso_description = "একটি সাদা ছোট কাপে আপনার বাড়ির সব উর্জা প্রদান করার যথেষ্ট সম্ভব।",
		cream_cookie = "ক্রিম বিস্কুট",
		cream_cookie_description = "ক্রিমি হাতে তৈরি, যেমন আপনি পছন্দ করেন।",
		cheesecake = "চীজকেক",
		cheesecake_description = "চীজ দিয়ে তৈরি কেক নয় শুধুমাত্র চিন্তা না করুন।",
		chocolate_cake = "চকোলেট কেক",
		chocolate_cake_description = "সেরা কোকো বিন দিয়ে তৈরি সুস্বাদু কেক।",
		cupcake = "কাপকেক",
		cupcake_description = "শক্তিশালী একটি কেক যা উজ্জ্বল এক হরিণের ক্রিম দিয়ে সম্পূর্ণ উপরে ঢেকে দেয়া হয়।",
		pink_lemonade = "গোলাপী লেবুর শরবত",
		pink_lemonade_description = "এটি আমরা আপনাকে দিবে না যে এটি পানি লেবুর সাথে ফিক্স করে রঙ করেছি, যাতে আপনার দ্বিতীয়বার টাকা বেশি খরচ হয় না ...",

		irish_coffee = "আইরিশ কফি",
		irish_coffee_description = "ওরিজিনাল আইরিশ উইস্কি দিয়ে তাজা কফি বানানো হয়েছে।",

		chip_10 = "৳10 চিপ",
		chip_10_description = "একটি বাজি উপস্থাপন করে। বাজিখেলার জন্য ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা একত্রীকরণ করা যেতে পারে।",
		chip_50 = "৳50 চিপ",
		chip_50_description = "একটি বাজি উপস্থাপন করে। বাজিখেলার জন্য ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা একত্রীকরণ করা যেতে পারে।",
		chip_100 = "৳100 চিপ",
		chip_100_description = "একটি বাজি উপস্থাপন করে। বাজিখেলার জন্য ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা একত্রীকরণ করা যেতে পারে।",
		chip_500 = "৳500 চিপ",
		chip_500_description = "একটি বাজি উপস্থাপন করে। বাজিখেলার জন্য ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা একত্রীকরণ করা যেতে পারে।",
		chip_1000 = "৳১০০০ টাকা চিপ",
		chip_1000_description = "জুয়ার চিপ। জুয়া খেলা করতে ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা কনভার্ট করা যেতে পারে।",
		chip_5000 = "৳৫০০০ টাকা চিপ",
		chip_5000_description = "জুয়ার চিপ। জুয়া খেলা করতে ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা কনভার্ট করা যেতে পারে।",
		chip_10000 = "৳১০০০০ টাকা চিপ",
		chip_10000_description = "জুয়ার চিপ। জুয়া খেলা করতে ব্যবহার করা যেতে পারে। আইটেমটি ক্যাসিনোতে টাকা কনভার্ট করা যেতে পারে।",

		grubs = "মাছকে  ধরার জন্য গরমাগোলাপী",
		grubs_description = "মাছ ধরার জন্য অনুশীলনযোগ্য।",
		leeches = "জুকামুকি",
		leeches_description = "মাছধরার জন্য সমৃদ্ধ।",
		earthworms = "পৃথিবী কীট",
		earthworms_description = "মাছধরার জন্য সমৃদ্ধ।",
		fishing_rod = "মাছধরার ছড়া",
		fishing_rod_description = "মাছধরার জন্য সমৃদ্ধ।",
		raw_meat = "কাঁচা মাংস",
		raw_meat_description = "তাজা মাংসের ভাঁড়।",
		cooked_meat = "পরিবেশিত মাংস",
		cooked_meat_description = "একটি তাজা মাংস যা সম্প্রতি রান করা হয়েছে।",
		burnt_meat = "অসহায় মাংস",
		burnt_meat_description = "একটি বেশ হয়ে যাওয়া মাংস।",
		leather = "চামড়া",
		leather_description = "হরিণ থেকে একটি সুন্দর চামড়া জমা করা হয়েছে।",
		wood = "বাঁশের একটি টুকরো",
		wood_description = "বাঁশ থেকে আতিসবুজ একটি টুকরো।",
		charcoal = "কাঠকোয়ালা",
		charcoal_description = "সাধারণ কয়লার চেয়ে উন্নত।",

		beef_jerky = "গরুর মাংসের ঝুরটি",
		beef_jerky_description = "কিছু চমৎকার গরুর মাংসের টুকরো।",
		oreos = "বার্থডে-কেক আড়ো কুকিজ",
		oreos_description = "একটি স্বাদস্থলকে আনন্দ দেওয়া কুকিজ যা বার্থডে-কেকের একটি নথি রাখে।",
		nerds_chunks = "নার্ডস টুকরো",
		nerds_chunks_description = "একটি বস্তা নার্ডস গামি ক্লাস্টার, বিস্ময়কর!",
		reeses_pieces = "রিসেস পিসেস",
		reeses_pieces_description = "একটি পারফেক্ট স্ন্যাক যখন আপনি একটি সামান্য কাউকাটা হচ্ছেন, তবে খাবার না খেতে চাই না।",
		kettle_chips = "কেটল চিপস (হানি-বিবিকিউ)",
		kettle_chips_description = "বিশ্বের সেরা চিপস।",
		cheetos = "চিটোস",
		cheetos_description = "আপনার গেমিং সেশনের জন্য সেরা স্ন্যাক।",
		peanuts = "লবনযুক্ত মুঙ্গফলি",
		peanuts_description = "একটি মুড়মাকড় স্ন্যাকের জন্য উপযুক্ত একটি ক্যান।",

		rice = "ধান",
		rice_description = "পোঁটাল ও নরম ধানের দানা।",
		nori = "নরি",
		nori_description = "এটা সমুদ্র সস কিন্তু ফ্যান্সি।",
		soy_sauce = "সয়া সস",
		soy_sauce_description = "সয়া সস একটি সেভারি কন্ডিমেন্ট যা একটি সমৃদ্ধ উমামী ফ্লেভার সহজে মেরিনেড, সিজনিং এবং ডুকস সহ পারফেক্ট, এবং কম ক্যালরি এবং উচ্চ প্রোটিন যুক্ত।",
		eggs = "ডিম",
		eggs_description = "বহুমুখী এবং পুষ্টিকর ডিমগুলি ওমলেট, কুইচ এবং পাকা খাবারের জন্য উত্তম।",
		lime = "লেবু",
		lime_description = "টেস্টি এবং ভিটামিন সি থেকে ধনী, লেবু পানীয় এবং মেরিনেড, ড্রেসিংস ইত্যাদির জন্য জেস্ট যোগ করে।",
		coconut = "নারকেল",
		coconut_description = "মিষ্টি এবং ক্রিমি, নারকেল ডেজার্ট, কারি এবং স্মুদিজ এর উন্নয়ন করে। ডাব.",
		sugar = "চিনি",
		sugar_description = "এটি কোকেইন নয় কিন্তু গৈরকানুনি এবং আপনাকে ডায়াবেটিস দেয়।",

		golf_ball = "গল্ফ বল",
		golf_ball_description = "গল্ফ খেলার জন্য ব্যবহার করা হয়।",
		golf_ball_yellow = "হলুদ গলফ বল",
		golf_ball_yellow_description = "গলফ খেলার জন্য ব্যবহৃত হয়।",
		golf_ball_orange = "কমলা গলফ বল",
		golf_ball_orange_description = "গলফ খেলার জন্য ব্যবহৃত হয়।",
		golf_ball_pink = "গোলাপী গলফ বল",
		golf_ball_pink_description = "গলফ খেলার জন্য ব্যবহৃত হয়।",

		gas_mask = "গ্যাস মাস্ক",
		gas_mask_description = "সমস্ত ধরণের গ্যাস থেকে আপনাকে রক্ষা করবে, এমনি দাদিমার দুষ্টু বাঁশি থেকেও।",
		nv_goggles = "রাতের দৃশ্য উন্মুক্তকরণ দৃষ্টি",
		nv_goggles_description = "আন্ধকারে দেখতে সাহায্য করবে।",
		thermal_goggles = "থার্মাল দৃষ্টি ছাই",
		thermal_goggles_description = "দেওয়াল পার দেখতে সাহায্য করবে (আসলে না হেহে)..",

		green_rolls = "সবুজ রোল",
		green_rolls_description = "যারা গড় থেকে বেশি দরকার তাদের জন্য।",
		rolling_paper = "রোলিং পেপার",
		rolling_paper_description = "সেপে পরিচালন করতে এবং আপনার ব্যথা দূর করতে ধীর পেপার।",

		arena_pill = "এরিনা পিল",
		arena_pill_description = "একটি অদ্ভুত গোল যা আরও অদ্ভুত কিছু করে ... স্বয়ংক্রিয়তা খাওয়ায় ভয়ে থাকুন। বিপদজনক স্বপ্ন থেকে রক্ষা করার জন্য গান সহজ হতে পারে।",

		shovel = "কুদাল",
		shovel_description = "যে কোন পরিবেশে গোপন ধন খুঁজে বের করার জন্য একটি দৃঢ় খনন সরঞ্জাম, এটি সক্রিয় খনি বাস্তবায়নের জন্য একটি মূলযুক্ত সম্পদ, এটি আদর্শ একটি সম্পদ হাঁটকের জন্য।",

		electric_fuse = "ইলেকট্রিক ফিউজ",
		electric_fuse_description = "হেইস্ট ঘরগুলির জন্য ইলেকট্রিক ফিউজ একটি প্রয়োজনীয় জিনিস। এটি কীকার্ড লক সক্রিয় করতে ফিউজ বক্সে রাখতে হবে।",
		keycard_green = "সবুজ কীকার্ড",
		keycard_green_description = "মেডিকেল সাপ্লাই ভারপূর্তি সম্পর্কিত স্টোরেজ খোলার জন্য ব্যবহৃত হয়।",
		keycard_blue = "নীল কীকার্ড",
		keycard_blue_description = "প্রযোজ্য সম্পূর্ণ প্রযুক্তিগুলি সংগ্রহ করা স্টোরেজ খুলতে ব্যবহৃত হয়।",
		keycard_red = "লাল কীকার্ড",
		keycard_red_description = "একটি আখবারী খোলার জন্য ব্যবহৃত হয়।",

		magazine = "ম্যাগাজিন",
		magazine_description = "একটি ম্যাগাজিন।",

		bank_rockfish = "ব্যাঙ্ক রকফিশ",
		black_and_yellow_rockfish = "কালো এবং হলুদ রকফিশ",
		black_rockfish = "কালো রকফিশ",
		blackgill_rockfish = "কালচে ফাঁদ রকফিশ",
		blackspotted_rockfish = "কালোচে ঢোকানো রকফিশ",
		blue_rockfish = "নীল রকফিশ",
		bocaccio = "বোকাচিও",
		bronzespotted_rockfish = "ব্রোঞ্জ ও ঢোকানো রকফিশ",
		brown_rockfish = "ব্রাউন রকফিশ",
		cabezon = "কাবিজোন",
		calico_rockfish = "ক্যালিকো রকফিশ",
		california_scorpionfish = "ক্যালিফোর্নিয়া স্কর্পিয়নফিশ",
		canary_rockfish_variant_1 = "কানারি রকফিশ (ভেরিয়েন্ট 1)",
		canary_rockfish_variant_2 = "কানারি রকফিশ (ভেরিয়েন্ট 2)",
		chilipepper_rockfish = "চিলি পেপার রকফিশ",
		china_rockfish = "চাইনা রকফিশ",
		copper_rockfish_variant_1 = "কপার রকফিশ (ভেরিয়েন্ট 1)",
		copper_rockfish_variant_2 = "কপার রকফিশ (ভেরিয়েন্ট 2)",
		cowcod = "কাউকড",
		darkblotched_rockfish = "ডার্কব্লটচড রকফিশ",
		deacon_rockfish = "ডিকন রকফিশ",
		dusky_rockfish_dark_version = "ডাস্কি রকফিশ (গা ভার্সন)",
		dusky_rockfish_light_version = "ডাস্কি রকফিশ (হালকা ভার্সন)",
		flag_rockfish = "ফ্লাগ রকফিশ",
		gopher_rockfish = "গোফার রকফিশ",
		grass_rockfish_dark_version = "গ্রাস রকফিশ (গা ভার্সন)",
		grass_rockfish_light_version = "গ্রাস রকফিশ (হালকা ভার্সন)",
		greenblotched_rockfish = "গ্রিনব্লচড রকফিশ",
		greenspotted_rockfish = "গ্রিনস্পটেড রকফিশ",
		greenstriped_rockfish = "গ্রিনস্ট্রাইপড রকফিশ",
		halfbanded_rockfish = "হাফব্যান্ডেড রকফিশ",
		honeycomb_rockfish = "হানিকম্ব রকফিশ",
		kelp_greenling_female = "কেল্প গ্রীনলিং (স্ত্রী)",
		kelp_greenling_male = "কেল্প গ্রীনলিং (পুরুষ)",
		kelp_rockfish = "কেল্প রকফিশ",
		lingcod = "লিংকড",
		olive_rockfish = "অলিভ রকফিশ",
		pacific_ocean_perch = "প্যাসিফিক ওশন পার্চ",
		pacific_sand_sole = "প্যাসিফিক স্যান্ড সোল",
		pacific_sanddab = "প্যাসিফিক স্যান্ড্যাব",
		quillback_rockfish_variant_1 = "কুইলব্যাক রকফিশ (ভাড়তি ১)",
		quillback_rockfish_variant_2 = "কুইলব্যাক রকফিশ (ভাড়তি ২)",
		redbanded_rockfish = "রেডব্যান্ডেড রকফিস",
		rock_sole = "রক সোল",
		rosy_rockfish = "রোসি রকফিস",
		rougheye_rockfish = "রোগ আই রকফিস",
		shortraker_rockfish = "শর্টরেকার রকফিস",
		silvergray_rockfish = "সিলভারগ্রে রকফিস",
		speckled_rockfish = "স্পেকলড রকফিস",
		squarespot_rockfish = "স্কোয়ারস্পট রকফিস",
		starry_flounder = "স্টারি ফ্লাউন্ডার",
		starry_rockfish = "স্টারি রকফিস",
		tiger_rockfish_dark_version = "টাইগার রকফিস (ডার্ক ভার্সন)",
		tiger_rockfish_pink_version = "টাইগার রকফিস (পিংক ভার্সন)",
		treefish = "ট্রি ফিশ",
		vermilion_rockfish = "ভার্মিলিয়ন রকফিশ",
		widow_rockfish = "উদ্ধত রকফিশ",
		yelloweye_rockfish_adult = "হলুদ অন্তর রকফিশ (প্রাপ্ত বয়স্ক)",
		yelloweye_rockfish_juvenile = "হলুদ অন্তর রকফিশ (কিশোর)",
		yellowtail_rockfish = "হলুদ পিটা রকফিশ",

		bank_rockfish_description = "ব্যাঙ্ক রকফিশ হল ছোট মাথা, স্পাইন সম্পন্ন অভিযান্তা। তার রঙ ডাস্টি লাল বা লাল-বাদামি সবুজ রঙিন, অধিকাংশ সময়ে সঙ্গে ল্যাটারাল লাইনের সাথে একটি গোলাকার পিঙ্ক অরেঞ্জ জোন রয়েছে এবং শরীর এবং পিনী অংশের উপর কালো ডটিং রয়েছে।",
		black_and_yellow_rockfish_description = "সেবাস্টেস কৃষ্ণহলকলো নামে পরিচিত, বিস্তৃতি দক্ষিণ ও দক্ষিণপশ্চিম শতাব্দীসমকালীন প্রশান্ত মহাসাগরে, ক্যালিফোর্নিয়া এবং বাজা ক্যালিফোর্নিয়া এর উপস্থিত রকম জায়গায় পাওয়া যায়।",
		black_rockfish_description = "কালো রক মাছ, যা বিভিন্ন নামে পরিচিত, যেমন কালো সীপার্চ, কালো বাস, কালো রক কড, সি বাস, কালো স্ন্যাপার এবং প্রশান্ত মহাসাগরের প্রতিনিধিত্ব করে, সেটাকে উপপরিবার সিবাস্টিনে, রকফিশ এর সাবফ্যামিলি এর উপস্থিতি রয়েছে, যা পরিবার Scorpaenidae এর অংশ।",
		blackgill_rockfish_description = "যখন অটর ট্রলস এবং লংলাইন সরঞ্জাম ব্যবহার করে ওয়াশিংটনের উপসাগরে উপস্থিত থাকে, তখন কখনও ধরা যায়। ক্যালিফোর্নিয়ার উপসাগরে একসাময় ধরা হত।<br><br> ছোট প্রকারগুলি অফশোরে পাওয়া যায়, কিন্তু বয়স্ক ব্ল্যাকগিলগুলি গভীর জলে চলে যায়।",
		blackspotted_rockfish_description = "সেবাস্টেস মেলানোস্টিকস, কালোচক্ষিদার পাথরচ্ছটা, উপপ্রজাতি সেবাস্টিনে, পরিবার স্করপিনিডের অংশ। এটি উত্তর পৃথিবীর উত্তরের অধিকাংশ অধিস্থল উপসাগরে পাওয়া যায়।",
		blue_rockfish_description = "ব্লু রকফিশ বা ব্লু সিপার্চ হল একটি মহাসাগরীয় শিং মাছ যা উপপরিবার Sebastinae, রকফিশেস উপগোষ্ঠীতে এবং পরিবার Scorpaenidae এর অংশ। এটি উত্তরপূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়, উত্তর বাজা ক্যালিফোর্নিয়া থেকে কেন্দ্রীয় অরেগনে পর্যন্ত। <br> <br> কেবলমাত্র নদী প্রবেশগুলিতে পাওয়া হয়, নদীগুলিতে সরাসরি না।",
		bocaccio_description = "বোকাকো রকফিশ হল একটি মহাসাগরীয় শিং মাছ যা উপপরিবার Sebastinae, রকফিশেস উপগোষ্ঠীতে এবং পরিবার Scorpaenidae এর অংশ। এটি উত্তরপূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়। <br> <br> এছাড়াও \"রেড স্ন্যাপার\" নামে পরিচিত।",
		bronzespotted_rockfish_description = "সেবাস্টিস জিলি, ব্রনজস্পটেড রকফিশ, পরিবার স্কোরপেনিদের অংশ হিসাবে সাবফ্যামিলি সেবাস্টিনে, রকফিশের সমন্বয়ে একটি মাছের প্রজাতি। এটি পূর্ব মধ্যপ্রস্থ প্রশান্ত মহাসাগরে পাওয়া যায়।",
		brown_rockfish_description = "কফি ব্রনজ সীপার্চ, চকোলেট বাস, ব্রাউন বাস এবং ব্রাউন বোম্বার ইত্যাদি অন্যান্য নামগুলির মধ্যে ব্রাউন রকফিশ, একটি মাছের প্রজাতি, যা সাবফ্যামিলি সেবাস্টিনে এবং পরিবার সকোপেনিদের অংশ। এটি উত্তরপূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।",
		cabezon_description = "ক্যাবেজন উত্তর আমেরিকার প্রশস্ত প্রশস্ত প্রশস্তের একটি বড় প্রজাতি। দ্বন্দ্ব নাম লক্ষণীয়ভাবে \"স্কর্পিয়ন মাছ\", সত্য স্কর্পিয়নমাছ সম্পর্কিত পরিবার Scorpaenidae সম্পর্কিত।",
		calico_rockfish_description = "Sebastes dallii, ক্যালিকো রকফিশ, সাবফ্যামিলি Sebastinae এর একটি মহাসাগরিক কাঁচামাছ প্রজাতি, পরিবার Scorpaenidae এর অংশ। এটি পূর্ব মধ্য প্রশান্ত মহাসাগরে পাওয়া যায়। <br> <br> পুরুষ ক্যালিকো সাত বছর বয়স হওয়ার পর প্রথম বার যৌনতা অর্জন করে, যখন স্ত্রীরা নয় তখন নয় নববর্ষে যৌনতা অর্জন করে।",
		california_scorpionfish_description = "সকরপানা গুটটা ক্যালিফোর্নিয়া স্কর্পিয়নফিশ নামেও পরিচিত একটি মাছের প্রজাতি। এটি পূর্ব প্রশান্ত মহাসাগরের জৈব বৈচিত্র্যের একটি অংশ এবং ক্যালিফোর্নিয়া এবং বাজা ক্যালিফোর্নিয়ার তীরে পাওয়া যায়।",
		canary_rockfish_variant_1_description = "ক্যানারি রকফিশ, যা কমন নামে অরেঞ্জ রকফিশ হিসাবেও পরিচিত, একটি মাছের প্রজাতি, যা সাবফ্যামিলি সেবাস্টিনে, রকফিশ, অংশ উদ্ভট পরিবার স্কোর্পিওনিডের অংশ। এটি পশ্চিম উত্তর আমেরিকা এর প্রশান্ত মহাসাগরের জলসমুদ্র উপস্থিতির জন্য জানা হয়।",
		canary_rockfish_variant_2_description = "মহাসাগরিক একজন প্রবাসী রে ফিন মাছের একটি প্রকার ক্যানারি রকফিশ, যা উপপরিবার সেবাসটিনের একটি সদস্য, স্করপেনিডি পরিবারের অংশ। পশ্চিম উত্তর আমেরিকার প্রাণবন্ত পৃথিবীর মহাসাগর জলসমূহে এই প্রজাতির উপস্থিতি রয়েছে।",
		chilipepper_rockfish_description = "মহাসাগরিক একজন প্রবাসী রে ফিন মাছের একটি প্রকার সেবসটস গুডই বা চিলিপেপার রকফিশ এবং চিলিপেপার, যা উপপরিবার সেবাসটিনের একটি সদস্য, স্করপেনিডি পরিবারের অংশ। এই প্রজাতি পশ্চিম উত্তর আমেরিকার তীরদেশের বাইজা ক্যালিফোর্নিয়া থেকে ভেনকুভার পর্যন্ত বসবাস করে।",
		china_rockfish_description = "চাইনা রকফিশ, ইয়েলোস্ট্রাইপ রকফিশ বা ইয়েলোস্পটেড রকফিশ একটি সমুদ্র জীবাণুর প্রজাতি যা উপপরিবার্তন ভালুক উপপরিবার্তন গ্রমপশ্চিম উত্তর আমেরিকার প্রাণীদের বাসভুমি। এটি পরিবার স্কোরপেনিডের অংশ, রকফিশের উপপরিবার্তন বিভাগের সম্প্রদায় অন্তর্ভুক্ত।",
		copper_rockfish_variant_1_description = "কপার রকফিশ, যা কপার সিপারেচ নামেও পরিচিত, একটি সমুদ্র জীবাণুর প্রজাতি যা উপপরিবার্তন ভালুক উপপরিবার্তন বিভাগের সম্প্রদায় অন্তর্ভুক্ত, রকফিশের। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।<br><br>এগুলি সাধারণ সমুদ্রে কখনও দেখা যাবে না, কারণ সেগুলি কেবল সমুদ্রের সমান্তরালে বা তলস্থানের কাছে থাকতে চায়।",
		copper_rockfish_variant_2_description = "তামা পাহাড়ি মাছ, যা কপার সিপরিচ হিসেবেও পরিচিত, উপ-পরিবার সেবাস্টাইনি, রকফিশেস এর সদস্য, এবং পরিবার স্কর্পিনিডে অংশীদার। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।<br><br>এদের প্রকৃত অবস্থান সমূহ জেনেরিক সমুদ্রগুলিতে কখনই দেখা যাবে না কারণ তারা কেবল সমুদ্রের সামনে বা নিচে থাকার জন্য পছন্দ করে।",
		cowcod_description = "সেব্যাস্টেস লেভিস, কাউকড বা গাভী পাহাড়ি মাছ, উপ-পরিবার সেবাস্টাইনি, রকফিশেস এর সদস্য, এবং পরিবার স্কর্পিনিডে অংশীদার মারিন রে ফিন মাছের একটি প্রকার। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।<br><br>আকারে পার্থক্য আরোহণশীলতা তৈরি করে।",
		darkblotched_rockfish_description = "ডার্কব্লটচড রকফিশ, ব্ল্যাকব্লটচড রকফিশ, ব্ল্যাকমাউথ রকফিশ এবং ব্লটচি নামেও পরিচিত, একটি গভীরবহুল মাছ।",
		deacon_rockfish_description = "সিবাস্ট ডায়াকোনাস, ডিকন রকফিশ হল উপকুল সেবাস্টিনি, রকফিশের পরিবারের একটি প্রজাতি, যা কর্পা পরিবারের অংশ। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।<br><br>পুরুষের স্ত্রীর চেয়ে সর্বদা বেশি দয়ালু থাকবে।",
		dusky_rockfish_dark_version_description = "সিবাস্টেস সিলিয়াটাস একটি রকফিশের প্রজাতি এবং ধূসর রকফিশ নামেও পরিচিত। সাধারণতঃ এটি উত্তর পুবেন মহাসাগরে পাওয়া যায়।",
		dusky_rockfish_light_version_description = "সেবাস্টেস সিলিয়াটাস বা ডাস্কি রকফিশ হল একটি স্পিশিস অফ রকফিশ যা সাধারণত উত্তর প্রশান্ত মহাসাগরে পাওয়া যায়।",
		flag_rockfish_description = "সেবাস্টেস রুব্রিভিংক্টাস বা ফ্ল্যাগ রকফিশ, স্প্যানিশ ফ্ল্যাগ, রেডব্যান্ডেড রকফিশ অথবা বারবারপোল হল একটি সমুদ্রজল রে ফিন মাছের একটি প্রজাতি যা স্কপ্রানিডে পরিবারের সাবফ্যামিলি সেবাস্টিনের অংশ। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।",
		gopher_rockfish_description = "গোফার রকফিশ বা গোফার সি পার্চ হল একটি সমুদ্র দৈর্ঘ্যবিশিষ্ট মাছের একটি প্রজাতি যা স্কপ্রানিডে পরিবারের সাবফ্যামিলি সেবাস্টিনের অংশ। এটি প্রধানতঃ ক্যালিফোর্নিয়ার পূর্বে পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।",
		grass_rockfish_dark_version_description = "সেবাস্টিস রাস্ট্রেলিজার, ঘাস মাছ, পরিবার স্কর্পেনিডের অংশ ইংরেজি নামঃ Sebastes rastrelliger, বর্ণনামূলকভাবে মহাসাগরিক সাপাট পাখা পালক মাছের পরিবারের সেবাস্টিনি উপপরিবারের জন্যও পরিচিত। পূর্ব প্রশান্ত মহাসাগরের জলস্থলে এটি প্রবাসী।<br><br>অধিকাংশ সময় হুক এবং লাইন গিয়ার ব্যবহার করে রিক্রিয়েশনাল এ্যাংলারদের দ্বারা সচল উৎস হিসাবে ব্যবহৃত হয়।",
		grass_rockfish_light_version_description = "সেবাস্টিস রাস্ট্রেলিজার, ঘাস মাছ, পরিবার স্কর্পেনিডের অংশ ইংরেজি নামঃ Sebastes rastrelliger, বর্ণনামূলকভাবে মহাসাগরিক সাপাট পাখা পালক মাছের পরিবারের সেবাস্টিনি উপপরিবারের জন্যও পরিচিত। পূর্ব প্রশান্ত মহাসাগরের জলস্থলে এটি প্রবাসী।<br><br>অধিকাংশ সময় হুক এবং লাইন গিয়ার ব্যবহার করে রিক্রিয়েশনাল এ্যাংলারদের দ্বারা সচল উৎস হিসাবে ব্যবহৃত হয়।",
		greenblotched_rockfish_description = "গ্রীনব্লটচ রকফিশ একটি ডিমার্সাল প্রজাতি যা সলিটারি ব্যক্তিদের হিসাবে বা ছোট গোষ্ঠিসমূহে পাথর স্ট্রাকচারের মধ্যে 55 মিটার (180 ফুট) ও 490 মিটার (1,610 ফুট) এর মধ্যে গভীরতার সাথে পাওয়া জায়। তারা সর্বাধিক 54 সেমি (21 ইঞ্চি) দৈর্ঘ্য অর্জন করে, যার মধ্যে মহিলা পুরুষের চেয়ে বৃহত্তর হয়।<br><br>গ্রীনব্লটচ, গ্রীনস্পটেড এবং গ্রীনস্ট্রাইপ্ড সবই একই গুণাবলী এবং আচরণ ভাগ করে।",
		greenspotted_rockfish_description = "সেবাস্টেস ক্লোরোস্টিকস, গ্রীনস্পটেড রকফিশ হল মহাসাগরিক রে ফিন মাছের একটি প্রজাতি, যা উপপরিবার Sebastinae, রকফিশ এর উপপরিবারে এবং পরিবার Scorpaenidae এর অংশ। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।<br><br>গ্রীনব্লটচ, গ্রীনস্পটেড এবং গ্রীনস্ট্রাইপ্ড সবই একই গুণাবলী এবং আচরণ ভাগ করে।",
		greenstriped_rockfish_description = "সেবেস্টেস ইলঙ্গাটাস, গ্রীনস্ট্রাইপড রকফিশ, স্ট্রাইপড রকফিশ, ষ্ট্রবেরি রকফিশ, পয়নসেটাস, রেইনা বা সেরেনা, বিশ্বজনিত সমুদ্র প্রাণী গোটা স্যাকরোপেনিডে অংশগ্রহণ করে, অংশগ্রহণকারী সমূহের মধ্যে সেবস্টিনি, রকফিশের উপকুলে প্রতিনিধিত্ব করে। এটি উত্তরপূর্বী প্রশান্ত মহাসাগরে পাওয়া যায়।<br><br>গ্রীনব্লটচড, গ্রীনস্পটেড এবং গ্রীনস্ট্রাইপ সবগুলো একই বৈশিষ্ট্য এবং আচরণ ভাগ করে।",
		halfbanded_rockfish_description = "সেবেস্টেস সেমিসিন্টাস, হাফব্যান্ডেড রকফিশ, সমুদ্রের সানাই মাছের বিভাগ সেবস্টিনি, রকফিশের পরিবার স্করপেনিডের একটি প্রজাতি। এটি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।",
		honeycomb_rockfish_description = "হানিকোম্ব রকফিশ একটি কমপক্ষে গুচ্ছময় শরীর সম্পন্ন কিংবা মানকাকটির 35% থেকে 39% প্রকৃতির প্রস্থ। তাদের কাঁটাময় হাড় লম্বা কিন্তু ঘন আচছাদপূর্ণ। তাদের রঙ তামা, বাদামী বা লালচে বর্ণবিত এবং তাদের সাইডের ওপরে 4 থেকে 6টি সাদা ছত্রাকে অস্বচ্ছতাভাবে ছড়িয়ে ছড়িয়ে রয়েছে।",
		kelp_greenling_female_description = "মেয়েরা বীনা গ্রিনলিং সম্পূর্ণ প্রস্তুত করে তাদের ওপর ছোট, লাল বাদামী থেকে সোনালি-জলপায়ের ছত্রাকে ছড়িয়ে ফেলে। ফিন সাধারণত হল হলুদ-কমলার বর্ণ। নরেরা হল হলুদ থেকে বাদামী বা ব্রাউনিশ অলিভেশনে পরিণত হয়, তাদের শরীরের সামনের দিকে নীল ছত্রাক অব্যবস্থিত উল্লেখযোগ্য অংশ ছাড়াও। <br> <br> 328 ফুটের তলায় এর চেয়ে কম জলে সাধারণত পাওয়া যায়।",
		kelp_greenling_male_description = "স্ত্রী ও পুরুষ উভয়ই চোখের উপরে ছোট ঝাঁকির মতো একটি কুষ্ঠিগ ফাঁদ আছে। পুরুষ কেলপ গ্রীনলিং ব্রাউনিশ-অলিভ থেকে গ্রে রঙের, তার পিঠ এবং মাথায় কালো সীমানাবদ্ধ নীল ডটগুলি আছে। এই প্রজাতির দৈর্ঘ্য ৬০ সে.মি. হতে পারে।<br><br>৩২৮ ফুটের চেয়ে কম গভীর জলস্থলে সবচেয়ে সাধারণভাবে পাওয়া যায়।",
		kelp_rockfish_description = "সিবাস্টাস এট্রোভাইরেন্স বা কেল্প রকফিশ, পরিবাপের কুল সিকোরপেনিডের উপপরিবার সেবাস্টিন পরিবারের এক প্রজাতি। এটি মার্কিন যুক্তরাষ্ট্রের ক্যালিফোর্নিয়া এবং মেক্সিকোর বাজা ক্যালিফোর্নিয়া উপসাগরে জীবিত থাকে।",
		lingcod_description = "লিঙ্গকড় উগ্র হিংসক এবং 80 পাউন্ড (35 কেজি) ও দৈর্ঘ্যে 60 ইঞ্চি (150 সেমি) মাপ করতে পারে। এর বৃত্তাকার মাথায় 18 টি করিমট ডান্ডা দেখতে পাওয়া যায়। তাদের রঙ চলচ্চিত্রিক, সাধারণতঃ গাধার বাদাম বা পাথর রঙের ছত্রাকারে উপস্থিত হয়।",
		olive_rockfish_description = "অলিভ রকফিশ, একান্ত নিউজিল্যান্ডের ইন্টারটাইডল জোনে এবং খোঁজা হয় কম পানির সময় চট্টান চুল্লের পুলে মাত্র, পরিবাহী পরিবার প্লেসিওপিডের একটি লম্বা পিংল। মাছটি উপস্থিত হয় এক্ষেত্রে সর্বাধিক 30 সেমির লম্বা হওয়া সম্ভব।",
		pacific_ocean_perch_description = "প্রশান্ত মহাসাগরিক একধরনের মাছ, যা প্রশান্ত মহাসাগরে বৃত্তান্তভাবে ছড়িয়ে প্রবাস করে। দক্ষিণ ক্যালিফোর্নিয়া থেকে উত্তর হনসু, জাপান পর্যন্ত, সমগ্র প্রশান্ত রিম এবং বেরিং সাগর সম্পূর্ণ পর্যায় এর সীমা উল্লেখযোগ্য। এর অন্যান্য নাম হল: প্রশান্ত রকফিশ, রোজ মাছ, রেড ব্রিম বা রেড পার্চ।",
		pacific_sand_sole_description = "প্রশান্ত বালুটির একধরনের মাছ যা উত্তর প্রশান্ত মহাসাগরে রহে। এটি বিশ্বের একমাত্র প্রজাতি Psettichthys এর। এর বিস্তৃতি বেরিং সাগর হতে শুরু করে এবং Northen ক্যালিফোর্নিয়া পর্যন্ত পর্যবেক্ষণ করা যায় যেখানে এটি সিমেন্ট নিউনসে সবুজ বালুতে জীবন যাপন করে।",
		pacific_sanddab_description = "প্যাসিফিক স্যান্ড্যাব একটি সমতলপাখির প্রজাতি। এটি একটি মাত্র স্যান্ড্যাব, এবং এর আবাসস্থল দুটি আর স্যান্ড্যাব - লংফিন স্যান্ড্যাব এবং স্পেকলড স্যান্ড্যাব সহযোগিতা করে। এটি একটি মাঝামাঝি আকারের সমতলপাখি, হালকা খকন রঙ যা কালো বা কালো বাদাম, সময়ে সময়ে সাদা বা কমলা ছত্রাক দিয়ে মিশিমি হয়।",
		quillback_rockfish_variant_1_description = "কুইলবেক রকফিশ, জানা হয় একটি সমুদ্রী রে ভিন্ন প্রজাতির মাছগুলির একটি প্রজাতি। এই প্রজাতি প্রধানতঃ লবণ জলে থাকে। গড় বয়স প্রায় ২-৭ পাউন্ড এবং দৈর্ঘ্যে ১ মিটার পর্যন্ত হতে পারে। ক্যালিফোর্নিয়াতে গড়ের জন্য এই প্রজাতি ১৫ বছর জীবিত থাকে। কানাডা এর চারপাশে এই প্রজাতি কমপক্ষে ৯৫ বছর জীবিত থাকে। এটি প্রমান করে দেয় যে CA>US।",
		quillback_rockfish_variant_2_description = "কুইলব্যাক রকফিশ, আরও জানা হয় কুইলব্যাক সিপার্চ, উপপরিবার সেবেস্টিনে, পরিবার স্করপেনিডের অংশ একটি মাছের প্রজাতি। এই প্রজাতি প্রাথমিকভাবে লবণযুক্ত জল ক্ষেত্রে বাস করে। গড় প্রাপ্ত প্রাপ্ত বয়সশোধী মাত্র 2-7 পাউন্ড এবং দৈর্ঘ্যের সীমা কমপক্ষে 1 মিটার পর্যন্ত। <br><br> ক্যালি এলাকায়, এই জীবাণুদ্রব্য জীবিত থাকে 15 বছর। কানাডায় এলাকায়, এই জীবাণুদ্রব্য ন্যূনতম 95 বছরের জন্য জীবিত থাকে। এটি CA> US প্রমাণ করা।",
		redbanded_rockfish_description = "রেডবান্ডেড রকফিশ, একটি মাছের প্রজাতি যা দক্ষিণ পুরবে পাসিফিক মহাসাগরে পাওয়া যায়। সেবেসটিনের উপপরিবার রকফিশ সন্তানবত্সরের সম্প্রতি প্রস্তুত মাছের একটি প্রজাতি , পরিবার স্করপেনিডের অংশ। এই জীবাণুদ্রব্যটি উত্তর পুরব মহাসাগরে পাওয়া যায়।",
		rock_sole_description = "রক সোল (লেপিডোপসেটা বিলিনেটা) পরিবার Pleuronectidae এর একটি ফ্ল্যাটফিশ। এটি একটি ডেমার্সাল মাছ যা সৈকত এবং গুঁড়ি ফাঁদে জীবন যাপন করে এবং 575 মিটার (1,886 ফুট) এর গভীরতায় পায় হতে পারে, তবে এটি সাধারণতঃ 0 এবং 183 মিটার (0 এবং 600 ফুট) এর মধ্যে সবচেয়ে বেশি পাওয়া যায়।",
		rosy_rockfish_description = "সেবাস্টেস রোসেসিউস, একটি প্রজাতি মেরিন রে-ফিনড মাছ, সাবফ্যামিলি Sebastinae এর সদস্য, রকফিশেস পরিবার Scorpaenidae এর অংশ। এটি পূর্ব পৃষ্ঠভাগ প্রশান্ত মহাসাগর এ পাওয়া যায়।",
		rougheye_rockfish_description = "রফিয়ে রকফিশ সেবাস্টেস গণের একটি রকফিশ। এর অন্যতম নাম হল ব্ল্যাকথ্রোট রকফিশ বা ব্ল্যাকটিপ রকফিশ এবং দৈনিক বিস্তার পাওয়ার সর্বাধিক পরিমাণে সরু হয়ে যায়, আইজিএফএ রেকর্ড ওজন হল ১৪ পাউন্ড ১২ আউন্স।",
		shortraker_rockfish_description = "প্রাপ্তবয়স্ক হওয়ার সাথে সাথে শর্টবেল রকফিশ একটি সবচেয়ে বড় রকফিশ প্রজাতি। জলমধ্যে তারা হালকা গোলাপী, গোলাপ-কমলা বা লাল রঙের ইঙ্গিতে আছে স্পষ্টতার সাথে কোথাও কোথাও ছিটকেছে দাগ ও স্যাডেল। সবগুলো পিঠচিত্রে কিছু কিছু কালো হতে পারে এবং বাম দিকের চরণটি সাদা ধ্বংসপাত হতে পারে। মৌখ লাল এবং কালো ছাপ থাকতে পারে।<br><br>শর্টবেল রকফিশ পৃথিবীতে সর্বদা বেঁচে থাকতে পারে, এটি প্রমাণ হয়েছে যে এটি ১৫৭ বছর পর্যন্ত বৃদ্ধি হতে পারে।",
		silvergray_rockfish_description = "সিলভারগ্রে রকফিশ হল একটি স্লিম রকফিশ প্রজাতি যার মাথার কাঁটা হল হ্রাসকৃত। তাদের ধোঁয়া অন্ধকারে ছাই রঙের এবং তাদের নিচের জবার একটি দীর্ঘ এবং উপরের জবারের প্রকাশিত হয়। তাদের নিচের জবারের শীর্ষে একটি প্রখ্যাপনমূলক সিম্‌ফিসিয়াল নবল রয়েছে।",
		speckled_rockfish_description = "সেবাস্টেস অভ্যালিস, এর উপশঙ্খু সেবাস্টিনি, পরিবার স্কর্পেনিডের একটি সমুদ্র উপসাগর মাছ প্রজাতি। ইস্পাতিন বিরাট অঞ্চল পূর্ব প্রশান্ত মহাসাগরের গভীর পাথর সমুদ্র অঞ্চলে পাওয়া যায়।",
		squarespot_rockfish_description = "স্কোর্পানিড পরিবারের অংশ হিসাবে সাবফ্যামিলি সেবাস্টিন, রকফিশের সাবফ্যামিলির জাতি হিসাবে মারিন ফিশের একটি প্রজাতি হল স্কোয়ারস্পট রকফিশ। এই প্রজাতি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।",
		starry_flounder_description = "স্টারি ফ্লাউন্ডার, লং-নোজড ফ্লাউন্ডার নামেও পরিচিত, উত্তর প্রশান্ত মহাসাগরের প্রান্তদের চারপাশে পাওয়া একটি সাধারণ ফ্ল্যাটফিশ।",
		starry_rockfish_description = "স্বর্ণাবক রকফিশ, বা স্পটেড কর্সেয়ার, স্পটেড রকফিশ, চাইনাফিশ এবং রেড রক কড নামেও পরিচিত, স্কোর্পানিড পরিবারের অংশ হিসাবে সাবফ্যামিলি সেবাস্টিন, রকফিশের সাবফ্যামিলির জাতি হিসাবে মারিন ফিশের একটি প্রজাতি হলেন। এই প্রজাতি পূর্ব প্রশান্ত মহাসাগরে পাওয়া যায়।",
		tiger_rockfish_dark_version_description = "বাঘ রকফিশ অথবা বাঘ সিপারচ, ব্যান্ডেড রকফিশ এবং ব্ল্যাক-ব্যান্ডেড রকফিশ হল একটি মাছের প্রজাতি যা উপপরিবার সেবস্টিনে, রকফিশগুলির উপপরিবার, এবং পরিবার স্করপেনিডের অংশ। এটি পশ্চিম উত্তর আমেরিকার প্রশান্ত মহাসাগরের জলসমুহ উপস্থিত।",
		tiger_rockfish_pink_version_description = "বাঘ রকফিশ অথবা বাঘ সিপারচ, ব্যান্ডেড রকফিশ এবং ব্ল্যাক-ব্যান্ডেড রকফিশ হল একটি মাছের প্রজাতি যা উপপরিবার সেবস্টিনে, রকফিশগুলির উপপরিবার, এবং পরিবার স্করপেনিডের অংশ। এটি পশ্চিম উত্তর আমেরিকার প্রশান্ত মহাসাগরের জলসমুহ উপস্থিত।",
		treefish_description = "ট্রি ফিশ দক্ষিন পূর্ব মহাসাগরে অবস্থিত একটি মাছের প্রজাতি যা উপপরিবার সেবাসটিন উপপরিবারের পর্যায়, রকফিশেস, পরিবার স্করপেনিডের সাধারণ নাম ট্রি ফিশ।",
		vermilion_rockfish_description = "সেবাস্টেস মিনিয়েটাস, ভার্মিলিয়ন রকফিশ, ভার্মিলিয়ন সীপার্চ, লাল স্ন্যাপার, লাল রক কড়ি এবং র্যাশার, উপপরিবার সেবাসটিন উপপরিবারের পর্যায়, রকফিশেস, পরিবার স্করপেনিডের একটি সমুদ্রজীবী মাছের প্রজাতি।",
		widow_rockfish_description = "ওয়িডো রকফিশ বা ব্রাউন বোমার সেবাসটিন উপপরিবারের পর্যায়, রকফিশেস, পরিবার স্করপেনিডের একটি সমুদ্রজীবী মাছের প্রজাতি যা উত্তর-পূর্ব পাসিফিক ওশনে পাওয়া যায়।",
		yelloweye_rockfish_adult_description = "হলদে চোখ ডোরের মাছ প্রজাতি হল জাতি সামুদ্রিক বিহ্বল মাছের একটি প্রজাতি, যা উপপরিবর্তক সেবাস্টাইন এ অন্তর্ভুক্ত, রকফিশের একটি জাতি, জীবাশ্ম পরিবারের অংশ। এটি সেবাস্টাসের সবচেয়ে বড় সদস্যগুলির একজন এবং এর নাম এর রঙের উপাদান থেকে উত্থিত।",
		yelloweye_rockfish_juvenile_description = "হলদে চোখ ডোরের মাছ প্রজাতি হল জাতি সামুদ্রিক বিহ্বল মাছের একটি প্রজাতি, যা উপপরিবর্তক সেবাস্টাইন এ অন্তর্ভুক্ত, রকফিশের একটি জাতি, জীবাশ্ম পরিবারের অংশ। এটি সেবাস্টাসের সবচেয়ে বড় সদস্যগুলির একজন এবং এর নাম এর রঙের উপাদান থেকে উত্থিত।",
		yellowtail_rockfish_description = "সেবাস্টেস ফ্ল‍্যাভিডাস, হালকা পীচ বা সেপারিশ বোঝায় একটি মহাসাগরীয় চারপিন্জরী মাছ। এই প্রজাতি পরিবার Scorpaenidae এর সাবফ্যামিলি Sebastinae এর অংশ হিসাবে গণ্য এবং পাথরজ পর্বতীয় মাছগুলির সাথে সম্পর্কিত। এই প্রজাতি মূলত পাশ্চাত্য উত্তর আমেরিকা এর তটবেশে ক্রমশঃ ক্যালিফোর্নিয়া থেকে আলাস্কায় বাস করে।<br><br> লার্ভা এবং প্রদ্বীপস্থ অধিক জীবন বিতায়ন করে, যখন প্রজননকাল এবং যুবজন পূর্ণ শব্দে থাকে, তখন প্রাপ্তবয়স্করা গন্ধমূল পাথর শিলামুড়ির উপর গভীর জলায় থাকে।",

		weapon_dagger = "পুরাতন সাইফ ড্যাগার",
		weapon_bat = "বেসবল ব্যাট",
		weapon_bottle = "ভাঁজ পাত্র",
		weapon_crowbar = "ক্রোবার",
		weapon_unarmed = "হাত",
		weapon_flashlight = "ফ্ল্যাশলাইট",
		weapon_golfclub = "গল্ফ ক্লাব",
		weapon_hammer = "হামার",
		weapon_hatchet = "কুঁটিনাটি",
		weapon_knuckle = "ফোঁটা হাতের বাঁশ",
		weapon_knife = "ছুরি",
		weapon_machete = "মাছেটি",
		weapon_switchblade = "সুইচব্লেড",
		weapon_nightstick = "নাইটস্টিক",
		weapon_wrench = "পাইপ মোজাই",
		weapon_battleaxe = "যুদ্ধ কুঁটিনাটি",
		weapon_poolcue = "পুল কিউ",
		weapon_stone_hatchet = "পাথর কুঁটিনাটি",
		weapon_candycane = "ক্যান্ডি কেইন",

		weapon_pistol = "পিস্তল",
		weapon_pistol_mk2 = "পিস্তল এমকে টু",
		weapon_combatpistol = "কম্বাট পিস্তল",
		weapon_appistol = "এপি পিস্তল",
		weapon_stungun = "স্টান গান",
		weapon_pistol50 = "পিস্তল .50",
		weapon_snspistol = "এস এন এস পিস্তল",
		weapon_snspistol_mk2 = "এস এন এস পিস্তল এমকে টু",
		weapon_heavypistol = "হেভি পিস্তল",
		weapon_vintagepistol = "ভিন্টেজ পিস্তল",
		weapon_flaregun = "ফ্লেয়ার গান",
		weapon_marksmanpistol = "মার্কসম্যান পিস্তল",
		weapon_revolver = "হেভি রিভলভার",
		weapon_revolver_mk2 = "হেভি রিভলভার এমকে টু",
		weapon_doubleaction = "ডাবল অ্যাকশন রিভলভার",
		weapon_raypistol = "আপ-ন-অ্যাটমাইজার",
		weapon_ceramicpistol = "সেরামিক পিস্তল",
		weapon_navyrevolver = "নৌবাহিনী রিভলভার",
		weapon_gadgetpistol = "পেরিকো পিস্তল",
		weapon_stungun_mp = "স্টান গান (এমপি)",
		weapon_pistolxm3 = "ডাবল মাগাজিন ২৯ পিস্তল",

		weapon_microsmg = "মাইক্রো এসএমজি",
		weapon_smg = "এসএমজি",
		weapon_smg_mk2 = "এসএমজি মার্ক II",
		weapon_assaultsmg = "হামলার এসএমজি",
		weapon_combatpdw = "কম্ব্যাট পিডাব্লিউডি",
		weapon_machinepistol = "মেশিন পিস্তল",
		weapon_minismg = "মিনি এসএমজি",
		weapon_raycarbine = "অসম্ভব হেল ব্রিংগার",

		weapon_pumpshotgun = "পাম্প শটগান",
		weapon_pumpshotgun_mk2 = "পাম্প শটগান এমকে II",
		weapon_sawnoffshotgun = "সরানো শটগান",
		weapon_assaultshotgun = "হামলা শটগান",
		weapon_bullpupshotgun = "বুলপাপ শটগান",
		weapon_musket = "মাসকেট",
		weapon_heavyshotgun = "ভারী শটগান",
		weapon_dbshotgun = "ডাবল ব্যারেল শটগান",
		weapon_autoshotgun = "সুইপার শটগান",
		weapon_combatshotgun = "যুদ্ধ শটগান",

		weapon_assaultrifle = "হামলা রাইফেল",
		weapon_assaultrifle_mk2 = "হামলা রাইফেল এমকে II",
		weapon_carbinerifle = "কার্বাইন রাইফেল",
		weapon_carbinerifle_mk2 = "কার্বাইন রাইফেল এমকে II",
		weapon_advancedrifle = "উন্নয়নকৃত রাইফেল",
		weapon_specialcarbine = "বিশেষ কারবাইন",
		weapon_specialcarbine_mk2 = "বিশেষ কারবাইন এমকে II",
		weapon_bullpuprifle = "বুলপাপ রাইফেল",
		weapon_bullpuprifle_mk2 = "বুলপাপ রাইফেল এমকে II",
		weapon_compactrifle = "কমপ্যাক্ট রাইফেল",
		weapon_militaryrifle = "সেনাবাহিনী রাইফেল",
		weapon_heavyrifle = "ভারী রাইফেল",
		weapon_tacticalrifle = "সার্ভিস কারবাইন",

		weapon_mg = "এমজি",
		weapon_combatmg = "যুদ্ধ এমজি",
		weapon_combatmg_mk2 = "যুদ্ধ এমজি এমকে II",
		weapon_gusenberg = "গুসেনবার্গ সুইপার",

		weapon_sniperrifle = "স্নাইপার রাইফেল",
		weapon_heavysniper = "হেভি স্নাইপার",
		weapon_heavysniper_mk2 = "হেভি স্নাইপার এমকে - II",
		weapon_marksmanrifle = "মার্কসম্যান রাইফেল",
		weapon_marksmanrifle_mk2 = "মার্কসম্যান রাইফেল এমকে - II",
		weapon_precisionrifle = "প্রিসিশন রাইফেল",

		weapon_rpg = "আরপিজি",
		weapon_grenadelauncher = "গ্রেনেড লঞ্চার",
		weapon_grenadelauncher_smoke = "ধোঁয়া গ্রেনেড লঞ্চার",
		weapon_minigun = "মিনিগান",
		weapon_firework = "ফায়ারওয়ার্ক লঞ্চার",
		weapon_railgun = "রেলগান",
		weapon_hominglauncher = "হোমিং লঞ্চার",
		weapon_compactlauncher = "সংকোচিত গ্রেনেড",
		weapon_rayminigun = "উইডোমেকার",
		weapon_emplauncher = "সংকোচিত ইএমপি লঞ্চার",
		weapon_stinger = "আরপিজি",
		weapon_railgunxm3 = "কয়ল রেলগান",

		weapon_grenade = "গ্রেনেড",
		weapon_bzgas = "বিজেড গ্যাস",
		weapon_molotov = "মলোটভ ককটেল",
		weapon_stickybomb = "স্টিকি বোম্ব",
		weapon_proxmine = "প্রক্সিমিটি মাইন",
		weapon_snowball = "তুষারপাতস্ফোটক",
		weapon_pipebomb = "পাইপ বোম্ব",
		weapon_ball = "বেসবল",
		weapon_smokegrenade = "ধোঁকা গ্যাস গ্রেনেড",
		weapon_flare = "ফ্লেয়ার",
		weapon_acidpackage = "এসিড প্যাকেজ",

		weapon_petrolcan = "পেট্রোল ক্যান",
		gadget_parachute = "প্যারাশুট",
		weapon_fireextinguisher = "আগুন নির্বাপক",
		weapon_hazardcan = "ঝুঁকিপূর্ণ পেট্রোল ক্যান",
		weapon_fertilizercan = "উর্বরক ক্যান",

		red_parachute = "লাল প্যারাশুট",
		blue_parachute = "নীল প্যারাশুট",
		black_parachute = "কালো প্যারাশুট",

		weapon_dagger_description = "আপনি একটি সেঁচে পাইরেট-চিক দেখছেন, কিন্তু কোন ক্রুর হত্যার যন্ত্র এটি সম্পূর্ণ করতে? একটি সংরক্ষিত হিল্ট সঙ্গে এই কাকাতুয়া পান।",
		weapon_bat_description = "লেদার গ্রিপ সহ এলুমিনিয়াম বেইসবল ব্যাট। সক্ষম হিসেবে হালকা এবং শক্তিশালী। সকল বড় হিটারদের জন্য।",
		weapon_bottle_description = "এটি বুদ্ধিমান নয় এবং না সুন্দর কিন্তু, সর্বসাধারণতঃ ছুরি দিয়ে আপনার পায়ে আসা লোককেও না। সব থাকলে, এটি কাজটি সম্পন্ন করে।",
		weapon_crowbar_description = "উন্নয়নযোগ্য কাজের জন্য এলোমিনিয়াম ক্রোবারের বেশি লিভারেজ পেতে উচ্চ মানের হার্ডওয়ার ইস্পাত থেকে নির্মিত হেভি ডিউটি ক্রোবার।",
		weapon_unarmed_description = "সকল কিছু ব্যর্থ হলে, হাত ব্যবহার করে কাজ করুন এবং যা আপনার বানান আছে তা ব্যবহার করুন।",
		weapon_flashlight_description = "একটি সংক্ষিপ্ত পরবর্তী, ব্যাটারি চালিত লাইট সোর্স দিয়ে অন্ধকারের আপনার ভয়ঙ্করতা বাড়ান। ফোকুস হয় একটি ঠিকানায়, ফরিং ফোর্স ট্রামা এর জন্য সুবিধাজনক।",
		weapon_golfclub_description = "মাঝবিন্দুস্থ লেংথ, রাবার গ্রিপ সম্পন্ন একটি স্ট্যান্ডার্ড মিড আয়রন গল্ফ ক্লাব যা একটি লেথাল শর্ট গেমের জন্য ব্যবহৃত হয়।",
		weapon_hammer_description = "একটি শক্তিশালী, বহুউপযোগী হাতুড়ি যা কাঠের হ্যান্ডল এবং বাঁকা ক্লজ সহ একটি প্রাচীন ক্লাসিক। এটি এখনো প্রতিযোগিতা জিতে নিশ্চিত।",
		weapon_hatchet_description = "একটি সহজে নিয়ন্ত্রণ করা ও গোপনিয়তা করা যায় একটি হ্যাচেট দিয়ে আপনার বন্ধুদের কে বাউরির উপসর্গ এ রুপান্তর করে ফেলুন।",
		weapon_knuckle_description = "সোনার দাঁত নামানোর জন্য একটি উত্তম যন্ত্র, বা সব কিছু রাখতে এমন ট্রফি পার্টনারকে উপহার হিসেবে।",
		weapon_knife_description = "এই কার্বন স্টিলের 7 ইঞ্চি ব্লেডযুক্ত ছুরি দ্বিতীয় বিন্দুতে এবং থোঁটনি পিঠে স্যারেটেড চরম সরঞ্জাম সহ দুইটি এজড হয়ে থাকে, যা স্ট্যাবিং এবং থ্রাস্টিং ক্ষমতা উন্নয়নের জন্য সুবিধা দেয়।",
		weapon_machete_description = "আমেরিকার পশ্চিম আফ্রিকান হস্তশিল্প কেবল প্রদানের জন্য নয়। এই ধূসর ক্লিভার দিয়ে সরল জীবন ফিরে আসুন।",
		weapon_switchblade_description = "আপনার জিবনটি অন্য ব্যক্তি এর রিবস্থল থেকে আপনার জেবটি দুটি হাতের দোকান থেকে থেকে মুহুর্তেই আপনার হাতে পরে যেতে পারে: ফোল্ডিং ক্যাটলগ কখনও স্টাইলের থেকে বের হতে পারে না।",
		weapon_nightstick_description = "২৪ ইঞ্চির পলিকার্বনেট সাইড-হ্যান্ডলড নাইটস্টিক।",
		weapon_wrench_description = "পৃথিবীর জীবিত থাকার কাজে এবং সন্ত্রাসপ্রবণ পিতাদের প্রতি সর্বজনীন পছন্দের জিনিস, মহাপ্রলয়ের কথা ভুল হবেন না আপনাকে বলা হলো, যে এটি কিনা কোনও প্রকারের সরঞ্জাম।",
		weapon_battleaxe_description = "যদিও এটি মধ্যযুগীয় ফুট সৈনিকদের, আধুনিক সীমান্ত প্রহরীদের এবং উত্তেজনাপূর্ণ ফুটবল মাতাদের জন্য সুবিধাজনক, তবে এটি আপনার জন্যে সুবিধাজনক।",
		weapon_poolcue_description = "আহ কোন শব্দ তার সাথে তুলনায় নেই যা একটি শিলং ভেঙ্গে হচ্ছে, স্পেশালি তখন যখন এটি অন্যদের কোলার মাথানুযায়ী আক্রমণ করছে।",
		weapon_stone_hatchet_description = "২.৫ মিলিয়ন বছর এআর এন্ডি এবং আমরা এখনো এখানে।",
		weapon_candycane_description = "উৎসবী ক্যান্ডি কেন। এটি কিছুটা চি ল্লি আছে।",

		weapon_pistol_description = "মানদণ্ড হ্যান্ডগান। একটি ০.৪৫ ক্যালিবার যুদ্ধ হ্যান্ডগান যার ম্যাগাজিন ধারণক্ষমতা ১২ রাউন্ড যা ১৬ রাউন্ডে প্রসারিত করা যেতে পারে।",
		weapon_pistol_mk2_description = "বিন্যাস, সাধারণতা, নির্দিষ্টতা: একজনের মুখের একটি সম্প্রসারিত ব্যারেলের চেয়ে কিছু নেই যাতে শান্তি বজায় থাকে।",
		weapon_combatpistol_description = "একটি কমপ্যাক্ট, হালকা সেমি-অটোমেটিক হ্যান্ডগান যা আইন প্রশাসন এবং ব্যক্তিগত রক্ষা ব্যবহারের জন্য উন্নয়ন করা হয়েছে। ১২-রাউন্ড ম্যাগাজিন যা 16 রাউন্ডে প্রসারিত করার বিকল্প রয়েছে।",
		weapon_appistol_description = "উচ্চ প্রবেশদ্বারপূর্ণ, সম্পূর্ণতাবদ্ধ পিস্তল। ম্যাগাজিনে ১৮ রাউন্ড থাকে এবং একটি বিকল্প রুপে ৩৬ রাউন্ডে প্রসারিত করা যেতে পারে।",
		weapon_stungun_description = "পরিবারের জন্য মজার জগতকে জোরদার করুন!",
		weapon_pistol50_description = "ছোট ক্যালিবারের গুলি দিয়ে বড় ক্যালিবারের মানুষকে কখনই লড়াই করবে না।",
		weapon_snspistol_description = "যেমন কনডোম অথবা হেয়ারস্প্রে, এটি আপনার জেবে ফিট হয় একটি রাতের জন্য। একটি ক্লাবে একটি দাম, এটি চাঁদের কর্কশতার সমান বেশি দক্ষ ও দুইগুণ মারাত্মক।",
		weapon_snspistol_mk2_description = "দ অলটিমেট পার্স ফিলার: যদি আপনি সবার জন্য নিজে স্পেশাল করতে চান, তবে এটি আপনার টিকেট।",
		weapon_heavypistol_description = "ম্যাগাজিন বহনকর্তা এবং সেমি-অটোমেটিক হ্যান্ডগান বিশ্বের হেভি-ওয়েট চ্যাম্পিয়ন। প্রত্যেকবার নিখুঁততা এবং গোড়া ফোরাম কাজ।",
		weapon_vintagepistol_description = "আপনি সত্যিই প্রচলিত হাতগুলির প্রয়োজন। এই এস্ক্রিপ্ট হ্যান্ডগান দিয়ে একটি অসাধারণ তুলনায় থাকুন একটি সশস্ত্র ডকানে নিরস্ত হতে।",
		weapon_flaregun_description = "চিহ্নিত সমস্যা বা মদক জয়ের জন্য ব্যবহার করুন। সতর্কতা: স্বতঃপ্রকাশ দাহিত্বের কারণ জনগণের প্রতি সূচিত করছে। ডাকাতিতে একটি অংশ।",
		weapon_marksmanpistol_description = "ঝুঁকিপূর্ণ বিষয়। আপনি এতবার রিলোড করবেন যত বার আপনি শুট করবেন।",
		weapon_revolver_description = "একটি হ্যান্ডগান যা যথাসাধ্য বিরাম গ্রহণ করতে পারে একটি উন্মাদ গোণবিশেষ হরিণ, এবং যদি আপনি বুলেট শেষ হয়ে যান তবে আপনি তাকে মাথায় মারার জন্য ভারী পর্যবেক্ষণ করতে হবে।",
		weapon_revolver_mk2_description = "যদি আপনি এটি উঠতে পারেন তবে এটি আপনি একজনকে ট্রেনযুক্ত সাথে ছুটানোর সমতুল্য হবে।",
		weapon_doubleaction_description = "কারণ কখনই প্রতিশোধ একজনের জন্য সেরা খাবার হল দুই বার বার চমৎকার ভাবে মাথার মাঝে ছয়বার বিন্দু ছুঁই, উজ্জ্বল সফটওয়্যার দ্বারা।",
		weapon_raypistol_description = "রেপাবলিকান স্পেস রেঞ্জারের বিশেষ হাতগুলি, গ্যালাক্টিক সমস্যাসমূহ ব্যতীত: কোন এমু নেই, কোন ম্যাগ নেই, কেবলমাত্র একটি গুরুত্বপূর্ণ শক্তি পাল্সের পরের অন্যটি।",
		weapon_ceramicpistol_description = "তোমার ঠান্ডার নানার সেরামিকগুলি না। ইহুদী বাবার না। যদিও এই ছোট পিস্তলটি তার পার্সে ফিট করবে এবং মেটাল ডিটেক্টর চালানো হবে না।",
		weapon_navyrevolver_description = "একটি সত্যিকার পুরাতন মুজিয়ামপন্থী। তুমি কিভাবে পশ্চিম জয় লাভ করেছ সেটিই জানতে চাও - ধীর রিলোড স্পীড এবং একটি বিশাল হাত কামানার বিরুদ্ধে খুনরোদের দায়িত্ব বিশ্লেষণ।",
		weapon_gadgetpistol_description = "একটি মরণাদ্যায়ক লাফ হাত। আজ যীর মহিমা না। টাইটানিয়াম নাইট্রাইড ফিনিশ না কেন কেন করানো না।",
		weapon_stungun_mp_description = "পরিবারের সাথে মজার রসিকতা!",
		weapon_pistolxm3_description = "৯মিমি গুলি উপর নির্ভরশীল একটি সংকুচিত, হালকা পিস্তল। ক্লোজ রেঞ্জ সম্মুখীন সম্পর্কে খুব কার্যকর।",

		weapon_microsmg_description = "সংকুচিত উপায় উন্নয়ন করে মধ্যম দমন হাই রেট অফ ফায়ার দিয়ে একটি সংযুক্ত ডিজাইন যোগ করে। প্রতি মিনিটে প্রায় 700-900 গুলি।",
		weapon_smg_description = "এটি একটি ভাল দায়িত্বের ছোট দমন বন্দুক হিসাবে জানা হয়। হালকা এবং নির্ভরযোগ্য একটি সাইট এবং 30 রাউন্ড ম্যাগাজিন সম্প্রসারণ সহ উত্তম দক্ষতাসম্পন্ন।",
		weapon_smg_mk2_description = "হালকা ও সংকুচিত একটি বন্দুক যা খুব মেসিলি ঝামেলা দিয়ে মরণস্ফূর্তিতে মারতে পারেঃ গুলি প্রতি মিনিটে প্রায় কমপক্ষে ৭০০-৯০০ টি। ভালভাবে তেজ ট্রিগার ক্লিক করে কোন সীমিত স্থানকে একটি কিল বক্সে পরিণত করুন।",
		weapon_assaultsmg_description = "একটি উচ্চ ক্ষমতা সাবমেশিন গান যা সংকোচক এবং হালকা উভয়। একটি ম্যাগাজিনে একবারে ৩০ গুলি ধারণ করে।",
		weapon_combatpdw_description = "কেউ গুলি হতে পারে না বলে কি ব্যক্তিগত সশস্ত্র যোদ্ধাদের মানবীয় হতে না পারে? আমাদের লবিওস্টদের কারণে কংগ্রেস না বলে ধন্যবাদ। সংযোজিত নিঃশব্দকারী।",
		weapon_machinepistol_description = "এটি পূর্ণতঃ স্বয়ংক্রিয়। এটি আপনার টুইন ইঞ্জিন V8 বাসের স্নেয়ার ট্রাম্পেট: এর বিন্দু-দ্বন্দ্ব শব্দ না হলে সঠিক নয় কোনও ড্রাইভ-বাই।",
		weapon_minismg_description = "বেশি জনপ্রিয় হচ্ছে যা একটি বিশেষজ্ঞ পদক্ষেপ এলাকার বন্যার বাইরে অল্পসংখ্যক লোকদের কথা ভাবছে।",
		weapon_raycarbine_description = "রিপাবলিকান স্পেস রেঞ্জারের বিশেষ। যদি তুমি একটি ছোট সবুজ মানুষকে সবুজ গুলির মতো জাতিসংক্রান্ত মুহূর্তে রূপান্তর করতে চান, তবে এই সিদ্ধান্তটি নেওয়ার একমাত্র আমেরিকান উপায়।",

		weapon_pumpshotgun_description = "সংক্ষিপ্ত পরিসরের যুদ্ধের জন্য আদর্শ শটগান। একটি উচ্চ-প্রজেক্টাইল বিস্তার দীর্ঘ শ্রেণীর লক্ষ্যবোধের ক্ষতিপূরণ করে।",
		weapon_pumpshotgun_mk2_description = "কেবল একটি কিছু পাম্পস একইভাবে ধরতে পারে যা একটি পাম্প ক্রিয়াশীল থাকার চেয়েও খারাপ। সাবধান হওয়া উচিত, রিকইল শটের চেয়েও দূর্ঘটনাপূর্ণ।",
		weapon_sawnoffshotgun_description = "এই একক-ব্যারেল, সাওদ-অফ শটগানটি সম্পূর্ণ সম্প্রসারিতা এবং সম্পূর্ণ কার্যকরতা দ্বারা তার ক্ষমতার শ্রেণী এবং আমুদের ক্ষমতা বাড়ানো হয়।",
		weapon_assaultshotgun_description = "৮ রাউন্ড ম্যাগাজিন এবং উচ্চ ফায়ার রেট সহ পূর্ণ অটোমেটিক শটগান।",
		weapon_bullpupshotgun_description = "এর পাথের দূরত্ব এবং ছড়া দিয়ে এর ধীম পাম্প একটি সুপারিশ। এর পথে যা থাকে তা ধ্বংস করে।",
		weapon_musket_description = "কেবল মাসকেট এবং একটি সুপ্রিমেসি কমপ্লেক্স দিয়ে যুদ্ধ করে, ব্রিটিশ মানুষগুলি পৃথিবীর অর্ধেক অধিকার নিয়ে নেওয়া। সেই বন্দুকটি এখনও কিনুন যা একটি সাম্রাজ্য গড়ে তুলে।",
		weapon_heavyshotgun_description = "কখনই একটি ঘরের সাথে একটি খারাপ গুম্মা তৈরি করা প্রয়োজন হলে জঙ্গি হিসেবে ব্যবহার করা উচিত। কেবল সহজ-পরিস্কার পৃষ্ঠগুলির নকশা ব্যবহার করা যাবে।",
		weapon_dbshotgun_description = "একটি কাজ করুন, ভালোভাবে করুন। আপনার প্রথম গুলি কেন অন্য ব্যক্তিকে একটি সুন্দর মেঘে পরিণত করবে না?",
		weapon_autoshotgun_description = "রাইয়ট কন্ট্রোলের জন্য কতগুলি কার্যকর পরিকল্পনা আপনি আপনার প্যান্টসে টানতে পারেন? ঠিক আছে, দুইটি। কিন্তু এটি অন্যটি হল।",
		weapon_combatshotgun_description = "একটি সেমি-অটোমেটিক শটগান একটি মাত্র আছে যা ফায়ার রেটটি লস সান্তা ফায়ার বেল রিংকিং সেট করে দেয়, এবং আপনি এটি দেখছেন।",

		weapon_assaultrifle_description = "এই মানক হামলা রাইফেলে একটি বড় ক্ষমতাসম্পন্ন ম্যাগাজিন এবং দীর্ঘ দূরত্বের সঠিকতা রয়েছে।",
		weapon_assaultrifle_mk2_description = "একটি সকলকে আবিষ্কার করতে সাহায্য করা হয় একটি সবসময়ের ক্লাসিক: সাধারণত সেটা কাজে লাগিয়ে নেওয়ার পরে সে মানজুষাগুলির ভাষা বলে।",
		weapon_carbinerifle_description = "দীর্ঘদূরের সঠিকতা দিয়ে সংযুক্ত হয়ে থাকা সংখ্যাপটি প্রযোজ্যতা পরিবর্তন না করে, কারবাইন রাইফেল হামলার মাধ্যমে হিট অথবা গুরুত্বপূর্ণ কাজ করা যায়।",
		weapon_carbinerifle_mk2_description = "এটি বিশেষত্বপূর্ণ, আদ্যতানগুলি: আপনি যদি তাদের হাতে সংযোজন কিন্তু না করে বেলনের মাধ্যমে আক্রমণের একটি আক্রমণ প্রদান করতে পারেন না।",
		weapon_advancedrifle_description = "সমস্ত হামলার রাইফেলের মধ্যে সবচেয়ে হালকা এবং সংকোচক এবং এটি সম্পূর্ণ সঠিকতা এবং আগুনের হার সংজ্ঞে কম্প্রমিস না করে।",
		weapon_specialcarbine_description = "একটি মাথানুসার হেটে নেওয়া, চালায় সহজ, জ্বলজ্বলে এবং নিখুঁত একটি সামরিক বন্দুক, যা যে কোনও সংঘর্ষ অবস্থার জন্য অত্যন্ত ব্যবহারযোগ্য।",
		weapon_specialcarbine_mk2_description = "সমস্ত কাজের রাজা এখন একটি গুরুত্বপূর্ণ আপগ্রেড পেয়েছে: মাস্টারের সামনে ঝুঁকন।",
		weapon_bullpuprifle_description = "একটি সমর বন্দুক যা চীন থেকে আমেরিকা হারানো সর্বশেষ আমদানি জানা হয়, এর ব্যালেন্সড হ্যান্ডলিং জানা হয়। এটি অত্যন্ত হালকা এবং অটোমেটিক আগুনে অত্যন্ত নিয়ন্ত্রণযোগ্য।",
		weapon_bullpuprifle_mk2_description = "এত নির্দিষ্ট, এত বিস্ময়কর, এটি একটি গুলিতের মতো নয় বরং একটি সিম্ফনি।",
		weapon_compactrifle_description = "আধা আকার, সমস্ত শক্তি, ডবল সিহুটি: \"আমি কিছু কম্পেনসেশন করছি\" বলতে একটি আরও ঝুঁকিপূর্ণ উপায় নেই।",
		weapon_militaryrifle_description = "এই অত্যন্ত শক্তিশালী হামলা ব্যবস্থাপক সশস্ত্রবাহিনীগুলির জন্য নথিভুক্ত, অদ্বিতীয় দক্ষতার সাথে তৈরি হয়েছে। হ্যাঁ, আপনি এটি কিনতে পারেন।",
		weapon_heavyrifle_description = "ভারী মানে ভালো হয় না? হ্যাঁ, আমরা তাই বলছি।",
		weapon_tacticalrifle_description = "এই ঋতুর জনপ্রিয় হার্ডওয়্যার আইন প্রফেশনালদের, সামরিক কর্মকর্তাদের এবং একজন যে কোনও আইন প্রফেশনালকে নিয়ে সংঘটিত জীবন এর লড়াইতে।",

		weapon_mg_description = "সমস্ত উদ্দেশ্যের জন্য উপযুক্ত মেশিন গান যা দক্ষতাসম্পন্ন পারফরমেন্স সঙ্গে কঠোর ডিজাইন যোগ করে। দীর্ঘ দূরত্ব প্রবেশ ক্ষমতা। বৃহত্তর গ্রুপ বিরোধী খুব কার্যকর।",
		weapon_combatmg_description = "উন্নয়ন করা, সংকোচিত মেশিন গান যা দমনীয় প্রভাবের সাথে উচ্চ দক্ষতার সমন্বয় করে।",
		weapon_combatmg_mk2_description = "শুরুর অবস্থানটি কতটা গুরুত্বপূর্ণ হয়ে যায় তা বোঝার জন্য আপনি কখনওই খুব কিছু নেওয়া যায় না: ভেতরের সতটি বা তার আগের সমস্তটি গননা করতে হবে।",
		weapon_gusenberg_description = "একটি নিষেধাজ্ঞাকের পিস্তল দিয়ে আপনার উপযুক্তি সম্পন্ন করুন। একটি রুসভেল্টের উইন্ডোর থেকে বের করার সাথে সাথে ঠিক দেখে উপযুক্ত বা পিনস্ট্রাইপ সুইট দিয়ে পেয়ে যান।",

		weapon_sniperrifle_description = "প্রযুক্তিগত নাইফ, দূরে অক্ষতার জন্য সুবিধাজনক। পুনরাবৃত্তির গতি এবং খুব কম রেট অফ ফায়ার পরিমাণের বিরুদ্ধে সীমাবদ্ধতা রয়েছে।",
		weapon_heavysniper_description = "বারমিং প্রহরী বন্ধুত্বপূর্ণ দূরত্বের জন্য আর্মর-প্যানট্রে গুলি ব্যবহার করে। এটি লেজার স্কোপ সহ নির্ধারিত।",
		weapon_heavysniper_mk2_description = "দূরে এখনও, সব সময় ঘনিষ্ঠ: যদি আপনি সেই দূরত্ববিশিষ্ট সম্পর্কের জন্য নিরাপদ ভিত্তি খুঁজছেন তবে এটি তা।",
		weapon_marksmanrifle_description = "আপনি কত নিকট থাকুন বা দূরে, এই আয়ুধটি কাজ সম্পাদন করবে। একটি বহু-সীমার টুল টুলসমূহের জন্য।",
		weapon_marksmanrifle_mk2_description = "সেনাবাহিনীর ব্যবহারে \"দি ডিসলোকেটর\" নামে পরিচিত, এই মড সেটটি লক্ষ্য এবং আপনার কন্ধের উপর আঘাত করবে, এক একটি অনুক্রমে।",
		weapon_precisionrifle_description = "একটি রাইফেল পূর্ণতাবাদীদের জন্য। কারণ কেন না সঠিক লক্ষ্য পাশাপাশি, যখন আপনি সুপিরিয়র ফ্রন্টাল জিরাসে মাঝরি করতে পারেন?",

		weapon_rpg_description = "একটি পোর্টেবল, শোল্ডার-লঞ্চড, এন্টি-ট্যাংক হত্যার যন্ত্র যা বিস্ফোরণশীল সন্ত্রাসী বাহুল্য বা বৃহত গোষ্ঠী ধ্বংস করতে ব্যবহার করা হয়। গাড়ি বা বেশি লোকজন ধ্বংস করতে খুব কার্যকর।",
		weapon_grenadelauncher_description = "একটি কমপ্যাক্ট, হালকা গ্রেনেড লঞ্চার সেমি-অটোমেটিক ফাংশনালিটি সহ। এই লঞ্চারটি ১০টি গুলি ধারণ করতে পারে।",
		weapon_grenadelauncher_smoke_description = "স্মোক গ্রেনেড পাওয়া যায়! স্মোক গ্রেনেড পাওয়া যায়! স্মোক গ্রেনেড পাওয়া যায়!\" - অপ্রাহ",
		weapon_minigun_description = "একটি হতাশাজনক ৬-ব্যারেল মেশিন গান জন্য এদের উপযুক্ত হল গ্যাটলিং স্টাইলের ঘূর্ণিঝড় ব্যারেল। খুব উচ্চ আগুনের হার (২০০০ থেকে ৬০০০ রাউন্ড প্রতি মিনিট)।",
		weapon_firework_description = "ফায়ারওয়ার্ক লঞ্চার দিয়ে এই ফায়ারওয়ার্ক লঞ্চার টি হাজারো লোকের আশ্চর্য ও মজা হাসিখুশি উপহার দিতে পারে।",
		weapon_railgun_description = "আপনি যা জানেন তা হল - ম্যাগনেট, এবং এটি টকটকে করে যে কোনও জিনিসকে নষ্ট করে।",
		weapon_hominglauncher_description = "ইনফ্রারেড এবং নির্দেশিত আগুনে মিসাইল লঞ্চার। সকল চলমান লক্ষ্য প্রয়োজনের জন্য।",
		weapon_compactlauncher_description = "উন্নয়নশীল হওয়ার পরামর্শগুলি দেওয়ার মধ্যে ফোকাস গ্রুপগুলি নিয়মিত মডেল ব্যবহার করে বলেছিল যে এটি অতি নির্দিষ্ট হয়ে যায় এবং একটি থ্রটলের জন্য এক হাতে ব্যবহার করতে অসুবিধা হয়। সহজ ফিক্স।",
		weapon_rayminigun_description = "রিপাবলিকান স্পেস রেঞ্জার স্পেশাল। এগো চলে যাও, বলো আমি কিছুর বাদী হচ্ছি। আবার বলো না?।",
		weapon_emplauncher_description = "ড্রোন এবং হেলিকপ্টারকে স্লিপি করতে এটি লাইফ্ট করতে হবে।",
		weapon_stinger_description = "একটি শোল্ডার-লঞ্চ সারফেস-টু-এয়ার মিসাইল লঞ্চার যা শত্রু বিমানবাহী নিষ্ক্রিয় করতে ব্যবহৃত হয়।",
		weapon_railgunxm3_description = "আপনি যা জানতে হবে তা হলো - ম্যাগনেট এবং এটি নির্দোষ জিনিসগুলি ওই জিনিসগুলির উপর নির্ভর করে।",

		weapon_grenade_description = "স্ট্যান্ডার্ড ফ্র্যাগমেন্টেশন গ্রেনেড। পিন টানেন, ফেলেন, তারপর আবর্জনা খুঁজে বের করেন। সমষ্টিগুলি উপকট্টভাবে উত্তেজিত হতে ব্যবহার করা যেতে পারে।",
		weapon_bzgas_description = "যারা আপনাকে ভালো লাগে না তাদের জন্য ব্যবহার করতে হবে।",
		weapon_molotov_description = "অসম্পূর্ণ, তবে খুব দক্ষ একটি অগ্নিশমন সামগ্রী। এই ককটেলের সাথে সুখী ঘড়ি নেই।",
		weapon_stickybomb_description = "একটি প্লাস্টিক বিস্ফোরণী চার্জ রিমোট ডিটোনেটর দিয়ে সরবরাহ করা হয়। ফেলে দেওয়া এবং তারপর সংযুক্ত করা যেতে পারে একটি গাড়ির উপর এবং তারপর ডিটোনেট করা যেতে পারে।",
		weapon_proxmine_description = "এই মোশন সেন্সর ল্যান্ডমাইন দিয়ে আপনার বন্ধুদের একটি উপহার দিন। সক্ষম করার পরে কম সময়ের বিলম্ব।",
		weapon_snowball_description = "একটি বন্ধুত্বপূর্ণ তুষ ঝড়ি জুড়িতে থাকুন এবং সম্প্রদায়ের জন্য একটি প্রিয়জনের মুখোমুখি যুদ্ধে সম্প্রদায়ের সদস্যদের প্রস্তুত থাকুন, তবে সাবধান থাকুন, সেগুলি খুব কঠিন শক্তি পাকে।",
		weapon_pipebomb_description = "মনে রাখুন, এটি আইইডি হিসাবে গন্য হবে না যখন আপনি এটি একটি দোকান থেকে কেনে এবং এটি পার্থিব বিশ্বের একটি দেশে ব্যবহার করেন।",
		weapon_ball_description = "বেব রুথ স্বাক্ষরিত, পুরোপুরি জালি নয়।",
		weapon_smokegrenade_description = "টেয়ার গ্যাস গ্রেনেড, বহুজনের প্রতিরোধ বিঘ্নকারী। দীর্ঘস্থায়ী প্রভাব মারতে মারতে জীবনহানির সৃষ্টি হতে পারে।",
		weapon_flare_description = "এয়ার ড্রপ জন্য ফেলে দিন।",
		weapon_acidpackage_description = "একটি এসিড প্যাকেজ। এটি একটি ক্ষতিগ্রস্ত অবস্থা তৈরি করতে ব্যবহার করুন।",

		weapon_petrolcan_description = "গ্যাসোলিনের একটি পাঠিত যা আগুন লাগানো যেতে পারে।<br><br>পাঁচালী বাকি: ${petrolAmount}%।",
		gadget_parachute_description = "এই নাইলন স্পোর্টস প্যারাশুটের নকশা র‍্যাম-এয়ার প‍্যারাফোয়েল ডিজাইন ধরে নেওয়া হয়েছে যাতে গতি ও দিশার উপর নিয়ন্ত্রণ বেশি হয়।",
		weapon_fireextinguisher_description = "জ্বলন্ত আগুন নির্বাপণার জন্য আগুন নিরোধক বা ধোঁয়ার মেশিন।",
		weapon_hazardcan_description = "একটি গ্যাস ক্যান মতো, কিন্তু উপযোগহীন।",
		weapon_fertilizercan_description = "আপনার ফসলের জন্য কিছুই নেই না হলে ভাল হবে। এটি সাধারণত মাটির প্রাকৃতিক উর্বরতা বাড়ানোর জন্য ব্যবহৃত হয়।",

		red_parachute_description = "সাধারণ প্যারাশুটের মতো, কিন্তু লাল রঙে।",
		blue_parachute_description = "সাধারণ প্যারাশুটের মতো, কিন্তু নীল রঙে।",
		black_parachute_description = "সাধারণ প্যারাশুট বাংলাদেশি কালো রঙে।",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "হান্টিং রাইফেল",
		weapon_addon_huntingrifle_description = "শিকার করার জন্য আপনার গো-টু রাইফেল।",

		weapon_addon_vfcombatpistol = "ভিএফ কমব্যাট পিস্তল",
		weapon_addon_vfcombatpistol_description = "বিস্মিত হতে ও আশাহারা হতে চেষ্টা করতে হবে।",

		weapon_addon_dp9 = "ডি এন্ড পি ৯ পিস্তল",
		weapon_addon_dp9_description = "দি ডাবে দিনের ১২টি সুযোগ।",

		weapon_addon_dutypistol = "SIG Sauer P226",
		weapon_addon_dutypistol_description = "মূল বেতার বিকল্প সংরক্ষণ সিস্টেম।",

		weapon_addon_gardonepistol = "গার্ডোন পিস্তল",
		weapon_addon_gardonepistol_description = "যখন বিশ্বাস নেই, মেগাজিন খালি করুন।",

		weapon_addon_endurancepistol = "এন্ডুরেন্স পিস্তল",
		weapon_addon_endurancepistol_description = "হ্যান্ডগানের ভায়াগ্রা",

		weapon_addon_sentinelshotgun = "সেন্টিনেল শটগান",
		weapon_addon_sentinelshotgun_description = "একদিক গোলমাল বিতরণের জন্য উনিদিশক।",

		weapon_addon_sentinelbbshotgun = "বিনব্যাগ শটগান",
		weapon_addon_sentinelbbshotgun_description = "মজার ব্যাগ মজা।",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "কয়ল স্টান গান",
		weapon_addon_stungun_description = "পূর্ববর্তী সময়ের আনন্দময় বিনোদন জনপ্রিয় করতে জোটে পড়ুন!",

		weapon_addon_mp9 = "বি এন্ড টি এমপি ৯",
		weapon_addon_mp9_description = "ছোট এবং দ্রুতগতির সঙ্গে, এমনকি এই হাতে ধরা ব্যক্তির মতো ...",

		weapon_addon_rc4 = "রেমিংটন আর ৪-সি",
		weapon_addon_rc4_description = "জিন্দানী এবং দ্রুত, আপনার দলে আছের একজন উপাত্ত সঙ্গী। লাল চুলের মানুষটি ধরে না থাকলে।",

		weapon_addon_pp19 = "পি পি-১৯ ভিটয়াজ",
		weapon_addon_pp19_description = "রাশিয়ান প্রশস্ততার সর্বোচ্চ শখ, যে কোনও ধরণের \"রেড\" জন্য উত্তম।",

		weapon_addon_m9a3 = "বেরেটা এম 9এ3",
		weapon_addon_m9a3_description = "আপনি আপনার কাজকে সহজ করার জন্য প্রয়োজনীয় সব জিনিস।",

		weapon_addon_357mag = "357 ম্যাগনাম",
		weapon_addon_357mag_description = "যাতাযাত বন্ধ থেকে জম্বি হত্যাকারী পর্যন্ত এই রেভলভার শেরিফের সেরা বন্ধু।",

		weapon_addon_m870 = "রেমিংটন এম 870",
		weapon_addon_m870_description = "শুধুমাত্র খেলা এবং হান্টিং শটগান, ভালবেসে না দাননিদের হত্যার জন্য ... তা কি?",

		weapon_addon_rpk16 = "আরপিকে-16",
		weapon_addon_rpk16_description = "সবচেয়ে নিরাপদ মেশিন গান যা কখনই বিদ্যমান হবে না, কেবল ট্র্যাকসুটটি ভুলে না যাক।",

		weapon_addon_tacknife = "ইউল্টিমেট ট্যাকটিক্যাল ছুরি",
		weapon_addon_tacknife_description = "শেষমেশ, আপনি লেভেল ১০০ পেঁচে এসেছেন। করনেল অভিমান করতে পারেন।",

		weapon_addon_reaper = "রিপার",
		weapon_addon_reaper_description = "মেছেটের একটি সুন্দর আকর্ষণ।",

		weapon_addon_berserker = "বার্সার্কার",
		weapon_addon_berserker_description = "সুন্দর এক্স।",

		weapon_addon_katana = "কাতানা",
		weapon_addon_katana_description = "নিনজা, হ্যা।",

		weapon_addon_stidvc = "STI DVC 2011",
		weapon_addon_stidvc_description = "ভবিষ্যত এখন পুরাতন হয়ে গেছে, কেবল একটি ছোট ক্যালিবারে...",

		weapon_addon_g36c = "হেকলার এন্ড কোচ G36C",
		weapon_addon_g36c_description = "একটি সাবমেশিন গানের মাত্রার মাপ সঙ্গে পূর্ববহুল পুলিশ এবং সামরিক বিশেষ বাহিনীর জন্য উন্নয়নকৃত একটি স্পেশাল ট্যাক্টিক্যাল অ্যাপ্লিকেশন।",

		weapon_addon_vandal = "রেজিং গেমিং এর ভ্যান্ডাল",
		weapon_addon_vandal_description = "ভ্যালোর্যান্ট এর পগ।",

		weapon_addon_ak74 = "একে-৭৪",
		weapon_addon_ak74_description = "ধৈর্যশীল থাকুন বা তীব্র তালে পাঁচ হাতি।",

		weapon_addon_p320b = "P320",
		weapon_addon_p320b_description = "আমরা আর লন্ডনে নেই ব্রাভ।",

		weapon_addon_mk18 = "এমকে ১৮",
		weapon_addon_mk18_description = "\"আর্মেড থাকো বা মারা খাও\" - জর্জ ওয়াশিংটন (প্রযুক্তিস্থল)",

		weapon_addon_glock = "গ্লক ১৭",
		weapon_addon_glock_description = "দুনিয়ার সবচেয়ে জনপ্রিয় হ্যান্ডগান।",

		weapon_addon_colt = "কোল্ট ১৮৫১ নেভি",
		weapon_addon_colt_description = "মৌলিক রিভলভার, যেটি সবকিছুই শুরু করে।",

		weapon_addon_hk433 = "এইচএনকে ৪৩৩",
		weapon_addon_hk433_description = "এইচএনকে ৪৩৩ হ'কে লার্জ স্কেল জাতীয় বিকাশের জন্য রচিত জার্মান লড়াই বন্ধু।",

		weapon_addon_m6ic = "এলডব্লিউআরসি এম ৬আইসি",
		weapon_addon_m6ic_description = "একটি নিরাপদ বন্দুক যা একজন নিরাপদ ব্যক্তিকে সঙ্গে নিয়ে। কেবলমাত্র ট্র্যাকসুটটি ভুলবেন না",

		weapon_addon_hk416 = "এইচ এন্ড কে 416",
		weapon_addon_hk416_description = "এইচ এন্ড কে 416, অসাধারণ বন্দুকের ফেরারি - সরিষা ও শক্তিশালী, এবং অবশ্যই সর্বদা মুখমন্ডলীকরণ করে। এটি আপনার ট্রিগার ফিঙ্গারের জন্য একজন ব্যক্তিগত প্রশিক্ষকের মতো, তুলে ধরবে ফলস্বরূপ জুদানপূর্ণ ফল। নতুন BFF (সেরা বন্দুক চিরতরের জন্য) সাথে হাই বলো!"
	},

	items = {
		move_to_repair = "গাড়ি মেরামত করতে এখানে যান।",
		repairing_vehicle = "গাড়ি মেরামত করা হচ্ছে",
		using_first_aid_kit = "প্রথম পরিহোর বাকস ব্যবহার করা হচ্ছে",
		using_bandages = "ব্যান্ডেজ ব্যবহার করা হচ্ছে",
		using_ifak = "আইফাক ব্যবহার করা হচ্ছে",
		move_to_wash = "গাড়ি ধুওয়ার জন্য এখানে আসুন",
		vehicle_too_clean = "গাড়িটি পরিষ্কার খুব বেশি হয়ে গেছে এবং ধুয়ে নেয়া যাবে না।",
		move_to_put_fake_plate = "মিথ্যা লাইসেন্স প্লেট পরিমার্জনের জন্য এখানে যান।",
		unable_to_repair = "গাড়ির মেরামত করতে আপনি গাড়ির ভিতরে অন্যদের থাকলে পরিস্থিতি নিয়ন্ত্রণ করতে পারবেন না।",
		failed_lockpicking = "লকপিকিং ব্যর্থ হয়েছে",
		lockpicking_succeeded = "তমকপিকিং সফল হয়েছে।",
		hotwiring_vehicle = "হটওয়ায়ারিং গাড়ি",
		lockpick_broke = "লকপিক ভেঙ্গে গেছে",
		failed_hotwire = "হটওয়ায়ার ব্যর্থ হয়েছে",
		unpacking_green_rolls = "সবুজ রোল ওপেন করা হচ্ছে",
		you_do_not_have_enough_rolling_paper = "আপনার যথেষ্ট রোলিং পেপার নেই।",
		rolling_joint = "জয়েন্ট রোল করা হচ্ছে",
		rolling_joints = "জয়েন্ট রোল করা হচ্ছে",
		changing_license_plate = "লাইসেন্স প্লেট পরিবর্তন হচ্ছে",
		equipping_parachute = "${itemName} পরিপক্ককরণ হচ্ছে",
		lockpicking_vehicle = "লকপিকিং গাড়ি",
		illegal_weather_name = "একটি অবৈধ আবহাওয়া নামে আবহাওয়া যোগ করার চেষ্টা করা হচ্ছে।",
		equipping_body_armor = "শরীর আর্মর পরিধান করা হচ্ছে",
		illegal_burger_shot_delivery_item_id = "একটি বার্গার শট ডেলিভারি আইটেম ব্যবহার করা চেষ্টা করে অনুমোদিত আইটেম আইডি সঙ্গে নিষিদ্ধ।",
		illegal_lighter_item_id = "একটি লাইটার আইটেম ব্যবহার করা চেষ্টা করে অনুমোদিত আইটেম আইডি সঙ্গে নিষিদ্ধ।",
		unable_to_use_lighter_in_vehicle = "আপনি যানবাহনে লাইটার ব্যবহার করতে পারবেন না।",
		not_possible_in_a_vehicle = "এই ক্রিয়াটি যানবাহনে সম্ভব নয়।",
		just_used_bandage = "আপনি একটি প্রথম প্রহর সেবন করেছেন, অন্যটি ব্যবহার করার আগে কিছুক্ষণ অপেক্ষা করুন।",
		drank_gasoline_death = "গ্যাসোলিন হারানো হইছে এবং অসুস্থতার কারণে মারা যাচ্ছেন",
		drank_bleach_death = "ব্লিচ বিষক্ত হওয়া",

		failed_burger_shot_delivery = "Burgershot খাবার নেওয়া ব্যর্থ হয়েছে।",
		failed_bean_machine_delivery = "বীন মেশিন ডেলিভারি খোলতে ব্যর্থ হয়েছে।",

		burger_shot_delivery_empty = "সেই burgershot খাবারটি ফাঁকা হয়ে গেছে।",
		bean_machine_delivery_empty = "সেই বীন মেশিন ডেলিভারিটি ফাঁকা হয়ে গেছে।",

		logs_used_weather_spell_title = "আবহাওয়া যাদু ব্যবহার করা হয়েছে",
		logs_used_weather_spell_details = "${consoleName} আবহাওয়া যাদু ব্যবহার করেছেন `${itemName}`।",

		you_have_used_jail_card = "আপনি একটি 'জেল থেকে বাহির হওয়ার কার্ড' ব্যবহার করেছেন!",
		you_are_not_in_jail = "আপনি জেলে নেই।",

		stored_map_location = "মানচিত্রের অবস্থানটি সফলভাবে আপডেট করা হয়েছে।",
		failed_location_map = "মানচিত্রের অবস্থানটি আপডেট করা ব্যর্থ হয়েছে।",
		updated_waypoint = "মানচিত্রে অবস্থানে পথনির্দেশ সফলভাবে সেট করা হয়েছে।",

		cleared_map = "স্টোর করা মানচিত্রের অবস্থান মুছে দেওয়া হয়েছে।",
		failed_clear_map = "স্টোর করা মানচিত্রের অবস্থান মুছে দেওয়া ব্যর্থ হয়েছে।",
		clear_map_invalid_slot = "ভুল ইনভেন্টরি স্লট।"
	},

	jackpot = {
		press_to_deposit = "অনলাইন জ্যাকপটে জিনিসপত্র জমা দিতে ~INPUT_REPLAY_SHOWHOTKEY~ বোতামটি চাপুন।",
		can_only_withdraw_at_casino = "আপনি কেবলমাত্র ক্যাসিনোতে উত্তোলন করতে পারবেন।",

		jackpot = "জ্যাকপট",
		inventory = "ইনভেন্টরি",
		history = "ইতিহাস",
		no_items_in_inventory = "লক্ষ্য করুন, আপনার ভার্চুয়াল ইনভেন্টরিতে কোন আইটেম নেই।",
		you_can_deposit_at_the_casino = "আপনি ক্যাসিনোতে আইটেম জমা দিতে পারেন।",
		close = "বন্ধ করুন",
		bet = "বাজি লগাও",
		your_chance = "আপনার সুযোগ: ${chance}% ",
		character_bet = "${characterName} ${itemAmount}টি আইটেম দিয়ে $${itemWorth} বাজি লগালেন।",
		pot = "সুরা: $${jackpotWorth}",
		items = "আইটেমস: ${jackpotItemAmount}",
		withdraw = "উত্তোলন করুন (${withdrawAmount})",
		quick_sell = "দ্রুত বিক্রি করুন ($${quickSellWorth})",
		inventory_value = "মূল্য: $${inventoryWorth}",
		inventory_total_items = "মোট আইটেমসমূহ: ${inventoryTotalItems}",
		daily_fee_information = "প্রতিদিন 6AM UTC এ পূর্ণ ষষ্ঠি করোয়া হবে এবং আপনার মোট ইনভেন্টরি মূল্যের 5% এর বেশি মানের আইটেমগুলি একটি 'স্টোরেজ ফি' হিসাবে সরানো হবে।",

		take_fee_no_permissions = "প্লেয়ার সঠিক অনুমতি ছাড়াই জ্যাকপট ফি লাভ করার চেষ্টা করেছে।",
		took_jackpot_fees = "জ্যাকপট ফি গ্রহণ করেছেন। ${inventories} ইনভেন্টরি থেকে যোগ দেওয়া ${removedTotalItems} টি আইটেম মোট $${removedTotalWorth} মূল্যে সরে ফেলেছেন।"
	},

	jail = {
		press_to_leave_jail = "জেল থেকে চলে যাওয়ার জন্য ~INPUT_CONTEXT~ চাপুন।",

		menu_title = "জেল মেনু",
		check_remaining_time = "অবশিষ্ট সময় চেক করুন",
		leave_city = "শহর থেকে বের হোন",
		leave_jail = "জেল থেকে বের হোন",
		close_menu = "মেনু বন্ধ করুন",

		sentence_reduced = "আপনার জামিনটি হ্রাস হয়েছে ${amount} মাসে, আপনার অবশিষ্ট ${remaining} মাস রয়েছে।",
		sentence_over = "আপনার জামিন সমাপ্ত হয়েছে।",
		remaining_time = "অবশিষ্ট সময়: ${remaining} মাস।",
		jailed = "আপনার জামিন ${amount} মাস হয়েছে।",

		mission_help_1 = "ফ্লোর পরিষ্কার করতে ~INPUT_CONTEXT~ চাপুন।",
		mission_help_2 = "কিছু খেতে ~INPUT_CONTEXT~ চাপুন।",
		mission_help_3 = "কাজ শুরু করতে ~INPUT_CONTEXT~ চাপুন।",

		mission_1 = "ফ্লোর পরিষ্কারণ।",
		mission_2 = "স্যানডউইচ খেয়ে হচ্ছেন।",
		mission_3 = "কাজ করছেন।",

		mission_blip = "জেল মিশন"
	},

	kiosks = {
		read_catalog = "ক্যাটালগ পড়তে ~g~${InteractionKey} ~w~চাপুন"
	},

	leashes = {
		press_to_use_leash = "[${InteractionKey}] লিশ ব্যবহার করুন",
		putting_leash_on = "লিশ বন্ধ করা হচ্ছে।",
		press_to_take_leash_off = "[${InteractionKey}] লিশ খুলুন",
		takeing_leash_off = "লিশ খুলছে।"
	},

	letterboxes = {
		press_to_access = "~g~${SeatEjectKey} ~w~চাবি চাপুন যেন ${type} এ প্রবেশ করতে পারেন",
		letterbox_broken = "${type} ভেঙ্গে গেছে।",

		type_letterbox = "চিঠিবাক্স",
		type_newsdisp = "সংবাদ বিতরণকারী",
		type_postbox = "পোস্টবক্স"
	},

	locate = {
		invalid_filter_value = "ফিল্টার ভ্যালু অবৈধ।",
		locate_failed = "${filter} ম্যাচিং এন্টিটি লোকেট করা যায়নি।",
		something_went_wrong = "একটি ইউনিট লোকেশন খুঁজে পাওয়া যায়নি।",
		locate_success = "সফলভাবে ইউনিট লোকেশন সনাক্ত হয়েছে, ফিল্টার মিলান হয়েছে `${filter}`  (${x}, ${y}, ${z}) (ইনস্ট্যান্স = ${instance})।",

		locate_entity_no_permissions = "খেলোয়ার অনুমতি না পেলেই ইউনিট লোকেশন সনাক্ত করার চেষ্টা করেছে।",

		locate_entity_logs_title = "ইউনিট লোকেশন সনাক্তকরণ হয়েছে",
		locate_entity_logs_details = "${consoleName} ইউনিট লোকেশন সনাক্তকরণ চেষ্টা করেছে, ফিল্টার টাইপ `${filterType}` এবং মান `${filterValue}` সঙ্গে।"
	},

	login = {
		exit_city = "শহর ছেড়ে যাও।",
		press_to_exit_city = "শহর ছেড়ে যাওয়ার জন্য টিপুস করুন ~g~${InteractionKey}~w~।",
		bad_words_in_character_creation = "নাম বা স্মৃতিমূলক বিবরণে সম্ভাবিত কোনো খারাপ শব্দ রেখে ক্যারেক্টার তৈরি করার চেষ্টা করেছেন: \"${badWords}\"",
		disallowed_words_in_character_name = "নামটি সম্ভবত খারাপ: \"${characterName}\" দিয়ে ক্যারেক্টার তৈরি করার চেষ্টা করেছেন",
		disallowed_birthday_ban = "জন্মদিনটি সম্ভবত খারাপ: \"${birthday}\" দিয়ে ক্যারেক্টার তৈরি করার চেষ্টা করেছেন",

		welcome_to = "স্বাগতম",
		press = "চাপুন",
		enter = "প্রবেশ করুন",
		to_join = "যোগ দিতে",
		changelogs = "পরিবর্তন লগ",
		fetching_character_data = "ক্যারেক্টার ডেটা নিয়ে আসা হচ্ছে...",
		yes = "হ্যা",
		no = "না",
		exit_game = "গেম বন্ধ করুন",
		are_you_sure_you_want_to_exit = "আপনি কি নিশ্চিত যে আপনি গেম থেকে বের হতে চান?",
		exiting_game = "গেম থেকে বের হচ্ছে...",
		delete_character = "মুছে ফেলুন",
		select_character = "নির্বাচন করুন",
		new_character = "নতুন ক্যারেক্টার",
		empty_slot = "ফাঁকা স্লট",
		male = "পুরুষ",
		female = "মহিলা",
		name = "নাম",
		dob = "জন্ম তারিখ",
		born = "${dob} জন্মগ্রহন করেন",
		gender = "লিঙ্গ",
		cash = "নগদ",
		bank = "ব্যাংক",
		story = "গল্প",
		loading_character = "ক্যারেক্টার লোড হচ্ছে...",
		deleting_character = "ক্যারেক্টার মোছা হচ্ছে...",
		create_character = "চরিত্র তৈরি করুন",
		first_name = "নামের প্রথম অংশ",
		last_name = "নামের শেষ অংশ",
		date_of_birth = "জন্ম তারিখ",
		character_backstory = "চরিত্রের পূর্বজীবন",
		cancel = "বাতিল",
		complete = "সম্পূর্ণ",
		creating_character = "চরিত্র তৈরি করা হচ্ছে...",
		are_you_sure_you_want_to_delete = "আপনি কি নিশ্চিত যে আপনি এই চরিত্রটি মুছতে চান? এই কর্মটি পূর্বানুমেয় করা সম্ভব নয়।",
		stop_download = "ডাউনলোড বন্ধ করুন",
		start_download = "ডাউনলোড শুরু করুন",
		slow_download = "মন্থর ডাউনলোড",
		regular_download = "স্বাভাবিক ডাউনলোড",
		back = "পিছনে যাও",
		copy_license = "লাইসেন্স আইডি অনুলিপি করুন",
		copy_license_success = "কপি হয়েছে!",
		cache_assets = "এসেট ক্যাশ করুন",
		download_assets = "আপনি কি সার্ভারের সর্বমোট এসেটগুলি ডাউনলোড এবং ক্যাশ করতে চান? এটি কিছু বিষয়ে জন্য উপযোগী:",
		cache_assets_less_lag = "সম্ভবতঃ খেয়াল করতে হবে না যে খেলার সময় ল্যাগ স্পাইক, ফ্রেম ব্রেক বা পিং স্পাইক কমে যাবে। এসপেশালি আপনি নিম্ন-শ্রেণীর হার্ডওয়্যারে বা একটি ধীর কানেকশনে থাকলে।",
		cache_assets_crashes = "এটি একটি স্লো ডাউনলোড অপশন ব্যবহার না করে আপনার গেমটি ক্র্যাশ করতে পারে। যদি এটি ঘটে তবে দয়া করে 'স্লো ডাউনলোড' বিকল্পটি ব্যবহার করুন।",
		cache_assets_restart = "সম্পূর্ণ হলে, আমরা আপনার গেম পুনরায় আরম্ভ করার পরামর্শ দিচ্ছি কারণ এটি আপনার এই সেশনের জন্য ল্যাগ সৃষ্টি করতে পারে।",
		cache_assets_disk = "এটি কমপক্ষে কিছুটা ডিস্ক স্টোরেজ নিয়ে নেয়, তাই নিশ্চিত হউন যে উপলব্ধ স্থান রয়েছে। একটি আপডেটের পরে পুরানো ক্যাশে খালাতে সুবিধার জন্য পুরানো ক্যাশ মুছে ফেলা যেতে পারে।",
		vehicles = "গাড়ি",
		objects = "অবজেক্ট",
		peds = "পেডস",
		clothing = "জামা",
		main_menu = "মূল মেনু",
		gta_settings = "জিটিএ সেটিংস",
		discord = "ডিসকর্ড",
		framework = "ফ্রেমওয়ার্ক",
		rules = "সার্ভার নিয়মাবলী",
		notice = "নোটিশ",
		language = "ভাষা",
		support_the_server = "সার্ভার সমর্থন করুন",
		battle_royale = "লড়াই রয়াল",
		arena = "এরিনা",
		queue = "কিউ",
		queue_position_with_priority = "🐌 আপনি ${queuePosition}/${queueTotal} কিউতে ${queuePriorityName} প্রাথমিকতা সহ অবস্থান করেছেন। 🕐${queueTime}",
		queue_position_without_priority = "🐌 আপনি ${queuePosition}/${queueTotal} কিউতে অবস্থান করেছেন। 🕐${queueTime}",
		you_are_through = "আপনি যাচাইকৃত হয়েছেন!",
		join_server = "সার্ভারে যোগদান করুন",
		tired_of_queueing = "কিউতে থাকার থাকবার প্রতিজ্ঞা দিন করে? প্রথমিকতা পেতে সার্ভার সমর্থন করুন!",
		joining_battle_royale = "ব্যাটল রয়্যালে যোগদান হচ্ছে",
		joining_arena = "এরিনা যোগদান হচ্ছে",
		refresh = "রিফ্রেশ করুন",
		refreshing = "রিফ্রেশ করা হচ্ছে...",

		missing_character_creation_data = "চরিত্র তৈরির প্রয়োজনীয় তথ্য অনুপস্থিত।",
		invalid_first_name = "প্রথম নাম অনুপস্থিত বা অবৈধ (২ থেকে ১০০ অক্ষর).",
		invalid_last_name = "শেষ নাম অনুপস্থিত বা অবৈধ (২ থেকে ১০০ অক্ষর).",
		invalid_date_of_birth = "জন্ম তারিখ অনুপস্থিত বা অবৈধ।",
		invalid_backstory = "ব্যাকস্টোরি অনুপস্থিত বা অবৈধ (১ থেকে ৫,০০০ অক্ষর).",

		bad_words = "আপনার চরিত্রের নাম বা ব্যাকস্টোরি এ কিছু খারাপ শব্দ রয়েছে।",
		disallowed_name = "আপনার চরিত্রের নামে কিছু অনুমোদিত শব্দ নেই।",
		disallowed_birthday = "আপনার জন্মদিন অনুমোদিত নয়।",
		numbers_not_allowed = "চরিত্রের নামে সংখ্যা অনুমোদিত নয়।",
		something_went_wrong = "আপনার চরিত্র তৈরি করার চেষ্টা করার সময় কিছু ভুল হয়েছে।",
		character_slot_occupied = "এই চরিত্র স্লটটি ইতিমধ্যে ওকে নেওয়া হয়েছে।",
		name_already_taken = "এই নামটি ইতিমধ্যে নেওয়া হয়েছে।",
		illegal_character_slot = "আপনি এই স্লটে একটি চরিত্র তৈরি করতে পারবেন না।",
		character_already_loaded = "আপনার মুহূর্তে ইতিমধ্যে একটি চরিত্র লোড করা হয়েছে।",

		new_citizen = "নতুন নাগরিক",
		los_santos_police_dept = "লস স্যান্টোস পুলিশ ডিপার্টমেন্ট",

		welcome_msg_title = "${communityName}-এ আপনাকে স্বাগতম!",
		welcome_msg = "আপনি শুরু করার জন্য কিছু জিনিস পেয়েছেন। ১-৫ কীবোর্ড ব্যবহার করে আপনি আপনার জিনিসপত্র পড়তে পারেন।\n\n*আপনার ব্রোশার পড়তে 1 কীটি চাপুন।*",

		press_to_go_back_to_menu = "মেনুতে ফিরে যেতে ~g~${InteractionKey}~w~ চাপুন।",
		go_back_to_menu = "মেনুতে ফিরে যান।",

		developer = "উন্নয়নকারী",
		super_admin = "সুপার অ্যাডমিন",
		staff = "কর্মী",
		reconnect = "রিকনেক্ট",
		christmas = "ক্রিসমাস",
		casino = "ক্যাসিনো",
		random = "যোজো",
		beginner = "প্রাথমিক",
		custom = "অভিনন্দন",

		appreciated_tier = "উপস্থিত টিয়ার",
		respected_tier = "সম্মানিত টিয়ার",
		heroic_tier = "সাহসী টিয়ার",
		legendary_tier = "দ্য লেজেন্ডারি টিয়ার",
		godlike_tier = "দ্য গডলাইক টিয়ার"
	},

	loot = {
		press_to_pick_up = "${itemLabel} উঠানোর জন্য টিপে ~INPUT_CONTEXT~ চাপুন।"
	},

	lottery = {
		lottery_announcement = "লটারির জন্য ঘোষণা",
		lottery_about_to_roll = "আজকের লটারিতে 5 মিনিটে একজন বিজয়ী নির্বাচন হবে। সর্বমোট টাকার পাত হল $${totalPot}, যেখানে আপনি $${betAmount} বসিয়েছেন। আপনার জয়ের সম্ভাবনা ${odds}% হল।",
		current_lottery_pot = "মোট পটের পরিমাণ বর্তমানে $${totalPot}, যেখানে আপনি $${betAmount} বসায়েছেন। আপনার জয়ের সম্ভাবনা ${odds}%।",
		drew_a_lottery_winner = "লটারির জনোপজাতকে নির্বাচন করা হয়েছে।",
		roll_lottery_no_permission = "খেলোয়াড়টি লটারি দাঁড়িয়ে ফেলতে চেষ্টা করেছিল তবে তাদের এই কাজ করার অনুমতি ছিল না।",
		winner_has_been_picked = "${fullName} এর জন্য লটারির পট $${totalPot}-এ জিতেছেন! তারা $${betAmount} বসায়েছেন এবং তাদের জয়ের সম্ভাবনা ${odds}%।",
		claimed_lottery_winnings = "লটারি জয় উপহার সম্পূর্ণ দাবি করা হয়েছে।",
		no_lottery_winnings = "আপনার কোন অপ্রদান লটারি জিতের পুরস্কার নেই।",
		internal_server_error = "একটি অভ্যন্তরীণ সার্ভার ত্রুটি ঘটেছে।",
		use_disabled_animal = "আপনি লটারি একটি প্রাণীর সহায়তায় ব্যবহার করতে পারবেন না।",

		lottery_log_title = "লটারি জিতেছেন",
		lottery_log_description = "${fullName} (#${characterId}) $${betAmount} বাজে ডলারের লটারি সংগ্রহ় করেছেন।"
	},

	lucky_wheel = {
		hold_to_spin_lucky_wheel = "তুমি লাকি হুইল ঘুরানোর জন্য ~INPUT_CONTEXT~ বোধহও। খরচ হচ্ছে $${cost}।",
		hold_to_spin_lucky_wheel_free_one_left = "তুমি লাকি হুইল ঘুরানোর জন্য ~INPUT_CONTEXT~ বোধহও। তোমার আজকে ১টি ফ্রি স্পিন বাকি রয়েছে।",
		hold_to_spin_lucky_wheel_free_multiple_left = "তুমি লাকি হুইল ঘুরানোর জন্য ~INPUT_CONTEXT~ বোধহও। তোমার আজকে ${spins}টি ফ্রি স্পিন বাকি রয়েছে।",
		continue_holding_to_spin_lucky_wheel = "লাকি হুইল ঘুরানোর জন্য ~INPUT_CONTEXT~ না ছেড়ে থাকতে থাকো।",
		unable_to_spin_lucky_wheel = "আপনি আজকে সুসংবাদের মত লাকি হুইলটি একই সময়ে একাধিকবার ঘুরিতে পারেন না। পরবর্তী ঘুর্ণনের সময় ${time} অপেক্ষা করুন।",
		not_enough_balance_to_spin = "আপনার পাওনা আসতে যথাযথ নয় সৌভাগপূর্ণ চাকা ঘুরানোর জন্য। খরচ $${cost}।",
		lucky_wheel_is_occupied = "সৌভাগের চাকা বর্তমানে ব্যবহৃত হয়েছে। দয়া করে অপেক্ষা করুন।",

		logs_lucky_wheel_reward_title = "সৌভাগের চাকার পুরস্কার",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} চাকা ঘুরিয়ে গাড়ী জেতেছে।",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} সফলভাবে মডেলের নাম `${modelName}` নিয়ে একটি গাড়ি পেয়েছে।",
		logs_lucky_wheel_reward_money_details = "${consoleName} চাকা ঘুরিয়ে $${amount} জিতেছে।",
		logs_lucky_wheel_reward_chips_details = "${consoleName} রটেশন করে লাকি হুইল আর অধিক বেন করেছেন। চিপসের মূল্য $${amount}।",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} চাকা ঘুরিয়ে জুয়েলারি জিতেছে যা `${itemName}` নামে।",
		logs_lucky_wheel_reward_item_details = "${consoleName} চাকা ঘুরিয়ে আইটেমটি জিতেছে যা `${itemName}` নামে।",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} কে চাকা ঘুরিয়ে এক সপ্তাহ কিউ প্রায়োরিটি জিতেছে।"
	},

	magazines = {
		issue_id = "ইস্যু #${issueId}",
		releases_updated = "রিলিস আপডেট হয়েছে।",
		no_release_changes = "রিলিস পরিবর্তন হয়নি।",
		refresh_magazines_no_permissions = "খেলোয়াড় উচিত অনুমতিসহ ম্যাগাজিন রিফ্রেশ করার চেষ্টা করেছেন।"
	},

	mdt = {
		mdt_title = "মোবাইল ডেটা টার্মিনাল",
		loading_reports = "রিপোর্ট লোড হচ্ছে...",
		failed_report_load = "রিপোর্ট লোড করার ব্যর্থতা।",
		no_reports = "কোন রিপোর্ট নেই।",
		loading = "লোড হচ্ছে...",

		title_placeholder = "শিরোনাম",
		body_placeholder = "আমার রিপোর্ট..."
	},

	mechanics = {
		move_here_check = "আপগ্রেডের জন্য এখানে সরান",
		checking_upgrades = "গাড়ির আপগ্রেড চেক করা হচ্ছে",
		upgrades_list = "${armor}, ${engine}, ${brakes}, ${transmission} এবং ${turbo}।",

		has_no_turbo = "প্রতিষ্ঠাপিত কোনও টার্বো নেই",
		has_turbo = "টার্বো স্থাপিত আছে",

		armor_0 = "কোনও আর্মর নেই",
		armor_1 = "আর্মর আপগ্রেড 20%",
		armor_2 = "আর্মর আপগ্রেড 40%",
		armor_3 = "আর্মর আপগ্রেড 60%",
		armor_4 = "আর্মর আপগ্রেড 80%",
		armor_5 = "আর্মর আপগ্রেড 100%",

		brakes_0 = "স্টক ব্রেক",
		brakes_1 = "স্ট্রিট ব্রেক",
		brakes_2 = "স্পোর্ট ব্রেক",
		brakes_3 = "রেস ব্রেক",

		transmission_0 = "স্টক ট্রান্সমিশন",
		transmission_1 = "স্ট্রিট ট্রান্সমিশন",
		transmission_2 = "স্পোর্ট ট্রান্সমিশন",
		transmission_3 = "রেস ট্রান্সমিশন",

		engine_0 = "স্টক ইঞ্জিন",
		engine_1 = "ইঞ্জিন EMS লেভেল ২",
		engine_2 = "ইঞ্জিন EMS লেভেল ৩",
		engine_3 = "ইঞ্জিন EMS লেভেল ৪",
		engine_4 = "ইঞ্জিন EMS লেভেল ৫",

		no_nearby_vehicle = "কোন নিকটবর্তী গাড়ি নেই।",
		already_checking_upgrades = "আপনি ইতিমধ্যে একটি গাড়ির টিউনস চেক করছেন।",
		engine_is_running = "গাড়ির ইঞ্জিন চলছে।"
	},

	meth = {
		press_to_sell_meth = "মেথ বিক্রি করতে ~INPUT_CONTEXT~ চাপুন।",
		local_not_interested = "এই স্থানীয়টি এখনও আগ্রহী নয় মনে হচ্ছে।",
		selling_meth = "মেথ বিক্রি করা হচ্ছে।"
	},

	mining = {
		drill_scan_stone = "[${InteractionKey}] পাথর ড্রিল, [${SeatEjectKey}] পাথর স্ক্যান",
		scan_stone = "[${SeatEjectKey}] পাথর স্ক্যান করুন",
		drill_stone = "[${InteractionKey}] পাথর ড্রিল করুন",
		scanning_stone = "স্ক্যানিং করা হচ্ছে",
		drilling = "ড্রিলিং করা হচ্ছে",
		failed_drill_stone = "পাথর ড্রিল করতে ব্যর্থ হয়েছে।",
		drill_no_drops = "আপনি এই পাথর থেকে কোনও জেম খুঁজে পাননি।",
		drill_drops = "তুমি এই পাথরের মধ্য দিয়ে কিছু জমেছ পান।",
		used_drill = "আপনার ড্রিল ভেঙ্গে গেছে।",
		still_shook = "শেষবারের বিস্ফোরণ আপনাকে ছান্দিত করছে এবং এই পাথরে কোনও জমেছ পাওয়া যায়নি।",

		recharging_scanner = "স্ক্যানার চার্জিং হচ্ছে ${percentage}%।",
		scanning = "${percentage}% স্ক্যান করা হচ্ছে।",

		refine_gemstones = "[${InteractionKey}] জেমস্টোনগুলি ধনাত্মক করুন",
		refinery = "রিফাইনারী টেবিল",
		exit_refinery = "রিফাইনারী থেকে বের হোক",
		no_gemstones = "তুমি কোনও কাঁচা জেমস্টোন নেই।",
		refining = "1x ${gemstone} ধনাত্মককরণ হচ্ছে।",
		refine_success = "1x ${gemstone} ধনাত্মক হয়েছে।",
		failed_refine = "জেমস্টোন পরিষ্কার ব্যর্থ।",

		craft_rings = "[${InteractionKey}] ছেঁড়তে হবে",
		no_crafting_items = "আপনার এখানে কোন পণ্য তৈরির জন্য পর্যাপ্ত পণ্য নেই।",
		crafting = "তৈরি করা হচ্ছে 1x ${item}",
		crafting_table = "তৈরি করার টেবিল",
		crafting_success = "তৈরি করা হয়েছে 1x ${gemstone}।",
		failed_crafting = "জিনিসটি তৈরি করতে ব্যর্থ হয়েছে।",
		exit_crafting = "তৈরি করার টেবিল থেকে বার্তা",

		engrave_ring = "[${InteractionKey}] ছাদ করুন ছেঁড়িদান",
		no_engrave_items = "আপনার কোন ছেঁড়ি নেই।",
		exit_engraving = "ছাদ করানো টেবিল থেকে বার্তা",
		engraving_table = "এঁগ্রেভিং টেবিল",
		engraving = "${itemName}-এ এঁগ্রেভিং করা হচ্ছে",
		engrave_message = "বার্তা এঁগ্রেভিং করুন (সর্বাধিক 100 টি অক্ষর)",
		engrave_success = "${itemName} এ সফলভাবে বার্তা এঁগ্রেভিং করা হয়েছে।",
		failed_engrave = "বার্তা এঁগ্রেভিং করতে ব্যর্থ হলো।",

		no_sellable_items = "আপনার কিছু বিক্রি করার জন্য নেই।",
		exit_shop = "দোকান ছাড়ুন",
		shop = "জেমস্টোন দোকান",
		sell_gemstones = "[${InteractionKey}] জেমস্টোন বিক্রি করুন",
		local_price = "স্থানীয় মূল্য: $${price}",

		sold_gemstone = "$${price} একটি ${gemstone} বিক্রি হয়েছে।",
		failed_sell_gemstone = "জেমস্টোন বিক্রি করা ব্যর্থ হয়েছে।",
		failed_sell_no_item = "আপনার বিক্রি করার চেষ্টা করা বস্তু নেই।",
		failed_sell_cap = "বিক্রেতাও আর আপন থেকে সেই আইটেম কেনার চিন্তা করছেন না।",

		mining_sold_item_title = "বিক্রি করা জেমস",
		mining_sold_item_details = "${consoleName} 1x ${itemName} ব্যাবহার করে ${price} এ বিক্রি করেছেন।",

		mining_crafted_item_title = "উৎপাদিত আইটেম",
		mining_crafted_item_details = "${consoleName} 1x ${itemName} তৈরি করেছেন।",

		mining_refined_item_title = "রিফাইন্ড করা জেম",
		mining_refined_item_details = "${consoleName} 1x ${itemName} তৈরি হওয়ার পর ${itemName} এর রিফাইন করেছেন।",

		mining_mined_title = "খনি করা জেম",
		mining_mined_details = "${consoleName} ${output} খনি করেছেন।",

		mining_exploded_title = "খনন বিস্ফোরণ",
		mining_exploded_details = "${consoleName} একটি জেম খননে চেষ্টা করতে গিয়ে বিস্ফোর হয়ে গেছেন।",

		instability_0 = "এই জেমস্টোন স্থিতিশীল।",
		instability_1 = "এই জেমস্টোন স্বল্পতম অস্থির।",
		instability_2 = "এই জেমস্টোন অস্থির।",
		instability_3 = "এই জেমস্টোন খুবই অস্থির।",

		exhausted = "আপনি খনির গরম আবহাওয়ায় বেশ ক্লান্ত হয়েছেন।",
		very_exhausted = "আপনি খনির গরম আবহাওয়ায় খুবই ক্লান্ত হয়েছেন।"
	},

	miscellaneous = {
		language_unavailable = "ভাষা `${languageCode}` এখনো উপলব্ধ নয়। আপনি যদি এই ভাষার জন্য লোকালাইজেশন তৈরি করতে চান, তবে ওপি-এফডব্লিউ উন্নয়ন এর জন্য ডিসকর্ড গিল্ড ${frameworkDiscord} এ যোগ দিন!",
		same_language = "আপনি ইতিমধ্যে ${languageCode} হিসাবে আপনার ভাষা নির্ধারণ করেছেন।",
		language_set = "আপনার পছন্দের ভাষা এখন ${languageCode} হিসাবে নির্ধারিত হয়েছে।",
		current_language = "বর্তমান ভাষা",
		available_language_codes = "উপলব্ধ ভাষাসমূহ",
		ping_pong = "পং!",
		ping_response = "${callbackTime}মিলিসেকেন্ডের কলব্যাক সময়ের সাথে ${ping} মিলিসেকেন্ডের প্রতিক্রিয়া",
		ooc_first_time = "আমরা দেখছি আপনি এখনো /ooc ব্যবহার করেননি! আপনাকে ব্যবহার করার পূর্বে একটি ছোট্ট সতর্কতার দেয়া হবে। /ooc কমান্ড শুধুমাত্র অবস্থানগত সমস্যার জন্য ব্যবহৃত হয় এবং সমস্ত অসাম immediate প্রশ্ন বা বার্তা আমাদের ডিসকর্ড গিল্ড ${communityDiscord}-এ তালিকাভুক্ত করা উচিত। সম্পূর্ণ হলেই! /ooc ব্যবহার করতে শুরু করতে /ooc_on টাইপ করুন। আপনি /ooc_off দিয়ে এটি আবার বন্ধ করতে পারবেন।",
		ooc_not_logged_in = "আপনি লগ ইন করা নেই।",
		ooc_timed_out = "আপনি বর্তমানে ওওসি চ্যাট থেকে সময় চলে গেছে। দয়া করে অপেক্ষা করুন।",
		ooc_muted_no_reason = "আপনাকে বিশ্বসার বাইরের OOC চ্যাট থেকে কোন নির্দিষ্ট কারণ ছাড়াই মিউট করা হয়েছে।",
		ooc_muted = "আপনাকে বিশ্বসার বাইরের OOC চ্যাট থেকে কারণ `${reason}` দিয়ে মিউট করা হয়েছে।",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "স্থানীয় OOC ${playerDescriptor}",
		ooc_is_disabled = "আপনি বিশ্বসার বাইরের OOC চ্যাটটি অক্ষম করেছেন।",
		ooc_enabled = "বিশ্বসার বাইরের OOC এখন সক্ষম।",
		ooc_already_enabled = "বিশ্বসার বাইরের OOC ইতিমধ্যেই সক্ষম।",
		ooc_disabled = "বিশ্বসার বাইরের OOC এখন অক্ষম।",
		ooc_already_disabled = "বিশ্বসার বাইরের OOC ইতিমধ্যেই অক্ষম।",
		ooc_local_logs_title = "লোকাল OOC মেসেজ",
		ooc_local_logs_details = "${consoleName} নিম্নোক্ত মেসেজটি লোকাল OOC চ্যাটে প্রেরণ করেছেন: `${oocMessage}`।",
		ooc_global_logs_title = "গ্লোবাল OOC মেসেজ",
		ooc_global_logs_details = "${consoleName} নিম্নোক্ত মেসেজটি গ্লোবাল OOC চ্যাটে প্রেরণ করেছেন: `${oocMessage}`।",
		bad_ooc_message = "OOC চ্যাটে সম্ভবতঃ খারাপ মেসেজ পোস্ট করা হয়েছে: \"${oocMessage}\"",
		bad_ped_message = "সম্ভবতঃ খারাপ পেড মেসেজ তৈরি করা হয়েছে: \"${pedMessage}\"",
		bad_twitter_post = "সম্ভবতঃ খারাপ টুইটার পোস্ট তৈরি করা হয়েছে: \"${twitterPost}\"",
		bad_phone_message = "টুইটারে অপসন্দযোগ্য পোস্ট তৈরি করার চেষ্টা করা হয়েছে: \"${message}\"",
		mute_toggle_not_staff = "খেলোয়াড় একজন খেলোয়াড়কে মিউট করতে চেষ্টা করেছেন, তবে ইচ্ছুক অনুমতি নেই।",
		unmute_toggle_not_staff = "খেলোয়াড় একজন খেলোয়াড়কে আনমিউট করতে চেষ্টা করেছেন, কিন্তু সঠিক অনুমতি নেই।",
		user_not_found = "আমরা সার্ভার আইডি `${serverId}` সহ কোনও ব্যবহারকারী খুঁজে পাই নি।",
		player_already_muted = "${consoleName} ইতিমধ্যেই মিউট করা হয়েছে।",
		player_has_been_muted_no_reason = "কোনও নির্দিষ্ট কারণ ছাড়াও ${consoleName} এখন মিউট করা হয়েছে।",
		player_has_been_muted = "${consoleName} এখন `${reason}` কারণে মিউট হয়েছে।",
		player_not_muted = "${consoleName} মিউট নয়।",
		player_has_been_unmuted = "${consoleName} এখন অমিউট হয়েছে।",
		clear_chat_not_admin = "খেলোয়াড় সমস্ত খেলোয়াড়িদের জন্য চ্যাট মুছতে চেষ্টা করেছে, তবে সঠিক অনুমতি নেই।",
		ooc_clear_chat_title = "চ্যাট মুছে ফেলা হয়েছে",
		ooc_clear_chat_details = "${consoleName} সমস্তের জন্য চ্যাট মুছে ফেলেছে।",
		muted_player = "মিউটেড খেলোয়াড়ি",
		muted_player_no_reason_details = "${consoleName} কোনও নির্দিষ্ট কারণ ছাড়াই ${targetConsoleName} এর মিউট করেছে।",
		muted_player_details = "${consoleName} এর দ্বারা ${targetConsoleName}-কে `${muteReason}` কারণ দিয়ে মিউট করা হয়েছে।",
		player_muted = "প্লেয়ার মিউট করা হয়েছে",
		player_muted_no_reason_details = "${consoleName} এর দ্বারা ${targetConsoleName}-কে কোনো নির্দিষ্ট কারণ ছাড়াই মিউট করা হয়েছে।",
		player_muted_details = "${consoleName} এর দ্বারা ${targetConsoleName}-কে `${muteReason}` কারণ দিয়ে মিউট করা হয়েছে।",
		muted_self = "নিজেকে মিউট করা হয়েছে",
		muted_self_no_reason_details = "${consoleName} নিজেকে কোনো নির্দিষ্ট কারণ ছাড়াই মিউট করে দিয়েছেন।",
		muted_self_details = "${consoleName} নিজেকে `${muteReason}` কারণে মিউট করে দিয়েছেন।",
		unmuted_self = "স্বয়ং আনমিউট করা হয়েছে",
		unmuted_self_details = "${consoleName} নিজেকে আনমিউট করেছেন।",
		unmuted_player = "প্লেয়ার আনমিউট করা হয়েছে",
		unmuted_player_details = "${consoleName} ${targetConsoleName} কে আনমিউট করেছেন।",
		player_unmuted = "প্লেয়ার আনমিউট করা হয়েছে",
		player_unmuted_details = "${targetConsoleName} ${consoleName} দ্বারা আনমিউট করা হয়েছে।",
		ooc_cancelled_same_as_last = "আপনার ওওসি বার্তা বাতিল করা হয়েছে কারণ আপনি দুটি একই বার্তা পেজ করতে চেষ্টা করেছেন।",
		use_measurement_metric = "আপনি আপনার পছন্দসই পরিমাপের সিস্টেমটি মেট্রিক হিসাবে সেট করেছেন।",
		use_measurement_imperial = "আপনি ইমপেরিয়াল মান পছন্দ করেছেন।",
		use_measurement_default = "আপনি এখন লোকেলের ডিফল্ট মান ব্যবহার করছেন।",
		already_using_metric_measurement = "আপনি ইতিমধ্যে মেট্রিক মান পছন্দ করেছেন।",
		already_using_imperial_measurement = "আপনি ইতিমধ্যে ইমপেরিয়াল মান পছন্দ করেছেন।",
		already_using_default_measurement = "আপনি ইতিমধ্যে লোকেলের ডিফল্ট মান ব্যবহার করছেন।",
		no_copyright = "কপিরাইট নেই",
		no_copyright_warning = "হাই! আপনি কি এমন কোনও স্ট্রিমার বা কনটেন্ট ক্রিয়েটর যারা DMCA এবং কপিরাইট দাবিতে সমস্যায় পড়ে? যদি হ্যাঁ, তবে আমরা আপনাকে `${noCopyrightCommand}` কমান্ড চালু করার পরামর্শ দিচ্ছি যাতে আমরা আপনার খেলায় কেটে যাওয়া কিছু কপিরাইট সম্পদ প্রদর্শন করা এবং শুনানো বন্ধ করতে পারি। এই ফিচারটি টগল করা হয় তা এক্ষেত্রে কাজ করতে শুরু করে।",
		no_copyright_enabled = "কপিরাইট",
		no_copyright_disabled = "",
		server_tps = "সার্ভার TPS",
		server_tps_response = "${tps}",
		license_copied = "লাইসেন্স সফলভাবে ক্লিপবোর্ডে কপি করা হয়েছে।",
		uptime = "আপটাইম: ${uptime}",

		picture_no_url = "ইউআরএল অনুপস্থিত।",
		picture_invalid_url = "ইউআরএল অবৈধ, https:// দিয়ে শুরু করতে হবে।",
		picture_no_description = "বর্ণনা নেই।",
		picture_failed = "ছবি তৈরি করতে ব্যর্থ হয়েছে।",

		auto_run_already_set_to = "অটো রান আগেই কন্ট্রোল ${controlId} এর জন্য সেট করা হয়েছে।",
		auto_run_already_unset = "অটো-রান আগেই নির্দিষ্ট নেই।",
		auto_run_set_to = "${controlId} এর মাধ্যমে অটো-রান সফলভাবে নির্দিষ্ট হয়েছে।",
		auto_run_unset = "অটো-রান সফলভাবে নির্দিষ্ট হয়নি।",

		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		walk_forwards_success = "${displayName} এর জন্য হাঁটতে সাফল্যপূর্ণভাবে টগল করা হয়েছে।",
		walk_forwards_failed = "${displayName} এর জন্য হাঁটতে টগল করা ব্যর্থ হয়েছে।"
	},

	money = {
		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		invalid_amount = "অবৈধ পরিমাণ।",
		something_went_wrong = "কিছু সমস্যা হয়েছে।",
		not_enough_cash = "আপনার যথাযথ টাকা নেই।",
		not_close_enough = "আপনি প্লেয়ার এর কাছে যথার্থ নয়।",
		user_not_available = "ব্যবহারকারী উপলব্ধ নেই।",

		bill_received = "${displayName} আপনাকে ${amount}$ এর বিল প্রেরণ করেছেন। `/yes` টাইপ করে এটি গ্রহণ করুন অথবা `/no` টাইপ করে এটিকে প্রত্যাখ্যান করুন।",
		bill_expired = "${displayName} এর বিল মেয়াদ উত্তীর্ণ হয়েছে।",
		bill_declined = "${displayName} এর বিলটি প্রত্যাখ্যান করা হয়েছে।",
		failed_bill_payment = "বিল পরিশোধ করতে ব্যার্থ হয়েছে।",
		bill_success = "${displayName} এর $${amount} বিল সফলভাবে পরিশোধ করা হয়েছে।",
		bill_created = "$${amount} এর বিল তৈরি করা হয়েছে ${displayName} এর জন্য।",

		givecash_success = "${displayName} কে $${amount} টাকা দেওয়া হয়েছে।",

		give_cash_title = "নগদ টাকা স্থানান্তর",
		give_cash_details = "${consoleName} নেন $$ {amount} এর স্থানান্তর করেছেন ${targetConsoleName} কে।",
		paid_bill_title = "বিল পরিশোধ করা হয়েছে",
		paid_bill_details = "${consoleName} একটি $${amount} টাকা বিল পরিশোধ করেছে ${targetConsoleName} দ্বারা।",
		bill_created_title = "বিল তৈরি হয়েছে",
		bill_created_details = "${consoleName} একটি $${amount} টাকা বিল তৈরি করেছে ${targetConsoleName} এর জন্য।"
	},

	moonshine = {
		fill_chamber = "[${InteractionKey}] চেম্বার পূর্ণ করুন",
		collect_moonshine = "[${InteractionKey}] মুনশাইন সংগ্রহ করুন",
		fermenting = "${percentage}% মদক পাকানো হচ্ছে",
		filling_chamber = "চেম্বার পূর্ণ হচ্ছে",

		not_enough_items = "আপনার পাসে চেম্বার পূর্ণ করতে যথেষ্ট পণ্য নেই।",
		something_went_wrong = "কিছু ভুল হয়েছে।",
		failed_fill = "চেম্বার পূর্তি করতে ব্যর্থ হয়েছে।",
		failed_empty = "মুনশাইন সংগ্রহ করতে ব্যর্থ হয়েছে।",

		press_to_sell_moonshine = "মুনশাইন বিক্রয় করতে চাপুন ~INPUT_CONTEXT~।",
		local_not_interested = "লোকটি এখনই আগ্রহী না মনে করে।",
		selling_moonshine = "মুনশাইন বিক্রি হচ্ছে।"
	},

	nos = {
		press_to_install_nitro_tank = "নাইট্রো ট্যাঙ্ক ইনস্টল করতে চাপুন  ~INPUT_CONTEXT~।",
		installing_nitro_tank = "নাইট্রো ট্যাঙ্ক ইনস্টল করা হচ্ছে।",
		press_to_remove_nitro_tank = "নাইট্রো ট্যাঙ্ক সরাতে চাপুন ~INPUT_CONTEXT~।",
		removing_nitro_tank = "নাইট্রো ট্যাঙ্ক সরানো হচ্ছে"
	},

	notepads = {
		take_notes = "নোটস নেওয়া হচ্ছে...",
		press_to_open = "এই নোটপ্যাড খোলার জন্য ~INPUT_DETONATE~ চাপুন।",
		notepad_busy = "কেউ অন্য এই নোটপ্যাডে রয়েছে।",
		dropped_notepad_title = "নোটপ্যাড পড়ে গেছে",
		dropped_notepad_text_title_details = "${consoleName} একটি নোটপ্যাড প্রস্তুত করেছেন যা লেখা হয়েছে `${text}`।",
		updated_notepad_title = "নোটপ্যাড আপডেট করা হচ্ছে",
		updated_notepad_text_title_details = "${consoleName} নোটপ্যাড আপডেট করেছেন যা লেখা হয়েছে `${text}`।",
		picked_up_notepad_title = "নোটপ্যাড উঠে নেওয়া হয়েছে",
		picked_up_notepad_text_title_details = "${consoleName} একটি নোটপ্যাড উঠিয়ে নিয়েছেন যার মধ্যে লেখা হলো `${text}`।",
		invalid_notepad_id = "অবৈধ নোটপ্যাড আইডি।",
		failed_notepad_info = "নোটপ্যাডের তথ্য পান করতে ব্যর্থ হলেও।",
		notepad_info = "নোটপ্যাড ${notepadId} উঠে নেওয়া হয়েছে ${droppedBy} দ্বারা।",
		failed_notepad_wipe = "নোটপ্যাডগুলি মুছতে ব্যর্থ হয়েছে।",
		invalid_notepad_wipe_radius = "অবৈধ ত্রিজ্যা দৈর্ঘ্য (সর্বনিম্ন = ১, সর্বাধিক = ১০০)।",
		notepad_wipe_success = "মোট ${amount} টি নোটপ্যাড সফলভাবে মুছে ফেলা হয়েছে।",
		sign_invalid_slot = "ভুল ইনভেন্টরী স্লট।",
		signed_notepad = "এই স্লট `${slotId}` এ নোটপ্যাড সফলভাবে সাইন করা হয়েছে।",
		failed_sign_notepad = "নোটপ্যাড স্বাক্ষর করতে ব্যর্থ।",
		sign_already_signed = "আপনি এই নোটপ্যাড স্বাক্ষর করতে পারবেন না।",

		notepad_info_missing_permissions = "প্রয়োগকারী পর্যালোচনা করা নোটপ্যাডের তথ্য প্রাপ্ত করার জন্য উপযুক্ত অনুমতিগুলি নেই।",
		wipe_notepads_missing_permissions = "প্রয়োগকারী অপসারণ করা নোটপ্যাডগুলি সঠিক অনুমতি নেই।"
	},

	notices = {
		message_too_long = "বার্তাটি অতিরিক্ত অক্ষর বা লাইন সম্পন্ন হয়েছে!",
		invalid_notice_id = "অবৈধ নোটিশ আইডি।",
		successfully_removed_notice = "নোটিশ সফলভাবে সরানো হয়েছে।",
		failed_remove_notice = "নোটিশ সরানো ব্যর্থ হয়েছে।",

		add_notice_missing_permissions = "প্লেয়ার সঠিক অনুমতি না থাকা সঙ্গে একটি বিজ্ঞপ্তি যোগ করতে চেষ্টা করেছে।",
		remove_notice_missing_permissions = "প্লেয়ার সঠিক অনুমতি না থাকা সঙ্গে একটি বিজ্ঞপ্তি সরাতে চেষ্টা করেছে।"
	},

	objects = {
		saved_found_objects = "মডেল `${modelName}` সহ উপলব্ধ `${foundObjectsAmount}` বস্তুগুলি সার্ভারে একটি ফাইলে সংরক্ষিত হয়েছে।",
		no_nearby_objects_with_model_found = "মডেল `${modelName}` সহ কোনও আসপাসের বস্তু খুঁজে পাওয়া যায়নি।",
		invalid_model_name = "মডেল `${modelName}` একটি বৈধ মডেল নয়।",
		missing_model_name = "মডেল নাম অনুপস্থিত।"
	},

	orbitcam = {
		enabled_orbitcam = "ওরবিটক্যাম সক্রিয় করা হয়েছে।",
		disabled_orbitcam = "ওরবিটক্যাম নিষ্ক্রিয় করা হয়েছে।",
		orbitcam_failed = "ওরবিটক্যাম সক্ষম করতে ব্যর্থ হয়েছে। কি আপনি নোক্লিপ বা অন্যান্য সক্ষম করেছেন?",

		orbitcam_logs_title = "ওরবিটক্যাম টগল করা হয়েছে",
		orbitcam_on_logs_details = "${consoleName} তাদের ওরবিটক্যাম চালু করেছেন।",
		orbitcam_off_logs_details = "${consoleName} তাদের ওরবিটক্যাম বন্ধ করেছেন।",

		orbitcam_no_permission = "প্রয়োজনীয় অনুমতিগুলি ছাড়াই তাদের ওরবিটক্যাম টগল করা হয়েছে।"
	},

	overview = {
		header_title = "OP ফ্রেমওয়ার্ক - অভিজ্ঞতা ইউআই",
		select_information = "তথ্য",
		select_activity_points = "কার্যকলাপ পয়েন্ট",
		select_staff_points = "স্টাফ পয়েন্ট",
		select_moderation = "মডারেশন",
		select_handling_overrides = "হ্যান্ডলিং ওভাররাইড",
		select_settings = "সেটিংস",
		about_title = "ওভারভিউ UI সম্পর্কে",

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

		about_activity_points_title = "কার্যকলাপ পয়েন্ট সম্পর্কে",

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

		activity_points_this_week = "এই সপ্তাহের নম্বর",
		activity_points_last_week = "গত সপ্তাহের নম্বর",
		activity_points_current = "কার্যকলাপ পয়েন্টঃ <b>${activityPoints} + ${gainAmount}/মিনিট</b>",
		activity_points_current_no_gain = "কার্যকলাপ পয়েন্টঃ <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>আপনার বর্তমান কাজে অংশগ্রহণের লক্ষ্য হল ৪০০ পয়েন্ট লো জব প্রায়োরিটি, যেখানে আপনাকে আর <b>${remainingPoints} পয়েন্ট প্রয়োজন</b>!",
		activity_points_goal_medium = "<br><br>আপনার বর্তমান কাজে অংশগ্রহণের লক্ষ্য হল ৭০০ পয়েন্ট মিডিয়াম জব প্রায়োরিটি, যেখানে আপনাকে আর <b>${remainingPoints} পয়েন্ট প্রয়োজন</b>!",
		activity_points_goal_high = "<br><br>আপনার বর্তমান কাজে অংশগ্রহণের লক্ষ্য হল ১০০০ পয়েন্ট হাই জব প্রায়োরিটি, যেখানে আপনাকে আর <b>${remainingPoints} পয়েন্ট প্রয়োজন</b>!",
		activity_points_goal_none = "<br><br>আপনার বর্তমানে কোন কাজে অংশগ্রহণের লক্ষ্য নেই।",
		activity_points_not_enough = "গত সপ্তাহে আপনার প্রবৃত্তি পয়েন্টগুলি যথাযথ সুবিধার জন্য যথাযথ হয়নি।",
		activity_points_last_week_low = "আশ্চর্যজনক, আপনি পূর্ববর্তী সপ্তাহে যথাযথ সুবিধার জন্য যথাযথ প্রবৃত্তি পয়েন্ট পেয়েছেন!",
		activity_points_last_week_medium = "অদ্ভুত, আপনি পূর্ববর্তী সপ্তাহে যথাযথ সুবিধার জন্য মধ্যম পরিমাণ প্রবৃত্তি পয়েন্ট পেয়েছেন!",
		activity_points_last_week_high = "অসাধারণ, আপনি পূর্ববর্তী সপ্তাহে উচ্চ সুবিধার জন্য প্রয়োজনীয় প্রবৃত্তি পয়েন্ট পেয়েছেন!",

		about_staff_points_title = "স্টাফ পয়েন্ট সম্পর্কে",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points reset for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "এই সপ্তাহে",
		staff_points_current = "স্টাফ পয়েন্ট: <b>${staffPoints} + ${gainAmount}/মিনিট</b>",
		staff_points_current_no_gain = "স্টাফ পয়েন্ট: <b>${staffPoints}</b>",
		staff_points_table = "স্টাফ পয়েন্ট টেবিল",
		this_week = "এই সপ্তাহে",
		one_week_ago = "1 সপ্তাহ পূর্বে",
		two_weeks_ago = "2 সপ্তাহ পূর্বে",
		three_weeks_ago = "3 সপ্তাহ পূর্বে",
		four_weeks_ago = "4 সপ্তাহ পূর্বে",
		five_weeks_ago = "5 সপ্তাহ পূর্বে",
		six_weeks_ago = "6 সপ্তাহ পূর্বে",
		seven_weeks_ago = "7 সপ্তাহ পূর্বে",
		eight_weeks_ago = "8 সপ্তাহ আগে",
		previous_weeks_average = "গত সপ্তাহের গড়",

		about_detection_areas_title = "পরিচয় এলাকা সম্পর্কে",
		about_detection_areas_text = "পরিচয় এলাকা অবাঞ্ছিত গাড়ি এবং / বা মানুষ স্পান করার জন্য কর্মীদের জন্য একটি উপকরণ হতে পারে। একটি পরিচয় এলাকা তৈরি করতে `/detection_area_add` ব্যবহার করুন। আপনি একটি এলাকা তৈরি করে নিলে, এটি এখানে দেখা দিবে। প্রতিটি এলাকায় শুধুমাত্র সর্বশেষ 100 জন ব্যক্তি লগ করা হবে।",
		detection_area_title = "ডিটেকশন এলাকা #{$detectionAreaId}",

		about_sound_effects_title = "সাউন্ড এফেক্টস",
		about_sound_effects_text = "এই ক্ষেত্রগুলি আপনাকে কিছু সাউন্ড এফেক্ট ওভাররাইড করতে অনুমতি দেয়। এগুলি সঠিকভাবে কাজ করতে একটি .oog ফাইলের লিঙ্কের প্রয়োজন। এটি অবশ্যই একটি https:// URL হওয়া উচিত এবং http:// একটি নয়। ফাইলটি আপলোড করার সহজ উপায় হলো এটি ডিসকর্ডে আপলোড করে, তার লিঙ্কটি কপি করে এখানে ফিল্ডগুলির মধ্যে পেস্ট করা।",
		radio_mic_click_on = "রেডিও মাইক ক্লিক (অন)",
		radio_mic_click_off = "রেডিও মাইক ক্লিক (অফ)",
		clipboard_animation = "ক্লিপবোর্ড অ্যানিমেশন",
		sound_effect_placeholder = "ফাইল URL .oog...",
		sound_effect_save = "সংরক্ষণ করুন",
		sound_effect_reset = "পুনরায় সেট করুন",

		staff_notifications_reports = "রিপোর্ট বিজ্ঞপ্তিসমূহ",
		staff_notifications_staff_chat = "স্টাফ চ্যাট বিজ্ঞপ্তিসমূহ",
		staff_notifications_general = "সাধারণ বিজ্ঞপ্তিসমূহ",
		staff_notifications_anti_cheat = "এন্টি চিট বিজ্ঞপ্তিসমূহ",

		december_1 = "ডিসেম্বরের ১ম",
		december_2 = "ডিসেম্বরের ২য়",
		december_3 = "ডিসেম্বরের ৩য়",
		december_4 = "ডিসেম্বরের ৪র্থ",
		december_5 = "ডিসেম্বরের ৫ম",
		december_6 = "ডিসেম্বরের ৬ষ্ঠ",
		december_7 = "ডিসেম্বর ৭ম",
		december_8 = "ডিসেম্বর ৮ম",
		december_9 = "ডিসেম্বর ৯ম",
		december_10 = "ডিসেম্বর ১০ম",
		december_11 = "ডিসেম্বর ১১ম",
		december_12 = "ডিসেম্বর ১২ম",
		december_13 = "ডিসেম্বর ১৩ম",
		december_14 = "ডিসেম্বর ১৪ম",
		december_15 = "ডিসেম্বর ১৫ম",
		december_16 = "ডিসেম্বর ১৬ম",
		december_17 = "ডিসেম্বর ১৭ম",
		december_18 = "ডিসেম্বর ১৮ম",
		december_19 = "ডিসেম্বর ১৯ম",
		december_20 = "ডিসেম্বর ২০ম",
		december_21 = "ডিসেম্বর ২১ম",
		december_22 = "২২ ডিসেম্বর",
		december_23 = "২৩ ডিসেম্বর",
		december_24 = "২৪ ডিসেম্বর",
		hatch_closed = "বন্ধ",
		hatch_open = "খোলা",
		hatch_claim = "দাবি করুন",
		hatch_opened = "দাবিতে লিয়ে গেছেন",
		hatch_waiting = "অপেক্ষমান",

		about_advent_calendar_title = "অ্যাডভেন্ট ক্যালেন্ডার সম্পর্কে",

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

		unlocks_in_days_hours_minutes_seconds = "${days} দিন, ${hours} ঘন্টা, ${minutes} মিনিট এবং ${seconds} সেকেন্ডে আনলক করা হবে",
		unlocks_in_hours_minutes_seconds = "${hours} ঘন্টা, ${minutes} মিনিট এবং ${seconds} সেকেন্ডে আনলক করা হবে",
		unlocks_in_minutes_seconds = "${minutes} মিনিট এবং ${seconds} সেকেন্ডে আনলক করা হবে",
		unlocks_in_seconds = "${seconds} সেকেন্ডে আনলক হবে",
		unlocks_in_an_unknown_amount_of_time = "একটি অজানা সময়ে আনলক হবে",

		unopened_hatch = "অনন্য হ্যাচ",
		won_money = "$${amount} ক্যাশ জিতেছেন",
		won_vehicle = "গাড়ি (বসন্তের উপহার)",
		won_queue_priority = "কিউ প্রাথম্যতার এক সপ্তাহ জিতেছেন!",

		about_handling_overrides_title = "হ্যান্ডলিং ওভাররাইড",
		about_handling_overrides_text = "হ্যান্ডলিং ক্লাসের জন্য অস্থায়ী হ্যান্ডলিং ওভাররাইড তৈরি করুন, যা গতিশীলভাবে সৃষ্টি করা হবে। ওভাররাইডগুলি যতক্ষণ না সরানো হয় না ততক্ষণ সেই সময় পয়েন্টের মতো থাকবে। সার্ভারে সমস্ত গেমার জন্য ওভাররাইড সেট হবে।",
		add_override = "ওভাররাইড যুক্ত করুন",
		add = "যুক্ত করুন",
		model_name = "মডেলের নাম...",
		field_name = "ক্ষেত্র...",
		value = "মান...",
		current_overrides = "বর্তমান ওভাররাইডসমূহ",

		about_explosion_events_title = "বিস্ফোরণ ইভেন্ট",
		about_explosion_events_about = "এখানে সর্বশেষ ৫০০টি বিস্ফোরণ ইভেন্টের তথ্য লগ করা হয়। এটা স্টাফদের মডার খুঁজে পাওয়া সহায়ক হবে।",
		about_unusual_explosions = "অস্বাভাবিক বিস্ফোরণ ইভেন্ট যা সাধারণতঃ হতে না।",
		explosions_by_type_title = "প্রকার ভিত্তিক বিস্ফোরণসমূহ",
		players_causing_explosions_title = "বিস্ফোরণ উত্স হিসাবে খেলোয়ারদের নাম",
		show_common_events_off = "সাধারণ ঘটনাগুলি প্রদর্শন করুন: বন্ধ",
		show_common_events_on = "সাধারণ ঘটনাগুলি প্রদর্শন করুন: চালু",

		explosion_events_type = "ধরণ",
		explosion_events_amount = "পরিমাণ",
		explosion_events_nearby = "নিকটবর্তী",
		explosion_events_distance = "দূরত্ব",
		explosion_events_player = "গেমার নাম",

		illegal_weapons_title = "স্পনড অসামঞ্জস্যপূর্ণ হতে উত্পন্ন হয়েছে অস্ত্র",
		illegal_weapons_about = "এখানে সিস্টেম দ্বারা চেক করা হয়েছে যে সর্বশেষ ৫০০টি আমদানিমিলিত অসামঞ্জস্যপূর্ণ অস্ত্রের উত্পত্তির তথ্য পত্রগুলি আছে। কেউ স্পাইড করে অস্ত্র স্পনড করলে, তারা অবশ্যই মডিং করছে না, কারণ মডার আর একজন গেমারকে ও অস্ত্র স্পনড করতে পারে এবং তাই অন্য গেমাররাও এখানে প্রদর্শিত হবে।",
		illegal_weapons_by_type = "ধরন অনুযায়ী হাতিয়ার",
		players_with_spawned_weapons = "স্পম করা হাতিয়ার সাথে গেমারা",

		ped_models_title = "প্লেয়ার পেড মডেলস",
		ped_models_about = "এখানে একটি ফ্রিমোড ক্যারেকটার মডেল ব্যবহার না করা প্লেয়ারদের তালিকা দেওয়া হল। এটি ট্রল করতে আসা প্লেয়ারদের বা সম্ভাব্য মডারদের খুঁজে বের করতে সহায়তা করবে।",
		local_ped_models_title = "স্থানীয় পেড মডেলস",
		animal_ped_models_title = "প্রাণীর পেড মডেলস",

		fast_movement_title = "দ্রুত চলনা",
		fast_movement_about = "এখানে দ্রুত চলমান প্লেয়ারদের তালিকা দেওয়া হল। এটি সম্ভাব্য মডারদের খুঁজে বের করতে সহায়তা করবে।",

		damage_modifier_title = "ক্ষতি মডিফায়ার",
		damage_modifier_about = "এখানে ক্ষতি মডিফায়ার ব্যবহার করা প্লেয়ারদের তালিকা দেওয়া হয়েছে। এটি সম্ভবত মডার্স খোঁজার জন্য সহায়তা করবে।",

		bad_screen_word_title = "অপব্যবহৃত শব্দসমূহ",
		bad_screen_word_about = "এখানে নির্দিষ্ট কিছু শব্দ তাদের স্ক্রিনে দেখা গেলে তাদের তালিকা দেওয়া হয়েছে। এটি সম্ভবত মডার্স খোঁজার জন্য সহায়তা করবে।",

		freecam_detections_title = "ফ্রীক্যাম ট্র্যাকিং",
		freecam_detections_about = "এখানে ফ্রিক্যাম ব্যবহার করা প্লেয়ারদের তালিকা দেওয়া হয়েছে। এটি সম্ভবত মডার্স খোঁজার জন্য সহায়তা করবে।",

		damage_modifier_name = "প্লেয়ার নাম",
		damage_modifier_expected = "প্রত্যাশিত",
		damage_modifier_actual = "বর্তমান",

		bad_words_name = "প্লেয়ার নাম",
		bad_words_words = "ট্রিগার শব্দসমূহ",

		freecam_detections_name = "প্লেয়ার নাম",
		freecam_detections_distance = "সর্বাধিক দূরত্ব",

		hotwire_driving_detections_name = "প্লেয়ার নাম",

		model = "মডেল",
		label = "লেবেল",
		amount = "পরিমাণ",
		console_name = "খেলোয়াড়",
		expected = "প্রত্যাশিত",
		actual = "বর্তমান",
		words = "শব্দ",
		distance = "দূরত্ব",
		weapon = "অস্ত্র",
		type = "ধরণ",
		nearby = "উপস্থিত",

		no_entries = "কোনো এন্ট্রি নেই"
	},

	oxy = {
		press_to_talk_to_jc = "JC এর সাথে কথা বলতে ~g~${InteractionKey} ~w~চাপুন।",
		tutorial_will_play_next_time = "অক্সি টিউটোরিয়াল পরবর্তীতে আপনি শুনতে পাবেন।",
		prescription_pick_up = "প্রেসক্রিপশন পিক-আপ: ${label}",

		pick_up_the_prescriptions = "আপনার মানচিত্রে চিহ্নিত করা মথস্যস নথিপত্রগুলি নিন।",
		redeem_them_at_the_city = "এরপর, আপনাকে এগুলি শহরে পুনরুদ্ধার করতে হবে।",
		jc_will_be_expecting_some_back = "~y~JC ~w~${pickUpAmount} টি অক্সি ফিরিয়ে আনতে আপনি প্রত্যাশিত হবেন।",
		you_have_limited_time = "আপনার একটি সীমিত সময় আছে। আপনাকে ${time} সময়ে প্রতিফলিত হতে হবে।",
		press_to_hide_unimportant_blips_in_map = "মেনুতে হলে গৈর-মিশন ব্লিপগুলি লুকানোর জন্য ~INPUT_SPRINT~ চাপুন।",
		consider_getting_a_smart_watch = "নিজের জিপিএস সবসময় দেখতে চাইলে স্মার্ট ওয়াচ কিনা বিবেচনায় নেওয়া উচিত।",

		press_to_pick_up_prescription = "নির্দেশিত মুহুর্তে প্রেস করুন ~g~${InteractionKey} ~w~এবং প্রেসক্রিপশনটি নিন।",

		redeem_oxy_prescription = "Oxy প্রেসক্রিপশন নিশ্চিত করুন",
		press_to_redeem_prescription = "নির্দেশিত মুহুর্তে প্রেস করুন ~g~${InteractionKey} ~w~এবং প্রেসক্রিপশনটি নিশ্চিত করুন।",

		check_your_map_to_redeem_prescriptions = "ভাল কাজ! ${time} সময় থাকছে। প্রেসক্রিপশনগুলি নিশ্চিত করতে আপনার মানচিত্র দেখুন।",
		go_to_jc_to_finish_run = "বেশ ভালো কাজ! ${time} সময় থাকছে। মামলাটি সমাপ্ত করতে ফিরে ~y~JC ~w~এ যান।",

		oxy_run_started_title = "Oxy আরম্ভ হয়েছে",
		oxy_run_started_details = "${consoleName} Oxy এর রান শুরু করেছেন।",

		oxy_run_ended_title = "অক্সিজেন রান শেষ হয়েছে",
		oxy_run_ended_details = "${consoleName} ${time} পর অক্সিজেন রান সম্পন্ন করে $${payout} টাকা উপার্জন করেছেন।",

		oxy_run_failed_title = "অক্সিজেন রান ব্যর্থ হয়েছে",
		oxy_run_failed_details = "${consoleName} অক্সিজেন রান ব্যর্থ হয়েছে।",

		you_failed_the_run = "আপনি রান ব্যর্থ হয়েছেন। ~y~JC ~w~কিছু সময় ধরে আপনার সাথে খুব খুশ উঠতে পারেন না।",

		time_left = "আপনার পাছে এখনও ${time} সময় আছে।",

		accidental_call_1_part_1 = "হ্যালো, কেমন আছেন?",
		accidental_call_1_part_2 = "এটা নিয়ে আমি কিছু ব্যবস্থা করছি কারণ কেউ অক্সিজেন চালাচ্ছে।",
		accidental_call_1_part_3 = "হ্যাঁ, আমি তার প্লেট, কার, এবং এসব সমস্ত জিনিস নিয়েছি।",
		accidental_call_1_part_4 = "এবং মূলত যখন সে বসে থাকে, তার গাড়ি থেকে উঠে পদরক্ষা করে আমি চাই তুমি প্রবেশ করে এদের জিনিসটি নিয়ে যাও।",
		accidental_call_1_part_5 = "না, সে কিছুই জানে না তো সে হয়তো আমাদের দল মনে করবে। আমি তাকে কেন্দ্রশহরে পাঠিয়ে দিয়েছি তাই সে হয়তো আমাদের কোনো বাইরের দলের জন্য মনে করবে।",
		accidental_call_1_part_6 = "আমার কথা শুনে নিশ্চয় হবে।",
		accidental_call_1_part_7 = "ওওওও! হ্যাঁ বন্ধু, তুমি কি বলছো? তুমি না, অন্য মানুষ! আমি দুই জন পাঠিয়েছি না, তোমাকে না!",
		accidental_call_1_part_8 = "তুমি সুষ্টু! তবে সমস্ত ... একটি ভিন্ন ব্যক্তি ছিল। তুমি ছিলনা দয়া করে।",
		accidental_call_1_part_9 = "তুমি না। তুমি বুঝতেওঃ না ছিল!",
		accidental_call_1_part_10 = "তবে সাবধান থাকো, কারণ তুমি খেলার মধ্যে খুব সহজেই তোমার গাড়ি নেবো।",
		accidental_call_1_part_11 = "ভালবাসা।",

		accidental_call_2_part_1 = "হা, তুই কি বলছিসেন বেবি?",
		accidental_call_2_part_2 = "হ্যাঁ আমি মিথ্যা বলতে পারি না, আমি কেবলমাত্র তোমার পা উপরে সরসফাট লাগিয়ে তার উপর চটকানো ও একটি হটডগ মতো পরিবেশন করতে চান।",
		accidental_call_2_part_3 = "হাই বেবস।",
		accidental_call_2_part_4 = "অপেক্ষা করো..",
		accidental_call_2_part_5 = "ওহ, দুঃখিত ভাই।",

		accidental_call_3_part_1 = "হেই, কি বলছো ভাই?",
		accidental_call_3_part_2 = "হ্যাঁ, নতুন হিপ-হপ গান আমি গেয়েছি তোমার জন্য।",
		accidental_call_3_part_3 = "হ্যাঁ, এটি একটি খুব কম কথায় এমন গান।",
		accidental_call_3_part_4 = "আমি তোমাকে ভালোবাসতে চাই, আমি তোমাকে ভালোবাসতে চাই, আমি তোমাকে চুমু খেতে চাই, আমি চাই ...,",
		accidental_call_3_part_5 = "ওহহ, ওহ ওহ ... আমি মনে করি না, সেটা আমি না বলেছি।",
		accidental_call_3_part_6 = "ওকে, ভুল নম্বর, আমার ভাই, আমার ভাই...",

		accidental_call_4_part_1 = "হেই ব্রাদার, তুমি কখন আমার কবল ধরে আসবে?",
		accidental_call_4_part_2 = "খুব দিন হয়ে গেছে আর আমার দরকার, ভাই তুমি জানো আমি স্পার্কলি একটি পছন্দ করি এবং -",
		accidental_call_4_part_3 = "ওকে.. যেহেতু তুমি ভুল নম্বর, আমরা এটা ভুলে ফেলেছি, তুমি এটা শুনে ছিলেন না একটুও।",
		accidental_call_4_part_4 = "'কারণ যদি তোমার শোনা হত সেটা হত তুমি মৃত্যু করা হত, তুমি কি বুঝতে পারো আমি কি বলছি?",

		accidental_call_5_part_1 = "হেই মা, আমি এখন খুব ভয় পেয়েছি..",
		accidental_call_5_part_2 = "হ্যাঁ, আমার দরজার বাইরে কিছু লোক ছিল, আর আমি কি করব জানি না মা।",
		accidental_call_5_part_3 = "আমি কিছুটা ভীত, কারণ আমি মনে করছি আমি খুব গভীরে অংশটায়।",
		accidental_call_5_part_4 = "মা... ওহ, ওহহ... ওহ, ব্রাদা তুমি কী বলছ? ",
		accidental_call_5_part_5 = "হ্যাঁ, না, তোমার কি আমার অভিনয় দক্ষতা ভালো লেগেছে আর কি?",
		accidental_call_5_part_6 = "আমি বিশ্বাস করি তবে, ভাই, তুমি আরেকটা পরিষেবা ফিরে নেওয়ার ব্যাপারে কখনই অবগত হবে না, নাহলে তুমি মরতে হবে।",
		accidental_call_5_part_7 = "তুমি জানো না আমি কি বলছি? আমি তোমার কাছে যাচ্ছি এবং তোমাকে ভিন্নভাবে কাটবো ভাই।",
		accidental_call_5_part_8 = "ব্রাদা, আপনি কি বুঝতে পারছেন?",
		accidental_call_5_part_9 = "আমি আপনাকে বিশ্বাস করতে বলছি ভাই, ফাক ইউ!",

		accidental_call_6_part_1 = "একটু একটু লাল ভাই, এখানে এসো দেখাইছি তোমার পিতা ফোনে বলছে বাড়ি যত হবে শীঘ্রই সেখানে আস",
		accidental_call_6_part_2 = "আপনার বাবা বলছেন তোমার ফোনে, ব্রাদা ফোনে তোমার বাবা",
		accidental_call_6_part_3 = "এটা তোমায় লাল করবো ভাইংোটা তো পরোক্ষভাবে তো দেখিনি তুমি এখন তো নিচ্ছি তোমার কাম কর ভাই, এটা নেও এটা নেও এটা নেও",
		accidental_call_6_part_4 = "হ্যালো? পাপা তুমি কি?",
		accidental_call_6_part_5 = "পিতা?!",
		accidental_call_6_part_6 = ".. অপেক্ষা করো! না তা পিতা না তা অন্য কেউ আচ্ছা.. না! কেন-",
		accidental_call_6_part_7 = "তুমি একজন মুরব্বি, আমি বিশ্বাস করতে পারছি না তোমার প্রতি ওভার!",
		accidental_call_6_part_8 = "ওহ্ মাই গড...",

		maxed_out_runs_part_1 = "ব্রো, আমি জানি তুমি কাঁচা পদার্থ পছন্দ কর, তবে কিছু অন্য মানুষেরও কিছু দিতে দাও।",
		maxed_out_runs_part_2 = "এ একটু হাঁটু দিয়ে আমাকে দেখলে হত্যা হয়ে যাবে।",
		maxed_out_runs_part_3 = "ট্র্যাশ একুশিতে কিছু মানুষের সাথে কথা বলতে যাও এমনকী খানকি করো।",

		mission_completed_1_part_1 = "ওয়াগ১ ব্রো, আই কান্ন বলতে না পারি আপনি যেটা করেছেন তা ভালো ছিল, আমি জানতে ছিলাম যে আমি আপনার উপর নির্ভর করতে পারবো।",
		mission_completed_1_part_2 = "ব্রো, যদি তুমি আর কিছু ক্যাশ লাগাতে চান তাহলে আমার কাছ থেকে পাবে। ",
		mission_completed_1_part_3 = "আমি শীঘ্রই স্টক আপ করবো, তোমার চিন্তা নেওয়া লাগছে না।",

		mission_completed_2_part_1 = "কি বললি ভাই।",
		mission_completed_2_part_2 = "মনে হয়, এই কাজটি সেরা ছিল।",
		mission_completed_2_part_3 = "হ্যাঁ, আমি আশা করি যে মওকাবিলাকারীরা এখনও তোমাকে ভালবাসছে এবং আমি তোমাকেও ভালবাসি, কারণ তুমি জানো কেন?",
		mission_completed_2_part_4 = "তুমি আমাকে টাকা দিয়েছে; আপনি নিজেকে কিছু টাকা দিয়েছেন।",
		mission_completed_2_part_5 = "তুমি এটা নিয়ে চলে যাও, কিন্তু পরে একবার ফিরে আসো, কারণ আমার আবার তোমার প্রয়োজন।",

		mission_completed_3_part_1 = "কি বলছো ভাই।",
		mission_completed_3_part_2 = "আই কেনে লাই, ওহ টিং ব্যাক থেকে ছিল .. সুন্দর ভাই।",
		mission_completed_3_part_3 = "তুমি এটি ভালোভাবে করতে পারলে আর কেউ না পারে ভাই।",
		mission_completed_3_part_4 = "সর্বশেষ মানুষ ভুল করেছে, তাই আমি খুশি যে তোমাকে পেয়েছি ভাই।",
		mission_completed_3_part_5 = "পরে আবার আসো ভাই, আমি তোমার জন্য আরও কিছু ঝামেলা আছে ভাই।",

		mission_completed_4_part_1 = "ওহ তুমি কিভাবে বিক্রি করতে পারো জানো?",
		mission_completed_4_part_2 = "তুমি কিছুটা ব্যবসা মানুষ হতে পারে ভাই, আমি বিশ্বাস করি তোমার কাছে আরো ঝামেলা রয়েছে।",
		mission_completed_4_part_3 = "ভাইয়া তোমার মতন লোককে বিক্রি করার উপায়টা না দেখে কি হয়েছিলো।",
		mission_completed_4_part_4 = "হ্যাঁ হ্যাঁ, ওয়ে, তোমার জন্য ভালোবাসা নেই।",
		mission_completed_4_part_5 = "তবে তোমার জন্য আমি ভিন্নভাবে উপকার করতে চাই, তাই পরে ফিরে আস, একটু সময় লাগবে তবে আমার কাছে পিল থাকবে।",
		mission_completed_4_part_6 = "আমার আরো আছে, হ্যাঁ হ্যাঁ, আমি তোমাকে ভরসা করতে চাই।",

		mission_completed_5_part_1 = "ব্রাদা, তোমি এখানে কি করছো?",
		mission_completed_5_part_2 = "ওহ, তুমি হয়তো! কি বলছো ব্রাদা?",
		mission_completed_5_part_3 = "হ্যাঁ, আই, তোমার জন্য ভালোবাসা- আই, তোমার জন্য ধন্যবাদ।",
		mission_completed_5_part_4 = "'যা তুমি দিলে মাঝে মাঝে মাঝারি হয়ে গেছে। এখন আমার বেশি টাকা আছে, আমি নতুন একটি EDM গাড়ি কিনবো তুমি বুঝছো না বাই?",
		mission_completed_5_part_5 = "দিংকা ব্লিস্টা, সব থেকে, হ্যাঁ, কিন্তু আবার পরে আসো ভাই, সত্যিই বলছি।",
		mission_completed_5_part_6 = "'কারণ আমার তো আরও কিছু জিনিস আছে তোমার জন্য ভাই।",

		mission_completed_6_part_1 = "ওয়াও তুমি দেখতে হওয়া উচিত ছিল গগিনস্মিলের মুখ ভাই।",
		mission_completed_6_part_2 = "তিনি একটি বান্দা মনে হয়, তা বলতে হবে না।",
		mission_completed_6_part_3 = "তোমাকে তার পিছনে কেউ আছে বলে জানতে ছিলেন না?!",
		mission_completed_6_part_4 = "তার উপর আঘাত পড়েছিল তবে ভাল কাজ করলে করলে।",
		mission_completed_6_part_5 = "বলতে গেলে তুমি এতো ভালো করলে আমি মিথ্যা বলতে পারব না ব্রাদা।",
		mission_completed_6_part_6 = "পরে ফিরে এসো, আরো কিছু আছে ব্রাদা।",

		mission_completed_7_part_1 = "কি সমস্যা ব্রাদা?",
		mission_completed_7_part_2 = "অবশ্যই কিন্তু আগের জিনিসটি জন্য বলতে বাধ্য হইয়ে ওখানে তিনি সুন্দরী ছিলেন।",
		mission_completed_7_part_3 = "ব্রাদা তুমি এখনও সেখানে না থাকলেও আরো ভালো জিনিস অপেক্ষা করছি।",
		mission_completed_7_part_4 = "সর্বশেষ মানুষ ভুল করে ফেলল, তাই আমি খুশি যে তোমার সহায়তায় অবস্থাটি উন্নয়ন পেয়েছি।",
		mission_completed_7_part_5 = "ভাই, পরে ফিরে এস, আমি আরও কিছু জিনিস দিতে হবে তোমাকে। আমি তোমাকে বিশ্বাস দিচ্ছি।",

		mission_completed_8_part_1 = "এই বসম্যান হোল আমার উল্লেখ করা লোক ভাই। হ্যা, বিশ্বাস কর ভাই, এর সুবিধা আছে ভালো লোকের জন্য।",
		mission_completed_8_part_2 = "এই লোকটি খুব সারাটা।",
		mission_completed_8_part_3 = "সব সময় সময়ে এই লোকটি সরবরাহ দেয়।",
		mission_completed_8_part_4 = "ক্লায়েন্টরা এই লোকটি খুব খুশি।",
		mission_completed_8_part_5 = "বিশ্বাস কর ভাই, এই লোকটি একপ্রকারের খুব জনপ্রিয়। তবে লক্ষ্য করো, তুমি আমাকে কখনোই হারাতে পারবে না।",
		mission_completed_8_part_6 = "'কারণ তুমি একটা মানুষ জঙ্গল, তুমি বুঝতে পারো'",
		mission_completed_8_part_7 = "কিন্তু ভাই, প্রেম হলে পরে আবার আস দিবো। আরো কিছু পিল দিতে হবে।",

		mission_failed_1_part_1 = "হ্যাঁ ভাই, আমি ঝগড়া না করছি ক্যালেন্ডার সম্পর্কে। ক্লায়েন্ট আমাকে কল দিয়েছিলেন এবং বলেছিলেন যে তুমি তো এই পণ্যটি আমার নামটি দিয়ে হস্তমেল করছ না।",
		mission_failed_1_part_2 = "কি হচ্ছে ভাই?",
		mission_failed_1_part_3 = "তুমি বড় ভুল করেছে।",
		mission_failed_1_part_4 = "আমার চোখের মুখ থেকে চলে যাও।",
		mission_failed_1_part_5 = "আবার যদি আমার কাছে একটা থাক দেখি, তাহলে তোমার জীবন শেষ হবে।",

		mission_failed_2_part_1 = "হ্যাঁ, আমাদের এখন একটি বড় সমস্যা রয়েছে।",
		mission_failed_2_part_2 = "আমি মিথ্যা বলতে পারি না, তুমি বেশ দেরি হয়েছে, কি হচ্ছে তোমারা?",
		mission_failed_2_part_3 = "হ্যাঁ, ভাই, অবশ্যই আমার ক্লায়েন্টদের রাগ লেগেছে।",
		mission_failed_2_part_4 = "তোমার কোনও কিছু আর আমাকে নিয়ে প্রচেষ্টা করবেন না ভাই।",
		mission_failed_2_part_5 = "তুমি হতাশ হয়ে গেছো, তোমার সমাপ্তি হয়ে গেছে ভাই।",

		mission_failed_3_part_1 = "হ্যাঁ, হ্যাঁ, হ্যাঁ, হ্যাঁ, ওই, ওই...",
		mission_failed_3_part_2 = "আমি মিথ্যা বলতে পারি না।",
		mission_failed_3_part_3 = "তুমি প্রথম ব্যক্তি যার কাছে আমি এটা বলছি।",
		mission_failed_3_part_4 = "তুমি একটা মরকের।",
		mission_failed_3_part_5 = "তোমাকে জানানো যাচ্ছে? হ্যাঁ? তুমি একটা মরকের।",
		mission_failed_3_part_6 = "জানতে হলে কেন?",
		mission_failed_3_part_7 = "কারণ তুমি আমার সামান পরিবহণ করেনি ভাই।",
		mission_failed_3_part_8 = "চলে যান ভাই। আমি তোমাকে আমার এলাকার সাথে কোন জায়গায় দেখতে ইচ্ছা করি না।",
		mission_failed_3_part_9 = "তুমি প্রসঙ্গটায় বিনা সমাধানে থাকলে সরাসরি হামলার মার্গে পড়বে ভাই।",
		mission_failed_3_part_10 = "দেখ ভাই, আমার সকল আলোকচ্ছায়িত দুটি বন্দুক এখন হাতে আছে।",
		mission_failed_3_part_11 = "কোটা ওপর তুমি ভাই।",
		mission_failed_3_part_12 = "হ্যাঁ, এটা হচ্ছে ... ব্রাদার থেকে ফাঁক অফ।",

		mission_failed_4_part_1 = "ইউ, তুমি কি বলছ ব্রাদার?",
		mission_failed_4_part_2 = "ওয়াও, শুধুমাত্র একটি সংক্ষিপ্ত বিষয়।",
		mission_failed_4_part_3 = "যদি আবার আমারে নিকট আস। অবশ্যই তুমি মৃত্যু।",
		mission_failed_4_part_4 = "হ্যাঁ, তুমি কি জানো?",
		mission_failed_4_part_5 = "'কোস তুমি খারাপ হো, ব্রাদার। তুমি আমার কাজ বাধাইয়ে তোমার যেন বস্তু নাই ব্রাদার।",
		mission_failed_4_part_6 = "এরসাথে কি হচ্ছে?",
		mission_failed_4_part_7 = "ক্লায়েন্টগুলি রাগ করছে, তারা আমার কাছে এসে বলছে আমি একটি ছাত্র ব্রাদার।",
		mission_failed_4_part_8 = "বিশ্বাস করতে পারছি না আমি তোমার কাছে আসলাম।",
		mission_failed_4_part_9 = "মনে করতাম তুমি আমার মানুষ হলে বা কিছু।",
		mission_failed_4_part_10 = "কিন্তু না, তুমি একজন শিয়াল হলেও ভালো না। ফাক ওলা হইস।",
		mission_failed_4_part_11 = "আমার চোখে থেকে চলে যাও।",

		mission_failed_5_part_1 = "হ্যাঁ, সর্বশেষটায় তুমি খুব ভালো করিনি..",
		mission_failed_5_part_2 = "একটু ঝামেলাপূর্ণ করে ফেলেছ ব্রাদার।",
		mission_failed_5_part_3 = "সেখানে কখনোই আসবে না বলে মনে রাখো!",
		mission_failed_5_part_4 = "কারণ ভাব করতে পারো না, আমি তোমার দুক্ষিত করে ফেলব।",

		mission_failed_6_part_1 = "হেই, ব্রাদা তুমি কি বলছো?",
		mission_failed_6_part_2 = "আমি বলছি, যদি আবার আমার জায়গায় আসো তাহলে ব্রাদা।",
		mission_failed_6_part_3 = "আমি র‍্যাম্বো পাবো এবং আমি তাকে তোমার সিঙ্গ আপ করবো ব্রাদা!",
		mission_failed_6_part_4 = "আমি মনে করি দেখ ব্রাদা! তুমি আমাকে ধ্বংস করে দিলে!",
		mission_failed_6_part_5 = "ক্লায়েন্টরা আমাকে বেল করছে, বলছে যেটা আছে তা খুব রাগ করছে।",
		mission_failed_6_part_6 = "সব তোমার কারণে ব্রাদা, সব তোমার কারণে..",

		mission_failed_7_part_1 = "ব্রাদা আমার জায়গায় আর আসবেন না, তোমাকে ফাক যাওয়া হবে ব্রাদা।",

		mission_failed_8_part_1 = "ভাই, তুমি আমার প্যাকগুলি ধোয়ার পর্যন্ত চলে যাও।",

		mission_failed_9_part_1 = "ভাই, তুমি আমার প্যাক ধোয়ার পর্যন্ত চলে যাও।",
		mission_failed_9_part_2 = "না ভাই, আমার কাজ শেষ না হওয়া পর্যন্ত কখনই ফিরে আসবেন না।",
		mission_failed_9_part_3 = "তুমি বড় দোষী, এখন তোমার কাছ থেকে চলে যাও।",

		mission_failed_10_part_1 = "ওহে ভাই, ভালোভাবে প্রার্থনা করো যে তুমি আজ রাতের প্রথমটাই বাড়ি ফিরেতে পার।",
		mission_failed_10_part_2 = "'কারণ আমি তোমার কাছে আসছি।",
		mission_failed_10_part_3 = "ওহে ভাই, আবার তোমার পর ফেল না ভাই, আমি ঈশ্বরের নামে বলছি ভাই।",

		no_pills_1_part_1 = "হায় ভাই, মোটামুটি কি কথা? বাসলাম আজকের দিন।",
		no_pills_1_part_2 = "এখন আমার কিছু নেই।",
		no_pills_1_part_3 = "সুতরাং যা আমি বলছি..",
		no_pills_1_part_4 = "ভাই, অন্য সময় আসো। এখন আমার কাছে কিছু নেই।",

		no_pills_2_part_1 = "হ্যাঁ, ভাই তুমি কি বলছো। সমস্যা হল এখন খুব দোকান বন্ধ দুঃখিত..",
		no_pills_2_part_2 = "এখন আমার কাছে কোন পিল নেই ভাই।",
		no_pills_2_part_3 = "আমাকে একজন ধরে ফেললে পিল ছিনি ভাই!",
		no_pills_2_part_4 = "এই, আমি এই লোটটি কল করেছি, বলে দিয়েছি .. ওয়াগ১ তো, কোথায় খুঁজে নেওয়া হচ্ছে? ..",
		no_pills_2_part_5 = "আমার বন্ধু বলেছেন যে তারা এখানে নেই ব্রাদার।",
		no_pills_2_part_6 = "এই লোটি কিছু হয়তো একটি লিবার্টি সিটি জিনিস চালনায় আছে ব্রাদার, মাতাল হওয়ার মতো কিছু ব্রাদার হয়।",
		no_pills_2_part_7 = "তারা অনেকটা দীর্ঘসময়ে নেয়া চলছে ব্রাদার।",
		no_pills_2_part_8 = "তবে আমি নিশ্চিত যখন আর পাবো তখন অবশ্যই আমি তোমার কাছে যোগাযোগ করব।",

		no_pills_3_part_1 = "ওয়াহ, তুমি কি বলছ বন্ধু?",
		no_pills_3_part_2 = "ভাই আমাদের এখন কোনও পিল নেই, তাই কেন তোমার মায়ে যাও বন্ধু?",
		no_pills_3_part_3 = "আমি রাগ হতে শুরু করার আগে, তুমি বোঝো তো?",

		no_pills_4_part_1 = "ওয়াগ১ ব্রাদার? এখন কোন পিল নেই, সুষ্ঠু রক্ত পোছা টাক দিও..",
		no_pills_4_part_2 = ".. সুষ্ঠু নেই, চলে যাও ব্রদার..",
		no_pills_4_part_3 = "চলে যাও ব্রদার, তুমি মুখ্যমন্ত্রী হলে খেলা শেষ..",

		no_pills_5_part_1 = "ওয়াও মানুষ!",
		no_pills_5_part_2 = "কি বাবা? আমাদের একটুখানি হিসেব নেই।",
		no_pills_5_part_3 = "এখন তোমার জন্য একটুখানি নাকি দিতে পারি না।",
		no_pills_5_part_4 = "একটু সময় পরে আবার এসো, আমি তোমার জন্য আছি।",
		no_pills_5_part_5 = "ভাই ভালো আছেন।",

		no_pills_6_part_1 = "ভাই, তোমাকে একটা জিনিস বলেছিলাম আগে দুই জনের কাছে যারা আমার কাছ থেকে কিছুই পেয়ে নাই।",
		no_pills_6_part_2 = "সূত্র: হাহাহা, আর সুন না তোমার কোল্লেকটিভিতে তোমাদের লিল বয়জরগুলিতে সুখ না হচ্ছে।",
		no_pills_6_part_3 = "তুমি জানো এমনিকে? এটা তোমার শেষ হয়ে যাবে ভাই, তোমাকে ফাক you ভাই।",

		no_pills_7_part_1 = "হ্যাঁ, আমি এখানে বড় কিছু। তুমি জানো না কি?",
		no_pills_7_part_2 = "তারপরো এখন বড় কিছু কোনটা নেই.. তাহলে সামনের ছোট কিছুকে ফাক দাও তুমি।",
		no_pills_7_part_3 = "আপনি যা বলছেন, তা আমি বুঝতে পারছি।",

		no_pills_8_part_1 = "ওহে, কি বলছেন?",
		no_pills_8_part_2 = "এই সময় আমি নিবির থাকতে হবে।",
		no_pills_8_part_3 = "হ্যাঁ, আমি ঝাঁপি দিতে পারব না .. কিছু ফেডস আগেই এখানে আসেছে।",
		no_pills_8_part_4 = "আমাদের এখন কোনও পিল নেই। আপনি জানেন না?",
		no_pills_8_part_5 = "আমার জন্য এটি বন্ধ। প্রতিটি হিট ঢলে যাওয়া পরে ফেরত আসুন তবে ভাইয়া।",

		no_pills_9_part_1 = "হ্যাঁ, আমি ঝাঁপি দিতে পারতাম না, কাউকে আগেই আমার জিনিস নিয়ে চলে গেছে।",
		no_pills_9_part_2 = "কিন্তু চিন্তা করবেন না। আমি এখনই আপনাদের জন্যে কুইটার্স ডিপ্লয় করে দিয়েছি।",
		no_pills_9_part_3 = "তাই জব আমরা পিল পেলাম, অবশ্যই ফিরে আসুন এবং আমি আপনাকে মুক্ত করে দেবো, আমি সেই কাজটি সম্পন্ন করে ফেলেছি ব্রাদা।",

		no_pills_10_part_1 = "হাই ব্রাদা, কি খবর?",
		no_pills_10_part_2 = "হ্যাঁ, এখন উত্তরে কিছু গাং আছে বা কিছু এমন কিছুই।",
		no_pills_10_part_3 = "তারা সেই জিনিসটি চুরি করেছে, সুতরাং আমরা একসাথে যাবো, উপরিভাগটি প্রাপ্ত করব এবং আমরা আপনাকে মুক্ত করবো ব্রাদা।",
		no_pills_10_part_4 = "তার জন্য ভালোবাসা।",

		no_pills_11_part_1 = "হাই ব্রাদা, কি খবর? হ্যাঁ, এখন কোনও কাজ নেই ব্রাদা। কোন কাজ নেই।",
		no_pills_11_part_2 = "এখন আপনার জন্য একটু খারাপ দিন হয়েছে। এখন কিছুই নেই।",
		no_pills_11_part_3 = "কিন্তু মূলত আমি সবার কাছে এটা বলি এটা বলতে...।",
		no_pills_11_part_4 = "কেনো আবেগ না করে চলে গেলে বেশি ভাল হয়। ধন্যবাদ।",

		no_pills_12_part_1 = "না ব্রাদা এখন আমার কাছে কিছুই নেই।",
		no_pills_12_part_2 = "পরে আসো ভাই, পরে আসো।",

		no_pills_13_part_1 = "ব্রাদা! চলে যাও ভাই! আমার কাছে কিছুই নেই ভাই!",
		no_pills_13_part_2 = "ভাই আমার কাছে কিছুই নেই! চিহ্নটা রাখ ভাই!",

		no_pills_14_part_1 = "দেখতে ভাই, আমার এখন কোনও পিল নেই বলেই বলেছি।",
		no_pills_14_part_2 = "তাই তুমি যদি চিং পেতে চাও, আবার আমার দিকে এসো একবার বলে আমার অনুরোধ করছি।",

		no_pills_15_part_1 = "না, সুন ভাই। তুমি এখন আমাকে বিরক্ত করছ বলে বলছি।",
		no_pills_15_part_2 = "সত্যিই তো তথ্যটা লোক কেটে ও দিতে পারছি না বলতে।",
		no_pills_15_part_3 = "তাই যদি তুমি আমার পিছু থেকে বিরত না হও, তাহলে আমি তোমাকে চাকমাকমাকমি এর সবচেয়ে নিকট করে কিছু করতে পারি ভাই।",

		not_leaving_1_muffled_part_1 = "ঠিক আছে, ভাই তো এখনো সেখানে থাকছে কেন?",
		not_leaving_1_muffled_part_2 = "ফেড কি?",
		not_leaving_1_muffled_part_3 = "আই, ওই.. বিরোধী কি না দেখো ব্রাদার, বিরোধী কি না দেখো ব্রাদার।",

		not_leaving_2_part_1 = "ওই ব্রাদার, হালাল কর ব্রাদার, এখান থেকে চলে যাও।",

		not_leaving_3_part_1 = "ব্রাদার, এখন আপনি এখানে থাকার পাশাপাশি না..",
		not_leaving_3_part_2 = "আমি কিছু করছি। তুমি বুঝতে পারো।",
		not_leaving_3_part_3 = "আমি আমার পাখি চুমু দেওয়ার চেষ্টা করছি ব্রাদার, আর তুমি যে এরকম একটা মাথা ঝাকতে হেটে গেছ ব্রাদার।",
		not_leaving_3_part_4 = "হালাল কর ব্রাদার।",

		not_leaving_4_part_1 = "ওই, অনুগ্রহ করে ব্রাদার, চলে যাও ব্রাদার।",
		not_leaving_4_part_2 = "আগেই বলছি ভাই। আমি ঈশ্বরকে সত্যি বলছি।",

		not_leaving_5_part_1 = "ভাই তুমি এখন মাখা খাচ্ছ। আমি ঝাপটিয়ে না বললেও বলি না।",
		not_leaving_5_part_2 = "দাও ভাই আসি সেখানে আর চোখে পানি দেখিস।",
		not_leaving_5_part_3 = "শীঘ্রই চলে যাও ভাই।",

		not_leaving_6_part_1 = "ভাই .. এখানে আমি বড় বস।",
		not_leaving_6_part_2 = "তুমি এই জায়গার মালিক হওয়ার মত আচরণ করবেন না। দো মালিক হওয়ার কাজ কর।",

		not_leaving_7_part_1 = "ওই দেখো ভাই, আমি এক বার আর এইভাবে করলে ব্যাকআপ নাচনুক বলে তোমাকে কল করবে।",
		not_leaving_7_part_2 = "তারা আপনার সাথে আর কিছু করতে চলে গেলে, ব্রো।",

		not_leaving_8_muffled_part_1 = "ঠিক আছে, এখন উপস্থাপন কর, উনি খুব দেরি করে নেয়। ব্রো।",

		not_leaving_9_part_1 = "ব্রু, তোমাকে বড় চিঙ্গা বাইর করার জন্য আমাকে না দাঁড়াও।",
		not_leaving_9_part_2 = "তুমি আমার ব্লকে পা রাখার কথা চিন্তা করো না, ব্রো।",
		not_leaving_9_part_3 = "তুমি তোমার কাজটি সঠিকভাবে করছো না এবং খুব দেরি করছো, তোমার টিং থেকে পিছিয়ে যাও। ব্রো।",
		not_leaving_9_part_4 = "তুমি আমার ঘরে এবং আমার মধ্যে আছে, তুমি মনে করো তুমি কেউ বড় লোক না, ব্রো।",
		not_leaving_9_part_5 = "তোরা অপেক্ষা কর ভাই, আমি তো তোর এই এলাকা উপরে ধর দেব ব্রাদার।",

		not_leaving_10_muffled_part_1 = "হ্যাঁ, এই ব্যক্তি এখানে গ্যাস হচ্ছে কোণায় যেন তার ক্ষেত্র হল আমার ব্লক, ব্রাদার।",

		not_leaving_11_part_1 = "চলো ভাই, এগো চলো ব্রাদার।",
		not_leaving_11_part_2 = "তুমি এখান থেকে চলে যাওয়া হয়েছে ব্রাদার।",

		not_leaving_12_muffled_part_1 = "হেই, এতে বাধা ধরছে এই ব্যক্তির।",
		not_leaving_12_muffled_part_2 = "ব্রাদার, এই ব্যক্তি খুব দেরি করছে, চলে যাও!",
		not_leaving_12_muffled_part_3 = "আমি তোমাকে এখনই দেখছি, চলে যাও ব্রাদার!",

		not_leaving_13_muffled_part_1 = "ভাই! এই ব্যক্তিটি কতটা দেরি করছে এমন বুধি নেই।",
		not_leaving_13_muffled_part_2 = "এই অশ্লীল ব্যক্তিটি.. তার কিছু হতে হবে ব্রো।",
		not_leaving_13_muffled_part_3 = "তিনি নিশ্চিতভাবে একটি অশ্লীল ব্যক্তি।",

		start_1_part_1 = "ওই ভাই, ব্রো.. আয়, এখানে আসো, এখানে আসো..",
		start_1_part_2 = "হাঁ ব্রো, আপনি আর কিছু অক্সি চালাতে চান?",
		start_1_part_3 = "অ্যায়, তার জন্য ভালোবাসা করছি, তার জন্য ভালোবাসা করছি।",
		start_1_part_4 = "অবশ্যই সেটা জানেন ভালো?",
		start_1_part_5 = "অবশ্যই ভাই, আমি আপনাকে এখনই পিং পাঠাচ্ছি।",
		start_1_part_6 = "ভালবাসা করবেন।",

		start_2_part_1 = "ওয়্যাগ১ ব্রদার! আসো এখানে রিয়েল কুইক মাই গাই!",
		start_2_part_2 = "হ্যাঁ হ্যাঁ.. আবার অক্সিজেন চালাচ্ছেন কি ব্রদার?",
		start_2_part_3 = "তাই ব্রদার জন্য লভ।",
		start_2_part_4 = "তুমি জানো তো কি করতে হবে ব্রদার, নিশ্চই জানো।",

		start_3_part_1 = "ওয়্যাগ১ ব্রদা, এখন আসো ব্রদার, এখানে কমে ব্রদার।",
		start_3_part_2 = "অবিলম্বে কিছু অক্সিজেন চালাতে চাও ব্রদার?",
		start_3_part_3 = "ঠিক আছে না? আগা, আসো.. আসো.. তুমি ফেড না একটুও?",
		start_3_part_4 = "ওকে.. ওকে.. প্রেমের সাথে তো ব্রদার। ওয়্যাগ১, তুমি জানো তো কি করতে হবে, আমি আমার লোকের অবস্থান পাঠিয়ে দিচ্ছি এবং সব কিছু।",

		start_4_part_1 = "ওয়াহ্! তুমি শেষবারের ব্যাপারে শালা ছিলেন না?",
		start_4_part_2 = "ওয়াহ্, এখানে একটু আস, ভাই! তুমি শেষবার ভাল কাজ করেছ তা না বোলতে হবে আমাকে।",
		start_4_part_3 = "তো, মূলত হ্যাঁ.. সেই কাজটা পুনরায় চালাও, তুমি জানো মাঝেমধ্যে আমি তোমাকে পিং পাঠাবে।",
		start_4_part_4 = "তোমার জন্য ভালোবাসা।",

		start_5_part_1 = "ওয়াহ্, এখানে আস নিজেকে চরম ছাগলমাল ভাই!",
		start_5_part_2 = "হ্যাঁ, হ্যাঁ, হ্যাঁ.. আমি জানি- আমি জানি তুমি কে ভাই।",
		start_5_part_3 = "আমাকে বলো না, আমি জানি কে তুমি না এবং দিন।",
		start_5_part_4 = "কিন্তু মূলত যা আমি চাই, তা হলো, আবার অক্সি পিল চালাতে হবে।",
		start_5_part_5 = "সেই জিনিসগুলি যেগুলি গতবার ছিল? তুমি ড্রিলটি জানো তো না?",
		start_5_part_6 = "আর একটু পেতে আমি ফোনে জিনিসটি পাঠাব। ভাল থাকো ভাই।",

		start_6_part_1 = "ইয়ো, সেখান থেকে আমার বন্ধু! তুমি কি বলছো ভাই?",
		start_6_part_2 = "এই, কি হাল আছে আর সব কিছু.. বন্ধুই।",
		start_6_part_3 = "এই হালচালে.. আমাকে আবার তোমার দরকার হচ্ছে বন্ধু। একটা ছোট্ট মিশনের জন্য তোমার প্রয়োজন হবে একটু।",
		start_6_part_4 = "হ্যাঁ হ্যাঁ, আপনি জানেন, আপনি জানেন আমি কি বলছি, আপনি জানেন আমি কি বলছি..",
		start_6_part_5 = "ওক্সিকোন, হ্যাঁ হ্যাঁ, আপনি নিশ্চই জানেন। আহ, মোবাইলে আমি আপনাকে সেই জিনিসটি প্রেরণ করব।",
		start_6_part_6 = "আপনি যা করতে চান ভাইয়া, তার জন্য ভালবাসা।",

		start_7_part_1 = "হ্যাঁ, হ্যাঁ, হ্যাঁ, হ্যাঁ, হ্যাঁ, এটি - হেই, এটি আগের পেশাগত হুমকি দের গুলো থেকে একটি হাজার ভালো লোক!",
		start_7_part_2 = "আমি এই লোকটি মনে রাখি! হ্যাঁ, আহা, তুমি একজন মজার লোক ভাইয়া, আমি তোমাকে ভালোবাসি, আমি তোমাকে ভালোবাসি।",
		start_7_part_3 = "ওই, আমি আবার তোমাকে ওক্সিকোন চালাতে চাই। সুগমতিতে তা দ্রুত করে নাও ভাই।",
		start_7_part_4 = "আমি আপনাকে পিং পাঠাবো, আমি আপনাকে বিস্তারিত পাঠাবো। হ্যাঁ, হ্যাঁ..",
		start_7_part_5 = "এবং মনে রাখবেন, আধটাই আমার, তাই কোনওটা না নিতে যাবেন না বা আমি ঈশ্বরের নামে আপনাকে বেরিয়ে ফেলতে পারি ব্রো, ঠিক আছে।",
		start_7_part_6 = "আইটে, আইটে.. আপনার জন্যে এমন বলছি, যদি আপনি কিছুই নেওয়ার চেষ্টা করেন তাহলে আমি আমার অংশ ছাড়া দেব না ব্রো, ঠিক আছে।",

		start_8_look_to_sides_part_1 = "আই ব্রো, আমি নিশ্চয়ই দেখেছি ফের গগিনশমিয়েলটা এখান দিয়ে যাবে ব্রো।",
		start_8_look_to_sides_part_2 = "আই, এখানে আসো, বেইট ব্রো হওয়ার চেষ্টা করছেন না ব্রো।",
		start_8_look_to_sides_part_3 = "ওহ, ওহ.. এখন আমার জন্যে যা করবেন আপনি তা হল এই গোলি আমার জন্যে নিয়ে আসবেন না।",
		start_8_look_to_sides_part_4 = "আমি আপনাকে ওষুধ নিয়ে দৌড়াতে চাই বসমান।",
		start_8_look_to_sides_part_5 = "বিস্তারিত আমি এখন তোমাকে একটা ইংক্রো পাঠাব, তুই জান না?",
		start_8_look_to_sides_part_6 = "তবে মনে রাখবেন, তোমার মাথা নামাতে হবে, কেননা আমি অনেক ফেডস দেখতেছি!",
		start_8_look_to_sides_part_7 = "তবে যদি ফেল হয় তাহলে, তোমার কোনও ধরনের বক্তব্য দেওয়া উচিত না। তুই প্রাণহানি হচ্ছো বাইবাই।",
		start_8_look_to_sides_part_8 = "তোমাকে কি বলছি ভাই? পাশের বন্দুকী ছাড়া কিছুই না।",

		start_9_look_to_sides_part_1 = "ওহ না ভাই, আমি এখন সেখানে একজন পুলিশ দেখেছি!",
		start_9_look_to_sides_part_2 = "তুমি কি অনুসরণ করা ছিল না বা সে কেউ তোমাকে অনুসরণ করছিল না?",
		start_9_look_to_sides_part_3 = "কারণ আমি - আই ক্যানট লাই এফআইবি এ্যাগেন্সি এখন একটি নেক্স্ট লেভেল জিনিস করছে।",
		start_9_look_to_sides_part_4 = "তাদের উপরে বাইক অনেক আছে এবং এক্সক্লুসিভ জিনিস ডিভেলপ করছে।",
		start_9_look_to_sides_part_5 = "আমি সব দেখতে পারি এবং সব জানি ভাই। এই বক্তব্যটি আমি একটু দেওয়ার জন্য বলছি।",
		start_9_look_to_sides_part_6 = "হ্যাঁ হ্যাঁ.. তিনি আগে তোমার উপর ছিলেন ভাই, তুমি মনে কর না - তুমি আরেকটি গাড়ি মাঝে থেকে না লেগেছো সেই চার্জারের সাথে ভাই।",
		start_9_look_to_sides_part_7 = "তবে তিনি লাইট চালু করেননি? তবে বিশ্বাস করুন..",
		start_9_look_to_sides_part_8 = "হ্যা, আমি জানি এটা, আমি জানি এটা।",

		start_burger_shot_part_1 = "ওহে! আমি একবার আপনাকে বার্গার শটে দেখেছি.. তুমি প্যাটি ফুটানো না?",
		start_burger_shot_part_2 = "হ্যা, আমি মিথ্যা বলতে পারব না, তোমার অবশ্যই এই টাকা প্রয়োজন।",

		start_cop_1_part_1 = "ওয়াও! মেজ ব্যাংক থেকে একজন ফেড স্মেল করতে পাচ্ছি বোনা..",
		start_cop_1_part_2 = "আমি বলতে পারি আপনি একজন ফেড।",
		start_cop_1_part_3 = "ছোট ছেলে কপ গাড়ি থেকে আমি বাইরে পরিস্থিতি তৈরি করার আগে ব্যাকআপ কল করে দিতে হবে।",

		start_cop_2_part_1 = "ওহে অফিসার, কি আছে? না, আমরা শুধুমাত্র ব্লেইন কাউন্টির অসুস্থ মানুষদের সাহায্য করছি।",
		start_cop_2_part_2 = "কোন গৈরিক কাজ চলছে না ভাই।",

		start_gang_member_part_1 = "আমি বিশ্বাস করি যে তোমাকে সেই একটি গ্যাংস দ্বারা মারা হয়েছিল।",
		start_gang_member_part_2 = "হাঁ হাঁ, নিশ্চই তুমি সেই হত্যাকারী গ্যাংটির উপর ধার লাগালে। আমি তোমার বাকস্বভাবে পেইন্ট দেখে বুঝতে পারলাম।",

		start_group_part_1 = "ওয়ে, শুনেছি তোমরা বেশিরভাগ যৌথ পরিবার সম্পদ আমার জন্য চালাতে চাই।",
		start_group_part_2 = "আমি ঝুঁকি নিতে চাই না কিন্তু এখন পরিস্থিতি কেটে যাচ্ছে না। তবে একজনের জন্য মাত্র পীল দেওয়া যাবে।",
		start_group_part_3 = "তাই নিশ্চিত হওয়া উচিত যে তুমি সেইটি সুন্দরভাবে নিয়ে চলে যাচ্ছো, তোমার ছোট দলের সাথে বা যেকোনো সমস্যায় ভোগ না করে, ব্রাদার।",
		start_group_part_4 = "'কজন্টাইম ইজ মানি' ব্রদা, এখন সময় টাকার না'। তুমি বুঝতে পারছো না তো?",
		start_group_part_5 = "তুমি এখানে চড়ুই দেখে সময় নষ্ট করছ ব্রো। জল্দি হেসে চলো ব্রাদার, ফাক অফ করে দেও।",

		start_knife_part_1 = "ওকে, তোমার কমর্শে একটি বড় র‍্যাম্বো আছে ব্রদার!",
		start_knife_part_2 = "ব্রদা, তুমি বস্তি ঘুরাতে যদি এই জিনিসটি ঘোরানো করো তাহলে এটা তোমার জন্য অসুখ হতে পারে ব্রাদার!",

		start_last_fail_part_1 = "ওইওইওইও, ওরা এখান থেকে আসছে। কেমন আছো ব্রদা? যেকোনো সমস্যায়, বলে দেখ।",
		start_last_fail_part_2 = "আই মূলত যেভাবেই হোক .. মিশনের জন্য আবার তোমার প্রয়োজন আছে কিন্তু ..",
		start_last_fail_part_3 = "হ্যাঁ হ্যাঁ .. তুমি জানো আমি কি বলছি, তুমি জানো আমি কি বলছি, অক্সিজেন, হ্যাঁ, নিশ্চতা তোমার।",
		start_last_fail_part_4 = "আই, মোবাইলে কিছু পাঠালাম।",
		start_last_fail_part_5 = "বড় ভাই তুমি যা করতে হবে তা করো, তোমার জন্য প্রেম।",

		start_legendary_tier_part_1 = "ওহোও, সুপারি তোমি সেই ভাবে টুক রেখোছো?",
		start_legendary_tier_part_2 = "অসাধারণ টিয়ার, ঠিক আছে, EDM জন্য পুরো ফ্লোর কিনতে হতে পারে তোমাকে!",
		start_legendary_tier_part_3 = "চলো।",

		start_mechanic_part_1 = "ওও, তুমি গাড়ি মেরামত করো তো?",
		start_mechanic_part_2 = "ওয়া জি, এই পরে আমি আমার আসবোকে ঠিক করার জন্য তোমার সাহায্য দরকার হবে কারণ ডিংগায় অনেকগুলো ডেন্ট আছে ব্রাদা।",

		start_mercedes_part_1 = "ওয়াও ব্রাদা, তোমার মার্সেডিস অনেক ভালো লেগেছে!",
		start_mercedes_part_2 = "আমি মিথ্যা বলতে পারবনা, আমি তোমার পছন্দের মার্সেডিসটি এখনো রাখতে চাই না।",

		start_no_gun_part_1 = "ব্রাদা, তুমি এখানে মৈত্রিণ ভাবে আসার সাথে সাথে লুঠফির্ত হবে আমাদের।",
		start_no_gun_part_2 = "তুমি উত্তেজিত নেই কারণ অদক্ষতার কারণে উত্তেজণ লুকিয়ে দেয়া হয়েছে তবে..",
		start_no_gun_part_3 = "পরবর্তী বারে নিজেকে রক্ষা করে রাখো।",

		start_on_timer_1_part_1 = "হেই, ভাই তোমাকে মিথ্যা বলতে পারি না, তুমি গতকালীনটা ভুলে গেছো, এখানে কি করছো ভাই?",
		start_on_timer_1_part_2 = "না ভাই, তুমি আরও পরে আসো যখন তুমি তোমার কর্মগত পরিচয় দেবে তাহলে এখনিই আসো তোমার অস্থিরতা এড়াতে একটানার বাচ্চা।",

		start_on_timer_2_part_1 = "না ভাই, শেষ বার তুমি আমার কাছে বিফল হয়েছ, তাই..",
		start_on_timer_2_part_2 = "যাও তোমার ঝামেলা আরো হান্য কর, তোমার বন্ধু নয়।",

		start_on_timer_3_part_1 = "এটা কি? তুমি এখানে এসে এমন ভুল করা পরে তুমি কি আমার কাছে এসে নেওয়া মুশকিল?",
		start_on_timer_3_part_2 = "না, আপনি যে না বেশ আগে থেকে ফাঁকি খাওয়ার আগে চলে যান ভাই!",

		start_on_timer_4_part_1 = "হ্যাঁ, আমি ঝামেলা বলতে না পারি, আপনি শুধু পরস্পর ভেঙে ফেললেন বেশি ভাই..",
		start_on_timer_4_part_2 = "আমি ঝামেলা বলতে না পারি যদিও, এখন আপনি যদি এখানে একটুও বেঁচে থাকার চেষ্টা করেন তাহলে আপনার জন্য একটুও ভাল নয় ভাই..",

		start_on_timer_5_part_1 = "হেই, কি বলছেন-তো অভিনন্দনও দেই?",
		start_on_timer_5_part_2 = "ঝামেলা বলতে না পারি ভাই, প্রথম বারের মতো না করলেন এবং আপনি এখনও ওষুধ পাই নি ভাই।",
		start_on_timer_5_part_3 = "ভাই প্রথম বারের মতো বেশি ঝামেলা করেছেন এবং এখন আপনার জন্য বেশ কষ্টকর হতে পারে ভাই..",
		start_on_timer_5_part_4 = "ভাই আর আসবেন না এখানে! আপনি কি বুঝতে পারছেন?",
		start_on_timer_5_part_5 = "আমি আপনার নাম জানি, আমি এখানে আপনার মুখ দেখেছি ভাই। আপনি এখান থেকে নিষ্ক্রিয় হয়ে যাচ্ছেন।",

		start_on_timer_6_part_1 = "হ্যাঁ, এই ব্যক্তি নিজেকে বেশ শক্তিশালী মনে করে? আমার কাছে যেভাবে তা কাজ করবে না। এখানে এমনভাবে কাজ করতে হয় না।",
		start_on_timer_6_part_2 = "না ভাই, এখানে এমন কাজ করা কাজ করে না।",
		start_on_timer_6_part_3 = "আপনি এখনি এখান থেকে চলে যেতে পারেন এমন কোন সুযোগ নেই!",

		start_on_timer_7_part_1 = "হ্যাঁ আমি মিথ্যা বলতে পারব না, এই ব্যক্তি নিশ্চিতভাবে ভুল করেছে।",
		start_on_timer_7_part_2 = "তুমি এই লোকটি দেখছো? হ্যাঁ, আপনি এই খারাপ লোকটি দেখছেন না?",
		start_on_timer_7_part_3 = "তিনি ভুল করেছেন ভাই, আয় ভাই এখানে আস ভাই!",
		start_on_timer_7_part_4 = "হ্যাঁ, আমি মিথ্যা বলতে পারিনা, তুমি একটি খারাপ লোক, চলে যাও ভাই, পরে আবার ফের আসতে পারো ভাই।",

		start_on_timer_8_part_1 = "হ্যাঁ, তুমি কোনও না কোনও ধরনের লোক ভাই।",
		start_on_timer_8_part_2 = "এই লোকটি আমার জায়গাটিতে ঘুরে বেড়ায়, আমার জিনিস ভাঙ্গল, আমার মানুষকে বিরক্ত করে দেয়।",
		start_on_timer_8_part_3 = "তারপর পুনরায় ফিরে এসে তিনি অপেক্ষা করছেন যে একটি রি - আপ পেতে পারবেন, প্রদানের জন্য প্রত্যাশা করুন ভাই!",
		start_on_timer_8_part_4 = "ভাইয়া রুটি পেতে আশা করছো.. তুমি কোন রুটি পাবেন না ভাইয়া...",
		start_on_timer_8_part_5 = "তুমি ধোঁকা খাচ্ছো ভাইয়া.. আমার দাঁড়ি থেকে চলে যাও ভাইয়া!",
		start_on_timer_8_part_6 = "এখান থেকে চলে যাও ভাইয়া, তুমি শেষ হয়ে গেছে এবং সব শেষ হয়েছে।",
		start_on_timer_8_part_7 = "ফোনটি অবদানসহ পিং হয়েছে, তুমি শেষ হয়েছো ভাইয়া! আমার দিকে কেউ আছে আরেকটি কাজে ভাইয়া।",

		start_over_31d_part_1 = "ভাইয়া আমি ঝকঝকে না! তুমি খুবই দির্ঘস্থায়ী এখানে আছো...",
		start_over_31d_part_2 = "আমি বিনয় করছি তুমি কিছু ছেদ করে আসো এবং ফিরে আসো ভাইয়া।",

		start_over_100k_part_1 = "তোমার নামে ১০০ টি ব্যাগ আছে এবং তুমি যেহেতু দোকানদার আছো সেজন্য কেন?",
		start_over_100k_part_2 = "এটা কেবল নগদে না, দেখে হ্যাঁ না করলে আমি নিশ্চিত করবো যে তোমার খুঁটিনাটি চুরি হবে।",

		start_revving_part_1 = "আইটি তুমি নিশ্চয়ই আমার সাথে সমস্যা হবে যদি এই একটি বাজি করতে থাকো।",
		start_revving_part_2 = "তোমার পা শান্ত করো, আমি তোমার সাথে শান্তি প্রদান করবো।",

		start_staff_1_part_1 = "হে ব্রাদার। তোমার কাজ যা সেটা ডিকহেড সম্পর্কিত তা ব্যান করতে হবে না কেন?",
		start_staff_1_part_2 = "চলো না, আমি টাকা দরকার কিন্তু আমি এডমিন মনিটরিং করছি।",

		start_staff_2_part_1 = "ভাই, তুমি এটি চলাকালীন মডারেটরের মত দ্বিতীয় ব্যবহারকারী!",
		start_staff_2_part_2 = "তোমাদের চাকরিটি করতে হবে, তবে এই চাকরিতে না।",

		start_streamer_part_1 = "ইউওওও, সেই একটি লোক যিনি মনে করে তিনি কিছু বড় স্ট্রীমার!",
		start_streamer_part_2 = "চ্যাটে Ls, এই লোকটি ফাক দে ভাই!",

		start_stressed_part_1 = "ভাই! কেন তোমার হাত কাঁপছে?",
		start_stressed_part_2 = "একটি সিগারেট বিরামিতে যাও বা কিছু কর ভাই, তুমি খুব জটিল হচ্ছে।",

		start_subaru_part_1 = "আয়, সেই সুবারুটা অফ-রোডে ভাল হয় তো ভাই!",
		start_subaru_part_2 = "কারণ এই ট্রেইল আমি আপনাকে নেওয়ার পথ একটা ভিন্ন!",

		start_under_10k_part_1 = "ভাই, আমি জানি তোমার নামে কমপক্ষে 10 হাজার টাকা আছে!",
		start_under_10k_part_2 = "তাহলে কেন তুমি তোমার গরীব মামা এবং এই পিলগুলি নেওয়ার জন্য স্থানটিতে যাও.. দ্রুত আমার ভাই।",

		start_under_24h_part_1 = "তুমি একটি জলদস্বীর মতো! এটা চাপান থাকো।",

		start_zombie_pills_part_1 = "ঠিক আছে তুমি জেড পিল ব্যবহার করেছে এবং এখন তুমি অক্সি পিল ব্যবহার করতে চাও..",
		start_zombie_pills_part_2 = "না, তুমি নিশ্চিতভাবে একটি ক্র্যাকহেড!",

		still_pressing_e_1_part_1 = "ভাই, কেন এত সমস্যা হচ্ছে? একটু এগিয়ে চলে যাও।",
		still_pressing_e_1_part_2 = "দাদা, আমি তোমাকে যে PING শেষ করে নিয়েছি, তোমার ফোনে চেক কর।",
		still_pressing_e_1_part_3 = "হ্যাঁ, তোমার একটু দেখ।",

		still_pressing_e_2_part_1 = "কি বোঝাইস? তুমি কি মূর্খ বাড়লে?",
		still_pressing_e_2_part_2 = "দাদা, পিং তো দিলে দিলাম, আপনি কি আন্ধ হয়ে গেছেন না? চেক কর।",
		still_pressing_e_2_part_3 = "ফোন দেখে ফাঁকা দিয়ে দাও দাদা!",

		still_pressing_e_3_part_1 = "আই, আমি ঝুঁকিপূর্ণভাবে বলতে হচ্ছে, আপনি আবার এটা আমার প্রতি করলে, আমি আপনাকে বলে দিয়েছি এক বেশি সময় ..",
		still_pressing_e_3_part_2 = "যদি আপনি আবার এটা করেন, তাহলে আমি নিশ্চিতভাবে ooters আপনার পিছনে পাঠাবো।",

		still_pressing_e_4_part_1 = "এখন আপনি পাগল হচ্ছেন। ফাক অফ ব্রাদার!",

		still_pressing_e_5_part_1 = "ব্রাদা, তুমি আমাকে পাগল করছ কি করে বুঝলাম না?",
		still_pressing_e_5_part_2 = "এসব বড় বক্তব্যের সাথে আমার সাথে আবার ফিরে আসুন?",
		still_pressing_e_5_part_3 = "হেই, তুমি এখন পেছনে ফিরে যাও, আমি মনোযোগকেন্দ্রিত হচ্ছি দেবতার সাথে তোমার বিপরীতে হাতিয়ার ব্যবহার করবো!",

		still_pressing_e_6_muffled_part_1 = "এই লোকটি একটি ডিকহেড তবে..",

		still_pressing_e_7_muffled_part_1 = "আই স্ট্যার্ট একটা ডিকহেড বোধ করছি বাই। ব্রাদার।",
		still_pressing_e_7_muffled_part_2 = "এই লোকটা চোখ নষ্ট করে ডিকহেড ত, তাকে খুব আস না!",
		still_pressing_e_7_muffled_part_3 = "তার মনে হচ্ছে আমি আরো গুস্তা করব, ব্রথার আমি আর গুস্তা করছি না!",

		still_pressing_e_8_part_1 = "ওই ব্রাদার, আমি দেখতে চলেছি যে অবাক করছ তুমি আমাকে।",
		still_pressing_e_8_part_2 = "তাই থামো এখনই।",

		still_pressing_e_9_part_1 = "ওই ব্রথার, যদি তুমি সম্পূর্ণ ঢুকি করে জ্বলিত থাক।",
		still_pressing_e_9_part_2 = "আমি মেটা যাচ্ছি এবং আমি এই এখানে তোপ ফুঁ দিয়ে দিতে চলেছি, ভাই ফাক ইউ ব্রাদার।",

		taking_too_long_1_part_1 = "ওয়াহ ভাই, তুমি আমার মতো থাকলে কিছুটা বেশি সময় লাগছে, তোমাকে কি বুঝাই?",
		taking_too_long_1_part_2 = "তুমি ব্যতিক্রমপূর্ণ জিনিসটি দ্রুতগতিতে শেষ করতে হবে।",

		taking_too_long_2_part_1 = "ওয়াহ, তুমি যদি আরো সময় নিয়ে থাক তবে আমাদের জন্য বড় সমস্যা হবে, তোমি বুঝছ কি?",
		taking_too_long_2_part_2 = "ভাই, তুমি আরো দেরি করছ তো, তোমার সময় হারিয়ে গেছে ভাই, দ্রুত হাত ধরে কাজ শেষ করো।",

		taking_too_long_3_part_1 = "যো ভাই, তুমি অনেক দেরি করছ ভাই, আমার কাজ চুরি করছ কি ভাই? তা কি তুমি চেষ্টা করছ ভাই?",

		taking_too_long_5_part_1 = "তুমি কি মজারি করছো ভাই? তোমরা এটা কি একটা হাস্যকর বিষয় মনে করছ এই বড় ভাই?",
		taking_too_long_5_part_2 = "এ, আসো না .. আমি তোমাকে না চাই এখন ভাই, এখনই লক্ষ্য করো তোমার সন্ধানে আসছি..",

		taking_too_long_6_part_1 = "ওরে ভাই, যদি তুমি আমার সময় নিয়ে খেলা করছো তবে আমি আমার জিনিসগুলো চাই..",
		taking_too_long_6_part_2 = "এখনি এসে নিও ভাই।",

		taking_too_long_7_part_1 = "ভাই আমি তোমার গাড়ি জানি..",
		taking_too_long_7_part_2 = "তোমাকে ছেড়ে যাওয়া পর্যন্ত আমি তোমাকে অনুসরণ করছি ভাই, বিশ্বস না আমি তোমার ওপর..",

		taking_too_long_8_part_1 = "ঠিক আছে, এটি শেষ হচ্ছে এবং এটা তোমার জন্য শেষ সুযোগ।",
		taking_too_long_8_part_2 = "যদি তুমি আবার দেরি করও, তবে আমি ওটার হাতিয়ারদের নাম্বার দিয়ে দিব এবং তোমাকে খুনকরীর হাতে হাত ধরে দেব।",
		taking_too_long_8_part_3 = "সুযোগটি শেষ হচ্ছে তুমি এখন তাড়াতাড়ি করতে চাইবেন। ঘড়ি টিকটিক করছে।",

		too_many_people_1_part_1 = "ওহে, আমি মিথ্যা বলতে পারি এখন আমার চারপাশে অনেক মানুষ আছে ভাই!",
		too_many_people_1_part_2 = "তুমি কেন এখানে এসেছো? কি তুমি এখানে স্থান জড়িত করার চেষ্টা করছো?",
		too_many_people_1_part_3 = "কারণ আমার পাশে হাতিয়ার ও বন্দুকের বিনিময়ে নিশ্চিত ভাবে কাউকে মেরে ফেলা হবে।",
		too_many_people_1_part_4 = "তুমি যা বলছো তা দেখতে পাচ্ছো ভাই...",
		too_many_people_1_part_5 = "সবাই পেছনে হাটো, হ্যাঁ এতেই বলছি, তোরা সবাই হাটো, হ্যাঁ, তুমি বর্তমান অবস্থায় \"বেশ কিছু\"।",

		too_many_people_2_part_1 = "হ্যাঁ, ভাই, মেনে নেয়া যায় না, বরং এখন বেশ কিছু মানুষ আছে।",
		too_many_people_2_part_2 = "তুমি নিকটে অনেক লোকের সাথে চলে যাচ্ছো, এটা একটা সন্দেহজনক স্থিতি আছে ভাই।",
		too_many_people_2_part_3 = "তুমি যে বলেছিলে সেখানে শুধু তোমার একজন থাকবে, এবং তোমার কিছু বাকী বন্দুক চলছে।",
		too_many_people_2_part_4 = "ভাই আমি যদি কোনও ধরনের গ্যাং এর সদস্য হন তাহলে তা আমাকে কেন কথা রাখে ভাই? না ভাইয়া।",
		too_many_people_2_part_5 = "ভাই বহুল জটিল হতে সেরিয়াস হওয়ার আগে আপনি আর আপনার লোকজনকে নিচ্ছিয়ে যান।",

		tutorial_1_part_1 = "ওহ ভাই কেমন আছেন? আপনি কি আমার জন্য কিছু করতে পারেন ভাই?",
		tutorial_1_part_2 = "দেখ বুঝা কি ভাই! ভাই আমি খুব ঝামেলায় আছি এখন আমার সকল কিছুই ভালো না।",
		tutorial_1_part_3 = "ভাই, একটু ধৈর্য ধরুন, শুনুন না আমার কথাগুলি একটু;",
		tutorial_1_part_4 = "উত্তর দক্ষিণের উপর প্রেসক্রিপশনগুলি আছে আমার কাছে।",
		tutorial_1_part_5 = "হ্যাঁ কিন্তু কেউ ঝাপটা দিতে পারবে না আমার কিছু জিনিস নিতে হবে তুমি কিছু নিতে হবে তোমার জন্য-",
		tutorial_1_part_6 = "এবং তারপর আমি যা প্রয়োজন তা করতে আমি তোমাকে বলছি- এইটা শুন আমার ভাইয়ো কথা বলছি!",
		tutorial_1_part_7 = "তাহলে দেখ, সেগুলো শহরে নিয়ে যাও এবং তাদের পুনরুদ্ধার করো!",
		tutorial_1_part_8 = "হ্যাঁ.. হ্যাঁ.. তুমি তাদের পুনরুদ্ধার করতে হবে ভাইয়া।",
		tutorial_1_part_9 = "হ্যাঁ আমি তোমাকে টেলিফোনে বিস্তারিত পাঠিয়ে দিই, সে পরিসংখ্যান দেখতে না ভুলবে আর সব ভাইয়া আমি তোমার জন্য আছি।",
		tutorial_1_part_10 = "তবে একটা কথা.. তুমি অধিক সময় না নিয়ে জাও.. নাহলে আমি তোমার উতোর পৌঁছাব ভাই।",
		tutorial_1_part_11 = "আর আমি বলতে পারি যে এই তোমার জন্য ভালো লাগছে না, এর সত্যতা গোপন রাখতে পারি না।",
		tutorial_1_part_12 = "হ্যাঁ, চলো বড় ভাইয়াগুলোতে। বলা বন্ধ করো, এটার দিকে না দেখো আর তাড়াতাড়ি করে চলে যাও।",

		tutorial_2_part_1 = "ওয়ায় ব্রাদা, তুমি আমার জন্য কিছু অক্সিকোডোন চালাবে?",
		tutorial_2_part_2 = "হ্যাঁ, ভালো আছে! আমি তোমাকে ঝুঁকিতে না রেখে বলছি আমি এই সবের সাহায্য দরকার পাচ্ছি না ব্রাদার।",
		tutorial_2_part_3 = "ব্রাদা, উত্তরপুরে আমার জন্য একটা দলের জন্য জিবনমুখোজন বন্ধন তৈরি হয়েছে।",
		tutorial_2_part_4 = "ব্রো, যা আমি তোমাকে বলতে চাই তা হলো, তোমাকে আমার জন্য এই ওষুধের প্রেসক্রিপশন উঠিয়ে আনতে হবে -",
		tutorial_2_part_5 = "হ্যাঁ, এবং এখন শুনুন ব্রো - এটি শহরের কোন ফার্মেসি থেকে রিডিম করতে হবে।",
		tutorial_2_part_6 = "হ্যাঁ, হ্যাঁ, হ্যাঁ, হ্যাঁ...",
		tutorial_2_part_7 = "হ্যাঁ, আমি ফোনে বিস্তারিত তথ্যগুলি তোমাকে প্রেরণ করব, আপনার জিপিএস চেক করুন এবং সব ঠিক আছে, ব্রো, আমি তোমার পাশে আছি।",
		tutorial_2_part_8 = "কিন্তু শুন, তুমি বেশি সময় নেও না, অন্যথায় আমি তোমার উপর ওটার চালু করতে পারি।",
		tutorial_2_part_9 = "আমি বিশ্বাস করি এটা তোমার জন্য ভাল নয়, তা আমি মিথ্যা বলতে পারি না।",
		tutorial_2_part_10 = "হ্যাঁ চলে যাই মহাভাই, বলা বন্ধ করো আর হাঁটানো বন্ধ করে দাও তোমার মুখ দেখতে না তোমায় খানিকটা সময় লাগবে তোমার কাছ থেকে সাহায্য নেওয়া এখন শুরু হলো।",

		tutorial_3_part_1 = "হ্যালো ভাই কি হালচাল? আসলে, তুমি এখন কিছু অক্সি চালাতে চাও?",
		tutorial_3_part_2 = "হ্যাঁ.. হ্যাঁ.. এটা ভালো কিন্তু না, কারণ আমি তোমার কাছে সাহায্যের জন্য অপেক্ষা করছি।",
		tutorial_3_part_3 = "হ্যাঁ, হ্যাঁ, হ্যাঁ.. আমার কাছে এখানেই উত্তপ্ত রোগনশস্ত্র প্রেসক্রিপশন আছে। তাই আমি তোমাকে বিশ্বাস করি।",
		tutorial_3_part_4 = "হ্যাঁ তবে সত্যি বলতে গেলে, তোমার কাছ থেকে পরিচালনা করতে হবে, রেসিপশন নিয়ে, হ্যা-",
		tutorial_3_part_5 = "এবং তারপর মূলত ইহা হবে, শহরে যাওয়া এবং সকল প্রকার ফার্মেসি এ এরকমভাবে মুক্তি দেওয়া হবে এবং এলাকাগুলি দেখানো হবে এরকম ভাই।",
		tutorial_3_part_6 = "হ্যাঁ, আমি আপনার কাছে জানি সেক্ষেত্রে, কিন্তু আমি এখন করব কি খাতির হয়ে গেছে কিন্তু।",
		tutorial_3_part_7 = "তুমি দেখতে পাবেন এই এনক্রো নে, সহোযোগীতার বিস্তারিত তথ্য পাঠিয়ে দিচ্ছি এক্সরে।",
		tutorial_3_part_8 = "তবে তুমি না দেখি ব্রাদার তোমার উপর আসতে শুধু কিছুটা সময় আছে সুন্দর! তাই জলদি জাও।",
		tutorial_3_part_9 = "হ্যাঁ, আসো বড় ভাই, আমার সাথে কথা বলবেন না, আমার মুখটি দেখবেন না এবং একটু দ্রুত হবেন না, বড় ভাই।",
		tutorial_3_part_10 = "ভালবাসা ভাই, ভালবাসা।"
	},

	panel = {
		loading_title = "লোড হচ্ছে",
		error_title = "কিছু সমস্যা হয়েছে",

		was_banned = "ব্যবহার নিষিদ্ধ",
		loading = "খিলানের তথ্য লোড হচ্ছে...",
		no_warnings = "কোন সতর্কতা নেই",
		not_shown_warnings = "${count} আরও দেখানো হয়নি",
		system_issuer = "সিস্টেম",
		add_warning_title = "সতর্কতা যোগ করুন",
		message_placeholder = "${playerName} একটি ভুল করেছেন...",

		type_note = "নোট",
		type_warning = "সতর্কতা",
		type_strike = "স্ট্রাইক",
		type_system = "সিস্টেম",

		button_cancel = "বাতিল করুন",
		button_add = "যোগ করুন",
		button_close = "বন্ধ করুন",
		button_new = "নতুন",

		invalid_server_id = "সঠিক সার্ভার আইডি নেই।",

		failed_load_player = "প্লেয়ারের ডেটা লোড করা যায়নি। আপনি সঠিক সার্ভার আইডি লিখেছেন কি?",
		failed_add_warning = "সতর্কতা যোগ করা যায়নি।",

		get_info_no_permissions = "প্লেয়ার একজন অনুমতি ছাড়াই অন্য প্লেয়ারের তথ্য দেখার চেষ্টা করেছেন।",

		user_indefinitely_banned_warning_no_reason = "আমি এই ব্যক্তিকে অবিচ্ছিন্নভাবে নিষিদ্ধ করেছি কোন কারণ উল্লেখ না করে। এই সাবধানতা স্বয়ংক্রিয়ভাবে নিষিদ্ধকরণের ফলে উত্পন্ন হয়েছে।",
		user_indefinitely_banned_warning = "আমি এই ব্যক্তিকে `${reason}` কারণে অসীমভাবে ব্যান করেছি। এই সতর্কতা ব্যানের ফলে স্বয়ংক্রিয়ভাবে উত্পন্ন হয়েছে।",
		user_temporarily_banned_warning_no_reason = "আমি বিশিষ্ট কোন কারণ ছাড়াই এই ব্যক্তিকে ${displayTime} সময়ের জন্য ব্যান করেছি। এই সতর্কতা ব্যানের ফলে স্বয়ংক্রিয়ভাবে উত্পন্ন হয়েছে।",
		user_temporarily_banned_warning = "আমি এই ব্যক্তিকে `${reason}` কারণে ${displayTime} সময়ের জন্য ব্যান করেছি। এই সতর্কতা ব্যানের ফলে স্বয়ংক্রিয়ভাবে উত্পন্ন হয়েছে।"
	},

	panic = {
		press_panic_button = "আপনার প্যানিক বাটন (X) চাপানোর জন্য 5 সেকেন্ড আছে।",
		panic_button_timeout = "আপনি সময়ের মধ্যে আপনার প্যানিক বাটন চাপিয়ে না।",

		panic_button_title = "[প্রেরণ]",

		panic_button_unit = "10-14, ${unitId} ${lastName} ${label} পতন হয়েছে।",
		panic_button_no_unit = "10-14, ${lastName} ${label} পতন হয়েছে।",

		panic_blip = "10-14 ${lastName}",

		label_officer = "অফিসার",
		label_paramedic = "প্যারামেডিক"
	},

	paper_bags = {
		fill_bag = "[${SeatEjectKey}] কাগজের ব্যাগ পূর্ণ করুন",
		no_bags = "আপনার কোন কাগজের ব্যাগ নেই।",
		no_bag_items = "আপনার কোন আইটেম নেই যেটি আপনি কাগজের ব্যাগে রাখতে পারেন।",
		close_bag = "ব্যাগ বন্ধ করুন",
		cancel_bag = "বাতিল করুন",
		title = "পেপার ব্যাগ",
		failed_fill = "পেপার ব্যাগ পূর্তি করা যায়নি।",
		filled_bag = "পেপার ব্যাগ সফলভাবে পূর্তি করা হয়েছে।"
	},

	parking_meters = {
		not_paid = "পেমেন্ট করা হয়নি",
		insert_dollar = "[${InteractionKey}] টাকা প্রবেশ করান $${amount}",

		no_cash = "আপনার কাছে টাকা নেই।",
		max_time = "এই পার্কিং মিটারটি ইতিমধ্যে মাস্টার।",
		failed_pay = "পার্কিং মিটারে পেমেন্ট করা যায়নি।"
	},

	pawn_shops = {
		sell_items = "${itemLabel} বিক্রি করুন",
		press_to_sell_items = "[${InteractionKey}] বিক্রি করুন ${itemLabel}",
		sold_items = "$${sellPrice} এর জন্য ${sellAmount}x ${itemLabel} বিক্রি হয়েছে।",
		no_items_to_sell = "আপনার কোন ${itemLabel} বিক্রি করার জন্য নেই।",
		daily_limit_reached = "আপনি আপনার দৈনিক সীমা অতিক্রম করেছেন, এখন ভেন্ডর কোন আর আইটেম কেনা আছে না।",
		illegal_pawn_shop_id = "অবৈধ আওতা দোকানের মান পাঠানো চেষ্টা করা হচ্ছে।",
		used_pawn_shop_title = "ব্যবহৃত আওতা দোকান",
		used_pawn_shop_details = "${consoleName} একটি আওতা দোকান ব্যবহার করে এবং ${sellAmount} টি `${itemLabel}` বিক্রি করে $${sellPrice} পেয়েছেন।"
	},

	ped_messages = {
		attempt_succeeded = "${attemptMessage} চেষ্টা করা হয়েছে এবং সফল হয়েছে",
		attempt_failed = "${attemptMessage} চেষ্টা করা হয়েছে কিন্তু ব্যর্থ হয়েছে",
		dice_message = "একটি পাচ্ছি রোল করে একটি নম্বর (${diceNumber}) পেল",
		roll_message = "${rolls}d${max} সেটিংস দিয়ে কাস্টম ডাইস রোল করে ${totalValue} পেল",
		citizen_card_message = "একটি সিটিজেন কার্ড (${characterId}) দেখালেন",
		badge_message = "একটি ব্যাজ (${characterId}) দেখালেন",
		license_message = "একটি লাইসেন্স (${characterId}) দেখালেন",
		ped_message_logs_title = "পেড় বার্তা",
		ped_message_logs_details = "${consoleName} একটি পেড় বার্তা পাঠিয়েছে যা নিম্নরূপ: `${pedMessage}`",
		attached_ped_message_logs_title = "যুক্ত পেড় বার্তা",
		attached_ped_message_logs_details = "${consoleName} এ একটি পেড মেসেজ সংযুক্ত করেছে যা নিম্নরূপ: `${pedMessage}`",
		chat_ped_messages_enabled = "পেড মেসেজগুলি এখন চ্যাটে দেখা যাবে।",
		chat_ped_messages_disabled = "পেড মেসেজগুলি আর চ্যাটে দেখা যাবে না।",
		me_message_chat_title = "/me [${serverId}]",
		inspect_chat_title = "/inspect [${serverId}]",
		frisk_chat_title = "/frisk [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/পাচ্ছি [${serverId}]",
		roll_message_chat_title = "/রোল [${serverId}]",
		description_message_chat_title = "/বিবরণ [${serverId}]",
		message_too_long = "বার্তাটি অনেক ক্যারেক্টার বা লাইন ধারণ করে!",
		card_command_wait = "আপনি একটি কার্ড টি নিয়েছেন, আরেকটি টি টেনোর আগে কিছুক্ষণ অপেক্ষা করুন।",
		ped_message_timeout = "ধীরে চলুন, আরেকটি বার্তা পাঠানোর জন্য কিছুক্ষণ অপেক্ষা করুন।"
	},

	ped_objects = {
		illegal_ped_object = "'অনুমোদিত' তালিকার বাইরে পেড অবজেক্ট যোগ করতে চেষ্টা করা হচ্ছে।",
		illegal_ped_weapon_object = "অস্বীকৃত হাত অবজেক্ট জুড়ে পেড অবজেক্ট যোগ করার চেষ্টা করা হচ্ছে।"
	},

	ped_task = {
		network_id_invalid = "বৈধ নেটওয়ার্ক আইডি নেই।",
		ped_not_found = "নেটওয়ার্ক আইডি সহ পেড় `$(networkId)` পাওয়া যায় নি।",
		tracked_ped = "ট্র্যাকড পেড়",
		tracked_ped_is = "পেড় (${entity}) হলঃ"
	},

	ped_spawn = {
		ped_missing_model = "মডেল প্যারামিটার অনুপস্থিত।",
		ped_spawn_success = "পেড়গুলি সফলভাবে সহন করা হয়েছে।",
		ped_failed_spawn = "পেড়গুলি উত্পন্ন করতে ব্যর্থ হয়েছে।",
		invalid_weapon = "অবৈধ অস্ত্র।",
		ped_remove_success = "উত্পন্ন পেড়গুলি সফলভাবে সরানো হয়েছে।",
		ped_failed_remove = "স্পষ্টতা ব্যাপারে সরানো হয়েছে না।",
		ped_task_success = "সফলভাবে উৎসৃষ্ট পেড়গুলির '${task}' টাস্ক নির্ধারণ করা হয়েছে।",
		ped_failed_task = "'${task}' টাস্কটি স্পড়লে, তা অর্পণ করতে ব্যর্থ হয়েছে।",
		invalid_target = "অবৈধ লক্ষ্য সার্ভার আইডি।",
		missing_task = "টাস্ক পরামিতি অনুপস্থিত।",
		invalid_task = "অবৈধ শিকারী টাস্ক '${task}'।",
		target_required = "এই শিকারী টাস্কটি একটি বৈধ লক্ষ্য প্রয়োজন।",
		ped_emote_success = "সফলভাবে উৎপন্ন করা হয় ' ${emote} ' ইমোটে খেলা করা হয়েছে।",
		ped_failed_emote = "ব্যর্থ হয়েছে স্পড়লের নিকট '${emote}' ইমোট খেলার জন্য।",
		invalid_emote = "অবৈধ ইমোট '${emote}'।",
		missing_emote = "ইমোট পরামিতি নেই।",

		emote_list = "উপলব্ধ স্পড়ল ইমোট: ${list}।",
		task_list = "${list}ঃ এসে গেছে পেড টাস্কসমূহ ।",

		spawn_ped_missing_perms = "অনুমতিবিহীনভাবে পেডটি স্পহ্ন করার চেষ্টা করা হল।",
		remove_peds_missing_perms = "অনুমতিবিহীনভাবে স্পহ্ন করা পেডগুলোকে অপসারণ করার চেষ্টা করা হল।",
		ped_assign_task_missing_perms = "অনুমতিবিহীনভাবে পেডগুলোকে নির্দিষ্ট করা টাস্ক দেওয়ার চেষ্টা করা হল।"
	},

	ped_steal = {
		ped_steal_reset = "প্লেয়ার পেড রিসেট করা হয়েছে।",
		ped_steal_success = "সফলভাবে পেড স্কিন চুরি করা হয়েছে।",
		ped_steal_failed = "পেড স্কিন চুরি করার চেষ্টা অসফল হয়েছে।",
		ped_not_found = "প্লেয়ার পেড খুঁজে পাওয়া যায়নি।",
		invalid_server_id = "অবৈধ সার্ভার আইডি।"
	},

	ped_takeover = {
		failed_reset = "মূল পেড ফিরে ফেলতে ব্যর্থ হয়েছে।",
		failed_reset_not_exist = "আপনার মূল পেড বিদ্যমান নেই বা আপনি তার কাছে নন।",
		failed_takeover = "পেড নেওয়া ব্যর্থ হয়েছে।",
		invalid_network_id = "অবৈধ নেটওয়ার্ক আইডি।"
	},

	peds = {
		ped_robbing_injection = "অতিরিক্ত পেড-লুটের প্রচার! (সার্ভার-টাইমআউট বাইপাস করে, সেইসব টুলস ব্যবহার করে ছড়িয়ে দেওয়া সম্ভব।)",
		robbed_ped_logs_title = "গ্রহণকৃত পেড",
		robbed_ped_logs_details = "${consoleName} একটি পেড লুটি করে এবং $${payout} পেয়েছেন।"
	},

	pepper_spray = {
		press_to_pepper_spray = "পেপার স্প্রে ব্যবহার করতে ~INPUT_ATTACK~ চাপুন।",
		using_pepper_spray = "পেপার স্প্রে ব্যবহার হচ্ছে।"
	},

	phone = {
		app_settings = "সেটিংস",
		app_contacts = "যোগাযোগগুলি",
		app_calls = "ফোন",
		app_messages = "বার্তা"
	},

	phone_numbers = {
		no_phone_number_set = "ফোন নম্বর সেট করা হয়নি।",
		invalid_format = "সেট ফোন নম্বর অবৈধ ফরম্যাটে ছিল।",
		invalid_length = "সেট ফোন নম্বর সঠিক লেংথে নাই।",
		invalid_characters = "সেট ফোন নম্বরে অবৈধ অক্ষরগুলি ছিলেন।",
		phone_number_changed_to = "আপনার ফোন নম্বর পরিবর্তন করা হয়েছে `${phoneNumber}` এ।",
		phone_number_taken = "ফোন নম্বর ${phoneNumber} টি নেওয়া হয়েছে।",
		database_error = "ব্যাক-এন্ড ডাটাবেস ত্রুটি হয়েছে।",
		no_packages = "আপনার কোনও প্যাকেজ নেই।",
		api_error = "আমাদের ব্যাক-এন্ড API এ একটি ত্রুটি হয়েছে।",
		api_not_available = "আমাদের ব্যাক-এন্ড API উপলব্ধ নেই।",
		phone_number_is_available = "ফোন নম্বর ${phoneNumber} টি উপলব্ধ।",
		phone_number_is_not_available = "ফোন নম্বর ${phoneNumber} টি উপলব্ধ নেই।"
	},

	pictures = {
		selfie_description = "${firstName} ${lastName} এর ছবি।"
	},

	player_control = {
		unable_to_drive_for_yourself = "আপনি নিজের জন্য ড্রাইভ করতে পারবেন না।",
		drive_for_player_no_permissions = "প্লেয়ারের জন্য গাড়ি চালানো চেষ্টা করেছেন, কিন্তু তাঁর কাছে ঐ কাজ করার জন্য অনুমতি নেই।",
		player_is_not_nearby = "সার্ভার আইডি ${serverId} ধারণ করে প্লেয়ার এখনো নিরাপদ দূরে রয়েছে।",
		player_is_not_the_drive_of_a_vehicle = "সার্ভার আইডি ${serverId} ধারণ করে প্লেয়ার কোন গাড়ি চালায় না।",
		press_to_stop_drive_for = "প্লেয়ারের জন্য ড্রাইভিং বন্ধ করতে ~INPUT_FRONTEND_CANCEL~ চাপুন।"
	},

	player_scales = {
		reset_player_scale_for = "${consoleName} এর জন্য প্লেয়ারের স্কেল রিসেট করুন।",
		set_player_scale_to_for = "${consoleName} জনের স্কেলকে ${scale} এ সেট করুন",
		reset_player_scale = "প্লেয়ারের স্কেল রিসেট করুন।",
		set_player_scale_to = "প্লেয়ারের স্কেল সেট করুন ${scale} এ।",
		set_player_scale_no_permission = "প্লেয়ারটির কাছে স্কেল সেট করার জন্য যথাযথ অনুমতি নেই।",
		player_is_already_set_to_scale = "${consoleName} ইতিমধ্যে স্কেল ${scale} এ সেট করা হয়েছে।",
		you_are_already_set_to_scale = "আপনি ইতিমধ্যে স্কেল ${scale} এ সেট করা হয়েছে।",
		player_is_not_scaled = "${consoleName} এর স্কেল নেই।",
		you_are_not_scaled = "আপনি স্কেল করা নেই।"
	},

	player_stats = {
		hp = "এইচপি",
		armor = "আর্মর",
		toggle_player_stats_no_permissions = "প্লেয়ার কর্তব্যসমূহ টগল করার অনুমতি নেই।",
		updated_render_range = "${renderRange} পুনরায় রেন্ডার রেঞ্জ আপডেট হয়েছে।",
		turned_player_stats_on = "প্লেয়ার স্ট্যাটিস চালু করা হয়েছে।",
		turned_player_stats_off = "প্লেয়ার স্ট্যাটিস বন্ধ করা হয়েছে।"
	},

	players = {
		player_left = "প্লেয়ার সার্ভারটি ছেড়ে গেছে [${serverId}]"
	},

	pole_dancing = {
		press_to_strip_dance = "ষ্ট্রিপ নাচ এর জন্য ~INPUT_CONTEXT~ চাপুন।",
		this_pole_is_occupied = "এই পোলটি অবরুদ্ধ রয়েছে।",
		stop_dancing = "ডান্স বন্ধ করুন",
		change_dance = "ডান্স পরিবর্তন করুন (${animationId})",

		no_model_name_set = "কোন মডেল নাম সেট করা হয়নি।",
		invalid_model = "মডেল '${modelName}' অবৈধ।",
		pole_dancing_offset = "মডেল '${modelName}'ঃ ভেক্টর3(${x}, ${y}, ${z})"
	},

	pools = {
		pools_overflowing = "পুলগুলি ওভারফ্লো হচ্ছে: ~r~${poolsOverflowing}"
	},

	props = {
		illegal_prop_item_id = "প্লেয়ার একটি প্রপ আইটেম ব্যবহার করার চেষ্টা করেছে যা একটি অবৈধ আইটেম আইডি।",
		spawn_prop_not_staff = "প্লেয়ার প্রপ স্পন করার চেষ্টা করেছে কিন্তু তাদের করতে দরকারী অনুমতি নেই।",
		managing_props_help = "আপনি বর্তমানে প্রপ পরিচালনা করছেন। প্রপ এর পাশে হেঁটে গেলে এটি উঠানোর জন্য ~INPUT_CONTEXT~ চাপুন।",
		total_props = "মোট প্রপ: ${count}",
		active_props = "সক্রিয় প্রপ: ${count}",
		press_to_pick_up = "[${InteractionKey}] উঠানো",
		pick_up = "উঠানো",
		picking_up = "উঠাচ্ছি",
		press_to_destroy = "[${InteractionKey}] ধ্বংস করুন",
		destroy = "ধ্বংস করুন",
		destroying = "ধ্বংস করছি",
		prop = "প্রপ",
		model_parameter_missing = "`মডেল` পরমিতি অনুপস্থিত।",
		model_parameter_invalid = "`${model}` মডেলটি একটি অবৈধ মডেল।",
		model_parameter_is_not_an_object = "মডেল `${model}` একটি অবজেক্ট নয়।",
		spawned_prop_non_networked = "মডেল `${model}` নিটওয়ার্ক নেই স্পউন করা হয়েছে।",
		spawned_prop_networked = "মডেল `${model}` নেটওয়ার্ক সঙ্গে স্পউন করা হয়েছে।",
		spawned_exact_prop = "সঠিক প্রপ স্পউন করা হয়েছে।",
		failed_to_spawn_prop = "মডেল `${model}` সঙ্গে প্রপ স্পউন করা যায়নি।",
		not_able_to_spawn_in_vehicle = "প্রপ স্পউন করার সময় আপনি গাড়ির মধ্যে থাকতে পারবেন না।",
		not_able_to_spawn_while_dead = "প্রপ স্পউন করার সময় যখন আপনি মৃত তখন আপনি স্পউন করতে পারবেন না।",
		not_able_to_spawn_while_moving = "প্রপ স্পউন করতে আপনাকে অবশ্যই ভারী থাকতে হবে।",
		stand_still_to_place_prop = "প্রপ রাখতে আপনাকে অবশ্যই ভারী থাকতে হবে।",
		prop_no_interior = "আপনি শুধুমাত্র এই প্রপটি বাইরে স্থাপন করতে পারবেন।",

		invalid_prop_id = "অবৈধ প্রপ আইডি।",
		prop_deleted = "আইডি সহ প্রপ ${propId} মুছে ফেলা হয়েছে।",

		invalid_wipe_radius = "মোছার ব্যবধান অবৈধ (1 থেকে 100 পর্যন্ত)।",
		wipe_successful = "প্রপসমূহ সফলভাবে মোছা হয়েছে।",
		wipe_props_missing_permissions = "প্লেয়ার প্রপসমূহ মোছার চেষ্টা করেছেন কিন্তু তাদের করার অনুমতি নেই।",

		placing_prop = "প্রপ স্থাপন করা হচ্ছে",
		pickup_prop = "প্রপ উঠানো হচ্ছে",
		setting_up_tire_wall = "টায়ার ওল স্থাপন করা হচ্ছে",
		destroying_tire_wall = "টায়ার ওল ধ্বংস করা হচ্ছে"
	},

	radio = {
		frequency = "ফ্রিকোয়েন্সি",
		switch = "সুইচ",
		radio_turned_off = "রেডিও বন্ধ করা হয়েছে।",
		radio_removed = "আপনার রেডিও হারিয়ে গেছে।",
		no_radio = "আপনার কাছে কোন রেডিও নেই।",
		unable_to_use_radio_while_cuffed = "আপনি বাঁধানো থাকলে রেডিও ব্যবহার করতে পারবেন না।",
		unable_to_use_radio_while_down = "আপনি হাঁটু বা আস্ত হলে রেডিও ব্যবহার করতে পারবেন না।",
		unable_to_use_radio_as_animal = "আপনি একটি পশু হিসাবে রেডিও ব্যবহার করতে পারবেন না।",
		frequency_set_to_streamer = "ফ্রিকোয়েন্সি স্ট্রিমারে সেট করা হয়েছে।",
		frequency_set_to = "ফ্রিকোয়েন্সি এখন `${frequency}` হিসাবে সেট করা হয়েছে।",
		frequency_already_set_to = "ফ্রিকোয়েন্সি ইতিমধ্যে `${frequency}` হিসাবে সেট করা হয়েছে।",
		radio_volume_same = "রেডিও ভলিউম ইতিমধ্যে `${radioVolume}` হিসাবে সেট করা হয়েছে।",
		radio_volume_reset = "রেডিও ভলিউম এখন রিসেট করা হয়েছে।",
		radio_volume_set = "রেডিও ভলিউম এখন `${radioVolume}` হিসাবে সেট করা হয়েছে।",
		radio_volume_current = "আপনার বর্তমান রেডিও ভলিউম হিসাবে `${radioVolume}` সেট করা হয়েছে।",
		radio_volume_current_default = "আপনার বর্তমান রেডিও ভলিউম ডিফল্ট।",
		radio_sound_effects_same = "রেডিও সাউন্ড ইফেক্টস এর ভলিউম ইতিমধ্যে `${radioSoundEffects}` হিসাবে সেট করা আছে।",
		radio_sound_effects_reset = "রেডিও সাউন্ড ইফেক্টস এর ভলিউম রিসেট করা হয়েছে।",
		radio_sound_effects_set = "রেডিও সাউন্ড ইফেক্টস এর ভলিউম আবার সেট করা হয়েছে `${radioSoundEffects}` হিসাবে।",
		radio_sound_effects_current = "রেডিও সাউন্ড ইফেক্টস এর ভলিউম এখন `${radioSoundEffects}` হিসাবে সেট করা আছে।",
		radio_sound_effects_current_default = "রেডিও সাউন্ড ইফেক্টস এর ভলিউম বর্তমানে ডিফল্ট হিসাবে সেট করা আছে।",

		radio_missing_last_freq = "শেষ ফ্রিকোয়েন্সিতে যোগ দিতে আপনার কোনও রেডিও নেই।",

		radio_debug_failed = "রেডিও ডিবাগ টগল করা ব্যর্থ হয়েছে।",
		radio_debug_off = "রেডিও ডিবাগ সম্পূর্ণ বন্ধ হয়েছে।",
		radio_debug_on = "রেডিও ডিবাগ সম্পূর্ণ চালু হয়েছে।",

		radio_debug_no_permissions = "প্রয়োজনীয় অনুমতিছাড়াই রেডিও ডিবাগ টগল করার চেষ্টা করা হয়েছে।",

		decrypt_frequency = "[${InteractionKey}] ফ্রিকোয়েন্সি ডিক্রিপ্ট করুন",
		decrypting_frequency = "ফ্রিকোয়েন্সি ডিক্রিপ্ট করা হচ্ছে",
		decrypting_frequency_failed = "ফ্রিকোয়েন্সি ডিক্রিপ্ট করা ব্যর্থ হয়েছে।",
		decrypter_jammed = "ডিক্রিপ্টারে ঝামেলা হয়েছে।",
		decrypted_frequency = " ফ্রিকোয়েন্সি প্রায় `${frequency}`।",
		no_frequency_detected = "কোন ফ্রিকোয়েন্সি খুঁজে পাওয়া যায় নি।"
	},

	remote_camera = {
		connected_to_camera = "ক্যামেরা #${id}-এ সংযুক্ত হয়েছে",

		camera_distance = "দূরত্ব: ${distance}মিটার",
		out_of_range = "রেঞ্জ বাইরে",

		disconnect = "ডিসকানেক্ট",
		view_feed = "ফিড দেখুন",

		no_nearby_cameras = "কোন নিকটবর্তী ক্যামেরা নেই",
		nearby_cameras = "${amount}টি নিকটবর্তী ক্যামেরা",
		no_nearby_cameras_description = "আপনার নিকটে কোন ক্যামেরা নেই।",

		camera_operator = "অপারেটর: ${fullName}",

		camera_label = "ক্যামেরা #${id}",
		camera_distance = "দূরত্ব: ${distance}মিটার",
		connect = "সংযুক্ত করুন",

		something_went_wrong = "কিছু সমস্যা হয়েছে।",
		error_out_of_range = "ক্যামেরাটি সীমার বাইরে আছে।",
		error_not_found = "ক্যামেরাটি খুঁজে পাওয়া যায়নি।"
	},

	reskin = {
		plastic_surgery = "প্লাস্টিক সার্জারি",
		los_santos_police_dept = "লস সান্টোস পুলিশ বিভাগ",

		reskin_player_no_permissions = "খেলোয়ার অবৈধ অনুমতি ছাড়াই রেডিও ডিবাগ টগল করার চেষ্টা করেছে।",

		triggered_reskin_for_player = "${consoleName}-এর জন্য রেস্কিন ট্রিগার করা হয়েছে।",

		triggered_reskin_for_player_logs_title = "প্লেয়ারের জন্য পুনরায় রুপান্তর সম্পন্ন",
		triggered_reskin_for_player_logs_details = "${consoleName} একটি জনপ্রিয় প্যাকেজ প্রয়োগ করেছে এবং ${targetConsoleName}-এর জন্য পুনরায় রুপান্তর করেছে।",

		triggered_reskin_for_self_logs_title = "স্বপ্নিত রুপান্তর ট্রিগার করেছেন",
		triggered_reskin_for_self_logs_details = "${consoleName} নিজের জন্য সফলভাবে একটি জনপ্রিয় প্যাকেজ প্রয়োগ করেছেন।",

		no_reskin_packages = "আপনার কোনও রুপান্তর প্যাকেজ নেই।",
		redeemed_reskin_package = "রুপান্তর প্যাকেজ সফলভাবে মুক্ত করা হয়েছে।"
	},

	restaurants = {
		["table"] = "Table",
		press_to_table = "[${InteractionKey}] টেবিলে প্রেস করুন",

		table_title = "টেবিল ${tableId}",
		seat = "সিট ${seatId}",
		close_menu = "মেনু বন্ধ করুন",
		loading = "লোডিং...",

		leave_seat = "সিট ছেড়ে দিন",
		view_menu = "মেনু দেখুন",
		change_seating_position = "সিটিং পজিশন পরিবর্তন করুন (${animationId})",

		sushi = "সুশি",
		drinks = "পানীয়",
		desserts = "ডেজার্ট",

		aka = "অ্যাকা",
		kuro = "কুরো",
		shiro = "সিহরো",
		midori = "মিদোরি",
		nigiri = "নিগিরি",
		sex_on_the_beach = "সেক্স অন দি বিচ",
		mojito = "মজিটো",
		pina_colada = "পিনা কোলাডা",
		tiramisu = "তিরামিসু",
		chocolate_mousse = "চকলেট মুস",

		food_replenish = "আপনার হাস্যতৃষ্ণা পূর্ণ হবে ${amount}%।",
		thirst_replenish = "আপনার তৃষ্ণা পূর্ণ হবে ${amount}%।",
		hunger_replenish = "আপনার হাসি পূর্ণ হবে ${amount}%।",
		diving_drop_boost = "${duration} মিনিটের জন্য স্কোবা ভ্রমণ থেকে ${amount}টান বেশি বুঝি পেতে পারবেন।",
		hunting_drop_boost = "${duration} মিনিটের জন্য হান্টিং ভ্রমণ থেকে ${amount}টান বেশি বুঝি পেতে পারবেন।",
		garbage_drop_boost = "${duration} মিনিটের জন্য মালবাহীর ভ্রমণ থেকে ${amount}টান বেশি বুঝি পেতে পারবেন।",
		faster_progress_bars = "${duration} মিনিটের জন্য ${amount} বার্তা প্রগ্রেস বার দ্রুত হবে।",
		weapon_damage_multiplier = "${duration} মিনিটের জন্য ${amount} গুণ দামের মাল্টিপ্লায়ার থাকবে।",
		local_sales_multiplier = "স্থানীয় ব্যবসায়ীদের জন্য পন্য বিক্রয়ের জন্য ${amount} গুণ মাল্টিপ্লায়ার থাকবে।",
		shorter_boosting_cooldown = "বুস্টিং করার মধ্যে ${amount} গুণ ছোট সময় পর পর হবে।",
		swim_faster = "${duration} মিনিটের জন্য জলে সাঁতারের গতি হবে ${amount} গুণ।",
		walk_faster = "${duration} মিনিটের জন্য হাঁটা এবং দৌড়ান ${amount} গুণ দ্রুত হবে।",
		health_generation = "${duration} মিনিটের জন্য পর্যস্ত স্বাস্থ্য পুনরুদ্ধার থাকবে।",
		better_stamina = "${duration} মিনিটের জন্য দৌড়ার স্ট্যামিনা শেষ হওয়া না হবে।",
		more_inventory_space = "${duration} মিনিটের জন্য আরও ${amount} ইনভেন্টরি স্লট থাকবে।",

		buffs_note = "বাফস কেবল সম্ভব হবে যখন আপনি ভবনের আশপাশ থেকে চলে যাবেন।"
	},

	riot_mode = {
		riot_mode_enabled = "সফলভাবে বিপদজনক মোড সক্রিয় করা হয়েছে।",
		riot_mode_disabled = "সফলভাবে বিপদজনক মোড অক্ষমকরণ করা হয়েছে। পূর্ববর্তীতে আগ্রহী পেড়ের মৃত্যু না হওয়া পর্যন্ত তারা লড়াই করবে।",
		riot_mode_failed = "বিপদজনক মোড টগল করতে ব্যর্থ হয়েছে।",
		riot_mode_missing_perms = "সঠিক অনুমতি ছাড়াই বিপদজনক মোড টগল করার চেষ্টা করা হয়েছে।",

		riot_mode_enabled_help = "রাইট মোড সক্রিয় হয়েছে।",
		riot_mode_disabled_help = "রাইট মোড নিষ্ক্রিয় হয়েছে।",

		add_riot_player_no_permissions = "উচিত অনুমতি ছাড়াই একজন প্লেয়ারকে রাইট লিস্টে যোগ করা চেষ্টা করা হয়েছে।",
		remove_riot_player_no_permissions = "উচিত অনুমতি ছাড়াই একজন প্লেয়ারকে রাইট লিস্ট থেকে সরানোর চেষ্টা করা হয়েছে।",

		player_already_in_riot_list = "${consoleName} ইতিমধ্যে রাইট লিস্টে রয়েছে।",
		player_not_in_riot_list = "${consoleName} রাইট লিস্টে নেই।",
		added_riot_player = "${consoleName} এখন রাইট লিস্টে যোগ করে দেওয়া হয়েছে।",
		failed_to_add_riot_player = "${consoleName}-কে হুমকির তালিকায় যুক্ত করা যায়নি।",
		removed_riot_player = "${consoleName}কে হুমকির তালিকা থেকে সরানো হয়েছে।",
		failed_to_remove_riot_player = "${consoleName}-কে হুমকির তালিকা থেকে সরানো যাচ্ছে না।"
	},

	safes = {
		how_to_use = "\"A\" এবং \"D\" কীগুলি ব্যবহার করে তালাসামুসার ঘড়ি ঘুরিয়ে সঠিক কমবিনেশনটি বের করুন। শুরু করতে ডানদিকের \"D\" চাপুন।",
		lock_open = "খোলা",
		lock_closed = "বন্ধ"
	},

	scoreboard = {
		player_list = "খেলোয়ার তালিকা",
		players = "খেলোয়ারগণ",
		total = "মোট",
		recent_disconnections = "সাম্প্রতিক সংযোগ বিচ্ছিন্নসমূহ",
		disconnected_player = "সংযোগ বিচ্ছিন্ন খেলোয়াড়",
		id = "আইডি",
		name = "নাম",
		identifier = "সনাক্তকরণকারী",
		reason = "কারণ",
		time_since_disconnection = "সংযোগ বিচ্ছিন্ন হওয়ার পর থেকে কতক্ষণ সময় হয়েছে",

		you_are_now_metagaming = "আপনি এখন মেটাগেমিং করছেন।",
		you_are_no_longer_metagaming = "আপনি আর মেটাগেমিং করছেন না।"
	},

	screenshots = {
		screenshot_created = "একটি স্ক্রীনশট সফলভাবে তৈরি করা হয়েছে।",
		screenshot_failed = "দেয়া ব্যবহারকারী থেকে স্ক্রীনশট গ্রহণ করা ব্যর্থ হয়েছে।",
		screencapture_created = "একটি স্ক্রীনক্যাপচার সফলভাবে তৈরি করা হয়েছে।",
		user_not_found_with_server_id = "দেওয়া সার্ভার আইডি দিয়ে কোন ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		invalid_lifespan_parameter = "সময় প্যারামিটার অবৈধ।",
		invalid_server_id_parameter = "সার্ভার আইডি প্যারামিটার অবৈধ।",
		invalid_duration_parameter = "সময়কাল প্যারামিটার অবৈধ।",
		invalid_fps_parameter = "এফপিএস প্যারামিটার অবৈধ।",
		missing_server_id_parameter = "সার্ভার আইডি প্যারামিটার অনুপস্থিত।",

		screenshot_error_client_false = "স্ক্রিনশট তৈরি করা যায়নি",
		screenshot_error_user_not_found = "ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		screenshot_error_user_developer = "ব্যবহারকারী একটি ডেভেলপার।",
		screenshot_error_no_token = "Opfw টোকেন পেতে ব্যর্থ হয়েছে।",
		screenshot_timeout = "স্ক্রীনশট অনুরোধের সময় শেষ হয়েছে।"
	},

	scuba = {
		sunken_ship = "ঢেউয়ে পড়া জাহাজ",
		gather_item = "জিনিস সংগ্রহ করুন (${distance}মিটার)",

		collected_junk = "জাঙ্ক সংগ্রহ করা হয়েছে।",
		collected_item = "${itemLabel} সংগ্রহ করা হয়েছে।",
		collected_broken_item = "ভেঙে পড়া ${itemLabel} সংগ্রহ করা হয়েছে।",

		collected_scuba_item_logs_title = "স্কুবা জিনিস সংগ্রহ করা হয়েছে",
		collected_scuba_item_logs_details = "${consoleName} স্কুবা জিনিস সংগ্রহ করেছে এবং `${itemName}` পান।"
	},

	scuba_gear = {
		equipping_scuba_tank = "স্কুবা ট্যাঙ্ক পরিধান করা হচ্ছে",
		equipping_scuba_mask = "স্কুবা মাস্ক পরিধান করা হচ্ছে"
	},

	security_cameras = {
		illegal_security_camera = "গোপন সিকিউরিটি ক্যামেরা সংশোধন করার চেষ্টা করা হচ্ছে।",
		saved_security_cameras_to_file = "সার্ভারে একটি ফাইলে `${amount}` টি সিকিউরিটি ক্যামেরা সংরক্ষিত হয়েছে।",
		no_nearby_security_cameras = "সংরক্ষণের জন্য কোন সম্মুখস্থ সিকিউরিটি ক্যামেরা নেই।",
		no_city_ping = "শহর ক্যামেরা পিং করা যায়নি।",
		offline = "অফলাইন",
		camera_list = "ক্যামেরা তালিকা",
		camera = "ক্যামেরা ${cameraId}",
		mission_row_pd = "মিশন রো পুলিশ ডিপার্টমেন্ট",
		pillbox_hospital = "পিলবক্স হাসপাতাল",
		jewelry_store = "রকফোর্ড হিলস জুয়েলারি স্টোর",
		principal_bank = "প্রিন্সিপাল ব্যাংক",
		bolingbroke_penitentiary = "বোলিংব্রুক জেল",
		fort_zancudo = "ফোর্ট জানকুদো",
		del_perro_pier = "ডেল পেরো পিয়র",
		flywheels_garage = "ফ্লাইহুইলস গ্যারেজ",
		sandy_shores_pd = "স্যান্ডি শোরস পুলিশ স্টেশন",
		sandy_shores_hospital = "স্যান্ডি শোরস হাসপাতাল",
		davis_sheriffs_station = "ডেভিস শেরিফ স্টেশন",
		vespucci_pd = "ভেস্পুচি পুলিশ স্টেশন",
		rockford_hills_pd = "রকফোর্ড হিলস পুলিশ স্টেশন",
		la_mesa_pd = "লা মেসা পুলিশ স্টেশন",
		beaver_bush_ranger_station = "বিভার বুশ রেঞ্জার স্টেশন",
		cinema = "সিনেমা",
		st_fiacre_hospital = "সেন্ট ফিয়াকার হাসপাতাল",
		weazel_news = "ওইজেল নিউজ",
		palomino_fib_facility = "পালোমিনো এফআইবি সুবিধা",
		bank_1 = "লেজিওন স্কোয়ার ব্যাংক",
		bank_2 = "রকফোর্ড হিলস ব্যাংক",
		bank_3 = "আলতা ব্যাংক",
		bank_4 = "বার্টন ব্যাংক",
		bank_5 = "ব্যানহাম ক্যানিয়ন ব্যাংক",
		bank_6 = "গ্রান্ড সেনোরা ব্যাংক",
		bank_7 = "পালেটো বে ব্যাংক",
		grocery_store_1 = "ডেভিস এলটিডি গ্যাসোলিন",
		grocery_store_2 = "স্ট্রবেরি ২৪/৭",
		grocery_store_3 = "মুর্রিএটা হাইটস রবস লিকুর",
		grocery_store_4 = "লিটল সিউল এলটিডি গ্যাসোলিন",
		grocery_store_5 = "ভেস্পুচি ক্যানাল রবস লিকোর",
		grocery_store_6 = "মর্নিংউড রবস লিকোর",
		grocery_store_7 = "মিরর পার্ক এলটিডি গ্যাসোলিন",
		grocery_store_8 = "ডাউনটাউন ভিনউড ২৪/৭",
		grocery_store_9 = "তাতাভিয়াম পর্বত ২৪/৭",
		grocery_store_10 = "ব্যানহাম ক্যানয়ন রবস লিকোর",
		grocery_store_11 = "ব্যানহাম ক্যানয়ন ২৪/৭",
		grocery_store_12 = "রিচম্যান গ্লেন এলটিডি গ্যাসোলিন",
		grocery_store_13 = "চুমাশ ২৪/৭",
		grocery_store_14 = "হারমোনি ২৪/৭",
		grocery_store_15 = "গ্র্যান্ড সেনোরা রবস লিকোর",
		grocery_store_16 = "গ্র্যান্ড সেনোরা ২৪/৭",
		grocery_store_17 = "স্যান্ডি শরস লিকুয়র এস",
		grocery_store_18 = "স্যান্ডি শরস ২৪/৭",
		grocery_store_19 = "গ্রেপসিড এলটিডি গ্যাসোলিন",
		grocery_store_20 = "মাউন্ট চিলিয়াড ২৪/৭",

		-- NOTE: add-on
		paleto_247 = "পালেটো বে ২৪/৭"
	},

	self_driving = {
		not_driving_a_vehicle = "আপনি বর্তমানে কোনও গাড়ি চালাচ্ছেন না।",
		not_a_self_driving_vehicle = "আপনি চালিত গাড়ি স্বয়ংক্রিয়ভাবে চালানো সমর্থন করে না।",
		no_waypoint_set = "দয়া করে আপনার গন্তব্যস্থানটি চিহ্নিত করতে একটি উপস্থাপন সেট করুন।",
		invalid_waypoint_set = "আপনি স্বয়ংক্রিয়ভাবে ড্রাইভ করতে না পারা গন্তব্যস্থান সেট করেছেন।",
		self_driving_engaged = "অটোপায়েলটটি সক্রিয় হয়েছে।  ক্রুজ স্পীড নিয়ন্ত্রণ করতে ~INPUT_SPRINT~ এবং ~INPUT_DUCK~ চাপুন।",
		self_driving_disengaged = "অটোপায়েলট নিষ্ক্রিয় হয়েছে।",
		destination_too_close = "চিহ্নিত গন্তব্যটি খুব কাছে রয়েছে।",
		self_driving_could_not_be_engaged = "অটোপায়েলট সক্ষম হতে পারে না।"
	},

	shield = {
		no_weapon_equipped = "বোমা শুরু করার জন্য আপনাকে একটি হত্যার সরঞ্জাম অবশ্যই থাকতে হবে।",
		no_shield = "আপনার ইনভেন্টরীতে কোনও বেলডিকশিল্ড নেই।"
	},

	shockwaves = {
		create_shockwave_missing_permissions = "খেলোয়াড় একটি শকওয়েভ তৈরি করার চেষ্টা করেছে কিন্তু তাদের প্রয়োজনীয় অনুমতি নেই।",
		push_player_missing_permissions = "খেলোয়াড় প্রবেশ করার জন্য প্রয়োজনীয় অনুমতি না থাকার কারণে প্রবেশ করার চেষ্টা করেছে।",
		shockwave_success = "সাফল্যপূর্ণভাবে শকওয়েভ তৈরি করা হয়েছে।",
		shockwave_failed = "শকওয়েভ তৈরি করতে ব্যর্থ হয়েছে।",

		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		push_player_success = "প্লেয়ারকে সফলভাবে ধাক্কা দেওয়া হয়েছে।",
		push_player_failed = "প্লেয়ারকে ধাক্কা দেওয়া ব্যর্থ হয়েছে।"
	},

	shooting_ranges = {
		turn_on = "চালু করুন ($${cost})",
		turn_off = "বন্ধ করুন",
		toggle_through_targets = "টার্গেটগুলি পরিবর্তন করুন (${modelId})",
		speed = "গতি (${speedLevel})",
		rotation = "ঘূর্ণন (${rotationLevel})",
		clear_bullet_impacts = "বুলেট ইম্প্যাক্ট মুছে ফেলুন",
		illegal_shooting_spot_value = "শ্যুটিং স্পট এর জন্য অবৈধ মান পাঠানো হচ্ছে।",
		illegal_shooting_spot_id = "শ্যুটিং স্পট এর জন্য মান পাঠানো হচ্ছে যা বিদ্যমান নয়।",
		not_enough_cash = "তোমার পর্যাপ্ত টাকা নেই।"
	},

	shrooms = {
		press_to_pick_up_shrooms = "স্ক্রূমস উঠানোর জন্য ~INPUT_CONTEXT~ চাপুন।",
		picking_up_shrooms = "স্ক্রূমস উঠাচ্ছি।",
		press_to_sell_shrooms = "স্ক্রূমস বিক্রি করতে ~INPUT_CONTEXT~ চাপুন।",
		local_not_interested = "প্রাদেশিক লোকটি এখনও আগ্রহী না হওয়া স্বাভাবিক।",
		not_interested = "এই স্থানীয় লোকটি তোমার স্ক্রূমসে আগ্রহী না মনে করছে।",
		selling_shrooms = "স্ক্রূমস বিক্রি করছি।",
		shrooms_not_ripe = "এই স্ক্রূমস এখনো পাকা না, হয়তো কিছুক্ষন ক্ষেত্রে রাখলে হবে।",
		shroom_id = "shroom-${shroomId}"
	},

	skylift = {
		press_to_toggle_magnet = "ম্যাগনেট চালু / বন্ধ করতে ~INPUT_CONTEXT~ চাপুন।",
		skylift_magnet_turned_off_logs_title = "স্কাইলিফট ম্যাগন বন্ধ হয়েছে",
		skylift_magnet_turned_off_logs_details = "${consoleName} স্কাইলিফট ম্যাগনটি বন্ধ করেছে।",
		skylift_magnet_turned_on_logs_title = "স্কাইলিফট ম্যাগন চালু হয়েছে",
		skylift_magnet_turned_on_logs_details = "${consoleName} স্কাইলিফট ম্যাগনটি চালু করেছে।",
		skylift_attached_vehicle_logs_title = "স্কাইলিফট যুক্ত গাড়ি",
		skylift_attached_vehicle_logs_details = "${consoleName} তাদের স্কাইলিফটে গাড়ি যুক্ত করেছে।"
	},

	smoothies = {
		blend = "মিলবেলার",
		close = "বন্ধ",

		use_blender = "[${InteractionKey}] মিলবেলার ব্যবহার করুন",
		blending = "মিশ্রণ করা হচ্ছে",

		smoothie_label = "স্মুদি (${flavors})",
		seperator = "এবং"
	},

	snow = {
		hold_to_pick_up_snowballs = "একটি বরফের গুলি উঠানোর জন্য ধরুন ~INPUT_CONTEXT~।"
	},

	spawn = {
		spawn_now = "এখন প্রকাশ করুন",
		last_position = "শেষ অবস্থান",

		train_station = "ট্রেন স্টেশন",
		city_bus_station = "সিটি বাস স্টেশন",
		paleto_bay_bus_station = "পালেটো বে বাস স্টেশন",

		mission_row_police_station = "মিশন রো পুলিশ স্টেশন",
		sandy_police_station = "স্যান্ডি শর্স পুলিশ স্টেশন",
		paleto_police_station = "পালেটো বে পিডি",

		mount_zonah = "মাউন্ট জোনা",
		sandy_hospital = "স্যান্ডি শোরস হাসপাতাল",
		paleto_hospital = "পালেটো বে হাসপাতাল",

		battle_royale = "ব্যাটল রয়েল"
	},

	special_imports = {
		special_imports_blip = "বিশেষ আমদানি",

		purchased_vehicle = "${label}-এর জন্য $${price} মূল্যে গাড়ি কেনা সফল হয়েছে। গাড়িটি আপনার গ্যারেজে যুক্ত হয়েছে।",

		something_went_wrong = "কিছু ভুল হয়ে গেছে।",
		not_enough_money = "আপনার পর্যাপ্ত টাকা নেই।",
		invalid_package = "অবৈধ প্যাকেজ লেভেল। (আপনি উচ্চতম টিয়ার প্যাকেজ প্রয়োজন) ",

		dealership_closed = "ডিলারশিপ বর্তমানে বন্ধ আছে।",

		purchased_vehicle_logs_title = "স্পেশাল আমদানি",
		purchased_vehicle_logs_details = "${consoleName} ${price} এর জন্য একটি `${modelName}` স্পেশাল আমদানি গাড়ি কিনেছেন (প্লেট: `${plate}`).",

		marker_label = "${label} | $${price} | স্টক: ${stock}",
		marker_label_purchase = "[${SeatEjectKey}] $${price} এ কেনা হয় ${label}",
		marker_label_purchase_timer = "[${timer}s] ${label} কে $${price} এ কিনতে ${SeatEjectKey} চেপে রাখুন",

		vehicle_sold_out = "${label} | স্টক শেষ হয়ে গেছে"
	},

	spectating = {
		cannot_spectate_self = "আপনি নিজেকে পর্যবেক্ষণ করতে পারবেন না।",
		failed_spectate = "প্লেয়ারকে দেখতে ব্যর্থ হয়েছে।",
		player_not_exist = "প্লেয়ার অফলাইন।",
		no_character_loaded = "প্লেয়ারের কোনও ক্যারেক্টার লোড করা হয়নি।",
		not_same_instance = "প্লেয়ার আপনার সমস্ত উপাদান একই নয়।",

		loading_coords = "স্থানাঙ্ক লোড হচ্ছে",
		preloading_area = "পূর্ব লোডিং এরিয়া",
		finding_player = "খেলোয়াড় খুঁজে পাচ্ছি না",

		invincibility_active = "অজেয়গ্রস্ততা: ~r~সক্রিয়~w~",
		invincibility_inactive_dead = "অজেয়গ্রস্ততা: ~g~নিষ্ক্রিয়~w~ (মৃত্যু)",
		invincibility_inactive = "অজেয়গ্রস্ততা: ~g~নিষ্ক্রিয়~w~",

		health_ok = "স্বাস্থ্য: ~g~${health} / ${maxHealth}~w~",
		health_bad = "স্বাস্থ্য: ~r~${health} / ${maxHealth}~w~",

		armor_ok = "আরমর: ~g~${armor} / ${maxArmor}~w~",
		armor_bad = "আরমর: ~r~${armor} / ${maxArmor}~w~",

		speed = "গতি: ${speed}${unit}",
		speed_mph = "মাইল/ঘন্টা",
		speed_kmh = "কিলোমিটার/ঘন্টা",

		exit_spectate = "স্পেক্টেটর মোড থেকে বের হতে ~g~${InteractionKey}~w~ চাপুন",

		spectate_logs_title = "স্পেক্টেট শুরু",
		spectate_logs_details = "${consoleName} ${targetUser}-কে স্পেক্টেট শুরু করেছেন।",

		spectate_stopped_logs_title = "স্পেক্টেট বন্ধ হয়েছে",
		spectate_stopped_logs_details = "${consoleName} স্পেক্টেট থেকে বের হয়েছে।"
	},

	spying = {
		microphone_bug_not_activated = "এই বাগটি চালু করা হয়নি।",
		vehicle_tracker_not_activated = "এই ট্র্যাকারটি চালু নয়।",
		microphone_bug_active_with_battery = "এই মাইক্রোফোন বাগটি বর্তমানে সক্রিয়। এর ব্যাটারির শক্তি ${batteryPercentage}%। যদি কোন কোনও সংস্থা তা উপস্থিত হতে পারে সে গল্পগুলি শুনতে এটি ব্যবহার করতে পারেন।<br><br>ডিভাইস আইডি: ${deviceId}।",
		microphone_bug_ran_out_of_battery = "এই মাইক্রোফোন বাগটির ব্যাটারি শক্তি শেষ হয়ে গেছে। দেখতে এটি ভর্তি ব্যবহার নয় কারণ অস্থায়ী মাইক্রোফোন বাগটি একটি সপ্তাহের মধ্যে উপদেশ করবে।<br><br>ডিভাইস আইডি: ${deviceId}।",
		vehicle_tracker_active_with_battery = "এই গাড়ি ট্র্যাকার বর্তমানে সক্রিয়। এর ব্যাটারি ${batteryPercentage}%। এই ট্র্যাকারটি যতক্ষণ যে গাড়ির সাথে সংযুক্ত থাকবে, ততক্ষণে আপনার ম্যাপে প্রদর্শিত হবে।<br><br>ডিভাইস আইডি: ${deviceId}।",
		vehicle_tracker_ran_out_of_battery = "এই গাড়ি ট্র্যাকার ব্যাটারি শেষ হয়ে গেছে। ফিজিক্যাল ট্র্যাকারটি একটি সপ্তাহের মধ্যে অপসারণ হবে।<br><br>ডিভাইস আইডি: ${deviceId}",
		scanning_for_devices = "ডিভাইস স্ক্যান করা হচ্ছে",
		searching_for_devices = "ডিভাইস খোঁজা হচ্ছে",
		no_nearby_vehicle = "কোন নিকটবর্তী গাড়ি নেই।",
		placing_vehicle_tracker = "গাড়ি নথি প্রতিষ্ঠান করা হচ্ছে",
		error_using_vehicle_tracker = "গাড়ি নথি স্থাপনে সমস্যা হয়েছে।",
		vehicle_tracker_placed = "গাড়ি নথি সফলভাবে স্থাপন করা হয়েছে।",
		error_using_microphone_bug = "মাইক্রোফোন বাগ লাগানোর সময় ত্রুটি হয়েছে।",
		microphone_bug_placed = "মাইক্রোফোন বাগ সফলভাবে স্থাপন করা হয়েছে।",
		placing_microphone_bug_on_vehicle = "গাড়ির উপর মাইক্রোফোন বাগ স্থাপন করা হচ্ছে",
		placing_microphone_bug_on_player = "ব্যক্তিত্বের উপর মাইক্রোফোন বাগ স্থাপন করা হচ্ছে",
		placing_microphone_bug_on_ground = "মাইক্রোফোন বাগ মাঠে রাখা হচ্ছে",
		error_using_device_scanner = "ডিভাইস স্ক্যানার ব্যবহার করতে সমস্যা হয়েছে।",
		error_searching_for_devices = "ডিভাইস খুঁজতে সমস্যা হয়েছে।",
		found_devices = "${totalDevices}টি ডিভাইস পাওয়া গেছে।",
		no_nearby_devices_found = "কোনো কাছাকাছি ডিভাইস পাওয়া যায় নি।",
		microphone_bug = "মাইক্রোফোন বাগ",
		microphone_bug_destroy = "মাইক্রোফোন বাগ\n[${InteractionKey}] ধ্বংসাধীন করুন",
		vehicle_tracker = "গাড়ির ট্র্যাকার",
		vehicle_tracker_destroy = "গাড়ির ট্র্যাকার\n[${InteractionKey}] ধ্বংসাধীন করুন",
		destroying_device = "ডিভাইস ধ্বংস করছি",
		tracker_will_appear_on_map = "এই ট্র্যাকার ইতিমধ্যে সক্রিয় করা হয়েছে। ট্র্যাকারটি আপনার মানচিত্রে প্রদর্শিত হবে যতক্ষণ গাড়ি উপলব্ধ এবং ট্র্যাকার ব্যাটারি থাকে।",
		spy_ui_info = "মাইক্রোফোন বাগ (#${deviceId}) এ লিস্টেনিং ইন করছি",
		spy_ui_location = "${time}, ${location}",
		spy_ui_exit = "মাইক্রোফোন বাগ থেকে বের হতে ESC চাপুন",
		spy_ui_connecting = "মাইক্রোফোন বাগ (#${deviceId}) সংযোগ করা হচ্ছে",
		spy_ui_connection_failed = "মাইক্রোফোন বাগ (#${deviceId}) সংযোগ অসম্ভব",
		spy_ui_awaiting_data = "তথ্য অপেক্ষমান...",
		spy_ui_data_failed = "তথ্য ব্যর্থ হয়েছে"
	},

	starter_car = {
		your_vehicle_is_nearby = "আপনার ব্যক্তিগত গাড়ি কাছাকাছি পার্ক করা আছে।",
		would_you_like_directions = "আপনি তার দিকনির্দেশ পেতে চান?",
		press_to_respond = "গ্রহণ করতে চাইলে ~INPUT_FRONTEND_ACCEPT~ টিপুন অথবা অগ্রায়ণ করতে ~INPUT_FRONTEND_CANCEL~ টিপুন।",
		follow_the_checkpoints = "চেকপয়েন্টগুলি অনুসরণ করুন।",

		received_logs_title = "গাড়ির চালু হয়েছে",
		received_logs_details = "${consoleName} একটি শুরু করা গাড়ি (মডেল: ${modelName}) পেয়েছে।"
	},

	status = {
		status_reset = "${consoleName}-এর স্থিতি সফলভাবে পুনরায় সেট করা হয়েছে।",
		status_reset_failed = "সার্ভার আইডি `${serverId}` সহ কোনও ব্যবহারকারী পাওয়া যায়নি।",
		reset_status_not_staff = "অনুমতিপ্রাপ্ত না হওয়া থাকে একটি খেলোয়াড়ের স্থিতি পুনরায় সেট করতে চেষ্টা করা হয়েছে।",
		status_reset_for_all = "সকলকে সফলভাবে স্থিতি পুনরায় সেট করা হয়েছে।",
		status_disabled = "স্থিতির (স্ট্রেস, হাঙ্গার এবং দারুণ টুকরা) ব্যবস্থা নিষ্ক্রিয় করা হয়েছে।",
		status_enabled = "স্থিতির (স্ট্রেস, হাঙ্গার এবং দারুণ টুকরা) ব্যবস্থা সক্ষম করা হয়েছে।",
		failed_to_set_body_armor_level = "`/set_body_armor` কমান্ড সঠিকভাবে পারফরম করা যায়নি।",
		set_body_armor_level_player = "সর্বমোট ${consoleName}-এর জন্য বডি আরমর স্তরটি সফলভাবে সেট করা হয়েছে `${bodyArmorLevel}`।",
		set_body_armor_level_everyone = "সফলভাবে সবার জন্য বডি আরমর স্তরটি সেট করা হয়েছে `${bodyArmorLevel}`।",
		set_body_armor_level_self_title = "নিজের জন্য বডি আরমর স্তর সেট করুন",
		set_body_armor_level_self_details = "${consoleName} তাদের নিজের বডি আরমর স্তরটি`${bodyArmorLevel}`-এ সেট করেছেন।",
		set_body_armor_level_everyone_title = "সবার জন্য বডি আরমর স্তর সেট করুন",
		set_body_armor_level_everyone_details = "${consoleName} তারা সকলের জন্য বডি আরমর স্তরটি`${bodyArmorLevel}`-এ সেট করেছেন।",
		set_body_armor_level_player_title = "খেলোয়াড়ের জন্য বডি আরমরের স্তর নির্ধারণ করুন",
		set_body_armor_level_player_details = "${consoleName} ${targetConsoleName} এবং তাদের বডি আরমরের স্তরটি `${bodyArmorLevel}` করে আপডেট করলেন।",
		set_body_armor_level_player_not_staff = "খেলোয়াড় অন্য খেলোয়াড়ের বডি আরমরের স্তর সেট করার চেষ্টা করলেন কিন্তু সেটি করার জন্য সর্বনিম্ন অনুমতি তাঁদের নেই।",
		set_body_armor_level_self_not_staff = "খেলোয়াড়ি নিজের নিজের বডি আরমরের স্তর নির্ধারণ করার চেষ্টা করলেন কিন্তু সেটি করার জন্য সর্বনিম্ন অনুমতি তাঁদের নেই।",
		stress_level_warning = "আপনি জোরালো অবস্থায়! ধূমপান, যোগা এবং এমন কাজগুলি করুন যা আপনার জোর কমাতে সাহায্য করবে।"
	},

	streamer_mode = {
		enabled_streamer_mode = "স্ট্রিমার মোড সক্রিয় করা হয়েছে।",
		disabled_streamer_mode = "স্ট্রিমার মোড অক্ষম করা হয়েছে।"
	},

	sync = {
		missing_hour = "কোনও ঘন্টা প্রদান করা হয়নি।",
		invalid_hour = "স্থানীয় সময় অধিস্থাপন অবৈধ। মানগুলির মান 0:00 এবং 23:59 এর মধ্যে একটি সময় হওয়া উচিত।",
		hour_changed = "ঘন্টাটি এখন `${hour}` এ সেট করা হয়েছে।",
		set_hour_not_staff = "অধিক্ষমতা না থাকলে সময় নির্ধারণ করা চেষ্টা করা হয়েছে।",

		local_time_override_enabled = "স্থানীয় সময় সেট করার জন্য ${hour}:${minute} হয়েছে।",
		local_time_override_disabled = "স্থানীয় সময়কে ডিফল্টভাবে রিসেট করুন।",
		local_weather_override_enabled = "স্থানীয় আবহাওয়াকে `${weatherName}` এ সেট করুন।",
		local_weather_override_disabled = "স্থানীয় আবহাওয়াকে ডিফল্টভাবে রিসেট করুন।",

		missing_minute = "কোনও মিনিট সরবরাহ করা হয়নি।",
		invalid_minute = "মিনিট `${minute}` অবৈধ। মান 0 থেকে 59 অবশ্যই হতে হবে।",
		minute_changed = "এখন মিনিট সেট করা হয়েছে `${minute}`।",
		set_minute_not_staff = "অনুমতিহীনভাবে মিনিট সেট করার চেষ্টা করা হয়েছে।",

		missing_weather = "কোনও আবহাওয়া সরবরাহ করা হয়নি।",
		invalid_weather = "${weatherName} আবশ্যকভাবে বৈধ নয়। বৈধ আবশ্যক আবষ্কের নামগুলি CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT এবং BLIZZARD অভিধান।",
		weather_changed = "আবষ্ক এখন সেট করা হয়েছে `${weatherName}` এ।",
		weather_advanced = "আবষ্ক এখন `${weatherName}` এ অগ্রসর করা হয়েছে।",
		weather_advance_fail = "আবষ্ককে নির্দিষ্ট সময় উন্নয়ন করতে ব্যর্থ হয়েছে।",
		set_weather_not_staff = "প্রয়োজনীয় অনুমতিগুলি না থাকায় আবষ্ক সেট করার চেষ্টা করা হয়েছে।",
		advance_weather_not_staff = "প্রয়োজনীয় অনুমতিগুলি না থাকায় আবষ্ক অগ্রগামী করার চেষ্টা করা হয়েছে।",

		time_frozen = "সময়টি এখন বর্জন হয়েছে।",
		time_unfrozen = "সময় এখন আর বর্জন নয়।",
		freeze_time_not_staff = "আবশ্যক অনুমতিবিহীনভাবে সময় বর্জন করার চেষ্টা করেছেন।",

		weather_frozen = "আবহাওয়া এখন বর্জন হয়েছে।",
		weather_unfrozen = "আবহাওয়া এখন আর বর্জন নয়।",
		freeze_weather_not_staff = "আবশ্যক অনুমতিবিহীনভাবে আবহাওয়া বর্জন করার চেষ্টা করেছেন।",

		blackout_enabled = "শহরে এখন ব্ল্যাকআউট আছে।",
		blackout_disabled = "শহরে আর কোন ব্ল্যাকআউট নেই।",
		blackout_not_staff = "অনুমতিবিহীনভাবে ব্ল্যাকআউট টগল করার চেষ্টা করেছেন।",

		weather_changed_title = "আবহাওয়া পরিবর্তিত হয়েছে",
		weather_changed_details = "${consoleName} আবহাওয়া পরিবর্তন করেছে `${weatherName}`।",

		weather_changed_success = "সফলভাবে `${weatherName}` আবহাওয়া পরিবর্তিত হয়েছে।",
		weather_change_failed = "আবহাওয়া পরিবর্তন ব্যর্থ হয়েছে।",
		weather_parameter_invalid = "অবৈধ weatherName পরামিতি।",
		weather_parameter_missing = "weatherName পরামিতি অনুপস্থিত।",

		time_parameters_invalid = "অবৈধ ঘন্টা বা মিনিট পরামিতি।",
		time_currently_transitioning = "এখন সময় পরিবর্তনশীল, অনুগ্রহ করে অপেক্ষা করুন।",
		time_successfully_transitioned = "সময় সফলভাবে ট্রান্সিশন করা হয়েছে `${hour}:${minute}`.",
		time_successfully_set = "সময় সফলভাবে সেট করা হয়েছে`${hour}:${minute}`."
	},

	tablet = {
		you_dont_have_a_tablet = "আপনার কোনও ট্যাবলেট নেই।",

		app_snake = "সাপ",
		app_tetris = "টেট্রিস",
		app_chess = "চতুরঙ্গ",
		app_minesweeper = "মাইনসুইপার",
		app_flappy_bird = "ফ্ল্যাপি পাখি",
		app_geoguesser = "জিও-গেসার",
		app_pdm = "পিডিএম ক্যাটালগ",
		app_edm = "ইডিএম ক্যাটালগ",
		app_cat_pictures = "বিড়ালের ছবি",

		folder_games = "খেলা",
		folder_productivity = "উৎপাদকতা",

		snake_title = "সাপ",
		snake_description = "উপর, নিচে, বাম এবং ডানে চলার জন্য তীর কীগুলি ব্যবহার করুন।",
		snake_start_game = "গেম শুরু করুন",
		snake_difficulty = "সমস্যা:",
		snake_difficulty_easy = "সহজ",
		snake_difficulty_medium = "মাঝারি",
		snake_difficulty_hard = "কঠিন",

		snake_game_over = "গেম শেষ!",
		snake_over_description = "চূড়ান্ত স্কোর: ${score}।",
		snake_new_game = "নতুন গেম",

		tetris_description = "বাম এবং ডানে চলার জন্য তীর কীগুলি ব্যবহার করুন।",
		tetris_play = "নতুন গেম",
		tetris_game_over = "গেম শেষ",
		tetris_restart = "পুনরারম্ভ করুন",
		tetris_score = "স্কোর",

		chess_title = "চতুরঙ্গ",
		chess_your_turn = "আপনার টার্ন",
		chess_ai_turn = "এই মমে একটি AI বিচার করছে",
		chess_you_lost = "আপনি হারিয়ে গেছেন",
		chess_you_won = "আপনি জিতেছেন",
		chess_draw = "ড্র",

		chess_play_as = "খেলুন যে হিসাবে:",
		chess_play_as_b = "কালো",
		chess_play_as_w = "সাদা",
		chess_difficulty = "সমস্যা:",
		chess_difficulty_level = "লেভেল ${level}",
		chess_start = "গেম শুরু করুন",

		minesweeper_title = "মাইনসুইপার",
		minesweeper_win = "আপনি জিতেছেন",
		minesweeper_loose = "আপনি হারিয়ে গেছেন",
		minesweeper_difficulty = "সমস্যা:",
		minesweeper_start = "গেম শুরু করুন",
		minesweeper_flags_used = "${used}/${total} ফ্ল্যাগ ব্যবহৃত",

		flappy_bird_title = "ফ্ল্যাপি পাখি",
		flappy_bird_score = "চূড়ান্ত স্কোর:",
		flappy_bird_game_over = "গেম শেষ",
		flappy_bird_start = "শুরু করতে ক্লিক করুন"
	},

	tattoos = {
		tattoos_refreshed = "ট্যাটুর তালিকা পূনরায় লোড হয়েছে।",
		something_went_wrong = "কিছু একটা ভুল হয়ে গেছে।",
		user_does_not_have_sent_character_loaded = "ব্যবহারকারীর সেন্ট ক্যারেক্টার লোড করা নেই।",
		user_has_no_character_loaded = "ব্যবহারকারীর কোন ক্যারেক্টার লোড করা নেই।",
		user_not_found = "পাঠানো ব্যবহারকারীটি সার্ভারে পাওয়া যায়নি।",
		invalid_character_id = "ভুল চরিত্র আইডি প্যারামিটার পাঠানো হয়েছে।",
		invalid_license_identifier = "অবৈধ লাইসেন্স চিহ্নিতকরণ প্যারামিটার পাঠানো হয়েছে।"
	},

	teleporters = {
		enter_mechanic_shop = "মেকানিক দোকানে প্রবেশ করুন",
		enter_mechanic_shop_interact = "[${InteractionKey}] মেকানিক দোকানে প্রবেশ করুন",

		exit_mechanic_shop = "মেকানিক দোকান থেকে প্রস্থান করুন",
		exit_mechanic_shop_interact = "[${InteractionKey}] মেকানিক দোকান থেকে প্রস্থান করুন",

		enter_coroner = "মৃত্যুপরীক্ষা করুন",
		enter_coroner_interact = "[${InteractionKey}] মৃত্যুপরীক্ষা করুন",

		exit_coroner = "করনার থেকে বের হোন",
		exit_coroner_interact = "[${InteractionKey}] করনার থেকে বের হতে চাইলে",

		enter_fib = "FIB এ ঢুকুন",
		enter_fib_interact = "[${InteractionKey}] FIB এ ঢুকতে চাইলে",

		exit_fib = "FIB থেকে বের হোন",
		exit_fib_interact = "[${InteractionKey}] FIB থেকে বের হতে চাইলে",

		enter_iaa_base = "IAA বেসে ঢুকুন",
		enter_iaa_base_interact = "[${InteractionKey}] IAA বেসে ঢুকতে চাইলে",

		exit_iaa_base = "IAA বেস থেকে বের হোন",
		exit_iaa_base_interact = "[${InteractionKey}] IAA বেস থেকে বের হতে চাইলে",

		enter_server_room = "সার্ভার রুমে ঢুকুন",
		enter_server_room_interact = "[${InteractionKey}] সার্ভার রুমে ঢুকতে চাইলে",

		exit_server_room = "সার্ভার রুম ছেড়ে যান",
		exit_server_room_interact = "[${InteractionKey}] সার্ভার রুম ছেড়ে যান",

		enter_warehouse_shop = "গুদামে ঢুকুন",
		enter_warehouse_shop_interact = "[${InteractionKey}] গুদামে ঢুকুন",

		exit_warehouse_shop = "গুদাম ছেড়ে যান",
		exit_warehouse_shop_interact = "[${InteractionKey}] গুদাম ছেড়ে যান",

		enter_office_shop = "অফিসে ঢুকুন",
		enter_office_shop_interact = "[${InteractionKey}] অফিসে ঢুকুন",

		exit_office_shop = "অফিস ছেড়ে যান",
		exit_office_shop_interact = "[${InteractionKey}] অফিস ছেড়ে যান",

		enter_cocaine_lab = "কোকেন ল্যাবে প্রবেশ করুন",
		enter_cocaine_lab_interact = "[${InteractionKey}] কোকেন ল্যাবে প্রবেশ করুন",

		exit_cocaine_lab = "কোকেন ল্যাব ছেড়ে যান",
		exit_cocaine_lab_interact = "[${InteractionKey}] কোকেন ল্যাব ছেড়ে যান",

		enter_mayor_office = "মেয়রের অফিসে প্রবেশ করুন",
		enter_mayor_office_interact = "[${InteractionKey}] মেয়রের অফিসে প্রবেশ করুন",

		exit_mayor_office = "মেয়রের অফিস ছেড়ে যান",
		exit_mayor_office_interact = "[${InteractionKey}] মেয়রের অফিস ছেড়ে যান",

		enter_exclusive_dealership = "এক্সক্লুসিভ ডিলারশিপে প্রবেশ করুন",
		enter_exclusive_dealership_interact = "[${InteractionKey}] এক্সক্লুসিভ ডিলারশিপে প্রবেশ করুন",

		exit_exclusive_dealership = "এক্সক্লুসিভ ডিলারশিপ থেকে বাহির হন",
		exit_exclusive_dealership_interact = "[${InteractionKey}] এক্সক্লুসিভ ডিলারশিপ থেকে বাহির হতে চাইলে",

		enter_casino = "ক্যাসিনোতে প্রবেশ করুন",
		enter_casino_interact = "[${InteractionKey}] ক্যাসিনোতে প্রবেশ করুন",

		exit_casino = "ক্যাসিনো থেকে বাহির হন",
		exit_casino_interact = "[${InteractionKey}] ক্যাসিনো থেকে বাহির হতে চাইলে",

		enter_roof = "ছাদে প্রবেশ করুন",
		enter_roof_interact = "[${InteractionKey}] ছাদে প্রবেশ করুন",

		exit_roof = "ছাদ থেকে বাহির হন",
		exit_roof_interact = "[${InteractionKey}] ছাদ ছাড়ুন",

		enter_penthouse = "পেন্থাউসে প্রবেশ করুন",
		enter_penthouse_interact = "[${InteractionKey}] পেন্থাউসে প্রবেশ করুন",

		exit_penthouse = "পেন্থাউস ছাড়ুন",
		exit_penthouse_interact = "[${InteractionKey}] পেন্থাউস ছাড়ুন",

		enter_parking_garage = "পার্কিং গ্যারেজে প্রবেশ করুন",
		enter_parking_garage_interact = "[${InteractionKey}] পার্কিং গ্যারেজে প্রবেশ করুন",

		exit_parking_garage = "পার্কিং গ্যারেজ ছাড়ুন",
		exit_parking_garage_interact = "[${InteractionKey}] পার্কিং গ্যারেজ ছাড়ুন",

		enter_surgery = "শস্যচিকিত্সায় প্রবেশ করুন",
		enter_surgery_interact = "[${InteractionKey}] শস্যালয়ে প্রবেশ করুন",

		exit_surgery = "শস্যালয় পরিত্যাগ করুন",
		exit_surgery_interact = "[${InteractionKey}] শস্যালয় পরিত্যাগ করুন",

		enter_icu = "আইসিইউতে প্রবেশ করুন",
		enter_icu_interact = "[${InteractionKey}] আইসিইউতে প্রবেশ করুন",

		exit_icu = "আইসিইউ পরিত্যাগ করুন",
		exit_icu_interact = "[${InteractionKey}] আইসিইউ পরিত্যাগ করুন",

		enter_underground_tunnel = "আন্তঃপ্রদেশে টানেলে প্রবেশ করুন",
		enter_underground_tunnel_interact = "[${InteractionKey}] আন্তঃপ্রদেশে টানেলে প্রবেশ করুন",

		exit_underground_tunnel = "আন্তঃপ্রদেশ টানেল ছেড়ে যান",
		exit_underground_tunnel_interact = "[${InteractionKey}] আন্তঃপ্রদেশ টানেল ছেড়ে যান",

		use_secret_tunnel_exit = "গোপন উত্তরাধিকার ব্যবহার করুন",
		use_secret_tunnel_exit_interact = "[${InteractionKey}] গোপন উত্তরাধিকার ব্যবহার করুন",

		enter_hangar = "হেঙ্গারে প্রবেশ করুন",
		enter_hangar_interact = "[${InteractionKey}] হেঙ্গারে প্রবেশ করুন",

		exit_hangar = "হেঙ্গার ছাড়িয়ে যাও",
		exit_hangar_interact = "[${InteractionKey}] হেঙ্গার ছাড়িয়ে যাও",

		enter_loading_bay = "লোডিং বে প্রবেশ করুন",
		enter_loading_bay_interact = "[${InteractionKey}] লোডিং বে প্রবেশ করুন",

		exit_loading_bay = "লোডিং বে ছাড়িয়ে যাও",
		exit_loading_bay_interact = "[${InteractionKey}] লোডিং বে ছাড়িয়ে যাও"
	},

	test_server = {
		you_are_not_in_a_vehicle = "আপনি গাড়ির মধ্যে নেই।",
		you_are_in_a_vehicle = "আপনি বর্তমানে একটি গাড়ির ভিতরে রয়েছেন।",
		invalid_vehicle_preset = "অবৈধ গাড়ির প্রিসেট।",
		fully_upgraded = "গাড়ি সম্পূর্ণরূপে আপগ্রেড করা হয়েছে।",
		applied_preset = "প্রিসেট সফলভাবে প্রয়োগ করা হয়েছে।",
		spawned_car = "${modelName} স্পঁদ করা হয়েছে।",
		just_spawned_a_car = "আপনি সম্প্রতি একটি গাড়ি স্পঁদ করেছেন, ${time} সেকেন্ড পরে আরেকটি স্পঁদ করতে হবে।"
	},

	time_scale = {
		invalid_time_scale = "মান ${timeScale} একটি অবৈধ সময় স্কেল।",
		set_time_scale_missing_permissions = "প্লেয়ার সময় স্কেল সেট করার চেষ্টা করেছেন কিন্তু তাদের প্রয়োজনীয় অনুমতিগুলি নেই।",
		time_scale_set_to = "${timeScale}-এ সময় স্কেল সেট করা হয়েছে।",
		time_scale_disabled = "সময় স্কেল উল্টা বাড়ি করা হয়েছে।",
		time_scale_already_set_to = "সময় স্কেল ইতিমধ্যেই ${timeScale}-এ সেট করা হয়েছে।",
		time_scale_is_already_disabled = "সময় স্কেল উল্টা বাড়ি ইতিমধ্যেই বন্ধ করা হয়েছে।"
	},

	titanic = {
		created_titanic = "${sinkTime} মিনিটে টাইটানিক তৈরি করা হয়েছে।",
		failed_to_create_titanic = "টাইটানিক তৈরি করতে ব্যর্থ হয়েছে।",
		create_titanic_missing_permissions = "খেলোয়াড় টাইটানিক তৈরি করতে চেষ্টা করেছেন তবে তাঁর কাছে সমর্থন প্রয়োজন ছিল না।"
	},

	top_down = {
		not_in_valid_vehicle = "আপনি বৈধ গাড়ি এ / বাইক এ নেই।",
		top_down_on = "উপর থেকে-নিচে দেখ চালু করা হয়েছে।",
		top_down_off = "উপর থেকে-নিচে দেখ বন্ধ করা হয়েছে।"
	},

	trackers = {
		error_finding_tracker = "আপনার ট্র্যাকার খুঁজতে সমস্যা হয়েছে।",
		tracker_visible = "আপনার ট্র্যাকার এখন দৃশ্যমান।",
		tracker_hidden = "আপনার ট্র্যাকার এখন গোপন করা হয়েছে।",
		tracker = "ট্র্যাকার",
		trackers = "ট্র্যাকারস",
		stockade_robbery_tracker = "স্টকেড ট্রাক (10-78)",
		tracked_vehicle = "ট্র্যাক করা গাড়ি (${trackerId})",
		tracked_player = "${displayName}",
		battle_royale_teammate = "${name}",
		tracker_character = "${firstName} ${lastName} (${departmentLabel})",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName} (${departmentLabel})",
		trackers_in_category = "মানচিত্রে এখন ট্র্যাকারগুলি তাদের বিভাগের মধ্যে সংরক্ষিত থাকবে।",
		trackers_split = "ট্র্যাকারগুলি এখন একক ব্লিপে বিভক্ত করা হবে।",

		department_sasp = "এসএএসপি",
		department_bcso = "বিসিএসও",
		department_sahp = "এসএএইচপি",
		department_doc = "ডক",
		department_park_rangers = "রেঞ্জার",
		department_medical = "ইএমএস",
		department_doctor = "ডাক্তার",
		department_bcfd = "বিসিএফডি",

		department_police_undercover = "গোপনিযোগ্য পুলিশ",

		department_police_training = "পুলিশ প্রশিক্ষণ",
		department_ems_training = "ইএমএস প্রশিক্ষণ"
	},

	trading_cards = {
		access_store = "[${InteractionKey}] স্টোর এ্যাক্সেস করুন",

		buy_pack = "${packName} কেনো",
		store_title = "কার্ড স্টোর",

		successfully_bought_pack = "কার্ড প্যাক সফলভাবে ক্রয় করা হয়েছে",
		failed_buy_pack = "কার্ড প্যাক কন করুণ হয়নি। আপনার পর্যাপ্ত টাকা আছে?",

		just_showed_trading_cards = "আপনি সমান্তরালী কার্ড দেখেছেন। অনুগ্রহ করে কিছুক্ষণ অপেক্ষা করুন।",

		unpack_successfull = "প্যাক সফলভাবে খোলা হয়েছে।",
		failed_unpack = "প্যাক খোলা ব্যর্থ হয়েছে।",
		failed_unpack_no_cards = "প্যাক খোলা ব্যর্থ হয়েছে। কোন ট্রেডিং কার্ড উপলব্ধ নেই।",

		edition = "সংস্করণ",
		rarity = "দুর্লভতা",

		rarity_bronze = "ব্রোঞ্জ",
		rarity_silver = "সিলভার",
		rarity_gold = "গোল্ড",
		rarity_holo = "হোলো",
		rarity_foil = "ফয়েল",
		rarity_relic = "পুরাতন ফলক",
		rarity_headache = "মাথা ব্যাথা",
		rarity_missprint = "মিসপ্রিন্ট",
		rarity_ethereal = "অস্তিত্বাহীন",
		rarity_promotional = "প্রচারণামূলক",

		rarity_custom = "কাস্টম",

		press_to_access_buyback = "কার্ড পুনর্ভরণের জন্য ~INPUT_CONTEXT~ চাপুন।",
		buyback_title = "ট্রেডিং কার্ড পুনর্বিক্রয়",
		close_menu = "মেনু বন্ধ করুন",
		sell_cards = "${rarity} কার্ডগুলি বিক্রি করুন",

		failed_selling = "কার্ডগুলি বিক্রি করা ব্যর্থ হয়েছে।",
		no_cards_of_type = "আপনার কোনও ${rarity} কার্ড নেই।",
		successfully_sold_cards = "${amount}টি ${rarity} কার্ডটি $${earned} এ বিক্রি হয়েছে।",

		studio_blip = "945 স্টুডিও"
	},

	training = {
		on_team_attackers = "আপনি হামলাকারী! সময় শেষ: ${time}",
		on_team_defenders = "আপনি রক্ষণকারী! সময় শেষ: ${time}",
		attackers = "আক্রমণকারীগণ:",
		defenders = "প্রতিরক্ষাকারীগণ:",
		waiting_for_players = "আরও খেলোয়ার অপেক্ষা করছি। প্রতিটি দলে কমপক্ষে একজন খেলোয়া থাকতে হবে।",
		none = "প্রযোজ্য নেই",
		match_starting_in = "ম্যাচটি ${seconds} সেকেন্ডের মধ্যে শুরু হবে।",
		loading_match = "খেলোয়ারদের লোড করা হচ্ছে। ম্যাচটি ${seconds} সেকেন্ডের মধ্যে শুরু হবে।",
		attackers_help_text = "জিতের আগে কুশ করতে হবে। তবে ব্যবধান শেষ হওয়ার আগে সব প্রতিরক্ষাকারীগণ হত্যা হয়ে যাবে।",
		defenders_help_text = "জিতের আগে সব আক্রমণকারীগণ হত্যা হয়ে যাবে অথবা ব্যবধান শেষ হওয়ার সাথে জিতের অপেক্ষা করতে হবে।",
		attacker = "হামলাকারী",
		defender = "প্রতিবাদী",
		attackers_won = "হামলাকারীরা জয় লাভ করেছেন!",
		defenders_won = "প্রতিবাদীরা জয় লাভ করেছেন!"
	},

	trains = {
		spawn_train_missing_permissions = "খেলোয়াড়ের একটি ট্রেন উৎপন্ন করতে চেষ্টা করেছিলেন কিন্তু এতে করার জন্য প্রয়োজনীয় অনুমতি নেই।",

		invalid_track_id = "অবৈধ ট্র্যাক আইডি সরবরাহ করা হয়েছে।",
		spawned_train_on_track = "ট্র্যাক ${trackId} এ একটি ট্রেন উৎপন্ন করা হয়েছে।",
		failed_to_spawn_train = "ট্রেন উৎপন্ন করতে ব্যর্থ হয়েছে।"
	},

	traps = {
		rearming = "পুনরায় সজ্জিত করা হচ্ছে",
		press_to_rearm = "[${InteractionKey}] সজ্জিত করুন",
		rearm = "সজ্জিত করুন",
		e = "E"
	},

	treasure_maps = {
		no_treasure_map_with_tier = "${mapTier} স্তরের কোন খজনা মানচিত্র নেই।",
		treasure_map_does_not_have_piece = "${mapTier} স্তরের খজনা মানচিত্রে ${pieceNumber} কোনও খণ্ড নেই।",
		spawn_map_piece_missing_permissions = "খেলোয়াড় উচিত অনুমতিসহ মানচিত্র খণ্ড উত্পন্ন করার চেষ্টা করেছে।",

		sketchy_map = "স্কেচি মানচিত্র",
		worn_map = "জুঁইপোষা মানচিত্র",
		fancy_map = "ফ্যান্সি মানচিত্র",
		exquisite_map = "সুসজ্জিত মানচিত্র",

		map_piece_tier_1_description = "একটি নলের নিচে লেখাপত্র দেখতে পাচ্ছেন।",
		map_piece_tier_2_description = "একটি সত্যকোমুক্ত মানচিত্রের টুকরা লঙ্ঘনীয় দেখায়। আবার কচিকাভাবে মসৃণ হতে পারে।",
		map_piece_tier_3_description = "সূর্যের আলোতে এই মানচিত্র টুকরা আলোকিত হয়।",
		map_piece_tier_4_description = "এই জটিল, সুন্দর মানচিত্র টুকরাটি অর্থের মতো দাম করে।",

		map_tier_1_description = "এটি একটি ন্যাপকিনে হাতের খচিত মনোহর ছক দেখায়। জিজ্ঞেসকর দাগলে বিচক্ষণ হন।",
		map_tier_2_description = "এই মানচিত্রটি খুব চহিত পরিবেশে আছে কিন্তু এটি কোনও ভাল পথ নেই মনে হয়।",
		map_tier_3_description = "সেরা মানচিত্র এখানে রয়েছে, নিশ্চয়তা দেওয়া \"সম্পূর্ণ বাস্তব\" নীল পতাকা নিচে ডান হাতে রয়েছে।",
		map_tier_4_description = "এই মানচিত্রটি অধিকাংশ রহস্যময় রঙে লিখিত। আসুন চলুক তাকে খোঁচা নেওয়া যাক!!!!",

		press_to_combine_pieces = "মানচিত্র ${mapTier} এর খণ্ডগুলি মিশিয়ে রাখতে ~INPUT_CONTEXT~ চাপুন।",

		treasure_map = "খজনা মানচিত্র (টিয়ার ${mapTier})"
	},

	tsunami = {
		the_ocean_scaler_intensity_already_set_to = "সমুদ্রের স্কেলার বিপদ ইতিমধ্যে ` ${intensity}` সেট করা হয়েছে।",
		no_ocean_scaler_intensity_set = "এখনও কোন সমুদ্রের স্কেলার বিপদ সেট করা হয় নি।",
		set_ocean_scaler_to = "সমুদ্রের স্কেলার বিপদ সেট করুন `${intensity}`।",
		reset_ocean_scaler = "সমুদ্রের স্কেলার বিপদ রিসেট করুন।",
		set_ocean_scaler_no_permission = "খেলোয়ার কাছে সমুদ্রের স্কেলার সেট করার জন্য প্রয়োজনীয় অনুমতি নেই।"
	},

	tuner_shop = {
		purchase_label = "[${SeatEjectKey}] ক্রয় করুন ${label} জন্য $${price}",
		purchase_label_far = "${label} | $${price}",
		purchase_label_timer = "[${timer}] ${label} | $${price}",
		purchase_label_sale = "[${SeatEjectKey}] ক্রয় করুন ${label} জন্য $${price} (-${discount}%)",
		purchase_label_sale_far = "বিক্রয়ে | ${label} | $${price} (-${discount}%)",
		purchase_label_sale_timer = "[${timer}] ${label} | $${price} (-${discount}%) (-${discount}%)",

		failed_vehicle_spawn = "গাড়ি উত্পন্ন করা ব্যর্থ হয়েছে।",
		not_enough_funds = "ক্রয় সম্পন্ন করার জন্য পর্যাপ্ত তথ্য নেই।",
		area_not_clear = "স্পঁদানীতে প্রবেশ করতে পারবেন না।",
		something_went_wrong = "বাহন ক্রয় করার চেষ্টা করতে কিছু একটা সমস্যা হয়ে গেছে।",

		purchased_vehicle = "${label}-টি সর্বনিম্ন $${price}-এ কেনা হয়েছে।",

		tuner_shop_blip = "মিডনাইট টিউনারশপ",

		log_title = "টিউনারশপ ক্রয়",
		log_description = "$${price}-এ `${label}` কেনা হয়েছে।",
		log_description_discount = "${discount}% ছাড় পাওয়ার সাথে `${label}` কেনা হয়েছে এবং এর দাম $${price}।"
	},

	vape = {
		press_to_use = "হিটের জন্য ~INPUT_CONTEXT~  চাপুন। ভেপ সম্পূর্ণ বন্ধ করার জন্য ~INPUT_FRONTEND_CANCEL~ চাপুন।"
	},

	vdm = {
		failed_vdm = "প্লেয়ারকে VDM করতে ব্যর্থ হয়েছে।",
		invalid_entity = "গাড়ি বা চালক খুঁজে পাওয়া যায়নি।",
		invalid_network_id = "সঠিক নেটওয়ার্ক আইডি নেই।",
		invalid_target = "অবৈধ লক্ষ্য নির্দেশ করা হয়েছে।",
		cleared_vdm = "${amount} টি vdm লক্ষ্য মুছে ফেলা হয়েছে।",
		failed_vdm_clear = "vdm লক্ষ্য মুছে ফেলতে ব্যর্থ হয়েছে।",
		added_vdm_target = "নেটওয়ার্ক আইডি ${networkId} এর একজন NPC ${target}-এর লক্ষ্য হিসাবে ধরে নেওয়া হয়েছে।",

		vdm_no_permissions = "পূর্ব অনুমতি না পেয়ে খেলোয়াড় এটি চালানোর চেষ্টা করেছে।"
	},

	vending_machines = {
		vending_coffee = "কফি ক্রয় করতে চাপ দিন ~INPUT_CONTEXT~। দাম হলো $${cost}।",
		vending_coffee_not_enough_cash = "আপনার কাছে কফি কেনার জন্য যথাযথ টাকা নেই। দাম ${cost}।",
		vending_snack = "একটি স্ন্যাক কিনতে ~INPUT_CONTEXT~ চাপুন। দাম ${cost}।",
		vending_snack_not_enough_cash = "আপনার কাছে স্ন্যাক কেনার জন্য যথাযথ টাকা নেই। দাম ${cost}।",
		vending_soda = "একটি সোডা কিনতে ~INPUT_CONTEXT~ চাপুন। দাম ${cost}।",
		vending_soda_not_enough_cash = "আপনার কাছে সোডা কেনার জন্য যথাযথ টাকা নেই। দাম ${cost}।",
		vending_water = "একটি পানির বোতল কিনতে ~INPUT_CONTEXT~ চাপুন। দাম ${cost}।",
		vending_water_not_enough_cash = "আপনার কাছে পানির বোতল কেনার জন্য যথাযথ টাকা নেই। দাম ${cost}।",
		vending_machine_damaged = "এই খোলার মেশিন ক্ষতিগ্রস্ত। দয়া করে পরে আবার চেক করুন।",
		vending_water_cooler = "একটি পানির কাপ পেতে ~INPUT_CONTEXT~ চাপুন।",

		refill_bottle = "বোতল পূর্ণ করতে ~INPUT_CONTEXT~ চাপুন।",
		refilling_bottle = "বোতল পূর্ণ করা হচ্ছে"
	},

	voice = {
		illegal_radio_frequency = "অনুমতিহীন রেডিও ফ্রিকোয়েন্সি অ্যাক্সেস করার চেষ্টা।",
		voice_chat = "ভয়েস চ্যাট",
		voice_server_connected = "ভয়েস সার্ভারে সংযুক্ত হয়েছে। প্রাসঙ্গিক খেলোয়াড়দের ভয়েস তথ্য প্রেরণ করা হচ্ছে।",
		voice_server_disconnected = "ভয়েস সার্ভার বিচ্ছিন্ন হয়েছে। সংযোগের জন্য অপেক্ষা করা হচ্ছে।",
		voice_muted = "ভয়েস চ্যাটটি মিউট করা হয়েছে।",
		voice_unmuted = "ভয়েস চ্যাটটি আনমিউট করা হয়েছে।",
		broadcasting_voice_to_players = "প্লেয়ারদের জন্য সম্প্রচার হচ্ছে:",
		listening_to_virtual_players = "ভার্চুয়াল প্লেয়ারদের জন্য শুনতে হচ্ছে:",
		radio = "রেডিও",
		phone = "ফোন",
		muted_players = "মিউট হয়েছে:",
		connected = "কানেকটেড: ${connected}",
		muted = "মিউট: ${muted}",
		boolean_true = "সত্য",
		boolean_false = "মিথ্যা",
		target_channel = "টার্গেট চ্যানেল: ${targetChannel}",
		actual_channel = "বর্তমান চ্যানেল: ${actualChannel}",
		target_radius = "লক্ষ্যের ব্যাস: ${targetRadius}",
		actual_radius = "বর্তমান ব্যাস: ${actualRadius}",

		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		failed_toggle_listen = "শ্রণুতা অবস্থা টগল করতে ব্যর্থ হয়েছে।",
		listeners = "শ্রোতারা:",
		listening_to = "শুনছি:",

		failed_toggle_muted = "মৌন অবস্থা টগল করতে ব্যর্থ হয়েছে।",
		toggle_muted_on = "${consoleName} এখন ভয়েস চ্যাট হতে মিউট করা হয়েছে।",
		toggle_muted_off = "${consoleName} এখন ভয়েস চ্যাট করতে অমিউট করা হয়েছে।",

		affected_by_jammer = "আপনার রেডিও জ্যামার এর প্রভাবে আছে বা কোন প্রকারের আবেগকারী ইংশ ঘটছে।",

		listening_missing_permissions = "খেলোয়াড় তার শুনতে সক্ষম হবার চেষ্টা করেছে কিন্তু দরকারী অনুমতিগুলি নেই।",
		voice_mute_missing_permissions = "খেলোয়াড় অন্যান্য খেলোয়াড়ের মিউটেড অবস্থা টগল করার চেষ্টা করেছে কিন্তু দরকারী অনুমতিগুলি নেই।"
	},

	washrooms = {
		use_sink = "[${InteractionKey}] সিংক ব্যবহার করুন",
		using_sink = "সিংক ব্যবহার করা হচ্ছে"
	},

	weed_field = {
		pick_weed = "গাঁজা তুলতে ~INPUT_CONTEXT~ চাপুন",
		picking_weed = "গাঁজা তুলছেন"
	},

	wizard = {
		action_missing_permissions = "সঠিক অনুমতি ছাড়াই একজন খেলোয়াড়কে জ্যাদাতর প্রহর করার চেষ্টা করা হয়েছে।",
		action_radius_missing_permissions = "সঠিক অনুমতি ছাড়াই একটি নির্দিষ্ট পরিসীমায় থাকা প্লেয়ারদের জন্য জ্যাদাতর প্রহর করার চেষ্টা করা হয়েছে।",
		run_as_missing_permissions = "সঠিক অনুমতি না থাকার কারণে অন্য একজন খেলোয়াড়ের মত কমান্ড চালানোর চেষ্টা করা হয়েছে।",

		menu_title = "তৎকারী",

		ragdoll_player = "র্যাগডল",
		ragdoll_player_force = "র্যাগডল (বল)",
		punch_player = "বল মারা",
		taze_player = "টেইজ করা",
		exit_vehicle_player = "গাড়িতে বসে থাকা থেকে বের হওয়া",
		yank_steering_wheel_player = "স্টীলিং হুইল টেনে নেওয়া",
		flashbang_player = "ফ্ল্যাশব্যাং",
		paper_bag_player = "পেপার ব্যাগ",
		ignite_player = "আগুন লাগান",
		explode_player = "বিস্ফোরণ হওয়া",
		quietly_revive_player = "শান্তভাবে পুনরুদ্ধার করুন",
		play_sound = "শব্দ বাজান",

		play_sound_knocking = "নোক - নোক",
		play_sound_discord = "ডিসকর্ড",
		play_sound_phone_call = "ফোন কল",
		play_sound_message = "বার্তা",
		play_sound_twitter = "টুইটার",

		invalid_radius = "অবৈধ ব্যাসার্ধ",
		invalid_server_id = "অবৈধ সার্ভার আইডি।",

		ragdoll_failed = "খেলোয়াড়কে র্যাগডল করতে ব্যর্থ হয়েছে।",
		ragdoll_success = "${consoleName} সফলভাবে র‌্যাগডল হয়েছে।",

		punch_success = "${consoleName} সফলভাবে মারামারি হয়েছে।",
		punch_failed = "প্লেয়ারকে হাতের মাধ্যমে মারা যায়নি।",

		explode_success = "${consoleName} সফলভাবে বিস্ফোরণ হয়েছে।",
		explode_failed = "প্লেয়ারকে বিস্ফোরণ করা যায়নি।",

		ignite_success = "${consoleName} সফলভাবে আগুন লাগানো হয়েছে।",
		ignite_failed = "প্লেয়ারকে আগুন লাগানো যায়নি।",

		punch_radius_failed = "ব্যাসক্রমে প্লেয়ারদের হাতের মাধ্যমে মারা যায়নি।",
		punch_radius_success = "${radius} ব্যাসক্রমে প্লেয়ারদের মারামারি সফলভাবে ঘটানো হয়েছে।",

		ragdoll_radius_success = "সরফর করে প্লেয়ারদের র্যাগডল বানানো সফল। রেডিউস ${radius}।",
		ragdoll_radius_failed = "রেডিউসের মধ্যে প্লেয়ারদের র্যাগডল বানানো ব্যর্থ হয়েছে।",

		flashbang_success = "${consoleName}-কে সফলভাবে ফ্ল্যাশব্যাং করা হয়েছে।",
		flashbang_failed = "প্লেয়ারকে ফ্ল্যাশব্যাং করার ব্যর্থ।",

		flashbang_radius_success = "সরফর করে ${radius} লক্ষ ব্যাক্তিকে ফ্ল্যাশব্যাং করা হয়েছে।",
		flashbang_radius_failed = "রেডিউসের মধ্যে ব্যাক্তিদের ফ্ল্যাশব্যাং করা ব্যর্থ হয়েছে।",

		missing_command = "কমান্ড অনুপস্থিত।",
		run_as_success = " সফলভাবে কমান্ড ${consoleName} হিসাবে চালানো হয়েছে।",
		run_as_failed = "${consoleName} হিসাবে কমান্ড চালানো ব্যর্থ হয়েছে।",

		no_nearby_vehicle = "কোনও গাড়ী নেই।",
		reversing_failed = "পেড রিভার্স করতে ব্যর্থ হয়েছে।",
		driving_forwards_failed = "পেড পিছনে চলার চেষ্টা করতে ব্যর্থ হয়েছে।",
		reversing_success = "পেড সফলভাবে রিভার্স করেছে।",
		driving_forwards_success = "পেড সফলভাবে আগে চলেছে।",

		vehicle_temp_action_missing_permissions = "খেলোয়াড় প্রয়োগ করতে প্রয়োজনীয় অনুমতিগুলি নেই।"
	},

	yoga = {
		yoga_mat_use = "[${InteractionKey}] যোগা ম্যাট",
		yoga_mat = "যোগা ম্যাট",
		press_to_stop_yoga = "যোগা করতে বন্ধ করতে ~INPUT_CONTEXT~ চাপুন।"
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] জম্বি লুটিং চালিয়ে যেতে হবে",
		press_to_loot_zombie = "[${InteractionKey}] জম্বি লুটকরণ করতে চাপুন",
		looting_zombie = "জম্বি লুটিং",
		zombie_looting_injection = "অত্যধিক জম্বি লুটিং! (সার্ভার-টাইমআউট স্কিপ করে, এইটি সাধারণত ইঞ্জেক্টর ব্যবহার করে করা হয়.)",

		zombie_trip_limit = "আপনি লুটিং জম্বিগুলো করতে অত্যন্ত দুর্বল হয়ে গেছেন। আবার আগামীকাল চেষ্টা করতে পারেন।"
	},

	-- global/*
	entities = {
		in_no_ped_population_area = "আপনি একটি 'কোন পেড জনসংখ্যা এলাকায়' আছেন।",
		not_in_no_ped_population_area = "আপনি কোনও 'কোন পেড় জনসংখ্যা এলাকায় নেই।"
	},

	explosions = {
		invalid_explosion_type = "বিস্ফোরণ প্রকার `${explosionType}` বৈধ নয়।",
		invalid_camera_shake = "ক্যামেরা ঝক্কি `${cameraShake}` বৈধ নয়।",
		invalid_damage_scale = "ক্ষতি স্কেল `${damageScale}` বৈধ নয়।",
		created_explosion = "ধরা হয়েছে কোনও ধরনের বিস্ফোরণ `${explosionTypeName}` যেখানে ক্ষতি স্কেল `${damageScale}` এবং ক্যামেরা ঝক্কি `${cameraShake}` সহিত।",
		create_explosion_not_developer = "খেলোয়াড় একটি বিস্ফোরণ তৈরি করতে চেষ্টা করেছে কিন্তু তারা উন্নয়ণকারী নয়।"
	},

	functions = {
		year = "বছর",
		years = "বছর",
		month = "মাস",
		months = "মাস",
		day = "দিন",
		days = "দিন",
		hour = "ঘন্টা",
		hours = "ঘন্টা",
		minute = "মিনিট",
		minutes = "মিনিট",
		second = "সেকেন্ড",
		seconds = "সেকেন্ড",
		just_now = "একটু আগে",
		unknown = "অজানা",
		flipped_vehicle_logs_title = "উল্টো গাড়ি",
		flipped_vehicle_logs_details = "${consoleName} একটি গাড়ি উলটিয়ে ফেলেছে।",
		failed_to_find_ground = "স্থান খুঁজে না পেয়েছে, সবচেয়ে নিকটবর্তী রাস্তায় টেলিপোর্ট করে দেওয়া হয়েছে।",

		time_in = "${unit} এ ${time} সময়ে",
		time_ago = "${time} আগে ${unit}"
	},

	states = {
		invalid_network_id = "অবৈধ নেটওয়ার্ক আইডি।",
		debug_states_failed = "এই এন্টিটির অবস্থার ডিবাগ করতে ব্যর্থ হয়েছে।",
		no_states = "এই এন্টিটির কোনও অবস্থা সেট করা হয়নি।",
		printed_states = "প্রিন্ট করা হয় এন্টিটি ${networkId} এর অবস্থাসমূহ।",

		get_entity_states_missing_permissions = "প্রয়োক্তা উপযুক্ত অনুমতি ছাড়াই একটি নির্দিষ্ট এন্টিটির অবস্থা প্রাপ্ত করার চেষ্টা করেছে।"
	},

	-- illegal/*
	corner = {
		corner_ped = "কর্ণার পেড - ${cornerPedDistance}মিটার (${cornerPedTimer})",
		corner_ped_title = "কর্ণার পেড",
		corner_ped_already_active = "ইতিমধ্যে আপনার জন্য একটি কর্ণার পেড অপেক্ষমাণ রয়েছে।",
		no_node_found = "চালকের জন্য কোন নিকটবর্তী নোড পাওয়া যায়নি",
		no_sell_area = "আপনি এমন একটি এলাকায় নেই যেখানে চালকরা ড্রাগ কেনা করতে আগ্রহী",
		inside_areas_none = "অভ্যন্তরীণ এলাকা: নেই",
		inside_areas = "অভ্যন্তরীণ এলাকা: ${insideAreas}",
		not_able_to_sell = "আপনি এখন বিক্রয় করতে পারবেন না। আবার বিক্রয় করার আগে সামনে হাঁটুন।"
	},

	stockade = {
		dispatch = "[প্রেরণ]",
		status_1a = "10-78, একটি স্টকেড এমারজেন্সি বোতাম চাপেছে এবং ${streetName} এ সহায়তা বলছে।",
		status_1b = "10-78, একটি স্টকেড এমারজেন্সি বোতাম চাপেছে এবং ${crossingRoad} কাছে ${streetName} এ সহায়তা বলছে।",
		status_2a = "10-78, একটি অ্যালার্ম সিস্টেম ব্যবহার করে জানা গেছে যে একটি স্টকেডের দরজাগুলি উজ্জীবিত হয় এবং ব্যাকআপ অনুরোধ করছে ${streetName} এ।",
		status_2b = "10-78, একটি অ্যালার্ম সিস্টেম ব্যবহার করে জানা গেছে যে একটি স্টকেডের দরজাগুলি উজ্জীবিত হয় এবং ব্যাকআপ অনুরোধ করছে ${streetName} এর কাছে ${crossingRoad}।",
		status_3a = "10-78, একটি অ্যালার্ম সিস্টেম ব্যবহার করে জানা গেছে যে একটি স্টকেডের দরজাগুলি অপ্রয়োজনীয়ভাবে উল্লঘিত হয়েছে এবং ব্যাকআপ অনুরোধ করছে ${streetName} এ।",
		status_3b = "10-78, একটি অ্যালার্ম সিস্টেম ব্যবহার করে জানা গেছে যে একটি স্টকেডের দরজাগুলি অপ্রয়োজনীয়ভাবে উল্লঘিত হয়েছে এবং ব্যাকআপ অনুরোধ করছে ${streetName} এর কাছে ${crossingRoad}।",
		grab_valuables = "[${InteractionKey}] মূলধন লুকিয়ে নেওয়া হচ্ছে (${valuablesRemaining} টি বাকি)",
		grabbing_valuables = "মূলধন লুকিয়ে নেওয়া হচ্ছে",
		use_advanced_lockpick = "[${InteractionKey}] এডভান্সড লকপিক ব্যবহার করুন",
		lockpicking_stockade = "স্টকেড লকপিক করা হচ্ছে",

		status_blip = "স্টকেড",

		stockade_reward_logs_title = "স্টকেড পুরস্কার",
		cash_pickup_logs_details = "${consoleName} টি $${cashAmount} টাকা আহরণ করেছেন।",
		item_pickup_logs_details = "${consoleName} 1x ${itemName} আহরণ করেছেন।",

		reward_diamonds = "আপনি একটি হীরা লুকিয়ে নিয়েছেন।",
		reward_gold_bar = "তুমি একটি সোনার বার ধরেছে।",
		reward_cash = "তুমি কিছু টাকা ধরেছে।",
		reward_keycard_red = "তুমি একটি লাল কী কার্ড ধরেছে।",

		stockade_logs_title = "স্টকেড চালু হয়েছে",
		stockade_logs_details = "${consoleName} স্টকেড চালু করেছেন।"
	},

	-- interfaces/*
	interface = {
		no_interfaces_are_focused = "কোনও ইন্টারফেস ফোকাস নেই।",
		interfaces_focused = "ফোকাসকৃত ইন্টারফেসগুলো:\n${interfacesFocused}"
	},

	-- jobs/*
	bean_machine = {
		start_delivery = "একটি ডেলিভারি শুরু করুন।",
		press_to_start_delivery = "ডেলিভারি শুরু করতে ~g~${InteractionKey} ~w~চাপুন।",
		already_in_delivery = "তুমি ইতিমধ্যে একটি সক্রিয় ডেলিভারি আছে।",
		not_bean_machine_employee = "ডেলিভারি শুরু করতে আপনাকে বিন মেশিন এর কর্মচারী হতে হবে।",
		finish_delivery = "ডেলিভারি শেষ করুন।",
		press_to_finish_delivery = "ডেলিভারি শেষ করতে ~g~${InteractionKey} ~w~চাপুন।",
		started_delivery = "${deliveryName} কে ডেলিভারি শুরু করা হয়েছে। আপনার ম্যাপ এ ঠিকানা দেয়া হয়েছে।",
		finished_delivery = "${deliveryName} কে সফলভাবে ডেলিভারি শেষ হয়েছে। টিপ হিসাবে আপনি $${distanceBonus} এবং $${deliveryPrice} পেয়েছেন, মোট মূল্য $${totalPrice}।",
		error_finishing_delivery = "আপনার ডেলিভারি শেষ করতে চেষ্টা করতে গোল হচ্ছে।",
		finished_delivery_title = "বিন মেশিন ডেলিভারি সম্পন্ন",
		finished_delivery_details = "${consoleName} একটি বিন মেশিন ডেলিভারি সম্পন্ন করেছেন এবং ${deliveryPrice} ডলার এবং টিপের মধ্যে থেকে ${distanceBonus} ডলার পান, যা মোট ${totalPrice} ডলার।",
		delivery_blip = "বিন মেশিন ডেলিভারি"
	},

	burger_shot = {
		start_delivery = "ডেলিভারি শুরু করুন।",
		press_to_start_delivery = "ডেলিভারি শুরু করতে ~g~${InteractionKey} ~w~চাপ দিন।",
		already_in_delivery = "আপনার ইতিমধ্যে একটি কাজ চলছে।",
		not_burger_shot_employee = "আপনি যদি একজন বার্গার শট কর্মচারী না হন তবে আপনি ডেলিভারি শুরু করতে পারবেন না।",
		finish_delivery = "বাণিজ্য সম্পন্ন করুন।",
		press_to_finish_delivery = "ডেলিভারি সম্পাদন করতে ~g~${InteractionKey} ~w~চাপ দিন।",
		started_delivery = "${deliveryName} এ একটি ডেলিভারি শুরু করা হয়েছে। আপনার মানচিত্রে স্থান চিহ্নিত হয়েছে।",
		finished_delivery = "${deliveryName} এর ডেলিভারি সম্পন্ন হয়েছে। আপনি $${deliveryPrice} পান এবং টিপ হিসাবে $${distanceBonus} পেয়েছেন, মোট $${totalPrice} করে।",
		error_finishing_delivery = "আপনার ডেলিভারি শেষ করার চেষ্টা করতে সমস্যা হয়েছে।",
		finished_delivery_title = "Burger Shot ডেলিভারি সম্পন্ন হয়েছে",
		finished_delivery_details = "${consoleName} একটি বার্গার শট বাণিজ্যিক বাণিজ্যিক পাঠানো সম্পন্ন করে এবং টিপে $${deliveryPrice} এবং $${distanceBonus} পেয়েছেন, মোট $${totalPrice}।",
		delivery_blip = "বার্গার শট পাঠানো"
	},

	duty = {
		toggle_duty_status_no_permissions = "খেলোয়াড় যে কমান্ড দ্বারা দায়িত্ব সঠিক অনুমতিসহ ডিউটি স্থিতি টগল করতে চেষ্টা করেছেন।",

		duty_status_on = "সফলভাবে দায়িত্বে চলার অবস্থায় হয়েছে।",
		duty_status_off = "সফলভাবে দায়িত্ব থেকে বাদ দেওয়া হয়েছে।",
		duty_status_failed = "দায়িত্বে চলার অবস্থা স্থাপন করতে ব্যর্থ হয়েছে।",

		training_status_on = "প্রশিক্ষণ মোড সফলভাবে চালু করা হয়েছে।",
		training_status_off = "প্রশিক্ষণ মোড বন্ধ করা হয়েছে।",
		training_status_failed = "প্রশিক্ষণ মোড টগল করতে ব্যার্থ হয়েছে।",

		emergency_call = "একটি জরুরী কল রয়েছে। এন্টার চাপুন এটি গ্রহণ করার জন্য।",

		toggled_operator_status_on = "অপারেটর স্ট্যাটাস চালু করা হয়েছে।",
		toggled_operator_status_off = "অপারেটর স্ট্যাটাস বন্ধ করা হয়েছে।"
	},

	job_center = {
		life_invader = "লাইফ ইনভেডার",
		life_invader_blip = "জবের জন্য প্রয়োগ করুন",
		ui_close_menu = "মেনু বন্ধ করুন",
		press_to_browse_jobs = "চাকরি চেক করতে ~INPUT_CONTEXT~ চাপুন।",
		change_job = "চাকরি পরিবর্তন করুন: ${jobName}",
		job_unemployed = "অবসরপ্রাপ্ত",
		job_transportation = "ট্রাক চালক",
		job_taxi = "ট্যাক্সি চালক",
		job_journalist = "পত্রকার",
		job_government = "বিলম্ব সংগ্রাহকারী",
		job_mechanic = "টোও চালক",
		job_delivery = "ডেলিভারি জব",
		changed_job_already_set_to_job = "আপনার চাকরি ইতিমধ্যেই ${jobName} এ সেট করা হয়েছে।",
		changed_job_success = "সাফল্যের সাথে আপনার চাকরি ${jobName} এ সেট করা হয়েছে।",
		changed_job_success_go_to_coords = "সাফল্যের সাথে আপনার চাকরি ${jobName} এ সেট করা হয়েছে। শুরু করতে আপনার মানচিত্রে উপস্থিত উর্ধলগ্নকে অনুসরণ করুন।",
		changed_job_failure = "আপনার চাকরি ${jobName} এ সেট করার চেষ্টা করার সময় একটি ত্রুটি ঘটেছে।",
		changed_job_title = "চাকরি পরিবর্তিত হয়েছে",
		changed_job_details = "${consoleName} এখন আপনি `${jobName}` পেশায় আছেন।"
	},

	jobs = {
		job_refreshed = "চাকরি সফলভাবে রিফ্রেশ হয়েছে।",
		something_went_wrong = "কিছু ভুল হয়েছে।",
		user_does_not_have_sent_character_loaded = "ব্যবহারকারী প্রেরিত করা ক্যারেক্টার লোড করা নেই।",
		user_has_no_character_loaded = "ব্যবহারকারী কোনও চরিত্র লোড করেনি।",
		user_not_found = "প্রেরিত ব্যবহারকারী সার্ভারে খুঁজে পাওয়া যায় নি।",
		invalid_character_id = "প্যারামিটার হিসাবে অবৈধ ক্যারেক্টার আইডি প্রেরিত করা হয়েছে।",
		invalid_license_identifier = "পাওনা শনাক্তক প্যারামিটার অবৈধ হয়েছে।"
	},

	police = {
		aim_assist_enabled = "আপনি এখন সুবিধা পরিবহন করে লক্ষ্য করতে পাবেন।",
		aim_assist_disabled = "আপনি এখন দুর্দান্ত লক্ষ্য করতে পারছেন। সেখানে ফিরে পরিবহন করে লক্ষ্য সহায়তার চালু করা একটি পরামর্শ করা হচ্ছে।",
		you_are_not_police = "এই বৈশিষ্ট্যটি পুলিশের জন্য সংরক্ষিত, অপরাধী নিয়ে ব্যবহার করা যাবে না।",

		undercover_enabled = "আপনি এখন আন্ডারকভার হয়েছেন।",
		undercover_disabled = "আপনি এখন আন্ডারকভার নয়।",

		npc_vehicle = "এই গাড়ি একটি প্রয়োযজ্য দলের সঙ্গে নেই।",
		not_in_a_vehicle = "আপনি বর্তমানে কোনও গাড়ি নির্দেশ করছেন না।",
		invalid_minutes = "অবৈধ সময় (1 মিনিট থেকে 12 ঘন্টা পর্যন্ত)।",

		not_on_duty = "আপনি দায়িত্বে নেই।",
		failed_impound = "গাড়ি কাঠামোয়ন করা ব্যর্থ হয়েছে।",
		not_near_impound = "আপনি পুলিশ ইনপাউন্ড এর কাছে নেই।",
		impound_success = "প্লেট `${plate}` এর গাড়ি সফলভাবে ${minutes} মিনিটের জন্য কাঠামোয়ন করা হয়েছে।",

		access_impound = "[${InteractionKey}] কাঠামোয়নে প্রবেশ করুন",
		impound_lot = "কাঠামোয়ন লট",
		exit_impound = "কাঠামোয়ন প্রস্থান",
		no_impounded_vehicles = "বর্তমানে কোনও গাড়ি ধারণ করা হয়নি।",
		failed_impound_list = "কাঠামোয়ন করা গাড়ি তালিকা পেতে ব্যর্থ হয়েছে।",
		impound_owner = "মালিক: #${cid}",
		withdraw_success = "গাড়ি সফলভাবে উত্তোলন করা হয়েছে।",
		failed_withdraw = "গাড়ি উত্তোলন করা যায়নি।",
		vehicle_not_impounded = "গাড়ির আইডি বর্তমানে পুরষ্কৃত নয়।",

		impound_logs_title = "পুলিশ জব্দকরণ",
		impound_logs_details = "${consoleName} গাড়ির প্লেট ${plate}কে ${minutes} মিনিটের জন্য পুলিশ জব্দকরণে রেখেছিলেন।",

		impound_withdraw_logs_title = "একটি গাড়ি পুলিশ জব্দকরণ থেকে উত্তোলন করা হয়েছে",
		impound_withdraw_logs_details = "${consoleName} ${plate} গাড়ি পুলিশ জব্দকরণ থেকে উত্তোলন করেছিলেন (আরো সময় বাকি: ${timeLeft})।",

		none = "কিছু নেই",
		active = "সক্রিয়",
		not_active = "নিষ্ক্রিয়",
		active_robberies = "\nসক্রিয় দোকান: ${store}।\nসক্রিয় ব্যাংক: ${bank}\nসক্রিয় জুয়েলারী: ${jewelry}",

		failed_dispatch = "প্রেরণ করতে ব্যর্থ হওয়া হয়েছে।",
		dispatch_title = "[প্রেরণ]",
		dispatch_message = "${author}: ${message}",
		invalid_dispatch_message = "অবৈধ প্রেরণ বার্তা (সর্বাধিক ২৫৫ টি অক্ষর).",
		in_training = "আপনি এখন প্রশিক্ষণ মোডে আছেন।",
		cannot_use_dispatch = "আপনি এখন প্রেরণ ব্যবহার করতে পারেন না।",

		dispatch_message_logs_title = "প্রেরণ বার্তা লগ",
		dispatch_message_logs_details = "${consoleName} একটি ডিসপ্যাচ বার্তা প্রেরণ করেছেন: `${message}`।",

		no_keys = "আপনার এই গাড়ির চাবিটি নেই।",
		invalid_drive_mode = "অবৈধ চালনা মোড।",
		not_in_police_vehicle = "আপনি একটি পুলিশ গাড়িতে নন।",
		drive_mode_too_fast = "চালনা মোড পরিবর্তন করার জন্য আপনি খুব দ্রুত চলছেন।",
		drive_mode_already_set = "আপনার গাড়ি চালনার মোড ইতিমধ্যে `${mode}` হিসাবে সেট করা হয়েছে।",
		drive_mode_failed = "গাড়ি চালনার মোড সেট করতে ব্যর্থ হয়েছে।",
		drive_mode_set = "আপনার গাড়ি চালনার মোড সফলভাবে `${mode}` হিসাবে সেট করা হয়েছে।",

		mode_s = "স্পোর্ট-মোড",
		mode_d = "ড্রাইভ-মোড",

		drive_mode_logs_title = "গাড়ির চালনা মোড পরিবর্তিত হয়েছে",
		drive_mode_logs_details = "${consoleName} তাঁর গাড়ির চালনা মোড `${mode}` হিসাবে পরিবর্তন করেছেন।"
	},

	state = {
		license_heli = "হেলিকপ্টার",
		license_fw = "ফিক্সড উইং",
		license_cfi = "সার্টিফাইড ফ্লাইট ইনস্ট্রাক্টর",
		license_hw = "হেভি ওয়েট",
		license_hwh = "হেভি ওয়েট হেলিকপ্টার",
		license_perf = "পারফরমেন্স",
		license_utility = "উপযুক্ততা",
		license_commercial = "বাণিজ্যিক",
		license_management = "ব্যবস্থাপনা",
		license_military = "সামরিক",
		license_special = "বিশেষ বিমানবাহী",
		license_hunting = "শিকারি লাইসেন্স",
		license_fishing = "মাছধরা লাইসেন্স",
		license_weapon = "অস্ত্র লাইসেন্স",
		gave_character_license = "${characterName} কে দিয়েছি লাইসেন্স `${licenseLabel}`।",
		character_already_has_license = "${characterName} এখনও লিসেন্স `${licenseLabel}` রয়েছে",
		removed_character_license = "${characterName} থেকে লাইসেন্স `${licenseLabel}` সরিয়ে দেওয়া হয়েছে।",
		character_does_not_have_license = "${characterName} লাইসেন্স `${licenseLabel}` নেই",
		license_not_found = "লাইসেন্স `${licenseName}` খুঁজে পাওয়া যায়নি।",
		user_not_found_with_character_id = "ক্যারেক্টার আইডি `${characterId}` সহ ব্যবহারকারী খুঁজে পাওয়া যায় নি।",
		no_license_added = "কোন লাইসেন্স যোগ করা হয়নি।",
		invalid_character_id = "যোগ করা হয়েছে অবৈধ ক্যারেক্টার আইডি।",
		no_character_id_added = "কোনও ক্যারেক্টার আইডি যোগ করা হয়নি।",
		your_licenses_are = "আপনার লাইসেন্স নিম্নলিখিত হল: ${licenses}",
		player_licenses_are = "${characterName} এর লাইসেন্স হল: ${licenses}",
		you_have_no_licenses = "আপনার কোন লাইসেন্স নেই।",
		player_has_no_licenses = "${characterName} এর কোনও লাইসেন্স নেই।",
		failed_to_get_licenses = "লাইসেন্স পাওয়া যায়নি।",
		license_list = "উপলব্ধ লাইসেন্স: ${licenseList}।"
	},

	tow = {
		press_to_access_spawner = "গাড়ি স্পাউনারে প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",
		tow_vehicles = "সহজ করার জন্য",
		vehicle_list = "গাড়ির তালিকা",
		park_vehicle = "গাড়ি পার্ক করুন",
		parked_vehicle = "গাড়ি পার্ক করা হয়েছে।",
		no_vehicle_to_park = "পার্ক করার জন্য কোন গাড়ি নেই।",
		close_menu = "মেনু বন্ধ করুন",
		purchased_vehicle = "গাড়ি ক্রয় করা হয়েছে।",
		shop_on_timeout = "গাড়ির দোকান এখন সময় সীমিত। দয়া করে পুনঃচেষ্টা করুন।",
		spawn_area_not_clear = "স্পব্নের অঞ্চল স্পষ্ট নয়।",
		purchase_funds = "অপর্যাপ্ত টাকা।",
		return_button = "ফেরত দিন",

		toggled_messages_on = "বার্তাগুলি চালু করা হলো।",
		toggled_messages_off = "বার্তাগুলি বন্ধ করা হলো।"
	},

	weazel_news = {
		press_to_access_spawner = "যানবাহন স্পওনার প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",
		weazel_news = "ওয়েজেল নিউজ",
		vehicle_list = "যানবাহন তালিকা",
		close_menu = "মেনু বন্ধ করুন",
		return_button = "ফিরে যান",
		park_vehicle = "যানবাহন পার্ক করুন",
		parked_vehicle = "যানবাহন পার্ক করা হয়েছে।",
		no_vehicle_to_park = "পার্ক করার জন্য কোন যানবাহন নেই।",
		spawned_vehicle = "যানবাহন স্পণ করা হয়েছে।",
		spawner_on_timeout = "যানবাহন স্পওনার একটি সময়সীমার মধ্যে রয়েছে। দয়া করে আবার চেষ্টা করুন।",
		spawn_area_not_clear = "স্প্যান এলাকা পরিষ্কার নয়।"
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number2} এর ${number1}।"
	},

	native = {
		player_label = "[${source}] ${name}"
	},

	-- vehicles/*
	alert = {
		triggered_vehicle_alert = "${plateText} প্লেট সঙ্গে গাড়ির সতর্কতা ট্রিগার হয়েছে ${locationLabel} এ।",
		vehicle_alert_blip = "গাড়ি সতর্কতা"
	},

	boats = {
		anchor_disconnected = "এঙ্কর সফলভাবে সংযুক্তি বিচ্ছিন্ন হয়েছে।",
		anchored_successfully = "অ্যাঙ্কর সফলভাবে প্রধান।",
		removing_anchor = "এঙ্কর বিচ্ছিন্ন করা হচ্ছে",
		deploying_anchor = "অ্যাঙ্কর ডিপ্লয় করা হচ্ছে",
		no_vehicle_nearby = "আপনার নিকটবর্তীতে কোন নৌকা নেই যা আপনি এঙ্কর করতে পারেন।"
	},

	car_wash = {
		use_car_wash = "গাড়ি ওজন পরিষ্কারের জন্য প্রেস করুন ~INPUT_CONTEXT~। এর মূল্য হলো $${cost}।",
		stop_car_to_wash = "গাড়িটি ওজন পরিষ্কারের জন্য থামান।",
		vehicle_already_clean = "এই গাড়িটি ওজন পরিষ্কারের প্রয়োজন নেই।",
		car_wash = "গাড়ি ওজন পরিষ্কার",
		air_unit_damaged = "এই বায়ু ইউনিট ক্ষতিগ্রস্ত।",
		air_unit_not_enough_cash = "আপনি বায়ু ইউনিটটি ব্যবহার করতে পারবেন না কারণ আপনার যথেষ্ট টাকা নেই।",
		air_unit_exit_vehicle = "বায়ু ইউনিট ব্যবহার করতে গাড়ি থেকে প্রস্থান করুন।",
		air_unit_press_to_use = "বায়ু ইউনিটটি ব্যবহার করতে  ${SeatEjectKey} চাপুন। এর মূল্য হলো $${cost}।",
		air_unit_purchase_cleaning_kit = "একটি ক্লিনিং কিট কেনার জন্য ~g~${InventoryKey} ~w~চাপুন।",
		cleaning_vehicle = "পরিষ্কারণ গাড়ি",
		not_enough_money = "আপনার পরিমানটি যথাযথ নয় এই এয়ার ইউনিট ব্যবহার করতে।",
		vehicle_not_in_range = "গাড়ি এত দূরে চলে গেছে যেন সাফ করা যায় না।"
	},

	carrier = {
		use_catapult = "ক্যাটাপাল্টে হুক বসানোর জন্য ~INPUT_CONTEXT~ চাপুন।",
		use_launch = "প্রস্তুত হতে ~INPUT_VEH_HANDBRAKE~ চাপুন।"
	},

	damage = {
		vehicle = "গাড়ি আইডি: ${entity}",
		general = "সাধারণ: ${value}",
		body = "বডি: ${value}",
		engine = "ইঞ্জিন: ${value}",
		petrol_tank = "বাকি পরিমাণ: ${value}",
		temperature = "তাপমাত্রা: ${value}",
		tracked_vehicle = "ট্র্যাক যান",

		debug_vehicle_on = "যানবাহন ডিবাগ চালু করা হল।",
		debug_vehicle_off = "যানবাহন ডিবাগ বন্ধ করা হল।"
	},

	fuel = {
		exit_to_fuel = "জ্বলানি পূর্ণ করতে যান থেকে নেওয়া হয়।",
		press_to_fuel = "যানবাহন নিউক্লিয়াসতে জ্বলানি পূর্ণ করতে হলে ~g~${InteractionKey} ~w~ চাপুন।",
		fuel_pump_text = "জ্বলানি খরচ: $${fuelCost}~n~বন্ধ করার জন্য ~g~E ~w~ চাপুন।",
		vehicle_text = "যানবাহনের জ্বলানি পরিমাণ: ${fuelLevel}%",
		tank_full = "ট্যাংক পূর্ণ।",
		vehicle_busy = "নিকটবর্তী যানবাহন ব্যস্ত।",
		purchase_jerry_can = "জেরি ক্যান ক্রয় করতে ~g~${InventoryKey} ~w~চাপুন।",
		gas_station = "গ্যাস স্টেশন",
		petrolcan_fuel_text = "পেট্রলের পরিমাণ বাকি: ${petrolAmount}%~n~ফ্যুয়েলিং বন্ধ করতে ~g~E ~w~চাপুন।",
		player_busy = "আপনি অন্য কিছুতে ব্যস্ত।",
		fuel_level_set_to = "ফুয়েলের পরিমাণ `${fuelLevel}` এ সেট করা হয়েছে।",
		not_in_a_vehicle = "আপনি গাড়ির ভিতরে নেই।",
		vehicle_engine_on = "ইঞ্জিন এখনও চালু আছে।",

		set_fuel_no_permissions = "অনুমতি ছাড়াই খেলোয়াড় গাড়ির ফুয়েলের পরিমাণ সেট করার চেষ্টা করেছিল।",

		vehicle_exploded_logs_title = "গাড়ি বিস্ফোরণ হয়েছে",
		vehicle_exploded_logs_details = "${consoleName} গাড়ির নির্দেশিত শক্তি চালু করে সঞ্চালন করে একটি বিস্ফোরণ সৃষ্টি করে ফেলেছেন।"
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "গতি: ${speed} কিলোমিটার/ঘন্টা\nমডেল: ${model}\nপ্লেট: ${plate}",
		helicopter_camera_vehicle_info_imperial = "গতি: ${speed} মাইল/ঘন্টা\nমডেল: ${model}\nপ্লেট: ${plate}",
		helicopter_camera_altitude = "${altitude} ফুট AGL",
		helicopter_camera_altitude_asl = "${altitude} ফুট ASL",
		unknown = "অজানা"
	},

	garages = {
		garage_empty = "আপনার গেরেজ খালি!",
		impound_lot = "ইমপাউন্ড লট",
		police_impound = "পুলিশ ইমপাউন্ড",
		engine = "ইঞ্জিন",
		body = "বডি",
		vehicle_in = "ভিহিকেল ইন",
		vehicle_out = "ভিহিকেল আউট",
		vehicle_at_police_impound = "আপনার গাড়ি বর্তমানে পুলিশ অধিগ্রহণে রয়েছে।",
		vehicle_at_impound = "আপনার গাড়ি ইমপাউন্ড লটে অবস্থিত।",
		waypoint_to_impound = "আপনার GPS-এ একটি ওয়েপয়েন্ট ইমপাউন্ড লটে চিহ্নিত করা হয়েছে।",
		unable_to_withdraw = "${location} এ গাড়ি বর্তমানে পাওয়া যায় না, সুতরাং গাড়ি উত্তোলন করা সম্ভব হচ্ছে না।",
		waypoint_to_vehicle = "আপনার GPS-এ আপনার গাড়ির একটি ওয়েপয়েন্ট চিহ্নিত করা হয়েছে।",
		vehicle_currently_at = "আপনার গাড়ী বর্তমানে ${location} এ পাওয়া যায়।",
		vehicle_in_garage = "আপনার গাড়ী ${garageName} এ রয়েছে।",
		insufficient_funds = "গাড়ীটি উত্তোলন করতে আপনার যথেষ্ট টাকা নেই।",
		error_withdrawing = "আপনার গাড়ী উত্তোলন করার চেষ্টা করতে একটি ত্রুটি ঘটেছে।",
		withdraw_timeout = "দয়া করে আরেকটি গাড়ী উত্তোলন করার আগে কিছুটা অপেক্ষা করুন।",
		garage_in_use = "এই গেরাজটি বর্তমানে ব্যবহৃত হয়, দয়া করে কিছুটা অপেক্ষা করুন।",
		invalid_model = "অবৈধ বা অজানা গাড়ির মডেল।",
		vehicle_in_the_way = "যানবাহন স্পউন পয়েন্ট ব্লক করছে।",
		vehicle_is_out = "আপনার গাড়ি ইতিমধ্যে নিয়ে এসেছে।",
		vehicle_stored = "আপনার গাড়ি সংরক্ষিত হয়েছে।",
		error_storing = "গাড়ি সংরক্ষণযোগ্য নয়। কি গাড়িটি আপনার?",
		no_nearby_vehicle = "কোনও নিকটবর্তী গাড়ি পাওয়া যায় নি।",
		no_vehicles_to_retrieve = "আপনার রিট্রিভ করার জন্য কোনও গাড়ি নেই!",
		vehicle_retrieved = "গাড়ি সফলভাবে রিট্রিভ করা হয়েছে।",
		error_retrieving = "আপনার গাড়ি রিট্রিভ করার চেষ্টা করার সময় একটি ত্রুটি হয়েছে।",
		not_enough_balance_to_retrieve = "আপনি আপনার দুটি অ্যাকাউন্টে যে কোনও একটি ব্যালেন্স নেই গাড়ি রিট্রিভ করতে।",
		press_to_access = "গেরেজে প্রবেশ করতে ~INPUT_CONTEXT~ চাপুন।",
		ui_return = "ফিরে যান",
		ui_vehicle_list = "গাড়ির তালিকা",
		ui_store_vehicle = "গাড়ি সংরক্ষণ করুন",
		ui_vehicle_sell = "গাড়ি বিক্রি করুন",
		ui_retrieve_vehicle = "গাড়ি উদ্ধার করুন",
		ui_close_menu = "মেনু বন্ধ করুন",
		garage_letter = "${letter} গেরেজ",
		garage_emergency = "${type} গেরেজ",
		emergency_type_1 = "পুলিশ",
		emergency_type_2 = "সহায়তা",
		no_vehicles_impounded = "আপনার কোনও গাড়ি জব্দ করা হয়নি!",
		you_must_retrieve_this_vehicle = "এই গাড়ি ব্যবহার করার আগে আপনাকে এটি উদ্ধার করতে হবে।",
		garage = "গেরেজ",
		retrieved_vehicle_logs_title = "পুনরুদ্ধারিত গাড়ি",
		retrieved_vehicle_logs_details = "${consoleName} গাড়ি পুনরুদ্ধার করেছে যার নম্বর প্লেট `${plate}` এবং মূল্য ${price}।",

		state_loading_model = "মডেল লোড হচ্ছে ...",
		state_withdrawing = "প্রদত্ত গাড়ি উত্তোলন হচ্ছে ...",

		state_retrieve_searching = "অনুসন্ধান করা হচ্ছে ...",
		state_retrieving = "গাড়ি পুনরুদ্ধার করা হচ্ছে ...",

		state_storing = "সংরক্ষণ হচ্ছে ...",

		state_loading = "লোড করা হচ্ছে ...",

		vehicle_weight = "ওজন: ${weight}",
		last_garage_letter = "শেষ - গেরেজ ${letter}",
		last_garage_impound = "শেষ - ইম্পাউন্ড লট",
		no_last_garage_letter = "কোন শেষ গ্যারেজ নেই",

		purchase_vehicle = "দোকানে প্রবেশ করতে ~INPUT_CONTEXT~ টি চাপুন",
		emergency_shop = "গাড়ির দোকান",
		exit_shop = "দোকান থেকে বাইরে চলে গেছেন",
		purchase_success = "আপনি সফলভাবে ${label} গাড়ি ক্রয় করেছেন এটি আপনার গ্যারেজে যোগ করা হয়েছে।",
		purchase_failed = "গাড়ি ক্রয় করা ব্যর্থ হয়েছে।",
		already_owned = "আপনি ইতিমধ্যে এই গাড়ি মডেল মালিক।",
		maximum_owned = "আপনি 6টির বেশি গাড়ি মালিক হতে পারবেন না।",
		not_enough_money = "আপনার কাছে এই গাড়ি ক্রয় করার জন্য যথেষ্ট টাকা নেই।",

		sold_vehicle = "${label} গাড়িটি $${price} এ বিক্রি করা হয়েছে।",
		failed_sell_vehicle = "গাড়ি বিক্রি করা ব্যর্থ।",

		sold_vehicle_logs_title = "গাড়ি বিক্রি করা হয়েছে",
		sold_vehicle_logs_details = "${consoleName} একটি `${modelName}` জরুরী গাড়ি বিক্রি করেছে। এর প্লেট হলো `${plate}` এবং মূল্য ছিল ${price}।",

		purchased_vehicle_logs_title = "গাড়ি ক্রয় করা হয়েছে",
		purchased_vehicle_logs_details = "${consoleName} একটি `${modelName}` জরুরী গাড়ি ক্রয় করেছে। এর মূল্য হলো ${price} এবং প্লেট হলো `${plate}`।",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "গেরেজ ডিবাগ চালু করা হয়েছে।",
		toggle_garage_debug_toggled_off = "গেরেজ ডিবাগ বন্ধ করা হয়েছে।"
	},

	handlings = {
		set_handling_override_not_super_admin = "খেলাধূলার ওভাররাইড সেট করার চেষ্টা করে খেলোয়াড় যখন সঠিক অনুমতি নেই।",
		remove_handling_override_not_super_admin = "খেলাধূলার ওভাররাইড সরানোর চেষ্টা করে খেলোয়াড় যখন সঠিক অনুমতি নেই।"
	},

	keys = {
		no_nearby_player = "কোন নিকটবর্তী খেলোয়াড় পাওয়া যায়নি।",
		no_nearby_vehicle = "কোন নিকটবর্তী গাড়ি পাওয়া যায়নি।",
		no_keys_for_vehicle = "আপনার এই গাড়ির বাটন আপনার কাছে নেই।",
		vehicle_locked = "গাড়ি লকডাউন করা হয়েছে",
		vehicle_unlocked = "গাড়ি আনলক করা হয়েছে",
		h_to_hotwire = "[H] হটওয়াইয়ার",
		received_keys = "প্লেট ${plate} সহ যানবাহনের চাবি পাওয়া হল।",
		received_keys_no_plate = "যানবাহনের জন্য চাবি পাওয়া হল।",
		you_are_not_in_a_vehicle = "আপনি কোন যানবাহনে নেই।",
		you_are_in_a_vehicle = "আপনি একটি যানবাহনে বর্তমানে অবস্থিত আছেন।",
		hotwired_vehicle_with_plate_number = "'${plateNumber}' প্লেট নম্বর সহ যানবাহনের হটওয়াইর করা হল।",
		unable_to_hotwire_vehicle = "যানবাহন হটওয়াইর করা সম্ভব হলনা।",
		picked_up_keys = "'${plate}' প্লেট জন্য চাবি উঠিয়ে নেওয়া হল।",
		invalid_server_id = "অবৈধ সার্ভার আইডি।",
		hotwired_vehicle_for_player = "${displayName} কে উন্নয়ন পানি করেছেন যে গাড়ি তারা উদ্ধার করছে।"
	},

	modifications = {
		wheels_reset = "চাকার অবস্থান পুনরাবৃত্তি করা হচ্ছে।",
		wheels_already_reset = "চাকা ইতিমধ্যেই তাদের ডিফল্ট অবস্থানে রয়েছে।",
		wheels_modified = "পদবি পরিবর্তিত হয়েছে।",
		wheels_none_specified = "কোন পদবি নির্দিষ্ট করা হয়নি।",
		wheels_none_valid_specified = "কোন বৈধ পদবি নির্দিষ্ট করা হয়নি।",
		not_in_a_car = "আপনি একটি গাড়িতে নেই।",
		invalid_value = "অবৈধ মান।"
	},

	plates = {
		plate_number_is_available = "প্লেট নং `${plateNumber}` উপলব্ধ।",
		plate_number_is_not_available = "প্লেট নং `${plateNumber}` উপলব্ধ নয়।",
		missing_valid_plate_number = "'প্লেট নং' প্যারামিটার বিপত্তি সম্মত নং প্রয়োজন।",
		missing_valid_vehicle_id = "'গাড়ির আইডি' প্যারামিটার বিপত্তি সম্মত নং প্রয়োজন।",
		database_error = "একটি ব্যাক-এন্ড ডাটাবেস ত্রুটি ঘটেছে।",
		no_custom_plate_package = "আপনার কোনও কাস্টম প্লেট প্যাকেজ নেই। আমাদের ওয়েবস্টোর দেখুন আরও তথ্যের জন্য!",
		api_error = "আমাদের ব্যাক-এন্ড API একটি ত্রুটি ফেরত দিয়েছে।",
		api_not_available = "আমাদের ব্যাক-এন্ড API উপলব্ধ নয়।",
		vehicle_does_not_belong_to_player = "যানবাহন আইডি `${vehicleId}` আপনার নয়।",
		vehicle_id_does_not_exist = "যানবাহন আইডি `${vehicleId}` উপলব্ধ নয়।",
		you_have_no_character_loaded = "আপনার কোনও ক্যারেক্টার লোড করা নেই।",
		vehicle_plate_changed = "গাড়ির ID `${vehicleId}` এর প্লেট নম্বর `${plateNumber}` এ পরিবর্তিত হয়েছে।",

		you_are_not_in_a_vehicle = "আপনি কোন গাড়িতে নেই।",
		fake_plate_active = "আপনার গাড়ির জন্য একটি মিথ্যা প্লেট সফলভাবে তৈরি করা হয়েছে।",
		fake_plate_inactive = "গাড়ির প্লেট আবার মূল অবস্থায় ফিরে যেতে হয়েছে।",

		fake_plate_missing_permissions = "খেলোয়াড় বিনা যথার্থভাবে অনুমতিগুলি না পেয়ে কমান্ড দ্বারা মিথ্যা প্লেট নির্মাণ করার চেষ্টা করেছে।"
	},

	runways = {
		you_are_not_in_a_plane = "আপনি কোন প্লেনে নেই।",
		ifr_disabled = "IFR নিষ্ক্রিয় করা হয়েছে।",
		ifr_enabled = "IFR সক্ষম হয়েছে।"
	},

	sirens = {
		sirens_muted_on = "সমস্ত সাইরেন এখন সম্পূর্ণ বৃত্তিমুখী।",
		sirens_muted_off = "সমস্ত সাইরেন এখন পুনরায় সক্ষম।"
	},

	spawner = {
		press_to_access_spawner = "গাড়ি স্প্যানার এক্সেস করতে ~INPUT_CONTEXT~ চাপুন।",

		parked_vehicle = "গাড়ি সফলভাবে পার্ক হয়েছে।",

		spawner_burger_shot = "বার্গার শট ডেলিভারি গাড়ি",
		spawner_bean_machine = "বিন মেশিন ডেলিভারি গাড়ি",
		spawner_weazel_news = "ওয়িজেল নিউজ গাড়ি",
		close_menu = "মেনু বন্ধ করুন",
		vehicle_list = "গাড়ির তালিকা",
		park_vehicle = "গাড়ি পার্ক করুন",
		return_button = "ফেরত দিন",

		failed_spawn = "গাড়ী লক্ষ্য করতে ব্যর্থ হয়েছে",
		failed_area = "এলাকা পরিষ্কার নয়",
		failed_job = "আপনার সঠিক কাজ নেই",
		failed_generic = "কিছু ভুল হয়েছে"
	},

	vehicles = {
		flip_flipping = "গাড়ি উল্টানো হচ্ছে",
		flip_unable = "যখন গাড়ির ভিতরে মানুষ আছে তখন আপনি গাড়িটি উল্টাতে পারবেন না।",
		vehicle_busy = "দয়া করে অপেক্ষা করুন, গাড়ি ব্যস্ত!",
		hold_to_eject = "বের করতে ধরুন",
		taking_keys = "চাবি নেওয়া হচ্ছে",
		belt_on = "বেল্ট পরে গিয়েছে",
		belt_off = "বেল্ট খোলা",
		mileage = "মাইলেজ",
		vehicle_mileage_amount = "এই গাড়িতে ${miles} মাইল রয়েছে।",
		not_in_driver_seat = "মাইলেজ চেক করতে আপনাকে ড্রাইভারের সিটে বসতে হবে।",
		not_driving_vehicle = "আপনি গাড়ি চালাচ্ছেন না।",
		vehicle_locked = "গাড়ি লক করা হয়েছে।",
		gear_animation_enabled = "গিয়ার অ্যানিমেশন (এবং শব্দ) এখন সক্ষম হয়েছে।",
		gear_animation_disabled = "গিয়ার অ্যানিমেশন (এবং শব্দ) এখন অক্ষম হয়েছে।",
		manual_gears_enabled = "ম্যানুয়াল গিয়ারিং এখন সক্ষম হয়েছে।",
		manual_gears_disabled = "ম্যানুয়াল গিয়ারিং এখন অক্ষম হয়েছে।",
		manual_gear_set_to = "${gearId} গিয়ার সেট করা হয়েছে।",
		speed_limiter_set_to_metric = "গতিবদ্ধতা সীমাবদ্ধকরণ এখন ${speed} কিলোমিটার/ঘন্টা হিসাবে হবে।",
		speed_limiter_set_to_imperial = "গতিবদ্ধতা সীমাবদ্ধকরণ এখন ${speed} মাইল/ঘন্টা হিসাবে হবে।",
		speed_limiter_reset = "গতিবদ্ধতা সীমাবদ্ধকরণ এখন যে গাড়ীতে টগল করা হবে, তার গতি সীমাবদ্ধ হবে।",
		speed_limiter_on_metric = "গতিবদ্ধতা সীমাবদ্ধকরণ হল ${speed} কিলোমিটার/ঘন্টা সেট।",
		speed_limiter_on_imperial = "গতিবদ্ধতা সীমাবদ্ধকরণ হল ${speed} মাইল/ঘন্টা সেট।",
		speed_limiter_on_plane_metric = "গতিবদ্ধতা সীমাবদ্ধকরণ হল ${speed} কিলোমিটার/ঘন্টা এবং ${altitude} মিটার এলাকাতে।",
		speed_limiter_on_plane_imperial = "${speed} মাইল/ঘন্টা এবং ${altitude} ফুট স্পীড সীমাবদ্ধকরণ করা হয়েছে।",
		speed_limiter_on_helicopter_metric = "${altitude} মিটারে (হভার) স্পীড সীমাবদ্ধকরণ করা হয়েছে।",
		speed_limiter_on_helicopter_imperial = "${altitude} ফুটে (হভার) স্পীড সীমাবদ্ধকরণ করা হয়েছে।",
		autopilot_metric = "~g~অটোপাইলট~s~: ${altitude} মিটার ~c~/~s~ ${speed} কিলোমিটার/ঘন্টা",
		autopilot_imperial = "~g~অটোপাইলট~s~: ${altitude} ফুট ~c~/~s~ ${speed} নট্‌স",
		you_are_cuffed = "আপনি বেঁধে রয়েছেন।",
		belt_is_on_and_vehicle_is_locked = "আপনার বেল্ট লক করা হয়েছে এবং গাড়ীটি লক করা হয়েছে।",
		belt_is_on = "আপনার বেল্ট পরিবর্তন করা হয়েছে।",
		vehicle_is_locked = "গাড়ি তলা ছাড়া আছে।",

		nearest_player_not_vehicle = "সর্বনিকটতম খেলোয়াড় গাড়ির মধ্যে নেই।",
		no_dead_player_nearby = "আপনার কাছে কোন মৃত খেলোয়াড় যাত্রীবিহীন নেই।",
		dragging_out_player = "গাড়ি থেকে খেলোয়াড়কে তুলে ধরা হচ্ছে।",
		vehicle_too_fast = "গাড়ি খুব দ্রুত চলছে।",

		modifying_brakes = "ব্রেকস সম্পাদনা করা হচ্ছে।",
		toggle_brakes_on = "ব্রেক অফ করা হয়েছে।",
		toggle_brakes_off = "ব্রেক চালু করা হয়েছে।",
		failed_modify_brakes = "ব্রেকস সম্পাদনা করতে ব্যর্থ হয়েছে।",

		toggle_disabled_brakes_no_permissions = "খেলোয়াড় অনুমতি ছাড়াই কমান্ডের মাধ্যমে অক্ষম ব্রেক টগল করার চেষ্টা করেছে।",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "খেলোয়াড় সুপার অ্যাডমিন নয় কিন্তু সক্ষম অনুমতিসম্পন্ন একটি গ্যারেজে যার সাথে গাড়ি যুক্ত করার চেষ্টা করেছে।",
		add_vehicle_added_vehicle_for_everyone = "প্রতিটি জনকে মডেল নাম `${modelName}` সহ গাড়ি যুক্ত করা হয়েছে।",
		add_vehicle_added_vehicle_for_player = "${consoleName} এর জন্য মডেল নাম `${modelName}` সহ গাড়ি যুক্ত করা হয়েছে।",
		add_vehicle_added_vehicle = "মডেল নাম `${modelName}` সহ গাড়ি যুক্ত করা হয়েছে।",
		add_vehicle_character_not_loaded = "লক্ষ্যমূলক ব্যবহারকারীর কোনও ব্যক্তিত্ব লোড করা হয়নি।",
		add_vehicle_target_user_not_found = "লক্ষ্যমূলক ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		add_vehicle_invalid_input = "অবৈধ ইনপুট।",
		add_vehicle_no_permissions = "কোন অনুমতি নেই।",
		add_vehicle_user_not_found = "ব্যবহারকারী খুঁজে পাওয়া যায়নি।",
		add_vehicle_invalid_player = "সার্ভার আইডি `${serverId}` সহ কোনও প্লেয়ার নেই।",
		add_vehicle_invalid_model_name = "মডেল নাম `${modelName}` একটি বৈধ মডেল নয়।",
		add_vehicle_no_model_name = "কোনও মডেল নাম যোগ করা হয়নি।",

		added_vehicle_for_everyone_logs_title = "সবার জন্য গাড়ি যোগ করা হয়েছে",
		added_vehicle_for_everyone_logs_details = "${consoleName} মডেল নাম `${modelName}` সহ সবার গ্যারেজে একটি গাড়ি যোগ করেছেন।",
		added_vehicle_for_player_logs_title = "খেলোয়াড়ের জন্য গাড়ি যোগ করা হয়েছে",
		added_vehicle_for_player_logs_details = "${consoleName} মডেল নাম `${modelName}` সহ গারেজে ${targetConsoleName} এর জন্য একটি গাড়ি যোগ করেছেন।",
		added_vehicle_logs_title = "গাড়ি সংযোজন করা হয়েছে",
		added_vehicle_logs_details = "${consoleName} মডেল নাম `${modelName}` সহ নিজের গ্যারেজে একটি গাড়ি যোগ করেছেন।",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "প্রয়োগকারী যার অনুমতি নেই তার বিনা গাড়ি উপর গাড়ি হতে হবে যা সমর্থন করেন।",
		toggled_vehicle_weapons_on = "গাড়ির অস্ত্র চালু করা হলো।",
		toggled_vehicle_weapons_off = "গাড়ির অস্ত্র বন্ধ করা হলো।",
		toggled_vehicle_weapons_vehicle_is_not_networked = "আপনি উপর থাকা গাড়ি নেটওয়ার্ক করা নেই।",
		toggled_vehicle_weapons_not_in_a_vehicle = "আপনি কোনও গাড়িতে নেই।",
		toggled_vehicle_weapons_target_user_not_found = "টার্গেট ইউজার পাওয়া যায়নি।",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "টার্গেট প্লেয়ার কোনও গাড়িতে নেই।",
		toggled_vehicle_weapons_for_player_on = "${consoleName}-কে গাড়ির সমস্ত অস্ত্র চালু করেছেন।",
		toggled_vehicle_weapons_for_player_off = "${consoleName}-কে গাড়ির সমস্ত অস্ত্র বন্ধ করেছেন।",
		toggled_vehicle_weapons_for_everyone = "সকলের জন্য গাড়ির সমস্ত অস্ত্র টগল হয়েছে।",

		toggled_vehicle_weapons_on_logs_title = "গাড়ির সমস্ত অস্ত্র টগল হয়েছে",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} একটি গাড়ির জন্য অস্ত্র টগল করেছেন।",
		toggled_vehicle_weapons_off_logs_title = "গাড়ির সমস্ত অস্ত্র টগল বন্ধ",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} গাড়ির অস্ত্র বন্ধ করেছেন।",
		toggled_vehicle_weapons_on_for_player_logs_title = "প্লেয়ারকে গাড়ির অস্ত্র চালু করা হয়েছে",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} ${targetConsoleName} এর গাড়ির অস্ত্র চালু করেছেন।",
		toggled_vehicle_weapons_off_for_player_logs_title = "প্লেয়ারকে গাড়ির অস্ত্র বন্ধ করা হয়েছে",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} ${targetConsoleName} এর গাড়ির অস্ত্র বন্ধ করেছেন।",
		toggled_vehicle_weapons_for_everyone_logs_title = "সকলের জন্য গাড়ির সমস্ত মুহূর্তের অস্ত্র টগল করা হয়েছে",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} সকলের গাড়ির জন্য অস্ত্র টগল করেছেন।",

		breaking_window = "উইন্ডো ভেঙ্গে দিচ্ছি",
		not_near_window = "আপনি উইন্ডোর কাছে নেই",
		not_near_vehicle = "কোন গাড়ি নেই",

		wheelie_no_vehicle = "কোন গাড়ি নেই",
		wheelie_engine_off = "ইঞ্জিন বন্ধ",
		wheelie_idling = "আইডলিং",
		wheelie_ready = "প্রস্তুত",
		wheelie_boosting = "বুস্টিং",

		invalid_power_level = "অবৈধ শক্তি স্তর (1-5)।"
	},

	vin_numbers = {
		cad_title = "[সিএডি]",

		checking_vin = "ভিআইএন যাচাই করা হচ্ছে",
		not_driver = "আপনি বর্তমানে কোনও গাড়ি চালনা করছেন না।",
		failed_vin_get = "ভিআইএন নেওয়া ব্যর্থ হয়েছে।",
		vin_checked = "এই গাড়ির ভিআইএন নম্বর `${vin}`।",
		vin_scratched = "ভিআইএন নম্বরটি ফালে চট্টা খেয়েছে।",

		looking_up_vin = "ভিআইএন খুঁজছি",
		invalid_vin = "অবৈধ বা অনুপস্থিত ভিআইএন নম্বর।",
		failed_vin_lookup = "ভিআইএন নম্বর খুঁজে পাওয়া ব্যর্থ হয়েছে।",
		vin_lookup_details = "ভিআইএন `${vin}` রেজিস্টার্ড করা হয় গাড়ির প্লেট `${plate}` জন্য যার মালিক `${fullName}`।",
		vin_lookup_unregistered = "ভিআইএন `${vin}` কোনও গাড়ির নামে নিবন্ধিত নয়।"
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] স্ল্যাশ করতে ধরুন",
		hold_to_slash = "স্ল্যাশ করতে ধরুন",
		slashing_tire = "টায়ার স্ল্যাশ করা হচ্ছে"
	},

	-- weapons/*
	ammo = {
		unboxing_ammo = "অ্যামো উনবক্সিং করা হচ্ছে",
		failed_unbox = "অ্যামো উনবক্সিং করতে ব্যর্থ হয়েছে।",
		failed_unbox_full = "আপনি আরও এই অ্যামো বহন করতে পারবেন না।",
		unbox_success = "${amount} টি ${ammoType} সফলভাবে উনবক্সিং করা হয়েছে।",
		unbox_success_box = "একটি অ্যামো বক্স সফলভাবে উনবক্সিং করা হয়েছে।",

		type_pistol = "পিস্টল অ্যামো",
		type_smg = "সাব মেশিন গানের অ্যামো",
		type_rifle = "রাইফেল বোমা",
		type_sniper = "স্নাইপার বোমা",
		type_shotgun = "১২ গেজ বোমা",
		type_stungun = "টেসার কার্তুজ",

		fill_ammo_success = "বোমা পূর্ণ করতে সফল হয়েছে।",
		fill_ammo_failed = "বোমা পূর্ণ করতে ব্যর্থ হয়েছে।"
	},

	weapons = {
		pick_up_fire_extinguisher = "ফায়ার এক্সটিংয়ুশার নিতে ~INPUT_CONTEXT~ চাপুন।",
		press_to_drop_fire_extinguisher = "ফায়ার এক্সটিংয়ুশার ছিড়িয়ে দেওয়ার জন্য ~INPUT_FRONTEND_RRIGHT~ চাপুন।",
		illegal_fire_extinguisher_model = "একটি ফায়ার এক্সটিংয়ুশার ডিলিট করার চেষ্টা করা হয়েছে যার মডেল ফায়ার এক্সটিংয়ুশার নয়।",

		airsoft_mode_on = "এয়ারসফট মোড চালু করা হলো।",
		airsoft_mode_off = "এয়ারসফট মোড বন্ধ করা হলো।",
		airsoft_mode_failed = "এয়ারসফট মোড টগল করা ব্যর্থ হয়েছে।",

		no_weapon_equipped = "কোন সশস্ত্র লক্ষ্য করা হয়নি।",
		no_ammo = "এই সশস্ত্রের জন্য কোন গুলি নেই।",
		infinite_ammo = "আপনি এই সশস্ত্রের জন্য অসীম গুলি রেখেছেন।",
		ammo_count = "আপনার পাসে ${total} গুলি আছে, যা ${clips}টি পূর্ণ ক্লিপে রয়েছে।",
		ammo_count_loose = "আপনার পাসে ${total} গুলি আছে, যা ${clips}টি পূর্ণ ক্লিপ এবং ${loose} গুলি ধারণ করা ক্লিপে রয়েছে।",

		firing_mode_0 = "ফায়ারিং মোড ডিফল্টে সেট করা হয়েছে।",
		firing_mode_1 = "সেমি-অটোমেটিক ফায়ারিং মোড সেট করা হয়েছে।",
		firing_mode_2 = "অসুরক্ষিত হাতকলম চালু করা হয়েছে।",

		safety_is_on = "হাতকলম সুরক্ষণাবেক্ষণ করা হচ্ছে।",

		firing_mode_set_1 = "সেমি-অটোমেটিক ফায়ারিং মোড সেট করা হয়েছে।",
		firing_mode_set_2 = "হাতকলম সুরক্ষার মোড চালু করা হয়েছে।",

		folded_stock = "ফোল্ডেড স্টক",
		unfolded_stock = "আনফোল্ডেড স্টক",
		failed_to_toggle_stock = "স্টক টগল করা যায়নি।",
		weapon_has_no_stock = "এই হাতকলমে কোন স্টক নেই।"
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] চেক ইন",
		check_in_timer = "[${remaining}s] চেক ইন",
		check_in_escorted = "আপনি এসকর্ট করা হচ্ছে",
		checking_in = "চেক ইন হচ্ছে",
		doctor_notified = "একজন ডাক্তার স্তব্ধভাবে নোটিশ পেয়েছে, দয়া করে অপেক্ষা করুন",
		leave_bed = "বিছানা ছাড়তে ~INPUT_CONTEXT~ চাপুন",
		you_have_been_charged = "আপনার চিকিৎসা খরচ $${cost} আছে",
		beds_occupied = "সকল বিছানা অধ ocupied",
		patient_checked_in = "রোগী বিছানা ${bed} তে চেক ইন হয়েছে",
		stop_bleeding = "[E] রক্তস্রাব বন্ধ করুন",
		stopping_bleeding = "রক্তস্রাব বন্ধ হচ্ছে",
		bleeding_stopped = "রক্তস্রাব বন্ধ হয়েছে",
		overdose_effects = "আপনি অধিভুক্ত মাদক এর প্রভাব বোধ করছেন।",
		you_have_parasite = "আপনার জীবাণু রয়েছে",
		you_have_multiple_parasite = "আপনার একাধিক প্যারাসাইট রয়েছে",
		bandage = "[E] ব্যান্ডেজ করুন",
		bandaging = "ব্যান্ডেজ করা হচ্ছে",
		wounds_bandaged = "ঘাই ব্যান্ডেজ করা হয়েছে",
		treat_injury = "[E] ${label} চেকআপ করুন",
		treating_injury = "${label} চিকিৎসা হচ্ছে",
		injury = "${label} চিকিৎসা",
		cpr_done = "সিপিআর সফল হয়েছে",
		cpr_fail = "ব্যক্তিটি খুঁজে পাব না",
		went_on_duty = "ডিউটি শুরু হয়েছে",
		went_off_duty = "ডিউটি শেষ হয়েছে",
		on_duty = "দায়িত্বপ্রাপ্ত",
		off_duty = "দায়িত্ব শেষ",
		press_to_sign = "সাইন করতে  ~g~E ~w~চাপুন",
		open_vehicle_spawner = "যানবাহন স্পয়ানার খোলার জন্য  ~g~E ~w~চাপুন",
		open_heli_spawner = "হেলিকপ্টার মেনু খোলার জন্য ~g~E ~w~চাপুন",
		open_boat_spawner = "নৌকা মেনু খোলার জন্য ~g~E ~w~চাপুন",
		on = "চালু",
		off = "বন্ধ",
		sign_as_doctor = "ডাক্তার হিসেবে ${status} হতে ~g~E ~w~চাপুন",
		close_menu = "মেনু বন্ধ করুন",
		vehicle_list = "গাড়ি তালিকা",
		park_vehicle = "গাড়ি পার্ক করুন",
		clear_area = "গাড়ি উত্তোলন করার আগে পার্কিং এলাকাটি স্বচ্ছ করে নিন",
		unable_to_extra = "এই গাড়িতে এক্সট্রা বৈশিষ্ট্য পরিবর্তন করা যাবে না!",
		warning = "সতর্কতা",
		invalid_input = "অবৈধ ইনপুট।",
		unable_to_extra_on_vehicle = "এই গাড়িতে এক্সট্রা বৈশিষ্ট্য পরিবর্তন করা যাবে না!",
		heli_here_already = "হেলিপ্যাডে ইতিমধ্যে একটি হেলিকপ্টার রয়েছে",
		ems_air_hq = "এমএস এয়ার একসটিংশন সেবা সংগ্রহস্থল",
		ems_boat_hq = "এমএস নৌকা সেবা সংগ্রহস্থল",
		ems_garage = "এমএস গেরেজ",
		e_to_get_treated = "[E] চিকিৎসা করান - ৳1250",
		get_treated = "চিকিৎসা করতে - ৳1250",
		you_are_being_treated = "আপনার চিকিৎসা হচ্ছে",
		being_treated = "চিকিৎসা হচ্ছে",
		minute = "মিনিট",
		minutes = "মিনিট",
		second = "সেকেন্ড",
		seconds = "সেকেন্ড",
		kurwa_and = "এবং",
		wait_for_paramedic = "দয়া করে প্যারামেডিকের আগমনের জন্য অপেক্ষা করুন অথবা ${time} সেকেন্ড অপেক্ষা করুন যেন নতুনভাবে জন্মান",
		cannot_respawn_currently = "আপনি বর্তমানে পুনর্জন্ম হতে পারবেন না",
		hold_to_respawn = "পুনর্জন্ম হতে ~b~ENTER ~w~চাপুন অথবা প্যারামেডিকের আগমনের জন্য অপেক্ষা করুন",
		hold_to_respawn_secondslol = "~b~ENTER (${seconds}) ~w~চাপুন যাতে পুনর্জন্ম নিশ্চিত হয় অথবা প্যারামেডিকের আগমনের জন্য অপেক্ষা করুন",
		passed_out = "আপনি পতিত হয়েছেন",
		light = "হালকা",
		moderate = "মাঝারি",
		heavy = "ভারী",
		severe = "উন্মত্ত",
		arms_injured = "হাতের ঘা অপুষ্ট হলে, গোলা করা সম্ভব নয়",
		injuryb = "আঘাত",
		bleeding_multiple_injuries = "বহুগুণ আঘাতে রক্তস্রাব হচ্ছে",
		feels_irritated = "ঘা খারাপ লাগছে",
		feels_painful = "ঘা বেদনাদায়ক লাগছে",
		feels_extremely_painful = "অত্যন্ত ব্যথার মতো অনুভব হচ্ছে",
		multiple_injuries = "আপনার একাধিক আঘাত হয়েছে",
		bleeding = "রক্তস্রাব",
		bleeding_with_injury = "${label} আঘাতের সাথে রক্তস্রাব হচ্ছে",
		bleeding_reduced = "রক্তস্রাব কমে গেছে",
		bleeding_self_stopped = "রক্তস্রাব নিজেই বন্ধ হয়ে গেছে",
		thanks_for_loot = "আপনি নিরক্ষেতে পড়ে হয়েছিলেন। কিছু আইটেম চুরি হলেও হতে পারে।",
		serial_number = "সিরিয়াল নম্বর: ${serialNumber}<br>এই আযুদটি ${fullName} (#${characterId}) এর নামে নিবন্ধিত।",
		serial_number_unknown = "সিরিয়াল নম্বর: অজানা।",
		badge_owner = "<i>এই ব্যাজ লক্ষ্য করেনি <b>${fullName} (${positionName})</b> এর।</i>",
		badge_owner_unknown = "ব্যাজের মালিক জানা নেই।",
		citizen_card_owner = "<i>এই সিটিজেন কার্ড লক্ষ্য করেনি <b>${fullName} (#${characterId})</b> এর।</i>",
		citizen_card_has_portrait = "<i>এটি একটি ছবি রয়েছে।</i>",
		picture_pending = "<i>ছবি এখনও প্রক্রিয়াধীন...</i>",
		picture_selfie_owner = "<i>এটি ছবি হল <b>${fullName}</b> এর।</i>",
		bought_by = "কেনা হয়েছে ${buyerName} (${buyerCid}) একজন দ্বারা।",
		bought_by_unknown = "এই আইটেমের ক্রয়কারী জানা নেই।",
		cigarette_pack = "${cigarettes} সিগারেট বাকি আছে।",
		evidence_incomplete = "এই প্রমাণের ব্যাগ অসম্পূর্ণ।",
		evidence_type = "প্রমাণের ধরণ",
		processed_picked_up = "<i>${pickupName} দ্বারা উঠে নেওয়া এবং ${processName} দ্বারা প্রসেস করা।</i>",
		picked_up = "<i>${pickupName} দ্বারা উঠে নেওয়া হয়েছে।</i>",
		processed_by = "<i>${processName} দ্বারা প্রসেস করা হয়েছে।</i>",
		evidence_casings = "কেসিংস সিরিয়াল নম্বর ${serialNumber} এসেছে যা ${buyerName} (${buyerCid}) দ্বারা ব্যবহৃত হয়েছিল ব্যবহারের সময়।",
		evidence_bullets = "বুলেট ইম্প্যাক্টগুলি প্রস্তুত হয়েছে ${bulletLabel} দ্বারা।",
		evidence_clothing = "একটি পোশাক (${clothingType}).",
		evidence_car_dna = "নম্বরপত্র ${plateNumber} সহ গাড়ি থেকে ডিএনএ উত্তোলিত হয়েছে এবং ${DNAOwnerName} (${DNAOwner})-এর পক্ষে ফেরত দেওয়া হয়েছে।",
		evidence_dna = "${fullName} থেকে সংগৃহিত ডিএনএ #${characterId}।",
		evidence_fingerprint = "${fullName} #${characterId} এর আঙ্গুলির ছাপ।",
		evidence_not_processed = "এই প্রমাণের ব্যাগটি এখনও প্রক্রিয়াধীন।",
		additional_information = "অতিরিক্ত তথ্যঃ",
		picked_up_at_location = "লোকেশনে উত্তোলিত হয়েছেঃ",
		clothing_dna_trace = "ডিএনএ ট্রেস ফিরে আসে ${fullName} (#${cid})",
		clothing_dna_trace_unprocessed = "উপস্থিত পোশাকে অপ্রক্রিয় ডিএনএ স্পর্শ",
		timestamp_of_pickup = "পিকআপের সময়সূচী:",
		weapon_name = "আয়ুদের নাম:",
		casings_picked_up = "উত্তোলিত কেসিং এর সংখ্যা:",
		bullet_label = "বুলেট লেবেল:",
		impacts_found = "এলাকায় পাওয়া আঘাত সংখ্যা:",
		right_foot = "ডান পায়",
		left_foot = "বাম পায়",
		right_hand = "ডান হাত",
		left_hand = "বাম হাত",
		right_knee = "ডান হাঁটু",
		left_knee = "বাম হাঁটু",
		head = "মাথা",
		neck = "ঘাড়",
		right_arm = "ডান বাহু",
		left_arm = "বাম বাহু",
		chest = "চেস্ট",
		pelvis = "পেলভিস",
		right_shoulder = "ডান কন্ঠস্থল",
		left_shoulder = "বাঁ কন্ঠস্থল",
		right_wrist = "ডান কবজার জন্য কলাস্থল",
		left_wrist = "বাঁ কবজার জন্য কলাস্থল",
		tounge = "জিহ্বা",
		upper_lip = "ঊর্ধ্বতন ঠোঁট",
		lower_lip = "নিচের ঠোঁট",
		right_thigh = "ডান ফেমুর",
		left_thigh = "বাঁ ফেমুর",
		lower_spine = "নিম্নবর্তী রবি",
		center_spine = "মধ্যবর্তী রবি",
		upper_spine = "ঊর্ধ্ববর্তী রবি",
		root_spine = "মূল রবি",
		right_clavicle = "ডান ভুজস্থল",
		left_clavicle = "বাঁ ভুজস্থল",
		note_signed_by = "<b>স্বাক্ষর করেছেন:</b> <i>${name} (#${cid})</i>",
		map_location = "<b>চিহ্নিত স্থান:</b> <i>${x}, ${y}</i>",
		smart_watch_hover = "<i>এই স্মার্ট ঘড়ি <b>${name} (#${cid})</b> এর। এটি <b>${stepsWalked}</b> ধাপ হিসাবে ট্র্যাক করেছে।</i>",
		item_contains = "<b>ধারণ করে:</b> <i>${contents}</i>।",
		item_engraving = "<b>এলাকায়ন:</b> <i>${message}</i>।",
		evidence_incomplete = "এই প্রমাণের ব্যাগ অসম্পূর্ণ।"
	}
}
