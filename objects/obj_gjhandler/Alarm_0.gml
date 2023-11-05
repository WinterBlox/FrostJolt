global.gj.user.auth("WinterBloxGames", "wKE4ya", function()
{
	var success = gj_util_determinesuccess()
	if success == "SUCCESS"
	{
		gj_util_createpopup("Account Linked", "Connected to Game Jolt");	
	} else if success = "INVALID CREDENTIALS"
	{
		gj_util_createpopup("Account Link Failed", "Invalid Credentials, please try again later.");	
	}
});





