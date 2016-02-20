if(hasInterface) then { //Only trigger for players
	
	waitUntil {sleep 0.1; (time > 0) && (!isNull player) && (alive player)};
	player setVariable ["minimapWaypointLoc",false];
	
	//Add an event handler for onSingleMapClick - we care about _shift, _alt and _pos
	//Remember to return false to allow other click handlers to happen!
	["mapclickWaypointEvent", "onMapSingleClick", {
		
		if(_shift && !_alt) then { //Only care if we have shift-clicked
			player setVariable ["minimapWaypointLoc",_pos]; //Set the location of the click to the player
		};
		
		//Return in sqf is the last line executed in a code block, because reasons.
		false;
	}] call BIS_fnc_addStackedEventHandler;
	
	//Add a mission event handler for Draw3D to draw the icon
	_id = addMissionEventHandler ["Draw3D",{
		
		_wploc = player getVariable "minimapWaypointLoc";
		//Only draw if we have a location to draw to
		if(!(_wploc isEqualTo false)) then {
			//Get a useful position from the click position (i.e. don't go under the waves; drawIcon3D expects PositionAGL)
			_iconpos = [_wploc select 0,_wploc select 1,0.5];
			
			drawIcon3D [MISSION_ROOT + "selector_selectedenemy_ca.paa", [0,0,0,0.4], _iconpos, 1, 1, 0, "", 0, 0.05, "TahomaB", "left", true];
			drawIcon3D [MISSION_ROOT + "circle_ca.paa", [1,1,1,0.4], _iconpos, 0.75, 0.75, 0, "", 0, 0.05, "TahomaB", "left", true];
		};
		
	}];
	
};