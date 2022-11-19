// This script contains all of the macros that the API will need to function correctly.

// The first macro below is the GJ_GAMEID Macro. This will be found in your game's Game API >>> API Settings Tab.
// Pass the Game ID that you find into the GJ_GAMEID Macro.

// The second macro below is the GJ_AUTHKEY Macro. This will be found in the same place as the Game ID.
// Click on '(show key)' to see your game's Private Key.
// ------------------------------------------------------------------------------------------------------
/*
	DO NOT SHARE YOUR PRIVATE KEY WITH ANYONE!
	If someone gets a hold of your game's private API Key, they can use it to make API Requests disguised as your game!
	It is recommended to generate a new API Key whenever you publish a new release for your game on GJ.
	This way, people with an older API Key will not be able to use it for bad.
	Unfortunately, this will break all of your older versions GJ Intergration.
	If you DO Generate a new Key, Remember to change it inside this script!
*/
// ------------------------------------------------------------------------------------------------------
// Once you have your private key, pass it into the GJ_AUTHKEY Macro.
// If for whatever reason you need to generate a new private key, you should make sure to replace the existing key with the new one!

// (I would recommend generating a new key every time you push an update for your game to Game Jolt.)

#macro GJ_GAMEID 0
#macro GJ_KEY ""

global.response = "";
global.gj_isoccupied = false;
global.fj_response_backlog = ds_list_create();