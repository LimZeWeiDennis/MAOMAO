/// @description Insert description here
// You can write your code in this editor

if (collision_point(mouse_x, mouse_y, id, true, false)){
	showInstructions = !showInstructions;
	
	if(showInstructions){
		
		mask_index = s_instructions;
		
	} else {
		mask_index = s_instructionButton;
	}
	
} 
