jogo:

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

Gosub loader_jogo
//##############################

do

/* ############# MOVIMENTO NAVE ############# */
//movimentoNave:
	SetSpritePosition(nave, naveX, naveY)

	//controla para a nave não atravesar para o lado direito
	if GetSpriteX(nave) > 650
		naveX = 650 
	endif
	//controla para a nave não atravesar para o lado esquerdo
	if GetSpriteX(nave) < 15
		naveX = 15
	endif
	
	naveX = naveX + GetJoystickX()*15
/* ########################################## */

/* ############# MOVIMENTO LASER ############# */
	//verifica todas as posiçoes do array laserID e incrementa a velocidade

	if(laserID.length > -1)	
		for i = 0 to laserID.length
			SetSpritePosition(laserID[i], GetSpriteX(laserID[i]), GetSpriteY(laserID[i])-30)
		next i
	endif	

//cria uma sprite da imagem do laser quando clica e coloca na ultima posiçao do array
	if (GetPointerPressed()=1)
		laser_posicao = laser_posicao +1
		if(laser_posicao > qtd_laser)
			laser_posicao = 0
		endif
			
		SetSpritePosition(laserID[laser_posicao] , GetSpriteX(nave)+47, GetSpriteY(nave)-25)
    endif
/* ########################################## */

/* ############# MOVIMENTO METEORO ############# */
	//velocidade do meteoro
		for i=0 to meteoroID.length
			SetSpritePosition(meteoroID[i],GetSpriteX(meteoroID[i]),GetSpriteY(meteoroID[i])+14)
		next i

	//retorna meteoro para o inicio
	contTempo = contTempo+1
		for i=0 to meteoroID.length
			if(GetSpriteY(meteoroID[i]) > 1100)
				if(contTempo>25)
				//RETIRAR PONTOS CASO O METEORO PASSE
				pontos = pontos -5
					if (Mod(i, 2) = 0)
						SetSpritePosition(meteoroID[i], Random2(15, 332), Random2(-100, -700*i*0.5))
					else
						SetSpritePosition(meteoroID[i], Random2(333, 665), Random2(-100, -700*i*0.5))
					endif
				contTempo=0
				endif
			endif
		next i
/* ########################################## */

/* ############# COLISOES ############# */
//VERIFICA SE O METEORO ACERTA A NAVE

	
//~ for j=0 to meteoroID.length
	//~ if GetSpriteCollision(nave, meteoroID[j])
		//~ SetSpritePosition(meteoroID[j],Random(15, 650), Random2(-100, -500*i+1) )
		//~ 
			//~ //ANIMAÇÃO DA EXPLOSÃO DA NAVE
			//~ img_explosaoNave = LoadImage("explosaoNave.png")
			//~ explosaoNave = CreateSprite(img_explosaoNave)
			//~ SetSpritePosition(explosaoNave, GetSpriteX(nave)+35, GetSpriteY(nave))
			//~ SetSpriteAnimation ( explosaoNave, 164, 165, 8 )
			//~ PlaySprite ( explosaoNave, 6, 0 , 1 , 8)
			//~ //AUDIO DA EXPLOSAO			
			//~ PlayMusicOGG(LoadMusicOGG("explosaoNave.ogg"))
			//~ SetMusicSystemVolumeOGG(10)
		//~ 
		//~ if (vida = 0)
			//~ gameOver()
		//~ else
			//~ vida = vida -1
		//~ endif
	//~ endif
//~ next j
	//~ 


	//verifica se o laser acertou o meteoro
if ( laserID.length > -1 )	
for i = 0 to laserID.length
	for j=0 to meteoroID.length

		if GetSpriteCollision(laserID[i], meteoroID[j])
			
			pontos = pontos + 10
			
			//ESPLOSAO METEORO
			img_explosaoMeteoro = LoadImage("explosaoMeteoro.png")
			explosaoMeteoro = CreateSprite(img_explosaoMeteoro)
			SetSpritePosition(explosaoMeteoro, GetSpriteX(meteoroID[j]), GetSpriteY(meteoroID[j]))
			SetSpriteAnimation (explosaoMeteoro, 52, 54 , 7)
			PlaySprite(explosaoMeteoro, 6, 0, 1, 7)
			//SOM DA EXPLOSAO
			PlayMusicOGG(LoadMusicOGG("explodeMeteoro_07.ogg"))
			SetMusicSystemVolumeOGG(10)
		
			SetSpritePosition(meteoroID[j],Random(15, 650), Random2(-100, -500) )
			SetSpritePosition(laserID[i], -100,-10000)
		endif
		
	next j
next i
endif
/* ########################################## */
loop

function gameOver()
	go = LoadImage("gameOver.jpg")
	go = CreateSprite(go)
	SetSpriteSize(go, 768, 1024)
endFunction



return
