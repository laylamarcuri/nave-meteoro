global meteoros as integer = 15
global meteoroID as integer[]

movimentoMeteoro:

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
