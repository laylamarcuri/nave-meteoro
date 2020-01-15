//posisao de X da nave
global naveX as integer
global naveY = 910 //valor fixo, para a nave nao subir
naveX = 324

movimentoNave:


	SetSpritePosition(nave, naveX, naveY)

	if GetSpriteX(nave) > 650
		naveX = 650 
	endif

	if GetSpriteX(nave) < 15
		naveX = 15
	endif
	
	
	naveX = naveX + GetJoystickX()*15

return
