colisoes:

//~ if GetSpriteCollision(nave, meteoro1)
	//~ gameOver()
//~ elseif	GetSpriteCollision(nave, meteoro2)
	//~ gameOver()
//~ elseif	GetSpriteCollision(nave, meteoro3)
	//~ gameOver()
//~ endif

function gameOver()
	go = LoadImage("gameOver.jpg")
	go = CreateSprite(go)
	SetSpriteSize(go, 768, 1024)
endFunction
	//verifica se o laser acertou o meteoro
for i = 0 to laserID.length
	//if GetSpriteCollision(laserID[i], meteoro1)
		//SetSpritePosition(meteoro1,Random(15, 650), Random2(-100, -500) )
	//elseif GetSpriteCollision(laserID[i], meteoro2)
		//SetSpritePosition(meteoro2,Random(15, 650), Random2(-200, -800) )
	//elseif GetSpriteCollision(laserID[i], meteoro3)
		//SetSpritePosition(meteoro3,Random(15, 650), Random2(-500, -1000) )
	//endif
next i



return
