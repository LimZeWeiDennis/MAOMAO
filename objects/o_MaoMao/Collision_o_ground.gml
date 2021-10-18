/// @description Insert description here
// You can write your code in this editor


// to solve gettting stuck in the ground issue
with(other){
	
	o_MaoMao.x -= sign(x - o_MaoMao.x);
	o_MaoMao.y -= sign(y - o_MaoMao.y);
} 