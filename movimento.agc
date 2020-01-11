movimento:


	SetSpritePosition(jogador, sx, 910)
	meteoroY=meteoroY+10

	if GetSpriteX(jogador) > 650
		sx = 650
	endif

	if GetSpriteX(jogador) < 15
		sx = 15
	endif

	sx = sx + GetJoystickX()*15

return
