/// @desc Fetches the information for every single trophy for a specific game.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
function gj_trophies_fetch_all(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + string(hashed));
	}
}

/// @desc Fetches trophies the user hasn't achieved yet.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
function gj_trophies_fetch_unachieved(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&achieved=false" + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&achieved=false" + "&signature=" + string(hashed));
	}
}

/// @desc Fetches trophies the user has already achieved.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
function gj_trophies_fetch_achieved(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&achieved=true" + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&achieved=true" + "&signature=" + string(hashed));
	}
}

/// @desc Fetches a specific trophy from the game's list of trophies.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
/// @arg {real} _trophy_id The ID of the Trophy
function gj_trophies_fetch_specific(_username, _user_token, _trophy_id)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + "&signature=" + string(hashed));
	}
}

/// @desc Unlocks a given trophy.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
/// @arg {real} _trophy_id The ID of the Trophy
function gj_trophies_unlock(_username, _user_token, _trophy_id)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/add-achieved/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/add-achieved/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + "&signature=" + string(hashed));
	}
}

/// @desc Re-locks an already unlocked trophy. Useful for resetting trophy data if necessary.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
/// @arg {real} _trophy_id The ID of the Trophy
function gj_trophies_lock(_username, _user_token, _trophy_id)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/trophies/remove-achieved/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/trophies/remove-achieved/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&trophy_id=" + string(_trophy_id) + "&signature=" + string(hashed));
	}
}