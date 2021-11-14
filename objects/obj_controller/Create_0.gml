global.selectionNumber = 0;

// set mang gia tri cho 2 la bai
global.match[0, 0] = "null";
global.match[0, 1] = 999;
global.match[1, 0] = "null";
global.match[1, 1] = 999;

global.can_select = true;
global.countCoin = 0;
global.countLife = 3;

global.width = 6;
global.height = 3;

global.cnt = 0;
coinCount = 0;
skullCount = 0;
timeCount = 0;
reviveCount = 0;

// position Ox, Oy
xx = 400; 
yy = 120;
found = false;

randomize();
r = irandom(3);


for(var i=0; i < global.width; i++) {
	for(var j=0; j<global.height; j++) {
		var card = instance_create_layer(xx, yy, 4, obj_card);
		while(found == false) {
			switch(r)
			{
				case 0:
					if(coinCount < 8) { // random 8 la coin
						card.type = "coin";
						found = true;
						coinCount++;
					} else {
						randomize();
						r = irandom(3);
						found = false;
					}
				break;
				case 1:
					if(skullCount < 4) { // random 4 la skulll
						card.type = "skull";
						found = true;
						skullCount++;
					} else {
						randomize();
						r = irandom(3);
						found = false;
					}
				break;
				case 2:
					if(timeCount < 2) { // random 2 la time
						card.type = "time";
						found = true;
						timeCount++;
					} else {
						randomize();
						r = irandom(3);
						found = false;
					}
				break;
				case 3:
					if(reviveCount < 4) { // random 4 la revive
						card.type = "revive";
						found = true;
						reviveCount++;
					} else {
						randomize();
						r = irandom(3);
						found = false;
					}
				break;
			}
		}
		randomize();
		r = irandom(3);
		found = false;
		yy += 200; // khoang cach giua nhung la bai
	}
	xx += 160; // toa do truc hoanh
	yy = 120; // toa do truc tung
}