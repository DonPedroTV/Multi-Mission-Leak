/* 
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.
	
	edited by: blackfisch	
*/
if (!DWEV_barrier_active) exitWith {}; //bad check?
deleteVehicle DWEV_barrier_activeObj;
systemChat "+++ Platzieren Abgebrochen +++";
DWEV_barrier_active = false;
DWEV_barrier_activeObj = ObjNull;