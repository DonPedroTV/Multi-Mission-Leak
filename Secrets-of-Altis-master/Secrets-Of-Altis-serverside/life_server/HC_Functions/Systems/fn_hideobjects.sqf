 
 
 
 
 
 
 
private["_list","_objects"]; 
 
_list = [ 
[[3656.22,13191.9,0],1117336],   
[[3694.89,13156.8,0],1120799],   
[[3638.17,13147.3,0],1120896],   
[[3638.17,13147.3,0],1120657],   
[[3638.17,13147.3,0],1120949],   
[[3638.17,13147.3,0],1120897],   
[[3638.17,13147.3,0],1120656],   
[[3638.17,13147.3,0],1120948],   
[[3638.17,13147.3,0],1120655],   
[[3638.17,13147.3,0],1120651],   
[[3638.17,13147.3,0],1120653],   
[[3638.17,13147.3,0],1120652],   
[[3638.17,13147.3,0],1120649],   
[[3638.17,13147.3,0],1117179],   
[[3638.17,13147.3,0],1117178],   
[[3638.17,13147.3,0],1117177],   
[[3638.17,13147.3,0],1117176],   
[[3638.17,13147.3,0],1117180],   
[[3638.17,13147.3,0],1117181],   
[[3638.17,13147.3,0],1117390],   
[[3638.17,13147.3,0],1117321],   
[[3638.17,13147.3,0],1117225],   
[[3638.17,13147.3,0],1117224],   
[[3638.17,13147.3,0],1117334],   
[[3638.17,13147.3,0],1117325],   
[[3638.17,13147.3,0],1117326],   
[[3638.17,13147.3,0],1117327],   
[[3638.17,13147.3,0],1117328],   
[[3638.17,13147.3,0],1117329],   
[[3638.17,13147.3,0],1117322],   
[[3638.17,13147.3,0],1117323],   
[[3638.17,13147.3,0],1117388],   
[[3638.17,13147.3,0],1117387],   
[[3638.17,13147.3,0],1117389],   
[[3638.17,13147.3,0],1117386],   
[[3638.17,13147.3,0],1120942],   
[[3638.17,13147.3,0],1120941],   
[[3638.17,13147.3,0],1120943],   
[[3638.17,13147.3,0],1120947],   
[[3638.17,13147.3,0],1120945],   
[[3638.17,13147.3,0],1120906],   
[[3638.17,13147.3,0],1120946],   
[[3638.17,13147.3,0],1120654],   
[[3638.17,13147.3,0],1120589],   
[[3638.17,13147.3,0],1120587],   
[[3638.17,13147.3,0],1120613],   
[[3638.17,13147.3,0],1117117],   
[[3638.17,13147.3,0],1117235],   
[[3638.17,13147.3,0],1120915],   
[[3638.17,13147.3,0],1120960],   
[[3638.17,13147.3,0],1120951],   
[[3638.17,13147.3,0],1120958],   
[[3638.17,13147.3,0],1120614],   
[[3638.17,13147.3,0],1120807],   
[[3638.17,13147.3,0],1120588],   
[[3638.17,13147.3,0],1120650],   
[[3638.17,13147.3,0],1120895],   
[[3638.17,13147.3,0],1120944],   
[[3638.17,13147.3,0],1120615],   
[[3667.60,13094.4,0],1121215],   
[[3667.60,13094.4,0],1121213],   
[[3667.60,13094.4,0],1121121],   
[[3667.60,13094.4,0],1120877],   
[[3667.60,13094.4,0],1120878],   
[[3667.60,13094.4,0],1120802],   
[[3667.60,13094.4,0],1120875],   
[[3667.60,13094.4,0],1120806],   
[[3667.60,13094.4,0],1121198],   
[[3667.60,13094.4,0],1121212],   
[[3667.60,13094.4,0],1121209],   
[[3667.60,13094.4,0],1121199],   
[[3667.60,13094.4,0],1120797],   
[[3667.60,13094.4,0],1121116],   
[[3667.60,13094.4,0],1120809],   
[[3667.60,13094.4,0],1121126],   
[[3667.60,13094.4,0],1120801],   
[[3667.60,13094.4,0],1121113],   
[[3667.60,13094.4,0],1121127],   
[[3667.60,13094.4,0],1121216],   
[[3667.60,13094.4,0],1121217],   
[[3667.60,13094.4,0],1120798],   
[[3667.60,13094.4,0],1120800],   
[[3667.60,13094.4,0],1121114],   
[[3667.60,13094.4,0],1121115],   
[[3667.60,13094.4,0],1121111],   
[[3667.60,13094.4,0],1121112],   
[[3667.60,13094.4,0],1121117],   
[[3667.60,13094.4,0],1121118],   
[[3667.60,13094.4,0],1120874],   
[[3667.60,13094.4,0],1120876],   
[[3653.60,13142.4,0],1120659],   
[[3653.60,13142.4,0],1120658],   
[[3653.60,13142.4,0],1120954],   
[[3653.60,13142.4,0],1120953],   
[[3653.60,13142.4,0],1120955],   
[[3019.82,12553.4,0],1125042],   
[[3019.82,12553.4,0],1125043],   
[[3019.82,12553.4,0],1125044],   
[[16583.4,12805.7,0],919883],   
[[20798.2,7227.60,0],412100],   
[[3267.76,12458.3,0],1126368],   
[[3267.76,12458.3,0],1126355],   
[[3267.76,12458.3,0],1126231],   
[[3267.76,12458.3,0],1126358],   
[[3267.76,12458.3,0],1126367],   
[[3267.76,12458.3,0],1126229],   
[[3267.76,12458.3,0],1126377],   
[[3267.76,12458.3,0],1126357],   
[[3267.76,12458.3,0],1126375],   
[[3267.76,12458.3,0],1126374],   
[[3267.76,12458.3,0],1126370],   
[[3267.76,12458.3,0],1126356],   
[[3267.76,12458.3,0],1126359],   
[[3267.76,12458.3,0],1126369],   
[[3267.76,12458.3,0],1126230],   
[[3267.76,12458.3,0],1126366],   
[[3267.76,12458.3,0],1126376],   
[[3267.76,12458.3,0],1126209],   
[[25836,21428,0],1575010],    
[[25836,21428,0],1575014],    
[[25836,21428,0],1575006],    
[[18721.8,13546,0],899523],    
[[18721.8,13546,0],899524],    
[[18721.8,13546,0],899525],    
[[18721.8,13546,0],899526],    
[[18721.8,13546,0],899466],    
[[18721.8,13546,0],899396],    
[[18721.8,13546,0],899394],    
[[18721.8,13546,0],899395],    
[[20621.8,20112.7,0],1611615],   
[[12807.9,14292.5,0],705492],        
[[12800.1,14301,0],705139],          
[[16188.8,17348.3,0],496062],      
[[16188.8,17348.3,0],496056],      
[[16188.8,17348.3,0],496057],        
[[15002.4,11229.6,0],950238],      
[[15002.4,11229.6,0],950239],      
[[15002.4,11229.6,0],950229],      
[[15002.4,11229.6,0],949835],   
[[12077.5,10425.3,0],734646],   
[[10130.8,11319.2,0],888380],        
[[9130.31,15765.5,0],602800],        
[[9130.31,15765.5,0],602634],        
[[9130.31,15765.5,0],602638],        
[[9130.31,15765.5,0],602632],        
[[9130.31,15765.5,0],603200],        
[[9130.31,15765.5,0],53360],         
[[9130.31,15765.5,0],53361],         
[[4061.91,13695.6,0],1113042],       
[[4061.91,13695.6,0],1113043],       
[[4061.91,13695.6,0],1113041],       
[[4061.91,13695.6,0],1113050],       
[[4061.91,13695.6,0],1113067],       
[[4061.91,13695.6,0],1113070],       
[[4061.91,13695.6,0],1113071],       
[[13617.8,12183.8,0],792360],        
[[13617.8,12183.8,0],792389],        
[[13617.8,12183.8,0],792140],        
[[13617.8,12183.8,0],792136],        
[[13617.8,12183.8,0],792019],        
[[13617.8,12183.8,0],792358]         
]; 
 
{((_x select 0) nearestObject (_x select 1)) HideObjectGlobal true} forEach _list;