# FrostJolt
Public Repository for FrostJolt, a Code Library for GameMaker v20229.1.51 and onwards that integrates Game Jolt's Game API Into a GameMaker Project.

## SUMMARY

FrostJolt for GameMaker LTS is a library of Functions, Scripts, Guides and Tools designed to help you set up Game Jolt's Game API with GameMaker.At the time of writing this, this library contains things for the following:

- Data Stores (both global and user-specific)
- Friends (fetching data about a user's friends or who they're friends with)
- Scoreboards
- Sessions (logging play sessions)
- Trophies 
- Users (authorizing and fetching info about them)

But more features are coming! This library is actively being updated!

FrostJolt has been tested only on Windows. If you would like to help me test FrostJolt on other platform such as macOS or Linux, shoot me a Direct Message on Discord or Game Jolt!

Discord Contact - WinterBlox1#3364

## DOCUMENTATION

For a guide on how to set-up FrostJolt for the first time, go to https://github.com/WinterBlox/FrostJolt/wiki

## INSTALLATION

To install FrostJolt, simply drag and drop the .yymps file into GameMaker and it will Open a Prompt Asking you to select which files to import. Import all of the files into your GM Project.

Alternatively, if drag and dropping doesnt work, Go to Tools > Import Local Package > Find the .yymps file in your Downloads and Select it, which will also open the prompt.

## HOW IT WORKS

FrostJolt uses a relatively simple method of getting data from the Game Jolt Servers. Most of the functions you'll use are just the same thing with different parameters and endpoints. For example, gj_user_authorize starts off by building the body of the request that will be sent to the server, which in this case is `https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=<id here>&username=<username here>&user_token<user token here>`

Once the basic request has been built, FrostJolt then appends your Private Key directly onto the end of the request. This whole string is then pumped through an MD5 (Message-Digest 5) Hashing Algorithm to generate a completely unique string of characters. Once that's done, the same request is built again, but this time the Private Key on the end is replaced with the `signature` parameter. This is a required parameter to guarantee that the request is coming from your game, and not a phony. If the signature is invalid, then the request will automatically be rejected.

The final request looks something like this: `https://api.gamejolt.com/api/game/v1_2/users/auth/?game_id=<id here>&username=<username here>&user_token<user token here>&signature=<signature here>`

This whole string is then passed into the `http_get()` function as a string.

The next part involves catching the response. This is where the gjhandler Object comes into play. The object has an Async - HTTP Event that is run every time a HTTP Request is made. Whenever an Async - HTTP Event is run, it generates a DS Map called `async_load` containing all of the response's data. 

The Event first creates 5 Local Variables: `r_id`, `r_status`, `r_result`, `r_url` and `r_httpstat`. 

All of these variables are set to one of 5 values in the `async_load` DS Map. These are `id`, `status`, `result`, `url` and `http_status`.

The `global.response` variable is then paired with the `json_parse()` function with the r_result variable as an argument.
The contents of the `global.response` variable are then stored in the `global.backlog` DS List for accessing at a later date.

After all this, FrostJolt neatly spits this as a notification in your output console.
