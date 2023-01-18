{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "ext_frostjolt",
  "optionsFile": "options.json",
  "options": [
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel","extensionId":null,"guid":"0c41b06f-fb86-4465-a91d-09ed902b68bc","displayName":"","listItems":[],"description":"","defaultValue":"Required Configurations","exportToINI":false,"hidden":false,"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"GJ_GAMEID","extensionId":null,"guid":"9d9a6b88-99c9-45b9-90bc-b3ddc9df4dd1","displayName":"Game ID","listItems":[],"description":"You can find your Game ID in the URL Bar of your GameJolt Game's Page.","defaultValue":"Example_ID","exportToINI":true,"hidden":false,"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"GJ_KEY","extensionId":null,"guid":"d7ced46d-0ce5-4741-ab0b-6d06250cb3db","displayName":"Private Key","listItems":[],"description":"NEVER GIVE YOUR PRIVATE KEY TO ANYONE! --- This is located in the Game API Section of your Game's Settings on GameJolt, under API Settings.","defaultValue":"Example_Key","exportToINI":true,"hidden":false,"optType":2,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"GJ_REQUESTMODE","extensionId":null,"guid":"76513089-0e8f-47a9-aa69-e378a4631e6a","displayName":"Request Mode","listItems":[
        "GET",
      ],"description":"Since the Game Jolt API supports both GET and POST requests, you can specify which one that FrostJolt will use for it's requests. (FrostJolt only supports GET requests at the moment.)","defaultValue":"GET","exportToINI":false,"hidden":false,"optType":6,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"__extOptLabel1","extensionId":null,"guid":"ba737b6e-6fd8-492f-814c-e290411e6643","displayName":"","listItems":[],"description":"","defaultValue":"Additional Options","exportToINI":false,"hidden":false,"optType":5,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"GJ_LOGRESPONSE","extensionId":null,"guid":"7c2d8cfc-d84d-4800-bb8a-85135b373296","displayName":"Log Server Responses","listItems":[],"description":"If you don't want FrostJolt to log server responses in the output console, untick this.","defaultValue":"True","exportToINI":true,"hidden":false,"optType":0,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"GJ_MAKEBACKLOG","extensionId":null,"guid":"93afad2e-3e1f-41bf-8d56-34a177d2cf4b","displayName":"Enable Response Backlog","listItems":[],"description":"If you don't want FrostJolt to keep a backlog of previous server responses, untick this.","defaultValue":"True","exportToINI":true,"hidden":false,"optType":0,},
    {"resourceType":"GMExtensionOption","resourceVersion":"1.0","name":"GJ_LOGINIT","extensionId":null,"guid":"c319dbdf-96fa-4e43-a37f-cdd171d18a24","displayName":"Log on Game Start","listItems":[],"description":"When the game starts, FrostJolt automatically logs the Game ID and Private Key to confirm that everything works. Untick this box to disable this.","defaultValue":"True","exportToINI":true,"hidden":false,"optType":0,},
  ],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.3.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2023-01-16T16:41:23.6290501+00:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","filename":"scr_fj_core.gml","origname":"","init":"fj_initialize","final":"fj_denitialize","kind":2,"uncompress":false,"functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fj_initialize","externalName":"ext_fj_initialize","kind":2,"help":"Initialize FrostJolt, allowing it to function properly.","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"fj_denitialize","externalName":"ext_fj_denitialize","kind":2,"help":"Erases all stored data (unless it is stored in a file) and disables FrostJolt.","hidden":false,"returnType":1,"argCount":0,"args":[],"documentation":"",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":194,"usesRunnerInterface":false,"order":[],},
  ],
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 194,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "FrostJolt Library",
    "path": "folders/FrostJolt Library.yy",
  },
}