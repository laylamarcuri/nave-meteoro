movimentoMeteoro:

	ym1 = ym1 +10
		SetSpritePosition(meteoro1, xm1, ym1)

	ym2 = ym2 +10
		SetSpritePosition(meteoro2, xm2, ym2)

	ym3 = ym3 +10
		SetSpritePosition(meteoro3, xm3, ym3)


	if(getspritey(meteoro1) > 1500)
		xm1 = Random(15, 650)
			ym1 = Random2(-100, -500)
	 endif

	if(getspritey(meteoro2) > 1500)
		xm2 = Random(15, 650)
			ym2 = Random2(-100, -500)
	 endif
	 
	 if(getspritey(meteoro3) > 1500)
		xm3 = Random(15, 650)
			ym3 = Random2(-100, -500)
	 endif
	 
	if((GetSpriteDistance(meteoro1, meteoro2)< 100))
		xm1 = xm1 + 100
		elseif((GetSpriteDistance(meteoro1, meteoro3)< 100))
			xm1 = xm1 +100
		elseif((GetSpriteDistance(meteoro2, meteoro3)< 100))
				xm2 = xm2 +100	
		
	endif
		
return
