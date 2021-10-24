// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.midTransition = false;
global.roomTarget = -1;

function TransitionSeq(_type){
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay, 0, 0 ,_type);
}

function TransitionStart (_roomTarget, _typeOut, _typeIn, _playerX, _playerY)
{
	if(!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionSeq(_typeOut);
		o_MaoMao.x = _playerX;
		o_MaoMao.y = _playerY;
		layer_set_target_room(_roomTarget);
		TransitionSeq(_typeIn);
		layer_reset_target_room();
		return true; 
	}
	
	else {
		
		return false;
	}
		
}

function TransitionChangeRoom(){
	room_goto(global.roomTarget);
}

function TransitionFinished(){
	
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
	
}

function TransitionInto(targetRoom, targetX, targetY){
	o_transition.state = TRANS_MODE.NEXT;
	o_transition.targetRoom = targetRoom;
		
	o_transition.targetX = targetX;
	o_transition.targetY = targetY;
	
}