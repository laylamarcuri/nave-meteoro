loader_jogo:

	fundo = LoadImage("fundo.png")
	fundo = CreateSprite(fundo)
	SetSpriteSize(fundo, 768, 1024)

	nave = LoadImage("nave.png")
	nave = CreateSprite(nave)
	SetSpriteSize(nave, 100, 100)
	SetSpritePosition(nave, 324, 910)
	
	
	
	img_meteoro = LoadImage("meteoro.gif")
	//só, cria meteoros
	if(meteoroID.length <> qtd_meteoros)
		for i=0 to qtd_meteoros
			meteoro = CreateSprite(img_meteoro)
			meteoroID.insert(meteoro)
			if (Mod(i, 2) = 0)
				SetSpritePosition(meteoroID[i], Random2(15, 332), Random2(-100, -700*i*0.5))
			else
				SetSpritePosition(meteoroID[i], Random2(333, 665), Random2(-100, -700*i*0.5))
			endif
		next i
	endif
	


	img_laser = LoadImage("laser.png")
		//só, cria lasers
	if(laserID.length <> qtd_laser)
		for i=0 to qtd_laser
			laser  = CreateSprite(img_laser)
			laserID.insert(laser)
			SetSpritePosition(laserID[i], -100,-10000)
		next i
	endif
	

return


loader_main:

	img_ButtonJogar = LoadImage("jogar.png")
	buttonJogar = CreateSprite(img_ButtonJogar)
	SetSpritePosition(buttonJogar, 240, 200)
	
	img_ButtonSair = LoadImage("sair.png")
	buttonSair = CreateSprite(img_ButtonSair)
	SetSpritePosition(buttonSair, 240, 300)

return
