/// @desc Authorizes access to a Game Jolt User's Information. This should be called before any other user related GJ Functions are called.
/// @arg {string} _username The game jolt user's username
/// @arg {string} _token The user's unique Game Token
function gj_user_authorize(_username, _token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}

/// @desc Fetches information about a Game Jolt User's Account.
/// @arg {string} _username The game jolt user's username
function gj_user_fetch(_username)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/users/fetch/?game_id=" + string(global.gameid) + "&username=" + string(_username) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/users/fetch/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&signature=" + string(hashed));
		
	}
}