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
	for j=0 to meteoroID.length
		
		if GetSpriteCollision(laserID[i], meteoroID[j])
			SetSpritePosition(meteoroID[j],Random(15, 650), Random2(-100, -500) )
		endif
		
	next j
next i



return
