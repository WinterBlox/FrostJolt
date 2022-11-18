/// @func gj_trophies_fetch()
/// @desc Fetches the information for every single trophy for a specific game.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's token
function gj_trophies_fetch_all(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + string(hashed));
	}
}

function gj_trophies_fetch_unachieved(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&achieved=false" + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + "achieved=false" + string(hashed));
	}
}

function gj_trophies_fetch_achieved(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&achieved=true" + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + "achieved=true" + string(hashed));
	}
}

function gj_trophies_fetch_specific(_username, _user_token, _trophy_id)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + "&signature=" + string(hashed));
	}
}

function gj_trophies_unlock(_username, _user_token, _trophy_id)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/add-achieved/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/add-achieved/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + "&signature=" + string(hashed));
	}
}

function gj_trophies_lock(_username, _user_token, _trophy_id)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/remove-achieved/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/remove-achieved/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + "&signature=" + string(hashed));
	}
}