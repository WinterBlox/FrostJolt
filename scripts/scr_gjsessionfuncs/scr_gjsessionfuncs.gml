/// @desc Opens a Game Jolt Session under the user's name.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
function gj_session_open(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/sessions/open/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/sessions/open/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + string(hashed));
	}	
}

/// @desc Pings the Game Jolt Servers to indicate that a given session is still open. It's recommended to run this every 30 seconds or so to prevent a session from closing unexpectedly.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
/// @arg {string} [_state] The state the session should be in. Can be either "active" or "idle". (OPTIONAL)
function gj_session_ping(_username, _user_token)
{
	if argument[2] != undefined
	{
		var _state = argument[2];
		
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/sessions/ping/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&status=" + string(_state) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/sessions/ping/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&status=" + string(_state) + "&signature=" + string(hashed));
		}	
	} else
	{
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/sessions/ping/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/sessions/ping/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + string(hashed));
		}			
	}
}

/// @desc Checks to see if a session is open or not.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
function gj_session_check(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/sessions/check/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/sessions/check/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + string(hashed));
	}	
}

/// @desc Closes an existing session.
/// @arg {string} _username The user's username
/// @arg {string} _user_token The user's game token
function gj_session_close(_username, _user_token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/sessions/close/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/sessions/close/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_user_token) + "&signature=" + string(hashed));
	}	
}

