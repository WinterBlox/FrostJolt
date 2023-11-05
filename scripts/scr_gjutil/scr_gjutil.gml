function gj_util_determinesuccess()
{
	if global.response.response.success
	{
		return "SUCCESS";		
	} else if global.response.response.message == "The Game ID you passed in does not point to a valid game."
	{
		return "INVALID GAME ID";
	} else if global.response.response.message == "No such user with the credentials passed in could be found."
	{
		return "INVALID CREDENTIALS";
	} else if !gj_util_checkformessage()
	{
		return "SERVER PROVIDED NO MESSAGE, REFER TO FULL RESPONSE";	
	}
}

function gj_util_checkformessage()
{
	// Feather ignore GM1041
	if struct_exists(global.response.response, "message")
	{
		return true;
	} else return false;
}

global.popupcount = 0;

function gj_util_createpopup(ttl, cont)
{
	if extension_get_option_value("ext_frostjolt", "GJ_ENABLEPOPUPS") == false exit;
	instance_create_layer(0, 0, "Instances", obj_fj_corner_popup, 
	{
		title : ttl,
		txt : cont
	});
	global.popupcount += 1;

}

function gj_util_createdebugpopup(ttl, cont)
{
	if extension_get_option_value("ext_frostjolt", "GJ_DEBUGPOPUPS") == false exit;
	instance_create_layer(0, 0, "Instances", obj_fj_corner_debugpopup, 
	{
		title : ttl,
		txt : cont
	});
	global.popupcount += 1;

}

function gj_util_createtrophypopup(ttl, cont, trophy)
{
	if extension_get_option_value("ext_frostjolt", "GJ_ENABLEPOPUPS") == false exit;
	instance_create_layer(0, 0, "Instances", obj_fj_corner_trophypopup, 
	{
		title : ttl,
		txt : cont,
		trophy_sprite : trophy
	});
	global.popupcount += 1;

}