// Feather ignore GM2044

/// @desc Fetch all of the keys for your game or user(s)'s datastore.
function gj_ds_fetchkeys()
{
	if argument[0] != "" && argument[1] != ""
	{
		var _username = argument[0];
		var _token = argument[1];
		
		if global.gj_isoccupied == false
		{	
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
		} 
	} else
	{
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(global.gameid) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/get-keys/?game_id=" + string(global.gameid) + "&signature=" + string(hashed));
		}
	}
}

/// @desc Fetch the contents of a specific key.
function gj_ds_fetch(_key) 
{
	if argument[1] != "" && argument[2] != ""
	{
		var _username = argument[1];
		var _token = argument[2];
	
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
		}
	} else
	{
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(global.gameid) + "&key=" + string(_key) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/fetch/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&signature=" + string(hashed));
		}
	}
}

function gj_ds_set(_key, _str)
{
	if argument[2] != "" && argument[3] != ""
	{
		var _username = argument[2];
		var _token = argument[3];
	
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&data=" + string(_str) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&data=" + string(_str) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
		}
	} else
	{
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&data=" + string(_str) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/set/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&data=" + string(_str) + "&signature=" + string(hashed));
		}
	}
}

function gj_ds_destroy(_key)
{
	if argument[1] != "" && argument[2] != ""
	{
		var _username = argument[1];
		var _token = argument[2];
	
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
		}
	} else
	{
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(global.gameid) + "&key=" + string(_key) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/data-store/remove/?game_id=" + string(global.gameid) + "&key=" + string(_key) + "&signature=" + string(hashed));
		}
	}
}