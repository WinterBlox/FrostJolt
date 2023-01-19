#define ext_fj_initialize
global.gameid = extension_get_option_value("ext_frostjolt", "GJ_GAMEID");
global.key = extension_get_option_value("ext_frostjolt", "GJ_KEY");
global.response = {}
global.gj_isoccupied = false;
global.callback = undefined;

if extension_get_option_value("ext_frostjolt", "GJ_MAKEBACKLOG")
{
	global.backlog = ds_list_create();
}

if extension_get_option_value("ext_frostjolt", "GJ_LOGRESPONSE")
{
	global.logbool = true;	
} else
{
	global.logbool = false;	
}

global.fjready = false;

var log = extension_get_option_value("ext_frostjolt", "GJ_LOGINIT");

if log = true
{
	show_debug_message("[FrostJolt] >>> Successfully Initialized");
	show_debug_message("[FrostJolt] >>> " + string(global.gameid))
	show_debug_message("[FrostJolt] >>> " + string(global.key));
}
global.fjready = true;

#define ext_fj_denitialize
ds_list_destroy(global.backlog);
show_debug_message("[FrostJolt] >>> Successfully Deactivated FrostJolt");