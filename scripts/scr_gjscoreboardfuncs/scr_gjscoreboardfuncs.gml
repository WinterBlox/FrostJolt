/// @desc Returns a list of high score tables for a game.
function gj_scores_get_tables()
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/scores/tables/?game_id=" + string(GJ_GAMEID) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/scores/tables/?game_id=" + string(GJ_GAMEID) + "&signature=" + string(hashed));
	}
}

/// @desc Returns a list of scores either for a user or globally for a game.
function gj_scores_fetch()
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/scores/?game_id=" + string(GJ_GAMEID) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/scores/?game_id=" + string(GJ_GAMEID) + "&signature=" + string(hashed));
	}
}

/// @desc Adds a score for a user or guest.
/// @arg _val This is a string value associated with the score.
/// @arg _sortval This is a numerical sorting value associated with the score. All sorting will be based on this number.
function gj_scores_add(_val, _sortval)
{
	if global.gj_isoccupied == false
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/scores/add/?game_id=" + string(GJ_GAMEID) + "&score=" + string(_val) + "&sort=" + string(_sortval) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/scores/add/?game_id=" + string(GJ_GAMEID) + "&score=" + string(_val) + "&sort=" + string(_sortval) + "&signature=" + string(hashed));
	}
}
/// @desc Returns the rank of a particular score on a score table.
/// @arg _sortval This is a numerical sorting value that is represented by a rank on the score table.
/// @arg [_table_id] The ID of the score table from which you want to get the rank. (OPTIONAL)
function gj_scores_getrank(_sortval)
{
	if argument[1] != ""
	{
		var _table_id = argument[1];
		
		if global.gj_isoccupied == false
		{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/scores/get-rank/?game_id=" + string(GJ_GAMEID) + "&sort=" + string(_sortval) + "&table_id=" + string(_table_id) + GJ_KEY
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/scores/get-rank/?game_id=" + string(GJ_GAMEID) + "&sort=" + string(_sortval) + "&table_id=" + string(_table_id) + "&signature=" + string(hashed));
		}	
	} else 
	{
		var unhashed = "https://api.gamejolt.com/api/game/v1_2/scores/get-rank/?game_id=" + string(GJ_GAMEID) + "&sort=" + string(_sortval) + GJ_KEY
		var hashed = md5_string_utf8(unhashed);
	
		var response = http_get("https://api.gamejolt.com/api/game/v1_2/scores/get-rank/?game_id=" + string(GJ_GAMEID) + "&sort=" + string(_sortval) + "&signature=" + string(hashed));
	}
}

