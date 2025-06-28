> [!CAUTION]
> This library is no longer being maintained. I highly discourage using this for production, as it may be victim to security risks.\
> I cannot make any guarantees as to whether it will start being maintained again.\
> My best recommendation if you need GameMaker-GameJolt Communication is to make the HTTP requests yourself by referring to the Game API.

# FrostJolt
Public Repository for FrostJolt, a Code Library for GameMaker v20229.1.51 and onwards that integrates Game Jolt's Game API Into a GameMaker Project.

## SUMMARY

FrostJolt for GameMaker 2.3+ is a library of Functions, Scripts, Guides and Tools designed to help you set up Game Jolt's Game API with GameMaker.

At the time of writing this, this library contains the following features/support for:

- Datastores - Store Data from your GameMaker Game directly on Game Jolt's Servers, such as custom levels, save data, scores, etc
- Friends - Get a list of your Game Jolt Friends and any that are currently online
- Scores - Save scores to Game Jolt Scoreboards
- Sessions - Keep track of the time people spend playing your game and get a list of players currently playing your game via the Game API Dashboard
- Trophies - Create rewards for players to attain by achieving certain feats in-game
- Users - Verify username & token information provided by the End User to your game, check the existence of any given account and fetch information about a user such as Nickname, Profile Picture, etc.
- GUI - **(EXPERIMENTAL)** Custom GUI Elements that show events between Your Game and Game Jolt in a more user-friendly format

### Pros/Cons:

- Supports every feature the Game API has to offer except for Batch Requests
- Easy to setup - just provide the Game ID and Private Key and let FrostJolt do the rest
- Fully (but not easily) customizable to your liking
- Only Supports JSON Format for Responses
- Assumes you have basic knowledge of GameMaker (this isnt really a con but whatever)

## INSTALLATION

>[!NOTE]
> FrostJolt has not yet been tested with the new GM Runtime Beta, so please keep this in mind when using FrostJolt on projects that use it.

To install FrostJolt, go to the [Releases](https://github.com/WinterBlox/FrostJolt/releases) section on GitHub or [download the .yymps file from Game Jolt](https://gamejolt.com/games/frostjoltgm/765026)

Once you have the .yymps file in your Downloads Folder, drag and drop it into the GameMaker IDE with the project you want to use it in open.

![image](https://github.com/WinterBlox/FrostJolt/assets/85455589/67b8e4f7-ef27-4de0-9d1e-88b629040f86)

This window should pop up. Click 'FrostJolt Library' and then click 'Add'. If it pops up in the 'Resources to import' section, you're good to go! Click 'Import' and the library will appear in your Asset Browser!

![image](https://github.com/WinterBlox/FrostJolt/assets/85455589/abf6b84a-745a-472d-94db-48cebb828257)

We're not done yet, though! Next up, you need to provide FrostJolt (more specifically, it's extension) with your Game's Game ID and Private Key.

To get these, go to the Game API tab of your Game Dashboard on Game Jolt, and then into the API Settings tab. Here, your game's Game ID and Private Key lie for the taking.

![image](https://github.com/WinterBlox/FrostJolt/assets/85455589/21d56320-1057-430d-8fcd-6139d66499e9)

Jot your Game ID and Private Key down and head back into GameMaker, and double-click on the `ext_frostjolt` extension in the Folder that was added to the Asset Browser.

![image](https://github.com/WinterBlox/FrostJolt/assets/85455589/5e8186e7-2ae2-4f23-a933-b51f1a15f7e2)

Go to the Extension Options down at the bottom and fill in the Game ID and Private Key fields.

>[!WARNING]
> NEVER GIVE YOUR PRIVATE KEY TO ANYONE! Your game's private key is used to validate that the requests your game makes *are legitimate!* By giving away your private key, you are essentially letting anyone in the world send in requests pretending to be your game!

## Version Compatibility

**To be added**


