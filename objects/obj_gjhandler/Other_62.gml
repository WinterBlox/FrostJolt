var r_id, r_status, r_result, r_url, r_httpstat; // Declare the variables used to store the Server Response

r_id = ds_map_find_value(async_load, "id"); // The response ID. This is used to organize the FrostJolt Backlog.
r_status = ds_map_find_value(async_load, "status"); // The status of the request. Handled Automatically.
r_result = ds_map_find_value(async_load, "result");
r_url = ds_map_find_value(async_load, "url");
r_httpstat = ds_map_find_value(async_load, "http_status");

global.response = json_parse(string(r_result));

ds_list_add(global.backlog, r_result);

if global.logbool
{
	show_debug_message("----- The following text is the response from an external server. -----");

	show_debug_message("Response ID: " + string(r_id));

	switch(r_status)
	{
		case -1: // A status of -1 means that the request failed and returned an error.
			show_debug_message("The server has responded with an error. See full server response below.");
		break;
		case 0: // A status of 0 means that the request succeeded.
			show_debug_message("The request was successful. See full server response below.");
		break;
		case 1: // A status of 1 means that the request succeeded and any requested content is being downloaded to the user's PC.
			show_debug_message("The request was successful and content is being downloaded. See full server response below.");
		break;
	}

	/*
		Since the response can be a bit vague when it is just raw, the Debug Messages below are responsible
		for organizing the response information into Layman's Terms.

	*/

	show_debug_message("Client Request: " + string(r_url));
	show_debug_message("HTTP Status Code: " + string(r_httpstat));
	show_debug_message("Server Response: " + r_result);
	show_debug_message("The server response has been parsed and is stored in global.response and the global.fj_response_backlog DS Map.")

	show_debug_message("-----------------------------------------------------------------------");
}


