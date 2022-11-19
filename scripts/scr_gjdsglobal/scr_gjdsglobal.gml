function gj_ds_fetchkeys() 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(GJ_GAMEID) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(GJ_GAMEID) + "&signature=" + string(hashed));
	}
}

function gj_ds_fetch(_key) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&signature=" + string(hashed));
	}
}

function gj_ds_set(_key, _str) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&data=" + string(_str) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&data=" + string(_str) + "&signature=" + string(hashed));
	}
}

function gj_ds_destroy(_key) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&signature=" + string(hashed));
	}
}