loader:

//########## VARIAVEIS ##########
global qtd_meteoros as integer = 6
global meteoroID as integer[]
global contTempo = 0

global qtd_laser as integer = 10
global laserID as integer []
global laser_posicao = -1

//posisao de X da nave
global naveX as integer = 324
global naveY = 910 //valor fixo, para a nave nao subir


global vida as integer = 4
global pontos as integer = 0

//##############################

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
