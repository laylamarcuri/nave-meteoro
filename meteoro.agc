

movimentoMeteoro:

	//velocidade do meteoro
		for i=0 to meteoroID.length
			SetSpritePosition(meteoroID[i],GetSpriteX(meteoroID[i]),GetSpriteY(meteoroID[i])+18)
		next i

	//retorna meteoro para o inicio
	contTempo = contTempo+1
		for i=0 to meteoroID.length
			if(GetSpriteY(meteoroID[i]) > 1500)
				if(contTempo>25)
					if (Mod(i, 2) = 0)
						SetSpritePosition(meteoroID[i], Random2(15, 332), Random2(-100, -700*i*0.5))
					else
						SetSpritePosition(meteoroID[i], Random2(333, 665), Random2(-100, -700*i*0.5))
					endif
				contTempo=0
				endif
			endif
		next i

return
