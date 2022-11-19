function gj_ds_fetchkeys_user(_username, _token) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_token) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}

function gj_ds_fetch_user(_username, _token, _key) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}

function gj_ds_set_user(_username, _token, _key, _str) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&data=" + string(_str) + "&username=" + string(_username) + "&user_token=" + string(_token) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&data=" + string(_str) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}

function gj_ds_destroy_user(_username, _token, _key) 
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(GJ_GAMEID) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}