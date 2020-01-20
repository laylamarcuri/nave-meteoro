colisoes:

//VERIFICA SE O METEORO ACERTA A NAVE
for j=0 to meteoroID.length
	if GetSpriteCollision(nave, meteoroID[j])
		SetSpritePosition(meteoroID[j],Random(15, 650), Random2(-100, -500*i+1) )
		
			//ANIMAÇÃO DA EXPLOSÃO DA NAVE
			img_explosaoNave = LoadImage("explosaoNave.png")
			explosaoNave = CreateSprite(img_explosaoNave)
			SetSpritePosition(explosaoNave, GetSpriteX(nave)+35, GetSpriteY(nave))
			SetSpriteAnimation ( explosaoNave, 164, 165, 8 )
			PlaySprite ( explosaoNave, 6, 0 , 1 , 8)
			//AUDIO DA EXPLOSAO			
			PlayMusicOGG(LoadMusicOGG("explosaoNave.ogg"))
			SetMusicSystemVolumeOGG(10)
		
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
