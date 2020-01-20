colisoes:


for j=0 to meteoroID.length
	if GetSpriteCollision(nave, meteoroID[j])
		SetSpritePosition(meteoroID[j],Random(15, 650), Random2(-100, -500*i+1) )
		if (vida = 0)
			gameOver()
		else
			vida = vida -1
		endif
	endif
next j


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
				SetSpritePosition(laserID[i], -100,-10000)
		endif
		
	next j
next i



return
