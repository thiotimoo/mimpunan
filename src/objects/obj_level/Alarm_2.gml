var randomdur = 0
if (randomAtk[0]) randomdur = irandom(room_speed * randomAtk[0])
alarm[2] = timerAtk[0] - randomdur
scrAtk[0]()