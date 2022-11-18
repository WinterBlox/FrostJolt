/// @func gj_user_authorize()
/// @desc Authorizes access to a Game Jolt User's Information. This must be called before any other user related GJ Functions are called.
/// @arg {string} _username The game jolt user's username
/// @arg {string} _token The user's unique Game Token
function gj_user_authorize(_username, _token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_token) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}

/// @func gj_user_fetch()
/// @desc Fetches information about a Game Jolt User's Account. The account must be authorized using gj_user_authorize beforehand.
/// @arg {string} _username The game jolt user's username
function gj_user_fetch(_username)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/users/fetch/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/users/fetch/?game_id=" + string(GJ_GAMEID) + "&username=" + string(_username) + "&signature=" + string(hashed));
		
	}
}