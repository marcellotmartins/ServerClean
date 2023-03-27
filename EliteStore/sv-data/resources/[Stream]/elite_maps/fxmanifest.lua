fx_version 'bodacious'
game 'gta5'

author 'GABZ'
description 'MRPD'
version '1.0.0'

this_is_a_map 'yes'


data_file 'TIMECYCLEMOD_FILE' 'gabz_mrpd_timecycle.xml'
data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'
data_file 'TIMECYCLEMOD_FILE' 'gabz_timecycle_mods_1.xml'
data_file 'TIMECYCLEMOD_FILE' 'legionsquareupgrade1.0'

files {
	'gabz_mrpd_timecycle.xml',
	'interiorproxies.meta',
	'gabz_timecycle_mods_1.xml',
	'legionsquareupgrade1.0',
}

client_script {
    "gabz_mrpd_entitysets.lua",
	'client.lua'
}