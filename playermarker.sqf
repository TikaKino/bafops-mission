if(hasInterface)then{
[] spawn {
		waitUntil{uiSleep 0.2;(!isNil "ACE_player") and (alive ACE_player)};//wait for player to load
		_playerPos = createMarkerLocal ["PlayerPOS", position player];//create marker
		"PlayerPOS" setMarkerTextLocal "";
		"PlayerPOS" setMarkerTypeLocal "Select";
		"PlayerPOS" setMarkerColorLocal "ColorWEST";
		"PlayerPOS" setMarkerSize [0.75, 0.75];
		while{true}do{
			waitUntil {uiSleep 0.1;visibleMap or visibleGPS};//update marker only while map or GPS are open
			"PlayerPOS" setMarkerPosLocal position player;
		};
	};
};