global laserID as integer []

laser:
	
	//verifica todas as posiçoes do array laserID e incrementa a velocidade
	Print("laserID.length :"+str(laserID.length))
	if(laserID.length > -1)	
		for i = 0 to laserID.length
			SetSpritePosition(laserID[i], GetSpriteX(laserID[i]), GetSpriteY(laserID[i])-30)
		next i
	endif	

//cria uma sprite da imagem do laser quando clica e coloca na ultima posiçao do array
	if (GetPointerPressed()=1)
		laserID.insert(CreateSprite(laser))
		SetSpritePosition(laserID[laserID.length] , GetSpriteX(nave)+47, GetSpriteY(nave)-25)
    endif
	
return
