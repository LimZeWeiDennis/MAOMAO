var l27EC9E13_0 = instance_place(x + hsp, y + 0, o_ground);
if ((l27EC9E13_0 > 0))
{
	while ((collided == false )) {
		var l7A6E46ED_0 = instance_place(x + sign(hsp), y + 0, o_ground);
		if (!(l7A6E46ED_0 > 0))
		{
			x = sign(hsp);
		}
	
		else
		{
			hsp = 0;
		
			collided = true;
		}
	}
}

 x +=  hsp     