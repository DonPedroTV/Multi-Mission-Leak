 private ["_xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoe","_yiouwzmelbrophikiuuebxuajyqvsmbzgmwnzhylpyeqalwhxkrojhbffpazalanzj","_xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoeLen","_ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp","_xaykdjttxkivlzdmndozdwihudtxhthnxlcxvcesxjjxoqdnjdgusgdcprwpcb"]; _xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoe = [_this, 0, "", [""]] call BIS_fnc_param; _yiouwzmelbrophikiuuebxuajyqvsmbzgmwnzhylpyeqalwhxkrojhbffpazalanzj = toArray ([_this, 1, "", [""]] call BIS_fnc_param); _xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoeLen = count toArray _xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoe; _ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp = +_yiouwzmelbrophikiuuebxuajyqvsmbzgmwnzhylpyeqalwhxkrojhbffpazalanzj;  _ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp resize _xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoeLen; _xaykdjttxkivlzdmndozdwihudtxhthnxlcxvcesxjjxoqdnjdgusgdcprwpcb = false;   for "_i" from _xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoeLen to count _yiouwzmelbrophikiuuebxuajyqvsmbzgmwnzhylpyeqalwhxkrojhbffpazalanzj do { 	if (toString _ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp == _xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoe) exitWith {_xaykdjttxkivlzdmndozdwihudtxhthnxlcxvcesxjjxoqdnjdgusgdcprwpcb = true}; 	_ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp set [_xiogitgqnvtgfbbtuezrlrfhyjfwykzwipxpmsepmuoxsscsbzfyeissszjwhohmsfltoeLen, _yiouwzmelbrophikiuuebxuajyqvsmbzgmwnzhylpyeqalwhxkrojhbffpazalanzj select _i]; 	_ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp set [0, "x"]; 	_ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp = _ywiijptyzhnqbscdtqestsflzaozggrlnvhagdodbyanvbtseqatntmqpofnqxznpqp - ["x"] };  _xaykdjttxkivlzdmndozdwihudtxhthnxlcxvcesxjjxoqdnjdgusgdcprwpcb 