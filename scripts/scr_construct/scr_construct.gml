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
			gj_user_authorize(_username, _token);
		},
		
		/// @desc Fetches information about a Game Jolt User's Account.
		/// @arg {string} _username The game jolt user's username
		fetch : function(_username)
		{
			gj_user_fetch(_username);
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
					show_debug_message("[FrostJolt] >>> ERROR: Trophy Fetch was called with the 'Specific' Filter, but no (or an invalid) trophy ID was provided. (" + string(argument[3]) + ")");
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
		/// @arg {string} _token The user's game token
		check : function(_username, _token)
		{
			gj_session_check(_username, _token);	
		},
		
		/// @desc Checks to see if a session is open or not.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		close : function(_username, _token)
		{
			gj_session_close(_username, _token)
		}
		
	}
		
	static scores = {
		
		/// @desc Returns a list of high score tables for a game.
		get_tables : function()
		{
			gj_scores_get_tables();	
		},
		
		/// @desc Returns a list of scores either for a user or globally for a game.
		fetch : function()
		{
			gj_scores_fetch();
		},
		
		/// @desc Adds a score for a user or guest.
		/// @arg {string} _val This is a string value associated with the score.
		add : function(_val)
		{
			gj_scores_add(_val, _val);	
		},
		
		/// @desc Returns the rank of a particular score on a score table.
		/// @arg {string} _val The rank you want to get
		/// @arg {string} [_table_id] The ID of the score table from which you want to get the rank. (OPTIONAL)
		get_rank : function(_val)
		{
			if argument[1] != ""
			{
				gj_scores_getrank(_val, argument[1]);
			} else
			{
				gj_scores_getrank(_val);	
			}
		}
		
	}
		
	static friends = {
		
		/// @desc With this function, you can fetch a list containing all of the IDs of the users a given user is currently friends with on Game Jolt.
		/// @arg {string} _username The user's username
		/// @arg {string} _token The user's game token
		fetch : function(_username, _token)
		{
			gj_friends_fetch(_username, _token)	
		}
		
	}
	
	static datastore = {
		
		/// @desc Fetch all of the keys for your game or user(s)'s datastore
		/// @arg {string} [_username] The user's username
		/// @arg {string} [_token] The user's game token
		get_keys : function()
		{
			if argument[0] != "" && argument[1] != ""
			{
				gj_ds_fetchkeys(argument[0], argument[1]);
			} else
			{
				gj_ds_fetchkeys();	
			}
		},
		
		/// @desc Fetch the contents of a specific key.
		/// @arg {string} _key The name of the key you want to read from
		/// @arg {string} [_username] The user's username
		/// @arg {string} [_token] The user's game token
		read : function(_key)
		{
			if argument[1] != "" && argument[2] != ""
			{
				gj_ds_fetch(_key, argument[1], argument[2]);
			} else
			{
				gj_ds_fetch(_key);	
			}
		},

		/// @desc Set the contents of a given key to a given value.
		/// @arg {string} _key The name of the key you want to write to
		/// @arg {string} _str The value you want to write to the key
		/// @arg {string} [_username] The user's username
		/// @arg {string} [_token] The user's game token
		write : function(_key, _str)
		{
			if argument[2] != "" && argument[3] != ""
			{
				gj_ds_set(_key, _str, argument[2], argument[3]);
			} else
			{
				gj_ds_set(_key, _str);	
			}
		},
		
		/// @desc Destroy a key, removing it from your Data Storage entirely.
		/// @arg {string} _key The name of the key you want to destroy
		/// @arg {string} [_username] The user's username
		/// @arg {string} [_token] The user's game token
		destroy : function(_key)
		{
			if argument[1] != "" && argument[2] != ""
			{
				gj_ds_destroy(_key, argument[1], argument[2]);	
			} else
			{
				gj_ds_destroy(_key);	
			}
		}
	
	}
	
}