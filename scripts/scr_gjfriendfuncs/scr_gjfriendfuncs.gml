/// @desc With this function, you can fetch a list containing all of the IDs of the users a given user is currently friends with on Game Jolt.
/// @arg {string} _username The user's username
/// @arg {string} _token The user's game token
function gj_friends_fetch(_username, _token)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/friends/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/friends/?format=" + string(global.dataform) + "&game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
	}
}