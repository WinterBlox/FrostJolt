// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FrostJolt() constructor 
{
	enum FJ_TROPHY_FETCH_FILTER
	{
		ALL,
		ACHIEVED,
		UNACHIEVED,
		SPECIFIC
	}
	
	static user = {
		/// @desc Authorizes access to a Game Jolt User's Information. This should be called before any other user related GJ Functions are called.
		/// @arg {string} _username The game jolt user's username
		/// @arg {string} _token The user's unique Game Token
		auth : function(_username, _token)
		{
			if global.gj_isoccupied == false
			{
				var unhashed = "https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + global.key
				var hashed = md5_string_utf8(unhashed);
			
				var response = http_get("https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&user_token=" + string(_token) + "&signature=" + string(hashed));
			}
		},
		
		/// @desc Fetches information about a Game Jolt User's Account.
		/// @arg {string} _username The game jolt user's username
		fetch : function(_username)
		{
			if global.gj_isoccupied == false
			{
			var unhashed = "https://api.gamejolt.com/api/game/v1_2/users/fetch/?game_id=" + string(global.gameid) + "&username=" + string(_username) + global.key
			var hashed = md5_string_utf8(unhashed);
	
			var response = http_get("https://api.gamejolt.com/api/game/v1_2/users/fetch/?game_id=" + string(global.gameid) + "&username=" + string(_username) + "&signature=" + string(hashed));
		
			}
		}
	}
	
	static trophy = {
		/// @desc Fetches trophy information for your game. If no filter constant is passed in, then the search will provide all trophies.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		/// @arg {real} [_filter] If you want to filter out trophies you dont want or want to search for a specific trophy's data, provide a member of FJ_TROPHY_FETCH_FILTER here (eg: FJ_TROPHY_FETCH_FILTER.UNACHIEVED)
		/// @arg {string} [_trophy_id] If you provide the SPECIFIC filter, then provide this argument as well.
		fetch : function(_username, _token)
		{
			
			switch(argument[2])
			{
				case FJ_TROPHY_FETCH_FILTER.ALL:
				gj_trophies_fetch_all(_username, _token);
				show_debug_message("[FrostJolt] >>> Fetching all trophies...");
				break;
				case FJ_TROPHY_FETCH_FILTER.UNACHIEVED:
				gj_trophies_fetch_unachieved(_username, _token);
				show_debug_message("[FrostJolt] >>> Fetching all unachieved trophies...");
				break;
				case FJ_TROPHY_FETCH_FILTER.ACHIEVED:
				gj_trophies_fetch_achieved(_username, _token);
				show_debug_message("[FrostJolt] >>> Fetching all achieved trophies...");
				break;
				case FJ_TROPHY_FETCH_FILTER.SPECIFIC:
				if argument[3] != ""
				{
					gj_trophies_fetch_specific(_username, _token, argument[3]);
					show_debug_message("[FrostJolt] >>> Fetching specific trophy with ID " + string(argument[3]) + "...");
				} else
				{
					show_debug_message("[FrostJolt] >>> ERROR: Trophy Fetch was called with the 'Specific' Filter, but no (or an invalid) trophy ID was provided. (" + string(argument[3]) + ")")	
				}
				break;
				default:
				gj_trophies_fetch_all(_username, _token);
				show_debug_message("[FrostJolt] >>> Fetching all trophies...");
				break;
			}
			
		},
		
		/// @desc Unlocks a given trophy.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		/// @arg {string} _trophy_id The ID of the Trophy
		unlock : function(_username, _token, _trophy_id)
		{
			gj_trophies_unlock(_username, _token, _trophy_id);
		},
		
		/// @desc Locks a unlocked trophy.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		/// @arg {string} _trophy_id The ID of the Trophy
		lock : function(_username, _token, _trophy_id)
		{
			gj_trophies_lock(_username, _token, _trophy_id);
		},
	}
		
	static session = {
		
		/// @desc Opens a Game Jolt Session under the user's name.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		open : function(_username, _token)
		{
			gj_session_open(_username, _token);
		},
		
		/// @desc Pings the Game Jolt Servers to indicate that a given session is still open. It's recommended to run this every 30 seconds or so to prevent a session from closing unexpectedly.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		/// @arg {string} [_state] The state the session should be in. Can be either "active" or "idle". (OPTIONAL)
		ping : function(_username, _token)
		{
			if argument[2] != ""
			{
				gj_session_ping(_username, _token, argument[2]);
			} else
			{
				gj_session_ping(_username, _token);
			}
		},
		
		/// @desc Checks to see if a session is open or not.
		/// @arg {string} _username The user's username
		/// @arg {string} _user_token The user's game token
		check : function(_username, _token)
		{
			gj_session_check(_username, _token);	
		},
		
		/// @desc Checks to see if a session is open or not.
		/// @arg {string} _username The user's username
		/// @arg {string} _user_token The user's game token
		close : function(_username, _token)
		{
			gj_session_close(_username, _token)
		}
		
	}
	
}