for(var i=0; i<global.width; i++) {
	for(var j=0; j<global.height; j++) {
		if(flipped==false && global.countLife == 0) {
			flipped = true;
		}
	}
}

if(flipped == true)
{
	switch(type) 
	{
		case "coin":
			sprite = spr_cardFront_Coin;
		break;
		case "skull":
			sprite = spr_cardFront_Skull;
		break;
		case "revive":
			sprite = spr_cardFront_Revive;
		break;
		case "time":
			sprite = spr_cardFront_Time;
		break;
	}
} 
else 
{
	sprite = spr_cardBack;
}

draw_sprite(sprite, 0, x, y);
