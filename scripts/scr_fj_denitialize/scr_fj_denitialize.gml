/// @desc Clears all lists and backlogs of responses and disables FrostJolt.
function fj_denitialize(){
	ds_list_clear(global.fj_response_backlog);
	ds_list_destroy(global.fj_response_backlog);
}