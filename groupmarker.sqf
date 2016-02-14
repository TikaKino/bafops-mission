if(hasInterface)then{
[] spawn {
	
	//Config Variables
	_markertype = "mil_dot_noshadow"; 	//The name of the marker to apply for each group member
	_markersize = [0.75,0.75];			//Size of the marker
	_markercolor = "ColorWEST";			//Colour of the marker
	_showNames = false;					//Show group member's name next to their marker?
	_marker2type = "selector_selectedFriendly";
	_marker2size = [0.75,0.75];
	_marker2color = "ColorRed";
	_marker2notplayer = true;			//Don't draw the second marker for the player
	//End Config Variables
	
	waitUntil{uiSleep 0.2;(!isNil "ACE_player") and (alive ACE_player)};//wait for player to load
	
	_playergroupnames = [];
	
	while{true}do{
			waitUntil {uiSleep 0.1;visibleMap or visibleGPS};//update markers only while map or GPS are open
			
			//Get new group and joiner / leaver sets
			_playergroupnew = units group player;
			_playergroupnamesnew = [];
			{
				_playergroupnamesnew pushBack (name _x);
			} forEach _playergroupnew;
			_playergroupnamesjoined = _playergroupnamesnew - _playergroupnames; //Joiners; weren't here last tick but are now
			_playergroupnamesleft = _playergroupnames - _playergroupnamesnew; //Leavers; were here last tick but aren't now
			_playergroupjoined = [];
			//Convert joiners to objects, not names
			{
				if((name _x) in _playergroupnamesjoined) then {
					_playergroupjoined pushBack _x;
				};
			} forEach _playergroupnew;
			
			//Add joiner markers
			{
				_markername = (name _x) + "GROUPMARKPOS";
				_marker = createMarkerLocal [_markername, (position _x)];//create marker
				if(_showNames) then {
					_marker setMarkerTextLocal (name _x);
				} else {
					_marker setMarkerTextLocal "";
				};
				_marker setMarkerTypeLocal _markertype;
				_marker setMarkerColorLocal _markercolor;
				_marker setMarkerSize _markersize;
				if(!_marker2notplayer or player != _x) then {
					_markername = (name _x) + "GROUPMARKPOS2";
					_marker = createMarkerLocal [_markername, (position _x)];//create marker
					_marker setMarkerTypeLocal _marker2type;
					_marker setMarkerColorLocal _marker2color;
					_marker setMarkerSize _marker2size;
				}
				
			} forEach _playergroupjoined;
			
			//Remove leaver markers
			{
				_markername = _x + "GROUPMARKPOS";
				deleteMarkerLocal _markername;
				_markername = _x + "GROUPMARKPOS2";
				deleteMarkerLocal _markername;
			} forEach _playergroupnamesleft;
			
			//Update positions for group's markers
			{
				_markername = (name _x)+"GROUPMARKPOS";
				_markername setMarkerPosLocal (position _x);
				if(!_marker2notplayer or player != _x) then {
					_markername = (name _x)+"GROUPMARKPOS2";
					_markername setMarkerPosLocal (position _x);
				}
				
			} forEach _playergroupnew;
			
			//Cleanup
			_playergroupnames = _playergroupnamesnew;
		};
	
};};