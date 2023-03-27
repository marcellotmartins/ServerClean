local cfg = {}

cfg.anim = {
	["radio2"] = {
        perm = "policia.permissao",
        prop = "prop_boombox_01",
        flag = 50,
        hand = 57005,
        pos = {0.30,0,0,0,260.0,60.0}
    },

    ["bolsa"] = {
        perm = "",
        prop = "prop_boombox_01",
        flag = 50,
        hand = 57005,
        pos = {0.16,0,0,0,260.0,60.0}
    },

    ["bolsa2"] = {
        perm = "",
        prop = "prop_ld_case_01_s",
        flag = 50,
        hand = 57005,
        pos = {0.16,0,0,0,260.0,60.0}
    },

    ["bolsa3"] = {
        perm = "",
        prop = "prop_security_case_01",
        flag = 50,
        hand = 57005,
        pos = {0.16,0,-0.01,0,260.0,60.0}
    },

	["bolsa4"] = {
        prop = "w_am_case", 
        flag = 50, 
        hand = 57005 , 
        pos = {0.08,0,0,0,260.0,60.0}
    },

	["caixa2"] = {
        prop = "prop_tool_box_04", 
        flag = 50, 
        hand = 57005, 
        pos = {0.45,0,0.05,0,260.0,60.0}
    },

	["lixo"] = {
		prop = "prop_cs_rub_binbag_01", 
		flag = 50, 
		hand = 57005, 
		pos = {0.11, 0, 0.0, 0, 260.0, 60.0}
	},

	["mic"] = { 
		prop = "prop_microphone_02", 
		flag = 50, 
		hand = 60309, 
		pos = {0.08, 0.03, 0.0, 240.0, 0.0, 0.0}
	},

	["mic2"] = { 
		prop = "p_ing_microphonel_01", 
		flag = 50, 
		hand = 60309, 
		pos = {0.08, 0.03, 0.0, 240.0, 0.0, 0.0}
	},

	["mic3"] = { 
		dict = "missfra1", 
		anim = "mcs2_crew_idle_m_boom", 
		prop = "prop_v_bmike_01", 
		flag = 50, 
		hand = 28422
	},

	["buque"] = { 
		prop = "prop_snow_flower_02", 
		flag = 50, 
		hand = 60309, 
		pos = {0.0,0.0,0.0,300.0,0.0,0.0},
	},
	
	["rosa"] = {
		prop = "prop_single_rose", 
		flag = 50, 
		hand = 60309, 
		pos = {0.055, 0.05, 0.0, 240.0, 0.0 , 0.0}
	},

	["prebeber"] = { 
		dict = "amb@code_human_wander_drinking@beer@male@base", 
		anim = "static", 
		prop = "prop_fib_coffee", 
		flag = 49, 
		hand = 28422
	},

	["prebeber2"] = { 
		dict = "amb@code_human_wander_drinking@beer@male@base",
		anim = "static", 
		prop = "prop_ld_flow_bottle", 
		flag = 49, 
		hand = 28422
	},

	["prebeber3"] = { 
		dict = "amb@code_human_wander_drinking@beer@male@base", 
		anim = "static", 
		prop = "prop_cs_bs_cup", 
		flag = 49, 
		hand = 28422 
	},

	["verificar"] ={ 
		dict = "amb@medic@standing@tendtodead@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["mexer"] = { 
		dict = "amb@prop_human_parking_meter@female@idle_a", 
		anim = "idle_a_female", 
		andar = true, 
		loop = true 
	},

	["cuidar"] = { 
		dict = "mini@cpr@char_a@cpr_str", 
		anim = "cpr_pumpchest", 
		andar = true, 
		loop = true 
	},

	["cuidar2"] = { 
		dict = "mini@cpr@char_a@cpr_str", 
		anim = "cpr_kol", 
		andar = true, 
		loop = true 
	},

	["cuidar3"] = { 
		dict = "mini@cpr@char_a@cpr_str", 
		anim = "cpr_kol_idle", 
		andar = true, 
		loop = true 
	},

	["cansado"] = { 
		dict = "rcmbarry", 
		anim = "idle_d", 
		andar = false, 
		loop = true 
	},

	["alongar2"] = { 
		dict = "mini@triathlon", 
		anim = "idle_e", 
		andar = false, 
		loop = true 
	},

	["meleca"] = { 
		dict = "anim@mp_player_intuppernose_pick", 
		anim = "idle_a", 
		andar = true, 
		loop = true 
	},

	["bora"] = { 
		dict = "missfam4", 
		anim = "say_hurry_up_a_trevor", 
		andar = true, 
		loop = false 
	},

	["limpar"] = {
		dict = "missfbi3_camcrew", 
		anim = "final_loop_guy", 
		andar = true, 
		loop = false 
	},

	["galinha"] = { 
		dict = "random@peyote@chicken", 
		anim = "wakeup", 
		andar = true, 
		loop = true 
	},

	["amem"] = { 
		dict = "rcmepsilonism8", 
		anim = "worship_base", 
		andar = true, 
		loop = true 
	},

	["nervoso"] = { 
		dict = "rcmme_tracey1", 
		anim = "nervous_loop", 
		andar = true, 
		loop = true 
	},

	["morrer"] = { 
		dict = "misslamar1dead_body", 
		anim = "dead_idle", 
		andar = false, 
		loop = true 
	},

	["ajoelhar"] = { 
		dict = "amb@medic@standing@kneel@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["sinalizar"] = { 
		dict = "amb@world_human_car_park_attendant@male@base", 
		anim = "base", 
		prop = "prop_parking_wand_01", 
		flag = 49, 
		hand = 28422 
	},

	["placa"] = { 
		dict = "amb@world_human_bum_freeway@male@base", 
		anim = "base", 
		prop = "prop_beggers_sign_01", 
		flag = 49, 
		hand = 28422 
	},

	["placa2"] = { 
		dict = "amb@world_human_bum_freeway@male@base", 
		anim = "base", 
		prop = "prop_beggers_sign_03", 
		flag = 49, 
		hand = 28422 
	},

	["placa3"] = { 
		dict = "amb@world_human_bum_freeway@male@base", 
		anim = "base", 
		prop = "prop_beggers_sign_04", 
		flag = 49, 
		hand = 28422 
	},

	["abanar"] = { 
		dict = "timetable@amanda@facemask@base", 
		anim = "base", 
		andar = true, 
		loop = true 
	},

	["cocada"] = { 
		dict = "mp_player_int_upperarse_pick", 
		anim = "mp_player_int_arse_pick", 
		andar = true, 
		loop = true 
	},

	["cocada2"] = { 
		dict = "mp_player_int_uppergrab_crotch", 
		anim = "mp_player_int_grab_crotch", 
		andar = true, 
		loop = true 
	},

	["lero"] = { 
		dict = "anim@mp_player_intselfiejazz_hands", 
		anim = "idle_a", 
		andar = true, 
		loop = false 
	},

	["dj2"] = { 
		dict = "anim@mp_player_intupperair_synth", 
		anim = "idle_a_fp", 
		andar = false, 
		loop = true 
	},

	["beijo"] = { 
		dict = "anim@mp_player_intselfieblow_kiss", 
		anim = "exit", 
		andar = true, 
		loop = false 
	},

	["malicia"] = { 
		dict = "anim@mp_player_intupperdock", 
		anim = "idle_a", 
		andar = true, 
		loop = false 
	},

	["ligar"] = { 
		dict = "cellphone@", 
		anim = "cellphone_call_in", 
		prop = "prop_amb_phone", 
		flag = 50, 
		hand = 28422 
	},

	["radio"] = { 
		dict = "cellphone@", 
		anim = "cellphone_call_in", 
		prop = "prop_cs_hand_radio", 
		flag = 50, 
		hand = 28422 
	},

	["cafe"] = { 
		dict = "amb@world_human_aa_coffee@base", 
		anim = "base", 
		prop = "prop_fib_coffee", 
		flag = 50, 
		hand = 28422 
	},

	["cafe2"] = { 
		dict = "amb@world_human_aa_coffee@idle_a", 
		anim = "idle_a", 
		prop = "prop_fib_coffee", 
		flag = 49, 
		hand = 28422 
	},

	["caixa"] = { 
		dict = "anim@heists@box_carry@", 
		anim = "idle", 
		prop = "hei_prop_heist_box", 
		flag = 50, 
		hand = 28422 
	},

	["chuva"] = { 
		dict = "amb@world_human_drinking@coffee@male@base", 
		anim = "base", 
		prop = "p_amb_brolly_01", 
		flag = 50, 
		hand = 28422 
	},

	["chuva2"] = {
		dict = "amb@world_human_drinking@coffee@male@base", 
		anim = "base", 
		prop = "p_amb_brolly_01_s", 
		flag = 50, 
		hand = 28422 
	},

	["comer"] = { 
		dict = "amb@code_human_wander_eating_donut@male@idle_a", 
		anim = "idle_c", 
		prop = "prop_cs_burger_01", 
		flag = 49, 
		hand = 28422
	},

	["comer2"] = { 
		dict = "amb@code_human_wander_eating_donut@male@idle_a", 
		anim = "idle_c", 
		prop = "prop_cs_hotdog_01", 
		flag = 49, 
		hand = 28422
	},

	["comer3"] = { 
		dict = "amb@code_human_wander_eating_donut@male@idle_a", 
		anim = "idle_c", 
		prop = "prop_amb_donut", 
		flag = 49,
		hand = 28422 
	},

	["beber"] = { 
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "p_cs_bottle_01", 
		flag = 49, 
		hand = 28422 
	},

	["beber2"] = { 
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "prop_energy_drink", 
		flag = 49, 
		hand = 28422 
	},

	["beber3"] = {
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "prop_amb_beer_bottle", 
		flag = 49, 
		hand = 28422 
	},

	["beber4"] = { 
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "p_whiskey_notop", 
		flag = 49, 
		hand = 28422 
	},

	["beber5"] = { 
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "prop_beer_logopen", 
		flag = 49, 
		hand = 28422 
	},

	["beber6"] = { 
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "prop_beer_blr", 
		flag = 49, 
		hand = 28422 
	},

	["beber7"] = {
		dict = "amb@world_human_drinking@beer@male@idle_a", 
		anim = "idle_a", 
		prop = "prop_ld_flow_bottle", 
		flag = 49, 
		hand = 28422 
	},

	["digitar"] = { 
		dict = "anim@heists@prison_heistig1_p1_guard_checks_bus", 
		anim = "loop", 
		andar = false, 
		loop = true 
	},

	["continencia"] = { 
		dict = "mp_player_int_uppersalute", 
		anim = "mp_player_int_salute", 
		andar = true, 
		loop = true 
	},

	["atm"] = { 
		dict = "amb@prop_human_atm@male@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = false 
	},

	["no"] = {
		dict = "mp_player_int_upper_nod", 
		anim = "mp_player_int_nod_no", 
		andar = true, 
		loop = true 
	},
	
	["palmas"] = { 
		dict = "anim@mp_player_intcelebrationfemale@slow_clap", 
		anim = "slow_clap", 
		andar = true, 
		loop = false 
	},

	["palmas2"] = { 
		dict = "amb@world_human_cheering@male_b", 
		anim = "base", 
		andar = true, 
		loop = true 
	},

	["palmas3"] = { 
		dict = "amb@world_human_cheering@male_d", 
		anim = "base", 
		andar = true, 
		loop = true 
	},

	["palmas4"] = { 
		dict = "amb@world_human_cheering@male_e", 
		anim = "base", 
		andar = true, 
		loop = true 
	},

	["palmas5"] = { 
		dict = "anim@arena@celeb@flat@solo@no_props@", 
		anim = "angry_clap_a_player_a", 
		andar = false, 
		loop = true 
	},

	["palmas6"] = { 
		dict = "anim@mp_player_intupperslow_clap", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["postura"] = { 
		dict = "anim@heists@prison_heiststation@cop_reactions", 
		anim = "cop_a_idle", 
		andar = true, 
		loop = true 
	},

	["postura2"] = { 
		dict = "amb@world_human_cop_idles@female@base", 
		anim = "base", 
		andar = true, 
		loop = true 
	},

	["varrer"] = { 
		dict = "amb@world_human_janitor@male@idle_a", 
		anim = "idle_a",
		prop = "prop_tool_broom", 
		flag = 49, 
		hand = 28422 
	},

	["musica"] = { 
		dict = "amb@world_human_musician@guitar@male@base", 
		anim = "base", 
		prop = "prop_el_guitar_01", 
		flag = 49, 
		hand = 60309 
	},

	["musica2"] = { 
		dict = "amb@world_human_musician@guitar@male@base", 
		anim = "base", 
		prop = "prop_el_guitar_02", 
		flag = 49, 
		hand = 60309 
	},

	["musica3"] = { 
		dict = "amb@world_human_musician@guitar@male@base", 
		anim = "base", 
		prop = "prop_el_guitar_03", 
		flag = 49, 
		hand = 60309 
	},

	["musica4"] = { 
		dict = "amb@world_human_musician@guitar@male@base", 
		anim = "base", 
		prop = "prop_acc_guitar_01", 
		flag = 49, 
		hand = 60309
	},

	["camera"] = { 
		dict = "amb@world_human_paparazzi@male@base", 
		anim = "base", 
		prop = "prop_pap_camera_01", 
		flag = 49, 
		hand = 28422
	},

	["camera2"] = { 
		dict = "missfinale_c2mcs_1", 
		anim = "fin_c2_mcs_1_camman", 
		prop = "prop_v_cam_01", 
		flag = 49, 
		hand = 28422
	},

	["prancheta"] = { 
		dict = "amb@world_human_clipboard@male@base", 
		anim = "base", 
		prop = "p_amb_clipboard_01", 
		flag = 50, 
		hand = 60309 
	},

	["mapa"] = { 
		dict = "amb@world_human_clipboard@male@base", 
		anim = "base", 
		prop = "prop_tourist_map_01", 
		flag = 50, 
		hand = 60309 
	},

	["anotar"] = { 
		dict = "amb@medic@standing@timeofdeath@base", 
		anim = "base", 
		prop = "prop_notepad_01", 
		flag = 49, 
		hand = 60309 
	},

	["peace"] = { 
		dict = "mp_player_int_upperpeace_sign", 
		anim = "mp_player_int_peace_sign", 
		andar = true, 
		loop = true 
	},

	["deitar"] = { 
		dict = "amb@world_human_sunbathe@female@back@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["deitar2"] = { 
		dict = "amb@world_human_sunbathe@female@front@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["deitar3"] = { 
		dict = "amb@world_human_sunbathe@male@back@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["deitar4"] = { 
		dict = "amb@world_human_sunbathe@male@front@idle_a", 
		anim = "idle_a", 
		andar = false, 
		loop = true 
	},

	["deitar5"] = { 
		dict = "mini@cpr@char_b@cpr_str", 
		anim = "cpr_kol_idle", 
		andar = false, 
		loop = true 
	},

	["deitar6"] = { 
		dict = "switch@trevor@scares_tramp", 
		anim = "trev_scares_tramp_idle_tramp", 
		andar = false, 
		loop = true 
	},

	["deitar7"] = { 
		dict = "switch@trevor@annoys_sunbathers",
		anim = "trev_annoys_sunbathers_loop_girl",
		andar = false, 
		loop = true 
	},
	
	["deitar8"] = { 
		dict = "switch@trevor@annoys_sunbathers",
		anim = "trev_annoys_sunbathers_loop_guy", 
		andar = false, 
		loop = true 
	},

	["debrucar"] = { 
		dict = "amb@prop_human_bum_shopping_cart@male@base", 
		anim = "base", 
		andar = false, 
		loop = true 
	},

	["dancar"] = { 
		dict = "rcmnigel1bnmt_1b", 
		anim = "dance_loop_tyler", 
		andar = false, 
		loop = true 
	},

	["dancar2"] = { 
		dict = "mp_safehouse", 
		anim = "lap_dance_girl", 
		andar = false, 
		loop = true 
	},

	["dancar3"] = { 
		dict = "misschinese2_crystalmazemcs1_cs", 
		anim = "dance_loop_tao", 
		andar = false, 
		loop = true 
	},

	["dancar4"] = { 
		dict = "mini@strip_club@private_dance@part1", 
		anim = "priv_dance_p1", 
		andar = false, 
		loop = true 
	},

	["dancar5"] = { 
		dict = "mini@strip_club@private_dance@part2", 
		anim = "priv_dance_p2", 
		andar = false, 
		loop = true 
	},

	["dancar6"] = { 
		dict = "mini@strip_club@private_dance@part3", 
		anim = "priv_dance_p3", 
		andar = false, 
		loop = true 
	},

	["dancar7"] = { 
		dict = "special_ped@mountain_dancer@monologue_2@monologue_2a", 
		anim = "mnt_dnc_angel", 
		andar = false, 
		loop = true 
	},

	["dancar8"] = { 
		dict = "special_ped@mountain_dancer@monologue_3@monologue_3a", 
		anim = "mnt_dnc_buttwag", 
		andar = false, 
		loop = true 
	},

	["dancar9"] = { 
		dict = "missfbi3_sniping", 
		anim = "dance_m_default", 
		andar = false, 
		loop = true 
	},

	["dancar10"] =	{ 
		dict = "anim@amb@nightclub@dancers@black_madonna_entourage@", 
		anim = "hi_dance_facedj_09_v2_male^5", 
		andar = false, 
		loop = true 
	},

	["dancar11"] =	{ 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_female^1", 
		andar = false, 
		loop = true 
	},

	["dancar12"] =	{ 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_female^2", 
		andar = false,
		loop = true 
	},

	["dancar13"] =	{ 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_female^3", 
		andar = false, 
		loop = true 
	},

	["dancar14"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_female^4", 
		andar = false, 
		loop = true 
	},

	["dancar15"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_female^5", 
		andar = false, 
		loop = true 
	},

	["dancar16"] =	{ 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_female^6", 
		andar = false, 
		loop = true 
	},

	["dancar17"] = {
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_male^1", 
		andar = false, 
		loop = true 
	},

	["dancar18"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_male^2", 
		andar = false, 
		loop = true 
	},

	["dancar19"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_male^3", 
		andar = false, 
		loop = true 
	},

	["dancar20"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_male^4", 
		andar = false, 
		loop = true 
	},

	["dancar21"] =	{ 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_male^5", 
		andar = false, 
		loop = true 
	},

	["dancar22"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v1_male^6", 
		andar = false, 
		loop = true 
	},

	["dancar23"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_female^1", 
		andar = false, 
		loop = true 
	},

	["dancar24"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_female^2", 
		andar = false, 
		loop = true 
	},

	["dancar25"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_female^3", 
		andar = false, 
		loop = true 
	},

	["dancar26"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_female^4", 
		andar = false, 
		loop = true 
	},

	["dancar27"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_female^5", 
		andar = false, 
		loop = true 
	},

	["dancar28"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_female^6", 
		andar = false, 
		loop = true 
	},

	["dancar29"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_male^1", 
		andar = false, 
		loop = true 
	},

	["dancar30"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_male^2", 
		andar = false, 
		loop = true 
	},

	["dancar31"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_male^3", 
		andar = false, 
		loop = true 
	},


	["dancar32"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_male^4", 
		andar = false, 
		loop = true 
	},

	["dancar33"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_male^5", 
		andar = false, 
		loop = true 
	},

	["dancar34"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_09_v2_male^6", 
		andar = false, 
		loop = true 
	},

	["dancar35"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_female^1", 
		andar = false, 
		loop = true 
	},

	["dancar36"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_female^2", 
		andar = false, 
		loop = true 
	},

	["dancar37"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_female^3", 
		andar = false, 
		loop = true 
	},

	["dancar38"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_female^4", 
		andar = false, 
		loop = true 
	},

	["damcar39"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_female^5", 
		andar = false, 
		loop = true 
	},

	["dancar40"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_female^6", 
		andar = false, 
		loop = true 
	},

	["dancar41"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_male^1", 
		andar = false, 
		loop = true 
	},

	["dancar42"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_male^2", 
		andar = false, 
		loop = true 
	},

	["dancar43"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_male^3", 
		andar = false, 
		loop = true 
	},

	["dancar44"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_male^4", 
		andar = false, 
		loop = true 
	},

	["dancar45"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_male^5", 
		andar = false, 
		loop = true 
	},

	["dancar46"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v1_male^6", 
		andar = false, 
		loop = true 
	},

	["dancar47"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_female^1", 
		andar = false, 
		loop = true 
	},

	["dancar48"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_female^2", 
		andar = false, 
		loop = true 
	},

	["dancar49"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_female^3", 
		andar = false,
		loop = true 
	},

	["dancar50"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_female^4", 
		andar = false, 
		loop = true 
	},

	["dancar51"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_female^5", 
		andar = false, 
		loop = true 
	},

	["dancar52"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_female^6", 
		andar = false, 
		loop = true 
	},

	["dancar53"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_male^1", 
		andar = false, 
		loop = true 
	},

	["dancar54"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_male^2", 
		andar = false, 
		loop = true 
	},

	["dancar55"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_male^3", 
		andar = false, 
		loop = true 
	},

	["dancar56"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_male^4", 
		andar = false, 
		loop = true 
	},

	["dancar57"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_male^5", 
		andar = false, 
		loop = true 
	},

	["dancar58"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_11_v2_male^6", 
		andar = false, 
		loop = true
	},

	["dancar59"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_female^1", 
		andar = false, 
		loop = true 
	},

	["dancar60"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_female^2", 
		andar = false, 
		loop = true 
	},

	["dancar61"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_female^3", 
		andar = false, 
		loop = true 
	},

	["dancar62"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_female^4", 
		andar = false, 
		loop = true 
	},

	["dancar63"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_female^5", 
		andar = false, 
		loop = true 
	},

	["dancar64"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_female^6", 
		andar = false, 
		loop = true 
	},

	["dancar65"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_male^1", 
		andar = false, 
		loop = true 
	},

	["dancar66"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_male^2", 
		andar = false, 
		loop = true 
	},

	["dancar67"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_male^3", 
		andar = false, 
		loop = true 
	},

	["dancar68"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_male^4", 
		andar = false, 
		loop = true 
	},

	["dancar69"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v1_male^5", 
		andar = false, 
		loop = true 
	},

	["dancar70"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar71"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v2_female^1", 
		andar = false, 
		loop = true 
	},

	["dancar72"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v2_female^2", 
		andar = false, 
		loop = true 
	},

	["dancar73"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", 
		anim = "hi_dance_facedj_13_v2_female^3", 
		andar = false, 
		loop = true 
	},

	["dancar74"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar75"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar76"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_female^6" , 
		andar = false , 
		loop = true
	},

	["dancar77"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar78"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar79"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar80"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar81"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar82"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_13_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar83"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar84"] =	{ 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar85"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_female^3" , 
		andar = false , 
		loop = true
	},

	["dancar86"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar87"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar88"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar89"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar90"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar91"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar92"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar93"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar94"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar95"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_female^1" , 
		andar = false , 
		loop = true 
	},
	
	["dancar96"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar97"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar98"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar99"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar100"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar101"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar102"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar103"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar104"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar105"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar106"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_15_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar107"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar108"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar109"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar110"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar111"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar112"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar113"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar114"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar115"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar116"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar117"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar118"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar119"] = {
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar120"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar121"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar112"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar123"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar124"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar125"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar126"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar127"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar128"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar129"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar130"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_17_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar131"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar132"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar133"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar134"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar135"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar136"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar137"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar138"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar139"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar140"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar141"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar142"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar143"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar144"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar145"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar146"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar147"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar148"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar149"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar150"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar151"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar152"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar153"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar154"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_09_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar155"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar156"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar157"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar158"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar159"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar160"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar161"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar162"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar163"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar164"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar165"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar166"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_11_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar167"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar168"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar169"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar170"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar171"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar172"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar173"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar174"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar175"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar176"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar177"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar178"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_13_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar179"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar180"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar181"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar182"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar183"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar184"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar185"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar186"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar187"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar188"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar189"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar190"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar191"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar192"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar193"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar194"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar195"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar196"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar197"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar198"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar199"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar200"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar201"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar202"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_15_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar203"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar204"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar205"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar206"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar207"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar208"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar209"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar210"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar211"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar212"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar213"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar214"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v1_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar215"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar216"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_female^2" , 
		andar = false , 
		loop = true 
	},

	["dancar217"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar218"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_female^4" , 
		andar = false , 
		loop = true 
	},

	["dancar219"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_female^5" , 
		andar = false , 
		loop = true 
	},

	["dancar220"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_female^6" , 
		andar = false , 
		loop = true 
	},

	["dancar221"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_male^1" , 
		andar = false , 
		loop = true 
	},

	["dancar222"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_male^2" , 
		andar = false , 
		loop = true 
	},

	["dancar223"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_male^3" , 
		andar = false , 
		loop = true 
	},

	["dancar224"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_male^4" , 
		andar = false , 
		loop = true 
	},

	["dancar225"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_male^5" , 
		andar = false , 
		loop = true 
	},

	["dancar226"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_groups@hi_intensity" , 
		anim = "hi_dance_crowd_17_v2_male^6" , 
		andar = false , 
		loop = true 
	},

	["dancar227"] = { 
		dict = "anim@mp_player_intcelebrationfemale@the_woogie" , 
		anim = "the_woogie" , 
		andar = false , 
		loop = true 
	},
	
	["dancar228"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , 
		anim = "med_center_up" , 
		andar = false , 
		loop = true 
	},
	
	["dancar229"] = { 
		dict = "anim@amb@casino@mini@dance@dance_solo@female@var_b@" , 
		anim = "high_center" , 
		andar = false , 
		loop = true 
	},
	
	["dancar230"] = { 
		dict = "timetable@tracy@ig_8@idle_b" , 
		anim = "idle_d" , 
		andar = false , 
		loop = true 
	},

	["dancar231"] = { 
		dict = "timetable@tracy@ig_5@idle_a" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["dancar232"] = { 
		dict = "anim@amb@nightclub@lazlow@hi_podium@" , 
		anim = "danceidle_hi_11_buttwiggle_b_laz" , 
		andar = false , 
		loop = true 
	},

	["dancar233"] = { 
		dict = "move_clown@p_m_two_idles@" , 
		anim = "fidget_short_dance" , 
		andar = false , 
		loop = true 
	},

	["dancar234"] = { 
		dict = "move_clown@p_m_zero_idles@" ,
		anim = "fidget_short_dance" , 
		andar = false , 
		loop = true 
	},

	["dancar235"] = { 
		dict = "misschinese2_crystalmazemcs1_ig" , 
		anim = "dance_loop_tao" , 
		andar = false , 
		loop = true 
	},

	["dancar236"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , 
		anim = "low_center" , 
		andar = false , 
		loop = true 
	},

	["dancar237"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , 
		anim = "low_center_down" , 
		andar = false , 
		loop = true 
	},

	["dancar238"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , 
		anim = "low_center" , 
		andar = false , 
		loop = true 
	},

	["dancar239"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , 
		anim = "high_center_up" , 
		andar = false , 
		loop = true 
	},

	["dancar240"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , 
		anim = "high_center" , 
		andar = true , 
		loop = true 
	},

	["dancar241"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , 
		anim = "high_center_up" , 
		andar = false , 
		loop = true 
	},

	["dancar242"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" , 
		anim = "high_center" , 
		andar = false , 
		loop = true 
	},


	["dancar243"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" , 
		anim = "high_center_down" , 
		andar = false , 
		loop = true 
	},

	["dancar244"] = { 
		dict = "anim@amb@nightclub@dancers@podium_dancers@" , 
		anim = "hi_dance_facedj_17_v2_male^5" , 
		andar = false , 
		loop = true 
	},


	["dancar245"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" , 
		anim = "low_center" , 
		andar = false , 
		loop = true 
	},

	["dancar245"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , 
		anim = "low_center_down" , 
		andar = false , 
		loop = true 
	},

	["dancar247"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , 
		anim = "low_center" , 
		andar = false , 
		loop = true 
	},

	["dancar248"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , 
		anim = "high_center_up" , 
		andar = false , 
		loop = true 
	},

	["dancar249"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_09_v2_female^3" , 
		andar = false , 
		loop = true 
	},

	["dancar250"] = { 
		dict = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" , 
		anim = "hi_dance_facedj_09_v2_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar251"] = { 
		dict = "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" , 
		anim = "high_center" , 
		andar = false , 
		loop = true 
	},

	["dancar252"] = { 
		dict = "anim@amb@nightclub@dancers@solomun_entourage@" , 
		anim = "mi_dance_facedj_17_v1_female^1" , 
		andar = false , 
		loop = true 
	},

	["dancar253"] = { 
		dict = "anim@amb@casino@mini@dance@dance_solo@female@var_a@" , 
		anim = "med_center" , 
		andar = false , 
		loop = true 
	},

	["sexo"] = { 
		dict = "rcmpaparazzo_2" , 
		anim = "shag_loop_poppy" , 
		andar = false , 
		loop = true 
	},

	["sexo2"] = { 
		dict = "rcmpaparazzo_2" , 
		anim = "shag_loop_a" , 
		andar = false , 
		loop = true 
	},

	["sexo3"] = { 
		dict = "anim@mp_player_intcelebrationfemale@air_shagging" , 
		anim = "air_shagging" , 
		andar = false , 
		loop = true 
	},

	["sexo4"] = { 
		dict = "oddjobs@towing" , 
		anim = "m_blow_job_loop" , 
		andar = false , 
		loop = true , 
		carros = true 
	},

	["sexo5"] = { 
		dict = "oddjobs@towing" , 
		anim = "f_blow_job_loop" , 
		andar = false , 
		loop = true , 
		carros = true 
	},

	["sexo6"] = { 
		dict = "mini@prostitutes@sexlow_veh" , 
		anim = "low_car_sex_loop_female" , 
		andar = false , 
		loop = true , 
		carros = true 
	},


	--{ "sentar" , anim = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" },


	["sentar2"] = { 
		dict = "amb@world_human_picnic@male@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["sentar3"] = { 
		dict = "anim@heists@fleeca_bank@ig_7_jetski_owner" , 
		anim = "owner_idle" , 
		andar = false , 
		loop = true 
	},

	["sentar4"] = { 
		dict = "amb@world_human_stupor@male@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["sentar5"] = { 
		dict = "amb@world_human_picnic@female@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["sentar6"] = { 
		dict = "anim@amb@nightclub@lazlow@lo_alone@" , 
		anim = "lowalone_base_laz" , 
		andar = false , 
		loop = true 
	},

	["sentar7"] = { 
		dict = "anim@amb@business@bgen@bgen_no_work@" , 
		anim = "sit_phone_phoneputdown_idle_nowork" , 
		andar = false , 
		loop = true 
	},

	["sentar8"] = { 
		dict = "rcm_barry3" , 
		anim = "barry_3_sit_loop" , 
		andar = false , 
		loop = true 
	},

	["sentar9"] = { 
		dict = "amb@world_human_picnic@male@idle_a" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["sentar10"] = { 
		dict = "amb@world_human_picnic@female@idle_a" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["sentar11"] = { 
		dict = "timetable@jimmy@mics3_ig_15@" , 
		anim = "idle_a_jimmy" , 
		andar = false , 
		loop = true 
	},

	["sentar12"] = { 
		dict = "timetable@jimmy@mics3_ig_15@" , 
		anim = "mics3_15_base_jimmy" , 
		andar = false , 
		loop = true 
	},

	["sentar13"] = { 
		dict = "amb@world_human_stupor@male@idle_a" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["sentar14"] = { 
		dict = "timetable@tracy@ig_14@" , 
		anim = "ig_14_base_tracy" , 
		andar = false , 
		loop = true 
	},

	["sentar15"] = { 
		dict = "anim@heists@ornate_bank@hostages@hit" , 
		anim = "hit_loop_ped_b" , 
		andar = false , 
		loop = true 
	},
	
	["sentar16"] = { 
		dict = "anim@heists@ornate_bank@hostages@ped_e@" , 
		anim = "flinch_loop" , 
		andar = false , 
		loop = true 
	},

	["sentar17"] = { 
		dict = "timetable@ron@ig_5_p3" , 
		anim = "ig_5_p3_base" , 
		andar = false , 
		loop = true 
	},

	["sentar18"] = { 
		dict = "timetable@reunited@ig_10" , 
		anim = "base_amanda" , 
		andar = false , 
		loop = true 
	},

	["sentar19"] = { 
		dict = "timetable@ron@ig_3_couch" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["sentar20"] = { 
		dict = "timetable@jimmy@mics3_ig_15@" , 
		anim = "mics3_15_base_tracy" , 
		andar = false , 
		loop = true 
	},

	["sentar21"] = { 
		dict = "timetable@maid@couch@" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["sentar22"] = { 
		dict = "timetable@ron@ron_ig_2_alt1" , 
		anim = "ig_2_alt1_base" , 
		andar = false , 
		loop = true 
	},

	["beijar"] = { 
		dict = "mp_ped_interaction" , 
		anim = "kisses_guy_a" , 
		andar = false , 
		loop = false 
	},

	["striper"] = { 
		dict = "mini@strip_club@idles@stripper" , 
		anim = "stripper_idle_02" , 
		andar = false , 
		loop = true 
	},

	["escutar"] = { 
		dict = "mini@safe_cracking" , 
		anim = "idle_base" , 
		andar = false , 
		loop = true 
	},

	["alongar"] = { 
		dict = "anim@deathmatch_intros@unarmed" , 
		anim = "intro_male_unarmed_e" , 
		andar = false , 
		loop = true 
	},

	["dj"] = { 
		dict = "anim@mp_player_intupperdj" , 
		anim = "idle_a", 
		andar = true , 
		loop = true 
	},

	["rock"] = { 
		dict = "anim@mp_player_intcelebrationmale@air_guitar" , 
		anim = "air_guitar" , 
		andar = false , 
		loop = true 
	},

	["rock2"] = { 
		dict = "mp_player_introck" , 
		anim = "mp_player_int_rock" , 
		andar = false , 
		loop = false 
	},

	["abracar"] = { 
		dict = "mp_ped_interaction" , 
		anim = "hugs_guy_a" , 
		andar = false , 
		loop = false 
	},

	["abracar2"] = { 
		dict = "mp_ped_interaction" , 
		anim = "kisses_guy_b" , 
		andar = false , 
		loop = false 
	},

	["peitos"] = { 
		dict = "mini@strip_club@backroom@" , 
		anim = "stripper_b_backroom_idle_b" , 
		andar = false , 
		loop = false 
	},

	["espernear"] = { 
		dict = "missfam4leadinoutmcs2" , 
		anim = "tracy_loop" , 
		andar = false , 
		loop = true 
	},

	["arrumar"] = { 
		dict = "anim@amb@business@coc@coc_packing_hi@" , 
		anim = "full_cycle_v1_pressoperator" , 
		andar = false , 
		loop = true 
	},

	["bebado"] = { 
		dict = "missfam5_blackout" , 
		anim = "pass_out" , 
		andar = false , 
		loop = false 
	},

	["bebado2"] = { 
		dict = "missheist_agency3astumble_getup" , 
		anim = "stumble_getup" , 
		andar = false , 
		loop = false 
	},

	["bebado3"] = { 
		dict = "missfam5_blackout" , 
		anim = "vomit" , 
		andar = false , 
		loop = false 
	},

	["bebado4"] = { 
		dict = "random@drunk_driver_1" , 
		anim = "drunk_fall_over" , 
		andar = false , 
		loop = false 
	},

	["yoga"] = { 
		dict = "missfam5_yoga" , 
		anim = "f_yogapose_a" , 
		andar = false , 
		loop = true 
	},

	["yoga2"] = { 
		dict = "amb@world_human_yoga@male@base" , 
		anim = "base_a" , 
		andar = false , 
		l1oop = true 
	},

	["abdominal"] = { 
		dict = "amb@world_human_sit_ups@male@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["bixa"] = { 
		anim = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS" 
	},

	["britadeira"] = { 
		dict = "amb@world_human_const_drill@male@drill@base" , 
		anim = "base" , 
		prop = "prop_tool_jackham" , 
		flag = 15 , 
		hand = 28422 
	},

	["cerveja"] = { 
		anim = "WORLD_HUMAN_PARTYING" 
	},

	["churrasco"] = { 
		anim = "PROP_HUMAN_BBQ" 
	},

	["consertar"] = { 
		anim = "WORLD_HUMAN_WELDING" 
	},

	["dormir"] = { 
		dict = "anim@heists@ornate_bank@hostages@hit" , 
		anim = "hit_react_die_loop_ped_a" , 
		andar = false , 
		loop = true 
	},

	["dormir2"] = { 
		dict = "anim@heists@ornate_bank@hostages@hit" , 
		anim = "hit_react_die_loop_ped_e" , 
		andar = false , 
		loop = true 
	},

	["dormir3"] = { 
		dict = "anim@heists@ornate_bank@hostages@hit" , 
		anim = "hit_react_die_loop_ped_h" , 
		andar = false , 
		loop = true 
	},

	["dormir4"] = { 
		dict = "mp_sleep" , 
		anim = "sleep_loop" , 
		andar = false , 
		loop = true 
	},

	["encostar"] = { 
		dict = "amb@lo_res_idles@" , 
		anim = "world_human_lean_male_foot_up_lo_res_base" , 
		andar = false , 
		loop = true 
	},

	["estatua"] = { 
		dict = "amb@world_human_statue@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["flexao"] = { 
		dict = "amb@world_human_push_ups@male@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["fumar"] = { 
		anim = "WORLD_HUMAN_SMOKING" 
	},

	["fumar2"] = { 
		anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS" 
	},

	["fumar3"] = { 
		anim = "WORLD_HUMAN_AA_SMOKE" 
	},

	["fumar4"] = { 
		anim = "WORLD_HUMAN_SMOKING_POT" 
	},

	["malhar"] = { 
		dict = "amb@world_human_muscle_free_weights@male@barbell@base" , 
		anim = "base" , 
		prop = "prop_curl_bar_01" , 
		flag = 49 , 
		hand = 28422 
	},

	["malhar2"] = { 
		dict = "amb@prop_human_muscle_chin_ups@male@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["martelo"] = { 
		dict = "amb@world_human_hammering@male@base" , 
		anim = "base" , 
		prop = "prop_tool_hammer" , 
		flag = 49 , 
		hand = 28422 
	},

	["pescar"] = { 
		dict = "amb@world_human_stand_fishing@base" , 
		anim = "base" , 
		prop = "prop_fishing_rod_01" , 
		flag = 49 , 
		hand = 60309 
	},

	["pescar2"] = { 
		dict = "amb@world_human_stand_fishing@idle_a" , 
		anim = "idle_c" , 
		prop = "prop_fishing_rod_01" , 
		flag = 49 , 
		hand = 60309 
	},

	["plantar"] = { 
		dict = "amb@world_human_gardener_plant@female@base" , 
		anim = "base_female" , 
		andar = false , 
		loop = true 
	},

	["plantar2"] = { 
		dict = "amb@world_human_gardener_plant@female@idle_a" , 
		anim = "idle_a_female" , 
		andar = false , 
		loop = true 
	},

	["procurar"] = { 
		dict = "amb@world_human_bum_wash@male@high@base" , 
		anim = "base" , 
		andar = false , 
		loop = true 
	},

	["soprador"] = { 
		dict = "amb@code_human_wander_gardener_leaf_blower@base" , 
		anim = "static" , 
		prop = "prop_leaf_blower_01" , 
		flag = 49 , 
		hand = 28422 
	},

	["soprador2"] = { 
		dict = "amb@code_human_wander_gardener_leaf_blower@idle_a" , 
		anim = "idle_a" , 
		prop = "prop_leaf_blower_01" , 
		flag = 49 , 
		hand = 28422 
	},

	["soprador3"] = { 
		dict = "amb@code_human_wander_gardener_leaf_blower@idle_a" , 
		anim = "idle_b" , 
		prop = "prop_leaf_blower_01" , 
		flag = 49 , 
		hand = 28422 
	},

	["tragar"] = { 
		anim = "WORLD_HUMAN_DRUG_DEALER" 
	},

	["trotar"] = { 
		dict = "amb@world_human_jog_standing@male@fitidle_a" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["esquentar"] = { 
		anim = "WORLD_HUMAN_STAND_FIRE" 
	},

	["selfie"] = { 
		dict = "cellphone@self" , 
		anim = "selfie_in_from_text" , 
		prop = "prop_amb_phone" , 
		flag = 50 , 
		hand = 28422 
	},

	["selfie2"] = { 
		dict = "cellphone@" , 
		anim = "cellphone_text_read_base_cover_low" , 
		prop = "prop_amb_phone" , 
		flag = 50 , 
		hand = 28422 
	},

	["mecanico"] = { 
		dict = "amb@world_human_vehicle_mechanic@male@idle_a" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["mecanico2"] = { 
		dict = "mini@repair" , 
		anim = "fixing_a_player" , 
		andar = false , 
		loop = true 
	},

	["mecanico3"] = { 
		dict = "mini@repair" , 
		anim = "fixing_a_ped" , 
		andar = false , 
		loop = true 
	},

	["pullover"] = { 
		dict = "misscarsteal3pullover" , 
		anim = "pull_over_right" , 
		andar = false , 
		loop = false 
	},

	["airguitar"] = { 
		dict = "anim@mp_player_intcelebrationfemale@air_guitar" , 
		anim = "air_guitar" , 
		andar = false , 
		loop = true 
	},

	["airsynth"] = { 
		dict = "anim@mp_player_intcelebrationfemale@air_synth" , 
		anim = "air_synth" , 
		andar = false , 
		loop = true 
	},

	["puto"] = { 
		dict = "misscarsteal4@actor" , 
		anim = "actor_berating_loop" , 
		andar = true , 
		loop = true 
	},

	["puto2"] = { 
		dict = "oddjobs@assassinate@vice@hooker" , 
		anim = "argue_a" , 
		andar = true , 
		loop = true 
	},

	["puto3"] = { 
		dict = "mini@triathlon" , 
		anim = "want_some_of_this" , 
		andar = false , 
		loop = false 
	},

	["unhas"] = { 
		dict = "anim@amb@clubhouse@bar@drink@idle_a" , 
		anim = "idle_a_bartender" , 
		andar = true , 
		loop = true 
	},

	["mandarbeijo"] = { 
		dict = "anim@mp_player_intcelebrationfemale@blow_kiss" , 
		anim = "blow_kiss" , 
		andar = false , 
		loop = false 
	},
	
	["mandarbeijo2"] = { 
		dict = "anim@mp_player_intselfieblow_kiss" , 
		anim = "exit" , 
		andar = false , 
		loop = false 
	},

	["bale"] = { 
		dict = "anim@mp_player_intcelebrationpaired@f_f_sarcastic" , 
		anim = "sarcastic_left" , 
		andar = false , 
		loop = true 
	},

	["bonzao"] = { 
		dict = "misscommon@response" , 
		anim = "bring_it_on" , 
		andar = false , 
		loop = false 
	},

	["cruzarbraco"] = { 
		dict = "anim@amb@nightclub@peds@" , 
		anim = "rcmme_amanda1_stand_loop_cop" , 
		andar = true , 
		loop = true 
	},

	["cruzarbraco2"] = { 
		dict = "amb@world_human_hang_out_street@female_arms_crossed@idle_a" , 
		anim = "idle_a" , 
		andar = true , 
		loop = true 
	},

	["wtf"] = { 
		dict = "anim@mp_player_intcelebrationfemale@face_palm" , 
		anim = "face_palm" , 
		andar = true , 
		loop = false 
	},

	["wtf2"] = { 
		dict = "random@car_thief@agitated@idle_a" , 
		anim = "agitated_idle_a" , 
		andar = true , 
		loop = false 
	},

	["wtf3"] = { 
		dict = "missminuteman_1ig_2" , 
		anim = "tasered_2" , 
		andar = true , 
		loop = false 
	},

	["wtf4"] = { 
		dict = "anim@mp_player_intupperface_palm" , 
		anim = "idle_a" , 
		andar = true , 
		loop = false 
	},

	["suicidio"] = { 
		dict = "mp_suicide" , 
		anim = "pistol" , 
		andar = false , 
		loop = false 
	},

	["suicidio2"] = { 
		dict = "mp_suicide" , 
		anim = "pill" , 
		andar = false , 
		loop = false 
	},

	["lutar"] = { 
		dict = "anim@deathmatch_intros@unarmed" , 
		anim = "intro_male_unarmed_c" , 
		andar = false , 
		loop = false 
	},

	["lutar2"] = { 
		dict = "anim@deathmatch_intros@unarmed" , 
		anim = "intro_male_unarmed_e" , 
		andar = false , 
		loop = false 
	},

	["dedo"] = { 
		dict = "anim@mp_player_intselfiethe_bird" , 
		anim = "idle_a" , 
		andar = false , 
		loop = false 
	},

	["mochila"] = { 
		dict = "move_m@hiking" , 
		anim = "idle" , 
		andar = true , 
		loop = true 
	},

	["exercicios"] = { 
		dict = "timetable@reunited@ig_2" , 
		anim = "jimmy_getknocked" , 
		andar = true , 
		loop = true 
	},

	["escorar"] = { 
		dict = "timetable@mime@01_gc" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["escorar2"] = { 
		dict = "misscarstealfinale" , 
		anim = "packer_idle_1_trevor" , 
		andar = false , 
		loop = true 
	},

	["escorar3"] = { 
		dict = "misscarstealfinalecar_5_ig_1" , 
		anim = "waitloop_lamar" , 
		andar = false , 
		loop = true 
	},

	["escorar4"] = { 
		dict = "rcmjosh2" , 
		anim = "josh_2_intp1_base" , 
		andar = false , 
		loop = true 
	},

	["meditar"] = { 
		dict = "rcmcollect_paperleadinout@" , 
		anim = "meditiate_idle" , 
		andar = false , 
		loop = true 
	},

	["meditar2"] = { 
		dict = "rcmepsilonism3" , 
		anim = "ep_3_rcm_marnie_meditating" , 
		andar = false , 
		loop = true 
	},

	["meditar3"] = { 
		dict = "rcmepsilonism3" , 
		anim = "base_loop" , 
		andar = false , 
		loop = true 
	},

	["meleca2"] = { 
		dict = "anim@mp_player_intcelebrationfemale@nose_pick" , 
		anim = "nose_pick" , 
		andar = false , 
		loop = false 
	},

	["cortaessa"] = { 
		dict = "gestures@m@standing@casual" , 
		anim = "gesture_no_way" , 
		andar = false , 
		loop = false 
	},

	["meleca3"] = { 
		dict = "move_p_m_two_idles@generic" , 
		anim = "fidget_sniff_fingers" , 
		andar = true , 
		loop = false 
	},

	["bebado5"] = { 
		dict = "misscarsteal4@actor" , 
		anim = "stumble" , 
		andar = false , 
		loop = false 
	},

	["joia"] = { 
		dict = "anim@mp_player_intincarthumbs_uplow@ds@" , 
		anim = "enter" , 
		andar = false , 
		loop = false 
	},

	["joia2"] = { 
		dict = "anim@mp_player_intselfiethumbs_up" , 
		anim = "idle_a" , 
		andar = false , 
		loop = false 
	},

	["yeah"] = { 
		dict = "anim@mp_player_intupperair_shagging" , 
		anim = "idle_a" , 
		andar = false , 
		loop = false 
	},

	["assobiar"] = { 
		dict = "taxi_hail" , 
		anim = "hail_taxi" , 
		andar = false , 
		loop = false 
	},

	["carona"] = { 
		dict = "random@hitch_lift" , 
		anim = "idle_f" , 
		andar = true , 
		loop = false 
	},

	["estatua2"] = { 
		dict = "fra_0_int-1" , 
		anim = "cs_lamardavis_dual-1" , 
		andar = false , 
		loop = true 
	},

	["estatua3"] = { 
		dict = "club_intro2-0" , 
		anim = "csb_englishdave_dual-0" , 
		andar = false , 
		loop = true 
	},

	["dormir5"] = { 
		dict = "missarmenian2" , 
		anim = "drunk_loop" , 
		andar = false , 
		loop = true 
	},

	["colher"] = { 
		dict = "creatures@rottweiler@tricks@" , 
		anim = "petting_franklin" , 
		andar = false , 
		loop = false 
	},

	["rastejar"] = { 
		dict = "move_injured_ground" , 
		anim = "front_loop" , 
		andar = false , 
		loop = true 
	},

	["pirueta"] = { 
		dict = "anim@arena@celeb@flat@solo@no_props@" , 
		anim = "cap_a_player_a" , 
		andar = false , 
		loop = false 
	},

	["pirueta2"] = { 
		dict = "anim@arena@celeb@flat@solo@no_props@" , 
		anim = "flip_a_player_a" , 
		andar = false , 
		loop = false 
	},

	["fodase"] = { 
		dict = "anim@arena@celeb@podium@no_prop@" , 
		anim = "flip_off_a_1st" , 
		andar = false , 
		loop = false 
	},

	["taco"] = { 
		dict = "anim@arena@celeb@flat@solo@no_props@" , 
		anim = "slugger_a_player_a" , 
		andar = false , 
		loop = false 
	},

	["onda"] = { 
		dict = "anim@mp_player_intupperfind_the_fish" , 
		anim = "idle_a" , 
		andar = false , 
		loop = true 
	},

	["alongar3"] = { 
		dict = "mini@triathlon" , 
		anim = "idle_f" , 
		andar = false , 
		loop = true 
	},

	["alongar4"] = { 
		dict = "mini@triathlon" , 
		anim = "idle_d" , 
		andar = false , 
		loop = true 
	},

	["alongar5"] = { 
		dict = "rcmfanatic1maryann_stretchidle_b" , 
		anim = "idle_e" , 
		andar = false , 
		loop = true 
	},

	["lutar3"] = { 
		dict = "rcmextreme2" , 
		anim = "loop_punching" , 
		andar = true , 
		loop = true 
	},

	["heroi"] = { 
		dict = "rcmbarry" , 
		anim = "base" , 
		andar = true , 
		loop = true 
	},

	["boboalegre"] = { 
		dict = "rcm_barry2" , 
		anim = "clown_idle_0" , 
		andar = false , 
		loop = false 
	},

	["boboalegre2"] = { 
		dict = "rcm_barry2" , 
		anim = "clown_idle_1" , 
		andar = false , 
		loop = false 
	},

	["boboalegre3"] = { 
		dict = "rcm_barry2" , 
		anim = "clown_idle_2" , 
		andar = false , 
		loop = false 
	},

	["boboalegre4"] = { 
		dict = "rcm_barry2" , 
		anim = "clown_idle_6" , 
		andar = false , 
		loop = false 
	},

	["meditar4"] = { 
		dict = "timetable@amanda@ig_4" , 
		anim = "ig_4_base" , 
		andar = false , 
		loop = true 
	},

	["passaro"] = { 
		dict = "random@peyote@bird" , 
		anim = "wakeup" , 
		andar = false , 
		loop = false 
	},

	["cachorro"] = { 
		dict = "random@peyote@dog" , 
		anim = "wakeup" , 
		andar = false , 
		loop = false 
	},

	["karate"] = { 
		dict = "anim@mp_player_intcelebrationfemale@karate_chops" , 
		anim = "karate_chops" , 
		andar = false , 
		loop = false 
	},

	["karate2"] = { 
		dict = "anim@mp_player_intcelebrationmale@karate_chops" , 
		anim = "karate_chops" , 
		andar = false , 
		loop = false 
	},

	["ameacar"] = { 
		dict = "anim@mp_player_intcelebrationmale@cut_throat" , 
		anim = "cut_throat" , 
		andar = false , 
		loop = false 
	},

	["ameacar2"] = { 
		dict = "anim@mp_player_intcelebrationfemale@cut_throat" , 
		anim = "cut_throat" , 
		andar = false , 
		loop = false 
	},

	["boxe"] = { 
		dict = "anim@mp_player_intcelebrationmale@shadow_boxing" , 
		anim = "shadow_boxing" , 
		andar = false , 
		loop = false 
	},

	["boxe2"] = { 
		dict = "anim@mp_player_intcelebrationfemale@shadow_boxing" , 
		anim = "shadow_boxing" , 
		andar = false , 
		loop = false 
	},

	["mamamia"] = { 
		dict = "anim@mp_player_intcelebrationmale@finger_kiss" , 
		anim = "finger_kiss" , 
		andar = true , 
		loop = false 
	},

	["louco"] = { 
		dict = "anim@mp_player_intincaryou_locobodhi@ds@" , 
		anim = "idle_a" , 
		andar = true , 
		loop = true 
	},

	["xiu"] = { 
		dict = "anim@mp_player_intincarshushbodhi@ds@" , 
		anim = "idle_a_fp" , 
		andar = true , 
		loop = true 
	},

	["cruzar"] = { 
		dict = "amb@world_human_cop_idles@female@idle_b" , 
		anim = "idle_e" , 
		andar = true , 
		loop = true 
	},
}

return cfg