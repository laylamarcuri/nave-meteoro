

laser:
	
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
	
return
