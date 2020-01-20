loader:

//########## VARIAVEIS ##########
global qtd_meteoros as integer = 10
global meteoroID as integer[]

global qtd_laser as integer = 10
global laserID as integer []
global laser_posicao = -1

//posisao de X da nave
global naveX as integer = 324
global naveY = 910 //valor fixo, para a nave nao subir


global vida as integer = 4

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
			SetSpritePosition(meteoroID[i], Random(15, 650), Random2(-100, -500*i+1) )
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
