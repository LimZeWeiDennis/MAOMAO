/// @description Progress the transition

if (state != TRANS_MODE.OFF) {
	if (state == TRANS_MODE.INTRO) {
		percent = max(0, percent - max((percent / 10), 0.005));
	} else {
		percent = min(1, percent + max(((1 - percent) / 10), 0.005));
	}
	
	if (percent == 1) || (percent == 0) {
		switch (state) {
			case TRANS_MODE.INTRO:
				state = TRANS_MODE.OFF;
				break;
			case TRANS_MODE.NEXT:
				state = TRANS_MODE.INTRO;
				room_goto(targetRoom)
				o_MaoMao.x = targetX;
				o_MaoMao.y = targetY;
				break;
			//case TRANS_MODE.GOTO:
			//	state = TRANS_MODE.INTRO;
			//	room_goto(target);
			//	break;
			//case TRANS_MODE.RESTART:
			//	game_restart();
				
			//	break;
		}
	}
}