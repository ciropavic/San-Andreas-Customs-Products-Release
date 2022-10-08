fx_version 'cerulean'
games {'gta5'}
description 'Markomods.com M4'

files{
	'**/markomods-m4-components.meta',
	'**/markomods-m4-archetypes.meta',
	'**/markomods-m4-animations.meta',
	'**/markomods-m4-pedpersonality.meta',
	'**/markomods-m4.meta',
}

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/markomods-m4-components.meta'
data_file 'WEAPON_METADATA_FILE' '**/markomods-m4-archetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/markomods-m4-animations.meta'
data_file 'PED_PERSONALITY_FILE' '**/markomods-m4-pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/markomods-m4.meta'

client_script 'cl_weaponNames.lua'