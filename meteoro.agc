global meteoros as integer = 10
global meteoroID as integer[]

movimentoMeteoro:

	//isso aqui execulta uma vez só, cria meteoros
	if (meteoroID.length <> meteoros )
		for i=0 to meteoros
			meteoroID.insert(CreateSprite(meteoro))
			SetSpritePosition(meteoroID[i], Random(15, 650), Random2(-100, -500*i+1) )
		next i
	endif
	
	//velocidade do meteoro
		for i=0 to meteoroID.length
			SetSpritePosition(meteoroID[i],GetSpriteX(meteoroID[i]),GetSpriteY(meteoroID[i])+18)
		next i

	//retorna meteoro para o inicio
		for i=0 to meteoroID.length
			if(GetSpriteY(meteoroID[i]) > 1500)
				SetSpritePosition(meteoroID[i], Random(15, 650), Random2(-100, -500*i+1) )
			endif
		next i

return
